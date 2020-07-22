-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: ProteinDB
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DATASET1`
--

DROP TABLE IF EXISTS `DATASET1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `DATASET1` (
  `Protein` varchar(20) COLLATE utf8mb4_cs_0900_ai_ci NOT NULL,
  `SampleID` varchar(45) COLLATE utf8mb4_cs_0900_ai_ci NOT NULL,
  `Expression` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`Protein`,`SampleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_cs_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATASET1`
--

LOCK TABLES `DATASET1` WRITE;
/*!40000 ALTER TABLE `DATASET1` DISABLE KEYS */;
INSERT INTO `DATASET1` VALUES ('P1','S1',1.01),('P1','S2',1.05),('P1','S3',1.12),('P1','S4',2.13),('P1','S5',2.25),('P1','S6',2.33),('P2','S1',9.25),('P2','S2',1.03),('P2','S3',9.61),('P2','S4',7.46),('P2','S5',8.37),('P2','S6',0.81),('P3','S1',4.28),('P3','S2',NULL),('P3','S3',9.80),('P3','S4',6.17),('P3','S5',0.70),('P3','S6',NULL),('P4','S1',7.98),('P4','S2',5.39),('P4','S3',5.16),('P4','S4',1.27),('P4','S5',8.71),('P4','S6',8.66),('P5','S1',107.84),('P5','S2',101.11),('P5','S3',73.67),('P5','S4',113.94),('P5','S5',108.48),('P5','S6',77.48),('P6','S1',88.71),('P6','S2',115.14),('P6','S3',141.70),('P6','S4',99.91),('P6','S5',118.70),('P6','S6',110.62),('P7','S1',0.04),('P7','S2',0.10),('P7','S3',0.54),('P7','S4',0.80),('P7','S5',NULL),('P7','S6',0.31),('P8','S1',NULL),('P8','S2',0.76),('P8','S3',0.13),('P8','S4',0.82),('P8','S5',0.73),('P8','S6',0.00);
/*!40000 ALTER TABLE `DATASET1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATASET2`
--

DROP TABLE IF EXISTS `DATASET2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `DATASET2` (
  `Protein` varchar(25) COLLATE utf8mb4_cs_0900_ai_ci NOT NULL,
  `SampleID` varchar(45) COLLATE utf8mb4_cs_0900_ai_ci NOT NULL,
  `Expression` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`Protein`,`SampleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_cs_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATASET2`
--

LOCK TABLES `DATASET2` WRITE;
/*!40000 ALTER TABLE `DATASET2` DISABLE KEYS */;
INSERT INTO `DATASET2` VALUES ('P1','SS1',4.01),('P1','SS2',305.00),('P1','SS3',7.12),('P1','SS4',2.93),('P1','SS5',NULL),('P1','SS6',10.33),('P1','SS7',7.98),('P1','SS8',5.39),('P2','SS1',113.94),('P2','SS2',108.48),('P2','SS3',9.61),('P2','SS4',7.46),('P2','SS5',8.37),('P2','SS6',0.81),('P2','SS7',88.71),('P2','SS8',115.14),('P3','SS1',NULL),('P3','SS2',2.59),('P3','SS3',56.12),('P3','SS4',34.89),('P3','SS5',0.70),('P3','SS6',9.51),('P3','SS7',9.25),('P3','SS8',1.03),('P4','SS1',100.68),('P4','SS2',5.29),('P4','SS3',5.16),('P4','SS4',1.27),('P4','SS5',8.71),('P4','SS6',8.66),('P4','SS7',118.70),('P4','SS8',110.62),('P5','SS1',107.84),('P5','SS2',101.11),('P5','SS3',73.67),('P5','SS4',10.32),('P5','SS5',19.45),('P5','SS6',NULL),('P5','SS7',88.65),('P5','SS8',108.34),('P6','SS1',103.22),('P6','SS2',79.88),('P6','SS3',141.70),('P6','SS4',99.91),('P6','SS5',21.56),('P6','SS6',32.78),('P6','SS7',NULL),('P6','SS8',NULL);
/*!40000 ALTER TABLE `DATASET2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group1`
--

DROP TABLE IF EXISTS `Group1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Group1` (
  `SampleID` varchar(15) COLLATE utf8mb4_cs_0900_ai_ci NOT NULL,
  `groupname` varchar(45) COLLATE utf8mb4_cs_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`SampleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_cs_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group1`
--

LOCK TABLES `Group1` WRITE;
/*!40000 ALTER TABLE `Group1` DISABLE KEYS */;
INSERT INTO `Group1` VALUES ('S1','G1'),('S2','G1'),('S3','G1'),('S4','G2'),('S5','G2'),('S6','G2'),('SS1','G1'),('SS2','G1'),('SS3','G1'),('SS4','G1'),('SS5','G2'),('SS6','G2'),('SS7','G2'),('SS8','G2');
/*!40000 ALTER TABLE `Group1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-21 14:40:17
