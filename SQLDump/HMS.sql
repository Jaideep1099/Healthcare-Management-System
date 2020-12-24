-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: HMS
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BLOOD_BANK`
--

DROP TABLE IF EXISTS `BLOOD_BANK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLOOD_BANK` (
  `BLOOD_TYPE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`BLOOD_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLOOD_BANK`
--

LOCK TABLES `BLOOD_BANK` WRITE;
/*!40000 ALTER TABLE `BLOOD_BANK` DISABLE KEYS */;
INSERT INTO `BLOOD_BANK` VALUES ('A+',0),('A-',0),('AB+',0),('AB-',0),('B+',0),('B-',0),('O+',0),('O-',0);
/*!40000 ALTER TABLE `BLOOD_BANK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLOOD_DONATION`
--

DROP TABLE IF EXISTS `BLOOD_DONATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLOOD_DONATION` (
  `U_ID` varchar(50) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`U_ID`,`DATE`),
  CONSTRAINT `FK_BDUID` FOREIGN KEY (`U_ID`) REFERENCES `USER` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLOOD_DONATION`
--

LOCK TABLES `BLOOD_DONATION` WRITE;
/*!40000 ALTER TABLE `BLOOD_DONATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLOOD_DONATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLOOD_REQUIREMENT`
--

DROP TABLE IF EXISTS `BLOOD_REQUIREMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLOOD_REQUIREMENT` (
  `U_ID` varchar(50) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`U_ID`,`DATE`),
  CONSTRAINT `FK_BRUID` FOREIGN KEY (`U_ID`) REFERENCES `USER` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLOOD_REQUIREMENT`
--

LOCK TABLES `BLOOD_REQUIREMENT` WRITE;
/*!40000 ALTER TABLE `BLOOD_REQUIREMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLOOD_REQUIREMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONSULTATION`
--

DROP TABLE IF EXISTS `CONSULTATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONSULTATION` (
  `CONS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAT_ID` varchar(50) NOT NULL,
  `STAFF_ID` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `REF_HOSPITAL` varchar(100) DEFAULT NULL,
  `SPECIALIZATION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CONS_ID`),
  KEY `FK_CPID` (`PAT_ID`),
  KEY `FK_CSID` (`STAFF_ID`),
  KEY `FK_CRH` (`REF_HOSPITAL`),
  CONSTRAINT `FK_CPID` FOREIGN KEY (`PAT_ID`) REFERENCES `PATIENT` (`PAT_ID`),
  CONSTRAINT `FK_CRH` FOREIGN KEY (`REF_HOSPITAL`) REFERENCES `HOSPITAL_CONTACT` (`HOSPITAL`),
  CONSTRAINT `FK_CSID` FOREIGN KEY (`STAFF_ID`) REFERENCES `STAFF` (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONSULTATION`
--

LOCK TABLES `CONSULTATION` WRITE;
/*!40000 ALTER TABLE `CONSULTATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CONSULTATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRUG_COMPOSITION`
--

DROP TABLE IF EXISTS `DRUG_COMPOSITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DRUG_COMPOSITION` (
  `DRUG_ID` int(11) NOT NULL,
  `CONTENT` varchar(100) NOT NULL,
  `PERCENTAGE` float NOT NULL,
  PRIMARY KEY (`DRUG_ID`,`CONTENT`),
  CONSTRAINT `FK_DCDID` FOREIGN KEY (`DRUG_ID`) REFERENCES `DRUG_DATA` (`DRUG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRUG_COMPOSITION`
--

LOCK TABLES `DRUG_COMPOSITION` WRITE;
/*!40000 ALTER TABLE `DRUG_COMPOSITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `DRUG_COMPOSITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRUG_DATA`
--

DROP TABLE IF EXISTS `DRUG_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DRUG_DATA` (
  `DRUG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRUG_NAME` varchar(100) NOT NULL,
  `MANUFACTURER` varchar(100) NOT NULL,
  PRIMARY KEY (`DRUG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRUG_DATA`
--

LOCK TABLES `DRUG_DATA` WRITE;
/*!40000 ALTER TABLE `DRUG_DATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `DRUG_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DRUG_STOCK`
--

DROP TABLE IF EXISTS `DRUG_STOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DRUG_STOCK` (
  `STOCK_ID` int(11) NOT NULL,
  `DRUG_ID` int(11) NOT NULL,
  `BATCH` varchar(20) NOT NULL,
  `EXP_DATE` date NOT NULL,
  `QNT` int(5) NOT NULL,
  `PRICE` int(7) NOT NULL,
  PRIMARY KEY (`STOCK_ID`),
  KEY `FK_DSDID` (`DRUG_ID`),
  CONSTRAINT `FK_DSDID` FOREIGN KEY (`DRUG_ID`) REFERENCES `DRUG_DATA` (`DRUG_ID`),
  CONSTRAINT `FK_DSSID` FOREIGN KEY (`STOCK_ID`) REFERENCES `SUPPLIES` (`ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DRUG_STOCK`
--

LOCK TABLES `DRUG_STOCK` WRITE;
/*!40000 ALTER TABLE `DRUG_STOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `DRUG_STOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOSPITAL_CONTACT`
--

DROP TABLE IF EXISTS `HOSPITAL_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOSPITAL_CONTACT` (
  `HOSPITAL` varchar(100) NOT NULL,
  `CONTACT` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`HOSPITAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOSPITAL_CONTACT`
--

LOCK TABLES `HOSPITAL_CONTACT` WRITE;
/*!40000 ALTER TABLE `HOSPITAL_CONTACT` DISABLE KEYS */;
INSERT INTO `HOSPITAL_CONTACT` VALUES ('ASTER',9988776655);
/*!40000 ALTER TABLE `HOSPITAL_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MED_HISTORY`
--

DROP TABLE IF EXISTS `MED_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MED_HISTORY` (
  `PAT_ID` varchar(50) NOT NULL,
  `DATA` text DEFAULT NULL,
  PRIMARY KEY (`PAT_ID`),
  CONSTRAINT `FK_MPID` FOREIGN KEY (`PAT_ID`) REFERENCES `PATIENT` (`PAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MED_HISTORY`
--

LOCK TABLES `MED_HISTORY` WRITE;
/*!40000 ALTER TABLE `MED_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `MED_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OBSERVATION`
--

DROP TABLE IF EXISTS `OBSERVATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OBSERVATION` (
  `CONS_ID` int(11) NOT NULL,
  `OBSERVATION` text DEFAULT NULL,
  PRIMARY KEY (`CONS_ID`),
  CONSTRAINT `FK_OCID` FOREIGN KEY (`CONS_ID`) REFERENCES `CONSULTATION` (`CONS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OBSERVATION`
--

LOCK TABLES `OBSERVATION` WRITE;
/*!40000 ALTER TABLE `OBSERVATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OBSERVATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDERS` (
  `ORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STAFF_ID` varchar(50) NOT NULL,
  `SUP_ID` int(11) NOT NULL,
  `DRUG_ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `QUANTITY` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ORD_ID`),
  KEY `FK_OSID` (`STAFF_ID`),
  KEY `FK_OSPID` (`SUP_ID`),
  KEY `FK_ODID` (`DRUG_ID`),
  CONSTRAINT `FK_ODID` FOREIGN KEY (`DRUG_ID`) REFERENCES `DRUG_DATA` (`DRUG_ID`),
  CONSTRAINT `FK_OSID` FOREIGN KEY (`STAFF_ID`) REFERENCES `STAFF` (`STAFF_ID`),
  CONSTRAINT `FK_OSPID` FOREIGN KEY (`SUP_ID`) REFERENCES `SUPPLIER` (`SUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PATIENT`
--

DROP TABLE IF EXISTS `PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PATIENT` (
  `PAT_ID` varchar(50) NOT NULL,
  `EMG_CONTACT` bigint(10) NOT NULL,
  PRIMARY KEY (`PAT_ID`),
  CONSTRAINT `FK_PATID` FOREIGN KEY (`PAT_ID`) REFERENCES `USER` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT`
--

LOCK TABLES `PATIENT` WRITE;
/*!40000 ALTER TABLE `PATIENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PATIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRESCRIPTION`
--

DROP TABLE IF EXISTS `PRESCRIPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRESCRIPTION` (
  `CONS_ID` int(11) NOT NULL,
  `PRESCRIPTION` text NOT NULL,
  PRIMARY KEY (`CONS_ID`),
  CONSTRAINT `FK_PCID` FOREIGN KEY (`CONS_ID`) REFERENCES `CONSULTATION` (`CONS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRESCRIPTION`
--

LOCK TABLES `PRESCRIPTION` WRITE;
/*!40000 ALTER TABLE `PRESCRIPTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRESCRIPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURCHASES`
--

DROP TABLE IF EXISTS `PURCHASES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURCHASES` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `U_ID` varchar(50) NOT NULL,
  `STAFF_ID` varchar(50) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOTAL_PRICE` float NOT NULL,
  PRIMARY KEY (`P_ID`),
  KEY `FK_PUID` (`U_ID`),
  KEY `FK_PSID` (`STAFF_ID`),
  CONSTRAINT `FK_PSID` FOREIGN KEY (`STAFF_ID`) REFERENCES `STAFF` (`STAFF_ID`),
  CONSTRAINT `FK_PUID` FOREIGN KEY (`U_ID`) REFERENCES `USER` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASES`
--

LOCK TABLES `PURCHASES` WRITE;
/*!40000 ALTER TABLE `PURCHASES` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURCHASES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURCHASE_DATA`
--

DROP TABLE IF EXISTS `PURCHASE_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PURCHASE_DATA` (
  `P_ID` int(11) NOT NULL,
  `STOCK_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `COST` float NOT NULL,
  PRIMARY KEY (`P_ID`,`STOCK_ID`),
  KEY `FK_PDSID` (`STOCK_ID`),
  CONSTRAINT `FK_PDPID` FOREIGN KEY (`P_ID`) REFERENCES `PURCHASES` (`P_ID`),
  CONSTRAINT `FK_PDSID` FOREIGN KEY (`STOCK_ID`) REFERENCES `DRUG_STOCK` (`STOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASE_DATA`
--

LOCK TABLES `PURCHASE_DATA` WRITE;
/*!40000 ALTER TABLE `PURCHASE_DATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PURCHASE_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SESSION_USER`
--

DROP TABLE IF EXISTS `SESSION_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SESSION_USER` (
  `U_ID` varchar(50) NOT NULL,
  `TYPE` char(1) NOT NULL,
  PRIMARY KEY (`U_ID`),
  CONSTRAINT `FK_SUUID` FOREIGN KEY (`U_ID`) REFERENCES `USER` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SESSION_USER`
--

LOCK TABLES `SESSION_USER` WRITE;
/*!40000 ALTER TABLE `SESSION_USER` DISABLE KEYS */;
INSERT INTO `SESSION_USER` VALUES ('b180049cs','U');
/*!40000 ALTER TABLE `SESSION_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF`
--

DROP TABLE IF EXISTS `STAFF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STAFF` (
  `STAFF_ID` varchar(50) NOT NULL,
  `SHIFT_START` time DEFAULT NULL,
  `SHIFT_END` time DEFAULT NULL,
  `S_TYPE` char(1) NOT NULL,
  PRIMARY KEY (`STAFF_ID`),
  CONSTRAINT `FK_SID` FOREIGN KEY (`STAFF_ID`) REFERENCES `USER` (`U_ID`),
  CONSTRAINT `CHK_STYPE` CHECK (`S_TYPE` in ('D','N','P'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF`
--

LOCK TABLES `STAFF` WRITE;
/*!40000 ALTER TABLE `STAFF` DISABLE KEYS */;
/*!40000 ALTER TABLE `STAFF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIER`
--

DROP TABLE IF EXISTS `SUPPLIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPPLIER` (
  `SUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUP_NAME` varchar(100) NOT NULL,
  `CONTACT` bigint(10) NOT NULL,
  `PWD` varchar(255) NOT NULL,
  PRIMARY KEY (`SUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIER`
--

LOCK TABLES `SUPPLIER` WRITE;
/*!40000 ALTER TABLE `SUPPLIER` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUPPLIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIES`
--

DROP TABLE IF EXISTS `SUPPLIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPPLIES` (
  `ORD_ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `QUANTITY` int(5) NOT NULL,
  `EST_PRC` float NOT NULL,
  `DELIVERED` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ORD_ID`),
  CONSTRAINT `FK_SOID` FOREIGN KEY (`ORD_ID`) REFERENCES `ORDERS` (`ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIES`
--

LOCK TABLES `SUPPLIES` WRITE;
/*!40000 ALTER TABLE `SUPPLIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUPPLIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `U_ID` varchar(50) NOT NULL,
  `FNAME` varchar(100) NOT NULL,
  `LNAME` varchar(100) NOT NULL,
  `SEX` char(1) NOT NULL,
  `DOB` date NOT NULL,
  `B_GROUP` varchar(10) NOT NULL,
  `ADDLINE1` varchar(255) NOT NULL,
  `ADDLINE2` varchar(255) NOT NULL,
  `PIN` int(6) NOT NULL,
  `MOB_NO` bigint(10) NOT NULL,
  `PWD` varchar(255) NOT NULL,
  PRIMARY KEY (`U_ID`),
  KEY `FK_UBG` (`B_GROUP`),
  CONSTRAINT `FK_UBG` FOREIGN KEY (`B_GROUP`) REFERENCES `BLOOD_BANK` (`BLOOD_TYPE`),
  CONSTRAINT `CHK_USX` CHECK (`SEX` in ('M','F','O'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES ('b180049cs','Jaideep','P M','M','2020-12-01','O+','A1','A2',876789,8765678909,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24 21:13:59
