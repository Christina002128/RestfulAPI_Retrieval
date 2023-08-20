# import ten genes and convert to data frame
ten_genes <-read.table("Genes")
ten_genes<-as.matrix(ten_genes)
# make gene names and gene id into two columns
id=c()
gene_name<-c()
for(i in 1:10){
  id[i]<-ten_genes[2*i-1]
  gene_name[i]<-ten_genes[2*i]
}
gene<-cbind(gene_name,id)
gene<-as.data.frame(gene)

# 1. Ensembl using "biomaRt", Biological Databases class code unless otherwise stated
print("Using biomaRt to generate ensemble table...")
library(biomaRt)
ensembl_host <-"https://www.ensembl.org"
ense <- useEnsembl(biomart = "genes",host=ensembl_host)
ense <- useDataset(dataset = "mmusculus_gene_ensembl", mart = ense) # genes of mouse
en_result <- biomaRt::getBM(values=gene$id,
                            attributes = c("ensembl_gene_id","external_gene_name","description","chromosome_name","start_position","end_position"),
                            filters="ensembl_gene_id",mart=ense)
# include columns: ensembl_gene_id external_gene_name description chromosome_name start_position end_position
en_result<-as.data.frame(en_result)
names(en_result)

# 2. Entrez using 'rentrez'
print("Using rentrez to generate entrez table...")
library(rentrez)
library(stringr) 
# generate query for Entrez pubmed database
pub<-c()
for (i in 1:10){
query<-paste('("2022/01/01"[Date - Publication] : "2023"[Date - Publication]) AND (',gene$gene_name[i],' [Gene])')
pub_search <- entrez_search(db="pubmed", term=query,retmode="json",retmax=3) # get at most 3 result for each gene
# fetch result and create table
for (pubmed_id in pub_search$ids){
  pub_re<-entrez_fetch(db = "pubmed", WebEnv = NULL, id=pubmed_id,rettype = "native")
  pub_re<-str_replace_all(pub_re,"\n",' ')   # using "stringr" package
  a<-cbind(gene$gene_name[i],pubmed_id,pub_re)
  pub<-rbind(pub,a)
  Sys.sleep(0.0001) # pause a bit for the searching
}
}
colnames(pub)=c("geneName","pubmedId","Description") # columns
pub<-as.data.frame(pub)
pub[,3]<-gsub("\\  Author.*","",pub[,3]) # cut down the description details
names(pub)

# 3. Uniprot using REST API
print("Using REST API to generate uniprot table...")
library(httr)
library(jsonlite)
library(xml2)
URL<-"https://rest.uniprot.org/uniprotkb/search?query=gene:efr3a%20AND%20organism_id:10090&format=json"
r <- GET(URL,content_type("application/json"))
res <-fromJSON(rawToChar(r$content))
# only save the protein with the longest sequence
uniProtAccession<-res$results$primaryAccession[res$results$sequence$length==max(res$results$sequence$length)]
uniProtkbId<-res$results$uniProtkbId[res$results$sequence$length==max(res$results$sequence$length)]
length<-max(res$results$sequence$length)
Uni_result<-c()
for (i in 1:10){
  query<-paste("https://rest.uniprot.org/uniprotkb/search?query=gene:",gene$gene_name[i],"%20AND%20organism_id:10090&format=json",sep = '')
  Uni_r <- GET(query,content_type("application/json"))
  res <-fromJSON(rawToChar(Uni_r$content))
  if(length(res$results)!=0){
  # only want the protein that has the longest sequence
  uniProtAccession<-res$results$primaryAccession[res$results$sequence$length==max(res$results$sequence$length)]
  uniProtkbId<-res$results$uniProtkbId[res$results$sequence$length==max(res$results$sequence$length)]
  ProteinLength<-max(res$results$sequence$length)
  Uni<-cbind(gene$gene_name[i],uniProtAccession,uniProtkbId,ProteinLength)
  Uni_result<-rbind(Uni_result,Uni)
  }
  }
colnames(Uni_result)=c("geneName","uniProtAccession","uniProtkbId","ProteinLength") # columns
Uni_result<-as.data.frame(Uni_result) 
names(Uni_result)

# SQL upload table
library(DBI)
library(RMySQL)
db <-dbConnect(MySQL(),user='s2442072',password='fgets3267',dbname='s2442072_db')
dbListTables(db) #to interact with database
dbSendQuery(db,"DROP TABLE IF EXISTS `ensembl`,`entrez`,`uniprot`;")
dbWriteTable(db,name='ensembl',value=en_result) # create table ensembl
dbListFields(db,'ensembl')
dbWriteTable(db,name='entrez',value=pub) # create table entrez
dbListFields(db,'entrez')
dbWriteTable(db,name='uniprot',value=Uni_result) # create table uniprot
dbListFields(db,'uniprot')

# get intergrated table from SQL
res <-dbSendQuery(db,"
                 SELECT ensembl.*,entrez.*,uniprot.* from ensembl,entrez,uniprot
where ensembl.external_gene_name= uniprot.geneName and ensembl.external_gene_name=uniprot.geneName;
                 ")
data <-fetch(res,n=-1) #Fetch results
write.table(data,"Summary_SQL.table")

# get ensembl table
res <-dbSendQuery(db,"SELECT * from ensembl")
data <-fetch(res,n=-1) 
write.table(data,"ensembl_sql.table")
# get entrez table
res <-dbSendQuery(db,"SELECT * from entrez")
data <-fetch(res,n=-1) 
write.table(data,"entrez_sql.table")
# get uniprot table
res <-dbSendQuery(db,"SELECT * from uniprot")
data <-fetch(res,n=-1) 
write.table(data,"uniprot_sql.table")
#disconnect
ac <- dbListConnections(MySQL())
for(con in ac){
  dbDisconnect(con)}
print("Finished.")
