-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: B123456_db
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `ensembl`
--

LOCK TABLES `ensembl` WRITE;
/*!40000 ALTER TABLE `ensembl` DISABLE KEYS */;
INSERT INTO `ensembl` VALUES ('1','ENSMUSG00000015002','Efr3a','EFR3 homolog A [Source:MGI Symbol;Acc:MGI:1923990]',15,65658883,65745665),('2','ENSMUSG00000017548','Suz12','SUZ12 polycomb repressive complex 2 subunit [Source:MGI Symbol;Acc:MGI:1261758]',11,79883932,79924949),('3','ENSMUSG00000032333','Stoml1','stomatin-like 1 [Source:MGI Symbol;Acc:MGI:1916356]',9,58160447,58169803),('4','ENSMUSG00000036202','Rif1','replication timing regulatory factor 1 [Source:MGI Symbol;Acc:MGI:1098622]',2,51962844,52012395),('5','ENSMUSG00000041272','Tox','thymocyte selection-associated high mobility group box [Source:MGI Symbol;Acc:MGI:2181659]',4,6686353,6991557),('6','ENSMUSG00000050953','Gja1','gap junction protein, alpha 1 [Source:MGI Symbol;Acc:MGI:95713]',10,56253426,56278609),('7','ENSMUSG00000058589','Anks1b','ankyrin repeat and sterile alpha motif domain containing 1B [Source:MGI Symbol;Acc:MGI:1924781]',10,89709371,90809162),('8','ENSMUSG00000064722','Gm25857','predicted gene, 25857 [Source:MGI Symbol;Acc:MGI:5455634]',2,119571309,119571437),('9','ENSMUSG00000074830','Zfp640','zinc finger protein 640 [Source:MGI Symbol;Acc:MGI:2678025]',13,66817992,66846307),('10','ENSMUSG00000078592','Gm4609','predicted gene 4609 [Source:MGI Symbol;Acc:MGI:3782792]',3,122023844,122024845);
/*!40000 ALTER TABLE `ensembl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `entrez`
--

LOCK TABLES `entrez` WRITE;
/*!40000 ALTER TABLE `entrez` DISABLE KEYS */;
INSERT INTO `entrez` VALUES ('1','Efr3a','35754370',' 1. Mol Cells. 2022 Aug 31;45(8):588-602. doi: 10.14348/molcells.2022.0044. Epub 2022 Jun 27.  RNA Binding Protein Rbms1 Enables Neuronal Differentiation and Radial Migration during Neocortical Development by Binding and Stabilizing the RNA Message for Efr3a.  Habib K(1), Bishayee K(1), Kang J(1), Sadra A(1), Huh SO(1).'),('2','Efr3a','35094857',' 1. J Dairy Sci. 2022 Apr;105(4):3323-3340. doi: 10.3168/jds.2021-21152. Epub 2022 Jan 28.  Genome-wide associations for heat stress response suggest potential candidate genes underlying milk fatty acid composition in dairy cattle.  Bohlouli M(1), Halli K(1), Yin T(1), Gengler N(2), König S(3).'),('3','Suz12','36288553',' 1. Endocrinology. 2022 Oct 26. pii: bqac180. doi: 10.1210/endocr/bqac180. [Epub ahead of print]  Dual Acting Peptides Target EZH2 and AR: a New Paradigm for Effective Treatment of Castration-Resistant Prostate Cancer.  Han Z(1), Rimal U(1), Khatiwada P(1), Brandman J(1), Zhou J(1), Hussain M(1), Viola RE(1), Shemshedini L(1).'),('4','Suz12','36274363',' 1. Biochem Biophys Res Commun. 2022 Oct 17;635:136-143. doi: 10.1016/j.bbrc.2022.10.041. [Epub ahead of print]  Non-canonical transcriptional regulation of INHAT subunit SET/TAF-Iβ by EZH2.  Hwang IJ(1), Park J(1), Seo SB(2).'),('5','Suz12','36158701',' 1. Front Oncol. 2022 Sep 9;12:959243. doi: 10.3389/fonc.2022.959243. eCollection 2022.  Broad genomic workup including optical genome mapping uncovers a DDX3X: MLLT10 gene fusion in acute myeloid leukemia.  Nilius-Eliliwi V(1), Tembrink M(2), Gerding WM(2), Lubieniecki KP(2), Lubieniecka JM(2), Kankel S(3), Liehr T(3), Mika T(1), Dimopoulos F(1), Döhner K(4), Schroers R(1), Nguyen HHP(2), Vangala DB(1).'),('6','Stoml1','35794236',' 1. Sci Rep. 2022 Jul 6;12(1):11447. doi: 10.1038/s41598-022-15572-1.  Expression pattern of Stomatin-domain proteins in the peripheral olfactory system.  Gonzalez-Velandia KY(1), Hernandez-Clavijo A(1), Menini A(2), Dibattista M(3), Pifferi S(4)(5).'),('7','Rif1','36241435',' 1. J Dairy Sci. 2022 Oct 11. pii: S0022-0302(22)00591-4. doi: 10.3168/jds.2022-22346. [Epub ahead of print]  Blood transcriptome analysis and identification of genes associated with supernumerary teats in Chinese Holstein cows.  Chen QZ(1), Yang MY(1), Liu XQ(1), Zhang JN(1), Mi SY(1), Wang YJ(1), Xiao W(2),  Yu Y(3).'),('8','Rif1','36205622',' 1. Cell Cycle. 2022 Oct 7:1-11. doi: 10.1080/15384101.2022.2123886. [Epub ahead of print]  CST/Polα/primase-mediated fill-in synthesis at DSBs.  Mirman Z(1)(2), Cai S(1)(3), de Lange T(1).'),('9','Rif1','36075897',' 1. Nat Commun. 2022 Sep 8;13(1):5167. doi: 10.1038/s41467-022-32861-5.  MAD2L2 promotes replication fork protection and recovery in a shieldin-independent and REV3L-dependent manner.  Paniagua I(1), Tayeh Z(1), Falcone M(1), Hernández Pérez S(1), Cerutti A(1), Jacobs JJL(2).'),('10','Tox','36308006',' 1. J Environ Sci Health A Tox Hazard Subst Environ Eng. 2022 Oct 28:1-7. doi: 10.1080/10934529.2022.2133915. [Epub ahead of print]  Atmospheric Hg(p) concentrations at various particles sizes before (2018-2019) and during (2019-2020 and 2020-2021) COVID-19 occurred periods in Taichung, Taiwan.  Fang GC(1), Zhuang YJ(1).'),('11','Tox','36300440',' 1. J Biomol Struct Dyn. 2022 Oct 27:1-16. doi: 10.1080/07391102.2022.2130989. [Epub  ahead of print]  Antitumor activity against human promyelocytic leukemia and in silico studies of  some benzoxazines.  Oksuzoglu E(1), Yilmaz S(2), Yenice Cakmak G(2)(3), Ataei S(4), Yildiz I(4).'),('12','Tox','36300309',' 1. Eur J Emerg Med. 2022 Dec 1;29(6):391-392. doi: 10.1097/MEJ.0000000000000982. Epub 2022 Oct 25.  Role of emergency departments and emergency physicians in expanding clinical knowledge on drug-related events.  Galicia M(1)(2), Mirò Ó(1).'),('13','Gja1','36293200',' 1. Int J Mol Sci. 2022 Oct 15;23(20). pii: 12343. doi: 10.3390/ijms232012343.  Proteomic and miRNA Profiles of Exosomes Derived from Myometrial Tissue in Laboring Women.  Deng W(1), Wang X(1), Chen L(1)(2), Wen B(1), Chen Y(1), Ji K(1), Liu H(1).'),('14','Gja1','36271618',' 1. J Food Biochem. 2022 Oct 21:e14488. doi: 10.1111/jfbc.14488. [Epub ahead of print]  Alternation of heart microRNA-mRNA network by high-intensity interval training and proanthocyanidin in myocardial ischemia rats: Artificial intelligence and validation experimental.  Zarei S(1), Taghian F(1), Sharifi G(1), Abedi H(2).'),('15','Gja1','36208715',' 1. Osteoarthritis Cartilage. 2022 Oct 5. pii: S1063-4584(22)00861-5. doi: 10.1016/j.joca.2022.09.009. [Epub ahead of print]  WWP2 confers risk to osteoarthritis by affecting cartilage matrix deposition via  hypoxia associated genes.  Tuerlings M(1), Janssen GMC(2), Boone I(3), van Hoolwerff M(4), Rodriguez Ruiz A(5), Houtman E(6), Suchiman HED(7), van der Wal RJP(8), Nelissen RGHH(9), Coutinho de Almeida R(10), van Veelen PA(11), Ramos YFM(12), Meulenbelt I(13).'),('16','Anks1b','35550009',' 1. Biol Sex Differ. 2022 May 12;13(1):24. doi: 10.1186/s13293-022-00433-3.  Genetic regulation and variation of expression of miRNA and mRNA transcripts in fetal muscle tissue in the context of sex, dam and variable fetal weight.  Ponsuksili S(1), Murani E(2), Hadlich F(2), Perdomo-Sabogal A(2), Trakooljul N(2), Oster M(2), Reyer H(2), Wimmers K(2)(3).'),('17','Anks1b','35148692',' 1. BMC Cancer. 2022 Feb 11;22(1):164. doi: 10.1186/s12885-022-09262-4.  Transcriptome analysis of cervical cancer exosomes and detection of HPVE6*I transcripts in exosomal RNA.  Bhat A(1), Yadav J(1), Thakur K(1), Aggarwal N(1), Chhokar A(1), Tripathi T(1), Singh T(1), Jadli M(1), Veerapandian V(2), Bharti AC(3).'),('18','Anks1b','34988919',' 1. Mol Neurobiol. 2022 Feb;59(2):1301-1319. doi: 10.1007/s12035-021-02699-x. Epub 2022 Jan 5.  The Effect of Sleep Deprivation and Subsequent Recovery Period on the Synaptic Proteome of Rat Cerebral Cortex.  Gulyássy P(1)(2), Todorov-Völgyi K(3)(4), Tóth V(3), Györffy BA(3)(5), Puska G(4)(6)(7), Simor A(3), Juhász G(3), Drahos L(8)(9), Kékesi KA(3)(10).');
/*!40000 ALTER TABLE `entrez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `uniprot`
--

LOCK TABLES `uniprot` WRITE;
/*!40000 ALTER TABLE `uniprot` DISABLE KEYS */;
INSERT INTO `uniprot` VALUES ('1','Efr3a','A0A1D5RLL3','A0A1D5RLL3_MOUSE','846'),('2','Suz12','Q80U70','SUZ12_MOUSE','741'),('3','Stoml1','Q8CI66','STML1_MOUSE','399'),('4','Stoml1','Q3UFS9','Q3UFS9_MOUSE','399'),('5','Stoml1','A0A0B4J1F1','A0A0B4J1F1_MOUSE','399'),('6','Rif1','Q6PR54','RIF1_MOUSE','2419'),('7','Tox','Q66JW3','TOX_MOUSE','526'),('8','Gja1','Q7TMQ1','Q7TMQ1_MOUSE','434'),('9','Anks1b','Q8BIZ1','ANS1B_MOUSE','1259'),('10','Anks1b','S4R286','S4R286_MOUSE','1259'),('11','Zfp640','Q8CIP9','Q8CIP9_MOUSE','271');
/*!40000 ALTER TABLE `uniprot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31  1:35:05
