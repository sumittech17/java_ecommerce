CREATE DATABASE  IF NOT EXISTS `oyeshaad_broadleaf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `oyeshaad_broadleaf`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 45.114.79.107    Database: oyeshaad_broadleaf
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BLC_ADDITIONAL_OFFER_INFO`
--

DROP TABLE IF EXISTS `BLC_ADDITIONAL_OFFER_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADDITIONAL_OFFER_INFO` (
  `BLC_ORDER_ORDER_ID` bigint(20) NOT NULL,
  `OFFER_INFO_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BLC_ORDER_ORDER_ID`,`OFFER_ID`),
  KEY `FK3BFDBD63B5D9C34D` (`OFFER_INFO_ID`),
  KEY `FK3BFDBD63D5F3FAF4` (`OFFER_ID`),
  KEY `FK3BFDBD631891FF79` (`BLC_ORDER_ORDER_ID`),
  CONSTRAINT `FK3BFDBD631891FF79` FOREIGN KEY (`BLC_ORDER_ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FK3BFDBD63B5D9C34D` FOREIGN KEY (`OFFER_INFO_ID`) REFERENCES `BLC_OFFER_INFO` (`OFFER_INFO_ID`),
  CONSTRAINT `FK3BFDBD63D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADDITIONAL_OFFER_INFO`
--

LOCK TABLES `BLC_ADDITIONAL_OFFER_INFO` WRITE;
/*!40000 ALTER TABLE `BLC_ADDITIONAL_OFFER_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ADDITIONAL_OFFER_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADDRESS`
--

DROP TABLE IF EXISTS `BLC_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADDRESS` (
  `ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_LINE1` varchar(255) NOT NULL,
  `ADDRESS_LINE2` varchar(255) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) NOT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FAX` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `FULL_NAME` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_BUSINESS` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `IS_MAILING` tinyint(1) DEFAULT NULL,
  `IS_STREET` tinyint(1) DEFAULT NULL,
  `ISO_COUNTRY_SUB` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `PRIMARY_PHONE` varchar(255) DEFAULT NULL,
  `SECONDARY_PHONE` varchar(255) DEFAULT NULL,
  `STANDARDIZED` tinyint(1) DEFAULT NULL,
  `SUB_STATE_PROV_REG` varchar(255) DEFAULT NULL,
  `TOKENIZED_ADDRESS` varchar(255) DEFAULT NULL,
  `VERIFICATION_LEVEL` varchar(255) DEFAULT NULL,
  `ZIP_FOUR` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `ISO_COUNTRY_ALPHA2` varchar(255) DEFAULT NULL,
  `PHONE_FAX_ID` bigint(20) DEFAULT NULL,
  `PHONE_PRIMARY_ID` bigint(20) DEFAULT NULL,
  `PHONE_SECONDARY_ID` bigint(20) DEFAULT NULL,
  `STATE_PROV_REGION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `ADDRESS_COUNTRY_INDEX` (`COUNTRY`),
  KEY `ADDRESS_ISO_COUNTRY_IDX` (`ISO_COUNTRY_ALPHA2`),
  KEY `ADDRESS_PHONE_FAX_IDX` (`PHONE_FAX_ID`),
  KEY `ADDRESS_PHONE_PRI_IDX` (`PHONE_PRIMARY_ID`),
  KEY `ADDRESS_PHONE_SEC_IDX` (`PHONE_SECONDARY_ID`),
  KEY `ADDRESS_STATE_INDEX` (`STATE_PROV_REGION`),
  KEY `FK299F86CEA46E16CF` (`COUNTRY`),
  KEY `FK299F86CE3A39A488` (`ISO_COUNTRY_ALPHA2`),
  KEY `FK299F86CEF1A6533F` (`PHONE_FAX_ID`),
  KEY `FK299F86CEBF4449BA` (`PHONE_PRIMARY_ID`),
  KEY `FK299F86CEE12DC0C8` (`PHONE_SECONDARY_ID`),
  KEY `FK299F86CE337C4D50` (`STATE_PROV_REGION`),
  CONSTRAINT `FK299F86CE337C4D50` FOREIGN KEY (`STATE_PROV_REGION`) REFERENCES `BLC_STATE` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CE3A39A488` FOREIGN KEY (`ISO_COUNTRY_ALPHA2`) REFERENCES `BLC_ISO_COUNTRY` (`ALPHA_2`),
  CONSTRAINT `FK299F86CEA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `BLC_COUNTRY` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CEBF4449BA` FOREIGN KEY (`PHONE_PRIMARY_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEE12DC0C8` FOREIGN KEY (`PHONE_SECONDARY_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEF1A6533F` FOREIGN KEY (`PHONE_FAX_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADDRESS`
--

LOCK TABLES `BLC_ADDRESS` WRITE;
/*!40000 ALTER TABLE `BLC_ADDRESS` DISABLE KEYS */;
INSERT INTO `BLC_ADDRESS` VALUES (1,'sfsfs',NULL,NULL,'sfsf',NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'US','CA',NULL,NULL,NULL,NULL),(51,'dadad','ada',NULL,'adad',NULL,NULL,NULL,NULL,'ada',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,1,NULL,NULL),(52,'dadad','ada',NULL,'adad',NULL,NULL,NULL,NULL,'ada',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,2,NULL,NULL),(53,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'asdad',NULL,1,0,0,0,0,NULL,'adad','ada',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,3,NULL,NULL),(54,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'asdad',NULL,1,0,0,0,0,NULL,'adad','ada',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,4,NULL,NULL),(101,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'aada',NULL,1,0,0,0,0,NULL,'dada','csasa',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,51,NULL,NULL),(102,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'aada',NULL,1,0,0,0,0,NULL,'dada','csasa',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,52,NULL,NULL),(151,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,101,NULL,NULL),(152,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,102,NULL,NULL),(201,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,151,NULL,NULL),(202,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,152,NULL,NULL),(251,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,201,NULL,NULL),(252,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,202,NULL,NULL),(301,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'adad','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,251,NULL,NULL),(302,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'adad','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,252,NULL,NULL),(351,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,301,NULL,NULL),(352,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,302,NULL,NULL),(401,'adada','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,351,NULL,NULL),(402,'adada','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,352,NULL,NULL),(451,'adada','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,401,NULL,NULL),(501,'adad','ada',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,451,NULL,NULL),(502,'adad','ada',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,452,NULL,NULL),(551,'adad','adad',NULL,'ada',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,'CA-BC','dada','123456',NULL,NULL,0,'BC',NULL,NULL,NULL,NULL,'CA',NULL,501,NULL,NULL),(601,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,551,NULL,NULL),(602,'adad','adad',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,552,NULL,NULL),(651,'adada','',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,601,NULL,NULL),(652,'adada','',NULL,'adad',NULL,NULL,NULL,NULL,'dad',NULL,1,0,0,0,0,NULL,'dada','123456',NULL,NULL,0,'CA',NULL,NULL,NULL,NULL,'CA',NULL,602,NULL,NULL),(701,'gn','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'',NULL,NULL,NULL,NULL,'CA',NULL,651,NULL,NULL),(702,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'GA',NULL,NULL,NULL,NULL,'ca',NULL,652,NULL,NULL),(703,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'GA',NULL,NULL,NULL,NULL,'ca',NULL,653,NULL,NULL),(751,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'',NULL,NULL,NULL,NULL,'CA',NULL,701,NULL,NULL),(801,'a','',NULL,'indore',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(802,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,751,NULL,NULL),(851,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(901,'162 goyal nagar','',NULL,'indore',NULL,NULL,NULL,NULL,'SATYANARAYAN',NULL,1,0,0,0,0,NULL,'AGRAWAL1','452018',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(902,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,801,NULL,NULL),(903,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,802,NULL,NULL),(904,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(951,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal1','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,851,NULL,NULL),(952,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(1001,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,901,NULL,NULL),(1051,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,951,NULL,NULL),(1052,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,952,NULL,NULL),(1101,'rff','ddf',NULL,'dff',NULL,NULL,NULL,NULL,'sumit',NULL,1,0,0,0,0,NULL,'agrawal','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1001,NULL,NULL),(1102,'rff','ddf',NULL,'dff',NULL,NULL,NULL,NULL,'sumit',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1002,NULL,NULL),(1151,'s','',NULL,'s',NULL,NULL,NULL,NULL,'s',NULL,1,0,0,0,0,NULL,'s','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1051,NULL,NULL),(1152,'s','',NULL,'s',NULL,NULL,NULL,NULL,'s',NULL,1,0,0,0,0,NULL,'s','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(1153,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1052,NULL,NULL),(1154,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1053,NULL,NULL),(1155,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1054,NULL,NULL),(1156,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1055,NULL,NULL),(1201,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1101,NULL,NULL),(1202,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1102,NULL,NULL),(1251,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1151,NULL,NULL),(1252,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1152,NULL,NULL),(1253,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','a',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1153,NULL,NULL),(1254,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1154,NULL,NULL),(1255,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1155,NULL,NULL),(1256,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1156,NULL,NULL),(1301,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1201,NULL,NULL),(1302,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1202,NULL,NULL),(1351,'a','',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1251,NULL,NULL),(1352,'a','a',NULL,'a',NULL,NULL,NULL,NULL,'a',NULL,1,0,0,0,0,NULL,'a','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1252,NULL,NULL),(1401,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1301,NULL,NULL),(1402,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1302,NULL,NULL),(1451,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','+919425348257',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1351,NULL,NULL),(1452,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,NULL,'agrawal','+919425348257',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1352,NULL,NULL),(1501,'A','',NULL,'Indore',NULL,NULL,NULL,NULL,'A',NULL,1,0,0,0,0,NULL,'A','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1401,NULL,NULL),(1502,'A','',NULL,'Indore',NULL,NULL,NULL,NULL,'Tu',NULL,1,0,0,0,0,NULL,'A','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1402,NULL,NULL),(1503,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1403,NULL,NULL),(1504,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1404,NULL,NULL),(1505,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1405,NULL,NULL),(1506,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1406,NULL,NULL),(1507,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','.',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1407,NULL,NULL),(1508,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1408,NULL,NULL),(1551,'s','',NULL,'s',NULL,NULL,NULL,NULL,'s',NULL,1,0,0,0,0,'CA-MP','s','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1451,NULL,NULL),(1552,'s','',NULL,'s',NULL,NULL,NULL,NULL,'s',NULL,1,0,0,0,0,'CA-MP','s','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1452,NULL,NULL),(1601,'sss','ss',NULL,'sss',NULL,NULL,NULL,NULL,'sss',NULL,1,0,0,0,0,'CA-MP','sss','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1501,NULL,NULL),(1602,'s','',NULL,'sss',NULL,NULL,NULL,NULL,'sss',NULL,1,0,0,0,0,'CA-MP','s','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1502,NULL,NULL),(1651,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1551,NULL,NULL),(1652,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1552,NULL,NULL),(1653,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1553,NULL,NULL),(1654,'162 goyal nagar','',NULL,'indore',NULL,NULL,NULL,NULL,'SATYANARAYAN',NULL,1,0,0,0,0,'CA-MP','AGRAWAL','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(1655,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1554,NULL,NULL),(1656,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1555,NULL,NULL),(1701,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1601,NULL,NULL),(1702,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1602,NULL,NULL),(1703,'A','',NULL,'Indore',NULL,NULL,NULL,NULL,'A',NULL,1,0,0,0,0,'CA-MP','A','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1603,NULL,NULL),(1704,'A','',NULL,'Indore',NULL,NULL,NULL,NULL,'A',NULL,1,0,0,0,0,'CA-MP','A','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1604,NULL,NULL),(1705,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1605,NULL,NULL),(1706,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1606,NULL,NULL),(1707,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1607,NULL,NULL),(1751,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1651,NULL,NULL),(1801,'fff','dd',NULL,'ccc',NULL,NULL,NULL,NULL,'sss',NULL,1,0,0,0,0,'CA-MP','sss','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1701,NULL,NULL),(1802,'fff','',NULL,'ccc',NULL,NULL,NULL,NULL,'sss',NULL,1,0,0,0,0,'CA-MP','sss','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1702,NULL,NULL),(1803,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1703,NULL,NULL),(1804,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,NULL,NULL,NULL),(1851,'fff','',NULL,'ccc',NULL,NULL,NULL,NULL,'sss',NULL,1,0,0,0,0,'CA-MP','sss','',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1751,NULL,NULL),(1852,'fff','',NULL,'ccc',NULL,NULL,NULL,NULL,'sss',NULL,1,0,0,0,0,'CA-MP','sss','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1752,NULL,NULL),(1901,'indore','',NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','452001',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1801,NULL,NULL),(1902,'indore',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1802,NULL,NULL),(1903,'indore',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1803,NULL,NULL),(1951,'481 Kalani Nagar ',NULL,NULL,'Indorw',NULL,NULL,NULL,NULL,'Arpit',NULL,1,0,0,0,0,'CA-MP','Agrawal ','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1851,NULL,NULL),(1952,'481 Kalani Nagar ',NULL,NULL,'Indorw',NULL,NULL,NULL,NULL,'Arpit',NULL,1,0,0,0,0,'CA-MP','Agrawal ','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1852,NULL,NULL),(2001,'indore',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1901,NULL,NULL),(2002,'indore',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1902,NULL,NULL),(2051,'indore',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1951,NULL,NULL),(2052,'indore',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'sheetal',NULL,1,0,0,0,0,'CA-MP','agrawal','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1952,NULL,NULL),(2053,'h.n. 100 pigdamber',NULL,NULL,'rau',NULL,NULL,NULL,NULL,'virendra',NULL,1,0,0,0,0,'CA-MP','chouhan','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1953,NULL,NULL),(2054,'h.n. 100 pigdamber rau indore',NULL,NULL,'rau',NULL,NULL,NULL,NULL,'virendra',NULL,1,0,0,0,0,'CA-MP','chouhan','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1954,NULL,NULL),(2055,'h.n. 100 pigdamber rau indore',NULL,NULL,'rau',NULL,NULL,NULL,NULL,'virendra',NULL,1,0,0,0,0,'CA-MP','chouhan','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,1955,NULL,NULL),(2101,'101 sarthak apartment sarthak vihar tejajinagar bypass',NULL,NULL,'indore',NULL,NULL,NULL,NULL,'shubham',NULL,1,0,0,0,0,'CA-MP','saxena','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,2001,NULL,NULL),(2102,'101 sarthak apartment sarthak vihar tejaji nagar bypass','jashn e haweli near shehnai grande ralamandal bypass',NULL,'indore',NULL,NULL,NULL,NULL,'shubham',NULL,1,0,0,0,0,'CA-MP','saxena','1',NULL,NULL,0,'MP',NULL,NULL,NULL,NULL,'CA',NULL,2002,NULL,NULL);
/*!40000 ALTER TABLE `BLC_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_MODULE`
--

DROP TABLE IF EXISTS `BLC_ADMIN_MODULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_MODULE` (
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `MODULE_KEY` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_MODULE_ID`),
  KEY `ADMINMODULE_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_MODULE`
--

LOCK TABLES `BLC_ADMIN_MODULE` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_MODULE` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_MODULE` VALUES (-9,250,'blc-icon-inventory','BLCInventory','Inventory'),(-8,150,'fa fa-usd','BLCPricing','Pricing'),(-7,500,'blc-icon-site-updates','BLCWorkflow','Site Updates'),(-6,400,'blc-icon-design','BLCDesign','Design'),(-5,700,'blc-icon-settings','BLCModuleConfiguration','Settings'),(-4,600,'blc-icon-security','BLCOpenAdmin','Security'),(-3,550,'blc-icon-customer-care','BLCCustomerCare','Customer Care'),(-2,200,'blc-icon-content','BLCContentManagement','Content'),(-1,100,'blc-icon-catalog','BLCMerchandising','Catalog');
/*!40000 ALTER TABLE `BLC_ADMIN_MODULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_PASSWORD_TOKEN`
--

DROP TABLE IF EXISTS `BLC_ADMIN_PASSWORD_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_PASSWORD_TOKEN` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_PASSWORD_TOKEN`
--

LOCK TABLES `BLC_ADMIN_PASSWORD_TOKEN` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PASSWORD_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ADMIN_PASSWORD_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_PERMISSION`
--

DROP TABLE IF EXISTS `BLC_ADMIN_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_PERMISSION` (
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `IS_FRIENDLY` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PERMISSION_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_PERMISSION`
--

LOCK TABLES `BLC_ADMIN_PERMISSION` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_PERMISSION` VALUES (-27003,'Maintain Menus',1,'PERMISSION_MENU','ALL'),(-27002,'View Menus',1,'PERMISSION_MENU','READ'),(-27001,'All Menu',NULL,'PERMISSION_ALL_MENU','ALL'),(-27000,'Read Menu',NULL,'PERMISSION_READ_MENU','READ'),(-200,'Read Page Template',0,'PERMISSION_READ_PAGE_TEMPLATE','READ'),(-161,'Maintain Field Definitions',1,'PERMISSION_FLDDEF_ALL','ALL'),(-160,'View Field Definitions',1,'PERMISSION_FLDDEF_VIEW','READ'),(-151,'Maintain Permissions',1,'PERMISSION_PERM_ALL','ALL'),(-150,'View Permissions',1,'PERMISSION_PERM_VIEW','READ'),(-141,'Maintain Roles',1,'PERMISSION_ROLE_ALL','ALL'),(-140,'View Roles',1,'PERMISSION_ROLE_VIEW','READ'),(-131,'Maintain Translations',1,'PERMISSION_TRANSLATION','ALL'),(-130,'View Translations',1,'PERMISSION_TRANSLATION','READ'),(-127,'Maintain Module Configurations',1,'PERMISSION_MODULECONFIGURATION','ALL'),(-126,'View Module Configurations',1,'PERMISSION_MODULECONFIGURATION','READ'),(-121,'Maintain Users',1,'PERMISSION_USER','ALL'),(-120,'View Users',1,'PERMISSION_USER','READ'),(-119,'Maintain Customers',1,'PERMISSION_CUSTOMER','ALL'),(-118,'View Customers',1,'PERMISSION_CUSTOMER','READ'),(-115,'Maintain URL Redirects',1,'PERMISSION_URLREDIRECT','ALL'),(-114,'View URL Redirects',1,'PERMISSION_URLREDIRECT','READ'),(-111,'Maintain Assets',1,'PERMISSION_ASSET','ALL'),(-110,'View Assets',1,'PERMISSION_ASSET','READ'),(-109,'Maintain Pages',1,'PERMISSION_PAGE','ALL'),(-108,'View Pages',1,'PERMISSION_PAGE','READ'),(-107,'Maintain Offers',1,'PERMISSION_OFFER','ALL'),(-106,'View Offers',1,'PERMISSION_OFFER','READ'),(-105,'Maintain Product Options',1,'PERMISSION_PRODUCTOPTIONS','ALL'),(-104,'View Product Options',1,'PERMISSION_PRODUCTOPTIONS','READ'),(-103,'Maintain Products',1,'PERMISSION_PRODUCT','ALL'),(-102,'View Products',1,'PERMISSION_PRODUCT','READ'),(-101,'Maintain Categories',1,'PERMISSION_CATEGORY','ALL'),(-100,'View Categories',1,'PERMISSION_CATEGORY','READ'),(-55,'All ISO COUNTRIES',0,'PERMISSION_ALL_ISO_COUNTRIES','ALL'),(-54,'Read ISO Countries',0,'PERMISSION_READ_ISO_COUNTRIES','READ'),(-53,'All Catalog Permissions',0,'PERMISSION_ALL_CATALOG_PERMS','ALL'),(-52,'Read Catalog Permissions',0,'PERMISSION_READ_CATALOG_PERMS','READ'),(-51,'All Field Definitions',0,'PERMISSION_ALL_FIELD_DEFS','ALL'),(-50,'Read Field Definitions',0,'PERMISSION_READ_FIELD_DEFS','READ'),(-49,'All Admin Permissions',0,'PERMISSION_ALL_ADMIN_PERMS','ALL'),(-48,'Read Admin Permissions',0,'PERMISSION_READ_ADMIN_PERMS','READ'),(-47,'All Admin Roles',0,'PERMISSION_ALL_ADMIN_ROLES','ALL'),(-46,'Read Admin Roles',0,'PERMISSION_READ_ADMIN_ROLES','READ'),(-45,'All System Property',0,'PERMISSION_ALL_SYSTEM_PROPERTY','ALL'),(-44,'Read System Property',0,'PERMISSION_READ_SYSTEM_PROPERTY','READ'),(-43,'All Site Map Gen Configuration',0,'PERMISSION_ALL_SITE_MAP_GEN_CONFIG','ALL'),(-42,'Read Site Map Gen Configuration',0,'PERMISSION_READ_SITE_MAP_GEN_CONFIG','READ'),(-41,'All Translation',0,'PERMISSION_ALL_TRANSLATION','ALL'),(-40,'Read Translation',0,'PERMISSION_READ_TRANSLATION','READ'),(-39,'All Enumeration',0,'PERMISSION_ALL_ENUMERATION','ALL'),(-38,'Read Enumeration',0,'PERMISSION_READ_ENUMERATION','READ'),(-37,'All Configuration',0,'PERMISSION_ALL_MODULECONFIGURATION','ALL'),(-36,'Read Configuration',0,'PERMISSION_READ_MODULECONFIGURATION','READ'),(-35,'All Currency',0,'PERMISSION_ALL_CURRENCY','ALL'),(-34,'Read Currency',0,'PERMISSION_READ_CURRENCY','READ'),(-33,'All SearchFacet',0,'PERMISSION_ALL_SEARCHFACET','ALL'),(-32,'Read SearchFacet',0,'PERMISSION_READ_SEARCHFACET','READ'),(-31,'All SearchRedirect',0,'PERMISSION_ALL_SEARCHREDIRECT','ALL'),(-30,'Read SearchRedirect',0,'PERMISSION_READ_SEARCHREDIRECT','READ'),(-29,'All URLHandler',0,'PERMISSION_ALL_URLHANDLER','ALL'),(-28,'Read URLHandler',0,'PERMISSION_READ_URLHANDLER','READ'),(-27,'All Admin User',0,'PERMISSION_ALL_ADMIN_USER','ALL'),(-26,'Read Admin User',0,'PERMISSION_READ_ADMIN_USER','READ'),(-25,'Order',0,'order','ALL'),(-23,'All Asset',0,'PERMISSION_ALL_ASSET','ALL'),(-22,'Read Asset',0,'PERMISSION_READ_ASSET','READ'),(-21,'All Page',0,'PERMISSION_ALL_PAGE','ALL'),(-20,'Read Page',0,'PERMISSION_READ_PAGE','READ'),(-19,'All Customer',0,'PERMISSION_ALL_CUSTOMER','ALL'),(-18,'Read Customer',0,'PERMISSION_READ_CUSTOMER','READ'),(-17,'All Order Item',0,'PERMISSION_ALL_ORDER_ITEM','ALL'),(-16,'Read Order Item',0,'PERMISSION_READ_ORDER_ITEM','READ'),(-15,'All Fulfillment Group',0,'PERMISSION_ALL_FULFILLMENT_GROUP','ALL'),(-14,'Read Fulfillment Group',0,'PERMISSION_READ_FULFILLMENT_GROUP','READ'),(-13,'All Order',0,'PERMISSION_ALL_ORDER','ALL'),(-12,'Read Order',0,'PERMISSION_READ_ORDER','READ'),(-11,'All Promotion',0,'PERMISSION_ALL_PROMOTION','ALL'),(-10,'Read Promotion',0,'PERMISSION_READ_PROMOTION','READ'),(-9,'All Sku',0,'PERMISSION_ALL_SKU','ALL'),(-8,'Read Sku',0,'PERMISSION_READ_SKU','READ'),(-7,'All Product Option',0,'PERMISSION_ALL_PRODUCT_OPTION','ALL'),(-6,'Read Product Option',0,'PERMISSION_READ_PRODUCT_OPTION','READ'),(-5,'All Product',0,'PERMISSION_ALL_PRODUCT','ALL'),(-4,'Read Product',0,'PERMISSION_READ_PRODUCT','READ'),(-3,'All Category',0,'PERMISSION_ALL_CATEGORY','ALL'),(-2,'Read Category',0,'PERMISSION_READ_CATEGORY','READ'),(-1,'Default Permission',0,'PERMISSION_OTHER_DEFAULT','OTHER');
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_PERMISSION_ENTITY`
--

DROP TABLE IF EXISTS `BLC_ADMIN_PERMISSION_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_PERMISSION_ENTITY` (
  `ADMIN_PERMISSION_ENTITY_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ENTITY_ID`),
  KEY `FK23C09E3DE88B7D38` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FK23C09E3DE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_PERMISSION_ENTITY`
--

LOCK TABLES `BLC_ADMIN_PERMISSION_ENTITY` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_ENTITY` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_PERMISSION_ENTITY` VALUES (-27003,'org.broadleafcommerce.menu.domain.MenuItem',-27001),(-27002,'org.broadleafcommerce.menu.domain.MenuItem',-27000),(-27001,'org.broadleafcommerce.menu.domain.Menu',-27001),(-27000,'org.broadleafcommerce.menu.domain.Menu',-27000),(-1011,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-55),(-1010,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-54),(-1003,'org.broadleafcommerce.common.site.domain.Site',-53),(-1002,'org.broadleafcommerce.common.site.domain.Site',-52),(-1001,'org.broadleafcommerce.common.site.domain.Catalog',-53),(-1000,'org.broadleafcommerce.common.site.domain.Catalog',-52),(-991,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-51),(-990,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-50),(-983,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-48),(-982,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-49),(-981,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-48),(-980,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-49),(-971,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-47),(-970,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-46),(-961,'org.broadleafcommerce.common.config.domain.SystemProperty',-45),(-960,'org.broadleafcommerce.common.config.domain.SystemProperty',-44),(-953,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-43),(-952,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-42),(-951,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-43),(-950,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-42),(-911,'org.broadleafcommerce.common.i18n.domain.Translation',-41),(-910,'org.broadleafcommerce.common.i18n.domain.Translation',-40),(-903,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-39),(-902,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-38),(-901,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-39),(-900,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-38),(-881,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-37),(-880,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-36),(-851,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-35),(-850,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-34),(-813,'org.broadleafcommerce.core.search.domain.IndexFieldType',-33),(-812,'org.broadleafcommerce.core.search.domain.IndexFieldType',-32),(-811,'org.broadleafcommerce.core.search.domain.IndexField',-33),(-810,'org.broadleafcommerce.core.search.domain.IndexField',-32),(-809,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-33),(-808,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-32),(-807,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-33),(-806,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-32),(-805,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-33),(-804,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-32),(-803,'org.broadleafcommerce.core.search.domain.Field',-33),(-802,'org.broadleafcommerce.core.search.domain.Field',-32),(-801,'org.broadleafcommerce.core.search.domain.SearchFacet',-33),(-800,'org.broadleafcommerce.core.search.domain.SearchFacet',-32),(-781,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-31),(-780,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-30),(-753,'org.broadleafcommerce.common.locale.domain.Locale',-29),(-752,'org.broadleafcommerce.common.locale.domain.Locale',-28),(-751,'org.broadleafcommerce.cms.url.domain.URLHandler',-29),(-750,'org.broadleafcommerce.cms.url.domain.URLHandler',-28),(-721,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-27),(-720,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-26),(-603,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-23),(-602,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-22),(-601,'org.broadleafcommerce.cms.file.domain.StaticAsset',-23),(-600,'org.broadleafcommerce.cms.file.domain.StaticAsset',-22),(-557,'org.broadleafcommerce.common.locale.domain.Locale',-21),(-556,'org.broadleafcommerce.common.locale.domain.Locale',-20),(-555,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-21),(-554,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-20),(-552,'org.broadleafcommerce.cms.page.domain.PageTemplate',-200),(-551,'org.broadleafcommerce.cms.page.domain.Page',-21),(-550,'org.broadleafcommerce.cms.page.domain.Page',-20),(-514,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-19),(-513,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-18),(-512,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-19),(-511,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-18),(-510,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-19),(-509,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-18),(-508,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-19),(-507,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-18),(-506,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-19),(-504,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-18),(-503,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-19),(-502,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-18),(-501,'org.broadleafcommerce.profile.core.domain.Customer',-19),(-500,'org.broadleafcommerce.profile.core.domain.Customer',-18),(-461,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-17),(-460,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-16),(-459,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-17),(-458,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-16),(-457,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-17),(-456,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-16),(-455,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-17),(-454,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-16),(-453,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-17),(-452,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-16),(-451,'org.broadleafcommerce.core.order.domain.OrderItem',-17),(-450,'org.broadleafcommerce.core.order.domain.OrderItem',-16),(-407,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-15),(-406,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-14),(-405,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-15),(-404,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-14),(-403,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-15),(-402,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-14),(-401,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-15),(-400,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-14),(-370,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-13),(-369,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-12),(-368,'org.broadleafcommerce.profile.core.domain.State',-13),(-367,'org.broadleafcommerce.profile.core.domain.State',-12),(-366,'org.broadleafcommerce.profile.core.domain.Country',-13),(-365,'org.broadleafcommerce.profile.core.domain.Country',-12),(-361,'org.broadleafcommerce.core.payment.domain.OrderPayment',-13),(-360,'org.broadleafcommerce.core.payment.domain.OrderPayment',-12),(-356,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-13),(-355,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-12),(-351,'org.broadleafcommerce.core.order.domain.Order',-13),(-350,'org.broadleafcommerce.core.order.domain.Order',-12),(-307,'org.broadleafcommerce.core.offer.domain.OfferTier',-11),(-306,'org.broadleafcommerce.core.offer.domain.OfferTier',-10),(-305,'org.broadleafcommerce.core.offer.domain.OfferCode',-11),(-304,'org.broadleafcommerce.core.offer.domain.OfferCode',-10),(-303,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-11),(-302,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-10),(-301,'org.broadleafcommerce.core.offer.domain.Offer',-11),(-300,'org.broadleafcommerce.core.offer.domain.Offer',-10),(-251,'org.broadleafcommerce.core.catalog.domain.Sku',-9),(-250,'org.broadleafcommerce.core.catalog.domain.Sku',-8),(-207,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-7),(-206,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-6),(-205,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-7),(-204,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-6),(-203,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-7),(-202,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-6),(-201,'org.broadleafcommerce.core.catalog.domain.ProductOption',-7),(-200,'org.broadleafcommerce.core.catalog.domain.ProductOption',-6),(-107,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-5),(-106,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-4),(-105,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-5),(-104,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-4),(-103,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-5),(-102,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-4),(-101,'org.broadleafcommerce.core.catalog.domain.Product',-5),(-100,'org.broadleafcommerce.core.catalog.domain.Product',-4),(-14,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-3),(-13,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-2),(-12,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-3),(-11,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-2),(-10,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-3),(-9,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-2),(-8,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-3),(-7,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-2),(-6,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-3),(-5,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-2),(-4,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-3),(-3,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-2),(-2,'org.broadleafcommerce.core.catalog.domain.Category',-3),(-1,'org.broadleafcommerce.core.catalog.domain.Category',-2);
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_PERMISSION_XREF`
--

DROP TABLE IF EXISTS `BLC_ADMIN_PERMISSION_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_PERMISSION_XREF` (
  `CHILD_PERMISSION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FKBCAD1F5E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKBCAD1F575A3C445` (`CHILD_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F575A3C445` FOREIGN KEY (`CHILD_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F5E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_PERMISSION_XREF`
--

LOCK TABLES `BLC_ADMIN_PERMISSION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_XREF` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_PERMISSION_XREF` VALUES (-2,-100),(-4,-100),(-32,-100),(-53,-100),(-3,-101),(-4,-101),(-32,-101),(-53,-101),(-4,-102),(-6,-102),(-8,-102),(-34,-102),(-53,-101),(-5,-103),(-6,-103),(-9,-103),(-34,-103),(-53,-103),(-6,-104),(-32,-104),(-53,-104),(-7,-105),(-32,-105),(-53,-105),(-10,-106),(-53,-106),(-11,-107),(-53,-106),(-20,-108),(-200,-108),(-21,-109),(-200,-109),(-22,-110),(-23,-111),(-28,-114),(-29,-115),(-18,-118),(-19,-119),(-26,-120),(-46,-120),(-48,-120),(-27,-121),(-46,-120),(-48,-120),(-36,-126),(-37,-127),(-40,-130),(-41,-131),(-46,-140),(-48,-140),(-47,-141),(-48,-141),(-48,-150),(-49,-151),(-50,-160),(-51,-161),(-27000,-27002),(-27001,-27003);
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_ROLE`
--

DROP TABLE IF EXISTS `BLC_ADMIN_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_ROLE` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_ROLE`
--

LOCK TABLES `BLC_ADMIN_ROLE` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_ROLE` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_ROLE` VALUES (-7,NULL,NULL,'2016-12-27 19:55:04',NULL,'CMS Designer','ROLE_CONTENT_DESIGNER'),(-6,NULL,NULL,'2016-12-27 19:55:04',NULL,'CMS Approver','ROLE_CONTENT_APPROVER'),(-5,NULL,NULL,'2016-12-27 19:55:04',NULL,'CMS Editor','ROLE_CONTENT_EDITOR'),(-4,NULL,NULL,'2016-12-27 19:55:04',NULL,'CSR','ROLE_CUSTOMER_SERVICE_REP'),(-3,NULL,NULL,'2016-12-27 19:55:04',NULL,'Promotion Manager','ROLE_PROMOTION_MANAGER'),(-2,NULL,NULL,'2016-12-27 19:55:04',NULL,'Merchandiser','ROLE_MERCHANDISE_MANAGER'),(-1,NULL,NULL,'2016-12-27 19:55:04',NULL,'Admin Master Access','ROLE_ADMIN');
/*!40000 ALTER TABLE `BLC_ADMIN_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_ROLE_PERMISSION_XREF`
--

DROP TABLE IF EXISTS `BLC_ADMIN_ROLE_PERMISSION_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_ROLE_PERMISSION_XREF` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_ROLE_ID`),
  KEY `FK4A819D98E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK4A819D985F43AAD8` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D985F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `BLC_ADMIN_ROLE` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D98E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_ROLE_PERMISSION_XREF`
--

LOCK TABLES `BLC_ADMIN_ROLE_PERMISSION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_ROLE_PERMISSION_XREF` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_ROLE_PERMISSION_XREF` VALUES (-5,-27003),(-1,-27003),(-5,-161),(-1,-161),(-1,-141),(-5,-131),(-3,-131),(-2,-131),(-1,-131),(-1,-121),(-4,-119),(-1,-119),(-1,-115),(-6,-111),(-5,-111),(-2,-111),(-1,-111),(-6,-109),(-5,-109),(-1,-109),(-3,-107),(-1,-107),(-2,-105),(-1,-105),(-2,-103),(-1,-103),(-2,-101),(-1,-101),(-1,-25),(-1,-17),(-1,-16),(-1,-13),(-1,-12);
/*!40000 ALTER TABLE `BLC_ADMIN_ROLE_PERMISSION_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_SECTION`
--

DROP TABLE IF EXISTS `BLC_ADMIN_SECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_SECTION` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) DEFAULT NULL,
  `DISPLAY_CONTROLLER` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SECTION_KEY` varchar(255) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `USE_DEFAULT_HANDLER` tinyint(1) DEFAULT NULL,
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_SECTION_ID`),
  UNIQUE KEY `UC_BLC_ADMIN_SECTION_1` (`SECTION_KEY`),
  KEY `ADMINSECTION_MODULE_INDEX` (`ADMIN_MODULE_ID`),
  KEY `ADMINSECTION_NAME_INDEX` (`NAME`),
  KEY `FK7EA7D92FB1A18498` (`ADMIN_MODULE_ID`),
  CONSTRAINT `FK7EA7D92FB1A18498` FOREIGN KEY (`ADMIN_MODULE_ID`) REFERENCES `BLC_ADMIN_MODULE` (`ADMIN_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_SECTION`
--

LOCK TABLES `BLC_ADMIN_SECTION` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_SECTION` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_SECTION` VALUES (-27000,'org.broadleafcommerce.menu.domain.Menu',NULL,3000,'Menus','Menus','/menu',1,-2),(-17,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',NULL,11000,'Permission Management','PermissionManagement','/permission-management',NULL,-5),(-13,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,10000,'Configuration Management','ConfigurationManagement','/configuration-management',NULL,-5),(-12,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',NULL,3000,'Role Management','RoleManagement','/role-management',NULL,-5),(-11,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',NULL,2000,'User Management','UserManagement','/user-management',NULL,-5),(-10,'org.broadleafcommerce.profile.core.domain.Customer',NULL,1000,'Customer','Customer','/customer',NULL,-3),(-8,'org.broadleafcommerce.cms.url.domain.URLHandler',NULL,7000,'Redirect URL','RedirectURL','/redirect-url',NULL,-2),(-6,'org.broadleafcommerce.cms.file.domain.StaticAsset',NULL,4000,'Assets','Assets','/assets',NULL,-2),(-5,'org.broadleafcommerce.cms.page.domain.Page',NULL,2000,'Pages','Pages','/pages',NULL,-2),(-4,'org.broadleafcommerce.core.offer.domain.Offer',NULL,1000,'Offer','Offer','/offer',NULL,-8),(-3,'org.broadleafcommerce.core.catalog.domain.ProductOption',NULL,5000,'Product Options','ProductOptions','/product-options',NULL,-1),(-2,'org.broadleafcommerce.core.catalog.domain.Product',NULL,3000,'Product','Product','/product',NULL,-1),(-1,'org.broadleafcommerce.core.catalog.domain.Category',NULL,2000,'Category','Category','/category',NULL,-1),(10000,'org.broadleafcommerce.core.order.domain.Order',NULL,4000,'Orders','orders','/order',NULL,-1);
/*!40000 ALTER TABLE `BLC_ADMIN_SECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_SEC_PERM_XREF`
--

DROP TABLE IF EXISTS `BLC_ADMIN_SEC_PERM_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_SEC_PERM_XREF` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FK5E832966E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK5E8329663AF7F0FC` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E8329663AF7F0FC` FOREIGN KEY (`ADMIN_SECTION_ID`) REFERENCES `BLC_ADMIN_SECTION` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E832966E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_SEC_PERM_XREF`
--

LOCK TABLES `BLC_ADMIN_SEC_PERM_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_SEC_PERM_XREF` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_SEC_PERM_XREF` VALUES (-1,-100),(-1,-101),(-2,-102),(-2,-103),(-3,-104),(-3,-105),(-4,-106),(-4,-107),(-5,-108),(-5,-109),(-6,-110),(-6,-111),(-8,-114),(-8,-115),(-10,-118),(-10,-119),(-11,-120),(-11,-121),(-12,-140),(-12,-141),(-13,-126),(-13,-127),(-17,-150),(-17,-151),(-27000,-27002),(-27000,-27003);
/*!40000 ALTER TABLE `BLC_ADMIN_SEC_PERM_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_USER`
--

DROP TABLE IF EXISTS `BLC_ADMIN_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_USER` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ACTIVE_STATUS_FLAG` tinyint(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `ADMINPERM_EMAIL_INDEX` (`EMAIL`),
  KEY `ADMINUSER_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_USER`
--

LOCK TABLES `BLC_ADMIN_USER` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_USER` VALUES (-6,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'cms_approver@yourdomain.com','cmsApprover','CMS Approver','admin',NULL),(-5,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'cms_edit@yourdomain.com','cmsEditor','CMS Editor','admin',NULL),(-4,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'csr@yourdomain.com','csr','CSR','admin',NULL),(-3,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'promo@yourdomain.com','promo','Promotion Manager','admin',NULL),(-2,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'merchandise@yourdomain.com','merchandise','Merchandise Manager','admin',NULL),(-1,1,NULL,NULL,NULL,'2016-12-27 19:55:05',NULL,'admin@yourdomain.com','admin','Administrator','admin',NULL);
/*!40000 ALTER TABLE `BLC_ADMIN_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_USER_ADDTL_FIELDS`
--

DROP TABLE IF EXISTS `BLC_ADMIN_USER_ADDTL_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_USER_ADDTL_FIELDS` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `ADMINUSERATTRIBUTE_INDEX` (`ADMIN_USER_ID`),
  KEY `ADMINUSERATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `FK73274CDD46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FK73274CDD46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_USER_ADDTL_FIELDS`
--

LOCK TABLES `BLC_ADMIN_USER_ADDTL_FIELDS` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_ADDTL_FIELDS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_ADDTL_FIELDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_USER_PERMISSION_XREF`
--

DROP TABLE IF EXISTS `BLC_ADMIN_USER_PERMISSION_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_USER_PERMISSION_XREF` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_USER_ID`),
  KEY `FKF0B3BEEDE88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKF0B3BEED46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEED46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEEDE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_USER_PERMISSION_XREF`
--

LOCK TABLES `BLC_ADMIN_USER_PERMISSION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_PERMISSION_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_PERMISSION_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_USER_ROLE_XREF`
--

DROP TABLE IF EXISTS `BLC_ADMIN_USER_ROLE_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_USER_ROLE_XREF` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`,`ADMIN_USER_ID`),
  KEY `FKFFD33A265F43AAD8` (`ADMIN_ROLE_ID`),
  KEY `FKFFD33A2646EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A2646EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A265F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `BLC_ADMIN_ROLE` (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_USER_ROLE_XREF`
--

LOCK TABLES `BLC_ADMIN_USER_ROLE_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_ROLE_XREF` DISABLE KEYS */;
INSERT INTO `BLC_ADMIN_USER_ROLE_XREF` VALUES (-6,-6),(-5,-5),(-4,-4),(-3,-3),(-2,-2),(-1,-1);
/*!40000 ALTER TABLE `BLC_ADMIN_USER_ROLE_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ADMIN_USER_SANDBOX`
--

DROP TABLE IF EXISTS `BLC_ADMIN_USER_SANDBOX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ADMIN_USER_SANDBOX` (
  `SANDBOX_ID` bigint(20) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `FKD0A97E09579FE59D` (`SANDBOX_ID`),
  KEY `FKD0A97E0946EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E0946EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E09579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `BLC_SANDBOX` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ADMIN_USER_SANDBOX`
--

LOCK TABLES `BLC_ADMIN_USER_SANDBOX` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_SANDBOX` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_SANDBOX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ASSET_DESC_MAP`
--

DROP TABLE IF EXISTS `BLC_ASSET_DESC_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ASSET_DESC_MAP` (
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  `STATIC_ASSET_DESC_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`,`MAP_KEY`),
  KEY `FKE886BAE3E2BA0C9D` (`STATIC_ASSET_DESC_ID`),
  KEY `FKE886BAE367F70B63` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKE886BAE367F70B63` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `BLC_STATIC_ASSET` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKE886BAE3E2BA0C9D` FOREIGN KEY (`STATIC_ASSET_DESC_ID`) REFERENCES `BLC_STATIC_ASSET_DESC` (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ASSET_DESC_MAP`
--

LOCK TABLES `BLC_ASSET_DESC_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_ASSET_DESC_MAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ASSET_DESC_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_BANK_ACCOUNT_PAYMENT`
--

DROP TABLE IF EXISTS `BLC_BANK_ACCOUNT_PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_BANK_ACCOUNT_PAYMENT` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `ACCOUNT_NUMBER` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  `ROUTING_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `BANKACCOUNT_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_BANK_ACCOUNT_PAYMENT`
--

LOCK TABLES `BLC_BANK_ACCOUNT_PAYMENT` WRITE;
/*!40000 ALTER TABLE `BLC_BANK_ACCOUNT_PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_BANK_ACCOUNT_PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_BUNDLE_ORDER_ITEM`
--

DROP TABLE IF EXISTS `BLC_BUNDLE_ORDER_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_BUNDLE_ORDER_ITEM` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `PRODUCT_BUNDLE_ID` bigint(20) DEFAULT NULL,
  `SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FK489703DBCCF29B96` (`PRODUCT_BUNDLE_ID`),
  KEY `FK489703DBB78C9977` (`SKU_ID`),
  KEY `FK489703DB9AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK489703DB9AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK489703DBB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`),
  CONSTRAINT `FK489703DBCCF29B96` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `BLC_PRODUCT_BUNDLE` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_BUNDLE_ORDER_ITEM`
--

LOCK TABLES `BLC_BUNDLE_ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_BUNDLE_ORDER_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_BUNDLE_ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_BUND_ITEM_FEE_PRICE`
--

DROP TABLE IF EXISTS `BLC_BUND_ITEM_FEE_PRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_BUND_ITEM_FEE_PRICE` (
  `BUND_ITEM_FEE_PRICE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `IS_TAXABLE` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `BUND_ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BUND_ITEM_FEE_PRICE_ID`),
  KEY `FK14267A943FC68307` (`BUND_ORDER_ITEM_ID`),
  CONSTRAINT `FK14267A943FC68307` FOREIGN KEY (`BUND_ORDER_ITEM_ID`) REFERENCES `BLC_BUNDLE_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_BUND_ITEM_FEE_PRICE`
--

LOCK TABLES `BLC_BUND_ITEM_FEE_PRICE` WRITE;
/*!40000 ALTER TABLE `BLC_BUND_ITEM_FEE_PRICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_BUND_ITEM_FEE_PRICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CANDIDATE_FG_OFFER`
--

DROP TABLE IF EXISTS `BLC_CANDIDATE_FG_OFFER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CANDIDATE_FG_OFFER` (
  `CANDIDATE_FG_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CANDIDATE_FG_OFFER_ID`),
  KEY `CANDIDATE_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `CANDIDATE_FGOFFER_INDEX` (`OFFER_ID`),
  KEY `FKCE785605028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FKCE78560D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FKCE785605028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `BLC_FULFILLMENT_GROUP` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKCE78560D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CANDIDATE_FG_OFFER`
--

LOCK TABLES `BLC_CANDIDATE_FG_OFFER` WRITE;
/*!40000 ALTER TABLE `BLC_CANDIDATE_FG_OFFER` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CANDIDATE_FG_OFFER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CANDIDATE_ITEM_OFFER`
--

DROP TABLE IF EXISTS `BLC_CANDIDATE_ITEM_OFFER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CANDIDATE_ITEM_OFFER` (
  `CANDIDATE_ITEM_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ITEM_OFFER_ID`),
  KEY `CANDIDATE_ITEMOFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FK9EEE9B2D5F3FAF4` (`OFFER_ID`),
  KEY `FK9EEE9B29AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9EEE9B29AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9EEE9B2D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CANDIDATE_ITEM_OFFER`
--

LOCK TABLES `BLC_CANDIDATE_ITEM_OFFER` WRITE;
/*!40000 ALTER TABLE `BLC_CANDIDATE_ITEM_OFFER` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CANDIDATE_ITEM_OFFER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CANDIDATE_ORDER_OFFER`
--

DROP TABLE IF EXISTS `BLC_CANDIDATE_ORDER_OFFER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CANDIDATE_ORDER_OFFER` (
  `CANDIDATE_ORDER_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ORDER_OFFER_ID`),
  KEY `CANDIDATE_ORDEROFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ORDER_INDEX` (`ORDER_ID`),
  KEY `FK61852289D5F3FAF4` (`OFFER_ID`),
  KEY `FK6185228989FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK6185228989FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FK61852289D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CANDIDATE_ORDER_OFFER`
--

LOCK TABLES `BLC_CANDIDATE_ORDER_OFFER` WRITE;
/*!40000 ALTER TABLE `BLC_CANDIDATE_ORDER_OFFER` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CANDIDATE_ORDER_OFFER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CATALOG`
--

DROP TABLE IF EXISTS `BLC_CATALOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CATALOG` (
  `CATALOG_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CATALOG`
--

LOCK TABLES `BLC_CATALOG` WRITE;
/*!40000 ALTER TABLE `BLC_CATALOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CATALOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CATEGORY`
--

DROP TABLE IF EXISTS `BLC_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CATEGORY` (
  `CATEGORY_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_URL` tinyint(1) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_PARENT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATEGORY_PARENT_INDEX` (`DEFAULT_PARENT_CATEGORY_ID`),
  KEY `CATEGORY_E_ID_INDEX` (`EXTERNAL_ID`),
  KEY `CATEGORY_NAME_INDEX` (`NAME`),
  KEY `CATEGORY_URL_INDEX` (`URL`),
  KEY `CATEGORY_URLKEY_INDEX` (`URL_KEY`),
  KEY `FK55F82D44B177E6` (`DEFAULT_PARENT_CATEGORY_ID`),
  CONSTRAINT `FK55F82D44B177E6` FOREIGN KEY (`DEFAULT_PARENT_CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CATEGORY`
--

LOCK TABLES `BLC_CATEGORY` WRITE;
/*!40000 ALTER TABLE `BLC_CATEGORY` DISABLE KEYS */;
INSERT INTO `BLC_CATEGORY` VALUES (2001,NULL,'2016-12-27 19:55:15',NULL,'Home','layout/home',NULL,NULL,NULL,NULL,'Home',NULL,NULL,'/',NULL,NULL),(2002,NULL,'2016-12-27 19:55:15',NULL,'Hot Sauces',NULL,NULL,NULL,NULL,'<p>Decor</p>','Decor',NULL,NULL,'/hot-sauces',NULL,NULL),(2003,NULL,'2016-12-27 19:55:15',NULL,'Merchandise',NULL,NULL,NULL,NULL,NULL,'Light & Sound',NULL,NULL,'/merchandise',NULL,NULL),(2004,NULL,'2016-12-27 19:55:15',NULL,'Clearance',NULL,NULL,NULL,NULL,NULL,'Bride & Groom',NULL,NULL,'/clearance',NULL,NULL),(2007,NULL,'2016-12-27 19:55:15','Y','Mens',NULL,NULL,NULL,NULL,NULL,'Mens',NULL,NULL,'/mens',NULL,NULL),(2008,NULL,'2016-12-27 19:55:15','Y','Womens',NULL,NULL,NULL,NULL,NULL,'Womens',NULL,NULL,'/womens',NULL,NULL),(2018,NULL,'2017-01-04 15:29:09','Y',NULL,NULL,NULL,NULL,NULL,'Decoration','Decoration',0,NULL,'/decoration',NULL,NULL),(2068,NULL,'2017-01-08 06:00:51','Y',NULL,NULL,NULL,NULL,NULL,'Stage','Stage',0,NULL,'/stage',NULL,NULL),(2069,NULL,'2017-01-08 06:51:50','Y',NULL,NULL,NULL,NULL,NULL,'Seating Zone','Seating Zone',0,NULL,'/seating-zone',NULL,NULL),(2070,NULL,'2017-01-08 06:52:46','N',NULL,NULL,NULL,NULL,NULL,NULL,'Dining',0,NULL,'/dining',NULL,NULL),(2071,NULL,'2017-01-08 06:53:43','N',NULL,NULL,NULL,NULL,NULL,NULL,'Pandal',0,NULL,'/pandal',NULL,NULL),(2072,NULL,'2017-01-08 06:54:36','N',NULL,NULL,NULL,NULL,NULL,NULL,'Carpet',0,NULL,'/carpet',NULL,NULL),(2073,NULL,'2017-01-08 06:55:53','N',NULL,NULL,NULL,NULL,NULL,NULL,'Phere Chawari',0,NULL,'/phere-chawari',NULL,NULL),(2074,NULL,'2017-01-08 06:59:29','N',NULL,NULL,NULL,NULL,NULL,NULL,'Dance Light',0,NULL,'/sangeet-light',NULL,NULL),(2075,NULL,'2017-01-08 07:02:21','N',NULL,NULL,NULL,NULL,NULL,NULL,'DJ Sound',0,NULL,'/sangeet-sound-dj',NULL,NULL),(2076,NULL,'2017-01-08 07:03:01','N',NULL,NULL,NULL,NULL,NULL,NULL,'Ground Light',0,NULL,'/reception-light',NULL,NULL),(2077,NULL,'2017-01-08 07:04:18','N',NULL,NULL,NULL,NULL,NULL,NULL,'Generator',0,NULL,'/generator',NULL,NULL),(2078,NULL,'2017-01-08 07:18:20','N',NULL,NULL,NULL,NULL,NULL,NULL,'Services',0,NULL,'/services',NULL,NULL),(2118,NULL,'2017-01-08 07:39:46','N',NULL,NULL,NULL,NULL,NULL,NULL,'Doli / Palki',0,NULL,'/doli--palki',NULL,NULL),(2119,NULL,'2017-01-08 07:40:33','Y',NULL,NULL,NULL,NULL,NULL,NULL,'Ghodi',0,NULL,'/ghori',NULL,NULL),(2120,NULL,'2017-01-08 07:41:11','N',NULL,NULL,NULL,NULL,NULL,NULL,'Var Mala',0,NULL,'/var-mala',NULL,NULL),(2121,NULL,'2017-01-08 07:41:46','N',NULL,NULL,NULL,NULL,NULL,NULL,'Anchor',0,NULL,'/anchor',NULL,NULL),(2122,NULL,'2017-01-08 07:42:26','N',NULL,NULL,NULL,NULL,NULL,NULL,'Balloon',0,NULL,'/balloon',NULL,NULL),(2123,NULL,'2017-01-08 07:43:15','N',NULL,NULL,NULL,NULL,NULL,NULL,'Fire Works',0,NULL,'/fire-works',NULL,NULL),(2124,NULL,'2017-01-08 07:43:59','N',NULL,NULL,NULL,NULL,NULL,NULL,'Sweet Box',0,NULL,'/sweet-box',NULL,NULL),(2125,NULL,'2017-01-08 07:44:35','N',NULL,NULL,NULL,NULL,NULL,NULL,'Valet Parking',0,NULL,'/valet-parking',NULL,NULL),(2126,NULL,'2017-01-08 07:45:20','N',NULL,NULL,NULL,NULL,NULL,NULL,'Photo Video',0,NULL,'/photo-video',NULL,NULL),(2127,NULL,'2017-01-08 07:45:56','N',NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen',0,NULL,'/led-screen',NULL,NULL),(2168,NULL,'2017-01-14 12:01:32','N',NULL,NULL,NULL,NULL,NULL,'Ghodi','Ghodi',0,NULL,'/ghori',NULL,NULL),(2218,NULL,'2017-01-15 09:41:36','N',NULL,NULL,NULL,NULL,NULL,NULL,'Alaav & Gas Heater',0,NULL,'/alaav',NULL,NULL),(2219,NULL,'2017-01-15 09:45:20','Y',NULL,NULL,NULL,NULL,NULL,NULL,'Gas Heater',0,NULL,'/gas-heater',NULL,NULL),(2220,NULL,'2017-01-15 09:48:53','N',NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner',0,NULL,'/selfie-corner',NULL,NULL),(2268,NULL,'2017-01-25 16:47:41','N',NULL,NULL,NULL,NULL,NULL,NULL,'Seating Zone',0,NULL,'/seating-zone',NULL,NULL),(2269,NULL,'2017-01-25 16:47:41','Y',NULL,NULL,NULL,NULL,NULL,NULL,'Seating Zone',0,NULL,'/seating-zone',NULL,NULL),(2270,NULL,'2017-01-25 16:47:41','Y',NULL,NULL,NULL,NULL,NULL,NULL,'Seating Zone',0,NULL,'/seating-zone',NULL,NULL),(2318,NULL,'2017-01-26 13:53:02','N',NULL,NULL,NULL,NULL,NULL,'Special Entry','Special Entry',0,NULL,'/special-entry',NULL,NULL),(2368,NULL,'2017-02-08 06:07:09','N',NULL,NULL,NULL,NULL,NULL,'Band Bajaa','Band Bajaa',0,NULL,'/band-bajaa',NULL,NULL),(2418,NULL,'2017-02-25 20:09:23','Y',NULL,NULL,NULL,NULL,NULL,'ReddishRoyal Baggi. Gives<p> feel of Royal wedding of Bride &amp; Groom</p><br>','Baggi Raja-Rani',0,NULL,'/baggi-raja-rani',NULL,NULL),(2419,NULL,'2017-02-25 20:39:39','N',NULL,NULL,NULL,NULL,NULL,'Cooler &amp; Mist Fan','Cooler & Mist Fan',0,NULL,'/cooler--mist-fan',NULL,NULL);
/*!40000 ALTER TABLE `BLC_CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CATEGORY_ATTRIBUTE`
--

DROP TABLE IF EXISTS `BLC_CATEGORY_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CATEGORY_ATTRIBUTE` (
  `CATEGORY_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_ATTRIBUTE_ID`),
  KEY `CATEGORYATTRIBUTE_INDEX` (`CATEGORY_ID`),
  KEY `CATEGORYATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `FK4E441D4115D1A13D` (`CATEGORY_ID`),
  CONSTRAINT `FK4E441D4115D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CATEGORY_ATTRIBUTE`
--

LOCK TABLES `BLC_CATEGORY_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `BLC_CATEGORY_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CATEGORY_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CATEGORY_MEDIA_MAP`
--

DROP TABLE IF EXISTS `BLC_CATEGORY_MEDIA_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CATEGORY_MEDIA_MAP` (
  `CATEGORY_MEDIA_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_CATEGORY_CATEGORY_ID` bigint(20) NOT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_MEDIA_ID`),
  KEY `FKCD24B106D786CEA2` (`BLC_CATEGORY_CATEGORY_ID`),
  KEY `FKCD24B1066E4720E0` (`MEDIA_ID`),
  CONSTRAINT `FKCD24B1066E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `BLC_MEDIA` (`MEDIA_ID`),
  CONSTRAINT `FKCD24B106D786CEA2` FOREIGN KEY (`BLC_CATEGORY_CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CATEGORY_MEDIA_MAP`
--

LOCK TABLES `BLC_CATEGORY_MEDIA_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_CATEGORY_MEDIA_MAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CATEGORY_MEDIA_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CATEGORY_PRODUCT_XREF`
--

DROP TABLE IF EXISTS `BLC_CATEGORY_PRODUCT_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CATEGORY_PRODUCT_XREF` (
  `CATEGORY_PRODUCT_ID` bigint(20) NOT NULL,
  `DEFAULT_REFERENCE` tinyint(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_PRODUCT_ID`),
  KEY `FK635EB1A615D1A13D` (`CATEGORY_ID`),
  KEY `FK635EB1A65F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK635EB1A615D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK635EB1A65F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CATEGORY_PRODUCT_XREF`
--

LOCK TABLES `BLC_CATEGORY_PRODUCT_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_CATEGORY_PRODUCT_XREF` DISABLE KEYS */;
INSERT INTO `BLC_CATEGORY_PRODUCT_XREF` VALUES (150,1,1.000000,2070,710),(151,1,3.000000,2070,711),(157,1,1.000000,2071,717),(158,1,2.000000,2071,718),(159,1,3.000000,2071,719),(160,1,6.000000,2071,720),(161,1,1.000000,2072,721),(200,1,1.000000,2074,760),(201,1,2.000000,2074,761),(202,1,3.000000,2074,762),(203,1,4.000000,2074,763),(204,1,1.000000,2075,764),(205,1,2.000000,2075,765),(206,1,3.000000,2075,766),(207,1,1.000000,2077,767),(208,1,2.000000,2077,768),(209,1,4.000000,2076,769),(210,1,5.000000,2076,770),(211,1,6.000000,2076,771),(212,1,7.000000,2076,772),(213,1,8.000000,2076,773),(214,1,1.000000,2076,774),(215,1,2.000000,2076,775),(216,1,3.000000,2076,776),(217,1,NULL,2118,777),(218,1,NULL,2118,778),(219,1,NULL,2118,779),(223,1,NULL,2120,783),(224,1,NULL,2120,784),(225,1,NULL,2120,785),(226,1,1.000000,2121,786),(250,1,2.000000,2121,810),(251,1,4.000000,2121,811),(252,1,3.000000,2121,812),(253,1,NULL,2125,813),(254,1,NULL,2125,814),(255,1,NULL,2125,815),(256,1,1.000000,2127,816),(257,1,2.000000,2127,817),(351,1,2.000000,2070,911),(352,1,4.000000,2071,912),(353,1,5.000000,2071,913),(354,1,2.000000,2072,914),(355,1,3.000000,2072,915),(356,1,7.000000,2075,916),(357,1,8.000000,2075,917),(358,1,4.000000,2075,918),(402,NULL,4.000000,2001,720),(404,1,5.000000,2121,960),(405,1,6.000000,2121,961),(550,1,1.000000,2073,1010),(551,1,2.000000,2073,1011),(552,1,3.000000,2073,1012),(553,1,4.000000,2073,610),(554,1,5.000000,2073,660),(555,1,6.000000,2073,661),(556,1,1.000000,2168,780),(557,1,2.000000,2168,781),(558,1,3.000000,2168,782),(559,1,1.000000,2218,860),(561,1,1.000000,2220,862),(562,1,2.000000,2220,722),(650,1,2.000000,2268,715),(651,1,3.000000,2268,716),(652,1,1.000000,2268,714),(653,1,4.000000,2268,712),(700,1,5.000000,2268,713),(701,1,6.000000,2268,910),(702,1,5.000000,2075,1110),(703,1,6.000000,2075,1111),(704,1,NULL,2077,1112),(705,1,NULL,2077,1113),(707,1,2.000000,2218,861),(709,1,1.000000,2318,818),(750,NULL,1.000000,2001,1010),(751,NULL,3.000000,2001,781),(800,NULL,2.000000,2318,779),(801,1,NULL,2368,1160),(802,1,NULL,2368,1161),(803,1,NULL,2368,1162),(806,1,NULL,2368,1165),(807,1,NULL,2368,1166),(808,1,NULL,2368,1167),(850,NULL,2.000000,2001,760),(851,1,NULL,2318,1210),(852,1,NULL,2318,1211),(853,1,NULL,2318,1212),(854,1,NULL,2070,1213),(855,1,NULL,2419,1214),(856,1,NULL,2419,1215),(900,1,NULL,2220,1260),(901,1,NULL,2318,1261);
/*!40000 ALTER TABLE `BLC_CATEGORY_PRODUCT_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CATEGORY_XREF`
--

DROP TABLE IF EXISTS `BLC_CATEGORY_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CATEGORY_XREF` (
  `CATEGORY_XREF_ID` bigint(20) NOT NULL,
  `DEFAULT_REFERENCE` tinyint(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `SUB_CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_XREF_ID`),
  KEY `FKE889733615D1A13D` (`CATEGORY_ID`),
  KEY `FKE8897336D6D45DBE` (`SUB_CATEGORY_ID`),
  CONSTRAINT `FKE889733615D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FKE8897336D6D45DBE` FOREIGN KEY (`SUB_CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CATEGORY_XREF`
--

LOCK TABLES `BLC_CATEGORY_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_CATEGORY_XREF` DISABLE KEYS */;
INSERT INTO `BLC_CATEGORY_XREF` VALUES (21,1,NULL,2002,2070),(22,1,NULL,2002,2071),(23,1,NULL,2002,2072),(24,1,NULL,2002,2073),(25,1,NULL,2003,2074),(26,1,NULL,2003,2075),(27,1,NULL,2003,2076),(28,1,NULL,2003,2077),(69,1,NULL,2004,2118),(71,1,NULL,2004,2120),(72,1,NULL,2078,2121),(73,1,NULL,2078,2122),(74,1,NULL,2078,2123),(75,1,NULL,2078,2124),(76,1,NULL,2078,2125),(77,1,NULL,2078,2126),(78,1,NULL,2078,2127),(119,1,NULL,2004,2119),(169,1,NULL,2004,2168),(219,1,NULL,2078,2218),(221,1,NULL,2002,2220),(272,NULL,0.000000,2002,2268),(319,1,NULL,2004,2318),(369,1,NULL,2004,2368),(419,1,NULL,2078,2419);
/*!40000 ALTER TABLE `BLC_CATEGORY_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CAT_SEARCH_FACET_EXCL_XREF`
--

DROP TABLE IF EXISTS `BLC_CAT_SEARCH_FACET_EXCL_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CAT_SEARCH_FACET_EXCL_XREF` (
  `CAT_EXCL_SEARCH_FACET_ID` bigint(20) NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CAT_EXCL_SEARCH_FACET_ID`),
  KEY `FK8361EF4E15D1A13D` (`CATEGORY_ID`),
  KEY `FK8361EF4EB96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK8361EF4E15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK8361EF4EB96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `BLC_SEARCH_FACET` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CAT_SEARCH_FACET_EXCL_XREF`
--

LOCK TABLES `BLC_CAT_SEARCH_FACET_EXCL_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_CAT_SEARCH_FACET_EXCL_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CAT_SEARCH_FACET_EXCL_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CAT_SEARCH_FACET_XREF`
--

DROP TABLE IF EXISTS `BLC_CAT_SEARCH_FACET_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CAT_SEARCH_FACET_XREF` (
  `CATEGORY_SEARCH_FACET_ID` bigint(20) NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_SEARCH_FACET_ID`),
  KEY `FK32210EEB15D1A13D` (`CATEGORY_ID`),
  KEY `FK32210EEBB96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK32210EEB15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK32210EEBB96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `BLC_SEARCH_FACET` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CAT_SEARCH_FACET_XREF`
--

LOCK TABLES `BLC_CAT_SEARCH_FACET_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_CAT_SEARCH_FACET_XREF` DISABLE KEYS */;
INSERT INTO `BLC_CAT_SEARCH_FACET_XREF` VALUES (1,1.00,2002,1),(2,2.00,2002,2),(4,1.00,2003,4),(5,3.00,2002,3),(6,3.00,2003,3),(7,3.00,2004,3);
/*!40000 ALTER TABLE `BLC_CAT_SEARCH_FACET_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CAT_SITE_MAP_GEN_CFG`
--

DROP TABLE IF EXISTS `BLC_CAT_SITE_MAP_GEN_CFG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CAT_SITE_MAP_GEN_CFG` (
  `ENDING_DEPTH` int(11) NOT NULL,
  `STARTING_DEPTH` int(11) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `ROOT_CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1BA4E695C5F3D60` (`ROOT_CATEGORY_ID`),
  KEY `FK1BA4E69BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK1BA4E695C5F3D60` FOREIGN KEY (`ROOT_CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK1BA4E69BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `BLC_SITE_MAP_GEN_CFG` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CAT_SITE_MAP_GEN_CFG`
--

LOCK TABLES `BLC_CAT_SITE_MAP_GEN_CFG` WRITE;
/*!40000 ALTER TABLE `BLC_CAT_SITE_MAP_GEN_CFG` DISABLE KEYS */;
INSERT INTO `BLC_CAT_SITE_MAP_GEN_CFG` VALUES (0,0,-7,2004),(0,0,-6,2003),(0,0,-5,2002),(0,0,-4,2001);
/*!40000 ALTER TABLE `BLC_CAT_SITE_MAP_GEN_CFG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CHALLENGE_QUESTION`
--

DROP TABLE IF EXISTS `BLC_CHALLENGE_QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CHALLENGE_QUESTION` (
  `QUESTION_ID` bigint(20) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CHALLENGE_QUESTION`
--

LOCK TABLES `BLC_CHALLENGE_QUESTION` WRITE;
/*!40000 ALTER TABLE `BLC_CHALLENGE_QUESTION` DISABLE KEYS */;
INSERT INTO `BLC_CHALLENGE_QUESTION` VALUES (1,'What is your favorite sports team?'),(2,'What was your high school name?'),(3,'What was your childhood nickname?'),(4,'What street did you live on in third grade?'),(5,'What is your oldest sibling\'s middle name?'),(6,'What school did you attend for sixth grade?'),(7,'Where does your nearest sibling live?'),(8,'What is your youngest brother\'s birthday?'),(9,'In what city or town was your first job?');
/*!40000 ALTER TABLE `BLC_CHALLENGE_QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CMS_MENU`
--

DROP TABLE IF EXISTS `BLC_CMS_MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CMS_MENU` (
  `MENU_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CMS_MENU`
--

LOCK TABLES `BLC_CMS_MENU` WRITE;
/*!40000 ALTER TABLE `BLC_CMS_MENU` DISABLE KEYS */;
INSERT INTO `BLC_CMS_MENU` VALUES (1,'Header Nav');
/*!40000 ALTER TABLE `BLC_CMS_MENU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CMS_MENU_ITEM`
--

DROP TABLE IF EXISTS `BLC_CMS_MENU_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CMS_MENU_ITEM` (
  `MENU_ITEM_ID` bigint(20) NOT NULL,
  `ACTION_URL` varchar(255) DEFAULT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CUSTOM_HTML` longtext,
  `LABEL` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `MENU_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  `LINKED_MENU_ID` bigint(20) DEFAULT NULL,
  `LINKED_PAGE_ID` bigint(20) DEFAULT NULL,
  `PARENT_MENU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`MENU_ITEM_ID`),
  KEY `FKFC9BDD76E4720E0` (`MEDIA_ID`),
  KEY `FKFC9BDD7A8D0E60C` (`LINKED_MENU_ID`),
  KEY `FKFC9BDD77BB4A41` (`LINKED_PAGE_ID`),
  KEY `FKFC9BDD73876279D` (`PARENT_MENU_ID`),
  CONSTRAINT `FKFC9BDD73876279D` FOREIGN KEY (`PARENT_MENU_ID`) REFERENCES `BLC_CMS_MENU` (`MENU_ID`),
  CONSTRAINT `FKFC9BDD76E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `BLC_MEDIA` (`MEDIA_ID`),
  CONSTRAINT `FKFC9BDD77BB4A41` FOREIGN KEY (`LINKED_PAGE_ID`) REFERENCES `BLC_PAGE` (`PAGE_ID`),
  CONSTRAINT `FKFC9BDD7A8D0E60C` FOREIGN KEY (`LINKED_MENU_ID`) REFERENCES `BLC_CMS_MENU` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CMS_MENU_ITEM`
--

LOCK TABLES `BLC_CMS_MENU_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_CMS_MENU_ITEM` DISABLE KEYS */;
INSERT INTO `BLC_CMS_MENU_ITEM` VALUES (1,'/',NULL,NULL,'Home',1.000000,'CATEGORY',NULL,NULL,NULL,1),(2,'/hot-sauces',NULL,NULL,'Decor',2.000000,'CATEGORY',NULL,NULL,NULL,1),(3,'/merchandise',NULL,NULL,'Merchandise',3.000000,'CATEGORY',NULL,NULL,NULL,1),(4,'/clearance',NULL,NULL,'Clearance',4.000000,'CATEGORY',NULL,NULL,NULL,1),(6,NULL,NULL,NULL,'FAQ',6.000000,'PAGE',NULL,NULL,2,1),(66,'/services',NULL,NULL,'Services',5.000000,'CATEGORY',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `BLC_CMS_MENU_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CODE_TYPES`
--

DROP TABLE IF EXISTS `BLC_CODE_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CODE_TYPES` (
  `CODE_ID` bigint(20) NOT NULL,
  `CODE_TYPE` varchar(255) NOT NULL,
  `CODE_DESC` varchar(255) DEFAULT NULL,
  `CODE_KEY` varchar(255) NOT NULL,
  `MODIFIABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CODE_TYPES`
--

LOCK TABLES `BLC_CODE_TYPES` WRITE;
/*!40000 ALTER TABLE `BLC_CODE_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CODE_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_COUNTRY`
--

DROP TABLE IF EXISTS `BLC_COUNTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_COUNTRY` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_COUNTRY`
--

LOCK TABLES `BLC_COUNTRY` WRITE;
/*!40000 ALTER TABLE `BLC_COUNTRY` DISABLE KEYS */;
INSERT INTO `BLC_COUNTRY` VALUES ('CA',NULL,NULL,NULL,NULL,'India'),('ES',NULL,NULL,NULL,NULL,'Spain'),('FR',NULL,NULL,NULL,NULL,'France'),('GB',NULL,NULL,NULL,NULL,'United Kingdom'),('IN',NULL,NULL,NULL,NULL,'India'),('MX',NULL,NULL,NULL,NULL,'Mexico'),('US',NULL,NULL,NULL,NULL,'United States');
/*!40000 ALTER TABLE `BLC_COUNTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_COUNTRY_SUB`
--

DROP TABLE IF EXISTS `BLC_COUNTRY_SUB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_COUNTRY_SUB` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `ALT_ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY_SUB_CAT` bigint(20) DEFAULT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `COUNTRY_SUB_ALT_ABRV_IDX` (`ALT_ABBREVIATION`),
  KEY `COUNTRY_SUB_NAME_IDX` (`NAME`),
  KEY `FKA804FBD172AAB3C0` (`COUNTRY_SUB_CAT`),
  KEY `FKA804FBD1A46E16CF` (`COUNTRY`),
  CONSTRAINT `FKA804FBD172AAB3C0` FOREIGN KEY (`COUNTRY_SUB_CAT`) REFERENCES `BLC_COUNTRY_SUB_CAT` (`COUNTRY_SUB_CAT_ID`),
  CONSTRAINT `FKA804FBD1A46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `BLC_COUNTRY` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_COUNTRY_SUB`
--

LOCK TABLES `BLC_COUNTRY_SUB` WRITE;
/*!40000 ALTER TABLE `BLC_COUNTRY_SUB` DISABLE KEYS */;
INSERT INTO `BLC_COUNTRY_SUB` VALUES ('CA-AB','AB',NULL,NULL,NULL,NULL,'ALBERTA',63,'CA'),('CA-BC','BC',NULL,NULL,NULL,NULL,'BRITISH COLUMBIA',63,'CA'),('CA-MP','MP',NULL,NULL,NULL,NULL,'Madhya Pradesh',63,'CA'),('CA-NB','NB',NULL,NULL,NULL,NULL,'NEW BRUNSWICK',63,'CA'),('CA-NL','NL',NULL,NULL,NULL,NULL,'NEWFOUNDLAND',63,'CA'),('CA-NS','NS',NULL,NULL,NULL,NULL,'NOVA SCOTIA',63,'CA'),('CA-NT','NT',NULL,NULL,NULL,NULL,'NORTHWEST TERRITORIES',81,'CA'),('CA-NU','NU',NULL,NULL,NULL,NULL,'NUNAVUT',81,'CA'),('CA-ON','ON',NULL,NULL,NULL,NULL,'ONTARIO',63,'CA'),('CA-PE','PE',NULL,NULL,NULL,NULL,'PRINCE EDWARD ISLAND',63,'CA'),('CA-QC','QC',NULL,NULL,NULL,NULL,'QUEBEC',63,'CA'),('CA-SK','SK',NULL,NULL,NULL,NULL,'SASKATCHEWAN',63,'CA'),('CA-YT','YT',NULL,NULL,NULL,NULL,'YUKON',81,'CA'),('IN-MP','MP',NULL,NULL,NULL,NULL,'Madhya PRadesh',79,'IN'),('US-AK','AK',NULL,NULL,NULL,NULL,'ALASKA',79,'US'),('US-AL','AL',NULL,NULL,NULL,NULL,'ALABAMA',79,'US'),('US-AR','AR',NULL,NULL,NULL,NULL,'ARKANSAS',79,'US'),('US-AS','AS',NULL,NULL,NULL,NULL,'AMERICAN SAMOA',57,'US'),('US-AZ','AZ',NULL,NULL,NULL,NULL,'ARIZONA',79,'US'),('US-CA','CA',NULL,NULL,NULL,NULL,'CALIFORNIA',79,'US'),('US-CO','CO',NULL,NULL,NULL,NULL,'COLORADO',79,'US'),('US-CT','CT',NULL,NULL,NULL,NULL,'CONNECTICUT',79,'US'),('US-DC','DC',NULL,NULL,NULL,NULL,'DISTRICT OF COLUMBIA',31,'US'),('US-DE','DE',NULL,NULL,NULL,NULL,'DELAWARE',79,'US'),('US-FL','FL',NULL,NULL,NULL,NULL,'FLORIDA',79,'US'),('US-GA','GA',NULL,NULL,NULL,NULL,'GEORGIA',79,'US'),('US-GU','GU',NULL,NULL,NULL,NULL,'GUAM',57,'US'),('US-HI','HI',NULL,NULL,NULL,NULL,'HAWAII',79,'US'),('US-IA','IA',NULL,NULL,NULL,NULL,'IOWA',79,'US'),('US-ID','ID',NULL,NULL,NULL,NULL,'IDAHO',79,'US'),('US-IL','IL',NULL,NULL,NULL,NULL,'ILLINOIS',79,'US'),('US-IN','IN',NULL,NULL,NULL,NULL,'INDIANA',79,'US'),('US-KS','KS',NULL,NULL,NULL,NULL,'KANSAS',79,'US'),('US-KY','KY',NULL,NULL,NULL,NULL,'KENTUCKY',79,'US'),('US-LA','LA',NULL,NULL,NULL,NULL,'LOUISIANA',79,'US'),('US-MA','MA',NULL,NULL,NULL,NULL,'MASSACHUSETTS',79,'US'),('US-MD','MD',NULL,NULL,NULL,NULL,'MARYLAND',79,'US'),('US-ME','ME',NULL,NULL,NULL,NULL,'MAINE',79,'US'),('US-MI','MI',NULL,NULL,NULL,NULL,'MICHIGAN',79,'US'),('US-MN','MN',NULL,NULL,NULL,NULL,'MINNESOTA',79,'US'),('US-MO','MO',NULL,NULL,NULL,NULL,'MISSOURI',79,'US'),('US-MP','MP',NULL,NULL,NULL,NULL,'NORTHERN MARIANA ISLANDS',57,'US'),('US-MS','MS',NULL,NULL,NULL,NULL,'MISSISSIPPI',79,'US'),('US-MT','MT',NULL,NULL,NULL,NULL,'MONTANA',79,'US'),('US-NC','NC',NULL,NULL,NULL,NULL,'NORTH CAROLINA',79,'US'),('US-ND','ND',NULL,NULL,NULL,NULL,'NORTH DAKOTA',79,'US'),('US-NE','NE',NULL,NULL,NULL,NULL,'NEBRASKA',79,'US'),('US-NH','NH',NULL,NULL,NULL,NULL,'NEW HAMPSHIRE',79,'US'),('US-NJ','NJ',NULL,NULL,NULL,NULL,'NEW JERSEY',79,'US'),('US-NM','NM',NULL,NULL,NULL,NULL,'NEW MEXICO',79,'US'),('US-NV','NV',NULL,NULL,NULL,NULL,'NEVADA',79,'US'),('US-NY','NY',NULL,NULL,NULL,NULL,'NEW YORK',79,'US'),('US-OH','OH',NULL,NULL,NULL,NULL,'OHIO',79,'US'),('US-OK','OK',NULL,NULL,NULL,NULL,'OKLAHOMA',79,'US'),('US-OR','OR',NULL,NULL,NULL,NULL,'OREGON',79,'US'),('US-PA','PA',NULL,NULL,NULL,NULL,'PENNSYLVANIA',79,'US'),('US-PR','PR',NULL,NULL,NULL,NULL,'PUERTO RICO',57,'US'),('US-RI','RI',NULL,NULL,NULL,NULL,'RHODE ISLAND',79,'US'),('US-SC','SC',NULL,NULL,NULL,NULL,'SOUTH CAROLINA',79,'US'),('US-SD','SD',NULL,NULL,NULL,NULL,'SOUTH DAKOTA',79,'US'),('US-TN','TN',NULL,NULL,NULL,NULL,'TENNESSEE',79,'US'),('US-TX','TX',NULL,NULL,NULL,NULL,'TEXAS',79,'US'),('US-UM','UM',NULL,NULL,NULL,NULL,'UNITED STATES MINOR OUTLYING ISLANDS',57,'US'),('US-UT','UT',NULL,NULL,NULL,NULL,'UTAH',79,'US'),('US-VA','VA',NULL,NULL,NULL,NULL,'VIRGINIA',79,'US'),('US-VI','VI',NULL,NULL,NULL,NULL,'VIRGIN ISLANDS',57,'US'),('US-VT','VT',NULL,NULL,NULL,NULL,'VERMONT',79,'US'),('US-WA','WA',NULL,NULL,NULL,NULL,'WASHINGTON',79,'US'),('US-WI','WI',NULL,NULL,NULL,NULL,'WISCONSIN',79,'US'),('US-WV','WV',NULL,NULL,NULL,NULL,'WEST VIRGINIA',79,'US'),('US-WY','WY',NULL,NULL,NULL,NULL,'WYOMING',79,'US');
/*!40000 ALTER TABLE `BLC_COUNTRY_SUB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_COUNTRY_SUB_CAT`
--

DROP TABLE IF EXISTS `BLC_COUNTRY_SUB_CAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_COUNTRY_SUB_CAT` (
  `COUNTRY_SUB_CAT_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`COUNTRY_SUB_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_COUNTRY_SUB_CAT`
--

LOCK TABLES `BLC_COUNTRY_SUB_CAT` WRITE;
/*!40000 ALTER TABLE `BLC_COUNTRY_SUB_CAT` DISABLE KEYS */;
INSERT INTO `BLC_COUNTRY_SUB_CAT` VALUES (1,NULL,NULL,NULL,NULL,'Administration'),(2,NULL,NULL,NULL,NULL,'Administrative Atoll'),(3,NULL,NULL,NULL,NULL,'Administrative Region'),(4,NULL,NULL,NULL,NULL,'Area'),(5,NULL,NULL,NULL,NULL,'Autonomous City'),(6,NULL,NULL,NULL,NULL,'Autonomous Community'),(7,NULL,NULL,NULL,NULL,'Autonomous District'),(8,NULL,NULL,NULL,NULL,'Autonomous Municipality'),(9,NULL,NULL,NULL,NULL,'Autonomous Province'),(10,NULL,NULL,NULL,NULL,'Autonomous Region'),(11,NULL,NULL,NULL,NULL,'Autonomous Republic'),(12,NULL,NULL,NULL,NULL,'Autonomous Sector'),(13,NULL,NULL,NULL,NULL,'Autonomous Territorial Unit'),(14,NULL,NULL,NULL,NULL,'Borough'),(15,NULL,NULL,NULL,NULL,'Canton'),(16,NULL,NULL,NULL,NULL,'Capital'),(17,NULL,NULL,NULL,NULL,'Capital City'),(18,NULL,NULL,NULL,NULL,'Capital District'),(19,NULL,NULL,NULL,NULL,'Capital Metropolitan City'),(20,NULL,NULL,NULL,NULL,'City'),(21,NULL,NULL,NULL,NULL,'City of County Right'),(22,NULL,NULL,NULL,NULL,'Commune'),(23,NULL,NULL,NULL,NULL,'Constitutional Province'),(24,NULL,NULL,NULL,NULL,'Corporation'),(25,NULL,NULL,NULL,NULL,'Council Area'),(26,NULL,NULL,NULL,NULL,'Country'),(27,NULL,NULL,NULL,NULL,'County'),(28,NULL,NULL,NULL,NULL,'Department'),(29,NULL,NULL,NULL,NULL,'Dependency'),(30,NULL,NULL,NULL,NULL,'Development Region'),(31,NULL,NULL,NULL,NULL,'District'),(32,NULL,NULL,NULL,NULL,'District With Special Status'),(33,NULL,NULL,NULL,NULL,'Division'),(34,NULL,NULL,NULL,NULL,'Economic Prefecture'),(35,NULL,NULL,NULL,NULL,'Emirate'),(36,NULL,NULL,NULL,NULL,'Entity'),(37,NULL,NULL,NULL,NULL,'Federal Capital Territory'),(38,NULL,NULL,NULL,NULL,'Federal Dependency'),(39,NULL,NULL,NULL,NULL,'Federal District'),(40,NULL,NULL,NULL,NULL,'Federal Land'),(41,NULL,NULL,NULL,NULL,'Federal Territory'),(42,NULL,NULL,NULL,NULL,'Federated States'),(43,NULL,NULL,NULL,NULL,'Geographical Entity'),(44,NULL,NULL,NULL,NULL,'Geographical Regions'),(45,NULL,NULL,NULL,NULL,'Governorate'),(46,NULL,NULL,NULL,NULL,'Indigenous Region'),(47,NULL,NULL,NULL,NULL,'Island'),(48,NULL,NULL,NULL,NULL,'Island Council'),(49,NULL,NULL,NULL,NULL,'Local Council'),(50,NULL,NULL,NULL,NULL,'Metropolitan Administration'),(51,NULL,NULL,NULL,NULL,'Metropolitan City'),(52,NULL,NULL,NULL,NULL,'Metropolitan Department'),(53,NULL,NULL,NULL,NULL,'Metropolitan Region'),(54,NULL,NULL,NULL,NULL,'Municipality'),(55,NULL,NULL,NULL,NULL,'Oblast'),(56,NULL,NULL,NULL,NULL,'Outlying Area'),(57,NULL,NULL,NULL,NULL,'Outlying Territory'),(58,NULL,NULL,NULL,NULL,'Overseas Region'),(59,NULL,NULL,NULL,NULL,'Overseas Territorial Collectivity'),(60,NULL,NULL,NULL,NULL,'Parish'),(61,NULL,NULL,NULL,NULL,'Popularate'),(62,NULL,NULL,NULL,NULL,'Prefecture'),(63,NULL,NULL,NULL,NULL,'Province'),(64,NULL,NULL,NULL,NULL,'Quarter'),(65,NULL,NULL,NULL,NULL,'Rayon'),(66,NULL,NULL,NULL,NULL,'Region'),(67,NULL,NULL,NULL,NULL,'Regional Council'),(68,NULL,NULL,NULL,NULL,'Republic'),(69,NULL,NULL,NULL,NULL,'Republican City'),(70,NULL,NULL,NULL,NULL,'Self-governed Part'),(71,NULL,NULL,NULL,NULL,'Special Administrative City'),(72,NULL,NULL,NULL,NULL,'Special Administrative Region'),(73,NULL,NULL,NULL,NULL,'Special City'),(74,NULL,NULL,NULL,NULL,'Special District'),(75,NULL,NULL,NULL,NULL,'Special Island Authority'),(76,NULL,NULL,NULL,NULL,'Special Municipality'),(77,NULL,NULL,NULL,NULL,'Special Region'),(78,NULL,NULL,NULL,NULL,'Special Zone'),(79,NULL,NULL,NULL,NULL,'State'),(80,NULL,NULL,NULL,NULL,'Territorial Unit'),(81,NULL,NULL,NULL,NULL,'Territory'),(82,NULL,NULL,NULL,NULL,'Town Council'),(83,NULL,NULL,NULL,NULL,'Union Territory'),(84,NULL,NULL,NULL,NULL,'Unitary Authority'),(85,NULL,NULL,NULL,NULL,'Urban Community'),(86,NULL,NULL,NULL,NULL,'Zone');
/*!40000 ALTER TABLE `BLC_COUNTRY_SUB_CAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CREDIT_CARD_PAYMENT`
--

DROP TABLE IF EXISTS `BLC_CREDIT_CARD_PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CREDIT_CARD_PAYMENT` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `EXPIRATION_MONTH` int(11) NOT NULL,
  `EXPIRATION_YEAR` int(11) NOT NULL,
  `NAME_ON_CARD` varchar(255) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `CREDITCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CREDIT_CARD_PAYMENT`
--

LOCK TABLES `BLC_CREDIT_CARD_PAYMENT` WRITE;
/*!40000 ALTER TABLE `BLC_CREDIT_CARD_PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CREDIT_CARD_PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CURRENCY`
--

DROP TABLE IF EXISTS `BLC_CURRENCY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CURRENCY` (
  `CURRENCY_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CURRENCY`
--

LOCK TABLES `BLC_CURRENCY` WRITE;
/*!40000 ALTER TABLE `BLC_CURRENCY` DISABLE KEYS */;
INSERT INTO `BLC_CURRENCY` VALUES ('EUR',NULL,NULL,NULL,NULL,0,'EURO Dollar'),('GBP',NULL,NULL,NULL,NULL,0,'GB Pound'),('INR',NULL,NULL,NULL,NULL,1,'Indian Rupees'),('MXN',NULL,NULL,NULL,NULL,0,'Mexican Peso'),('Rs',NULL,NULL,NULL,NULL,0,'Indian Rupees'),('USD',NULL,NULL,NULL,NULL,0,'US Dollar');
/*!40000 ALTER TABLE `BLC_CURRENCY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER` (
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CHALLENGE_ANSWER` varchar(255) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `IS_TAX_EXEMPT` tinyint(1) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PASSWORD_CHANGE_REQUIRED` tinyint(1) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `RECEIVE_EMAIL` tinyint(1) DEFAULT NULL,
  `IS_REGISTERED` tinyint(1) DEFAULT NULL,
  `TAX_EXEMPTION_CODE` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CHALLENGE_QUESTION_ID` bigint(20) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `CUSTOMER_CHALLENGE_INDEX` (`CHALLENGE_QUESTION_ID`),
  KEY `CUSTOMER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `FK7716F0241422B204` (`CHALLENGE_QUESTION_ID`),
  KEY `FK7716F024A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK7716F0241422B204` FOREIGN KEY (`CHALLENGE_QUESTION_ID`) REFERENCES `BLC_CHALLENGE_QUESTION` (`QUESTION_ID`),
  CONSTRAINT `FK7716F024A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `BLC_LOCALE` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER`
--

LOCK TABLES `BLC_CUSTOMER` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER` DISABLE KEYS */;
INSERT INTO `BLC_CUSTOMER` VALUES (100,'N',100,'2016-12-27 20:00:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'100',NULL,NULL),(200,NULL,200,'2016-12-27 20:40:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'200',NULL,NULL),(302,NULL,302,'2016-12-28 13:04:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'302',NULL,NULL),(400,NULL,400,'2016-12-28 14:28:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'400',NULL,NULL),(500,NULL,500,'2016-12-28 17:04:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'500',NULL,NULL),(700,NULL,700,'2016-12-28 17:24:21','2016-12-28 17:31:49',700,NULL,0,'agrawal.sumit17@gmail.com','sumit',0,'agrawal','123456',0,NULL,1,1,NULL,'agrawal.sumit17@gmail.com',NULL,NULL),(800,NULL,800,'2016-12-28 18:32:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'800',NULL,NULL),(900,NULL,900,'2016-12-28 18:35:11',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'900',NULL,NULL),(1000,NULL,1000,'2016-12-28 18:43:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1000',NULL,NULL),(1100,NULL,1100,'2016-12-28 18:48:32',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1100',NULL,NULL),(1200,NULL,1200,'2016-12-28 19:07:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1200',NULL,NULL),(1300,NULL,1300,'2016-12-28 19:30:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1300',NULL,NULL),(1400,NULL,1400,'2016-12-28 19:37:28',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1400',NULL,NULL),(1701,NULL,1701,'2016-12-29 11:59:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1701',NULL,NULL),(1800,NULL,1800,'2016-12-29 12:26:05',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'1800',NULL,NULL),(2000,NULL,2000,'2016-12-29 18:14:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2000',NULL,NULL),(2100,NULL,2100,'2016-12-29 18:18:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2100',NULL,NULL),(2200,NULL,2200,'2016-12-29 18:33:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2200',NULL,NULL),(2300,NULL,2300,'2016-12-29 19:13:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2300',NULL,NULL),(2400,NULL,2400,'2016-12-29 19:37:29',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2400',NULL,NULL),(2500,NULL,2500,'2016-12-29 20:13:19',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2500',NULL,NULL),(2601,NULL,2601,'2016-12-30 13:59:57',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2601',NULL,NULL),(2700,NULL,2700,'2016-12-30 14:07:49',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2700',NULL,NULL),(2800,NULL,2800,'2016-12-30 14:09:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2800',NULL,NULL),(2900,NULL,2900,'2016-12-30 14:19:08',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'2900',NULL,NULL),(3000,NULL,3000,'2016-12-30 14:35:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3000',NULL,NULL),(3100,NULL,3100,'2016-12-30 14:50:52',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3100',NULL,NULL),(3500,NULL,3500,'2016-12-30 16:50:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3500',NULL,NULL),(3800,NULL,3800,'2016-12-30 17:43:02',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3800',NULL,NULL),(4000,NULL,4000,'2016-12-30 18:14:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4000',NULL,NULL),(4100,NULL,4100,'2016-12-30 18:20:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4100',NULL,NULL),(4200,NULL,4200,'2016-12-30 18:33:45',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4200',NULL,NULL),(4300,NULL,4300,'2016-12-30 18:49:08',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4300',NULL,NULL),(4900,NULL,4900,'2016-12-30 19:58:35',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'4900',NULL,NULL),(5000,NULL,5000,'2016-12-30 20:04:13',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5000',NULL,NULL),(5100,NULL,5100,'2017-01-02 12:10:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5100',NULL,NULL),(5200,NULL,5200,'2017-01-02 12:40:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5200',NULL,NULL),(5300,NULL,5300,'2017-01-02 12:58:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5300',NULL,NULL),(5400,NULL,5400,'2017-01-02 13:05:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5400',NULL,NULL),(5500,NULL,5500,'2017-01-02 13:08:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5500',NULL,NULL),(5600,NULL,5600,'2017-01-02 13:20:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5600',NULL,NULL),(5700,NULL,5700,'2017-01-02 13:24:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5700',NULL,NULL),(5800,NULL,5800,'2017-01-02 13:26:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5800',NULL,NULL),(5900,NULL,5900,'2017-01-02 13:38:41',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'5900',NULL,NULL),(6000,NULL,6000,'2017-01-02 13:46:55',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6000',NULL,NULL),(6100,NULL,6100,'2017-01-02 13:53:55',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6100',NULL,NULL),(6200,NULL,6200,'2017-01-02 14:04:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6200',NULL,NULL),(6300,NULL,6300,'2017-01-02 14:17:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6300',NULL,NULL),(6400,NULL,6400,'2017-01-03 18:17:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6400',NULL,NULL),(6500,NULL,6500,'2017-01-03 18:53:35',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6500',NULL,NULL),(6600,NULL,6600,'2017-01-03 19:02:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6600',NULL,NULL),(6700,NULL,6700,'2017-01-03 19:11:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6700',NULL,NULL),(6800,NULL,6800,'2017-01-03 19:18:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6800',NULL,NULL),(6900,NULL,6900,'2017-01-03 19:30:31',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'6900',NULL,NULL),(7000,NULL,7000,'2017-01-03 20:15:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7000',NULL,NULL),(7100,NULL,7100,'2017-01-03 20:25:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7100',NULL,NULL),(7201,NULL,7201,'2017-01-04 12:52:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7201',NULL,NULL),(7300,NULL,7300,'2017-01-04 13:24:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7300',NULL,NULL),(7400,NULL,7400,'2017-01-04 13:30:18',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7400',NULL,NULL),(7500,NULL,7500,'2017-01-04 15:43:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7500',NULL,NULL),(7600,NULL,7600,'2017-01-04 18:36:05',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7600',NULL,NULL),(7800,NULL,7800,'2017-01-04 18:58:18',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'7800',NULL,NULL),(8100,NULL,8100,'2017-01-04 19:12:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8100',NULL,NULL),(8200,NULL,8200,'2017-01-04 19:28:53',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8200',NULL,NULL),(8300,NULL,8300,'2017-01-04 19:40:22',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8300',NULL,NULL),(8400,NULL,8400,'2017-01-04 19:47:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8400',NULL,NULL),(8500,NULL,8500,'2017-01-04 19:58:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8500',NULL,NULL),(8600,NULL,8600,'2017-01-05 10:27:55',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8600',NULL,NULL),(8701,NULL,8701,'2017-01-08 05:47:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8701',NULL,NULL),(8702,NULL,8702,'2017-01-08 05:47:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'8702',NULL,NULL),(11300,NULL,11300,'2017-01-08 08:52:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11300',NULL,NULL),(11702,'N',11702,'2017-01-09 06:15:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11702',NULL,NULL),(11800,'N',11800,'2017-01-11 06:24:28',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11800',NULL,NULL),(11900,'N',11900,'2017-01-11 06:34:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'11900',NULL,NULL),(12000,'N',12000,'2017-01-11 18:15:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12000',NULL,NULL),(12102,NULL,12102,'2017-01-12 17:28:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12102',NULL,NULL),(12103,NULL,12103,'2017-01-12 17:32:33',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12103',NULL,NULL),(12200,NULL,12200,'2017-01-12 19:09:23',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12200',NULL,NULL),(12400,NULL,12400,'2017-01-14 12:12:17',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12400',NULL,NULL),(12402,NULL,12402,'2017-01-14 12:52:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12402',NULL,NULL),(12500,NULL,12500,'2017-01-14 13:18:13',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12500',NULL,NULL),(12600,NULL,12600,'2017-01-15 06:17:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12600',NULL,NULL),(12700,NULL,12700,'2017-01-15 06:36:02',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12700',NULL,NULL),(12800,NULL,12800,'2017-01-15 06:56:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'12800',NULL,NULL),(13002,NULL,13002,'2017-01-15 08:24:10',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13002',NULL,NULL),(13100,NULL,13100,'2017-01-15 08:39:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13100',NULL,NULL),(13200,NULL,13200,'2017-01-15 08:50:11',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13200',NULL,NULL),(13300,NULL,13300,'2017-01-15 09:08:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13300',NULL,NULL),(13500,NULL,13500,'2017-01-15 10:13:23',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13500',NULL,NULL),(13600,NULL,13600,'2017-01-15 10:40:44',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13600',NULL,NULL),(13601,NULL,13601,'2017-01-15 10:34:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13601',NULL,NULL),(13700,NULL,13700,'2017-01-15 11:02:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13700',NULL,NULL),(13800,NULL,13800,'2017-01-15 11:18:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13800',NULL,NULL),(13900,NULL,13900,'2017-01-15 11:25:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'13900',NULL,NULL),(14000,NULL,14000,'2017-01-15 12:01:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14000',NULL,NULL),(14100,NULL,14100,'2017-01-15 12:20:03',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14100',NULL,NULL),(14200,NULL,14200,'2017-01-15 12:50:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14200',NULL,NULL),(14300,NULL,14300,'2017-01-15 13:12:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14300',NULL,NULL),(14401,NULL,14401,'2017-01-15 13:15:36',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14401',NULL,NULL),(14500,NULL,14500,'2017-01-15 13:21:56',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14500',NULL,NULL),(14600,NULL,14600,'2017-01-15 13:40:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14600',NULL,NULL),(14700,NULL,14700,'2017-01-15 14:31:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14700',NULL,NULL),(14800,NULL,14800,'2017-01-15 14:42:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'14800',NULL,NULL),(15100,NULL,15100,'2017-01-16 05:56:52',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15100',NULL,NULL),(15200,NULL,15200,'2017-01-16 06:07:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15200',NULL,NULL),(15201,NULL,15201,'2017-01-16 06:46:15',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15201',NULL,NULL),(15300,NULL,15300,'2017-01-16 06:55:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15300',NULL,NULL),(15400,NULL,15400,'2017-01-16 07:02:00',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15400',NULL,NULL),(15500,NULL,15500,'2017-01-17 04:25:40',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15500',NULL,NULL),(15501,NULL,15501,'2017-01-17 04:27:28',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'15501',NULL,NULL),(16000,NULL,16000,'2017-01-17 06:15:21',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16000',NULL,NULL),(16100,NULL,16100,'2017-01-17 06:20:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16100',NULL,NULL),(16200,NULL,16200,'2017-01-17 06:26:21',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16200',NULL,NULL),(16301,NULL,16301,'2017-01-17 06:29:40',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16301',NULL,NULL),(16400,'N',16400,'2017-01-20 05:09:26',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16400',NULL,NULL),(16401,'N',16401,'2017-01-20 05:14:26',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16401',NULL,NULL),(16503,'N',16503,'2017-01-20 05:51:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'16503',NULL,NULL),(17501,'N',17501,'2017-01-22 17:36:02',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'17501',NULL,NULL),(17502,'N',17502,'2017-01-22 18:41:53',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'17502',NULL,NULL),(17601,'N',17601,'2017-01-23 16:31:01',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'17601',NULL,NULL),(17700,'N',17700,'2017-01-23 16:44:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'17700',NULL,NULL),(17801,NULL,17801,'2017-01-25 10:45:56',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'17801',NULL,NULL),(17904,NULL,17904,'2017-01-25 11:37:10',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'17904',NULL,NULL),(18033,NULL,18033,'2017-01-25 17:59:39',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18033',NULL,NULL),(18037,NULL,18037,'2017-01-25 19:51:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18037',NULL,NULL),(18480,NULL,18480,'2017-01-25 22:10:43',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18480',NULL,NULL),(18484,NULL,18484,'2017-01-25 22:35:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18484',NULL,NULL),(18552,NULL,18552,'2017-01-26 13:38:10',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18552',NULL,NULL),(18588,NULL,18588,'2017-01-26 14:21:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18588',NULL,NULL),(18592,NULL,18592,'2017-01-26 15:51:15',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18592',NULL,NULL),(18802,NULL,18802,'2017-01-26 10:12:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'18802',NULL,NULL),(19000,'N',19000,'2017-01-26 11:15:42',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19000',NULL,NULL),(19100,NULL,19100,'2017-01-26 17:07:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19100',NULL,NULL),(19200,NULL,19200,'2017-01-26 17:25:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19200',NULL,NULL),(19206,NULL,19206,'2017-01-26 19:18:26',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19206',NULL,NULL),(19230,NULL,19230,'2017-01-26 21:20:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19230',NULL,NULL),(19291,NULL,19291,'2017-01-27 12:11:19',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19291',NULL,NULL),(19303,NULL,19303,'2017-01-27 16:16:02',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19303',NULL,NULL),(19317,NULL,19317,'2017-01-27 19:12:41',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19317',NULL,NULL),(19701,'N',19701,'2017-01-28 09:36:19',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19701',NULL,NULL),(19800,NULL,19800,'2017-01-28 15:16:14',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19800',NULL,NULL),(19900,NULL,19900,'2017-01-28 15:30:29',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19900',NULL,NULL),(19901,NULL,19901,'2017-01-28 15:25:56',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'19901',NULL,NULL),(19958,NULL,19958,'2017-01-29 02:19:40',NULL,NULL,NULL,0,'arpittalks@gmail.com','Arpit ',0,'Agrawal ','qwert',0,NULL,1,1,NULL,'arpittalks@gmail.com',NULL,NULL),(20109,NULL,20109,'2017-01-29 21:46:56',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20109',NULL,NULL),(20202,NULL,20202,'2017-01-31 10:54:58',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20202',NULL,NULL),(20325,NULL,20325,'2017-02-01 10:19:57',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20325',NULL,NULL),(20405,NULL,20405,'2017-02-01 23:40:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20405',NULL,NULL),(20409,NULL,20409,'2017-02-02 00:33:32',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20409',NULL,NULL),(20514,NULL,20514,'2017-02-03 17:37:21',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20514',NULL,NULL),(20540,NULL,20540,'2017-02-04 10:41:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20540',NULL,NULL),(20665,NULL,20665,'2017-02-08 02:45:29',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20665',NULL,NULL),(20916,NULL,20916,'2017-02-08 13:06:46',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'20916',NULL,NULL),(21700,NULL,21700,'2017-02-10 14:30:04',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'21700',NULL,NULL),(21790,NULL,21790,'2017-02-13 10:41:19',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'21790',NULL,NULL),(21800,NULL,21800,'2017-02-13 18:33:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'21800',NULL,NULL),(21808,NULL,21808,'2017-02-13 20:56:39',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'21808',NULL,NULL),(22098,NULL,22098,'2017-02-18 13:09:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'22098',NULL,NULL),(22106,NULL,22106,'2017-02-18 15:43:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'22106',NULL,NULL),(22118,NULL,22118,'2017-02-18 18:27:11',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'22118',NULL,NULL),(22928,NULL,22928,'2017-02-22 08:28:58',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'22928',NULL,NULL),(23637,NULL,23637,'2017-02-25 19:27:51',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'23637',NULL,NULL),(24600,NULL,24600,'2017-02-28 14:08:17',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'24600',NULL,NULL),(24700,NULL,24700,'2017-02-28 14:33:07',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'24700',NULL,NULL),(25289,NULL,25289,'2017-03-04 10:32:10',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'25289',NULL,NULL),(25350,NULL,25350,'2017-03-05 02:27:39',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'25350',NULL,NULL),(25981,NULL,25981,'2017-03-10 15:28:30',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'25981',NULL,NULL),(25988,NULL,25988,'2017-03-10 17:41:52',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'25988',NULL,NULL),(26164,NULL,26164,'2017-03-14 10:06:49',NULL,NULL,NULL,0,'lovvvely65@gmail.com','Lovely',0,'Jain','1234',0,NULL,1,1,NULL,'lovvvely65@gmail.com',NULL,NULL),(26178,NULL,26178,'2017-03-14 16:57:21',NULL,NULL,NULL,0,'Exweddingplanner0@gmail.com','shubham',0,'patel','loveuranu',0,NULL,1,1,NULL,'Exweddingplanner0@gmail.com',NULL,NULL),(26714,NULL,26714,'2017-03-22 19:02:28',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'26714',NULL,NULL),(26799,NULL,26799,'2017-03-24 10:40:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'26799',NULL,NULL),(26805,NULL,26805,'2017-03-24 14:42:37',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'26805',NULL,NULL),(26929,NULL,26929,'2017-03-26 22:38:16',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'26929',NULL,NULL),(26982,NULL,26982,'2017-03-28 01:37:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'26982',NULL,NULL),(27046,NULL,27046,'2017-03-29 09:06:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'27046',NULL,NULL),(27173,NULL,27173,'2017-04-01 12:58:49',NULL,NULL,NULL,0,'AmitDalalPhotography@gmail.com','Amit',0,'Dalal','gayatri',0,NULL,1,1,NULL,'AmitDalalPhotography@gmail.com',NULL,NULL),(27428,NULL,27428,'2017-04-04 08:15:16',NULL,NULL,NULL,0,'fundingteam+oyeshaadi.com@businesscapitaladvisor.com','BusinessCapitalNow',0,'BusinessCapitalNow','gfhjhk',0,NULL,1,1,NULL,'fundingteam+oyeshaadi.com@businesscapitaladvisor.com',NULL,NULL),(27605,NULL,27605,'2017-04-05 14:52:57',NULL,NULL,NULL,0,'davidvow@mail.ru','Davidguife',0,'Davidguife','vqn1siL57J',0,NULL,1,1,NULL,'davidvow@mail.ru',NULL,NULL),(27695,NULL,27695,'2017-04-06 13:19:59',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'27695',NULL,NULL),(28390,NULL,28390,'2017-04-14 15:23:54',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'28390',NULL,NULL),(28402,NULL,28402,'2017-04-14 22:37:54',NULL,NULL,NULL,0,'fundingteam+oyeshaadi.com@smartfinancialfunding.com','SmartFinancialFundingTeam',0,'SmartFinancialFundingTeam','gfhjhk',0,NULL,1,1,NULL,'fundingteam+oyeshaadi.com@smartfinancialfunding.com',NULL,NULL),(28876,NULL,28876,'2017-04-19 17:01:10',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'28876',NULL,NULL),(29002,NULL,29002,'2017-04-21 20:32:02',NULL,NULL,NULL,0,'matthewglymn@mail.ru','Matthewrew',0,'Matthewrew','w1xvt4W7jW',0,NULL,1,1,NULL,'matthewglymn@mail.ru',NULL,NULL),(29149,NULL,29149,'2017-04-24 13:29:19',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'29149',NULL,NULL),(30629,NULL,30629,'2017-05-16 16:15:18',NULL,NULL,NULL,0,'ronaldpaype@mail.ru','Ronaldfub',0,'Ronaldfub','pbs72S1hwU',0,NULL,1,1,NULL,'ronaldpaype@mail.ru',NULL,NULL),(30790,NULL,30790,'2017-05-18 12:14:09',NULL,NULL,NULL,0,'abookzpii@mail.ru','abookzwah',0,'abookzwah','2tzk5sCt9J',0,NULL,1,1,NULL,'abookzpii@mail.ru',NULL,NULL),(30810,NULL,30810,'2017-05-18 16:03:20',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'30810',NULL,NULL),(31456,NULL,31456,'2017-05-26 13:13:32',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'31456',NULL,NULL),(32092,NULL,32092,'2017-06-02 14:03:52',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'32092',NULL,NULL),(32948,NULL,32948,'2017-06-12 17:28:47',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'32948',NULL,NULL),(33207,NULL,33207,'2017-06-16 20:56:25',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'33207',NULL,NULL),(33804,NULL,33804,'2017-06-23 15:23:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'33804',NULL,NULL),(35538,NULL,35538,'2017-07-21 15:53:17',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'35538',NULL,NULL),(35758,NULL,35758,'2017-07-23 20:45:50',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'35758',NULL,NULL),(36254,NULL,36254,'2017-08-03 02:13:54',NULL,NULL,NULL,0,'serverftp2017@mail.ru','VirgilFer',0,'VirgilFer','k6z4i2PxtL',0,NULL,1,1,NULL,'serverftp2017@mail.ru',NULL,NULL),(37111,NULL,37111,'2017-08-13 22:10:02',NULL,NULL,NULL,0,'exilum78@mail.ru','Jackieopida',0,'Jackieopida','t69Vjy6zhK',0,NULL,1,1,NULL,'exilum78@mail.ru',NULL,NULL),(37530,NULL,37530,'2017-08-20 03:33:54',NULL,NULL,NULL,0,'quonahquee@bestmailonline.com','Aweabeactcoows',0,'Aweabeactcoows','eqeS606898',0,NULL,1,1,NULL,'quonahquee@bestmailonline.com',NULL,NULL),(38222,NULL,38222,'2017-08-30 23:57:07',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'38222',NULL,NULL),(38372,NULL,38372,'2017-09-01 19:57:01',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'38372',NULL,NULL),(38592,NULL,38592,'2017-09-05 04:31:48',NULL,NULL,NULL,0,'robercarlos22@mail.ru','Johnniedip',0,'Johnniedip','uv1udj21IW',0,NULL,1,1,NULL,'robercarlos22@mail.ru',NULL,NULL),(40429,NULL,40429,'2017-09-30 20:21:41','2017-09-30 20:22:28',40429,NULL,0,'rahulnagpure92@gmail.com','Rahul',0,'Nagpure','adirahu1',0,NULL,1,1,NULL,'rahulnagpure92@gmail.com',NULL,NULL),(40569,NULL,40569,'2017-10-02 13:16:41',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'40569',NULL,NULL),(40659,NULL,40659,'2017-10-03 16:26:21',NULL,NULL,NULL,0,'leadgenteam+oyeshaadi.com@get-unlimited-leads.co','Unlimited',0,'Unlimited','gfhjhk',0,NULL,1,1,NULL,'leadgenteam+oyeshaadi.com@get-unlimited-leads.co',NULL,NULL),(41279,NULL,41279,'2017-10-13 13:53:17',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'41279',NULL,NULL),(41281,NULL,41281,'2017-10-13 15:03:08',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'41281',NULL,NULL),(41907,NULL,41907,'2017-10-23 00:16:06',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'41907',NULL,NULL),(41928,NULL,41928,'2017-10-23 12:56:41',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'41928',NULL,NULL),(41973,NULL,41973,'2017-10-24 20:29:13',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'41973',NULL,NULL),(43166,NULL,43166,'2017-11-09 22:54:00',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'43166',NULL,NULL),(43629,NULL,43629,'2017-11-18 14:33:45',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'43629',NULL,NULL),(43756,NULL,43756,'2017-11-20 21:05:53','2017-11-20 21:08:04',43756,NULL,0,'shubhamsaxena7@gmail.com','shubham',0,'saxena','shubhmona1215',0,NULL,1,1,NULL,'shubhamsaxena7@gmail.com',NULL,NULL),(45534,NULL,45534,'2017-12-12 14:13:21',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'45534',NULL,NULL),(46518,NULL,46518,'2017-12-24 07:16:18',NULL,NULL,NULL,0,'samburton202@aol.co.uk','GuestPhimi',0,'GuestPhimi','gs8U9f4t2cR',0,NULL,1,1,NULL,'samburton202@aol.co.uk',NULL,NULL),(47248,NULL,47248,'2018-01-02 22:27:45',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47248',NULL,NULL),(47293,NULL,47293,'2018-01-03 15:29:48',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47293',NULL,NULL),(47312,NULL,47312,'2018-01-03 15:29:43',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47312',NULL,NULL),(47720,NULL,47720,'2018-01-09 12:55:03',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47720',NULL,NULL),(47725,NULL,47725,'2018-01-09 13:35:32','2018-01-09 13:40:44',47725,NULL,0,'piscean.parul@gmail.com','Parul',0,'Jain','oye123',0,NULL,1,1,NULL,'piscean.parul@gmail.com',NULL,NULL),(47728,NULL,47728,'2018-01-09 14:19:21',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47728',NULL,NULL),(47886,NULL,47886,'2018-01-11 00:02:38',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47886',NULL,NULL),(47888,NULL,47888,'2018-01-11 00:02:37',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47888',NULL,NULL),(47945,NULL,47945,'2018-01-11 14:07:58',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47945',NULL,NULL),(47950,NULL,47950,'2018-01-11 17:05:12',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'47950',NULL,NULL);
/*!40000 ALTER TABLE `BLC_CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_ADDRESS`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_ADDRESS` (
  `CUSTOMER_ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_NAME` varchar(255) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ADDRESS_ID`),
  KEY `CUSTOMERADDRESS_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FK75B95AB9C13085DD` (`ADDRESS_ID`),
  KEY `FK75B95AB97470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB97470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB9C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_ADDRESS`
--

LOCK TABLES `BLC_CUSTOMER_ADDRESS` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_ADDRESS` DISABLE KEYS */;
INSERT INTO `BLC_CUSTOMER_ADDRESS` VALUES (1,'sdfsfsfs','N',1,700);
/*!40000 ALTER TABLE `BLC_CUSTOMER_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_ATTRIBUTE` (
  `CUSTOMER_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ATTR_ID`),
  KEY `FKB974C8217470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKB974C8217470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_ATTRIBUTE`
--

LOCK TABLES `BLC_CUSTOMER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CUSTOMER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_OFFER_XREF`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_OFFER_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_OFFER_XREF` (
  `CUSTOMER_OFFER_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_OFFER_ID`),
  KEY `CUSTOFFER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTOFFER_OFFER_INDEX` (`OFFER_ID`),
  KEY `FK685E80397470F437` (`CUSTOMER_ID`),
  KEY `FK685E8039D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK685E80397470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK685E8039D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_OFFER_XREF`
--

LOCK TABLES `BLC_CUSTOMER_OFFER_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_OFFER_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CUSTOMER_OFFER_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_PASSWORD_TOKEN`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_PASSWORD_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_PASSWORD_TOKEN` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_PASSWORD_TOKEN`
--

LOCK TABLES `BLC_CUSTOMER_PASSWORD_TOKEN` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PASSWORD_TOKEN` DISABLE KEYS */;
INSERT INTO `BLC_CUSTOMER_PASSWORD_TOKEN` VALUES ('3j3yhgjkggqas86nsfb9','2016-12-28 17:32:23',700,NULL,0),('4hteabhnhrwnks74vcwt','2016-12-29 11:58:48',700,NULL,0),('7u9mjh6aw2ymasxwnmd8','2016-12-29 11:48:38',700,NULL,0);
/*!40000 ALTER TABLE `BLC_CUSTOMER_PASSWORD_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_PAYMENT`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_PAYMENT` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `PAYMENT_TOKEN` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`),
  UNIQUE KEY `CSTMR_PAY_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PAYMENT_TOKEN`),
  KEY `CUSTOMERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK8B3DF0CBC13085DD` (`ADDRESS_ID`),
  KEY `FK8B3DF0CB7470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CB7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CBC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_PAYMENT`
--

LOCK TABLES `BLC_CUSTOMER_PAYMENT` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_PAYMENT_FIELDS`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_PAYMENT_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_PAYMENT_FIELDS` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`,`FIELD_NAME`),
  KEY `FK5CCB14ADCA0B98E0` (`CUSTOMER_PAYMENT_ID`),
  CONSTRAINT `FK5CCB14ADCA0B98E0` FOREIGN KEY (`CUSTOMER_PAYMENT_ID`) REFERENCES `BLC_CUSTOMER_PAYMENT` (`CUSTOMER_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_PAYMENT_FIELDS`
--

LOCK TABLES `BLC_CUSTOMER_PAYMENT_FIELDS` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PAYMENT_FIELDS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PAYMENT_FIELDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_PHONE`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_PHONE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_PHONE` (
  `CUSTOMER_PHONE_ID` bigint(20) NOT NULL,
  `PHONE_NAME` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `PHONE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PHONE_ID`),
  UNIQUE KEY `CSTMR_PHONE_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PHONE_NAME`),
  KEY `CUSTPHONE_PHONE_INDEX` (`PHONE_ID`),
  KEY `FK3D28ED737470F437` (`CUSTOMER_ID`),
  KEY `FK3D28ED73D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FK3D28ED737470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK3D28ED73D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_PHONE`
--

LOCK TABLES `BLC_CUSTOMER_PHONE` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PHONE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PHONE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUSTOMER_ROLE`
--

DROP TABLE IF EXISTS `BLC_CUSTOMER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUSTOMER_ROLE` (
  `CUSTOMER_ROLE_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ROLE_ID`),
  KEY `CUSTROLE_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTROLE_ROLE_INDEX` (`ROLE_ID`),
  KEY `FK548EB7B17470F437` (`CUSTOMER_ID`),
  KEY `FK548EB7B1B8587B7` (`ROLE_ID`),
  CONSTRAINT `FK548EB7B17470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK548EB7B1B8587B7` FOREIGN KEY (`ROLE_ID`) REFERENCES `BLC_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUSTOMER_ROLE`
--

LOCK TABLES `BLC_CUSTOMER_ROLE` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_ROLE` DISABLE KEYS */;
INSERT INTO `BLC_CUSTOMER_ROLE` VALUES (1,700,1),(101,19958,1),(151,26164,1),(152,26178,1),(201,27173,1),(251,27428,1),(252,27605,1),(301,28402,1),(351,29002,1),(401,30629,1),(402,30790,1),(451,36254,1),(501,37111,1),(502,37530,1),(503,38592,1),(551,40429,1),(552,40659,1),(601,43756,1),(651,46518,1),(701,47725,1);
/*!40000 ALTER TABLE `BLC_CUSTOMER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_CUST_SITE_MAP_GEN_CFG`
--

DROP TABLE IF EXISTS `BLC_CUST_SITE_MAP_GEN_CFG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_CUST_SITE_MAP_GEN_CFG` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK67C0DBA0BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK67C0DBA0BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `BLC_SITE_MAP_GEN_CFG` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_CUST_SITE_MAP_GEN_CFG`
--

LOCK TABLES `BLC_CUST_SITE_MAP_GEN_CFG` WRITE;
/*!40000 ALTER TABLE `BLC_CUST_SITE_MAP_GEN_CFG` DISABLE KEYS */;
INSERT INTO `BLC_CUST_SITE_MAP_GEN_CFG` VALUES (-1);
/*!40000 ALTER TABLE `BLC_CUST_SITE_MAP_GEN_CFG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_DATA_DRVN_ENUM`
--

DROP TABLE IF EXISTS `BLC_DATA_DRVN_ENUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_DATA_DRVN_ENUM` (
  `ENUM_ID` bigint(20) NOT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `MODIFIABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ENUM_ID`),
  KEY `ENUM_KEY_INDEX` (`ENUM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_DATA_DRVN_ENUM`
--

LOCK TABLES `BLC_DATA_DRVN_ENUM` WRITE;
/*!40000 ALTER TABLE `BLC_DATA_DRVN_ENUM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_DATA_DRVN_ENUM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_DATA_DRVN_ENUM_VAL`
--

DROP TABLE IF EXISTS `BLC_DATA_DRVN_ENUM_VAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_DATA_DRVN_ENUM_VAL` (
  `ENUM_VAL_ID` bigint(20) NOT NULL,
  `DISPLAY` varchar(255) DEFAULT NULL,
  `HIDDEN` tinyint(1) DEFAULT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `ENUM_TYPE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ENUM_VAL_ID`),
  KEY `HIDDEN_INDEX` (`HIDDEN`),
  KEY `ENUM_VAL_KEY_INDEX` (`ENUM_KEY`),
  KEY `FKB2D5700DA60E0554` (`ENUM_TYPE`),
  CONSTRAINT `FKB2D5700DA60E0554` FOREIGN KEY (`ENUM_TYPE`) REFERENCES `BLC_DATA_DRVN_ENUM` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_DATA_DRVN_ENUM_VAL`
--

LOCK TABLES `BLC_DATA_DRVN_ENUM_VAL` WRITE;
/*!40000 ALTER TABLE `BLC_DATA_DRVN_ENUM_VAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_DATA_DRVN_ENUM_VAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_DISCRETE_ORDER_ITEM`
--

DROP TABLE IF EXISTS `BLC_DISCRETE_ORDER_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_DISCRETE_ORDER_ITEM` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `BUNDLE_ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  `SKU_BUNDLE_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `DISCRETE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `DISCRETE_SKU_INDEX` (`SKU_ID`),
  KEY `FKBC3A8A845CDFCA80` (`BUNDLE_ORDER_ITEM_ID`),
  KEY `FKBC3A8A845F11A0B7` (`PRODUCT_ID`),
  KEY `FKBC3A8A84B78C9977` (`SKU_ID`),
  KEY `FKBC3A8A841285903B` (`SKU_BUNDLE_ITEM_ID`),
  KEY `FKBC3A8A849AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A841285903B` FOREIGN KEY (`SKU_BUNDLE_ITEM_ID`) REFERENCES `BLC_SKU_BUNDLE_ITEM` (`SKU_BUNDLE_ITEM_ID`),
  CONSTRAINT `FKBC3A8A845CDFCA80` FOREIGN KEY (`BUNDLE_ORDER_ITEM_ID`) REFERENCES `BLC_BUNDLE_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A845F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FKBC3A8A849AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A84B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_DISCRETE_ORDER_ITEM`
--

LOCK TABLES `BLC_DISCRETE_ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_DISCRETE_ORDER_ITEM` DISABLE KEYS */;
INSERT INTO `BLC_DISCRETE_ORDER_ITEM` VALUES (31000.00000,31000.00000,3601,NULL,660,694,NULL),(20000.00000,20000.00000,3702,NULL,760,794,NULL),(250.00000,250.00000,3703,NULL,771,805,NULL),(20.00000,20.00000,3751,NULL,714,748,NULL),(30.00000,30.00000,3801,NULL,715,749,NULL),(20.00000,20.00000,3802,NULL,714,748,NULL),(20.00000,20.00000,3851,NULL,714,748,NULL),(20.00000,20.00000,3901,NULL,714,748,NULL),(20.00000,20.00000,3902,NULL,720,754,NULL),(20.00000,20.00000,3951,NULL,714,748,NULL),(20.00000,20.00000,4001,NULL,714,748,NULL),(30.00000,30.00000,4002,NULL,715,749,NULL),(300.00000,NULL,4003,NULL,712,998,NULL),(20.00000,20.00000,4051,NULL,714,748,NULL),(20.00000,20.00000,4052,NULL,720,754,NULL),(20.00000,20.00000,4101,NULL,714,748,NULL),(20.00000,20.00000,4102,NULL,720,754,NULL),(20.00000,20.00000,4151,NULL,714,748,NULL),(20.00000,20.00000,4152,NULL,720,754,NULL),(150.00000,150.00000,4153,NULL,710,744,NULL),(20.00000,20.00000,4201,NULL,714,748,NULL),(2500.00000,2500.00000,4202,NULL,722,756,NULL),(20.00000,20.00000,4251,NULL,720,754,NULL),(20.00000,20.00000,4252,NULL,714,748,NULL),(15000.00000,15000.00000,4253,NULL,722,756,NULL),(20.00000,20.00000,4306,NULL,714,748,NULL),(4500.00000,4500.00000,4307,NULL,781,815,NULL),(30.00000,30.00000,4308,NULL,715,749,NULL),(40.00000,40.00000,4309,NULL,716,750,NULL),(20.00000,20.00000,4351,NULL,714,748,NULL),(20.00000,20.00000,4401,NULL,714,748,NULL),(20.00000,20.00000,4451,NULL,714,748,NULL),(20.00000,20.00000,4501,NULL,714,748,NULL),(20.00000,20.00000,4551,NULL,714,748,NULL),(20.00000,20.00000,4601,NULL,714,748,NULL),(20.00000,20.00000,4651,NULL,714,748,NULL),(20.00000,20.00000,4701,NULL,714,748,NULL),(20.00000,20.00000,4751,NULL,720,754,NULL),(20.00000,20.00000,4801,NULL,720,754,NULL),(20.00000,20.00000,4802,NULL,714,748,NULL),(20.00000,20.00000,4851,NULL,714,748,NULL),(20.00000,20.00000,4901,NULL,714,748,NULL),(20.00000,20.00000,4951,NULL,714,748,NULL),(20.00000,20.00000,4952,NULL,720,754,NULL),(15000.00000,15000.00000,4953,NULL,722,756,NULL),(20.00000,20.00000,5001,NULL,714,748,NULL),(20.00000,20.00000,5002,NULL,720,754,NULL),(20.00000,20.00000,5051,NULL,720,754,NULL),(20.00000,20.00000,5101,NULL,720,754,NULL),(20.00000,20.00000,5151,NULL,714,748,NULL),(20.00000,20.00000,5152,NULL,714,748,NULL),(150.00000,150.00000,5153,NULL,710,744,NULL),(20.00000,20.00000,5201,NULL,714,748,NULL),(20.00000,20.00000,5251,NULL,714,748,NULL),(20.00000,20.00000,5301,NULL,714,748,NULL),(20.00000,20.00000,5351,NULL,720,754,NULL),(20.00000,20.00000,5401,NULL,720,754,NULL),(20.00000,20.00000,5402,NULL,714,748,NULL),(20.00000,20.00000,5403,NULL,720,754,NULL),(20.00000,20.00000,5451,NULL,720,754,NULL),(30.00000,30.00000,5501,NULL,715,749,NULL),(40.00000,40.00000,5502,NULL,716,750,NULL),(30.00000,30.00000,5503,NULL,715,749,NULL),(20.00000,20.00000,5504,NULL,714,748,NULL),(20.00000,20.00000,5551,NULL,714,748,NULL),(50000.00000,50000.00000,5601,NULL,762,796,NULL),(20.00000,20.00000,5651,NULL,714,748,NULL),(20.00000,20.00000,5701,NULL,714,748,NULL),(350.00000,350.00000,5751,NULL,717,751,NULL),(15.00000,15.00000,5752,NULL,610,648,NULL),(20.00000,20.00000,5755,NULL,714,748,NULL),(8000.00000,8000.00000,5756,NULL,816,1148,NULL),(12800.00000,12800.00000,5757,NULL,816,1150,NULL),(20.00000,20.00000,5758,NULL,714,748,NULL),(20.00000,20.00000,5759,NULL,714,748,NULL),(200.00000,200.00000,5760,NULL,710,744,NULL),(200.00000,200.00000,5801,NULL,710,744,NULL),(20.00000,20.00000,5851,NULL,714,748,NULL),(20.00000,20.00000,5901,NULL,714,748,NULL),(20.00000,20.00000,5902,NULL,714,748,NULL),(20.00000,20.00000,5903,NULL,714,748,NULL),(20.00000,20.00000,5951,NULL,714,748,NULL),(20000.00000,20000.00000,5952,NULL,818,1163,NULL),(10000.00000,10000.00000,5953,NULL,765,799,NULL),(20.00000,20.00000,5954,NULL,714,748,NULL),(20.00000,20.00000,5955,NULL,714,748,NULL),(20.00000,20.00000,5956,NULL,714,748,NULL),(20.00000,20.00000,6001,NULL,714,748,NULL),(20.00000,20.00000,6002,NULL,714,748,NULL),(20.00000,20.00000,6052,NULL,714,748,NULL),(20.00000,20.00000,6101,NULL,714,748,NULL),(50000.00000,50000.00000,6102,NULL,762,796,NULL),(5000.00000,5000.00000,6151,NULL,1010,1044,NULL),(5000.00000,5000.00000,6201,NULL,1010,1044,NULL),(5000.00000,5000.00000,6251,NULL,1010,1044,NULL),(20.00000,20.00000,6301,NULL,720,754,NULL),(250.00000,250.00000,6302,NULL,711,745,NULL),(5000.00000,5000.00000,6304,NULL,1010,1044,NULL),(5000.00000,5000.00000,6305,NULL,1010,1044,NULL),(200.00000,200.00000,6306,NULL,710,744,NULL),(250.00000,250.00000,6351,NULL,911,945,NULL),(5000.00000,5000.00000,6401,NULL,1010,1044,NULL),(5000.00000,5000.00000,6403,NULL,1010,1044,NULL),(8000.00000,8000.00000,6404,NULL,786,820,NULL),(5000.00000,5000.00000,6405,NULL,1010,1044,NULL),(8000.00000,8000.00000,6406,NULL,786,820,NULL),(5000.00000,5000.00000,6407,NULL,1010,1044,NULL),(5600.00000,5600.00000,6451,NULL,782,816,NULL),(15000.00000,15000.00000,6452,NULL,1161,1195,NULL),(7000.00000,7000.00000,6453,NULL,1165,1199,NULL),(22000.00000,20000.00000,6454,NULL,760,794,NULL),(6000.00000,5000.00000,6501,NULL,1010,1044,NULL),(200.00000,200.00000,6502,NULL,710,744,NULL),(6000.00000,5000.00000,6551,NULL,1010,1044,NULL),(5000.00000,4000.00000,6552,NULL,781,815,NULL),(5000.00000,4000.00000,6553,NULL,781,815,NULL),(25000.00000,20000.00000,6556,NULL,1213,1247,NULL),(15000.00000,12000.00000,6601,NULL,766,800,NULL),(12000.00000,9000.00000,6602,NULL,779,813,NULL),(6000.00000,5000.00000,6651,NULL,1010,1044,NULL),(1000.00000,800.00000,6652,NULL,1215,1249,NULL),(20.00000,20.00000,6654,NULL,720,754,NULL),(10000.00000,10000.00000,6701,NULL,862,896,NULL),(5000.00000,4000.00000,6751,NULL,781,815,NULL),(15000.00000,15000.00000,6801,NULL,722,756,NULL),(10000.00000,8000.00000,6851,NULL,1261,1295,NULL),(6000.00000,5000.00000,6852,NULL,1010,1044,NULL),(8000.00000,8000.00000,6853,NULL,786,820,NULL),(12000.00000,9000.00000,6854,NULL,779,813,NULL),(500.00000,400.00000,6855,NULL,1214,1248,NULL),(6000.00000,5000.00000,6902,NULL,1010,1044,NULL),(4500.00000,4000.00000,6951,NULL,778,812,NULL),(6000.00000,5000.00000,7001,NULL,1010,1044,NULL),(4000.00000,2800.00000,7002,NULL,777,811,NULL),(12000.00000,9000.00000,7003,NULL,779,813,NULL),(10000.00000,10000.00000,7004,NULL,862,896,NULL),(10000.00000,8000.00000,7005,NULL,1212,1246,NULL),(13000.00000,11000.00000,7006,NULL,1210,1244,NULL),(4000.00000,2800.00000,7007,NULL,777,811,NULL),(10000.00000,8000.00000,7008,NULL,1212,1246,NULL),(16000.00000,16000.00000,7052,NULL,817,1158,NULL),(15000.00000,12000.00000,7053,NULL,766,800,NULL),(2500.00000,2500.00000,7054,NULL,917,951,NULL),(4500.00000,4000.00000,7055,NULL,778,812,NULL),(6000.00000,5100.00000,7101,NULL,782,816,NULL),(20000.00000,20000.00000,7102,NULL,818,1163,NULL),(20000.00000,18000.00000,7103,NULL,1162,1196,NULL),(800.00000,800.00000,7104,NULL,713,747,NULL),(25000.00000,20000.00000,7105,NULL,760,794,NULL),(5000.00000,4000.00000,7106,NULL,781,815,NULL),(20.00000,20.00000,7107,NULL,720,754,NULL),(15000.00000,14000.00000,7108,NULL,1161,1195,NULL),(5000.00000,4000.00000,7109,NULL,781,815,NULL),(12000.00000,9000.00000,7110,NULL,779,813,NULL),(4500.00000,4500.00000,7111,NULL,768,802,NULL),(8000.00000,8000.00000,7112,NULL,786,820,NULL),(1000.00000,800.00000,7113,NULL,1215,1249,NULL),(1000.00000,800.00000,7115,NULL,1215,1249,NULL),(8000.00000,8000.00000,7116,NULL,786,820,NULL),(5000.00000,4000.00000,7117,NULL,781,815,NULL),(12000.00000,9000.00000,7118,NULL,779,813,NULL),(20000.00000,18000.00000,7119,NULL,1162,1196,NULL),(4500.00000,4500.00000,7120,NULL,768,802,NULL),(10000.00000,8000.00000,7121,NULL,1260,1294,NULL),(250.00000,250.00000,7122,NULL,711,745,NULL),(550.00000,550.00000,7123,NULL,718,752,NULL),(600.00000,600.00000,7124,NULL,915,949,NULL),(30.00000,30.00000,7125,NULL,715,749,NULL),(350.00000,NULL,7126,NULL,712,998,NULL),(1000.00000,1000.00000,7127,NULL,910,944,NULL),(15000.00000,15000.00000,7128,NULL,776,810,NULL),(200.00000,200.00000,7129,NULL,770,804,NULL),(10000.00000,9000.00000,7130,NULL,765,799,NULL),(2500.00000,2500.00000,7131,NULL,917,951,NULL),(25000.00000,20000.00000,7132,NULL,760,794,NULL),(250.00000,250.00000,7133,NULL,711,745,NULL),(550.00000,550.00000,7134,NULL,718,752,NULL),(600.00000,600.00000,7135,NULL,915,949,NULL),(6000.00000,6000.00000,7136,NULL,1011,1045,NULL),(350.00000,NULL,7137,NULL,712,998,NULL),(30.00000,30.00000,7138,NULL,715,749,NULL),(800.00000,800.00000,7140,NULL,713,747,NULL),(25000.00000,20000.00000,7141,NULL,760,794,NULL),(10000.00000,9000.00000,7142,NULL,765,799,NULL),(7500.00000,7500.00000,7143,NULL,774,808,NULL),(1000.00000,800.00000,7144,NULL,1215,1249,NULL),(4500.00000,4500.00000,7145,NULL,768,802,NULL);
/*!40000 ALTER TABLE `BLC_DISCRETE_ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_DISC_ITEM_FEE_PRICE`
--

DROP TABLE IF EXISTS `BLC_DISC_ITEM_FEE_PRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_DISC_ITEM_FEE_PRICE` (
  `DISC_ITEM_FEE_PRICE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DISC_ITEM_FEE_PRICE_ID`),
  KEY `FK2A641CC8B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK2A641CC8B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_DISCRETE_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_DISC_ITEM_FEE_PRICE`
--

LOCK TABLES `BLC_DISC_ITEM_FEE_PRICE` WRITE;
/*!40000 ALTER TABLE `BLC_DISC_ITEM_FEE_PRICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_DISC_ITEM_FEE_PRICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_DYN_DISCRETE_ORDER_ITEM`
--

DROP TABLE IF EXISTS `BLC_DYN_DISCRETE_ORDER_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_DYN_DISCRETE_ORDER_ITEM` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FK209DEE9EB76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK209DEE9EB76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_DISCRETE_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_DYN_DISCRETE_ORDER_ITEM`
--

LOCK TABLES `BLC_DYN_DISCRETE_ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_DYN_DISCRETE_ORDER_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_DYN_DISCRETE_ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_EMAIL_TRACKING`
--

DROP TABLE IF EXISTS `BLC_EMAIL_TRACKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_EMAIL_TRACKING` (
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TRACKING_ID`),
  KEY `EMAILTRACKING_INDEX` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_EMAIL_TRACKING`
--

LOCK TABLES `BLC_EMAIL_TRACKING` WRITE;
/*!40000 ALTER TABLE `BLC_EMAIL_TRACKING` DISABLE KEYS */;
INSERT INTO `BLC_EMAIL_TRACKING` VALUES (1,'2016-12-28 17:31:49','agrawal.sumit17@gmail.com',NULL),(2,'2016-12-28 17:32:24','agrawal.sumit17@gmail.com',NULL),(51,'2016-12-28 19:39:20','agrawal.sumit17@gmail.com',NULL),(52,'2016-12-28 19:41:49','agrawal.sumit17@gmail.com',NULL),(101,'2016-12-29 11:48:38','agrawal.sumit17@gmail.com',NULL),(201,'2016-12-29 11:58:48','agrawal.sumit17@gmail.com',NULL),(202,'2016-12-29 12:00:28','agrawal.sumit17@gmail.com',NULL),(251,'2016-12-29 12:26:52','agrawal.sumit17@gmail.com',NULL),(301,'2017-01-03 19:31:39','agrawal.sumit17@gmail.com',NULL),(351,'2017-01-04 12:53:22','agrawal.sumit17@gmail.com',NULL),(401,'2017-01-04 13:24:52','agrawal.sumit17@gmail.com',NULL),(451,'2017-01-04 13:30:57','agrawal.sumit17@gmail.com',NULL),(501,'2017-01-04 19:48:18','agrawal.sumit17@gmail.com',NULL),(551,'2017-01-04 20:01:16','agrawal.sumit17@gmail.com',NULL),(601,'2017-01-05 10:29:59','agrawal.sumit17@gmail.com',NULL),(651,'2017-01-14 13:04:18','agrawal.sumit17@gmail.com',NULL),(701,'2017-01-15 13:41:49','agrawal.sumit17@gmail.com',NULL),(751,'2017-01-17 04:51:17','agrawal.sumit17@gmail.com',NULL),(801,'2017-01-20 05:11:34','agrawal.sumit17@gmail.com',NULL),(802,'2017-01-20 05:15:07','agrawal.sumit17@gmail.com',NULL),(803,'2017-01-20 05:20:44','agrawal.sumit17@gmail.com',NULL),(851,'2017-01-20 05:52:51','agrawal.sumit17@gmail.com',NULL),(901,'2017-01-22 17:38:56','sheetal@dadajigroup.com',NULL),(902,'2017-01-22 18:43:06','agrawal.sumit17@gmail.com',NULL),(951,'2017-01-23 16:33:08','sheetal@dadajigroup.com',NULL),(1001,'2017-01-23 16:45:44','sheetal@dadajigroup.com',NULL),(1051,'2017-01-25 10:46:28','agrawal.sumit17@gmail.com',NULL),(1101,'2017-01-25 11:37:50','agrawal.sumit17@gmail.com',NULL),(1152,'2017-01-25 18:06:18','Sheetal@dadajigroup.com',NULL),(1153,'2017-01-26 14:32:36','agrawal.sumit17@gmail.com',NULL),(1201,'2017-01-26 10:19:35','agrawal.sumit17@gmail.com',NULL),(1251,'2017-01-26 11:19:09','agrawal.sumit17@gmail.com',NULL),(1301,'2017-01-26 17:07:42','agrawal.sumit17@gmail.com',NULL),(1302,'2017-01-26 17:14:09','agrawal.sumit17@gmail.com',NULL),(1303,'2017-01-26 17:18:03','agrawal.sumit17@gmail.com',NULL),(1351,'2017-01-26 17:26:30','agrawal.sumit17@gmail.com',NULL),(1352,'2017-01-26 19:20:10','Sheetal@dadajigroup.com',NULL),(1353,'2017-01-27 12:11:45','agrawal.sumit17@gmail.com',NULL),(1401,'2017-01-28 15:27:04','agrawal.sumit17@gmail.com',NULL),(1402,'2017-01-28 15:31:06','a@a.com',NULL),(1403,'2017-01-29 02:19:40','arpittalks@gmail.com',NULL),(1451,'2017-02-04 10:42:33','agrawal.sumit17@gmail.com',NULL),(1501,'2017-02-18 18:27:49','agrawal.sumit17@gmail.com',NULL),(1551,'2017-02-22 08:33:05','arpittalks@gmail.com',NULL),(1601,'2017-02-28 14:33:44','a@a.com',NULL),(1602,'2017-03-05 02:29:43','veersinghchauhan888@gmail.com',NULL),(1603,'2017-03-14 10:06:49','lovvvely65@gmail.com',NULL),(1604,'2017-03-14 16:57:21','Exweddingplanner0@gmail.com',NULL),(1651,'2017-04-01 12:58:49','AmitDalalPhotography@gmail.com',NULL),(1701,'2017-04-04 08:15:16','fundingteam+oyeshaadi.com@businesscapitaladvisor.com',NULL),(1702,'2017-04-05 14:52:57','davidvow@mail.ru',NULL),(1751,'2017-04-14 22:37:54','fundingteam+oyeshaadi.com@smartfinancialfunding.com',NULL),(1801,'2017-04-21 20:32:02','matthewglymn@mail.ru',NULL),(1851,'2017-05-16 16:15:19','ronaldpaype@mail.ru',NULL),(1852,'2017-05-18 12:14:09','abookzpii@mail.ru',NULL),(1901,'2017-08-03 02:13:54','serverftp2017@mail.ru',NULL),(1951,'2017-08-13 22:10:02','exilum78@mail.ru',NULL),(1952,'2017-08-20 03:33:54','quonahquee@bestmailonline.com',NULL),(1953,'2017-09-05 04:31:48','robercarlos22@mail.ru',NULL),(2001,'2017-09-30 20:22:27','rahulnagpure92@gmail.com',NULL),(2002,'2017-10-03 16:26:21','leadgenteam+oyeshaadi.com@get-unlimited-leads.co',NULL),(2051,'2017-11-20 21:08:02','shubhamsaxena7@gmail.com',NULL),(2052,'2017-11-20 21:13:25','shubhamsaxena7@gmail.com',NULL),(2101,'2017-12-24 07:16:18','samburton202@aol.co.uk',NULL),(2151,'2018-01-09 13:40:42','piscean.parul@gmail.com',NULL);
/*!40000 ALTER TABLE `BLC_EMAIL_TRACKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_EMAIL_TRACKING_CLICKS`
--

DROP TABLE IF EXISTS `BLC_EMAIL_TRACKING_CLICKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_EMAIL_TRACKING_CLICKS` (
  `CLICK_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` varchar(255) DEFAULT NULL,
  `DATE_CLICKED` datetime NOT NULL,
  `DESTINATION_URI` varchar(255) DEFAULT NULL,
  `QUERY_STRING` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CLICK_ID`),
  KEY `TRACKINGCLICKS_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `TRACKINGCLICKS_TRACKING_INDEX` (`EMAIL_TRACKING_ID`),
  KEY `FKFDF9F52AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKFDF9F52AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `BLC_EMAIL_TRACKING` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_EMAIL_TRACKING_CLICKS`
--

LOCK TABLES `BLC_EMAIL_TRACKING_CLICKS` WRITE;
/*!40000 ALTER TABLE `BLC_EMAIL_TRACKING_CLICKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_EMAIL_TRACKING_CLICKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_EMAIL_TRACKING_OPENS`
--

DROP TABLE IF EXISTS `BLC_EMAIL_TRACKING_OPENS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_EMAIL_TRACKING_OPENS` (
  `OPEN_ID` bigint(20) NOT NULL,
  `DATE_OPENED` datetime DEFAULT NULL,
  `USER_AGENT` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OPEN_ID`),
  KEY `TRACKINGOPEN_TRACKING` (`EMAIL_TRACKING_ID`),
  KEY `FKA5C3722AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKA5C3722AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `BLC_EMAIL_TRACKING` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_EMAIL_TRACKING_OPENS`
--

LOCK TABLES `BLC_EMAIL_TRACKING_OPENS` WRITE;
/*!40000 ALTER TABLE `BLC_EMAIL_TRACKING_OPENS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_EMAIL_TRACKING_OPENS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FG_ADJUSTMENT`
--

DROP TABLE IF EXISTS `BLC_FG_ADJUSTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FG_ADJUSTMENT` (
  `FG_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FG_ADJUSTMENT_ID`),
  KEY `FGADJUSTMENT_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGADJUSTMENT_OFFER_INDEX` (`OFFER_ID`),
  KEY `FK468C8F255028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FK468C8F25D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK468C8F255028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `BLC_FULFILLMENT_GROUP` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK468C8F25D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FG_ADJUSTMENT`
--

LOCK TABLES `BLC_FG_ADJUSTMENT` WRITE;
/*!40000 ALTER TABLE `BLC_FG_ADJUSTMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FG_ADJUSTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FG_FEE_TAX_XREF`
--

DROP TABLE IF EXISTS `BLC_FG_FEE_TAX_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FG_FEE_TAX_XREF` (
  `FULFILLMENT_GROUP_FEE_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_25426DC0FA888C35` (`TAX_DETAIL_ID`),
  KEY `FK25426DC071448C19` (`TAX_DETAIL_ID`),
  KEY `FK25426DC0598F6D02` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK25426DC0598F6D02` FOREIGN KEY (`FULFILLMENT_GROUP_FEE_ID`) REFERENCES `BLC_FULFILLMENT_GROUP_FEE` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK25426DC071448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `BLC_TAX_DETAIL` (`TAX_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FG_FEE_TAX_XREF`
--

LOCK TABLES `BLC_FG_FEE_TAX_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_FG_FEE_TAX_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FG_FEE_TAX_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FG_FG_TAX_XREF`
--

DROP TABLE IF EXISTS `BLC_FG_FG_TAX_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FG_FG_TAX_XREF` (
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_61BEA455FA888C35` (`TAX_DETAIL_ID`),
  KEY `FK61BEA45571448C19` (`TAX_DETAIL_ID`),
  KEY `FK61BEA4555028DC55` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK61BEA4555028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `BLC_FULFILLMENT_GROUP` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK61BEA45571448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `BLC_TAX_DETAIL` (`TAX_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FG_FG_TAX_XREF`
--

LOCK TABLES `BLC_FG_FG_TAX_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_FG_FG_TAX_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FG_FG_TAX_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FG_ITEM_TAX_XREF`
--

DROP TABLE IF EXISTS `BLC_FG_ITEM_TAX_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FG_ITEM_TAX_XREF` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_DD3E8443FA888C35` (`TAX_DETAIL_ID`),
  KEY `FKDD3E844371448C19` (`TAX_DETAIL_ID`),
  KEY `FKDD3E8443E3BBB4D2` (`FULFILLMENT_GROUP_ITEM_ID`),
  CONSTRAINT `FKDD3E844371448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `BLC_TAX_DETAIL` (`TAX_DETAIL_ID`),
  CONSTRAINT `FKDD3E8443E3BBB4D2` FOREIGN KEY (`FULFILLMENT_GROUP_ITEM_ID`) REFERENCES `BLC_FULFILLMENT_GROUP_ITEM` (`FULFILLMENT_GROUP_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FG_ITEM_TAX_XREF`
--

LOCK TABLES `BLC_FG_ITEM_TAX_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_FG_ITEM_TAX_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FG_ITEM_TAX_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FIELD`
--

DROP TABLE IF EXISTS `BLC_FIELD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FIELD` (
  `FIELD_ID` bigint(20) NOT NULL,
  `ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) NOT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `TRANSLATABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`FIELD_ID`),
  KEY `ENTITY_TYPE_INDEX` (`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FIELD`
--

LOCK TABLES `BLC_FIELD` WRITE;
/*!40000 ALTER TABLE `BLC_FIELD` DISABLE KEYS */;
INSERT INTO `BLC_FIELD` VALUES (1,'mfg',NULL,NULL,NULL,NULL,'PRODUCT','Manufacturer',NULL,'manufacturer',NULL),(2,'heatRange',NULL,NULL,NULL,NULL,'PRODUCT','Heat Range',NULL,'productAttributes(heatRange).value',NULL),(3,'price',NULL,NULL,NULL,NULL,'PRODUCT','Retail Price',NULL,'retailPrice',NULL),(4,'name',NULL,NULL,NULL,NULL,'PRODUCT','Product Name',NULL,'defaultSku.name',1),(5,'model',NULL,NULL,NULL,NULL,'PRODUCT','Model',NULL,'model',NULL),(6,'desc',NULL,NULL,NULL,NULL,'PRODUCT','Description',NULL,'defaultSku.description',1),(7,'ldesc',NULL,NULL,NULL,NULL,'PRODUCT','Long Description',NULL,'defaultSku.longDescription',1),(8,'color',NULL,NULL,NULL,NULL,'PRODUCT','Color',NULL,'productOptionValuesMap(COLOR)',NULL),(9,'margin',NULL,NULL,NULL,NULL,'PRODUCT','Margin',NULL,'margin',NULL);
/*!40000 ALTER TABLE `BLC_FIELD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FLD_DEF`
--

DROP TABLE IF EXISTS `BLC_FLD_DEF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FLD_DEF` (
  `FLD_DEF_ID` bigint(20) NOT NULL,
  `ALLOW_MULTIPLES` tinyint(1) DEFAULT NULL,
  `COLUMN_WIDTH` varchar(255) DEFAULT NULL,
  `FLD_ORDER` int(11) DEFAULT NULL,
  `FLD_TYPE` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `HELP_TEXT` varchar(255) DEFAULT NULL,
  `HIDDEN_FLAG` tinyint(1) DEFAULT NULL,
  `HINT` varchar(255) DEFAULT NULL,
  `MAX_LENGTH` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRED_FLAG` tinyint(1) DEFAULT NULL,
  `SECURITY_LEVEL` varchar(255) DEFAULT NULL,
  `TEXT_AREA_FLAG` tinyint(1) DEFAULT NULL,
  `TOOLTIP` varchar(255) DEFAULT NULL,
  `VLDTN_ERROR_MSSG_KEY` varchar(255) DEFAULT NULL,
  `VLDTN_REGEX` varchar(255) DEFAULT NULL,
  `ENUM_ID` bigint(20) DEFAULT NULL,
  `FLD_GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FLD_DEF_ID`),
  KEY `FK3FCB575E38D08AB5` (`ENUM_ID`),
  KEY `FK3FCB575E6A79BDB5` (`FLD_GROUP_ID`),
  CONSTRAINT `FK3FCB575E38D08AB5` FOREIGN KEY (`ENUM_ID`) REFERENCES `BLC_DATA_DRVN_ENUM` (`ENUM_ID`),
  CONSTRAINT `FK3FCB575E6A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `BLC_FLD_GROUP` (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FLD_DEF`
--

LOCK TABLES `BLC_FLD_DEF` WRITE;
/*!40000 ALTER TABLE `BLC_FLD_DEF` DISABLE KEYS */;
INSERT INTO `BLC_FLD_DEF` VALUES (-2,0,'*',1,'BOOLEAN','Plain Text',NULL,0,NULL,NULL,'plainText',NULL,NULL,0,NULL,NULL,NULL,NULL,-3),(-1,0,'*',0,'HTML','File Contents',NULL,0,NULL,NULL,'body',NULL,NULL,0,NULL,NULL,NULL,NULL,-3),(2,0,'*',1,'HTML','Body',NULL,0,NULL,NULL,'body',NULL,NULL,0,NULL,NULL,NULL,NULL,1),(3,0,'*',0,'STRING','Title',NULL,0,NULL,NULL,'title',NULL,NULL,0,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `BLC_FLD_DEF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FLD_ENUM`
--

DROP TABLE IF EXISTS `BLC_FLD_ENUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FLD_ENUM` (
  `FLD_ENUM_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FLD_ENUM`
--

LOCK TABLES `BLC_FLD_ENUM` WRITE;
/*!40000 ALTER TABLE `BLC_FLD_ENUM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FLD_ENUM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FLD_ENUM_ITEM`
--

DROP TABLE IF EXISTS `BLC_FLD_ENUM_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FLD_ENUM_ITEM` (
  `FLD_ENUM_ITEM_ID` bigint(20) NOT NULL,
  `FLD_ORDER` int(11) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `FLD_ENUM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ITEM_ID`),
  KEY `FK83A6A84AFD2EA299` (`FLD_ENUM_ID`),
  CONSTRAINT `FK83A6A84AFD2EA299` FOREIGN KEY (`FLD_ENUM_ID`) REFERENCES `BLC_FLD_ENUM` (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FLD_ENUM_ITEM`
--

LOCK TABLES `BLC_FLD_ENUM_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_FLD_ENUM_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FLD_ENUM_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FLD_GROUP`
--

DROP TABLE IF EXISTS `BLC_FLD_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FLD_GROUP` (
  `FLD_GROUP_ID` bigint(20) NOT NULL,
  `INIT_COLLAPSED_FLAG` tinyint(1) DEFAULT NULL,
  `IS_MASTER_FIELD_GROUP` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FLD_GROUP`
--

LOCK TABLES `BLC_FLD_GROUP` WRITE;
/*!40000 ALTER TABLE `BLC_FLD_GROUP` DISABLE KEYS */;
INSERT INTO `BLC_FLD_GROUP` VALUES (-3,0,NULL,'None'),(1,0,NULL,'Content');
/*!40000 ALTER TABLE `BLC_FLD_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_GROUP`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_GROUP` (
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `DELIVERY_INSTRUCTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `SHIPPING_PRICE_TAXABLE` tinyint(1) DEFAULT NULL,
  `MERCHANDISE_TOTAL` decimal(19,5) DEFAULT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `IS_PRIMARY` tinyint(1) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_SEQUNCE` int(11) DEFAULT NULL,
  `SERVICE` varchar(255) DEFAULT NULL,
  `SHIPPING_OVERRIDE` tinyint(1) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_FG_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  `PERSONAL_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `PHONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ID`),
  KEY `FG_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FG_METHOD_INDEX` (`METHOD`),
  KEY `FG_ORDER_INDEX` (`ORDER_ID`),
  KEY `FG_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FG_PHONE_INDEX` (`PHONE_ID`),
  KEY `FG_PRIMARY_INDEX` (`IS_PRIMARY`),
  KEY `FG_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `FG_SERVICE_INDEX` (`SERVICE`),
  KEY `FG_STATUS_INDEX` (`STATUS`),
  KEY `FKC5B9EF18C13085DD` (`ADDRESS_ID`),
  KEY `FKC5B9EF1881F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKC5B9EF1889FE8A02` (`ORDER_ID`),
  KEY `FKC5B9EF1877F565E1` (`PERSONAL_MESSAGE_ID`),
  KEY `FKC5B9EF18D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FKC5B9EF1877F565E1` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `BLC_PERSONAL_MESSAGE` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FKC5B9EF1881F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKC5B9EF1889FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FKC5B9EF18C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`),
  CONSTRAINT `FKC5B9EF18D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_GROUP`
--

LOCK TABLES `BLC_FULFILLMENT_GROUP` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_GROUP` DISABLE KEYS */;
INSERT INTO `BLC_FULFILLMENT_GROUP` VALUES (153,NULL,0.00000,0,47.94000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,47.94000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,151,NULL,NULL),(201,NULL,0.00000,0,11.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11.98000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,201,NULL,NULL),(251,NULL,20.00000,0,24.97000,NULL,0,NULL,20.00000,20.00000,NULL,NULL,NULL,NULL,44.97000,0.00000,0.00000,0.00000,0.00000,NULL,54,NULL,251,2,NULL),(301,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,301,NULL,NULL),(351,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,351,NULL,NULL),(401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,401,NULL,NULL),(451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,451,NULL,NULL),(501,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,501,NULL,NULL),(551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,551,NULL,NULL),(601,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,52,1,601,1,NULL),(651,NULL,20.00000,0,6.99000,NULL,0,NULL,20.00000,20.00000,NULL,NULL,NULL,NULL,26.99000,0.00000,0.00000,0.00000,0.00000,NULL,102,NULL,651,51,NULL),(701,NULL,20.00000,0,14.99000,NULL,0,NULL,20.00000,20.00000,NULL,NULL,NULL,NULL,34.99000,0.00000,0.00000,0.00000,0.00000,NULL,152,NULL,701,101,NULL),(751,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,751,NULL,NULL),(802,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,801,NULL,NULL),(851,NULL,0.00000,0,11.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11.98000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,851,NULL,NULL),(901,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,901,NULL,NULL),(951,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,951,NULL,NULL),(1002,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1001,NULL,NULL),(1051,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1051,NULL,NULL),(1101,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1101,NULL,NULL),(1151,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1151,NULL,NULL),(1201,NULL,0.00000,0,6.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,6.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1201,NULL,NULL),(1251,NULL,0.00000,0,11.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11.98000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1251,NULL,NULL),(1301,NULL,0.00000,0,14.97000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,14.97000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1301,NULL,NULL),(1351,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1351,NULL,NULL),(1401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1401,NULL,NULL),(1451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1451,NULL,NULL),(1501,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1501,NULL,NULL),(1551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1551,NULL,NULL),(1601,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1601,NULL,NULL),(1651,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1651,NULL,NULL),(1701,NULL,0.00000,0,24.97000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,24.97000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1701,NULL,NULL),(1751,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1751,NULL,NULL),(1801,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1801,NULL,NULL),(1851,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1851,NULL,NULL),(1901,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1901,NULL,NULL),(1951,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1951,NULL,NULL),(2001,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2001,NULL,NULL),(2051,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2051,NULL,NULL),(2101,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2101,NULL,NULL),(2151,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2151,NULL,NULL),(2201,NULL,0.00000,0,14.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,14.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2201,NULL,NULL),(2252,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2251,NULL,NULL),(2301,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2301,NULL,NULL),(2351,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2351,NULL,NULL),(2401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2401,NULL,NULL),(2451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2451,NULL,NULL),(2501,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2501,NULL,NULL),(2551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2551,NULL,NULL),(2601,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2601,NULL,NULL),(2651,NULL,5.00000,0,11.98000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,16.98000,0.00000,0.00000,0.00000,0.00000,NULL,202,1,2651,151,NULL),(2701,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2701,NULL,NULL),(2751,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2751,NULL,NULL),(2801,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,252,1,2801,201,NULL),(2851,NULL,5.00000,0,29.98000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,34.98000,0.00000,0.00000,0.00000,0.00000,NULL,302,1,2851,251,NULL),(2901,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,352,1,2901,301,NULL),(2951,NULL,0.00000,0,35.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,35.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,2951,NULL,NULL),(3001,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3001,NULL,NULL),(3051,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3051,NULL,NULL),(3101,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,402,1,3101,351,NULL),(3151,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3151,NULL,NULL),(3201,NULL,5.00000,0,4.99000,NULL,0,NULL,5.00000,5.00000,NULL,NULL,NULL,NULL,9.99000,0.00000,0.00000,0.00000,0.00000,NULL,502,1,3201,401,NULL),(3251,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3251,NULL,NULL),(3252,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3252,NULL,NULL),(3301,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,602,1,3301,451,NULL),(3351,NULL,0.00000,0,29.98000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,29.98000,0.00000,0.00000,0.00000,0.00000,NULL,652,1,3351,501,NULL),(3401,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3401,NULL,NULL),(3402,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3402,NULL,NULL),(3451,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3451,NULL,NULL),(3501,NULL,0.00000,0,200.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,200.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3501,NULL,NULL),(3551,NULL,0.00000,0,4.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3551,NULL,NULL),(3601,NULL,0.00000,0,31000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,31000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3601,NULL,NULL),(3702,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3702,NULL,NULL),(3703,NULL,0.00000,0,250.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,250.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3701,NULL,NULL),(3751,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3751,NULL,NULL),(3801,NULL,0.00000,0,30.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,30.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3801,NULL,NULL),(3802,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,703,1,3802,551,NULL),(3851,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3851,NULL,NULL),(3901,NULL,0.00000,0,40.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,40.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3901,NULL,NULL),(3951,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,3951,NULL,NULL),(4001,NULL,0.00000,0,350.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,350.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4001,NULL,NULL),(4051,NULL,0.00000,0,80.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,80.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4051,NULL,NULL),(4101,NULL,0.00000,0,40.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,40.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4101,NULL,NULL),(4151,NULL,0.00000,0,340.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,340.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4151,NULL,NULL),(4201,NULL,0.00000,0,2520.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,2520.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4201,NULL,NULL),(4251,NULL,0.00000,0,15040.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,15040.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4251,NULL,NULL),(4302,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4301,NULL,NULL),(4303,NULL,0.00000,0,4570.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4570.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4302,NULL,NULL),(4351,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4351,NULL,NULL),(4401,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4401,NULL,NULL),(4451,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4451,NULL,NULL),(4501,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4501,NULL,NULL),(4551,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,904,1,4551,603,NULL),(4601,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,952,1,4601,651,NULL),(4651,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4651,NULL,NULL),(4701,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4701,NULL,NULL),(4751,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4751,NULL,NULL),(4801,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1052,1,4801,701,NULL),(4802,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4802,NULL,NULL),(4851,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4851,NULL,NULL),(4901,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4901,NULL,NULL),(4951,NULL,0.00000,0,15040.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,15040.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,4951,NULL,NULL),(5001,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5001,NULL,NULL),(5002,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5002,NULL,NULL),(5051,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5051,NULL,NULL),(5101,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5101,NULL,NULL),(5151,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5151,NULL,NULL),(5152,NULL,0.00000,0,470.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,470.00000,0.00000,0.00000,0.00000,0.00000,NULL,1102,1,5152,751,NULL),(5201,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5201,NULL,NULL),(5251,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5251,NULL,NULL),(5301,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5301,NULL,NULL),(5351,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5351,NULL,NULL),(5401,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1152,1,5401,801,NULL),(5402,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1154,1,5402,802,NULL),(5403,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1156,1,5403,803,NULL),(5451,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1202,1,5451,851,NULL),(5501,NULL,0.00000,0,30.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,30.00000,0.00000,0.00000,0.00000,0.00000,NULL,1252,1,5501,901,NULL),(5502,NULL,0.00000,0,110.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,110.00000,0.00000,0.00000,0.00000,0.00000,NULL,1254,1,5502,902,NULL),(5503,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1256,1,5503,903,NULL),(5551,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1302,1,5551,951,NULL),(5601,NULL,0.00000,0,50000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,50000.00000,0.00000,0.00000,0.00000,0.00000,NULL,1352,1,5601,1001,NULL),(5651,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1402,1,5651,1051,NULL),(5701,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1452,1,5701,1101,NULL),(5751,NULL,0.00000,0,700.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,700.00000,0.00000,0.00000,0.00000,0.00000,NULL,1502,1,5751,1151,NULL),(5752,NULL,0.00000,0,15.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,15.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5752,NULL,NULL),(5754,NULL,0.00000,0,2200.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,2200.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5754,NULL,NULL),(5755,NULL,0.00000,0,20800.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20800.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5755,NULL,NULL),(5756,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1506,1,5756,1154,NULL),(5757,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5757,NULL,NULL),(5758,NULL,0.00000,0,200.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,200.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5758,NULL,NULL),(5801,NULL,0.00000,0,600.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,600.00000,0.00000,0.00000,0.00000,0.00000,NULL,1552,1,5801,1201,NULL),(5851,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1602,1,5851,1251,NULL),(5901,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1652,1,5901,1301,NULL),(5902,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1654,1,5902,1302,NULL),(5903,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1656,1,5903,1303,NULL),(5951,NULL,0.00000,0,40.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,40.00000,0.00000,0.00000,0.00000,0.00000,NULL,1702,1,5951,1351,NULL),(5952,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,1704,1,5952,1352,NULL),(5953,NULL,0.00000,0,10000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,10000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5953,NULL,NULL),(5954,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1706,1,5954,1353,NULL),(5955,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5955,NULL,NULL),(5956,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,5956,NULL,NULL),(6001,NULL,0.00000,0,60.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,60.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6001,NULL,NULL),(6051,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6051,NULL,NULL),(6101,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,1802,1,6101,1401,NULL),(6102,NULL,0.00000,0,50000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,50000.00000,0.00000,0.00000,0.00000,0.00000,NULL,1804,1,6102,1402,NULL),(6151,NULL,0.00000,0,10000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,10000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6151,NULL,NULL),(6201,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6201,NULL,NULL),(6251,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6251,NULL,NULL),(6301,NULL,0.00000,0,270.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,270.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6301,NULL,NULL),(6303,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6303,NULL,NULL),(6304,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,1852,1,6304,1451,NULL),(6305,NULL,0.00000,0,200.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,200.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6305,NULL,NULL),(6351,NULL,0.00000,0,250.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,250.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6351,NULL,NULL),(6401,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6401,NULL,NULL),(6403,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6403,NULL,NULL),(6404,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6404,NULL,NULL),(6405,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6405,NULL,NULL),(6406,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6406,NULL,NULL),(6407,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,1903,1,6407,1501,NULL),(6451,NULL,0.00000,0,27600.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,27600.00000,0.00000,0.00000,0.00000,0.00000,NULL,1952,1,6451,1551,NULL),(6452,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6452,NULL,NULL),(6501,NULL,0.00000,0,5200.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5200.00000,0.00000,0.00000,0.00000,0.00000,NULL,2002,1,6501,1601,NULL),(6551,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,2052,1,6551,1651,NULL),(6552,NULL,0.00000,0,4000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6552,NULL,NULL),(6553,NULL,0.00000,0,4000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4000.00000,0.00000,0.00000,0.00000,0.00000,NULL,2055,1,6553,1652,NULL),(6556,NULL,0.00000,0,20000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6555,NULL,NULL),(6601,NULL,0.00000,0,12000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,12000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6601,NULL,NULL),(6602,NULL,0.00000,0,9000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,9000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6603,NULL,NULL),(6651,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6651,NULL,NULL),(6652,NULL,0.00000,0,6400.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,6400.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6652,NULL,NULL),(6654,NULL,0.00000,0,20.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,20.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6653,NULL,NULL),(6701,NULL,0.00000,0,10000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,10000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6701,NULL,NULL),(6751,NULL,0.00000,0,4000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6751,NULL,NULL),(6801,NULL,0.00000,0,15000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,15000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6801,NULL,NULL),(6851,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6851,NULL,NULL),(6852,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6852,NULL,NULL),(6853,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6853,NULL,NULL),(6854,NULL,0.00000,0,9000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,9000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6854,NULL,NULL),(6855,NULL,0.00000,0,800.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,800.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6855,NULL,NULL),(6902,NULL,0.00000,0,10000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,10000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6902,NULL,NULL),(6951,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,6951,NULL,NULL),(7001,NULL,0.00000,0,5000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,5000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7001,NULL,NULL),(7002,NULL,0.00000,0,2800.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,2800.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7002,NULL,NULL),(7003,NULL,0.00000,0,9000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,9000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7003,NULL,NULL),(7004,NULL,0.00000,0,10000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,10000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7004,NULL,NULL),(7005,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7005,NULL,NULL),(7006,NULL,0.00000,0,11000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,11000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7006,NULL,NULL),(7007,NULL,0.00000,0,2800.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,2800.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7007,NULL,NULL),(7008,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7008,NULL,NULL),(7051,NULL,0.00000,0,16000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,16000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7051,NULL,NULL),(7052,NULL,0.00000,0,14500.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,14500.00000,0.00000,0.00000,0.00000,0.00000,NULL,2102,1,7052,1701,NULL),(7053,NULL,0.00000,0,4000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,4000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7053,NULL,NULL),(7101,NULL,0.00000,0,43900.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,43900.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7101,NULL,NULL),(7102,NULL,0.00000,0,24020.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,24020.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7103,NULL,NULL),(7103,NULL,0.00000,0,14000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,14000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7104,NULL,NULL),(7104,NULL,0.00000,0,29500.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,29500.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7105,NULL,NULL),(7105,NULL,0.00000,0,47500.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,47500.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7106,NULL,NULL),(7106,NULL,0.00000,0,8000.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,8000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7108,NULL,NULL),(7107,NULL,0.00000,0,64350.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,64350.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7109,NULL,NULL),(7108,NULL,0.00000,0,63100.00000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,63100.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,7110,NULL,NULL);
/*!40000 ALTER TABLE `BLC_FULFILLMENT_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_GROUP_FEE`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_GROUP_FEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_GROUP_FEE` (
  `FULFILLMENT_GROUP_FEE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `FEE_TAXABLE_FLAG` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_FEE_ID`),
  KEY `FK6AA8E1BF5028DC55` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK6AA8E1BF5028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `BLC_FULFILLMENT_GROUP` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_GROUP_FEE`
--

LOCK TABLES `BLC_FULFILLMENT_GROUP_FEE` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_GROUP_FEE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_GROUP_FEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_GROUP_ITEM`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_GROUP_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_GROUP_ITEM` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint(20) NOT NULL,
  `PRORATED_ORDER_ADJ` decimal(19,2) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL_ITEM_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAXABLE_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ITEM_ID`),
  KEY `FGITEM_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGITEM_STATUS_INDEX` (`STATUS`),
  KEY `FKEA74EBDA5028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FKEA74EBDA9AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKEA74EBDA5028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `BLC_FULFILLMENT_GROUP` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKEA74EBDA9AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_GROUP_ITEM`
--

LOCK TABLES `BLC_FULFILLMENT_GROUP_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_GROUP_ITEM` DISABLE KEYS */;
INSERT INTO `BLC_FULFILLMENT_GROUP_ITEM` VALUES (155,0.00,5,NULL,34.95000,34.95000,0.00000,153,155),(156,0.00,1,NULL,12.99000,12.99000,0.00000,153,156),(201,0.00,1,NULL,4.99000,4.99000,0.00000,201,201),(202,0.00,1,NULL,6.99000,6.99000,0.00000,201,202),(251,0.00,1,NULL,4.99000,4.99000,0.00000,251,251),(252,0.00,1,NULL,6.99000,6.99000,0.00000,251,252),(253,0.00,1,NULL,12.99000,12.99000,0.00000,251,253),(301,0.00,1,NULL,4.99000,4.99000,0.00000,301,301),(351,0.00,1,NULL,4.99000,4.99000,0.00000,351,351),(401,0.00,1,NULL,4.99000,4.99000,0.00000,401,401),(451,0.00,1,NULL,4.99000,4.99000,0.00000,451,451),(501,0.00,1,NULL,4.99000,4.99000,0.00000,501,501),(551,0.00,1,NULL,4.99000,4.99000,0.00000,551,551),(601,0.00,1,NULL,4.99000,4.99000,0.00000,601,601),(651,0.00,1,NULL,6.99000,6.99000,0.00000,651,651),(701,0.00,1,NULL,14.99000,14.99000,0.00000,701,701),(751,0.00,1,NULL,4.99000,4.99000,0.00000,751,751),(802,0.00,1,NULL,4.99000,4.99000,0.00000,802,802),(851,0.00,1,NULL,4.99000,4.99000,0.00000,851,851),(852,0.00,1,NULL,6.99000,6.99000,0.00000,851,852),(901,0.00,1,NULL,4.99000,4.99000,0.00000,901,901),(951,0.00,1,NULL,4.99000,4.99000,0.00000,951,951),(1002,0.00,1,NULL,4.99000,4.99000,0.00000,1002,1002),(1051,0.00,1,NULL,4.99000,4.99000,0.00000,1051,1051),(1101,0.00,1,NULL,4.99000,4.99000,0.00000,1101,1101),(1151,0.00,1,NULL,4.99000,4.99000,0.00000,1151,1151),(1201,0.00,1,NULL,6.99000,6.99000,0.00000,1201,1201),(1251,0.00,1,NULL,4.99000,4.99000,0.00000,1251,1251),(1252,0.00,1,NULL,6.99000,6.99000,0.00000,1251,1252),(1301,0.00,3,NULL,14.97000,14.97000,0.00000,1301,1301),(1351,0.00,1,NULL,4.99000,4.99000,0.00000,1351,1351),(1401,0.00,1,NULL,4.99000,4.99000,0.00000,1401,1401),(1451,0.00,1,NULL,4.99000,4.99000,0.00000,1451,1451),(1501,0.00,1,NULL,4.99000,4.99000,0.00000,1501,1501),(1551,0.00,1,NULL,4.99000,4.99000,0.00000,1551,1551),(1601,0.00,1,NULL,4.99000,4.99000,0.00000,1601,1601),(1651,0.00,1,NULL,4.99000,4.99000,0.00000,1651,1651),(1701,0.00,1,NULL,4.99000,4.99000,0.00000,1701,1701),(1702,0.00,1,NULL,6.99000,6.99000,0.00000,1701,1702),(1703,0.00,1,NULL,12.99000,12.99000,0.00000,1701,1703),(1751,0.00,1,NULL,4.99000,4.99000,0.00000,1751,1751),(1801,0.00,1,NULL,4.99000,4.99000,0.00000,1801,1801),(1851,0.00,1,NULL,4.99000,4.99000,0.00000,1851,1851),(1901,0.00,1,NULL,4.99000,4.99000,0.00000,1901,1901),(1951,0.00,1,NULL,4.99000,4.99000,0.00000,1951,1951),(2001,0.00,1,NULL,4.99000,4.99000,0.00000,2001,2001),(2051,0.00,1,NULL,4.99000,4.99000,0.00000,2051,2051),(2101,0.00,1,NULL,4.99000,4.99000,0.00000,2101,2101),(2151,0.00,1,NULL,4.99000,4.99000,0.00000,2151,2151),(2201,0.00,1,NULL,14.99000,14.99000,0.00000,2201,2201),(2252,0.00,1,NULL,4.99000,4.99000,0.00000,2252,2252),(2301,0.00,1,NULL,4.99000,4.99000,0.00000,2301,2301),(2351,0.00,1,NULL,4.99000,4.99000,0.00000,2351,2351),(2401,0.00,1,NULL,4.99000,4.99000,0.00000,2401,2401),(2451,0.00,1,NULL,4.99000,4.99000,0.00000,2451,2451),(2501,0.00,1,NULL,4.99000,4.99000,0.00000,2501,2501),(2551,0.00,1,NULL,4.99000,4.99000,0.00000,2551,2551),(2601,0.00,1,NULL,4.99000,4.99000,0.00000,2601,2601),(2651,0.00,1,NULL,4.99000,4.99000,0.00000,2651,2651),(2652,0.00,1,NULL,6.99000,6.99000,0.00000,2651,2652),(2701,0.00,1,NULL,4.99000,4.99000,0.00000,2701,2701),(2751,0.00,1,NULL,4.99000,4.99000,0.00000,2751,2751),(2801,0.00,1,NULL,4.99000,4.99000,0.00000,2801,2801),(2851,0.00,2,NULL,29.98000,29.98000,0.00000,2851,2851),(2901,0.00,1,NULL,4.99000,4.99000,0.00000,2901,2901),(2951,0.00,2,NULL,20.00000,0.00000,0.00000,2951,2951),(2952,0.00,1,NULL,15.00000,0.00000,0.00000,2951,2952),(3001,0.00,1,NULL,4.99000,4.99000,0.00000,3001,3001),(3051,0.00,1,NULL,4.99000,4.99000,0.00000,3051,3051),(3101,0.00,1,NULL,4.99000,4.99000,0.00000,3101,3101),(3151,0.00,1,NULL,4.99000,4.99000,0.00000,3151,3151),(3201,0.00,1,NULL,4.99000,4.99000,0.00000,3201,3201),(3251,0.00,1,NULL,4.99000,4.99000,0.00000,3251,3251),(3252,0.00,1,NULL,4.99000,4.99000,0.00000,3252,3252),(3301,0.00,1,NULL,4.99000,4.99000,0.00000,3301,3301),(3351,0.00,2,NULL,29.98000,29.98000,0.00000,3351,3351),(3401,0.00,1,NULL,4.99000,4.99000,0.00000,3401,3401),(3402,0.00,1,NULL,4.99000,4.99000,0.00000,3402,3402),(3451,0.00,1,NULL,4.99000,4.99000,0.00000,3451,3451),(3501,0.00,1,NULL,200.00000,200.00000,0.00000,3501,3501),(3551,0.00,1,NULL,4.99000,4.99000,0.00000,3551,3551),(3601,0.00,1,NULL,31000.00000,31000.00000,0.00000,3601,3601),(3702,0.00,1,NULL,20000.00000,20000.00000,0.00000,3702,3702),(3703,0.00,1,NULL,250.00000,250.00000,0.00000,3703,3703),(3751,0.00,1000,NULL,20000.00000,20000.00000,0.00000,3751,3751),(3801,0.00,1,NULL,30.00000,30.00000,0.00000,3801,3801),(3802,0.00,1,NULL,20.00000,20.00000,0.00000,3802,3802),(3851,0.00,1,NULL,20.00000,20.00000,0.00000,3851,3851),(3901,0.00,1,NULL,20.00000,20.00000,0.00000,3901,3901),(3902,0.00,1,NULL,20.00000,20.00000,0.00000,3901,3902),(3951,0.00,1,NULL,20.00000,20.00000,0.00000,3951,3951),(4001,0.00,1,NULL,20.00000,20.00000,0.00000,4001,4001),(4002,0.00,1,NULL,30.00000,30.00000,0.00000,4001,4002),(4003,0.00,1,NULL,300.00000,300.00000,0.00000,4001,4003),(4051,0.00,3,NULL,60.00000,60.00000,0.00000,4051,4051),(4052,0.00,1,NULL,20.00000,20.00000,0.00000,4051,4052),(4101,0.00,1,NULL,20.00000,20.00000,0.00000,4101,4101),(4102,0.00,1,NULL,20.00000,20.00000,0.00000,4101,4102),(4151,0.00,1,NULL,20.00000,20.00000,0.00000,4151,4151),(4152,0.00,1,NULL,20.00000,20.00000,0.00000,4151,4152),(4153,0.00,2,NULL,300.00000,300.00000,0.00000,4151,4153),(4201,0.00,1,NULL,20.00000,20.00000,0.00000,4201,4201),(4202,0.00,1,NULL,2500.00000,2500.00000,0.00000,4201,4202),(4251,0.00,1,NULL,20.00000,20.00000,0.00000,4251,4251),(4252,0.00,1,NULL,20.00000,20.00000,0.00000,4251,4252),(4253,0.00,1,NULL,15000.00000,15000.00000,0.00000,4251,4253),(4306,0.00,1,NULL,20.00000,20.00000,0.00000,4302,4306),(4307,0.00,1,NULL,4500.00000,4500.00000,0.00000,4303,4307),(4308,0.00,1,NULL,30.00000,30.00000,0.00000,4303,4308),(4309,0.00,1,NULL,40.00000,40.00000,0.00000,4303,4309),(4351,0.00,1,NULL,20.00000,20.00000,0.00000,4351,4351),(4401,0.00,1,NULL,20.00000,20.00000,0.00000,4401,4401),(4451,0.00,1,NULL,20.00000,20.00000,0.00000,4451,4451),(4501,0.00,1,NULL,20.00000,20.00000,0.00000,4501,4501),(4551,0.00,1,NULL,20.00000,20.00000,0.00000,4551,4551),(4601,0.00,1,NULL,20.00000,20.00000,0.00000,4601,4601),(4651,0.00,1,NULL,20.00000,20.00000,0.00000,4651,4651),(4701,0.00,1,NULL,20.00000,20.00000,0.00000,4701,4701),(4751,0.00,1,NULL,20.00000,20.00000,0.00000,4751,4751),(4801,0.00,1,NULL,20.00000,20.00000,0.00000,4801,4801),(4802,0.00,1,NULL,20.00000,20.00000,0.00000,4802,4802),(4851,0.00,1,NULL,20.00000,20.00000,0.00000,4851,4851),(4901,0.00,1,NULL,20.00000,20.00000,0.00000,4901,4901),(4951,0.00,1,NULL,20.00000,20.00000,0.00000,4951,4951),(4952,0.00,1,NULL,20.00000,20.00000,0.00000,4951,4952),(4953,0.00,1,NULL,15000.00000,15000.00000,0.00000,4951,4953),(5001,0.00,1,NULL,20.00000,20.00000,0.00000,5001,5001),(5002,0.00,1,NULL,20.00000,20.00000,0.00000,5002,5002),(5051,0.00,1,NULL,20.00000,20.00000,0.00000,5051,5051),(5101,0.00,1,NULL,20.00000,20.00000,0.00000,5101,5101),(5151,0.00,1,NULL,20.00000,20.00000,0.00000,5151,5151),(5152,0.00,1,NULL,20.00000,20.00000,0.00000,5152,5152),(5153,0.00,3,NULL,450.00000,450.00000,0.00000,5152,5153),(5201,0.00,1,NULL,20.00000,20.00000,0.00000,5201,5201),(5251,0.00,1,NULL,20.00000,20.00000,0.00000,5251,5251),(5301,0.00,1,NULL,20.00000,20.00000,0.00000,5301,5301),(5351,0.00,1,NULL,20.00000,20.00000,0.00000,5351,5351),(5401,0.00,1,NULL,20.00000,20.00000,0.00000,5401,5401),(5402,0.00,1,NULL,20.00000,20.00000,0.00000,5402,5402),(5403,0.00,1,NULL,20.00000,20.00000,0.00000,5403,5403),(5451,0.00,1,NULL,20.00000,20.00000,0.00000,5451,5451),(5501,0.00,1,NULL,30.00000,30.00000,0.00000,5501,5501),(5502,0.00,2,NULL,80.00000,80.00000,0.00000,5502,5502),(5503,0.00,1,NULL,30.00000,30.00000,0.00000,5502,5503),(5504,0.00,1,NULL,20.00000,20.00000,0.00000,5503,5504),(5551,0.00,1,NULL,20.00000,20.00000,0.00000,5551,5551),(5601,0.00,1,NULL,50000.00000,50000.00000,0.00000,5601,5601),(5651,0.00,1,NULL,20.00000,20.00000,0.00000,5651,5651),(5701,0.00,1,NULL,20.00000,20.00000,0.00000,5701,5701),(5751,0.00,2,NULL,700.00000,700.00000,0.00000,5751,5751),(5752,0.00,1,NULL,15.00000,0.00000,0.00000,5752,5752),(5755,0.00,110,NULL,2200.00000,2200.00000,0.00000,5754,5755),(5756,0.00,1,NULL,8000.00000,8000.00000,0.00000,5755,5756),(5757,0.00,1,NULL,12800.00000,12800.00000,0.00000,5755,5757),(5758,0.00,1,NULL,20.00000,20.00000,0.00000,5756,5758),(5759,0.00,1,NULL,20.00000,20.00000,0.00000,5757,5759),(5760,0.00,1,NULL,200.00000,200.00000,0.00000,5758,5760),(5801,0.00,3,NULL,600.00000,600.00000,0.00000,5801,5801),(5851,0.00,1,NULL,20.00000,20.00000,0.00000,5851,5851),(5901,0.00,1,NULL,20.00000,20.00000,0.00000,5901,5901),(5902,0.00,1,NULL,20.00000,20.00000,0.00000,5902,5902),(5903,0.00,1,NULL,20.00000,20.00000,0.00000,5903,5903),(5951,0.00,2,NULL,40.00000,40.00000,0.00000,5951,5951),(5952,0.00,1,NULL,20000.00000,20000.00000,0.00000,5952,5952),(5953,0.00,1,NULL,10000.00000,10000.00000,0.00000,5953,5953),(5954,0.00,1,NULL,20.00000,20.00000,0.00000,5954,5954),(5955,0.00,1,NULL,20.00000,20.00000,0.00000,5955,5955),(5956,0.00,1,NULL,20.00000,20.00000,0.00000,5956,5956),(6001,0.00,2,NULL,40.00000,40.00000,0.00000,6001,6001),(6003,0.00,1,NULL,20.00000,20.00000,0.00000,6001,6002),(6052,0.00,1,NULL,20.00000,20.00000,0.00000,6051,6052),(6101,0.00,1,NULL,20.00000,20.00000,0.00000,6101,6101),(6102,0.00,1,NULL,50000.00000,50000.00000,0.00000,6102,6102),(6151,0.00,2,NULL,10000.00000,10000.00000,0.00000,6151,6151),(6201,0.00,1,NULL,5000.00000,5000.00000,0.00000,6201,6201),(6251,0.00,1,NULL,5000.00000,5000.00000,0.00000,6251,6251),(6301,0.00,1,NULL,20.00000,20.00000,0.00000,6301,6301),(6302,0.00,1,NULL,250.00000,250.00000,0.00000,6301,6302),(6304,0.00,1,NULL,5000.00000,5000.00000,0.00000,6303,6304),(6305,0.00,1,NULL,5000.00000,5000.00000,0.00000,6304,6305),(6306,0.00,1,NULL,200.00000,200.00000,0.00000,6305,6306),(6351,0.00,1,NULL,250.00000,250.00000,0.00000,6351,6351),(6401,0.00,1,NULL,5000.00000,5000.00000,0.00000,6401,6401),(6403,0.00,1,NULL,5000.00000,5000.00000,0.00000,6403,6403),(6404,0.00,1,NULL,8000.00000,8000.00000,0.00000,6404,6404),(6405,0.00,1,NULL,5000.00000,5000.00000,0.00000,6405,6405),(6406,0.00,1,NULL,8000.00000,8000.00000,0.00000,6406,6406),(6407,0.00,1,NULL,5000.00000,5000.00000,0.00000,6407,6407),(6451,0.00,1,NULL,5600.00000,5600.00000,0.00000,6451,6451),(6452,0.00,1,NULL,15000.00000,15000.00000,0.00000,6451,6452),(6453,0.00,1,NULL,7000.00000,7000.00000,0.00000,6451,6453),(6454,0.00,1,NULL,20000.00000,20000.00000,0.00000,6452,6454),(6501,0.00,1,NULL,5000.00000,5000.00000,0.00000,6501,6501),(6502,0.00,1,NULL,200.00000,200.00000,0.00000,6501,6502),(6551,0.00,1,NULL,5000.00000,5000.00000,0.00000,6551,6551),(6552,0.00,1,NULL,4000.00000,4000.00000,0.00000,6552,6552),(6553,0.00,1,NULL,4000.00000,4000.00000,0.00000,6553,6553),(6556,0.00,1,NULL,20000.00000,20000.00000,0.00000,6556,6556),(6601,0.00,1,NULL,12000.00000,12000.00000,0.00000,6601,6601),(6602,0.00,1,NULL,9000.00000,9000.00000,0.00000,6602,6602),(6651,0.00,1,NULL,5000.00000,5000.00000,0.00000,6651,6651),(6652,0.00,8,NULL,6400.00000,6400.00000,0.00000,6652,6652),(6654,0.00,1,NULL,20.00000,20.00000,0.00000,6654,6654),(6701,0.00,1,NULL,10000.00000,10000.00000,0.00000,6701,6701),(6751,0.00,1,NULL,4000.00000,4000.00000,0.00000,6751,6751),(6801,0.00,1,NULL,15000.00000,15000.00000,0.00000,6801,6801),(6851,0.00,1,NULL,8000.00000,8000.00000,0.00000,6851,6851),(6852,0.00,1,NULL,5000.00000,5000.00000,0.00000,6852,6852),(6853,0.00,1,NULL,8000.00000,8000.00000,0.00000,6853,6853),(6854,0.00,1,NULL,9000.00000,9000.00000,0.00000,6854,6854),(6855,0.00,2,NULL,800.00000,800.00000,0.00000,6855,6855),(6902,0.00,2,NULL,10000.00000,10000.00000,0.00000,6902,6902),(6951,0.00,2,NULL,8000.00000,8000.00000,0.00000,6951,6951),(7001,0.00,1,NULL,5000.00000,5000.00000,0.00000,7001,7001),(7002,0.00,1,NULL,2800.00000,2800.00000,0.00000,7002,7002),(7003,0.00,1,NULL,9000.00000,9000.00000,0.00000,7003,7003),(7004,0.00,1,NULL,10000.00000,10000.00000,0.00000,7004,7004),(7005,0.00,1,NULL,8000.00000,8000.00000,0.00000,7005,7005),(7006,0.00,1,NULL,11000.00000,11000.00000,0.00000,7006,7006),(7007,0.00,1,NULL,2800.00000,2800.00000,0.00000,7007,7007),(7008,0.00,1,NULL,8000.00000,8000.00000,0.00000,7008,7008),(7052,0.00,1,NULL,16000.00000,16000.00000,0.00000,7051,7052),(7053,0.00,1,NULL,12000.00000,12000.00000,0.00000,7052,7053),(7054,0.00,1,NULL,2500.00000,2500.00000,0.00000,7052,7054),(7055,0.00,1,NULL,4000.00000,4000.00000,0.00000,7053,7055),(7101,0.00,1,NULL,5100.00000,5100.00000,0.00000,7101,7101),(7102,0.00,1,NULL,20000.00000,20000.00000,0.00000,7101,7102),(7103,0.00,1,NULL,18000.00000,18000.00000,0.00000,7101,7103),(7104,0.00,1,NULL,800.00000,800.00000,0.00000,7101,7104),(7105,0.00,1,NULL,20000.00000,20000.00000,0.00000,7102,7105),(7106,0.00,1,NULL,4000.00000,4000.00000,0.00000,7102,7106),(7107,0.00,1,NULL,20.00000,20.00000,0.00000,7102,7107),(7108,0.00,1,NULL,14000.00000,14000.00000,0.00000,7103,7108),(7109,0.00,1,NULL,4000.00000,4000.00000,0.00000,7104,7109),(7110,0.00,1,NULL,9000.00000,9000.00000,0.00000,7104,7110),(7111,0.00,1,NULL,4500.00000,4500.00000,0.00000,7104,7111),(7112,0.00,1,NULL,8000.00000,8000.00000,0.00000,7104,7112),(7113,0.00,5,NULL,4000.00000,4000.00000,0.00000,7104,7113),(7115,0.00,5,NULL,4000.00000,4000.00000,0.00000,7105,7115),(7116,0.00,1,NULL,8000.00000,8000.00000,0.00000,7105,7116),(7117,0.00,1,NULL,4000.00000,4000.00000,0.00000,7105,7117),(7118,0.00,1,NULL,9000.00000,9000.00000,0.00000,7105,7118),(7119,0.00,1,NULL,18000.00000,18000.00000,0.00000,7105,7119),(7120,0.00,1,NULL,4500.00000,4500.00000,0.00000,7105,7120),(7121,0.00,1,NULL,8000.00000,8000.00000,0.00000,7106,7121),(7122,0.00,10,NULL,2500.00000,2500.00000,0.00000,7107,7122),(7123,0.00,5,NULL,2750.00000,2750.00000,0.00000,7107,7123),(7124,0.00,1,NULL,600.00000,600.00000,0.00000,7107,7124),(7125,0.00,100,NULL,3000.00000,3000.00000,0.00000,7107,7125),(7126,0.00,10,NULL,3500.00000,3500.00000,0.00000,7107,7126),(7127,0.00,2,NULL,2000.00000,2000.00000,0.00000,7107,7127),(7128,0.00,1,NULL,15000.00000,15000.00000,0.00000,7107,7128),(7129,0.00,5,NULL,1000.00000,1000.00000,0.00000,7107,7129),(7130,0.00,1,NULL,9000.00000,9000.00000,0.00000,7107,7130),(7131,0.00,2,NULL,5000.00000,5000.00000,0.00000,7107,7131),(7132,0.00,1,NULL,20000.00000,20000.00000,0.00000,7107,7132),(7133,0.00,10,NULL,2500.00000,2500.00000,0.00000,7108,7133),(7134,0.00,2,NULL,1100.00000,1100.00000,0.00000,7108,7134),(7135,0.00,1,NULL,600.00000,600.00000,0.00000,7108,7135),(7136,0.00,1,NULL,6000.00000,6000.00000,0.00000,7108,7136),(7137,0.00,10,NULL,3500.00000,3500.00000,0.00000,7108,7137),(7138,0.00,120,NULL,3600.00000,3600.00000,0.00000,7108,7138),(7140,0.00,1,NULL,800.00000,800.00000,0.00000,7108,7140),(7141,0.00,1,NULL,20000.00000,20000.00000,0.00000,7108,7141),(7142,0.00,1,NULL,9000.00000,9000.00000,0.00000,7108,7142),(7143,0.00,1,NULL,7500.00000,7500.00000,0.00000,7108,7143),(7144,0.00,5,NULL,4000.00000,4000.00000,0.00000,7108,7144),(7145,0.00,1,NULL,4500.00000,4500.00000,0.00000,7108,7145);
/*!40000 ALTER TABLE `BLC_FULFILLMENT_GROUP_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_OPTION`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_OPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_OPTION` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  `FULFILLMENT_TYPE` varchar(255) NOT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE` tinyint(1) DEFAULT NULL,
  `USE_FLAT_RATES` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_OPTION`
--

LOCK TABLES `BLC_FULFILLMENT_OPTION` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPTION` DISABLE KEYS */;
INSERT INTO `BLC_FULFILLMENT_OPTION` VALUES (1,'PHYSICAL_SHIP','Normal','Standard',NULL,NULL,0);
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_OPTION_FIXED`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_OPTION_FIXED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_OPTION_FIXED` (
  `PRICE` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FK408360313E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK4083603181F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK408360313E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`),
  CONSTRAINT `FK4083603181F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_OPTION_FIXED`
--

LOCK TABLES `BLC_FULFILLMENT_OPTION_FIXED` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPTION_FIXED` DISABLE KEYS */;
INSERT INTO `BLC_FULFILLMENT_OPTION_FIXED` VALUES (0.00000,1,NULL);
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPTION_FIXED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_OPT_BANDED_PRC`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_OPT_BANDED_PRC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_OPT_BANDED_PRC` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKB1FD71E981F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB1FD71E981F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_OPT_BANDED_PRC`
--

LOCK TABLES `BLC_FULFILLMENT_OPT_BANDED_PRC` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPT_BANDED_PRC` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPT_BANDED_PRC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_OPT_BANDED_WGT`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_OPT_BANDED_WGT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_OPT_BANDED_WGT` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKB1FD8AEC81F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB1FD8AEC81F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_OPT_BANDED_WGT`
--

LOCK TABLES `BLC_FULFILLMENT_OPT_BANDED_WGT` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPT_BANDED_WGT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_OPT_BANDED_WGT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_PRICE_BAND`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_PRICE_BAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_PRICE_BAND` (
  `FULFILLMENT_PRICE_BAND_ID` bigint(20) NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `RETAIL_PRICE_MINIMUM_AMOUNT` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_PRICE_BAND_ID`),
  KEY `FK46C9EA726CDF59CA` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK46C9EA726CDF59CA` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPT_BANDED_PRC` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_PRICE_BAND`
--

LOCK TABLES `BLC_FULFILLMENT_PRICE_BAND` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_PRICE_BAND` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_PRICE_BAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_FULFILLMENT_WEIGHT_BAND`
--

DROP TABLE IF EXISTS `BLC_FULFILLMENT_WEIGHT_BAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_FULFILLMENT_WEIGHT_BAND` (
  `FULFILLMENT_WEIGHT_BAND_ID` bigint(20) NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `MINIMUM_WEIGHT` decimal(19,5) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_WEIGHT_BAND_ID`),
  KEY `FK6A048D95A0B429C3` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK6A048D95A0B429C3` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPT_BANDED_WGT` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_FULFILLMENT_WEIGHT_BAND`
--

LOCK TABLES `BLC_FULFILLMENT_WEIGHT_BAND` WRITE;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_WEIGHT_BAND` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_FULFILLMENT_WEIGHT_BAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_GIFTWRAP_ORDER_ITEM`
--

DROP TABLE IF EXISTS `BLC_GIFTWRAP_ORDER_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_GIFTWRAP_ORDER_ITEM` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FKE1BE1563B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKE1BE1563B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_DISCRETE_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_GIFTWRAP_ORDER_ITEM`
--

LOCK TABLES `BLC_GIFTWRAP_ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_GIFTWRAP_ORDER_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_GIFTWRAP_ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_GIFT_CARD_PAYMENT`
--

DROP TABLE IF EXISTS `BLC_GIFT_CARD_PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_GIFT_CARD_PAYMENT` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `PIN` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `GIFTCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_GIFT_CARD_PAYMENT`
--

LOCK TABLES `BLC_GIFT_CARD_PAYMENT` WRITE;
/*!40000 ALTER TABLE `BLC_GIFT_CARD_PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_GIFT_CARD_PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ID_GENERATION`
--

DROP TABLE IF EXISTS `BLC_ID_GENERATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ID_GENERATION` (
  `ID_TYPE` varchar(255) NOT NULL,
  `BATCH_SIZE` bigint(20) NOT NULL,
  `BATCH_START` bigint(20) NOT NULL,
  `ID_MIN` bigint(20) DEFAULT NULL,
  `ID_MAX` bigint(20) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ID_GENERATION`
--

LOCK TABLES `BLC_ID_GENERATION` WRITE;
/*!40000 ALTER TABLE `BLC_ID_GENERATION` DISABLE KEYS */;
INSERT INTO `BLC_ID_GENERATION` VALUES ('org.broadleafcommerce.profile.core.domain.Customer',100,48200,NULL,NULL,482);
/*!40000 ALTER TABLE `BLC_ID_GENERATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_IMG_STATIC_ASSET`
--

DROP TABLE IF EXISTS `BLC_IMG_STATIC_ASSET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_IMG_STATIC_ASSET` (
  `HEIGHT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `FKCC4B772167F70B63` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKCC4B772167F70B63` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `BLC_STATIC_ASSET` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_IMG_STATIC_ASSET`
--

LOCK TABLES `BLC_IMG_STATIC_ASSET` WRITE;
/*!40000 ALTER TABLE `BLC_IMG_STATIC_ASSET` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_IMG_STATIC_ASSET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_INDEX_FIELD`
--

DROP TABLE IF EXISTS `BLC_INDEX_FIELD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_INDEX_FIELD` (
  `INDEX_FIELD_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `FIELD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_ID`),
  KEY `FK9A53C1073C3907C4` (`FIELD_ID`),
  CONSTRAINT `FK9A53C1073C3907C4` FOREIGN KEY (`FIELD_ID`) REFERENCES `BLC_FIELD` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_INDEX_FIELD`
--

LOCK TABLES `BLC_INDEX_FIELD` WRITE;
/*!40000 ALTER TABLE `BLC_INDEX_FIELD` DISABLE KEYS */;
INSERT INTO `BLC_INDEX_FIELD` VALUES (1,NULL,1,1),(2,NULL,0,2),(3,NULL,0,3),(4,NULL,1,4),(5,NULL,1,5),(6,NULL,1,6),(7,NULL,1,7),(8,NULL,0,8),(9,NULL,0,9);
/*!40000 ALTER TABLE `BLC_INDEX_FIELD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_INDEX_FIELD_TYPE`
--

DROP TABLE IF EXISTS `BLC_INDEX_FIELD_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_INDEX_FIELD_TYPE` (
  `INDEX_FIELD_TYPE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `FIELD_TYPE` varchar(255) DEFAULT NULL,
  `INDEX_FIELD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_TYPE_ID`),
  KEY `FK4A310B72CBDA280B` (`INDEX_FIELD_ID`),
  CONSTRAINT `FK4A310B72CBDA280B` FOREIGN KEY (`INDEX_FIELD_ID`) REFERENCES `BLC_INDEX_FIELD` (`INDEX_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_INDEX_FIELD_TYPE`
--

LOCK TABLES `BLC_INDEX_FIELD_TYPE` WRITE;
/*!40000 ALTER TABLE `BLC_INDEX_FIELD_TYPE` DISABLE KEYS */;
INSERT INTO `BLC_INDEX_FIELD_TYPE` VALUES (1,NULL,'t',1),(2,NULL,'s',1),(3,NULL,'i',2),(4,NULL,'p',3),(5,NULL,'t',4),(6,NULL,'t',5),(7,NULL,'t',6),(8,NULL,'t',7),(9,NULL,'ss',8),(10,NULL,'p',9);
/*!40000 ALTER TABLE `BLC_INDEX_FIELD_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ISO_COUNTRY`
--

DROP TABLE IF EXISTS `BLC_ISO_COUNTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ISO_COUNTRY` (
  `ALPHA_2` varchar(255) NOT NULL,
  `ALPHA_3` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NUMERIC_CODE` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ALPHA_2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ISO_COUNTRY`
--

LOCK TABLES `BLC_ISO_COUNTRY` WRITE;
/*!40000 ALTER TABLE `BLC_ISO_COUNTRY` DISABLE KEYS */;
INSERT INTO `BLC_ISO_COUNTRY` VALUES ('AA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('AB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AC','ASC',NULL,NULL,NULL,NULL,'Ascension Island',-1,'EXCEPTIONALLY_RESERVED'),('AD','AND',NULL,NULL,NULL,NULL,'Andorra',20,'OFFICIALLY_ASSIGNED'),('AE','ARE',NULL,NULL,NULL,NULL,'United Arab Emirates',784,'OFFICIALLY_ASSIGNED'),('AF','AFG',NULL,NULL,NULL,NULL,'Afghanistan',4,'OFFICIALLY_ASSIGNED'),('AG','ATG',NULL,NULL,NULL,NULL,'Antigua and Barbuda',28,'OFFICIALLY_ASSIGNED'),('AH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AI','AIA',NULL,NULL,NULL,NULL,'Anguilla',660,'OFFICIALLY_ASSIGNED'),('AJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AL','ALB',NULL,NULL,NULL,NULL,'Albania',8,'OFFICIALLY_ASSIGNED'),('AM','ARM',NULL,NULL,NULL,NULL,'Armenia',51,'OFFICIALLY_ASSIGNED'),('AN','ANHH',NULL,NULL,NULL,NULL,'Netherlands Antilles',530,'TRANSITIONALLY_RESERVED'),('AO','AGO',NULL,NULL,NULL,NULL,'Angola',24,'OFFICIALLY_ASSIGNED'),('AP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('AQ','ATA',NULL,NULL,NULL,NULL,'Antarctica',10,'OFFICIALLY_ASSIGNED'),('AR','ARG',NULL,NULL,NULL,NULL,'Argentina',32,'OFFICIALLY_ASSIGNED'),('AS','ASM',NULL,NULL,NULL,NULL,'American Samoa',16,'OFFICIALLY_ASSIGNED'),('AT','AUT',NULL,NULL,NULL,NULL,'Austria',40,'OFFICIALLY_ASSIGNED'),('AU','AUS',NULL,NULL,NULL,NULL,'Australia',36,'OFFICIALLY_ASSIGNED'),('AV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AW','ABW',NULL,NULL,NULL,NULL,'Aruba',533,'OFFICIALLY_ASSIGNED'),('AX','ALA',NULL,NULL,NULL,NULL,'â„«land Islands',248,'OFFICIALLY_ASSIGNED'),('AY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AZ','AZE',NULL,NULL,NULL,NULL,'Azerbaijan',31,'OFFICIALLY_ASSIGNED'),('BA','BIH',NULL,NULL,NULL,NULL,'Bosnia and Herzegovina',70,'OFFICIALLY_ASSIGNED'),('BB','BRB',NULL,NULL,NULL,NULL,'Barbados',52,'OFFICIALLY_ASSIGNED'),('BC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BD','BGD',NULL,NULL,NULL,NULL,'Bangladesh',50,'OFFICIALLY_ASSIGNED'),('BE','BEL',NULL,NULL,NULL,NULL,'Belgium',56,'OFFICIALLY_ASSIGNED'),('BF','BFA',NULL,NULL,NULL,NULL,'Burkina Faso',854,'OFFICIALLY_ASSIGNED'),('BG','BGR',NULL,NULL,NULL,NULL,'Bulgaria',100,'OFFICIALLY_ASSIGNED'),('BH','BHR',NULL,NULL,NULL,NULL,'Bahrain',48,'OFFICIALLY_ASSIGNED'),('BI','BDI',NULL,NULL,NULL,NULL,'Burundi',108,'OFFICIALLY_ASSIGNED'),('BJ','BEN',NULL,NULL,NULL,NULL,'Benin',204,'OFFICIALLY_ASSIGNED'),('BK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BL','BLM',NULL,NULL,NULL,NULL,'Saint BarthÃ©lemy',652,'OFFICIALLY_ASSIGNED'),('BM','BMU',NULL,NULL,NULL,NULL,'Bermuda',60,'OFFICIALLY_ASSIGNED'),('BN','BRN',NULL,NULL,NULL,NULL,'Brunei Darussalam',96,'OFFICIALLY_ASSIGNED'),('BO','BOL',NULL,NULL,NULL,NULL,'Bolivia, Plurinational State of',68,'OFFICIALLY_ASSIGNED'),('BP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BQ','BES',NULL,NULL,NULL,NULL,'Bonaire, Sint Eustatius and Saba',535,'OFFICIALLY_ASSIGNED'),('BR','BRA',NULL,NULL,NULL,NULL,'Brazil',76,'OFFICIALLY_ASSIGNED'),('BS','BHS',NULL,NULL,NULL,NULL,'Bahamas',44,'OFFICIALLY_ASSIGNED'),('BT','BTN',NULL,NULL,NULL,NULL,'Bhutan',64,'OFFICIALLY_ASSIGNED'),('BU','BUMM',NULL,NULL,NULL,NULL,'Burma',104,'TRANSITIONALLY_RESERVED'),('BV','BVT',NULL,NULL,NULL,NULL,'Bouvet Island',74,'OFFICIALLY_ASSIGNED'),('BW','BWA',NULL,NULL,NULL,NULL,'Botswana',72,'OFFICIALLY_ASSIGNED'),('BX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('BY','BLR',NULL,NULL,NULL,NULL,'Belarus',112,'OFFICIALLY_ASSIGNED'),('BZ','BLZ',NULL,NULL,NULL,NULL,'Belize',84,'OFFICIALLY_ASSIGNED'),('CA','CAN',NULL,NULL,NULL,NULL,'India',124,'OFFICIALLY_ASSIGNED'),('CB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CC','CCK',NULL,NULL,NULL,NULL,'Cocos (Keeling) Islands',166,'OFFICIALLY_ASSIGNED'),('CD','COD',NULL,NULL,NULL,NULL,'Congo, the Democratic Republic of the',180,'OFFICIALLY_ASSIGNED'),('CE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CF','CAF',NULL,NULL,NULL,NULL,'Central African Republic',140,'OFFICIALLY_ASSIGNED'),('CG','COG',NULL,NULL,NULL,NULL,'Congo',178,'OFFICIALLY_ASSIGNED'),('CH','CHE',NULL,NULL,NULL,NULL,'Switzerland',756,'OFFICIALLY_ASSIGNED'),('CI','CIV',NULL,NULL,NULL,NULL,'CÃ´te d\'Ivoire',384,'OFFICIALLY_ASSIGNED'),('CJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CK','COK',NULL,NULL,NULL,NULL,'Cook Islands',184,'OFFICIALLY_ASSIGNED'),('CL','CHL',NULL,NULL,NULL,NULL,'Chile',152,'OFFICIALLY_ASSIGNED'),('CM','CMR',NULL,NULL,NULL,NULL,'Cameroon',120,'OFFICIALLY_ASSIGNED'),('CN','CHN',NULL,NULL,NULL,NULL,'China',156,'OFFICIALLY_ASSIGNED'),('CO','COL',NULL,NULL,NULL,NULL,'Colombia',170,'OFFICIALLY_ASSIGNED'),('CP','CPT',NULL,NULL,NULL,NULL,'Clipperton Island',-1,'EXCEPTIONALLY_RESERVED'),('CQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CR','CRI',NULL,NULL,NULL,NULL,'Costa Rica',188,'OFFICIALLY_ASSIGNED'),('CS','CSXX',NULL,NULL,NULL,NULL,'Serbia and Montenegro',891,'TRANSITIONALLY_RESERVED'),('CT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CU','CUB',NULL,NULL,NULL,NULL,'Cuba',192,'OFFICIALLY_ASSIGNED'),('CV','CPV',NULL,NULL,NULL,NULL,'Cape Verde',132,'OFFICIALLY_ASSIGNED'),('CW','CUW',NULL,NULL,NULL,NULL,'CuraÃ§ao',531,'OFFICIALLY_ASSIGNED'),('CX','CXR',NULL,NULL,NULL,NULL,'Christmas Island',162,'OFFICIALLY_ASSIGNED'),('CY','CYP',NULL,NULL,NULL,NULL,'Cyprus',196,'OFFICIALLY_ASSIGNED'),('CZ','CZE',NULL,NULL,NULL,NULL,'Czech Republic',203,'OFFICIALLY_ASSIGNED'),('DA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DE','DEU',NULL,NULL,NULL,NULL,'Germany',276,'OFFICIALLY_ASSIGNED'),('DF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DG','DGA',NULL,NULL,NULL,NULL,'Diego Garcia',-1,'EXCEPTIONALLY_RESERVED'),('DH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DJ','DJI',NULL,NULL,NULL,NULL,'Djibouti',262,'OFFICIALLY_ASSIGNED'),('DK','DNK',NULL,NULL,NULL,NULL,'Denmark',208,'OFFICIALLY_ASSIGNED'),('DL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DM','DMA',NULL,NULL,NULL,NULL,'Dominica',212,'OFFICIALLY_ASSIGNED'),('DN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DO','DOM',NULL,NULL,NULL,NULL,'Dominican Republic',214,'OFFICIALLY_ASSIGNED'),('DP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('DZ','DZA',NULL,NULL,NULL,NULL,'Algeria',12,'OFFICIALLY_ASSIGNED'),('EA','null',NULL,NULL,NULL,NULL,'Ceuta, Melilla',-1,'EXCEPTIONALLY_RESERVED'),('EB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EC','ECU',NULL,NULL,NULL,NULL,'Ecuador',218,'OFFICIALLY_ASSIGNED'),('ED',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EE','EST',NULL,NULL,NULL,NULL,'Estonia',233,'OFFICIALLY_ASSIGNED'),('EF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EG','EGY',NULL,NULL,NULL,NULL,'Egypt',818,'OFFICIALLY_ASSIGNED'),('EH','ESH',NULL,NULL,NULL,NULL,'Western Sahara',732,'OFFICIALLY_ASSIGNED'),('EI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ER','ERI',NULL,NULL,NULL,NULL,'Eritrea',232,'OFFICIALLY_ASSIGNED'),('ES','ESP',NULL,NULL,NULL,NULL,'Spain',724,'OFFICIALLY_ASSIGNED'),('ET','ETH',NULL,NULL,NULL,NULL,'Ethiopia',231,'OFFICIALLY_ASSIGNED'),('EU','null',NULL,NULL,NULL,NULL,'European Union',-1,'EXCEPTIONALLY_RESERVED'),('EV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('EX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FI','FIN',NULL,NULL,NULL,NULL,'Finland',246,'OFFICIALLY_ASSIGNED'),('FJ','FJI',NULL,NULL,NULL,NULL,'Fiji',242,'OFFICIALLY_ASSIGNED'),('FK','FLK',NULL,NULL,NULL,NULL,'Falkland Islands (Malvinas)',238,'OFFICIALLY_ASSIGNED'),('FL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('FM','FSM',NULL,NULL,NULL,NULL,'Micronesia, Federated States of',583,'OFFICIALLY_ASSIGNED'),('FN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FO','FRO',NULL,NULL,NULL,NULL,'Faroe Islands',234,'OFFICIALLY_ASSIGNED'),('FP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FR','FRA',NULL,NULL,NULL,NULL,'France',250,'OFFICIALLY_ASSIGNED'),('FS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FX','FXX',NULL,NULL,NULL,NULL,'France, Metropolitan',-1,'EXCEPTIONALLY_RESERVED'),('FY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GA','GAB',NULL,NULL,NULL,NULL,'Gabon',266,'OFFICIALLY_ASSIGNED'),('GB','GBR',NULL,NULL,NULL,NULL,'United Kingdom',826,'OFFICIALLY_ASSIGNED'),('GC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('GD','GRD',NULL,NULL,NULL,NULL,'Grenada',308,'OFFICIALLY_ASSIGNED'),('GE','GEO',NULL,NULL,NULL,NULL,'Georgia',268,'OFFICIALLY_ASSIGNED'),('GF','GUF',NULL,NULL,NULL,NULL,'French Guiana',254,'OFFICIALLY_ASSIGNED'),('GG','GGY',NULL,NULL,NULL,NULL,'Guernsey',831,'OFFICIALLY_ASSIGNED'),('GH','GHA',NULL,NULL,NULL,NULL,'Ghana',288,'OFFICIALLY_ASSIGNED'),('GI','GIB',NULL,NULL,NULL,NULL,'Gibraltar',292,'OFFICIALLY_ASSIGNED'),('GJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GL','GRL',NULL,NULL,NULL,NULL,'Greenland',304,'OFFICIALLY_ASSIGNED'),('GM','GMB',NULL,NULL,NULL,NULL,'Gambia',270,'OFFICIALLY_ASSIGNED'),('GN','GIN',NULL,NULL,NULL,NULL,'Guinea',324,'OFFICIALLY_ASSIGNED'),('GO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GP','GLP',NULL,NULL,NULL,NULL,'Guadeloupe',312,'OFFICIALLY_ASSIGNED'),('GQ','GNQ',NULL,NULL,NULL,NULL,'Equatorial Guinea',226,'OFFICIALLY_ASSIGNED'),('GR','GRC',NULL,NULL,NULL,NULL,'Greece',300,'OFFICIALLY_ASSIGNED'),('GS','SGS',NULL,NULL,NULL,NULL,'South Georgia and the South Sandwich Islands',239,'OFFICIALLY_ASSIGNED'),('GT','GTM',NULL,NULL,NULL,NULL,'Guatemala',320,'OFFICIALLY_ASSIGNED'),('GU','GUM',NULL,NULL,NULL,NULL,'Guam',316,'OFFICIALLY_ASSIGNED'),('GV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GW','GNB',NULL,NULL,NULL,NULL,'Guinea-Bissau',624,'OFFICIALLY_ASSIGNED'),('GX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GY','GUY',NULL,NULL,NULL,NULL,'Guyana',328,'OFFICIALLY_ASSIGNED'),('GZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HK','HKG',NULL,NULL,NULL,NULL,'Hong Kong',344,'OFFICIALLY_ASSIGNED'),('HL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HM','HMD',NULL,NULL,NULL,NULL,'Heard Island and McDonald Islands',334,'OFFICIALLY_ASSIGNED'),('HN','HND',NULL,NULL,NULL,NULL,'Honduras',340,'OFFICIALLY_ASSIGNED'),('HO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HR','HRV',NULL,NULL,NULL,NULL,'Croatia',191,'OFFICIALLY_ASSIGNED'),('HS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HT','HTI',NULL,NULL,NULL,NULL,'Haiti',332,'OFFICIALLY_ASSIGNED'),('HU','HUN',NULL,NULL,NULL,NULL,'Hungary',348,'OFFICIALLY_ASSIGNED'),('HV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED');
/*!40000 ALTER TABLE `BLC_ISO_COUNTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ITEM_OFFER_QUALIFIER`
--

DROP TABLE IF EXISTS `BLC_ITEM_OFFER_QUALIFIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ITEM_OFFER_QUALIFIER` (
  `ITEM_OFFER_QUALIFIER_ID` bigint(20) NOT NULL,
  `QUANTITY` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM_OFFER_QUALIFIER_ID`),
  KEY `FKD9C50C61D5F3FAF4` (`OFFER_ID`),
  KEY `FKD9C50C619AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKD9C50C619AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKD9C50C61D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ITEM_OFFER_QUALIFIER`
--

LOCK TABLES `BLC_ITEM_OFFER_QUALIFIER` WRITE;
/*!40000 ALTER TABLE `BLC_ITEM_OFFER_QUALIFIER` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ITEM_OFFER_QUALIFIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_LOCALE`
--

DROP TABLE IF EXISTS `BLC_LOCALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_LOCALE` (
  `LOCALE_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `USE_IN_SEARCH_INDEX` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCALE_CODE`),
  KEY `FK56C7DC203E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FK56C7DC203E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_LOCALE`
--

LOCK TABLES `BLC_LOCALE` WRITE;
/*!40000 ALTER TABLE `BLC_LOCALE` DISABLE KEYS */;
INSERT INTO `BLC_LOCALE` VALUES ('en',NULL,NULL,NULL,NULL,0,'English',NULL,'USD'),('en_GB',NULL,NULL,NULL,NULL,0,'English (United Kingdom)',NULL,'GBP'),('en_US',NULL,NULL,NULL,NULL,1,'English US',NULL,'INR'),('es',NULL,NULL,NULL,NULL,0,'Spanish',NULL,'EUR'),('es_ES',NULL,NULL,NULL,NULL,0,'Spanish (Spain)',NULL,'EUR'),('es_MX',NULL,NULL,NULL,NULL,0,'Spanish (Mexico)',NULL,'MXN'),('fr',NULL,NULL,NULL,NULL,0,'French',NULL,'EUR'),('fr_FR',NULL,NULL,NULL,NULL,0,'French (France)',NULL,'EUR');
/*!40000 ALTER TABLE `BLC_LOCALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_MEDIA`
--

DROP TABLE IF EXISTS `BLC_MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_MEDIA` (
  `MEDIA_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  KEY `MEDIA_TITLE_INDEX` (`TITLE`),
  KEY `MEDIA_URL_INDEX` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_MEDIA`
--

LOCK TABLES `BLC_MEDIA` WRITE;
/*!40000 ALTER TABLE `BLC_MEDIA` DISABLE KEYS */;
INSERT INTO `BLC_MEDIA` VALUES (101,'primary',NULL,'Sudden Death Sauce Bottle','/cmsstatic/img/sauces/Sudden-Death-Sauce-Bottle.jpg'),(102,'alt1',NULL,'Sudden Death Sauce Close-up','/cmsstatic/img/sauces/Sudden-Death-Sauce-Close.jpg'),(201,'primary',NULL,'Sweet Death Sauce Bottle','/cmsstatic/img/sauces/Sweet-Death-Sauce-Bottle.jpg'),(202,'alt1',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Close.jpg'),(203,'alt2',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Skull.jpg'),(204,'alt3',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Tile.jpg'),(205,'alt4',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Grass.jpg'),(206,'alt5',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Logo.jpg'),(301,'primary',NULL,'Hoppin Hot Sauce Bottle','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Bottle.jpg'),(302,'alt1',NULL,'Hoppin Hot Sauce Close-up','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Close.jpg'),(401,'primary',NULL,'Day of the Dead Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Bottle.jpg'),(402,'alt1',NULL,'Day of the Dead Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Close.jpg'),(501,'primary',NULL,'Day of the Dead Habanero Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Bottle.jpg'),(502,'alt1',NULL,'Day of the Dead Habanero Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Close.jpg'),(601,'primary',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(602,'alt1',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Close.jpg'),(701,'primary',NULL,'Green Ghost Bottle','/cmsstatic/img/sauces/Green-Ghost-Bottle.jpg'),(702,'alt1',NULL,'Green Ghost Close-up','/cmsstatic/img/sauces/Green-Ghost-Close.jpg'),(801,'primary',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Bottle','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Bottle.jpg'),(802,'alt1',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Close-up','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Close.jpg'),(901,'primary',NULL,'Armageddon The Hot Sauce To End All Bottle','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg'),(902,'alt1',NULL,'Armageddon The Hot Sauce To End All Close-up','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg'),(1001,'primary',NULL,'Dr. Chilemeisters Insane Hot Sauce Bottle','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Bottle.jpg'),(1002,'alt1',NULL,'Dr. Chilemeisters Insane Hot Sauce Close-up','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Close.jpg'),(1101,'primary',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1102,'alt1',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1201,'primary',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Bottle','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Bottle.jpg'),(1202,'alt1',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Close-up','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Close.jpg'),(1301,'primary',NULL,'Bull Snort Smokin Toncils Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Bottle.jpg'),(1302,'alt1',NULL,'Bull Snort Smokin Toncils Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Close.jpg'),(1401,'primary',NULL,'Cool Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1402,'alt1',NULL,'Cool Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1501,'primary',NULL,'Roasted Garlic Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Bottle.jpg'),(1502,'alt1',NULL,'Roasted Garlic Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Close.jpg'),(1601,'primary',NULL,'Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(1602,'alt1',NULL,'Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Close.jpg'),(1701,'primary',NULL,'Insanity Sauce Bottle','/cmsstatic/img/sauces/Insanity-Sauce-Bottle.jpg'),(1702,'alt1',NULL,'Insanity Sauce Close-up','/cmsstatic/img/sauces/Insanity-Sauce-Close.jpg'),(1801,'primary',NULL,'Hurtin Jalepeno Hot Sauce Bottle','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Bottle.jpg'),(1802,'alt1',NULL,'Hurtin Jalepeno Hot Sauce Close-up','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Close.jpg'),(1901,'primary',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Bottle.jpg'),(1902,'alt1',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Close.jpg'),(10001,'primary','Black','Hawt Like a Habanero Men\'s Black','/cmsstatic/img/merch/habanero_mens_black.jpg'),(10002,'primary','Red','Hawt Like a Habanero Men\'s Red','/cmsstatic/img/merch/habanero_mens_red.jpg'),(10003,'primary','Silver','Hawt Like a Habanero Men\'s Silver','/cmsstatic/img/merch/habanero_mens_silver.jpg'),(20001,'primary','Black','Hawt Like a Habanero Women\'s Black','/cmsstatic/img/merch/habanero_womens_black.jpg'),(20002,'primary','Red','Hawt Like a Habanero Women\'s Red','/cmsstatic/img/merch/habanero_womens_red.jpg'),(20003,'primary','Silver','Hawt Like a Habanero Women\'s Silver','/cmsstatic/img/merch/habanero_womens_silver.jpg'),(30001,'primary','Black','Heat Clinic Hand-Drawn Men\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_black.jpg'),(30002,'primary','Red','Heat Clinic Hand-Drawn Men\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_red.jpg'),(30003,'primary','Silver','Heat Clinic Hand-Drawn Men\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_silver.jpg'),(40001,'primary','Black','Heat Clinic Hand-Drawn Women\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_black.jpg'),(40002,'primary','Red','Heat Clinic Hand-Drawn Women\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_red.jpg'),(40003,'primary','Silver','Heat Clinic Hand-Drawn Women\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_silver.jpg'),(50001,'primary','Black','Heat Clinic Mascot Men\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_mens_black.jpg'),(50002,'primary','Red','Heat Clinic Mascot Men\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_mens_red.jpg'),(50003,'primary','Silver','Heat Clinic Mascot Men\'s Silver','/cmsstatic/img/sauces/Green-Ghost-Bottle.jpg'),(60001,'primary','Black','Heat Clinic Mascot Women\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_womens_black.jpg'),(60002,'primary','Red','Heat Clinic Mascot Women\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_womens_red.jpg'),(60003,'primary','Silver','Heat Clinic Mascot Women\'s Silver','/cmsstatic/img/merch/heat_clinic_mascot_womens_silver.jpg'),(60015,NULL,NULL,NULL,'/cmsstatic/img/party/CHAWARI-PK-1.jpg'),(60063,NULL,NULL,NULL,'/cmsstatic/img/party/CHAWARI-PK-2.jpg'),(60064,NULL,NULL,NULL,'/cmsstatic/img/party/chawari P5..jpg'),(60113,NULL,NULL,NULL,'/cmsstatic/img/party/round table white.jpg'),(60163,NULL,NULL,NULL,'/cmsstatic/img/party/round table-cover-top.jpg'),(60164,NULL,NULL,NULL,'/cmsstatic/img/party/chair.jpg'),(60213,NULL,NULL,NULL,'/cmsstatic/img/party/CHAIR WITH COVER FINAL.jpg'),(60214,NULL,NULL,NULL,'/cmsstatic/img/party/CHAIR WITH COVER N RIBBON.jpg'),(60215,NULL,NULL,NULL,'/cmsstatic/img/party/pandal printed.jpg'),(60216,NULL,NULL,NULL,'/cmsstatic/img/party/pandal white.jpg'),(60217,NULL,NULL,NULL,'/cmsstatic/img/party/pandal bengali.jpg'),(60218,NULL,NULL,NULL,'/cmsstatic/img/party/pandal hut.jpg'),(60219,NULL,NULL,NULL,'/cmsstatic/img/party/GREEN CARPET FINAL.jpg'),(60220,NULL,NULL,NULL,'/cmsstatic/img/party/selfie2.jpg'),(60221,NULL,NULL,NULL,'/cmsstatic/img/party/FRONT TRUSS FINAL.jpg'),(60222,NULL,NULL,NULL,'/cmsstatic/img/party/FRONT TRUSS FINAL.jpg'),(60223,NULL,NULL,NULL,'/cmsstatic/img/party/BOX TRUSS FINAL.jpg'),(60224,NULL,NULL,NULL,'/cmsstatic/img/party/BOX TRUSS FINAL.jpg'),(60225,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 2 FINAL copy.jpg'),(60226,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 4 FINAL.jpg'),(60227,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 6 FINAL copy.jpg'),(60228,NULL,NULL,NULL,'/cmsstatic/img/party/GENERATOR FINAL.jpg'),(60229,NULL,NULL,NULL,'/cmsstatic/img/party/GENERATOR FINAL.jpg'),(60230,NULL,NULL,NULL,'/cmsstatic/img/party/metal.jpg'),(60231,NULL,NULL,NULL,'/cmsstatic/img/party/par.jpg'),(60232,NULL,NULL,NULL,'/cmsstatic/img/party/led par.jpg'),(60233,NULL,NULL,NULL,'/cmsstatic/img/party/halogen.jpg'),(60234,NULL,NULL,NULL,'/cmsstatic/img/party/ALAAV FINAL.jpg'),(60235,NULL,NULL,NULL,'/cmsstatic/img/party/RED CARPET.jpg'),(60236,NULL,NULL,NULL,'/cmsstatic/img/party/DJ 1 FINAL.jpg'),(60237,NULL,NULL,NULL,'/cmsstatic/img/party/DANCE FLOOR FINAL.jpg'),(60263,NULL,NULL,NULL,'/cmsstatic/img/party/chawari OPEN 9.jpg'),(60264,NULL,NULL,NULL,'/cmsstatic/img/party/chawari.jpg'),(60268,NULL,NULL,NULL,'/cmsstatic/img/party/chawari OPEN 6.jpg'),(60313,NULL,NULL,NULL,'/cmsstatic/img/party/round table with nylon top.jpg'),(60314,NULL,NULL,NULL,'/cmsstatic/img/party/sofa with cover.JPG'),(60315,NULL,NULL,NULL,'/cmsstatic/img/party/leather sofa-1.jpg'),(60316,NULL,NULL,NULL,'/cmsstatic/img/party/king size sofa.jpg'),(60317,NULL,NULL,NULL,'/cmsstatic/img/party/Pandal Hut 1.jpg'),(60318,NULL,NULL,NULL,'/cmsstatic/img/party/Pandal Hut 2.jpg'),(60319,NULL,NULL,NULL,'/cmsstatic/img/party/BLUE CARPET FINAL.jpg'),(60320,NULL,NULL,NULL,'/cmsstatic/img/party/halogen.jpg'),(60321,NULL,NULL,NULL,'/cmsstatic/img/party/NORMAL GHODI FINAL.jpg'),(60322,NULL,NULL,NULL,'/cmsstatic/img/party/WHITE GHODI FINAL.jpg'),(60323,NULL,NULL,NULL,'/cmsstatic/img/party/GHODI WITH CHATAR FINAL.jpg'),(60324,NULL,NULL,NULL,'/cmsstatic/img/party/screen 2.jpg'),(60325,NULL,NULL,NULL,'/cmsstatic/img/party/screen 1.jpg'),(60326,NULL,NULL,NULL,'/cmsstatic/img/party/sliding screen.jpg'),(60327,NULL,NULL,NULL,'/cmsstatic/img/party/GAS HEATER FINAL.jpg'),(60328,NULL,NULL,NULL,'/cmsstatic/img/party/GAS HEATER FINAL.jpg'),(60363,NULL,NULL,NULL,'/cmsstatic/img/party/female_anchor.jpg'),(60364,NULL,NULL,NULL,'/cmsstatic/img/party/female_anchor.jpg'),(60365,NULL,NULL,NULL,'/cmsstatic/img/party/female_anchor.jpg'),(60366,NULL,NULL,NULL,'/cmsstatic/img/party/female_anchor.jpg'),(60367,NULL,NULL,NULL,'/cmsstatic/img/party/male_anchor.jpg'),(60368,NULL,NULL,NULL,'/cmsstatic/img/party/male_anchor.jpg'),(60369,NULL,NULL,NULL,'/cmsstatic/img/party/valet_5.jpg'),(60370,NULL,NULL,NULL,'/cmsstatic/img/party/valet_5.jpg'),(60371,NULL,NULL,NULL,'/cmsstatic/img/party/valet_5.jpg'),(60372,NULL,NULL,NULL,'/cmsstatic/img/party/Lineary-1.JPG'),(60373,NULL,NULL,NULL,'/cmsstatic/img/party/Lineary-1.JPG'),(60374,NULL,NULL,NULL,'/cmsstatic/img/party/Lineary-1.JPG'),(60375,NULL,NULL,NULL,'/cmsstatic/img/party/generator_deisel.jpg'),(60376,NULL,NULL,NULL,'/cmsstatic/img/party/generator_deisel.jpg'),(60377,NULL,NULL,NULL,'/cmsstatic/img/party/ground_light-1.jpg'),(60378,NULL,NULL,NULL,'/cmsstatic/img/party/ground_light-1.jpg'),(60379,NULL,NULL,NULL,'/cmsstatic/img/party/ground_light-1.jpg'),(60413,NULL,NULL,NULL,'/cmsstatic/img/party/varmala.jpg'),(60414,NULL,NULL,NULL,'/cmsstatic/img/party/varmala.jpg'),(60415,NULL,NULL,NULL,'/cmsstatic/img/party/varmala.jpg'),(60416,NULL,NULL,NULL,'/cmsstatic/img/party/selfie2.jpg'),(60417,NULL,NULL,NULL,'/cmsstatic/img/party/Doli.jpg'),(60418,NULL,NULL,NULL,'/cmsstatic/img/party/paalki.jpg'),(60419,NULL,NULL,NULL,'/cmsstatic/img/party/lawazma.jpg'),(60420,NULL,NULL,NULL,'/cmsstatic/img/party/band1.jpg'),(60421,NULL,NULL,NULL,'/cmsstatic/img/party/band2.jpg'),(60422,NULL,NULL,NULL,'/cmsstatic/img/party/band3.jpg'),(60423,NULL,NULL,NULL,'/cmsstatic/img/party/band3.jpg'),(60424,NULL,NULL,NULL,'/cmsstatic/img/party/band3.jpg'),(60425,NULL,NULL,NULL,'/cmsstatic/img/party/gasbatti.jpeg'),(60426,NULL,NULL,NULL,'/cmsstatic/img/party/gasbatti.jpeg'),(60427,NULL,NULL,NULL,'/cmsstatic/img/party/gasbatti.jpeg'),(60463,NULL,NULL,NULL,'/cmsstatic/img/party/Cooler.jpg'),(60464,NULL,NULL,NULL,'/cmsstatic/img/party/Mist Fan.jpg'),(60465,NULL,NULL,NULL,'/cmsstatic/img/party/Sajan Goth.JPG'),(60466,NULL,NULL,NULL,'/cmsstatic/img/party/Selfie Jhula-1.jpg'),(60467,NULL,NULL,NULL,'/cmsstatic/img/party/Moving Ring Entry.jpg');
/*!40000 ALTER TABLE `BLC_MEDIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_MODULE_CONFIGURATION`
--

DROP TABLE IF EXISTS `BLC_MODULE_CONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_MODULE_CONFIGURATION` (
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CONFIG_TYPE` varchar(255) NOT NULL,
  `IS_DEFAULT` tinyint(1) NOT NULL,
  `MODULE_NAME` varchar(255) NOT NULL,
  `MODULE_PRIORITY` int(11) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_MODULE_CONFIGURATION`
--

LOCK TABLES `BLC_MODULE_CONFIGURATION` WRITE;
/*!40000 ALTER TABLE `BLC_MODULE_CONFIGURATION` DISABLE KEYS */;
INSERT INTO `BLC_MODULE_CONFIGURATION` VALUES (-1,NULL,'2016-12-27 19:55:39',NULL,NULL,NULL,NULL,NULL,'SITE_MAP',1,'SITE_MAP',100);
/*!40000 ALTER TABLE `BLC_MODULE_CONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER`
--

DROP TABLE IF EXISTS `BLC_OFFER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER` (
  `OFFER_ID` bigint(20) NOT NULL,
  `APPLY_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `AUTOMATICALLY_ADDED` tinyint(1) DEFAULT NULL,
  `COMBINABLE_WITH_OTHER_OFFERS` tinyint(1) DEFAULT NULL,
  `OFFER_DESCRIPTION` varchar(255) DEFAULT NULL,
  `OFFER_DISCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `MARKETING_MESSASGE` varchar(255) DEFAULT NULL,
  `MAX_USES_PER_CUSTOMER` bigint(20) DEFAULT NULL,
  `MAX_USES` int(11) DEFAULT NULL,
  `OFFER_NAME` varchar(255) NOT NULL,
  `OFFER_ITEM_QUALIFIER_RULE` varchar(255) DEFAULT NULL,
  `OFFER_ITEM_TARGET_RULE` varchar(255) DEFAULT NULL,
  `ORDER_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `OFFER_PRIORITY` int(11) DEFAULT NULL,
  `QUALIFYING_ITEM_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `REQUIRES_RELATED_TAR_QUAL` tinyint(1) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `TARGET_SYSTEM` varchar(255) DEFAULT NULL,
  `TOTALITARIAN_OFFER` tinyint(1) DEFAULT NULL,
  `OFFER_TYPE` varchar(255) NOT NULL,
  `OFFER_VALUE` decimal(19,5) NOT NULL,
  PRIMARY KEY (`OFFER_ID`),
  KEY `OFFER_DISCOUNT_INDEX` (`OFFER_DISCOUNT_TYPE`),
  KEY `OFFER_MARKETING_MESSAGE_INDEX` (`MARKETING_MESSASGE`),
  KEY `OFFER_NAME_INDEX` (`OFFER_NAME`),
  KEY `OFFER_TYPE_INDEX` (`OFFER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER`
--

LOCK TABLES `BLC_OFFER` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER` DISABLE KEYS */;
INSERT INTO `BLC_OFFER` VALUES (1,0,NULL,0,1,NULL,'PERCENT_OFF','2020-01-01 00:00:00',NULL,NULL,0,'Shirts Special',NULL,'NONE',NULL,NULL,NULL,NULL,'2016-12-27 00:00:00',NULL,NULL,'ORDER_ITEM',20.00000);
/*!40000 ALTER TABLE `BLC_OFFER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_AUDIT`
--

DROP TABLE IF EXISTS `BLC_OFFER_AUDIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_AUDIT` (
  `OFFER_AUDIT_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `OFFER_CODE_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `REDEEMED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFFER_AUDIT_ID`),
  KEY `OFFERAUDIT_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `OFFERAUDIT_OFFER_CODE_INDEX` (`OFFER_CODE_ID`),
  KEY `OFFERAUDIT_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERAUDIT_ORDER_INDEX` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_AUDIT`
--

LOCK TABLES `BLC_OFFER_AUDIT` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_AUDIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_OFFER_AUDIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_CODE`
--

DROP TABLE IF EXISTS `BLC_OFFER_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_CODE` (
  `OFFER_CODE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `MAX_USES` int(11) DEFAULT NULL,
  `OFFER_CODE` varchar(255) NOT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `USES` int(11) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`OFFER_CODE_ID`),
  KEY `OFFERCODE_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERCODE_CODE_INDEX` (`OFFER_CODE`),
  KEY `FK76B8C8D6D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK76B8C8D6D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_CODE`
--

LOCK TABLES `BLC_OFFER_CODE` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_CODE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_OFFER_CODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_INFO`
--

DROP TABLE IF EXISTS `BLC_OFFER_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_INFO` (
  `OFFER_INFO_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_INFO`
--

LOCK TABLES `BLC_OFFER_INFO` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_OFFER_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_INFO_FIELDS`
--

DROP TABLE IF EXISTS `BLC_OFFER_INFO_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_INFO_FIELDS` (
  `OFFER_INFO_FIELDS_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_FIELDS_ID`,`FIELD_NAME`),
  KEY `FKA901886183AE7237` (`OFFER_INFO_FIELDS_ID`),
  CONSTRAINT `FKA901886183AE7237` FOREIGN KEY (`OFFER_INFO_FIELDS_ID`) REFERENCES `BLC_OFFER_INFO` (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_INFO_FIELDS`
--

LOCK TABLES `BLC_OFFER_INFO_FIELDS` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_INFO_FIELDS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_OFFER_INFO_FIELDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_ITEM_CRITERIA`
--

DROP TABLE IF EXISTS `BLC_OFFER_ITEM_CRITERIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_ITEM_CRITERIA` (
  `OFFER_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`OFFER_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_ITEM_CRITERIA`
--

LOCK TABLES `BLC_OFFER_ITEM_CRITERIA` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_ITEM_CRITERIA` DISABLE KEYS */;
INSERT INTO `BLC_OFFER_ITEM_CRITERIA` VALUES (1,'MvelHelper.toUpperCase(orderItem.?category.?name)==MvelHelper.toUpperCase(\"merchandise\")',1);
/*!40000 ALTER TABLE `BLC_OFFER_ITEM_CRITERIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_RULE`
--

DROP TABLE IF EXISTS `BLC_OFFER_RULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_RULE` (
  `OFFER_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_RULE`
--

LOCK TABLES `BLC_OFFER_RULE` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_RULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_OFFER_RULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_OFFER_RULE_MAP`
--

DROP TABLE IF EXISTS `BLC_OFFER_RULE_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_OFFER_RULE_MAP` (
  `OFFER_OFFER_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_OFFER_OFFER_ID` bigint(20) NOT NULL,
  `OFFER_RULE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_OFFER_RULE_ID`),
  KEY `FKCA468FE245C66D1D` (`BLC_OFFER_OFFER_ID`),
  KEY `FKCA468FE2C11A218D` (`OFFER_RULE_ID`),
  CONSTRAINT `FKCA468FE245C66D1D` FOREIGN KEY (`BLC_OFFER_OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`),
  CONSTRAINT `FKCA468FE2C11A218D` FOREIGN KEY (`OFFER_RULE_ID`) REFERENCES `BLC_OFFER_RULE` (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_OFFER_RULE_MAP`
--

LOCK TABLES `BLC_OFFER_RULE_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_OFFER_RULE_MAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_OFFER_RULE_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER`
--

DROP TABLE IF EXISTS `BLC_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER` (
  `ORDER_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_NUMBER` varchar(255) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `ORDER_STATUS` varchar(255) DEFAULT NULL,
  `ORDER_SUBTOTAL` decimal(19,5) DEFAULT NULL,
  `SUBMIT_DATE` datetime DEFAULT NULL,
  `TAX_OVERRIDE` tinyint(1) DEFAULT NULL,
  `ORDER_TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_SHIPPING` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `ORDER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `ORDER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `ORDER_NAME_INDEX` (`NAME`),
  KEY `ORDER_NUMBER_INDEX` (`ORDER_NUMBER`),
  KEY `ORDER_STATUS_INDEX` (`ORDER_STATUS`),
  KEY `FK8F5B64A83E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK8F5B64A87470F437` (`CUSTOMER_ID`),
  KEY `FK8F5B64A8A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK8F5B64A83E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`),
  CONSTRAINT `FK8F5B64A87470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK8F5B64A8A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `BLC_LOCALE` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER`
--

LOCK TABLES `BLC_ORDER` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER` DISABLE KEYS */;
INSERT INTO `BLC_ORDER` VALUES (151,400,'2016-12-28 14:28:59','2016-12-28 14:52:12',400,NULL,NULL,NULL,NULL,'IN_PROCESS',47.94000,NULL,NULL,47.94000,0.00000,0.00000,'USD',400,'en_US'),(201,500,'2016-12-28 17:04:20','2016-12-28 17:05:37',500,NULL,NULL,NULL,NULL,'IN_PROCESS',11.98000,NULL,NULL,11.98000,0.00000,0.00000,'USD',500,'en_US'),(251,700,'2016-12-28 17:24:21','2016-12-28 19:41:49',700,'agrawal.sumit17@gmail.com',NULL,'20161228194149923251',NULL,'SUBMITTED',24.97000,'2016-12-28 19:41:49',NULL,44.97000,20.00000,0.00000,'USD',700,'en_US'),(301,800,'2016-12-28 18:32:15','2016-12-28 18:32:15',800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',800,'en_US'),(351,900,'2016-12-28 18:35:11','2016-12-28 18:35:12',900,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',900,'en_US'),(401,1000,'2016-12-28 18:43:06','2016-12-28 18:44:02',1000,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1000,'en_US'),(451,1100,'2016-12-28 18:48:32','2016-12-28 18:51:11',1100,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1100,'en_US'),(501,1200,'2016-12-28 19:07:46','2016-12-28 19:11:06',1200,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1200,'en_US'),(551,1300,'2016-12-28 19:30:20','2016-12-28 19:31:48',1300,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',1300,'en_US'),(601,1400,'2016-12-28 19:37:28','2016-12-28 19:39:20',1400,'agrawal.sumit17@gmail.com',NULL,'20161228193920906601',NULL,'SUBMITTED',4.99000,'2016-12-28 19:39:20',NULL,9.99000,5.00000,0.00000,'USD',1400,'en_US'),(651,1701,'2016-12-29 11:59:47','2016-12-29 12:00:28',1701,'agrawal.sumit17@gmail.com',NULL,'20161229120028243651',NULL,'SUBMITTED',6.99000,'2016-12-29 12:00:28',NULL,26.99000,20.00000,0.00000,'USD',1701,'en_US'),(701,1800,'2016-12-29 12:26:05','2016-12-29 12:26:52',1800,'agrawal.sumit17@gmail.com',NULL,'20161229122652491701',NULL,'SUBMITTED',14.99000,'2016-12-29 12:26:52',NULL,34.99000,20.00000,0.00000,'USD',1800,'en_US'),(751,2000,'2016-12-29 18:14:25','2016-12-29 18:14:27',2000,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2000,'en_US'),(801,2100,'2016-12-29 18:18:47','2016-12-29 18:25:29',2100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2100,'en_US'),(851,2200,'2016-12-29 18:33:44','2016-12-29 18:39:25',2200,NULL,NULL,NULL,NULL,'IN_PROCESS',11.98000,NULL,NULL,11.98000,0.00000,0.00000,'USD',2200,'en_US'),(901,2300,'2016-12-29 19:13:36','2016-12-29 19:13:37',2300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2300,'en_US'),(951,2400,'2016-12-29 19:37:29','2016-12-29 19:37:30',2400,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2400,'en_US'),(1001,2500,'2016-12-29 20:13:19','2016-12-29 20:24:37',2500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2500,'en_US'),(1051,2601,'2016-12-30 13:59:57','2016-12-30 14:00:24',2601,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2601,'en_US'),(1101,2700,'2016-12-30 14:07:49','2016-12-30 14:07:50',2700,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2700,'en_US'),(1151,2800,'2016-12-30 14:09:36','2016-12-30 14:11:47',2800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',2800,'en_US'),(1201,2900,'2016-12-30 14:19:08','2016-12-30 14:23:23',2900,NULL,NULL,NULL,NULL,'IN_PROCESS',6.99000,NULL,NULL,6.99000,0.00000,0.00000,'USD',2900,'en_US'),(1251,3000,'2016-12-30 14:35:51','2016-12-30 14:36:55',3000,NULL,NULL,NULL,NULL,'IN_PROCESS',11.98000,NULL,NULL,11.98000,0.00000,0.00000,'USD',3000,'en_US'),(1301,3100,'2016-12-30 14:50:52','2016-12-30 14:55:02',3100,NULL,NULL,NULL,NULL,'IN_PROCESS',14.97000,NULL,NULL,14.97000,0.00000,0.00000,'USD',3100,'en_US'),(1351,3500,'2016-12-30 16:50:14','2016-12-30 16:50:16',3500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',3500,'en_US'),(1401,3800,'2016-12-30 17:43:02','2016-12-30 17:43:04',3800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',3800,'en_US'),(1451,4000,'2016-12-30 18:14:36','2016-12-30 18:14:37',4000,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4000,'en_US'),(1501,4100,'2016-12-30 18:20:16','2016-12-30 18:21:06',4100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4100,'en_US'),(1551,4200,'2016-12-30 18:33:45','2016-12-30 18:36:28',4200,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4200,'en_US'),(1601,4300,'2016-12-30 18:49:08','2016-12-30 18:49:09',4300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4300,'en_US'),(1651,4900,'2016-12-30 19:58:35','2016-12-30 19:58:37',4900,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',4900,'en_US'),(1701,5000,'2016-12-30 20:04:14','2016-12-30 20:05:04',5000,NULL,NULL,NULL,NULL,'IN_PROCESS',24.97000,NULL,NULL,24.97000,0.00000,0.00000,'USD',5000,'en_US'),(1751,5100,'2017-01-02 12:10:44','2017-01-02 12:10:50',5100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5100,'en_US'),(1801,5200,'2017-01-02 12:40:51','2017-01-02 12:40:51',5200,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5200,'en_US'),(1851,5300,'2017-01-02 12:58:54','2017-01-02 12:58:57',5300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5300,'en_US'),(1901,5400,'2017-01-02 13:05:47','2017-01-02 13:05:48',5400,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5400,'en_US'),(1951,5500,'2017-01-02 13:08:54','2017-01-02 13:08:55',5500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5500,'en_US'),(2001,5600,'2017-01-02 13:20:09','2017-01-02 13:20:10',5600,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5600,'en_US'),(2051,5700,'2017-01-02 13:24:12','2017-01-02 13:24:13',5700,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5700,'en_US'),(2101,5800,'2017-01-02 13:26:51','2017-01-02 13:26:51',5800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5800,'en_US'),(2151,5900,'2017-01-02 13:38:41','2017-01-02 13:38:41',5900,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',5900,'en_US'),(2201,6000,'2017-01-02 13:46:55','2017-01-02 13:46:56',6000,NULL,NULL,NULL,NULL,'IN_PROCESS',14.99000,NULL,NULL,14.99000,0.00000,0.00000,'USD',6000,'en_US'),(2251,6100,'2017-01-02 13:53:55','2017-01-02 13:54:21',6100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6100,'en_US'),(2301,6200,'2017-01-02 14:04:34','2017-01-02 14:04:35',6200,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6200,'en_US'),(2351,6300,'2017-01-02 14:17:44','2017-01-02 14:17:45',6300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6300,'en_US'),(2401,6400,'2017-01-03 18:17:04','2017-01-03 18:17:06',6400,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6400,'en_US'),(2451,6500,'2017-01-03 18:53:35','2017-01-03 18:53:35',6500,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6500,'en_US'),(2501,6600,'2017-01-03 19:02:14','2017-01-03 19:02:15',6600,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6600,'en_US'),(2551,6700,'2017-01-03 19:11:12','2017-01-03 19:11:13',6700,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6700,'en_US'),(2601,6800,'2017-01-03 19:18:59','2017-01-03 19:19:00',6800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',6800,'en_US'),(2651,6900,'2017-01-03 19:30:31','2017-01-03 19:31:39',6900,'agrawal.sumit17@gmail.com',NULL,'201701031931391182651',NULL,'SUBMITTED',11.98000,'2017-01-03 19:31:39',NULL,16.98000,5.00000,0.00000,'USD',6900,'en_US'),(2701,7000,'2017-01-03 20:15:54','2017-01-03 20:15:55',7000,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',7000,'en_US'),(2751,7100,'2017-01-03 20:25:38','2017-01-03 20:25:39',7100,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'USD',7100,'en_US'),(2801,7201,'2017-01-04 12:52:09','2017-01-04 12:53:22',7201,'agrawal.sumit17@gmail.com',NULL,'201701041253227762801',NULL,'SUBMITTED',4.99000,'2017-01-04 12:53:22',NULL,9.99000,5.00000,0.00000,'USD',7201,'en_US'),(2851,7300,'2017-01-04 13:24:04','2017-01-04 13:24:52',7300,'agrawal.sumit17@gmail.com',NULL,'201701041324526612851',NULL,'SUBMITTED',29.98000,'2017-01-04 13:24:52',NULL,34.98000,5.00000,0.00000,'USD',7300,'en_US'),(2901,7400,'2017-01-04 13:30:18','2017-01-04 13:30:57',7400,'agrawal.sumit17@gmail.com',NULL,'201701041330576732901',NULL,'SUBMITTED',4.99000,'2017-01-04 13:30:57',NULL,9.99000,5.00000,0.00000,'USD',7400,'en_US'),(2951,7500,'2017-01-04 15:43:12','2017-01-04 15:49:24',7500,NULL,NULL,NULL,NULL,'IN_PROCESS',35.00000,NULL,NULL,35.00000,0.00000,0.00000,'USD',7500,'en_US'),(3001,7600,'2017-01-04 18:36:05','2017-01-04 18:36:05',7600,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',7600,'en_US'),(3051,7800,'2017-01-04 18:58:18','2017-01-04 18:58:19',7800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',7800,'en_US'),(3101,8100,'2017-01-04 19:12:26','2017-01-04 19:19:33',8100,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,9.99000,5.00000,0.00000,'INR',8100,'en_US'),(3151,8200,'2017-01-04 19:28:53','2017-01-04 19:29:13',8200,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8200,'en_US'),(3201,8300,'2017-01-04 19:40:22','2017-01-04 19:43:16',8300,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,9.99000,5.00000,0.00000,'INR',8300,'en_US'),(3251,8400,'2017-01-04 19:47:48','2017-01-04 19:48:18',8400,'agrawal.sumit17@gmail.com',NULL,'201701041948186683251',NULL,'SUBMITTED',4.99000,'2017-01-04 19:48:18',NULL,4.99000,0.00000,0.00000,'INR',8400,'en_US'),(3252,8400,'2017-01-04 19:50:04','2017-01-04 19:50:19',8400,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8400,'en_US'),(3301,8500,'2017-01-04 19:58:04','2017-01-04 20:01:16',8500,'agrawal.sumit17@gmail.com',NULL,'201701042001161483301',NULL,'SUBMITTED',4.99000,'2017-01-04 20:01:16',NULL,4.99000,0.00000,0.00000,'INR',8500,'en_US'),(3351,8600,'2017-01-05 10:27:55','2017-01-05 10:29:59',8600,'agrawal.sumit17@gmail.com',NULL,'201701051029597023351',NULL,'SUBMITTED',29.98000,'2017-01-05 10:29:59',NULL,29.98000,0.00000,0.00000,'INR',8600,'en_US'),(3401,8701,'2017-01-08 05:47:16','2017-01-08 05:47:18',8701,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8701,'en_US'),(3402,8702,'2017-01-08 05:47:59','2017-01-08 05:48:00',8702,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',8702,'en_US'),(3451,11300,'2017-01-08 08:52:25','2017-01-08 08:52:26',11300,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',11300,'en_US'),(3501,11702,'2017-01-09 06:15:59','2017-01-09 06:16:00',11702,NULL,NULL,NULL,NULL,'IN_PROCESS',200.00000,NULL,NULL,200.00000,0.00000,0.00000,'INR',11702,'en_US'),(3551,11800,'2017-01-11 06:24:28','2017-01-11 06:24:30',11800,NULL,NULL,NULL,NULL,'IN_PROCESS',4.99000,NULL,NULL,4.99000,0.00000,0.00000,'INR',11800,'en_US'),(3601,11900,'2017-01-11 06:34:21','2017-01-11 06:34:22',11900,NULL,NULL,NULL,NULL,'IN_PROCESS',31000.00000,NULL,NULL,31000.00000,0.00000,0.00000,'INR',11900,'en_US'),(3651,12000,'2017-01-11 18:15:04','2017-01-11 18:17:47',12000,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',12000,'en_US'),(3701,12102,'2017-01-12 17:28:21','2017-01-12 17:34:44',12102,NULL,NULL,NULL,NULL,'IN_PROCESS',250.00000,NULL,NULL,250.00000,0.00000,0.00000,'INR',12102,'en_US'),(3702,12103,'2017-01-12 17:32:33','2017-01-12 17:32:33',12103,NULL,NULL,NULL,NULL,'IN_PROCESS',20000.00000,NULL,NULL,20000.00000,0.00000,0.00000,'INR',12103,'en_US'),(3751,12200,'2017-01-12 19:09:23','2017-01-12 19:10:52',12200,NULL,NULL,NULL,NULL,'IN_PROCESS',20000.00000,NULL,NULL,20000.00000,0.00000,0.00000,'INR',12200,'en_US'),(3801,12400,'2017-01-14 12:12:17','2017-01-14 12:13:24',12400,'sheetal@dadajigroup.com',NULL,NULL,NULL,'IN_PROCESS',30.00000,NULL,NULL,30.00000,0.00000,0.00000,'INR',12400,'en_US'),(3802,12402,'2017-01-14 12:52:38','2017-01-14 13:04:18',12402,'agrawal.sumit17@gmail.com',NULL,'201701141304181403802',NULL,'SUBMITTED',20.00000,'2017-01-14 13:04:18',NULL,20.00000,0.00000,0.00000,'INR',12402,'en_US'),(3851,12500,'2017-01-14 13:18:13','2017-01-14 13:18:39',12500,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',12500,'en_US'),(3901,12600,'2017-01-15 06:17:59','2017-01-15 06:18:17',12600,NULL,NULL,NULL,NULL,'IN_PROCESS',40.00000,NULL,NULL,40.00000,0.00000,0.00000,'INR',12600,'en_US'),(3951,12700,'2017-01-15 06:36:02','2017-01-15 06:36:03',12700,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',12700,'en_US'),(4001,12800,'2017-01-15 06:56:14','2017-01-15 07:19:17',12800,NULL,NULL,NULL,NULL,'IN_PROCESS',350.00000,NULL,NULL,350.00000,0.00000,0.00000,'INR',12800,'en_US'),(4051,13002,'2017-01-15 08:24:10','2017-01-15 08:25:59',13002,NULL,NULL,NULL,NULL,'IN_PROCESS',80.00000,NULL,NULL,80.00000,0.00000,0.00000,'INR',13002,'en_US'),(4101,13100,'2017-01-15 08:39:38','2017-01-15 08:41:33',13100,NULL,NULL,NULL,NULL,'IN_PROCESS',40.00000,NULL,NULL,40.00000,0.00000,0.00000,'INR',13100,'en_US'),(4151,13200,'2017-01-15 08:50:11','2017-01-15 09:00:37',13200,NULL,NULL,NULL,NULL,'IN_PROCESS',340.00000,NULL,NULL,340.00000,0.00000,0.00000,'INR',13200,'en_US'),(4201,13300,'2017-01-15 09:08:46','2017-01-15 09:09:14',13300,NULL,NULL,NULL,NULL,'IN_PROCESS',2520.00000,NULL,NULL,2520.00000,0.00000,0.00000,'INR',13300,'en_US'),(4251,13500,'2017-01-15 10:13:23','2017-01-15 10:27:43',13500,NULL,NULL,NULL,NULL,'IN_PROCESS',15040.00000,NULL,NULL,15040.00000,0.00000,0.00000,'INR',13500,'en_US'),(4301,13601,'2017-01-15 10:34:36','2017-01-15 10:39:57',13601,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13601,'en_US'),(4302,13600,'2017-01-15 10:40:44','2017-01-15 10:49:37',13600,'sheetal@dadajigroup.com',NULL,NULL,NULL,'IN_PROCESS',4570.00000,NULL,NULL,4570.00000,0.00000,0.00000,'INR',13600,'en_US'),(4351,13700,'2017-01-15 11:02:12','2017-01-15 11:02:41',13700,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13700,'en_US'),(4401,13800,'2017-01-15 11:18:09','2017-01-15 11:18:26',13800,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13800,'en_US'),(4451,13900,'2017-01-15 11:25:16','2017-01-15 11:25:36',13900,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',13900,'en_US'),(4501,14000,'2017-01-15 12:01:42','2017-01-15 12:02:06',14000,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14000,'en_US'),(4551,14100,'2017-01-15 12:20:03','2017-01-15 12:20:21',14100,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14100,'en_US'),(4601,14200,'2017-01-15 12:50:34','2017-01-15 12:54:01',14200,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14200,'en_US'),(4651,14300,'2017-01-15 13:12:06','2017-01-15 13:12:06',14300,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14300,'en_US'),(4701,14401,'2017-01-15 13:15:36','2017-01-15 13:15:37',14401,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14401,'en_US'),(4751,14500,'2017-01-15 13:21:56','2017-01-15 13:22:11',14500,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14500,'en_US'),(4801,14600,'2017-01-15 13:40:42','2017-01-15 13:41:49',14600,'agrawal.sumit17@gmail.com',NULL,'201701151341489944801',NULL,'SUBMITTED',20.00000,'2017-01-15 13:41:49',NULL,20.00000,0.00000,0.00000,'INR',14600,'en_US'),(4802,14600,'2017-01-15 13:50:38','2017-01-15 13:50:38',14600,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14600,'en_US'),(4851,14700,'2017-01-15 14:31:42','2017-01-15 14:31:43',14700,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14700,'en_US'),(4901,14800,'2017-01-15 14:42:51','2017-01-15 14:42:52',14800,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',14800,'en_US'),(4951,15100,'2017-01-16 05:56:52','2017-01-16 06:00:43',15100,NULL,NULL,NULL,NULL,'IN_PROCESS',15040.00000,NULL,NULL,15040.00000,0.00000,0.00000,'INR',15100,'en_US'),(5001,15200,'2017-01-16 06:07:48','2017-01-16 06:07:49',15200,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15200,'en_US'),(5002,15201,'2017-01-16 06:46:15','2017-01-16 06:46:15',15201,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15201,'en_US'),(5051,15300,'2017-01-16 06:55:42','2017-01-16 06:55:42',15300,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15300,'en_US'),(5101,15400,'2017-01-16 07:02:00','2017-01-16 07:02:01',15400,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15400,'en_US'),(5151,15500,'2017-01-17 04:25:40','2017-01-17 04:39:48',15500,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',15500,'en_US'),(5152,15501,'2017-01-17 04:27:28','2017-01-17 04:51:17',15501,'agrawal.sumit17@gmail.com',NULL,'201701170451172095152',NULL,'SUBMITTED',470.00000,'2017-01-17 04:51:17',NULL,470.00000,0.00000,0.00000,'INR',15501,'en_US'),(5201,16000,'2017-01-17 06:15:21','2017-01-17 06:15:22',16000,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',16000,'en_US'),(5251,16100,'2017-01-17 06:20:47','2017-01-17 06:20:48',16100,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',16100,'en_US'),(5301,16200,'2017-01-17 06:26:21','2017-01-17 06:26:22',16200,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',16200,'en_US'),(5351,16301,'2017-01-17 06:29:40','2017-01-17 06:30:01',16301,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',16301,'en_US'),(5401,16400,'2017-01-20 05:09:26','2017-01-20 05:11:34',16400,'agrawal.sumit17@gmail.com',NULL,'201701200511342545401',NULL,'SUBMITTED',20.00000,'2017-01-20 05:11:34',NULL,20.00000,0.00000,0.00000,'INR',16400,'en_US'),(5402,16401,'2017-01-20 05:14:26','2017-01-20 05:15:07',16401,'agrawal.sumit17@gmail.com',NULL,'201701200515071405402',NULL,'SUBMITTED',20.00000,'2017-01-20 05:15:07',NULL,20.00000,0.00000,0.00000,'INR',16401,'en_US'),(5403,16401,'2017-01-20 05:19:46','2017-01-20 05:20:44',16401,'agrawal.sumit17@gmail.com',NULL,'201701200520435935403',NULL,'SUBMITTED',20.00000,'2017-01-20 05:20:44',NULL,20.00000,0.00000,0.00000,'INR',16401,'en_US'),(5451,16503,'2017-01-20 05:51:59','2017-01-20 05:52:51',16503,'agrawal.sumit17@gmail.com',NULL,'201701200552505785451',NULL,'SUBMITTED',20.00000,'2017-01-20 05:52:51',NULL,20.00000,0.00000,0.00000,'INR',16503,'en_US'),(5501,17501,'2017-01-22 17:36:02','2017-01-22 17:38:56',17501,'sheetal@dadajigroup.com',NULL,'20170122173856695501',NULL,'SUBMITTED',30.00000,'2017-01-22 17:38:56',NULL,30.00000,0.00000,0.00000,'INR',17501,'en_US'),(5502,17501,'2017-01-22 17:48:57','2017-01-22 17:58:49',17501,'sheetal@dadajigroup.com',NULL,NULL,NULL,'IN_PROCESS',110.00000,NULL,NULL,110.00000,0.00000,0.00000,'INR',17501,'en_US'),(5503,17502,'2017-01-22 18:41:53','2017-01-22 18:43:06',17502,'agrawal.sumit17@gmail.com',NULL,'201701221843059835503',NULL,'SUBMITTED',20.00000,'2017-01-22 18:43:06',NULL,20.00000,0.00000,0.00000,'INR',17502,'en_US'),(5551,17601,'2017-01-23 16:31:01','2017-01-23 16:33:08',17601,'sheetal@dadajigroup.com',NULL,'201701231633082425551',NULL,'SUBMITTED',20.00000,'2017-01-23 16:33:08',NULL,20.00000,0.00000,0.00000,'INR',17601,'en_US'),(5601,17700,'2017-01-23 16:44:12','2017-01-23 16:45:44',17700,'sheetal@dadajigroup.com',NULL,'201701231645435085601',NULL,'SUBMITTED',50000.00000,'2017-01-23 16:45:44',NULL,50000.00000,0.00000,0.00000,'INR',17700,'en_US'),(5651,17801,'2017-01-25 10:45:56','2017-01-25 10:46:28',17801,'agrawal.sumit17@gmail.com',NULL,'201701251046288125651',NULL,'SUBMITTED',20.00000,'2017-01-25 10:46:28',NULL,20.00000,0.00000,0.00000,'INR',17801,'en_US'),(5701,17904,'2017-01-25 11:37:10','2017-01-25 11:37:50',17904,'agrawal.sumit17@gmail.com',NULL,'201701251137502175701',NULL,'SUBMITTED',20.00000,'2017-01-25 11:37:50',NULL,20.00000,0.00000,0.00000,'INR',17904,'en_US'),(5751,18033,'2017-01-25 17:59:39','2017-01-25 18:06:18',18033,'Sheetal@dadajigroup.com',NULL,'201701251806183355751',NULL,'SUBMITTED',700.00000,'2017-01-25 18:06:18',NULL,700.00000,0.00000,0.00000,'INR',18033,'en_US'),(5752,18037,'2017-01-25 19:51:48','2017-01-25 19:51:48',18037,NULL,NULL,NULL,NULL,'IN_PROCESS',15.00000,NULL,NULL,15.00000,0.00000,0.00000,'INR',18037,'en_US'),(5753,18480,'2017-01-25 22:10:43','2017-01-25 22:13:46',18480,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',18480,'en_US'),(5754,18484,'2017-01-25 22:35:42','2017-01-25 22:35:42',18484,NULL,NULL,NULL,NULL,'IN_PROCESS',2200.00000,NULL,NULL,2200.00000,0.00000,0.00000,'INR',18484,'en_US'),(5755,18552,'2017-01-26 13:38:10','2017-01-26 13:40:04',18552,NULL,NULL,NULL,NULL,'IN_PROCESS',20800.00000,NULL,NULL,20800.00000,0.00000,0.00000,'INR',18552,'en_US'),(5756,18588,'2017-01-26 14:21:46','2017-01-26 14:32:36',18588,'agrawal.sumit17@gmail.com',NULL,'201701261432369155756',NULL,'SUBMITTED',20.00000,'2017-01-26 14:32:36',NULL,20.00000,0.00000,0.00000,'INR',18588,'en_US'),(5757,18588,'2017-01-26 14:38:59','2017-01-26 14:39:07',18588,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',18588,'en_US'),(5758,18592,'2017-01-26 15:51:15','2017-01-26 15:51:33',18592,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',200.00000,NULL,NULL,200.00000,0.00000,0.00000,'INR',18592,'en_US'),(5801,18802,'2017-01-26 10:12:49','2017-01-26 10:19:36',18802,'agrawal.sumit17@gmail.com',NULL,'201701261019347675801',NULL,'SUBMITTED',600.00000,'2017-01-26 10:19:34',NULL,600.00000,0.00000,0.00000,'INR',18802,'en_US'),(5851,19000,'2017-01-26 11:15:42','2017-01-26 11:19:10',19000,'agrawal.sumit17@gmail.com',NULL,'201701261119089775851',NULL,'SUBMITTED',20.00000,'2017-01-26 11:19:08',NULL,20.00000,0.00000,0.00000,'INR',19000,'en_US'),(5901,19100,'2017-01-26 17:07:16','2017-01-26 17:07:42',19100,'agrawal.sumit17@gmail.com',NULL,'201701261707424205901',NULL,'SUBMITTED',20.00000,'2017-01-26 17:07:42',NULL,20.00000,0.00000,0.00000,'INR',19100,'en_US'),(5902,19100,'2017-01-26 17:13:48','2017-01-26 17:14:09',19100,'agrawal.sumit17@gmail.com',NULL,'201701261714093445902',NULL,'SUBMITTED',20.00000,'2017-01-26 17:14:09',NULL,20.00000,0.00000,0.00000,'INR',19100,'en_US'),(5903,19100,'2017-01-26 17:17:42','2017-01-26 17:18:03',19100,'agrawal.sumit17@gmail.com',NULL,'201701261718032575903',NULL,'SUBMITTED',20.00000,'2017-01-26 17:18:03',NULL,20.00000,0.00000,0.00000,'INR',19100,'en_US'),(5951,19200,'2017-01-26 17:25:51','2017-01-26 17:26:30',19200,'agrawal.sumit17@gmail.com',NULL,'201701261726309375951',NULL,'SUBMITTED',40.00000,'2017-01-26 17:26:30',NULL,40.00000,0.00000,0.00000,'INR',19200,'en_US'),(5952,19206,'2017-01-26 19:18:26','2017-01-26 19:20:10',19206,'Sheetal@dadajigroup.com',NULL,'201701261920101345952',NULL,'SUBMITTED',20000.00000,'2017-01-26 19:20:10',NULL,20000.00000,0.00000,0.00000,'INR',19206,'en_US'),(5953,19230,'2017-01-26 21:20:48','2017-01-26 21:20:48',19230,NULL,NULL,NULL,NULL,'IN_PROCESS',10000.00000,NULL,NULL,10000.00000,0.00000,0.00000,'INR',19230,'en_US'),(5954,19291,'2017-01-27 12:11:19','2017-01-27 12:11:45',19291,'agrawal.sumit17@gmail.com',NULL,'201701271211458455954',NULL,'SUBMITTED',20.00000,'2017-01-27 12:11:45',NULL,20.00000,0.00000,0.00000,'INR',19291,'en_US'),(5955,19303,'2017-01-27 16:16:02','2017-01-27 16:16:13',19303,'a@a.com',NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',19303,'en_US'),(5956,19317,'2017-01-27 19:12:41','2017-01-27 19:12:41',19317,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',19317,'en_US'),(6001,19701,'2017-01-28 09:36:20','2017-01-28 09:38:14',19701,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',60.00000,NULL,NULL,60.00000,0.00000,0.00000,'INR',19701,'en_US'),(6051,19800,'2017-01-28 15:16:14','2017-01-28 15:18:19',19800,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',19800,'en_US'),(6101,19901,'2017-01-28 15:25:56','2017-01-28 15:27:04',19901,'agrawal.sumit17@gmail.com',NULL,'201701281527048436101',NULL,'SUBMITTED',20.00000,'2017-01-28 15:27:04',NULL,20.00000,0.00000,0.00000,'INR',19901,'en_US'),(6102,19900,'2017-01-28 15:30:29','2017-01-28 15:31:06',19900,'a@a.com',NULL,'201701281531066286102',NULL,'SUBMITTED',50000.00000,'2017-01-28 15:31:06',NULL,50000.00000,0.00000,0.00000,'INR',19900,'en_US'),(6151,20109,'2017-01-29 21:46:56','2017-01-29 21:46:57',20109,NULL,NULL,NULL,NULL,'IN_PROCESS',10000.00000,NULL,NULL,10000.00000,0.00000,0.00000,'INR',20109,'en_US'),(6201,20202,'2017-01-31 10:54:58','2017-01-31 10:55:00',20202,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',20202,'en_US'),(6251,20325,'2017-02-01 10:19:57','2017-02-01 10:19:57',20325,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',20325,'en_US'),(6301,20405,'2017-02-01 23:40:59','2017-02-01 23:42:35',20405,'test@gg.com',NULL,NULL,NULL,'IN_PROCESS',270.00000,NULL,NULL,270.00000,0.00000,0.00000,'INR',20405,'en_US'),(6302,20409,'2017-02-02 00:33:32','2017-02-02 00:33:49',20409,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',20409,'en_US'),(6303,20514,'2017-02-03 17:37:21','2017-02-03 17:37:21',20514,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',20514,'en_US'),(6304,20540,'2017-02-04 10:41:46','2017-02-04 10:42:33',20540,'agrawal.sumit17@gmail.com',NULL,'201702041042334756304',NULL,'SUBMITTED',5000.00000,'2017-02-04 10:42:33',NULL,5000.00000,0.00000,0.00000,'INR',20540,'en_US'),(6305,20665,'2017-02-08 02:45:29','2017-02-08 02:45:29',20665,NULL,NULL,NULL,NULL,'IN_PROCESS',200.00000,NULL,NULL,200.00000,0.00000,0.00000,'INR',20665,'en_US'),(6351,20916,'2017-02-08 13:06:46','2017-02-08 13:06:46',20916,NULL,NULL,NULL,NULL,'IN_PROCESS',250.00000,NULL,NULL,250.00000,0.00000,0.00000,'INR',20916,'en_US'),(6401,21700,'2017-02-10 14:30:04','2017-02-10 14:30:05',21700,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',21700,'en_US'),(6402,21790,'2017-02-13 10:41:19','2017-02-13 10:41:27',21790,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',21790,'en_US'),(6403,21800,'2017-02-13 18:33:20','2017-02-13 18:33:20',21800,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',21800,'en_US'),(6404,21808,'2017-02-13 20:56:39','2017-02-13 20:56:40',21808,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',21808,'en_US'),(6405,22098,'2017-02-18 13:09:48','2017-02-18 13:09:57',22098,'agrawal.sumit17@gmail.com',NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',22098,'en_US'),(6406,22106,'2017-02-18 15:43:25','2017-02-18 15:43:25',22106,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',22106,'en_US'),(6407,22118,'2017-02-18 18:27:11','2017-02-18 18:27:49',22118,'agrawal.sumit17@gmail.com',NULL,'201702181827496106407',NULL,'SUBMITTED',5000.00000,'2017-02-18 18:27:49',NULL,5000.00000,0.00000,0.00000,'INR',22118,'en_US'),(6451,22928,'2017-02-22 08:28:58','2017-02-22 08:33:05',22928,'arpittalks@gmail.com',NULL,'20170222083305876451',NULL,'SUBMITTED',27600.00000,'2017-02-22 08:33:05',NULL,27600.00000,0.00000,0.00000,'INR',22928,'en_US'),(6452,23637,'2017-02-25 19:27:51','2017-02-25 19:27:51',23637,NULL,NULL,NULL,NULL,'IN_PROCESS',20000.00000,NULL,NULL,20000.00000,0.00000,0.00000,'INR',23637,'en_US'),(6501,24600,'2017-02-28 14:08:17','2017-02-28 14:27:29',24600,'a@a.com',NULL,NULL,NULL,'IN_PROCESS',5200.00000,NULL,NULL,5200.00000,0.00000,0.00000,'INR',24600,'en_US'),(6551,24700,'2017-02-28 14:33:07','2017-02-28 14:33:44',24700,'a@a.com',NULL,'201702281433442236551',NULL,'SUBMITTED',5000.00000,'2017-02-28 14:33:44',NULL,5000.00000,0.00000,0.00000,'INR',24700,'en_US'),(6552,25289,'2017-03-04 10:32:10','2017-03-04 10:33:17',25289,'veersinghchauhan888@gmail.com',NULL,NULL,NULL,'IN_PROCESS',4000.00000,NULL,NULL,4000.00000,0.00000,0.00000,'INR',25289,'en_US'),(6553,25350,'2017-03-05 02:27:39','2017-03-05 02:29:43',25350,'veersinghchauhan888@gmail.com',NULL,'201703050229438936553',NULL,'SUBMITTED',4000.00000,'2017-03-05 02:29:43',NULL,4000.00000,0.00000,0.00000,'INR',25350,'en_US'),(6554,25981,'2017-03-10 15:28:30','2017-03-10 15:28:42',25981,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',25981,'en_US'),(6555,25988,'2017-03-10 17:41:52','2017-03-10 18:22:03',25988,NULL,NULL,NULL,NULL,'IN_PROCESS',20000.00000,NULL,NULL,20000.00000,0.00000,0.00000,'INR',25988,'en_US'),(6601,26714,'2017-03-22 19:02:28','2017-03-22 19:02:29',26714,NULL,NULL,NULL,NULL,'IN_PROCESS',12000.00000,NULL,NULL,12000.00000,0.00000,0.00000,'INR',26714,'en_US'),(6602,26799,'2017-03-24 10:40:09','2017-03-24 10:40:09',26799,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',26799,'en_US'),(6603,26805,'2017-03-24 14:42:37','2017-03-24 14:42:38',26805,NULL,NULL,NULL,NULL,'IN_PROCESS',9000.00000,NULL,NULL,9000.00000,0.00000,0.00000,'INR',26805,'en_US'),(6651,26929,'2017-03-26 22:38:16','2017-03-26 22:38:17',26929,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',26929,'en_US'),(6652,26982,'2017-03-28 01:37:06','2017-03-28 01:37:07',26982,NULL,NULL,NULL,NULL,'IN_PROCESS',6400.00000,NULL,NULL,6400.00000,0.00000,0.00000,'INR',26982,'en_US'),(6653,27046,'2017-03-29 09:06:20','2017-03-29 09:08:22',27046,NULL,NULL,NULL,NULL,'IN_PROCESS',20.00000,NULL,NULL,20.00000,0.00000,0.00000,'INR',27046,'en_US'),(6701,27695,'2017-04-06 13:19:59','2017-04-06 13:20:00',27695,NULL,NULL,NULL,NULL,'IN_PROCESS',10000.00000,NULL,NULL,10000.00000,0.00000,0.00000,'INR',27695,'en_US'),(6751,28390,'2017-04-14 15:23:57','2017-04-14 15:23:58',28390,NULL,NULL,NULL,NULL,'IN_PROCESS',4000.00000,NULL,NULL,4000.00000,0.00000,0.00000,'INR',28390,'en_US'),(6801,28876,'2017-04-19 17:01:10','2017-04-19 17:01:11',28876,NULL,NULL,NULL,NULL,'IN_PROCESS',15000.00000,NULL,NULL,15000.00000,0.00000,0.00000,'INR',28876,'en_US'),(6802,29149,'2017-04-24 13:29:19','2017-04-24 13:29:30',29149,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',29149,'en_US'),(6851,30810,'2017-05-18 16:03:20','2017-05-18 16:03:23',30810,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',30810,'en_US'),(6852,31456,'2017-05-26 13:13:32','2017-05-26 13:13:32',31456,NULL,NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',31456,'en_US'),(6853,32092,'2017-06-02 14:03:52','2017-06-02 14:03:53',32092,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',32092,'en_US'),(6854,32948,'2017-06-12 17:28:47','2017-06-12 17:28:47',32948,NULL,NULL,NULL,NULL,'IN_PROCESS',9000.00000,NULL,NULL,9000.00000,0.00000,0.00000,'INR',32948,'en_US'),(6855,33207,'2017-06-16 20:56:25','2017-06-16 20:56:26',33207,NULL,NULL,NULL,NULL,'IN_PROCESS',800.00000,NULL,NULL,800.00000,0.00000,0.00000,'INR',33207,'en_US'),(6901,33804,'2017-06-23 15:23:12','2017-06-23 15:23:53',33804,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',33804,'en_US'),(6902,35538,'2017-07-21 15:53:17','2017-07-21 15:53:17',35538,NULL,NULL,NULL,NULL,'IN_PROCESS',10000.00000,NULL,NULL,10000.00000,0.00000,0.00000,'INR',35538,'en_US'),(6903,35758,'2017-07-23 20:45:50','2017-07-23 20:45:58',35758,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',35758,'en_US'),(6951,38222,'2017-08-30 23:57:07','2017-08-30 23:57:13',38222,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',38222,'en_US'),(6952,38372,'2017-09-01 19:57:01','2017-09-01 19:57:01',38372,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',38372,'en_US'),(7001,40429,'2017-09-30 20:21:41','2017-09-30 20:22:28',40429,'rahulnagpure92@gmail.com',NULL,NULL,NULL,'IN_PROCESS',5000.00000,NULL,NULL,5000.00000,0.00000,0.00000,'INR',40429,'en_US'),(7002,40569,'2017-10-02 13:16:41','2017-10-02 13:16:41',40569,NULL,NULL,NULL,NULL,'IN_PROCESS',2800.00000,NULL,NULL,2800.00000,0.00000,0.00000,'INR',40569,'en_US'),(7003,41279,'2017-10-13 13:53:17','2017-10-13 13:53:17',41279,NULL,NULL,NULL,NULL,'IN_PROCESS',9000.00000,NULL,NULL,9000.00000,0.00000,0.00000,'INR',41279,'en_US'),(7004,41281,'2017-10-13 15:03:08','2017-10-13 15:03:09',41281,NULL,NULL,NULL,NULL,'IN_PROCESS',10000.00000,NULL,NULL,10000.00000,0.00000,0.00000,'INR',41281,'en_US'),(7005,41907,'2017-10-23 00:16:06','2017-10-23 00:16:06',41907,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',41907,'en_US'),(7006,41928,'2017-10-23 12:56:41','2017-10-23 12:56:41',41928,NULL,NULL,NULL,NULL,'IN_PROCESS',11000.00000,NULL,NULL,11000.00000,0.00000,0.00000,'INR',41928,'en_US'),(7007,41973,'2017-10-24 20:29:13','2017-10-24 20:29:14',41973,NULL,NULL,NULL,NULL,'IN_PROCESS',2800.00000,NULL,NULL,2800.00000,0.00000,0.00000,'INR',41973,'en_US'),(7008,43166,'2017-11-09 22:54:00','2017-11-09 22:54:00',43166,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',43166,'en_US'),(7051,43629,'2017-11-18 14:33:46','2017-11-18 14:36:11',43629,'aman.jain1209@gmail.com',NULL,NULL,NULL,'IN_PROCESS',16000.00000,NULL,NULL,16000.00000,0.00000,0.00000,'INR',43629,'en_US'),(7052,43756,'2017-11-20 21:05:53','2017-11-20 21:13:25',43756,'shubhamsaxena7@gmail.com',NULL,'201711202113252427052',NULL,'SUBMITTED',14500.00000,'2017-11-20 21:13:25',NULL,14500.00000,0.00000,0.00000,'INR',43756,'en_US'),(7053,45534,'2017-12-12 14:13:21','2017-12-12 14:13:21',45534,NULL,NULL,NULL,NULL,'IN_PROCESS',4000.00000,NULL,NULL,4000.00000,0.00000,0.00000,'INR',45534,'en_US'),(7101,47248,'2018-01-02 22:27:46','2018-01-02 22:38:22',47248,NULL,NULL,NULL,NULL,'IN_PROCESS',43900.00000,NULL,NULL,43900.00000,0.00000,0.00000,'INR',47248,'en_US'),(7102,47312,'2018-01-03 15:29:43','2018-01-03 15:29:43',47312,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',47312,'en_US'),(7103,47293,'2018-01-03 15:29:48','2018-01-03 15:30:03',47293,NULL,NULL,NULL,NULL,'IN_PROCESS',24020.00000,NULL,NULL,24020.00000,0.00000,0.00000,'INR',47293,'en_US'),(7104,47720,'2018-01-09 12:55:03','2018-01-09 12:55:03',47720,NULL,NULL,NULL,NULL,'IN_PROCESS',14000.00000,NULL,NULL,14000.00000,0.00000,0.00000,'INR',47720,'en_US'),(7105,47725,'2018-01-09 13:35:32','2018-01-09 13:40:44',47725,'piscean.parul@gmail.com',NULL,NULL,NULL,'IN_PROCESS',29500.00000,NULL,NULL,29500.00000,0.00000,0.00000,'INR',47725,'en_US'),(7106,47728,'2018-01-09 14:19:21','2018-01-09 14:48:19',47728,NULL,NULL,NULL,NULL,'IN_PROCESS',47500.00000,NULL,NULL,47500.00000,0.00000,0.00000,'INR',47728,'en_US'),(7107,47888,'2018-01-11 00:02:37','2018-01-11 00:02:37',47888,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'INR',47888,'en_US'),(7108,47886,'2018-01-11 00:02:38','2018-01-11 00:02:38',47886,NULL,NULL,NULL,NULL,'IN_PROCESS',8000.00000,NULL,NULL,8000.00000,0.00000,0.00000,'INR',47886,'en_US'),(7109,47945,'2018-01-11 14:07:58','2018-01-11 14:18:07',47945,NULL,NULL,NULL,NULL,'IN_PROCESS',64350.00000,NULL,NULL,64350.00000,0.00000,0.00000,'INR',47945,'en_US'),(7110,47950,'2018-01-11 17:05:12','2018-01-11 17:19:20',47950,NULL,NULL,NULL,NULL,'IN_PROCESS',63100.00000,NULL,NULL,63100.00000,0.00000,0.00000,'INR',47950,'en_US');
/*!40000 ALTER TABLE `BLC_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ADJUSTMENT`
--

DROP TABLE IF EXISTS `BLC_ORDER_ADJUSTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ADJUSTMENT` (
  `ORDER_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ADJUSTMENT_ID`),
  KEY `ORDERADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `ORDERADJUST_ORDER_INDEX` (`ORDER_ID`),
  KEY `FK1E92D164D5F3FAF4` (`OFFER_ID`),
  KEY `FK1E92D16489FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK1E92D16489FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FK1E92D164D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ADJUSTMENT`
--

LOCK TABLES `BLC_ORDER_ADJUSTMENT` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ADJUSTMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_ADJUSTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `BLC_ORDER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ATTRIBUTE` (
  `ORDER_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ATTRIBUTE_ID`),
  KEY `FKB3A467A589FE8A02` (`ORDER_ID`),
  CONSTRAINT `FKB3A467A589FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ATTRIBUTE`
--

LOCK TABLES `BLC_ORDER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ITEM`
--

DROP TABLE IF EXISTS `BLC_ORDER_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ITEM` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DISCOUNTS_ALLOWED` tinyint(1) DEFAULT NULL,
  `ITEM_TAXABLE_FLAG` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `RETAIL_PRICE_OVERRIDE` tinyint(1) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE_OVERRIDE` tinyint(1) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `GIFT_WRAP_ITEM_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `PARENT_ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  `PERSONAL_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `ORDERITEM_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `ORDERITEM_GIFT_INDEX` (`GIFT_WRAP_ITEM_ID`),
  KEY `ORDERITEM_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERITEM_TYPE_INDEX` (`ORDER_ITEM_TYPE`),
  KEY `ORDERITEM_PARENT_INDEX` (`PARENT_ORDER_ITEM_ID`),
  KEY `ORDERITEM_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FK9A2E704A15D1A13D` (`CATEGORY_ID`),
  KEY `FK9A2E704AFD2F1F10` (`GIFT_WRAP_ITEM_ID`),
  KEY `FK9A2E704A89FE8A02` (`ORDER_ID`),
  KEY `FK9A2E704AB0B0D00A` (`PARENT_ORDER_ITEM_ID`),
  KEY `FK9A2E704A77F565E1` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK9A2E704A15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK9A2E704A77F565E1` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `BLC_PERSONAL_MESSAGE` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK9A2E704A89FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FK9A2E704AB0B0D00A` FOREIGN KEY (`PARENT_ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9A2E704AFD2F1F10` FOREIGN KEY (`GIFT_WRAP_ITEM_ID`) REFERENCES `BLC_GIFTWRAP_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ITEM`
--

LOCK TABLES `BLC_ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM` DISABLE KEYS */;
INSERT INTO `BLC_ORDER_ITEM` VALUES (155,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,5,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,151,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,1,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,151,NULL,NULL,NULL),(201,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,201,NULL,NULL,NULL),(202,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,201,NULL,NULL,NULL),(251,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,251,NULL,NULL,NULL),(252,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,251,NULL,NULL,NULL),(253,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,1,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,251,NULL,NULL,NULL),(301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,301,NULL,NULL,NULL),(351,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,351,NULL,NULL,NULL),(401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,401,NULL,NULL,NULL),(451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,451,NULL,NULL,NULL),(501,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,501,NULL,NULL,NULL),(551,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,551,NULL,NULL,NULL),(601,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,601,NULL,NULL,NULL),(651,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,651,NULL,NULL,NULL),(701,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,1,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,701,NULL,NULL,NULL),(751,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,751,NULL,NULL,NULL),(802,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,801,NULL,NULL,NULL),(851,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,851,NULL,NULL,NULL),(852,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,851,NULL,NULL,NULL),(901,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,901,NULL,NULL,NULL),(951,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,951,NULL,NULL,NULL),(1002,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1001,NULL,NULL,NULL),(1051,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1051,NULL,NULL,NULL),(1101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1101,NULL,NULL,NULL),(1151,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1151,NULL,NULL,NULL),(1201,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1201,NULL,NULL,NULL),(1251,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1251,NULL,NULL,'2016-12-30 14:35:51'),(1252,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1251,NULL,NULL,'2016-12-30 14:36:55'),(1301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,3,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1301,NULL,NULL,NULL),(1351,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1351,NULL,NULL,'2016-12-30 16:50:15'),(1401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1401,NULL,NULL,'2016-12-30 17:43:02'),(1451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1451,NULL,NULL,'2016-12-30 18:14:36'),(1501,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1501,NULL,NULL,'2016-12-30 18:20:57'),(1551,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1551,NULL,NULL,'2016-12-30 18:33:30'),(1601,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1601,NULL,NULL,'2016-12-30 18:49:08'),(1651,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1651,NULL,NULL,'2016-12-30 19:58:35'),(1701,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1701,NULL,NULL,'2017-01-17 00:00:00'),(1702,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1701,NULL,NULL,'2018-09-17 00:00:00'),(1703,NULL,NULL,NULL,NULL,NULL,1,'Armageddon The Hot Sauce To End All','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12.99000,1,12.99000,NULL,12.99000,NULL,NULL,2002,NULL,1701,NULL,NULL,'2016-12-01 00:00:00'),(1751,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1751,NULL,NULL,'2017-01-25 00:00:00'),(1801,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1801,NULL,NULL,'2017-01-31 00:00:00'),(1851,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1851,NULL,NULL,NULL),(1901,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1901,NULL,NULL,'2017-01-25 00:00:00'),(1951,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,1951,NULL,NULL,'2017-01-10 00:00:00'),(2001,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2001,NULL,NULL,'2017-01-01 00:00:00'),(2051,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2051,NULL,NULL,'2017-01-01 00:00:00'),(2101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2101,NULL,NULL,'2017-01-28 00:00:00'),(2151,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2151,NULL,NULL,'2017-01-03 00:00:00'),(2201,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,1,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,2201,NULL,NULL,'2017-01-01 00:00:00'),(2252,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2251,NULL,NULL,'2017-01-25 00:00:00'),(2301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2301,NULL,NULL,'2017-01-03 00:00:00'),(2351,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2351,NULL,NULL,'2017-01-24 00:00:00'),(2401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2401,NULL,NULL,'2017-01-11 00:00:00'),(2451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2451,NULL,NULL,'2017-01-03 00:00:00'),(2501,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2501,NULL,NULL,'2017-01-10 00:00:00'),(2551,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2551,NULL,NULL,'2017-01-02 00:00:00'),(2601,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2601,NULL,NULL,'2017-01-01 00:00:00'),(2651,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2651,NULL,NULL,'2017-01-02 00:00:00'),(2652,NULL,NULL,NULL,NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,2651,NULL,NULL,'2017-01-01 00:00:00'),(2701,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2701,NULL,NULL,'2017-01-25 00:00:00'),(2751,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2751,NULL,NULL,'2017-01-01 00:00:00'),(2801,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2801,NULL,NULL,'2017-01-19 00:00:00'),(2851,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,2,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,2851,NULL,NULL,'2017-01-02 00:00:00'),(2901,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,2901,NULL,NULL,'2017-01-04 00:00:00'),(2951,NULL,NULL,NULL,NULL,NULL,0,'Chair','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',10.00000,2,10.00000,NULL,10.00000,NULL,NULL,2018,NULL,2951,NULL,NULL,'2017-01-09 00:00:00'),(2952,NULL,NULL,NULL,NULL,NULL,0,'chair','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15.00000,1,15.00000,NULL,15.00000,NULL,NULL,2018,NULL,2951,NULL,NULL,'2017-01-09 00:00:00'),(3001,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3001,NULL,NULL,'2017-01-09 00:00:00'),(3051,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3051,NULL,NULL,'2017-01-30 00:00:00'),(3101,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3101,NULL,NULL,'2017-01-01 00:00:00'),(3151,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3151,NULL,NULL,'2017-01-02 00:00:00'),(3201,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3201,NULL,NULL,'2017-01-04 00:00:00'),(3251,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3251,NULL,NULL,'2017-01-05 00:00:00'),(3252,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3252,NULL,NULL,'2017-01-10 00:00:00'),(3301,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3301,NULL,NULL,'2017-01-18 00:00:00'),(3351,NULL,NULL,NULL,NULL,NULL,1,'Hawt Like a Habanero Shirt (Men\'s)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14.99000,2,14.99000,NULL,14.99000,NULL,NULL,2003,NULL,3351,NULL,NULL,'2017-01-10 00:00:00'),(3401,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3401,NULL,NULL,'2017-01-03 00:00:00'),(3402,NULL,NULL,NULL,NULL,NULL,1,'Cafe Louisiane Sweet Cajun Blackening Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3402,NULL,NULL,NULL),(3451,NULL,NULL,NULL,NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3451,NULL,NULL,'2017-01-03 00:00:00'),(3501,NULL,'2017-01-09 06:15:59','2017-01-09 06:16:00',NULL,NULL,NULL,'Round Table with Cover & Top','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,1,200.00000,NULL,200.00000,NULL,NULL,2070,NULL,3501,NULL,NULL,NULL),(3551,NULL,'2017-01-11 06:24:29','2017-01-11 06:24:29',NULL,NULL,1,'Hoppin\' Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4.99000,1,4.99000,NULL,4.99000,NULL,NULL,2002,NULL,3551,NULL,NULL,'2017-01-18 00:00:00'),(3601,NULL,'2017-01-11 06:34:21','2017-01-11 06:34:22',NULL,NULL,NULL,'Curve Stage','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',31000.00000,1,31000.00000,NULL,31000.00000,NULL,NULL,2002,NULL,3601,NULL,NULL,'2017-01-12 00:00:00'),(3702,NULL,NULL,NULL,NULL,NULL,NULL,'Front Truss Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,20000.00000,NULL,20000.00000,NULL,NULL,2074,NULL,3702,NULL,NULL,'2017-01-10 00:00:00'),(3703,NULL,NULL,NULL,NULL,NULL,NULL,'Parken Light LED','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250.00000,1,250.00000,NULL,250.00000,NULL,NULL,2076,NULL,3701,NULL,NULL,'2017-01-02 00:00:00'),(3751,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1000,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3751,NULL,NULL,'2017-01-03 00:00:00'),(3801,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,3801,NULL,NULL,'2017-01-13 00:00:00'),(3802,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3802,NULL,NULL,'2017-01-10 00:00:00'),(3851,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3851,NULL,NULL,'2017-01-10 00:00:00'),(3901,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3901,NULL,NULL,'2018-12-01 00:00:00'),(3902,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,3901,NULL,NULL,'2019-06-01 00:00:00'),(3951,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,3951,NULL,NULL,'2019-01-01 00:00:00'),(4001,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4001,NULL,NULL,'2018-06-01 00:00:00'),(4002,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,4001,NULL,NULL,'2017-01-12 00:00:00'),(4003,NULL,NULL,NULL,NULL,NULL,NULL,'Sofa with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',300.00000,1,300.00000,NULL,NULL,NULL,NULL,2069,NULL,4001,NULL,NULL,'2019-04-01 00:00:00'),(4051,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,3,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4051,NULL,NULL,'2018-06-01 00:00:00'),(4052,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4051,NULL,NULL,'2018-08-01 00:00:00'),(4101,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4101,NULL,NULL,'2018-07-01 00:00:00'),(4102,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4101,NULL,NULL,'2019-04-01 00:00:00'),(4151,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4151,NULL,NULL,'2019-04-01 00:00:00'),(4152,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4151,NULL,NULL,'2019-04-01 00:00:00'),(4153,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',150.00000,2,150.00000,NULL,150.00000,NULL,NULL,2070,NULL,4151,NULL,NULL,'2017-10-01 00:00:00'),(4201,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4201,NULL,NULL,'2019-04-01 00:00:00'),(4202,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',2500.00000,1,2500.00000,NULL,2500.00000,NULL,NULL,2073,NULL,4201,NULL,NULL,'2018-07-01 00:00:00'),(4251,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4251,NULL,NULL,'2017-11-11 00:00:00'),(4252,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4251,NULL,NULL,'2017-01-01 00:00:00'),(4253,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-Combo-2','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2220,NULL,4251,NULL,NULL,'2018-06-01 00:00:00'),(4306,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4301,NULL,NULL,'2017-01-19 00:00:00'),(4307,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi with Decor','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4500.00000,1,4500.00000,NULL,4500.00000,NULL,NULL,2168,NULL,4302,NULL,NULL,'2017-01-11 00:00:00'),(4308,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,4302,NULL,NULL,'2017-01-11 00:00:00'),(4309,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover & Ribbon','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',40.00000,1,40.00000,NULL,40.00000,NULL,NULL,2069,NULL,4302,NULL,NULL,'2017-01-10 00:00:00'),(4351,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4351,NULL,NULL,'2017-01-26 00:00:00'),(4401,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4401,NULL,NULL,'2017-01-25 00:00:00'),(4451,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4451,NULL,NULL,'2017-01-18 00:00:00'),(4501,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4501,NULL,NULL,'2017-01-25 00:00:00'),(4551,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4551,NULL,NULL,'2017-01-18 00:00:00'),(4601,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4601,NULL,NULL,'2017-01-19 00:00:00'),(4651,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4651,NULL,NULL,'2017-01-25 00:00:00'),(4701,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4701,NULL,NULL,'2017-01-18 00:00:00'),(4751,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4751,NULL,NULL,'2017-01-24 00:00:00'),(4801,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4801,NULL,NULL,'2017-01-23 00:00:00'),(4802,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4802,NULL,NULL,'2017-01-25 00:00:00'),(4851,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4851,NULL,NULL,'2017-01-24 00:00:00'),(4901,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4901,NULL,NULL,'2017-01-24 00:00:00'),(4951,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,4951,NULL,NULL,'2017-02-10 00:00:00'),(4952,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,4951,NULL,NULL,'2017-01-25 00:00:00'),(4953,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-Combo-2','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2220,NULL,4951,NULL,NULL,'2017-01-30 00:00:00'),(5001,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5001,NULL,NULL,'2017-01-28 00:00:00'),(5002,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5002,NULL,NULL,'2017-01-17 00:00:00'),(5051,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5051,NULL,NULL,'2017-01-25 00:00:00'),(5101,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5101,NULL,NULL,'2017-01-19 00:00:00'),(5151,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5151,NULL,NULL,'2017-01-24 00:00:00'),(5152,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5152,NULL,NULL,'2017-01-26 00:00:00'),(5153,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',150.00000,3,150.00000,NULL,150.00000,NULL,NULL,2070,NULL,5152,NULL,NULL,'2017-01-30 00:00:00'),(5201,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5201,NULL,NULL,'2017-01-26 00:00:00'),(5251,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5251,NULL,NULL,'2017-01-19 00:00:00'),(5301,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5301,NULL,NULL,'2017-01-18 00:00:00'),(5351,NULL,NULL,NULL,NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5351,NULL,NULL,'2017-01-17 00:00:00'),(5401,NULL,'2017-01-20 05:09:26','2017-01-20 05:09:27',NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5401,NULL,NULL,'2017-01-25 00:00:00'),(5402,NULL,'2017-01-20 05:14:26','2017-01-20 05:14:26',NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5402,NULL,NULL,'2017-01-25 00:00:00'),(5403,NULL,'2017-01-20 05:19:47','2017-01-20 05:19:47',NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5403,NULL,NULL,'2017-01-26 00:00:00'),(5451,NULL,'2017-01-20 05:51:59','2017-01-20 05:52:00',NULL,NULL,NULL,'Hut Pandal-3','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,5451,NULL,NULL,'2017-01-31 00:00:00'),(5501,NULL,'2017-01-22 17:36:13','2017-01-22 17:36:14',NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,5501,NULL,NULL,'2017-01-22 00:00:00'),(5502,NULL,'2017-01-22 17:48:57','2017-01-22 17:49:31',NULL,NULL,NULL,'Chair Cushion with Cover & Ribbon','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',40.00000,2,40.00000,NULL,40.00000,NULL,NULL,2069,NULL,5502,NULL,NULL,'2017-01-23 00:00:00'),(5503,NULL,'2017-01-22 17:58:48','2017-01-22 17:58:49',NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,1,30.00000,NULL,30.00000,NULL,NULL,2069,NULL,5502,NULL,NULL,'2017-01-25 00:00:00'),(5504,NULL,'2017-01-22 18:41:53','2017-01-22 18:41:53',NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5503,NULL,NULL,'2017-01-26 00:00:00'),(5551,NULL,'2017-01-23 16:31:02','2017-01-23 16:31:02',NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5551,NULL,NULL,'2017-01-26 00:00:00'),(5601,NULL,'2017-01-23 16:44:12','2017-01-23 16:44:13',NULL,NULL,NULL,'Box Truss Light-Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',50000.00000,1,50000.00000,NULL,50000.00000,NULL,NULL,2074,NULL,5601,NULL,NULL,'2017-01-25 00:00:00'),(5651,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5651,NULL,NULL,'2017-01-26 00:00:00'),(5701,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2069,NULL,5701,NULL,NULL,'2017-01-26 00:00:00'),(5751,NULL,NULL,NULL,NULL,NULL,NULL,'Ceiling Printed Pandal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',350.00000,2,350.00000,NULL,350.00000,NULL,NULL,2071,NULL,5751,NULL,NULL,'2017-01-26 00:00:00'),(5752,NULL,NULL,NULL,NULL,NULL,0,'chair','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15.00000,1,15.00000,NULL,15.00000,NULL,NULL,2073,NULL,5752,NULL,NULL,'2017-01-26 00:00:00'),(5755,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,110,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5754,NULL,NULL,'2019-03-01 00:00:00'),(5756,NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen Normal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,8000.00000,NULL,8000.00000,NULL,NULL,2127,NULL,5755,NULL,NULL,'2017-01-26 00:00:00'),(5757,NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen Normal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12800.00000,1,12800.00000,NULL,12800.00000,NULL,NULL,2127,NULL,5755,NULL,NULL,'2019-02-01 00:00:00'),(5758,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5756,NULL,NULL,'2017-01-26 00:00:00'),(5759,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5757,NULL,NULL,'2017-01-27 00:00:00'),(5760,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,1,200.00000,NULL,200.00000,NULL,NULL,2070,NULL,5758,NULL,NULL,'2017-01-26 00:00:00'),(5801,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,3,200.00000,NULL,200.00000,NULL,NULL,2070,NULL,5801,NULL,NULL,'2017-01-31 00:00:00'),(5851,NULL,'2017-01-26 11:15:49','2017-01-26 11:15:56',NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5851,NULL,NULL,'2017-01-27 00:00:00'),(5901,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5901,NULL,NULL,'2017-01-26 00:00:00'),(5902,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5902,NULL,NULL,'2017-01-28 00:00:00'),(5903,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5903,NULL,NULL,'2017-01-27 00:00:00'),(5951,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,2,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5951,NULL,NULL,'2017-11-11 00:00:00'),(5952,NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen ( Bride & Groom ) Entry','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,20000.00000,NULL,20000.00000,NULL,NULL,2318,NULL,5952,NULL,NULL,'2017-01-26 00:00:00'),(5953,NULL,NULL,NULL,NULL,NULL,NULL,'DJ 12000 watt','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',10000.00000,1,10000.00000,NULL,10000.00000,NULL,NULL,2075,NULL,5953,NULL,NULL,'2017-01-30 00:00:00'),(5954,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5954,NULL,NULL,'2017-01-27 00:00:00'),(5955,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5955,NULL,NULL,'2017-01-30 00:00:00'),(5956,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,5956,NULL,NULL,'2017-01-31 00:00:00'),(6001,NULL,'2017-01-28 09:36:27','2017-01-28 09:36:48',NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,2,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,6001,NULL,NULL,'2017-01-31 00:00:00'),(6002,NULL,'2017-01-28 09:36:32','2017-01-28 09:36:37',NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,6001,NULL,NULL,'2019-07-01 00:00:00'),(6052,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,6051,NULL,NULL,'2017-01-30 00:00:00'),(6101,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2268,NULL,6101,NULL,NULL,'2017-01-30 00:00:00'),(6102,NULL,NULL,NULL,NULL,NULL,NULL,'Box Truss Light-Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',50000.00000,1,50000.00000,NULL,50000.00000,NULL,NULL,2074,NULL,6102,NULL,NULL,'2017-01-30 00:00:00'),(6151,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,2,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6151,NULL,NULL,'2017-01-30 00:00:00'),(6201,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6201,NULL,NULL,'2017-01-31 00:00:00'),(6251,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6251,NULL,NULL,'2017-02-17 00:00:00'),(6301,NULL,NULL,NULL,NULL,NULL,NULL,'Truss Pandal Semi Open','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,6301,NULL,NULL,'2017-02-15 00:00:00'),(6302,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Theme Cover & Top','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250.00000,1,250.00000,NULL,250.00000,NULL,NULL,2070,NULL,6301,NULL,NULL,'2018-03-02 00:00:00'),(6304,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6303,NULL,NULL,'2017-02-23 00:00:00'),(6305,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6304,NULL,NULL,'2017-02-16 00:00:00'),(6306,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,1,200.00000,NULL,200.00000,NULL,NULL,2070,NULL,6305,NULL,NULL,'2017-02-09 00:00:00'),(6351,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover & Nylon Top','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250.00000,1,250.00000,NULL,250.00000,NULL,NULL,2070,NULL,6351,NULL,NULL,'2017-02-20 00:00:00'),(6401,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6401,NULL,NULL,'2017-02-21 00:00:00'),(6403,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6403,NULL,NULL,'2017-02-21 00:00:00'),(6404,NULL,NULL,NULL,NULL,NULL,NULL,'Female Anchor-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,8000.00000,NULL,8000.00000,NULL,NULL,2121,NULL,6404,NULL,NULL,'2017-02-23 00:00:00'),(6405,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6405,NULL,NULL,'2017-02-22 00:00:00'),(6406,NULL,NULL,NULL,NULL,NULL,NULL,'Female Anchor-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,8000.00000,NULL,8000.00000,NULL,NULL,2121,NULL,6406,NULL,NULL,'2017-02-23 00:00:00'),(6407,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,5000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6407,NULL,NULL,'2017-02-21 00:00:00'),(6451,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi with Decor & Chatar','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5600.00000,1,5600.00000,NULL,5600.00000,NULL,NULL,2168,NULL,6451,NULL,NULL,'2017-05-06 00:00:00'),(6452,NULL,NULL,NULL,NULL,NULL,NULL,'Band Gold','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2368,NULL,6451,NULL,NULL,'2017-05-06 00:00:00'),(6453,NULL,NULL,NULL,NULL,NULL,NULL,'Gasbatti Basic','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',7000.00000,1,7000.00000,NULL,7000.00000,NULL,NULL,2368,NULL,6451,NULL,NULL,'2017-05-06 00:00:00'),(6454,NULL,NULL,NULL,NULL,NULL,NULL,'Front Truss Light-Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,22000.00000,NULL,20000.00000,NULL,NULL,2074,NULL,6452,NULL,NULL,'2017-02-28 00:00:00'),(6501,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,6000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6501,NULL,NULL,'2017-02-28 00:00:00'),(6502,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,1,200.00000,NULL,200.00000,NULL,NULL,2070,NULL,6501,NULL,NULL,'2017-02-28 00:00:00'),(6551,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,6000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6551,NULL,NULL,'2017-02-28 00:00:00'),(6552,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi (Groom)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,5000.00000,NULL,4000.00000,NULL,NULL,2168,NULL,6552,NULL,NULL,'2017-04-28 00:00:00'),(6553,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi (Groom)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,5000.00000,NULL,4000.00000,NULL,NULL,2168,NULL,6553,NULL,NULL,'2017-04-28 00:00:00'),(6556,NULL,NULL,NULL,NULL,NULL,NULL,'Sajan Goth','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,25000.00000,NULL,20000.00000,NULL,NULL,2070,NULL,6555,NULL,NULL,'2017-05-06 00:00:00'),(6601,NULL,NULL,NULL,NULL,NULL,NULL,'DJ 20000 watt','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12000.00000,1,15000.00000,NULL,12000.00000,NULL,NULL,2075,NULL,6601,NULL,NULL,'2017-03-23 00:00:00'),(6602,NULL,NULL,NULL,NULL,NULL,NULL,'Lawazma','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,12000.00000,NULL,9000.00000,NULL,NULL,2118,NULL,6603,NULL,NULL,'2017-03-24 00:00:00'),(6651,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,6000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6651,NULL,NULL,'2017-03-30 00:00:00'),(6652,NULL,NULL,NULL,NULL,NULL,NULL,'Mist Fan','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',800.00000,8,1000.00000,NULL,800.00000,NULL,NULL,2419,NULL,6652,NULL,NULL,'2017-04-14 00:00:00'),(6654,NULL,NULL,NULL,NULL,NULL,NULL,'Truss Pandal Semi Open','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,6653,NULL,NULL,'2017-04-01 00:00:00'),(6701,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',10000.00000,1,10000.00000,NULL,10000.00000,NULL,NULL,2220,NULL,6701,NULL,NULL,'2017-04-17 00:00:00'),(6751,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi (Groom)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,5000.00000,NULL,4000.00000,NULL,NULL,2168,NULL,6751,NULL,NULL,'2017-04-20 00:00:00'),(6801,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-Combo-2','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2220,NULL,6801,NULL,NULL,'2017-04-25 00:00:00'),(6851,NULL,NULL,NULL,NULL,NULL,NULL,'Moving Ring','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,10000.00000,NULL,8000.00000,NULL,NULL,2318,NULL,6851,NULL,NULL,'2017-10-27 00:00:00'),(6852,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,6000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6852,NULL,NULL,'2017-06-01 00:00:00'),(6853,NULL,NULL,NULL,NULL,NULL,NULL,'Female Anchor-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,8000.00000,NULL,8000.00000,NULL,NULL,2121,NULL,6853,NULL,NULL,'2017-06-17 00:00:00'),(6854,NULL,NULL,NULL,NULL,NULL,NULL,'Lawazma','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,12000.00000,NULL,9000.00000,NULL,NULL,2118,NULL,6854,NULL,NULL,'2017-06-22 00:00:00'),(6855,NULL,NULL,NULL,NULL,NULL,NULL,'Cooler','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',400.00000,2,500.00000,NULL,400.00000,NULL,NULL,2419,NULL,6855,NULL,NULL,'2017-06-18 00:00:00'),(6902,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,2,6000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,6902,NULL,NULL,'2017-07-27 00:00:00'),(6951,NULL,NULL,NULL,NULL,NULL,NULL,'Paalki','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,2,4500.00000,NULL,4000.00000,NULL,NULL,2118,NULL,6951,NULL,NULL,'2017-10-31 00:00:00'),(7001,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5000.00000,1,6000.00000,NULL,5000.00000,NULL,NULL,2073,NULL,7001,NULL,NULL,'2017-09-30 00:00:00'),(7002,NULL,NULL,NULL,NULL,NULL,NULL,'Doli-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',2800.00000,1,4000.00000,NULL,2800.00000,NULL,NULL,2118,NULL,7002,NULL,NULL,'2018-02-25 00:00:00'),(7003,NULL,NULL,NULL,NULL,NULL,NULL,'Lawazma','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,12000.00000,NULL,9000.00000,NULL,NULL,2118,NULL,7003,NULL,NULL,'2017-12-10 00:00:00'),(7004,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Corner-combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',10000.00000,1,10000.00000,NULL,10000.00000,NULL,NULL,2220,NULL,7004,NULL,NULL,'2017-12-10 00:00:00'),(7005,NULL,NULL,NULL,NULL,NULL,NULL,'Baggi Victoria','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,10000.00000,NULL,8000.00000,NULL,NULL,2318,NULL,7005,NULL,NULL,'2017-12-01 00:00:00'),(7006,NULL,NULL,NULL,NULL,NULL,NULL,'Baggi AC','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',11000.00000,1,13000.00000,NULL,11000.00000,NULL,NULL,2318,NULL,7006,NULL,NULL,'2017-12-01 00:00:00'),(7007,NULL,NULL,NULL,NULL,NULL,NULL,'Doli-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',2800.00000,1,4000.00000,NULL,2800.00000,NULL,NULL,2118,NULL,7007,NULL,NULL,'2018-02-06 00:00:00'),(7008,NULL,NULL,NULL,NULL,NULL,NULL,'Baggi Victoria','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,10000.00000,NULL,8000.00000,NULL,NULL,2318,NULL,7008,NULL,NULL,'2017-12-11 00:00:00'),(7052,NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen Premium','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',16000.00000,1,16000.00000,NULL,16000.00000,NULL,NULL,2127,NULL,7051,NULL,NULL,'2017-12-10 00:00:00'),(7053,NULL,NULL,NULL,NULL,NULL,NULL,'DJ 20000 watt','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',12000.00000,1,15000.00000,NULL,12000.00000,NULL,NULL,2075,NULL,7052,NULL,NULL,'2017-11-23 00:00:00'),(7054,NULL,NULL,NULL,NULL,NULL,NULL,'Dance Floor','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',2500.00000,1,2500.00000,NULL,2500.00000,NULL,NULL,2075,NULL,7052,NULL,NULL,'2017-11-23 00:00:00'),(7055,NULL,NULL,NULL,NULL,NULL,NULL,'Paalki','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,4500.00000,NULL,4000.00000,NULL,NULL,2118,NULL,7053,NULL,NULL,'2017-12-26 00:00:00'),(7101,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi with Chatar','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',5100.00000,1,6000.00000,NULL,5100.00000,NULL,NULL,2168,NULL,7101,NULL,NULL,'2018-01-02 00:00:00'),(7102,NULL,NULL,NULL,NULL,NULL,NULL,'LED Screen ( Bride & Groom ) Entry','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,20000.00000,NULL,20000.00000,NULL,NULL,2318,NULL,7101,NULL,NULL,'2018-06-21 00:00:00'),(7103,NULL,NULL,NULL,NULL,NULL,NULL,'Band Platinum','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',18000.00000,1,20000.00000,NULL,18000.00000,NULL,NULL,2368,NULL,7101,NULL,NULL,'2018-06-21 00:00:00'),(7104,NULL,NULL,NULL,NULL,NULL,NULL,'Leather Sofa','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',800.00000,1,800.00000,NULL,800.00000,NULL,NULL,2268,NULL,7101,NULL,NULL,'2018-05-23 00:00:00'),(7105,NULL,NULL,NULL,NULL,NULL,NULL,'Front Truss Light-Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,25000.00000,NULL,20000.00000,NULL,NULL,2074,NULL,7103,NULL,NULL,'2018-01-25 00:00:00'),(7106,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi (Groom)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,5000.00000,NULL,4000.00000,NULL,NULL,2168,NULL,7103,NULL,NULL,'2018-01-25 00:00:00'),(7107,NULL,NULL,NULL,NULL,NULL,NULL,'Truss Pandal Semi Open','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20.00000,1,20.00000,NULL,20.00000,NULL,NULL,2071,NULL,7103,NULL,NULL,'2018-01-25 00:00:00'),(7108,NULL,NULL,NULL,NULL,NULL,NULL,'Band Gold','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',14000.00000,1,15000.00000,NULL,14000.00000,NULL,NULL,2368,NULL,7104,NULL,NULL,'2018-04-18 00:00:00'),(7109,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi (Groom)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,5000.00000,NULL,4000.00000,NULL,NULL,2168,NULL,7105,NULL,NULL,'2018-04-18 00:00:00'),(7110,NULL,NULL,NULL,NULL,NULL,NULL,'Lawazma','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,12000.00000,NULL,9000.00000,NULL,NULL,2118,NULL,7105,NULL,NULL,'2018-04-18 00:00:00'),(7111,NULL,NULL,NULL,NULL,NULL,NULL,'Generator 125 kva','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4500.00000,1,4500.00000,NULL,4500.00000,NULL,NULL,2077,NULL,7105,NULL,NULL,'2018-04-17 00:00:00'),(7112,NULL,NULL,NULL,NULL,NULL,NULL,'Female Anchor-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,8000.00000,NULL,8000.00000,NULL,NULL,2121,NULL,7105,NULL,NULL,'2018-04-17 00:00:00'),(7113,NULL,NULL,NULL,NULL,NULL,NULL,'Mist Fan','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',800.00000,5,1000.00000,NULL,800.00000,NULL,NULL,2419,NULL,7105,NULL,NULL,'2018-04-17 00:00:00'),(7115,NULL,NULL,NULL,NULL,NULL,NULL,'Mist Fan','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',800.00000,5,1000.00000,NULL,800.00000,NULL,NULL,2419,NULL,7106,NULL,NULL,'2018-04-18 00:00:00'),(7116,NULL,NULL,NULL,NULL,NULL,NULL,'Female Anchor-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,8000.00000,NULL,8000.00000,NULL,NULL,2121,NULL,7106,NULL,NULL,'2018-04-17 00:00:00'),(7117,NULL,NULL,NULL,NULL,NULL,NULL,'White Noori Ghodi (Groom)','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4000.00000,1,5000.00000,NULL,4000.00000,NULL,NULL,2168,NULL,7106,NULL,NULL,'2018-04-18 00:00:00'),(7118,NULL,NULL,NULL,NULL,NULL,NULL,'Lawazma','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,12000.00000,NULL,9000.00000,NULL,NULL,2118,NULL,7106,NULL,NULL,'2018-04-18 00:00:00'),(7119,NULL,NULL,NULL,NULL,NULL,NULL,'Band Platinum','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',18000.00000,1,20000.00000,NULL,18000.00000,NULL,NULL,2368,NULL,7106,NULL,NULL,'2018-04-18 00:00:00'),(7120,NULL,NULL,NULL,NULL,NULL,NULL,'Generator 125 kva','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4500.00000,1,4500.00000,NULL,4500.00000,NULL,NULL,2077,NULL,7106,NULL,NULL,'2018-04-17 00:00:00'),(7121,NULL,NULL,NULL,NULL,NULL,NULL,'Selfie Jhula','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',8000.00000,1,10000.00000,NULL,8000.00000,NULL,NULL,2220,NULL,7108,NULL,NULL,'2018-02-12 00:00:00'),(7122,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Theme Cover & Top','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250.00000,10,250.00000,NULL,250.00000,NULL,NULL,2070,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7123,NULL,NULL,NULL,NULL,NULL,NULL,'Ceiling White Pandal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',550.00000,5,550.00000,NULL,550.00000,NULL,NULL,2071,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7124,NULL,NULL,NULL,NULL,NULL,NULL,'Carpet Red','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',600.00000,1,600.00000,NULL,600.00000,NULL,NULL,2072,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7125,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,100,30.00000,NULL,30.00000,NULL,NULL,2268,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7126,NULL,NULL,NULL,NULL,NULL,NULL,'Sofa with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',350.00000,10,350.00000,NULL,NULL,NULL,NULL,2268,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7127,NULL,NULL,NULL,NULL,NULL,NULL,'Celebrity Sofa','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',1000.00000,2,1000.00000,NULL,1000.00000,NULL,NULL,2268,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7128,NULL,NULL,NULL,NULL,NULL,NULL,'20000 sq.ft. Area Light','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',15000.00000,1,15000.00000,NULL,15000.00000,NULL,NULL,2076,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7129,NULL,NULL,NULL,NULL,NULL,NULL,'Par Light Regular','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',200.00000,5,200.00000,NULL,200.00000,NULL,NULL,2076,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7130,NULL,NULL,NULL,NULL,NULL,NULL,'DJ 12000 watt','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,10000.00000,NULL,9000.00000,NULL,NULL,2075,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7131,NULL,NULL,NULL,NULL,NULL,NULL,'Dance Floor','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',2500.00000,2,2500.00000,NULL,2500.00000,NULL,NULL,2075,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7132,NULL,NULL,NULL,NULL,NULL,NULL,'Front Truss Light-Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,25000.00000,NULL,20000.00000,NULL,NULL,2074,NULL,7109,NULL,NULL,'2018-04-17 00:00:00'),(7133,NULL,NULL,NULL,NULL,NULL,NULL,'Round Table with Theme Cover & Top','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250.00000,10,250.00000,NULL,250.00000,NULL,NULL,2070,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7134,NULL,NULL,NULL,NULL,NULL,NULL,'Ceiling White Pandal','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',550.00000,2,550.00000,NULL,550.00000,NULL,NULL,2071,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7135,NULL,NULL,NULL,NULL,NULL,NULL,'Carpet Red','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',600.00000,1,600.00000,NULL,600.00000,NULL,NULL,2072,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7136,NULL,NULL,NULL,NULL,NULL,NULL,'Chawari-OP-2','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6000.00000,1,6000.00000,NULL,6000.00000,NULL,NULL,2073,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7137,NULL,NULL,NULL,NULL,NULL,NULL,'Sofa with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',350.00000,10,350.00000,NULL,NULL,NULL,NULL,2268,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7138,NULL,NULL,NULL,NULL,NULL,NULL,'Chair Cushion with Cover','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',30.00000,120,30.00000,NULL,30.00000,NULL,NULL,2268,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7140,NULL,NULL,NULL,NULL,NULL,NULL,'Leather Sofa','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',800.00000,1,800.00000,NULL,800.00000,NULL,NULL,2268,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7141,NULL,NULL,NULL,NULL,NULL,NULL,'Front Truss Light-Combo-1','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',20000.00000,1,25000.00000,NULL,20000.00000,NULL,NULL,2074,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7142,NULL,NULL,NULL,NULL,NULL,NULL,'DJ 12000 watt','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',9000.00000,1,10000.00000,NULL,9000.00000,NULL,NULL,2075,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7143,NULL,NULL,NULL,NULL,NULL,NULL,'10000 sq.ft. Area Light','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',7500.00000,1,7500.00000,NULL,7500.00000,NULL,NULL,2076,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7144,NULL,NULL,NULL,NULL,NULL,NULL,'Mist Fan','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',800.00000,5,1000.00000,NULL,800.00000,NULL,NULL,2419,NULL,7110,NULL,NULL,'2018-04-17 00:00:00'),(7145,NULL,NULL,NULL,NULL,NULL,NULL,'Generator 125 kva','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',4500.00000,1,4500.00000,NULL,4500.00000,NULL,NULL,2077,NULL,7110,NULL,NULL,'2018-04-17 00:00:00');
/*!40000 ALTER TABLE `BLC_ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ITEM_ADD_ATTR`
--

DROP TABLE IF EXISTS `BLC_ORDER_ITEM_ADD_ATTR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ITEM_ADD_ATTR` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`,`NAME`),
  KEY `FKA466AB44B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA466AB44B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_DISCRETE_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ITEM_ADD_ATTR`
--

LOCK TABLES `BLC_ORDER_ITEM_ADD_ATTR` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_ADD_ATTR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_ADD_ATTR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ITEM_ADJUSTMENT`
--

DROP TABLE IF EXISTS `BLC_ORDER_ITEM_ADJUSTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ITEM_ADJUSTMENT` (
  `ORDER_ITEM_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `APPLIED_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ADJUSTMENT_ID`),
  KEY `OIADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `OIADJUST_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FKA2658C82D5F3FAF4` (`OFFER_ID`),
  KEY `FKA2658C829AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA2658C829AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA2658C82D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ITEM_ADJUSTMENT`
--

LOCK TABLES `BLC_ORDER_ITEM_ADJUSTMENT` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_ADJUSTMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_ADJUSTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ITEM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `BLC_ORDER_ITEM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ITEM_ATTRIBUTE` (
  `ORDER_ITEM_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ATTRIBUTE_ID`),
  KEY `FK9F1ED0C79AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9F1ED0C79AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ITEM_ATTRIBUTE`
--

LOCK TABLES `BLC_ORDER_ITEM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `BLC_ORDER_ITEM_ATTRIBUTE` VALUES (51,'COLOR','Red',701),(52,'SIZE','M',701),(53,'NAME','',701),(101,'COLOR','Red',2201),(102,'SIZE','M',2201),(103,'NAME','',2201),(151,'COLOR','Silver',2851),(152,'SIZE','M',2851),(153,'NAME','',2851),(201,'Days','2',2952),(251,'COLOR','Red',3351),(252,'SIZE','M',3351),(253,'NAME','',3351),(301,'COLOR','Golden',3801),(351,'COLOR','Golden',4002),(352,'COLOR','Golden',4003),(401,'COLOR','Golden',4153),(453,'COLOR','Golden',4308),(454,'Ribbon Colour','Red',4309),(455,'COLOR','Black',4309),(501,'COLOR','Golden',5153),(551,'COLOR','Golden',5501),(552,'Ribbon Colour','Mazenda',5502),(553,'COLOR','White',5502),(554,'COLOR','White',5503),(601,'Days','2',5752),(602,'Led Size','8*10',5756),(603,'Led Size','8*16',5757),(604,'COLOR','Golden',5760),(651,'COLOR','Golden',5801),(701,'Led Size','10*16',5952),(751,'Ribbon Colour','Yellow',6302),(752,'COLOR','Black',6302),(753,'COLOR','Golden',6306),(801,'COLOR','Golden',6351),(851,'COLOR','Golden',6502),(902,'Led Size','10*16',7052),(951,'Led Size','10*16',7102),(952,'Leather Sofa Type','Brown',7104),(953,'Ribbon Colour','Red',7122),(954,'COLOR','Golden',7122),(955,'COLOR','Golden',7125),(956,'COLOR','Golden',7126),(957,'Ribbon Colour','Red',7133),(958,'COLOR','Golden',7133),(959,'COLOR','Golden',7137),(960,'COLOR','Golden',7138),(961,'Leather Sofa Type','Brown',7140);
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ITEM_DTL_ADJ`
--

DROP TABLE IF EXISTS `BLC_ORDER_ITEM_DTL_ADJ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ITEM_DTL_ADJ` (
  `ORDER_ITEM_DTL_ADJ_ID` bigint(20) NOT NULL,
  `APPLIED_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `OFFER_NAME` varchar(255) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_PRICE_DTL_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_DTL_ADJ_ID`),
  KEY `FK85F0248FD5F3FAF4` (`OFFER_ID`),
  KEY `FK85F0248FD4AEA2C0` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FK85F0248FD4AEA2C0` FOREIGN KEY (`ORDER_ITEM_PRICE_DTL_ID`) REFERENCES `BLC_ORDER_ITEM_PRICE_DTL` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FK85F0248FD5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ITEM_DTL_ADJ`
--

LOCK TABLES `BLC_ORDER_ITEM_DTL_ADJ` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_DTL_ADJ` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_DTL_ADJ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_ITEM_PRICE_DTL`
--

DROP TABLE IF EXISTS `BLC_ORDER_ITEM_PRICE_DTL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_ITEM_PRICE_DTL` (
  `ORDER_ITEM_PRICE_DTL_ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `USE_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_PRICE_DTL_ID`),
  KEY `FK1FB64BF19AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK1FB64BF19AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_ITEM_PRICE_DTL`
--

LOCK TABLES `BLC_ORDER_ITEM_PRICE_DTL` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_PRICE_DTL` DISABLE KEYS */;
INSERT INTO `BLC_ORDER_ITEM_PRICE_DTL` VALUES (155,5,1,155),(156,1,1,156),(201,1,1,201),(202,1,1,202),(251,1,1,251),(252,1,1,252),(253,1,1,253),(301,1,1,301),(351,1,1,351),(401,1,1,401),(451,1,1,451),(501,1,1,501),(551,1,1,551),(601,1,1,601),(651,1,1,651),(701,1,1,701),(751,1,1,751),(802,1,1,802),(851,1,1,851),(852,1,1,852),(901,1,1,901),(951,1,1,951),(1002,1,1,1002),(1051,1,1,1051),(1101,1,1,1101),(1151,1,1,1151),(1201,1,1,1201),(1251,1,1,1251),(1252,1,1,1252),(1301,3,1,1301),(1351,1,1,1351),(1401,1,1,1401),(1451,1,1,1451),(1501,1,1,1501),(1551,1,1,1551),(1601,1,1,1601),(1651,1,1,1651),(1701,1,1,1701),(1702,1,1,1702),(1703,1,1,1703),(1751,1,1,1751),(1801,1,1,1801),(1851,1,1,1851),(1901,1,1,1901),(1951,1,1,1951),(2001,1,1,2001),(2051,1,1,2051),(2101,1,1,2101),(2151,1,1,2151),(2201,1,1,2201),(2252,1,1,2252),(2301,1,1,2301),(2351,1,1,2351),(2401,1,1,2401),(2451,1,1,2451),(2501,1,1,2501),(2551,1,1,2551),(2601,1,1,2601),(2651,1,1,2651),(2652,1,1,2652),(2701,1,1,2701),(2751,1,1,2751),(2801,1,1,2801),(2851,2,1,2851),(2901,1,1,2901),(2951,1,1,3001),(3001,1,1,3051),(3051,1,1,3101),(3101,1,1,3151),(3151,1,1,3201),(3201,1,1,3251),(3202,1,1,3252),(3251,1,1,3301),(3301,2,1,3351),(3351,1,1,3401),(3352,1,1,3402),(3401,1,1,3451),(3451,1,1,3551);
/*!40000 ALTER TABLE `BLC_ORDER_ITEM_PRICE_DTL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_LOCK`
--

DROP TABLE IF EXISTS `BLC_ORDER_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_LOCK` (
  `LOCK_KEY` varchar(255) NOT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  `LAST_UPDATED` bigint(20) DEFAULT NULL,
  `LOCKED` char(1) DEFAULT NULL,
  PRIMARY KEY (`LOCK_KEY`,`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_LOCK`
--

LOCK TABLES `BLC_ORDER_LOCK` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_LOCK` DISABLE KEYS */;
INSERT INTO `BLC_ORDER_LOCK` VALUES ('0244703f-688a-4886-b5d4-b554b9d16bb5',1701,1483108503564,'N'),('02c6e075-9109-46c1-8609-1fb37d62307c',5951,1485431790662,'N'),('02c6e075-9109-46c1-8609-1fb37d62307c',5952,1485438609905,'N'),('02c6e075-9109-46c1-8609-1fb37d62307c',5953,1485446319643,'N'),('02c6e075-9109-46c1-8609-1fb37d62307c',5954,1485499305629,'N'),('02c6e075-9109-46c1-8609-1fb37d62307c',5955,1485513978259,'N'),('0772148a-3a15-4947-b64a-6b6e147b73e3',5651,1485321388478,'N'),('0a8398b6-0ee6-44fe-827d-3458ef29f0ec',5401,1484889093626,'N'),('0a8398b6-0ee6-44fe-827d-3458ef29f0ec',5402,1484889306883,'N'),('0a8398b6-0ee6-44fe-827d-3458ef29f0ec',5403,1484889643039,'N'),('0edbeda6-73bb-463d-a7af-5ce6bf32782c',5001,1484546891216,'N'),('108e6630-02da-404c-9864-56cef51d64ef',2901,1483516856442,'N'),('13315400-10f5-48de-b092-dc8b08ebf17a',4001,1484464754764,'N'),('137e3bc4-4103-486f-9ec1-a0390bb6ea0b',3201,1483539196687,'N'),('1e85fd99-2020-4c23-aea8-7141e6494823',4501,1484481725361,'N'),('1f0e90a1-1aaf-4d03-8196-e0dab40b414c',851,1483016877702,'N'),('1f9a95b0-f84c-407d-b8c8-fb02743d10d4',501,1482932971648,'Y'),('22555567-70b6-479a-ad25-5304f33d4f57',3251,1483539497964,'N'),('22555567-70b6-479a-ad25-5304f33d4f57',3252,1483539634815,'N'),('238ac3f4-008c-4ddc-8b07-9a3143c48539',6151,1485706936076,'N'),('246273a6-531a-4843-9836-3162df3ae837',7051,1510995957750,'N'),('246273a6-531a-4843-9836-3162df3ae837',7052,1511192604369,'N'),('2a1d608e-8eaf-4df6-97a6-ac40b2b178cc',5151,1484629241851,'N'),('2a1d608e-8eaf-4df6-97a6-ac40b2b178cc',5152,1484628676740,'N'),('2b53cb73-cc3b-467a-bb85-b928cfa10772',3701,1484242483397,'N'),('30cebe9c-ac06-4f99-b7cb-0c748ed3835b',4951,1484546674641,'N'),('3270431c-2e74-453f-a4d5-a5b25878a1d3',4601,1484484967184,'N'),('36dbdcb8-6454-44ed-b3c9-1904dd8e8f04',4801,1484487708323,'N'),('36dbdcb8-6454-44ed-b3c9-1904dd8e8f04',4802,1484488275500,'N'),('3722c268-e07a-4751-bd6e-20dbce005d89',6551,1488272623716,'N'),('3722c268-e07a-4751-bd6e-20dbce005d89',6552,1488603927190,'N'),('3722c268-e07a-4751-bd6e-20dbce005d89',6553,1488661183573,'N'),('3722c268-e07a-4751-bd6e-20dbce005d89',6555,1489150323011,'N'),('3878a6cf-9581-41a7-a6e0-f0aeb9f8c640',2651,1483452098546,'N'),('39b22679-4b23-42df-bc25-f16fc1febdfe',4301,1484477783657,'N'),('39b22679-4b23-42df-bc25-f16fc1febdfe',4302,1484477376465,'N'),('3a16b912-88ee-43a4-8145-c5c64d8f9a6e',7101,1514912901846,'N'),('3a16b912-88ee-43a4-8145-c5c64d8f9a6e',7103,1514973603633,'N'),('3a16b912-88ee-43a4-8145-c5c64d8f9a6e',7105,1515485442594,'N'),('3a16b912-88ee-43a4-8145-c5c64d8f9a6e',7106,1515487953485,'N'),('3a16b912-88ee-43a4-8145-c5c64d8f9a6e',7109,1515660487435,'N'),('3a16b912-88ee-43a4-8145-c5c64d8f9a6e',7110,1515671299100,'N'),('3a90ad2d-037a-4f7f-b020-a279ffb0e985',401,1482930852849,'N'),('47917fd4-e448-44a5-937e-0f3335260671',2851,1483516491532,'N'),('493d83f5-3c12-421e-82a0-5eac4d6017d5',5451,1484891570092,'N'),('4bf0eeb5-2796-4755-b242-3a4461479732',4101,1484469692369,'N'),('4e038137-13ec-41b1-8c0c-3654026d0083',4551,1484483590940,'N'),('57994cc6-39e3-42e6-aef8-0ad17a2577a4',4051,1484468955479,'N'),('5893bfb5-7dc3-4e8e-ab64-4c0455c99e65',3651,1484158654337,'N'),('5b96a4ba-f80c-4bdd-895a-c6eb59fa1890',6051,1485596893559,'N'),('5c644ffc-4330-47db-bb86-2720ba9e9904',4351,1484478764253,'N'),('664b91b3-5dc2-455f-beab-427ffffc6a80',451,1482932133229,'Y'),('66bb29b0-79d2-4e94-9bfc-71e68f9b229f',6301,1485972755671,'N'),('66bb29b0-79d2-4e94-9bfc-71e68f9b229f',6304,1486185152857,'N'),('6a6ed7cd-f6a5-43aa-8dc0-df6873e8c6b7',4251,1484476062578,'N'),('6c51dd27-d2b6-479b-adaa-625ad2a53fe4',701,1482994612147,'N'),('705c9564-7ede-49f2-ae04-95a47f27681f',6501,1488272279252,'N'),('73548736-8db2-40ce-ad57-6b4bb8e26d46',1001,1483023277377,'N'),('83fdc4e7-98a0-4e38-96ca-549c34dcb4b6',3101,1483537772845,'N'),('8b2b50e9-e47b-480e-ba9f-bbb9ab6d98cc',251,1482928025631,'N'),('8fa836fb-89f8-45be-9a8f-3eb72239849a',5501,1485106735596,'N'),('8fa836fb-89f8-45be-9a8f-3eb72239849a',5502,1485108069265,'N'),('8fa836fb-89f8-45be-9a8f-3eb72239849a',5503,1485110584175,'N'),('96134d34-d961-4cda-9359-d1073a5dcd25',5601,1485189943138,'N'),('973c898e-4a79-4314-8e5a-a1bf7633dcc9',3751,1484248251220,'N'),('9cee640a-c22c-49fd-8a87-1e994c0a0e6f',5801,1485425954691,'N'),('9dbb5430-f89a-4757-9934-05d54416fad2',5751,1485347778044,'N'),('9dbb5430-f89a-4757-9934-05d54416fad2',5753,1485362593257,'N'),('9dbb5430-f89a-4757-9934-05d54416fad2',5755,1485418204395,'N'),('9dbb5430-f89a-4757-9934-05d54416fad2',5756,1485421356691,'N'),('9dbb5430-f89a-4757-9934-05d54416fad2',5757,1485421964222,'N'),('9dbb5430-f89a-4757-9934-05d54416fad2',5758,1485426114463,'N'),('9f61f037-03a5-4cbb-b662-aa9b943f4d00',2951,1483525164002,'N'),('a7267a24-257b-465f-8e1a-7e622c93506f',3151,1483538371056,'N'),('a870657b-3784-4220-9ba4-e6226948b70d',4751,1484486621528,'N'),('aa3465de-d316-4ea8-bff9-ea9b1797a6c0',2251,1483345461100,'N'),('ac922cde-034a-4923-950f-bac70482d5b3',3801,1484397632662,'N'),('ac922cde-034a-4923-950f-bac70482d5b3',3802,1484399057586,'N'),('ad677014-5c07-4642-aa8e-5720d712c9c8',6001,1485596418905,'N'),('ae2d9926-8ed4-4250-8b5a-f2a4634f16f8',5351,1484634600881,'N'),('b0d71e03-2004-4623-9889-d533a813c197',801,1483016118070,'Y'),('b42225ca-af08-4e5a-a451-1d7a699842b4',5701,1485324469909,'N'),('b4ad4e2e-1eaa-44b3-ab64-a73bf52442b4',251,1482934309541,'N'),('b4ad4e2e-1eaa-44b3-ab64-a73bf52442b4',601,1482934160510,'N'),('b5d57175-183e-47df-9b69-757ee6ee45c2',6451,1487732584693,'N'),('baa9d72c-bc8c-4925-bc4f-737861ecbf53',151,1482916931866,'N'),('bac18116-8c4b-4106-af3c-9762071992ce',4451,1484479535417,'N'),('bd213031-fa23-481f-b901-04deeeb5901a',5851,1485429530812,'N'),('be6beea6-9cd0-4b1c-a674-dc6de7187523',5551,1485189187858,'N'),('c1f12119-1e27-4f63-ad6f-0ad29b36c66c',3951,1484462194034,'N'),('c2b62a34-98c7-4789-9906-7b3938153504',651,1482993027671,'N'),('c8e425ac-0ed4-4c51-b803-e8102c3a8720',3351,1483592399364,'N'),('c92aa533-809d-4e66-8994-b8b116f04081',6101,1485597424568,'N'),('c92aa533-809d-4e66-8994-b8b116f04081',6102,1485597666389,'N'),('cc599cf6-62d0-432a-9635-ccf605ab8518',3851,1484401053522,'N'),('cf0c5ad3-b446-4eff-bda8-3c33024a3ef2',3901,1484461232504,'N'),('d0e79e10-585e-43df-a038-9e4ff1374f89',551,1482933733035,'Y'),('d29329fe-7362-463c-9fab-0f57d0fe2c79',4851,1484490723959,'N'),('d8444954-9b0f-453e-8d6b-cec3c3aa5c11',201,1482924922714,'N'),('d86d6f92-7cd7-4815-b538-4a7e3146080a',6951,1504117632430,'N'),('db45f79a-ad8b-48c9-9d4b-2b1689f88092',4201,1484471353395,'N'),('de6a5df9-8085-4764-9ed2-ff1f8a177b70',3301,1483540275800,'N'),('df5084e9-aa87-4fb1-b0ba-995d1d7f2f19',1,1482849049091,'N'),('e8ebd53e-bcc2-49c2-8d78-559363ed9cf8',2801,1483514600969,'N'),('eaf9df3f-597f-4043-8c37-623ab623b1ec',4401,1484479106240,'N'),('ebf0fc55-97fc-4f02-80c5-cb9e89c26d5b',6601,1490189577591,'N'),('edfb26cb-2d82-4d58-8513-79055e1c3819',7001,1506783146767,'N'),('edfb26cb-2d82-4d58-8513-79055e1c3819',7008,1510248576730,'N'),('ef062521-576b-40ee-9a18-a267d440ee0d',5901,1485430662158,'N'),('ef062521-576b-40ee-9a18-a267d440ee0d',5902,1485431049040,'N'),('ef062521-576b-40ee-9a18-a267d440ee0d',5903,1485431283020,'N'),('f2af104d-cf99-4ca7-ad64-7c25074d4f5e',51,1482851586217,'N'),('f85f0451-b96b-40a4-b0da-dee7dae8d97d',4151,1484470836516,'N'),('fb395278-a903-4771-b66a-c31410a35c9f',1251,1483088814958,'N'),('fddd270c-22aa-4e1b-836f-bb74d7dbcd54',6405,1487403616051,'N'),('fddd270c-22aa-4e1b-836f-bb74d7dbcd54',6407,1487422669331,'N'),('fee1db4b-771e-4378-a5bd-9f200f055747',6653,1490758701979,'N');
/*!40000 ALTER TABLE `BLC_ORDER_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_MULTISHIP_OPTION`
--

DROP TABLE IF EXISTS `BLC_ORDER_MULTISHIP_OPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_MULTISHIP_OPTION` (
  `ORDER_MULTISHIP_OPTION_ID` bigint(20) NOT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_MULTISHIP_OPTION_ID`),
  KEY `MULTISHIP_OPTION_ORDER_INDEX` (`ORDER_ID`),
  KEY `FKB3D3F7D6C13085DD` (`ADDRESS_ID`),
  KEY `FKB3D3F7D681F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKB3D3F7D689FE8A02` (`ORDER_ID`),
  KEY `FKB3D3F7D69AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKB3D3F7D681F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB3D3F7D689FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FKB3D3F7D69AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `BLC_ORDER_ITEM` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKB3D3F7D6C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_MULTISHIP_OPTION`
--

LOCK TABLES `BLC_ORDER_MULTISHIP_OPTION` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_MULTISHIP_OPTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_MULTISHIP_OPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_OFFER_CODE_XREF`
--

DROP TABLE IF EXISTS `BLC_ORDER_OFFER_CODE_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_OFFER_CODE_XREF` (
  `ORDER_ID` bigint(20) NOT NULL,
  `OFFER_CODE_ID` bigint(20) NOT NULL,
  KEY `FKFDF0E8533BB10F6D` (`OFFER_CODE_ID`),
  KEY `FKFDF0E85389FE8A02` (`ORDER_ID`),
  CONSTRAINT `FKFDF0E8533BB10F6D` FOREIGN KEY (`OFFER_CODE_ID`) REFERENCES `BLC_OFFER_CODE` (`OFFER_CODE_ID`),
  CONSTRAINT `FKFDF0E85389FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_OFFER_CODE_XREF`
--

LOCK TABLES `BLC_ORDER_OFFER_CODE_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_OFFER_CODE_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ORDER_OFFER_CODE_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_PAYMENT`
--

DROP TABLE IF EXISTS `BLC_ORDER_PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_PAYMENT` (
  `ORDER_PAYMENT_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) NOT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_PAYMENT_ID`),
  KEY `ORDERPAYMENT_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `ORDERPAYMENT_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERPAYMENT_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `ORDERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK9517A14FC13085DD` (`ADDRESS_ID`),
  KEY `FK9517A14F89FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK9517A14F89FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `BLC_ORDER` (`ORDER_ID`),
  CONSTRAINT `FK9517A14FC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_PAYMENT`
--

LOCK TABLES `BLC_ORDER_PAYMENT` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_PAYMENT` DISABLE KEYS */;
INSERT INTO `BLC_ORDER_PAYMENT` VALUES (1,9.99000,'Y','Temporary',NULL,'CREDIT_CARD',51,601),(2,9.99000,'N','Passthrough',NULL,'COD',NULL,601),(3,44.97000,'Y','Temporary',NULL,'CREDIT_CARD',53,251),(4,44.97000,'N','Passthrough',NULL,'COD',NULL,251),(51,26.99000,'Y','Temporary',NULL,'CREDIT_CARD',101,651),(52,26.99000,'N','Passthrough',NULL,'COD',NULL,651),(101,34.99000,'Y','Temporary',NULL,'CREDIT_CARD',151,701),(102,34.99000,'N','Passthrough',NULL,'COD',NULL,701),(151,16.98000,'Y','Temporary',NULL,'CREDIT_CARD',201,2651),(152,16.98000,'N','Passthrough',NULL,'COD',NULL,2651),(201,9.99000,'Y','Temporary',NULL,'CREDIT_CARD',251,2801),(202,9.99000,'N','Passthrough',NULL,'COD',NULL,2801),(251,34.98000,'Y','Temporary',NULL,'CREDIT_CARD',301,2851),(252,34.98000,'N','Passthrough',NULL,'COD',NULL,2851),(301,9.99000,'Y','Temporary',NULL,'CREDIT_CARD',351,2901),(302,9.99000,'N','Passthrough',NULL,'COD',NULL,2901),(351,9.99000,'N','Temporary',NULL,'CREDIT_CARD',401,3101),(401,4.99000,'N','Temporary',NULL,'CREDIT_CARD',451,3151),(451,9.99000,'N','Temporary',NULL,'CREDIT_CARD',501,3201),(501,4.99000,'N','Passthrough',NULL,'COD',NULL,3251),(502,4.99000,'N','Temporary',NULL,'CREDIT_CARD',551,3252),(551,4.99000,'Y','Temporary',NULL,'CREDIT_CARD',601,3301),(552,4.99000,'N','Passthrough',NULL,'COD',NULL,3301),(601,29.98000,'Y','Temporary',NULL,'CREDIT_CARD',651,3351),(602,29.98000,'N','Passthrough',NULL,'COD',NULL,3351),(651,30.00000,'N','Temporary',NULL,'CREDIT_CARD',701,3801),(652,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',702,3802),(653,20.00000,'N','Passthrough',NULL,'COD',NULL,3802),(701,20.00000,'N','Temporary',NULL,'CREDIT_CARD',751,3851),(751,4570.00000,'N','Temporary',NULL,'CREDIT_CARD',801,4302),(752,20.00000,'N','Temporary',NULL,'CREDIT_CARD',802,4301),(801,20.00000,'N','Temporary',NULL,'CREDIT_CARD',851,4351),(851,20.00000,'N','Temporary',NULL,'CREDIT_CARD',901,4551),(901,20.00000,'N','Temporary',NULL,'CREDIT_CARD',951,4601),(951,20.00000,'N','Temporary',NULL,'CREDIT_CARD',1001,4751),(1001,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1051,4801),(1002,20.00000,'N','Passthrough',NULL,'COD',NULL,4801),(1051,470.00000,'Y','Temporary',NULL,'CREDIT_CARD',1101,5152),(1052,470.00000,'N','Passthrough',NULL,'COD',NULL,5152),(1101,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1151,5401),(1102,20.00000,'N','Passthrough',NULL,'COD',NULL,5401),(1103,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1153,5402),(1104,20.00000,'N','Passthrough',NULL,'COD',NULL,5402),(1105,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1155,5403),(1106,20.00000,'N','Passthrough',NULL,'COD',NULL,5403),(1151,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1201,5451),(1152,20.00000,'N','Passthrough',NULL,'COD',NULL,5451),(1201,30.00000,'Y','Temporary',NULL,'CREDIT_CARD',1251,5501),(1202,30.00000,'N','Passthrough',NULL,'COD',NULL,5501),(1203,110.00000,'N','Temporary',NULL,'CREDIT_CARD',1253,5502),(1204,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1255,5503),(1205,20.00000,'N','Passthrough',NULL,'COD',NULL,5503),(1251,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1301,5551),(1252,20.00000,'N','Passthrough',NULL,'COD',NULL,5551),(1301,50000.00000,'Y','Temporary',NULL,'CREDIT_CARD',1351,5601),(1302,50000.00000,'N','Passthrough',NULL,'COD',NULL,5601),(1351,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1401,5651),(1352,20.00000,'N','Passthrough',NULL,'COD',NULL,5651),(1401,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1451,5701),(1402,20.00000,'N','Passthrough',NULL,'COD',NULL,5701),(1451,700.00000,'Y','Temporary',NULL,'CREDIT_CARD',1501,5751),(1452,700.00000,'N','Passthrough',NULL,'COD',NULL,5751),(1453,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1503,5756),(1454,20.00000,'N','Passthrough',NULL,'COD',NULL,5756),(1455,20.00000,'N','Temporary',NULL,'CREDIT_CARD',1507,5757),(1456,200.00000,'N','Temporary',NULL,'CREDIT_CARD',1508,5758),(1501,600.00000,'Y','Temporary',NULL,'CREDIT_CARD',1551,5801),(1502,600.00000,'N','Passthrough',NULL,'COD',NULL,5801),(1551,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1601,5851),(1552,20.00000,'N','Passthrough',NULL,'COD',NULL,5851),(1601,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1651,5901),(1602,20.00000,'N','Passthrough',NULL,'COD',NULL,5901),(1603,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1653,5902),(1604,20.00000,'N','Passthrough',NULL,'COD',NULL,5902),(1605,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1655,5903),(1606,20.00000,'N','Passthrough',NULL,'COD',NULL,5903),(1651,40.00000,'Y','Temporary',NULL,'CREDIT_CARD',1701,5951),(1652,40.00000,'N','Passthrough',NULL,'COD',NULL,5951),(1653,20000.00000,'Y','Temporary',NULL,'CREDIT_CARD',1703,5952),(1654,20000.00000,'N','Passthrough',NULL,'COD',NULL,5952),(1655,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1705,5954),(1656,20.00000,'N','Passthrough',NULL,'COD',NULL,5954),(1657,20.00000,'N','Temporary',NULL,'CREDIT_CARD',1707,5955),(1701,60.00000,'N','Temporary',NULL,'CREDIT_CARD',1751,6001),(1751,20.00000,'Y','Temporary',NULL,'CREDIT_CARD',1801,6101),(1752,20.00000,'N','Passthrough',NULL,'COD',NULL,6101),(1753,50000.00000,'Y','Temporary',NULL,'CREDIT_CARD',1803,6102),(1754,50000.00000,'N','Passthrough',NULL,'COD',NULL,6102),(1801,5000.00000,'Y','Temporary',NULL,'CREDIT_CARD',1851,6304),(1802,5000.00000,'N','Passthrough',NULL,'COD',NULL,6304),(1851,5000.00000,'N','Temporary',NULL,'CREDIT_CARD',1901,6405),(1852,5000.00000,'Y','Temporary',NULL,'CREDIT_CARD',1902,6407),(1853,5000.00000,'N','Passthrough',NULL,'COD',NULL,6407),(1901,27600.00000,'Y','Temporary',NULL,'CREDIT_CARD',1951,6451),(1902,27600.00000,'N','Passthrough',NULL,'COD',NULL,6451),(1951,5200.00000,'N','Temporary',NULL,'CREDIT_CARD',2001,6501),(2001,5000.00000,'Y','Temporary',NULL,'CREDIT_CARD',2051,6551),(2002,5000.00000,'N','Passthrough',NULL,'COD',NULL,6551),(2003,4000.00000,'N','Temporary',NULL,'CREDIT_CARD',2053,6552),(2004,4000.00000,'Y','Temporary',NULL,'CREDIT_CARD',2054,6553),(2005,4000.00000,'N','Passthrough',NULL,'COD',NULL,6553),(2051,14500.00000,'Y','Temporary',NULL,'CREDIT_CARD',2101,7052),(2052,14500.00000,'N','Passthrough',NULL,'COD',NULL,7052);
/*!40000 ALTER TABLE `BLC_ORDER_PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ORDER_PAYMENT_TRANSACTION`
--

DROP TABLE IF EXISTS `BLC_ORDER_PAYMENT_TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ORDER_PAYMENT_TRANSACTION` (
  `PAYMENT_TRANSACTION_ID` bigint(20) NOT NULL,
  `TRANSACTION_AMOUNT` decimal(19,2) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CUSTOMER_IP_ADDRESS` varchar(255) DEFAULT NULL,
  `DATE_RECORDED` datetime DEFAULT NULL,
  `RAW_RESPONSE` longtext,
  `SAVE_TOKEN` tinyint(1) DEFAULT NULL,
  `SUCCESS` tinyint(1) DEFAULT NULL,
  `TRANSACTION_TYPE` varchar(255) DEFAULT NULL,
  `ORDER_PAYMENT` bigint(20) NOT NULL,
  `PARENT_TRANSACTION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`),
  KEY `FK86FDE7CE6A69DD9D` (`ORDER_PAYMENT`),
  KEY `FK86FDE7CEE1B66C71` (`PARENT_TRANSACTION`),
  CONSTRAINT `FK86FDE7CE6A69DD9D` FOREIGN KEY (`ORDER_PAYMENT`) REFERENCES `BLC_ORDER_PAYMENT` (`ORDER_PAYMENT_ID`),
  CONSTRAINT `FK86FDE7CEE1B66C71` FOREIGN KEY (`PARENT_TRANSACTION`) REFERENCES `BLC_ORDER_PAYMENT_TRANSACTION` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ORDER_PAYMENT_TRANSACTION`
--

LOCK TABLES `BLC_ORDER_PAYMENT_TRANSACTION` WRITE;
/*!40000 ALTER TABLE `BLC_ORDER_PAYMENT_TRANSACTION` DISABLE KEYS */;
INSERT INTO `BLC_ORDER_PAYMENT_TRANSACTION` VALUES (1,9.99,'N',NULL,'2016-12-28 19:39:20','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',2,NULL),(2,44.97,'N',NULL,'2016-12-28 19:41:49','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',4,NULL),(51,26.99,'N',NULL,'2016-12-29 12:00:27','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',52,NULL),(101,34.99,'N',NULL,'2016-12-29 12:26:52','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',102,NULL),(151,16.98,'N',NULL,'2017-01-03 19:31:38','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',152,NULL),(201,9.99,'N',NULL,'2017-01-04 12:53:21','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',202,NULL),(251,34.98,'N',NULL,'2017-01-04 13:24:51','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',252,NULL),(301,9.99,'N',NULL,'2017-01-04 13:30:56','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',302,NULL),(351,4.99,'N',NULL,'2017-01-04 19:48:18','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',501,NULL),(401,4.99,'N',NULL,'2017-01-04 20:01:15','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',552,NULL),(451,29.98,'N',NULL,'2017-01-05 10:29:59','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',602,NULL),(501,20.00,'N',NULL,'2017-01-14 13:04:18','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',653,NULL),(551,20.00,'N',NULL,'2017-01-15 13:41:49','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1002,NULL),(601,470.00,'N',NULL,'2017-01-17 04:51:17','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1052,NULL),(651,20.00,'N',NULL,'2017-01-20 05:11:34','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1102,NULL),(652,20.00,'N',NULL,'2017-01-20 05:15:07','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1104,NULL),(653,20.00,'N',NULL,'2017-01-20 05:20:43','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1106,NULL),(701,20.00,'N',NULL,'2017-01-20 05:52:50','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1152,NULL),(751,30.00,'N',NULL,'2017-01-22 17:38:56','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1202,NULL),(752,20.00,'N',NULL,'2017-01-22 18:43:05','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1205,NULL),(801,20.00,'N',NULL,'2017-01-23 16:33:08','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1252,NULL),(851,50000.00,'N',NULL,'2017-01-23 16:45:43','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1302,NULL),(901,20.00,'N',NULL,'2017-01-25 10:46:28','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1352,NULL),(951,20.00,'N',NULL,'2017-01-25 11:37:49','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1402,NULL),(1001,700.00,'N',NULL,'2017-01-25 18:06:18','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1452,NULL),(1002,20.00,'N',NULL,'2017-01-26 14:32:36','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1454,NULL),(1051,600.00,'N',NULL,'2017-01-26 10:19:17','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1502,NULL),(1101,20.00,'N',NULL,'2017-01-26 11:18:53','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1552,NULL),(1151,20.00,'N',NULL,'2017-01-26 17:07:42','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1602,NULL),(1152,20.00,'N',NULL,'2017-01-26 17:14:09','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1604,NULL),(1153,20.00,'N',NULL,'2017-01-26 17:18:03','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1606,NULL),(1201,40.00,'N',NULL,'2017-01-26 17:26:30','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1652,NULL),(1202,20000.00,'N',NULL,'2017-01-26 19:20:09','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1654,NULL),(1203,20.00,'N',NULL,'2017-01-27 12:11:45','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1656,NULL),(1251,20.00,'N',NULL,'2017-01-28 15:27:04','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1752,NULL),(1252,50000.00,'N',NULL,'2017-01-28 15:31:06','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1754,NULL),(1301,5000.00,'N',NULL,'2017-02-04 10:42:32','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1802,NULL),(1351,5000.00,'N',NULL,'2017-02-18 18:27:49','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1853,NULL),(1401,27600.00,'N',NULL,'2017-02-22 08:33:04','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',1902,NULL),(1451,5000.00,'N',NULL,'2017-02-28 14:33:43','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',2002,NULL),(1452,4000.00,'N',NULL,'2017-03-05 02:29:43','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',2005,NULL),(1501,14500.00,'N',NULL,'2017-11-20 21:13:24','Passthrough Payment',0,1,'AUTHORIZE_AND_CAPTURE',2052,NULL);
/*!40000 ALTER TABLE `BLC_ORDER_PAYMENT_TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE`
--

DROP TABLE IF EXISTS `BLC_PAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE` (
  `PAGE_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXCLUDE_FROM_SITE_MAP` tinyint(1) DEFAULT NULL,
  `FULL_URL` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `OFFLINE_FLAG` tinyint(1) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint(20) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAGE_ID`),
  KEY `PAGE_FULL_URL_INDEX` (`FULL_URL`),
  KEY `FKF41BEDD5D49D3961` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FKF41BEDD5D49D3961` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `BLC_PAGE_TMPLT` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE`
--

LOCK TABLES `BLC_PAGE` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE` DISABLE KEYS */;
INSERT INTO `BLC_PAGE` VALUES (1,NULL,NULL,'About Us',NULL,'/about_us',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(2,NULL,NULL,'FAQ',NULL,'/faq',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3,NULL,NULL,'New to Hot Sauce',NULL,'/new-to-hot-sauce',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `BLC_PAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `BLC_PAGE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE_ATTRIBUTES` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `PAGEATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `PAGEATTRIBUTE_INDEX` (`PAGE_ID`),
  KEY `FK4FE27601883C2667` (`PAGE_ID`),
  CONSTRAINT `FK4FE27601883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `BLC_PAGE` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE_ATTRIBUTES`
--

LOCK TABLES `BLC_PAGE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE_ATTRIBUTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PAGE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE_FLD`
--

DROP TABLE IF EXISTS `BLC_PAGE_FLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE_FLD` (
  `PAGE_FLD_ID` bigint(20) NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` longtext,
  `PAGE_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAGE_FLD_ID`),
  KEY `FK86433AD4883C2667` (`PAGE_ID`),
  CONSTRAINT `FK86433AD4883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `BLC_PAGE` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE_FLD`
--

LOCK TABLES `BLC_PAGE_FLD` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE_FLD` DISABLE KEYS */;
INSERT INTO `BLC_PAGE_FLD` VALUES (1,'body',NULL,'test content',1,NULL,NULL,NULL,NULL),(2,'title',NULL,'test title',1,NULL,NULL,NULL,NULL),(3,'body',NULL,'<div style=\"margin-left:60px\"><h1><b>Welcome to <i>Oye Shaadi</i> ..!</b></h1> <p>A WOW Shaadi, festive Decorations, exceptional Party...Oye Shaadi will make your special occasion the party you\'ve dreamed it would be...</p> <p>You will find every rental solution to make the special day of your life,a perfect one! Whatever be the taste,purpose,location or size of your budget,our complete <u>self managed Shaadi - Party rentals booking</u> management portal delivers totally bespoke solutions to ensure your event is a huge success. </p> <p>You can book the items you need for remarkable Weddings, Corporate Events and Special Occasions online ! </p><h2>  Who We Are ...</h2></p><p>A Dadaji Group venture : Full-service shaadi and party booking agency based in INDORE, MP. Whether it\'s your wedding, corporate event, or party, a broad range of shaadi party items booking capabilities allows to self manage your event on click.</p><p>A team of efficient, trained and dedicated professionals work most meticulously to make your wedding a success. Our wedding planner keeps inventing new ways and ideas for providing a unique wedding experience to all our clients.</p><h2>Your booking is subject to following Terms and Conditions:</h2><ul>  <li>Availabilty of stock</li>  <li>Confirmation call from us</li>  <li>Complete Payment with Delivery Charges (if applicable)</li>  <li>No refund/cancellation allowed</li>  <li>Customer\'s responsibility on event of any loss/damage/theft of any items ordered</li></ul><h2>Contact Us:</h2><p><b>Address:</b></p><p> G-6, Gangotri Apartment, <br>Goyal Nagar, Adjoining Bengali Square, <br>Indore (M.P.) - 452018</p><p><b>Phone:</b></p><ul>  <li>+91 94253 48257</li></ul><p><b>E-Mail:</b></p><ul>  <li>booking@oyeshaadi.com</li></ul></div>',2,NULL,NULL,NULL,NULL),(4,'body',NULL,'<h2 style=\"text-align:center;\">This is an example of a content-managed page.</h2>',3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `BLC_PAGE_FLD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE_ITEM_CRITERIA`
--

DROP TABLE IF EXISTS `BLC_PAGE_ITEM_CRITERIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE_ITEM_CRITERIA` (
  `PAGE_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`PAGE_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE_ITEM_CRITERIA`
--

LOCK TABLES `BLC_PAGE_ITEM_CRITERIA` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE_ITEM_CRITERIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PAGE_ITEM_CRITERIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE_RULE`
--

DROP TABLE IF EXISTS `BLC_PAGE_RULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE_RULE` (
  `PAGE_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`PAGE_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE_RULE`
--

LOCK TABLES `BLC_PAGE_RULE` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE_RULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PAGE_RULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE_RULE_MAP`
--

DROP TABLE IF EXISTS `BLC_PAGE_RULE_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE_RULE_MAP` (
  `BLC_PAGE_PAGE_ID` bigint(20) NOT NULL,
  `PAGE_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_PAGE_PAGE_ID`,`MAP_KEY`),
  KEY `FK1ABA0CA336D91846` (`PAGE_RULE_ID`),
  KEY `FK1ABA0CA3C38455DD` (`BLC_PAGE_PAGE_ID`),
  CONSTRAINT `FK1ABA0CA336D91846` FOREIGN KEY (`PAGE_RULE_ID`) REFERENCES `BLC_PAGE_RULE` (`PAGE_RULE_ID`),
  CONSTRAINT `FK1ABA0CA3C38455DD` FOREIGN KEY (`BLC_PAGE_PAGE_ID`) REFERENCES `BLC_PAGE` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE_RULE_MAP`
--

LOCK TABLES `BLC_PAGE_RULE_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE_RULE_MAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PAGE_RULE_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAGE_TMPLT`
--

DROP TABLE IF EXISTS `BLC_PAGE_TMPLT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAGE_TMPLT` (
  `PAGE_TMPLT_ID` bigint(20) NOT NULL,
  `TMPLT_DESCR` varchar(255) DEFAULT NULL,
  `TMPLT_NAME` varchar(255) DEFAULT NULL,
  `TMPLT_PATH` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PAGE_TMPLT_ID`),
  KEY `FK325C9D5A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK325C9D5A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `BLC_LOCALE` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAGE_TMPLT`
--

LOCK TABLES `BLC_PAGE_TMPLT` WRITE;
/*!40000 ALTER TABLE `BLC_PAGE_TMPLT` DISABLE KEYS */;
INSERT INTO `BLC_PAGE_TMPLT` VALUES (-3,'Outputs the body field.','NONE','NONE',NULL),(1,'This template provides a basic layout with header and footer surrounding the content and title.','Basic Template','/content/default',NULL);
/*!40000 ALTER TABLE `BLC_PAGE_TMPLT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PAYMENT_LOG`
--

DROP TABLE IF EXISTS `BLC_PAYMENT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PAYMENT_LOG` (
  `PAYMENT_LOG_ID` bigint(20) NOT NULL,
  `AMOUNT_PAID` decimal(19,5) DEFAULT NULL,
  `EXCEPTION_MESSAGE` varchar(255) DEFAULT NULL,
  `LOG_TYPE` varchar(255) NOT NULL,
  `ORDER_PAYMENT_ID` bigint(20) DEFAULT NULL,
  `ORDER_PAYMENT_REF_NUM` varchar(255) DEFAULT NULL,
  `TRANSACTION_SUCCESS` tinyint(1) DEFAULT NULL,
  `TRANSACTION_TIMESTAMP` datetime NOT NULL,
  `TRANSACTION_TYPE` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_LOG_ID`),
  KEY `PAYMENTLOG_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `PAYMENTLOG_LOGTYPE_INDEX` (`LOG_TYPE`),
  KEY `PAYMENTLOG_ORDERPAYMENT_INDEX` (`ORDER_PAYMENT_ID`),
  KEY `PAYMENTLOG_REFERENCE_INDEX` (`ORDER_PAYMENT_REF_NUM`),
  KEY `PAYMENTLOG_TRANTYPE_INDEX` (`TRANSACTION_TYPE`),
  KEY `PAYMENTLOG_USER_INDEX` (`USER_NAME`),
  KEY `FKA43703453E2FC4F9` (`CURRENCY_CODE`),
  KEY `FKA43703457470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKA43703453E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`),
  CONSTRAINT `FKA43703457470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PAYMENT_LOG`
--

LOCK TABLES `BLC_PAYMENT_LOG` WRITE;
/*!40000 ALTER TABLE `BLC_PAYMENT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PAYMENT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PERSONAL_MESSAGE`
--

DROP TABLE IF EXISTS `BLC_PERSONAL_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PERSONAL_MESSAGE` (
  `PERSONAL_MESSAGE_ID` bigint(20) NOT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `MESSAGE_FROM` varchar(255) DEFAULT NULL,
  `MESSAGE_TO` varchar(255) DEFAULT NULL,
  `OCCASION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSONAL_MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PERSONAL_MESSAGE`
--

LOCK TABLES `BLC_PERSONAL_MESSAGE` WRITE;
/*!40000 ALTER TABLE `BLC_PERSONAL_MESSAGE` DISABLE KEYS */;
INSERT INTO `BLC_PERSONAL_MESSAGE` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL),(101,NULL,NULL,NULL,NULL),(151,NULL,NULL,NULL,NULL),(201,NULL,NULL,NULL,NULL),(251,NULL,NULL,NULL,NULL),(301,NULL,NULL,NULL,NULL),(351,NULL,NULL,NULL,NULL),(401,NULL,NULL,NULL,NULL),(451,NULL,NULL,NULL,NULL),(501,NULL,NULL,NULL,NULL),(551,NULL,NULL,NULL,NULL),(601,NULL,NULL,NULL,NULL),(602,NULL,NULL,NULL,NULL),(603,NULL,NULL,NULL,NULL),(651,NULL,NULL,NULL,NULL),(701,NULL,NULL,NULL,NULL),(751,NULL,NULL,NULL,NULL),(801,NULL,NULL,NULL,NULL),(802,NULL,NULL,NULL,NULL),(803,NULL,NULL,NULL,NULL),(851,NULL,NULL,NULL,NULL),(901,NULL,NULL,NULL,NULL),(902,NULL,NULL,NULL,NULL),(903,NULL,NULL,NULL,NULL),(951,NULL,NULL,NULL,NULL),(1001,NULL,NULL,NULL,NULL),(1051,NULL,NULL,NULL,NULL),(1101,NULL,NULL,NULL,NULL),(1151,NULL,NULL,NULL,NULL),(1152,NULL,NULL,NULL,NULL),(1153,NULL,NULL,NULL,NULL),(1154,NULL,NULL,NULL,NULL),(1201,NULL,NULL,NULL,NULL),(1251,NULL,NULL,NULL,NULL),(1301,NULL,NULL,NULL,NULL),(1302,NULL,NULL,NULL,NULL),(1303,NULL,NULL,NULL,NULL),(1351,NULL,NULL,NULL,NULL),(1352,NULL,NULL,NULL,NULL),(1353,NULL,NULL,NULL,NULL),(1401,NULL,NULL,NULL,NULL),(1402,NULL,NULL,NULL,NULL),(1451,NULL,NULL,NULL,NULL),(1501,NULL,NULL,NULL,NULL),(1551,NULL,NULL,NULL,NULL),(1601,NULL,NULL,NULL,NULL),(1651,NULL,NULL,NULL,NULL),(1652,NULL,NULL,NULL,NULL),(1701,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `BLC_PERSONAL_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PGTMPLT_FLDGRP_XREF`
--

DROP TABLE IF EXISTS `BLC_PGTMPLT_FLDGRP_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PGTMPLT_FLDGRP_XREF` (
  `PG_TMPLT_FLD_GRP_ID` bigint(20) NOT NULL,
  `GROUP_ORDER` decimal(10,6) DEFAULT NULL,
  `FLD_GROUP_ID` bigint(20) DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PG_TMPLT_FLD_GRP_ID`),
  KEY `FK99D625F66A79BDB5` (`FLD_GROUP_ID`),
  KEY `FK99D625F6D49D3961` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FK99D625F66A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `BLC_FLD_GROUP` (`FLD_GROUP_ID`),
  CONSTRAINT `FK99D625F6D49D3961` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `BLC_PAGE_TMPLT` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PGTMPLT_FLDGRP_XREF`
--

LOCK TABLES `BLC_PGTMPLT_FLDGRP_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_PGTMPLT_FLDGRP_XREF` DISABLE KEYS */;
INSERT INTO `BLC_PGTMPLT_FLDGRP_XREF` VALUES (1,0.000000,1,1),(2,0.000000,-3,-3);
/*!40000 ALTER TABLE `BLC_PGTMPLT_FLDGRP_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PHONE`
--

DROP TABLE IF EXISTS `BLC_PHONE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PHONE` (
  `PHONE_ID` bigint(20) NOT NULL,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `EXTENSION` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PHONE`
--

LOCK TABLES `BLC_PHONE` WRITE;
/*!40000 ALTER TABLE `BLC_PHONE` DISABLE KEYS */;
INSERT INTO `BLC_PHONE` VALUES (1,NULL,NULL,1,0,'12345678900'),(2,NULL,NULL,1,0,'12345678900'),(3,NULL,NULL,1,0,'adad'),(4,NULL,NULL,1,0,'adad'),(51,NULL,NULL,1,0,'dada'),(52,NULL,NULL,1,0,'dada'),(101,NULL,NULL,1,0,'12345678900'),(102,NULL,NULL,1,0,'12345678900'),(151,NULL,NULL,1,0,'12345678900'),(152,NULL,NULL,1,0,'12345678900'),(201,NULL,NULL,1,0,'12345678900'),(202,NULL,NULL,1,0,'12345678900'),(251,NULL,NULL,1,0,'adad'),(252,NULL,NULL,1,0,'adad'),(301,NULL,NULL,1,0,'12345678900'),(302,NULL,NULL,1,0,'12345678900'),(351,NULL,NULL,1,0,'12345678900'),(352,NULL,NULL,1,0,'12345678900'),(401,NULL,NULL,1,0,'12345678900'),(451,NULL,NULL,1,0,'12345678900'),(452,NULL,NULL,1,0,'12345678900'),(501,NULL,NULL,1,0,'12345678900'),(551,NULL,NULL,1,0,'12345678900'),(552,NULL,NULL,1,0,'12345678900'),(601,NULL,NULL,1,0,'12345678900'),(602,NULL,NULL,1,0,'12345678900'),(651,NULL,NULL,1,0,'99999999999999999999'),(652,NULL,NULL,1,0,'9425348257'),(653,NULL,NULL,1,0,'9425348257'),(701,NULL,NULL,1,0,'9425348257'),(751,NULL,NULL,1,0,'9425348257'),(801,NULL,NULL,1,0,'9425348257'),(802,NULL,NULL,1,0,'9425348257'),(851,NULL,NULL,1,0,'9425348257'),(901,NULL,NULL,1,0,'9425348257'),(951,NULL,NULL,1,0,'9425348257'),(952,NULL,NULL,1,0,'9425348257'),(1001,NULL,NULL,1,0,'111'),(1002,NULL,NULL,1,0,'111'),(1051,NULL,NULL,1,0,'1'),(1052,NULL,NULL,1,0,'9425348257'),(1053,NULL,NULL,1,0,'9425348257'),(1054,NULL,NULL,1,0,'9425348257'),(1055,NULL,NULL,1,0,'9425348257'),(1101,NULL,NULL,1,0,'9425348257'),(1102,NULL,NULL,1,0,'9425348257'),(1151,NULL,NULL,1,0,'a'),(1152,NULL,NULL,1,0,'a'),(1153,NULL,NULL,1,0,'a'),(1154,NULL,NULL,1,0,'a'),(1155,NULL,NULL,1,0,'9425348257'),(1156,NULL,NULL,1,0,'9425348257'),(1201,NULL,NULL,1,0,'a'),(1202,NULL,NULL,1,0,'a'),(1251,NULL,NULL,1,0,'a'),(1252,NULL,NULL,1,0,'a'),(1301,NULL,NULL,1,0,'9425348257'),(1302,NULL,NULL,1,0,'9425348257'),(1351,NULL,NULL,1,0,'+919425348257'),(1352,NULL,NULL,1,0,'+919425348257'),(1401,NULL,NULL,1,0,'1'),(1402,NULL,NULL,1,0,'1'),(1403,NULL,NULL,1,0,'9425348257'),(1404,NULL,NULL,1,0,'9425348257'),(1405,NULL,NULL,1,0,'9425348257'),(1406,NULL,NULL,1,0,'9425348257'),(1407,NULL,NULL,1,0,'1'),(1408,NULL,NULL,1,0,'9425348257'),(1451,NULL,NULL,1,0,'1'),(1452,NULL,NULL,1,0,'1'),(1501,NULL,NULL,1,0,'sss'),(1502,NULL,NULL,1,0,'sss'),(1551,NULL,NULL,1,0,'9425348257'),(1552,NULL,NULL,1,0,'9425348257'),(1553,NULL,NULL,1,0,'9425348257'),(1554,NULL,NULL,1,0,'9425348257'),(1555,NULL,NULL,1,0,'9425348257'),(1601,NULL,NULL,1,0,'9425348257'),(1602,NULL,NULL,1,0,'9425348257'),(1603,NULL,NULL,1,0,'1'),(1604,NULL,NULL,1,0,'1'),(1605,NULL,NULL,1,0,'9425348257'),(1606,NULL,NULL,1,0,'9425348257'),(1607,NULL,NULL,1,0,'9425348257'),(1651,NULL,NULL,1,0,'9425348257'),(1701,NULL,NULL,1,0,'111'),(1702,NULL,NULL,1,0,'111'),(1703,NULL,NULL,1,0,'9425348257'),(1751,NULL,NULL,1,0,'111'),(1752,NULL,NULL,1,0,'111'),(1801,NULL,NULL,1,0,'9425348257'),(1802,NULL,NULL,1,0,'9425348257'),(1803,NULL,NULL,1,0,'9425348257'),(1851,NULL,NULL,1,0,'9009481481'),(1852,NULL,NULL,1,0,'9009481481'),(1901,NULL,NULL,1,0,'9425348257'),(1902,NULL,NULL,1,0,'9425348257'),(1951,NULL,NULL,1,0,'9425348257'),(1952,NULL,NULL,1,0,'9425348257'),(1953,NULL,NULL,1,0,'8839082260'),(1954,NULL,NULL,1,0,'8839082260'),(1955,NULL,NULL,1,0,'8839082260'),(2001,NULL,NULL,1,0,'8959034635'),(2002,NULL,NULL,1,0,'8959034635');
/*!40000 ALTER TABLE `BLC_PHONE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT`
--

DROP TABLE IF EXISTS `BLC_PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT` (
  `PRODUCT_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CAN_SELL_WITHOUT_OPTIONS` tinyint(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `IS_FEATURED_PRODUCT` tinyint(1) NOT NULL,
  `MANUFACTURE` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_URL` tinyint(1) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  `DEFAULT_SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `PRODUCT_CATEGORY_INDEX` (`DEFAULT_CATEGORY_ID`),
  KEY `PRODUCT_URL_INDEX` (`URL`,`URL_KEY`),
  KEY `FK5B95B7C9DF057C3F` (`DEFAULT_CATEGORY_ID`),
  KEY `FK5B95B7C96D386535` (`DEFAULT_SKU_ID`),
  CONSTRAINT `FK5B95B7C96D386535` FOREIGN KEY (`DEFAULT_SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`),
  CONSTRAINT `FK5B95B7C9DF057C3F` FOREIGN KEY (`DEFAULT_CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT`
--

LOCK TABLES `BLC_PRODUCT` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT` DISABLE KEYS */;
INSERT INTO `BLC_PRODUCT` VALUES (600,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/heat_clinic_mascot_womens',NULL,NULL,NULL),(610,'N',0,NULL,0,NULL,NULL,0,'/decoration/chair',NULL,NULL,646),(660,'N',0,NULL,0,NULL,NULL,0,'/mens/curve-stage',NULL,NULL,694),(661,'N',0,NULL,0,NULL,NULL,0,'/hot-sauces/stage-b',NULL,NULL,695),(710,'N',0,NULL,0,NULL,NULL,0,'/dining/round-table',NULL,NULL,744),(711,'N',0,NULL,0,NULL,NULL,0,'/dining/round-table-with-cover--top',NULL,NULL,745),(712,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/sofa-with-cover',NULL,NULL,746),(713,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/leather-sofa',NULL,NULL,747),(714,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/chair-cushion',NULL,NULL,748),(715,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/chair-cushion-with-cover',NULL,NULL,749),(716,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/chair-cushion-with-cover--ribbon',NULL,NULL,750),(717,'N',0,NULL,0,NULL,NULL,0,'/pandal/ceiling-printed-pandal',NULL,NULL,751),(718,'N',0,NULL,0,NULL,NULL,0,'/pandal/ceiling-white-pandal',NULL,NULL,752),(719,'N',0,NULL,0,NULL,NULL,0,'/pandal/ceiling-white-with-bengali-fabric-work',NULL,NULL,753),(720,'N',0,NULL,0,NULL,NULL,0,'/pandal/hut-pandal',NULL,NULL,754),(721,'N',0,NULL,0,NULL,NULL,0,'/carpet/carpet',NULL,NULL,755),(722,'N',0,NULL,0,NULL,NULL,0,'/phere-chawari/chawari',NULL,NULL,756),(760,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/front-truss-combo-1',NULL,NULL,794),(761,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/front-truss-combo-2',NULL,NULL,795),(762,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/box-truss',NULL,NULL,796),(763,'N',0,NULL,0,NULL,NULL,0,'/sangeet-light/box-truss-combo-2',NULL,NULL,797),(764,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-4000-watt',NULL,NULL,798),(765,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-8000-watt',NULL,NULL,799),(766,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-12000-watt',NULL,NULL,800),(767,'N',0,NULL,0,NULL,NULL,0,'/generator/generator-62kva',NULL,NULL,801),(768,'N',0,NULL,0,NULL,NULL,0,'/generator/generator-125-kva',NULL,NULL,802),(769,'N',0,NULL,0,NULL,NULL,0,'/reception-light/metal-light',NULL,NULL,803),(770,'N',0,NULL,0,NULL,NULL,0,'/reception-light/parken-light-regular',NULL,NULL,804),(771,'N',0,NULL,0,NULL,NULL,0,'/reception-light/parken-light-led',NULL,NULL,805),(772,'N',0,NULL,0,NULL,NULL,0,'/reception-light/halogen-500-w',NULL,NULL,806),(773,'N',0,NULL,0,NULL,NULL,0,'/reception-light/halogen-1000-w',NULL,NULL,807),(774,'N',0,NULL,0,NULL,NULL,0,'/reception-light/10000-sqft-area-combo',NULL,NULL,808),(775,'N',0,NULL,0,NULL,NULL,0,'/reception-light/15000-sqft-area-combo',NULL,NULL,809),(776,'N',0,NULL,0,NULL,NULL,0,'/reception-light/20000-sqft-area-combo',NULL,NULL,810),(777,'N',0,NULL,0,NULL,NULL,0,'/doli--palki/doli-1',NULL,NULL,811),(778,'N',0,NULL,0,NULL,NULL,0,'/doli--palki/doli-2',NULL,NULL,812),(779,'N',0,NULL,0,NULL,NULL,0,'/doli--palki/doli-3',NULL,NULL,813),(780,'N',0,NULL,0,NULL,NULL,0,'/ghori/ghodi-1',NULL,NULL,814),(781,'N',0,NULL,0,NULL,NULL,0,'/ghori/ghodi-2',NULL,NULL,815),(782,'N',0,NULL,0,NULL,NULL,0,'/ghori/chatar-for-groom',NULL,NULL,816),(783,'N',0,NULL,0,NULL,NULL,0,'/var-mala/varmala-1',NULL,NULL,817),(784,'N',0,NULL,0,NULL,NULL,0,'/var-mala/varmala-2',NULL,NULL,818),(785,'N',0,NULL,0,NULL,NULL,0,'/var-mala/varmala-3',NULL,NULL,819),(786,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-1',NULL,NULL,820),(810,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-2',NULL,NULL,844),(811,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-2',NULL,NULL,845),(812,'N',0,NULL,0,NULL,NULL,0,'/anchor/female-anchor-3',NULL,NULL,846),(813,'N',0,NULL,0,NULL,NULL,0,'/valet-parking/valet-1000-pax',NULL,NULL,847),(814,'N',0,NULL,0,NULL,NULL,0,'/valet-parking/valet-1500',NULL,NULL,848),(815,'N',0,NULL,0,NULL,NULL,0,'/valet-parking/valet-2000',NULL,NULL,849),(816,'N',0,NULL,0,NULL,NULL,0,'/led-screen/led-screen-812',NULL,NULL,850),(817,'N',0,NULL,0,NULL,NULL,0,'/led-screen/led-screen-1012',NULL,NULL,851),(818,'N',0,NULL,0,NULL,NULL,0,'/led-screen/led-screen-sliding',NULL,NULL,852),(860,'N',0,NULL,0,NULL,NULL,0,'/services/alaav',NULL,NULL,894),(861,'N',0,NULL,0,NULL,NULL,0,'/services/gas-heater',NULL,NULL,895),(862,'N',0,NULL,0,NULL,NULL,0,'/hot-sauces/selfie-corner',NULL,NULL,896),(910,'N',0,NULL,0,NULL,NULL,0,'/seating-zone/sofa-cushioned-with-cover',NULL,NULL,944),(911,'N',0,NULL,0,NULL,NULL,0,'/dining/round-table-with-cover-nylon-top',NULL,NULL,945),(912,'N',0,NULL,0,NULL,NULL,0,'/pandal/hut-pandal-1',NULL,NULL,946),(913,'N',0,NULL,0,NULL,NULL,0,'/pandal/hut-pandal-2',NULL,NULL,947),(914,'N',0,NULL,0,NULL,NULL,0,'/carpet/carpet-blue',NULL,NULL,948),(915,'N',0,NULL,0,NULL,NULL,0,'/carpet/carpet-red',NULL,NULL,949),(916,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/dj-2000-watt',NULL,NULL,950),(917,'N',0,NULL,1,NULL,NULL,0,'/sangeet-sound-dj/dance-floor',NULL,NULL,951),(918,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/linery-system',NULL,NULL,952),(960,'N',0,NULL,0,NULL,NULL,0,'/anchor/male-anchor',NULL,NULL,1006),(961,'N',0,NULL,1,NULL,NULL,0,'/anchor/male-anchor--mimicry-artist',NULL,NULL,1007),(1010,'N',0,NULL,0,NULL,NULL,0,'/ghori/ghodi-normal',NULL,NULL,1044),(1011,'N',0,NULL,0,NULL,NULL,0,'/ghori/white-noori-ghodi',NULL,NULL,1045),(1012,'N',0,NULL,0,NULL,NULL,0,'/ghori/white-noori-ghodi--chatar',NULL,NULL,1049),(1060,'N',0,NULL,0,NULL,NULL,0,'/alaav/gas-heater',NULL,NULL,1094),(1110,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/lineary-30000-watt',NULL,NULL,1144),(1111,'N',0,NULL,0,NULL,NULL,0,'/sangeet-sound-dj/lineary-42000-watt',NULL,NULL,1145),(1112,'N',0,NULL,0,NULL,NULL,0,'/generator/generator-62-kva-with-deisel',NULL,NULL,1146),(1113,'N',0,NULL,0,NULL,NULL,0,'/generator/generator-125-kva-with-deisel',NULL,NULL,1147),(1160,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/band-basic',NULL,NULL,1194),(1161,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/band-gold',NULL,NULL,1195),(1162,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/band-platinum',NULL,NULL,1196),(1163,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/band-platinum',NULL,NULL,1197),(1164,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/band-platinum',NULL,NULL,1198),(1165,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/gasbatti-basic',NULL,NULL,1199),(1166,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/gasbatti-gold',NULL,NULL,1200),(1167,'N',0,NULL,0,NULL,NULL,0,'/band-bajaa/gasbatti-platinum',NULL,NULL,1201),(1210,'N',0,NULL,0,NULL,NULL,0,'/special-entry/baggi-ac',NULL,NULL,1244),(1211,'N',0,NULL,0,NULL,NULL,0,'/special-entry/baggi-raja-rani',NULL,NULL,1245),(1212,'N',0,NULL,0,NULL,NULL,0,'/special-entry/baggi-victoria',NULL,NULL,1246),(1213,'N',0,NULL,0,NULL,NULL,0,'/dining/sajan-goth',NULL,NULL,1247),(1214,'N',0,NULL,0,NULL,NULL,0,'/cooler--mist-fan/cooler',NULL,NULL,1248),(1215,'N',0,NULL,0,NULL,NULL,0,'/cooler--mist-fan/mist-fan',NULL,NULL,1249),(1260,'N',0,NULL,0,NULL,NULL,0,'/selfie-corner/selfie-jhula',NULL,NULL,1294),(1261,'N',0,NULL,0,NULL,NULL,0,'/special-entry/moving-ring',NULL,NULL,1295);
/*!40000 ALTER TABLE `BLC_PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_ATTRIBUTE`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_ATTRIBUTE` (
  `PRODUCT_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ATTRIBUTE_ID`),
  KEY `PRODUCTATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `PRODUCTATTRIBUTE_INDEX` (`PRODUCT_ID`),
  KEY `FK56CE05865F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK56CE05865F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_ATTRIBUTE`
--

LOCK TABLES `BLC_PRODUCT_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PRODUCT_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_BUNDLE`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_BUNDLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_BUNDLE` (
  `AUTO_BUNDLE` tinyint(1) DEFAULT NULL,
  `BUNDLE_PROMOTABLE` tinyint(1) DEFAULT NULL,
  `ITEMS_PROMOTABLE` tinyint(1) DEFAULT NULL,
  `PRICING_MODEL` varchar(255) DEFAULT NULL,
  `BUNDLE_PRIORITY` int(11) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FK8CC5B85F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK8CC5B85F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_BUNDLE`
--

LOCK TABLES `BLC_PRODUCT_BUNDLE` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_BUNDLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PRODUCT_BUNDLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_CROSS_SALE`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_CROSS_SALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_CROSS_SALE` (
  `CROSS_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CROSS_SALE_PRODUCT_ID`),
  KEY `CROSSSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `CROSSSALE_INDEX` (`PRODUCT_ID`),
  KEY `CROSSSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  KEY `FK8324FB3C15D1A13D` (`CATEGORY_ID`),
  KEY `FK8324FB3C5F11A0B7` (`PRODUCT_ID`),
  KEY `FK8324FB3C62D84F9B` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FK8324FB3C15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK8324FB3C5F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FK8324FB3C62D84F9B` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_CROSS_SALE`
--

LOCK TABLES `BLC_PRODUCT_CROSS_SALE` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_CROSS_SALE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PRODUCT_CROSS_SALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_FEATURED`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_FEATURED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_FEATURED` (
  `FEATURED_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FEATURED_PRODUCT_ID`),
  KEY `PRODFEATURED_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `PRODFEATURED_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `FK4C49FFE415D1A13D` (`CATEGORY_ID`),
  KEY `FK4C49FFE45F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK4C49FFE415D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FK4C49FFE45F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_FEATURED`
--

LOCK TABLES `BLC_PRODUCT_FEATURED` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_FEATURED` DISABLE KEYS */;
INSERT INTO `BLC_PRODUCT_FEATURED` VALUES (1,NULL,1.000000,2001,961),(2,NULL,2.000000,2001,961),(3,NULL,3.000000,2001,961),(4,NULL,4.000000,2001,961),(5,NULL,1.000000,2003,961),(8,NULL,1.000000,2002,961),(9,NULL,2.000000,2002,961),(10,NULL,3.000000,2002,961);
/*!40000 ALTER TABLE `BLC_PRODUCT_FEATURED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_OPTION`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_OPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_OPTION` (
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_NAME` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ERROR_CODE` varchar(255) DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALIDATION_STRATEGY_TYPE` varchar(255) DEFAULT NULL,
  `VALIDATION_TYPE` varchar(255) DEFAULT NULL,
  `REQUIRED` tinyint(1) DEFAULT NULL,
  `OPTION_TYPE` varchar(255) DEFAULT NULL,
  `USE_IN_SKU_GENERATION` tinyint(1) DEFAULT NULL,
  `VALIDATION_STRING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_ID`),
  KEY `PRODUCT_OPTION_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_OPTION`
--

LOCK TABLES `BLC_PRODUCT_OPTION` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_OPTION` DISABLE KEYS */;
INSERT INTO `BLC_PRODUCT_OPTION` VALUES (1,'COLOR',NULL,NULL,NULL,'Color','Chair Cover Color','NONE',NULL,1,'COLOR',1,NULL),(2,'SIZE',NULL,NULL,NULL,'Shirt Size','Shirt Size','NONE',NULL,1,'SIZE',NULL,NULL),(3,'NAME',NULL,'INVALID_NAME','Name must be less than 30 characters, with only letters and spaces','Personalized Name','Personalized Name','SUBMIT_ORDER','REGEX',0,'TEXT',0,'[a-zA-Z ]{0,30}'),(13,'Days',NULL,NULL,NULL,'Days','Days','NONE',NULL,1,'INTEGER',1,NULL),(63,'Ribbon Colour',NULL,NULL,NULL,'Ribbon Colour','Ribbon Colour','NONE',NULL,1,'COLOR',1,NULL),(64,'Leather Sofa Type',NULL,NULL,NULL,'Leather Sofa Colour','Leather Sofa Colour','NONE',NULL,1,'COLOR',0,NULL),(113,'Led Size',NULL,NULL,NULL,'Led size','Led Size','NONE',NULL,1,'SIZE',1,NULL),(114,'Led Size',NULL,NULL,NULL,'Led Size','Led Size Premium','NONE',NULL,1,'SIZE',1,NULL),(115,'Led Size',NULL,NULL,NULL,'Led Size','Led Size Entry','NONE',NULL,1,'SIZE',1,NULL);
/*!40000 ALTER TABLE `BLC_PRODUCT_OPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_OPTION_VALUE`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_OPTION_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_OPTION_VALUE` (
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_VALUE` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` bigint(20) DEFAULT NULL,
  `PRICE_ADJUSTMENT` decimal(19,5) DEFAULT NULL,
  `PRODUCT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK6DEEEDBD92EA8136` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FK6DEEEDBD92EA8136` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `BLC_PRODUCT_OPTION` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_OPTION_VALUE`
--

LOCK TABLES `BLC_PRODUCT_OPTION_VALUE` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_OPTION_VALUE` DISABLE KEYS */;
INSERT INTO `BLC_PRODUCT_OPTION_VALUE` VALUES (1,'White',1,NULL,1),(2,'Golden',2,NULL,1),(3,'Black',3,NULL,1),(11,'S',1,NULL,2),(12,'M',2,NULL,2),(13,'L',3,NULL,2),(14,'XL',4,NULL,2),(24,'1',1,NULL,13),(25,'2',2,NULL,13),(26,'3',3,NULL,13),(74,'Red',NULL,NULL,63),(75,'Blue',NULL,NULL,63),(76,'Pink',NULL,NULL,63),(77,'Yellow',NULL,NULL,63),(78,'Orange',NULL,NULL,63),(79,'Green',NULL,NULL,63),(80,'Mazenda',NULL,NULL,63),(81,'Brown',NULL,NULL,64),(82,'White',NULL,NULL,64),(124,'8*10',1,NULL,113),(125,'8*12',2,NULL,113),(126,'8*16',3,NULL,113),(127,'10*12',4,NULL,113),(128,'10*16',5,NULL,113),(129,'10*20',6,NULL,113),(130,'10*12',1,NULL,114),(131,'10*16',2,NULL,114),(132,'10*20',3,NULL,114),(133,'8*12',1,NULL,115),(134,'8*16',2,NULL,115),(135,'10*12',3,NULL,115),(136,'10*16',4,NULL,115);
/*!40000 ALTER TABLE `BLC_PRODUCT_OPTION_VALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_OPTION_XREF`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_OPTION_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_OPTION_XREF` (
  `PRODUCT_OPTION_XREF_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_XREF_ID`),
  KEY `FKDA42AB2F5F11A0B7` (`PRODUCT_ID`),
  KEY `FKDA42AB2F92EA8136` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FKDA42AB2F5F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FKDA42AB2F92EA8136` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `BLC_PRODUCT_OPTION` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_OPTION_XREF`
--

LOCK TABLES `BLC_PRODUCT_OPTION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_OPTION_XREF` DISABLE KEYS */;
INSERT INTO `BLC_PRODUCT_OPTION_XREF` VALUES (23,610,13),(73,715,1),(74,712,1),(75,716,1),(76,716,63),(77,713,64),(78,710,1),(79,711,1),(80,711,63),(81,911,1),(124,816,113),(126,817,114),(127,818,115);
/*!40000 ALTER TABLE `BLC_PRODUCT_OPTION_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_PRODUCT_UP_SALE`
--

DROP TABLE IF EXISTS `BLC_PRODUCT_UP_SALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_PRODUCT_UP_SALE` (
  `UP_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UP_SALE_PRODUCT_ID`),
  KEY `UPSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `UPSALE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `UPSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  KEY `FKF69054F515D1A13D` (`CATEGORY_ID`),
  KEY `FKF69054F55F11A0B7` (`PRODUCT_ID`),
  KEY `FKF69054F562D84F9B` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FKF69054F515D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `BLC_CATEGORY` (`CATEGORY_ID`),
  CONSTRAINT `FKF69054F55F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FKF69054F562D84F9B` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_PRODUCT_UP_SALE`
--

LOCK TABLES `BLC_PRODUCT_UP_SALE` WRITE;
/*!40000 ALTER TABLE `BLC_PRODUCT_UP_SALE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_PRODUCT_UP_SALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_QUAL_CRIT_OFFER_XREF`
--

DROP TABLE IF EXISTS `BLC_QUAL_CRIT_OFFER_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_QUAL_CRIT_OFFER_XREF` (
  `OFFER_QUAL_CRIT_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_QUAL_CRIT_ID`),
  KEY `FKD592E919D5F3FAF4` (`OFFER_ID`),
  KEY `FKD592E9193615A91A` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKD592E9193615A91A` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `BLC_OFFER_ITEM_CRITERIA` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKD592E919D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_QUAL_CRIT_OFFER_XREF`
--

LOCK TABLES `BLC_QUAL_CRIT_OFFER_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_QUAL_CRIT_OFFER_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_QUAL_CRIT_OFFER_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_QUAL_CRIT_PAGE_XREF`
--

DROP TABLE IF EXISTS `BLC_QUAL_CRIT_PAGE_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_QUAL_CRIT_PAGE_XREF` (
  `PAGE_ID` bigint(20) NOT NULL,
  `PAGE_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PAGE_ID`,`PAGE_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_874BE5902B6BC67F` (`PAGE_ITEM_CRITERIA_ID`),
  KEY `FK874BE590883C2667` (`PAGE_ID`),
  KEY `FK874BE590378418CD` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK874BE590378418CD` FOREIGN KEY (`PAGE_ITEM_CRITERIA_ID`) REFERENCES `BLC_PAGE_ITEM_CRITERIA` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK874BE590883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `BLC_PAGE` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_QUAL_CRIT_PAGE_XREF`
--

LOCK TABLES `BLC_QUAL_CRIT_PAGE_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_QUAL_CRIT_PAGE_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_QUAL_CRIT_PAGE_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_QUAL_CRIT_SC_XREF`
--

DROP TABLE IF EXISTS `BLC_QUAL_CRIT_SC_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_QUAL_CRIT_SC_XREF` (
  `SC_ID` bigint(20) NOT NULL,
  `SC_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SC_ID`,`SC_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_C4A353AFFF06F4DE` (`SC_ITEM_CRITERIA_ID`),
  KEY `FKC4A353AF85C77F2B` (`SC_ITEM_CRITERIA_ID`),
  KEY `FKC4A353AF13D95585` (`SC_ID`),
  CONSTRAINT `FKC4A353AF13D95585` FOREIGN KEY (`SC_ID`) REFERENCES `BLC_SC` (`SC_ID`),
  CONSTRAINT `FKC4A353AF85C77F2B` FOREIGN KEY (`SC_ITEM_CRITERIA_ID`) REFERENCES `BLC_SC_ITEM_CRITERIA` (`SC_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_QUAL_CRIT_SC_XREF`
--

LOCK TABLES `BLC_QUAL_CRIT_SC_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_QUAL_CRIT_SC_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_QUAL_CRIT_SC_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_RATING_DETAIL`
--

DROP TABLE IF EXISTS `BLC_RATING_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_RATING_DETAIL` (
  `RATING_DETAIL_ID` bigint(20) NOT NULL,
  `RATING` double NOT NULL,
  `RATING_SUBMITTED_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`RATING_DETAIL_ID`),
  KEY `RATING_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `FKC9D04AD7470F437` (`CUSTOMER_ID`),
  KEY `FKC9D04ADD4E76BF4` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FKC9D04AD7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FKC9D04ADD4E76BF4` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `BLC_RATING_SUMMARY` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_RATING_DETAIL`
--

LOCK TABLES `BLC_RATING_DETAIL` WRITE;
/*!40000 ALTER TABLE `BLC_RATING_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_RATING_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_RATING_SUMMARY`
--

DROP TABLE IF EXISTS `BLC_RATING_SUMMARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_RATING_SUMMARY` (
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  `AVERAGE_RATING` double NOT NULL,
  `ITEM_ID` varchar(255) NOT NULL,
  `RATING_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`RATING_SUMMARY_ID`),
  KEY `RATINGSUMM_ITEM_INDEX` (`ITEM_ID`),
  KEY `RATINGSUMM_TYPE_INDEX` (`RATING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_RATING_SUMMARY`
--

LOCK TABLES `BLC_RATING_SUMMARY` WRITE;
/*!40000 ALTER TABLE `BLC_RATING_SUMMARY` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_RATING_SUMMARY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_REVIEW_DETAIL`
--

DROP TABLE IF EXISTS `BLC_REVIEW_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_REVIEW_DETAIL` (
  `REVIEW_DETAIL_ID` bigint(20) NOT NULL,
  `HELPFUL_COUNT` int(11) NOT NULL,
  `NOT_HELPFUL_COUNT` int(11) NOT NULL,
  `REVIEW_SUBMITTED_DATE` datetime NOT NULL,
  `REVIEW_STATUS` varchar(255) NOT NULL,
  `REVIEW_TEXT` varchar(255) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `RATING_DETAIL_ID` bigint(20) DEFAULT NULL,
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`REVIEW_DETAIL_ID`),
  KEY `REVIEWDETAIL_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWDETAIL_RATING_INDEX` (`RATING_DETAIL_ID`),
  KEY `REVIEWDETAIL_SUMMARY_INDEX` (`RATING_SUMMARY_ID`),
  KEY `REVIEWDETAIL_STATUS_INDEX` (`REVIEW_STATUS`),
  KEY `FK9CD7E6927470F437` (`CUSTOMER_ID`),
  KEY `FK9CD7E69245DC39E0` (`RATING_DETAIL_ID`),
  KEY `FK9CD7E692D4E76BF4` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FK9CD7E69245DC39E0` FOREIGN KEY (`RATING_DETAIL_ID`) REFERENCES `BLC_RATING_DETAIL` (`RATING_DETAIL_ID`),
  CONSTRAINT `FK9CD7E6927470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK9CD7E692D4E76BF4` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `BLC_RATING_SUMMARY` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_REVIEW_DETAIL`
--

LOCK TABLES `BLC_REVIEW_DETAIL` WRITE;
/*!40000 ALTER TABLE `BLC_REVIEW_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_REVIEW_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_REVIEW_FEEDBACK`
--

DROP TABLE IF EXISTS `BLC_REVIEW_FEEDBACK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_REVIEW_FEEDBACK` (
  `REVIEW_FEEDBACK_ID` bigint(20) NOT NULL,
  `IS_HELPFUL` tinyint(1) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `REVIEW_DETAIL_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`REVIEW_FEEDBACK_ID`),
  KEY `REVIEWFEED_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWFEED_DETAIL_INDEX` (`REVIEW_DETAIL_ID`),
  KEY `FK7CC929867470F437` (`CUSTOMER_ID`),
  KEY `FK7CC92986AE4769D6` (`REVIEW_DETAIL_ID`),
  CONSTRAINT `FK7CC929867470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK7CC92986AE4769D6` FOREIGN KEY (`REVIEW_DETAIL_ID`) REFERENCES `BLC_REVIEW_DETAIL` (`REVIEW_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_REVIEW_FEEDBACK`
--

LOCK TABLES `BLC_REVIEW_FEEDBACK` WRITE;
/*!40000 ALTER TABLE `BLC_REVIEW_FEEDBACK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_REVIEW_FEEDBACK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ROLE`
--

DROP TABLE IF EXISTS `BLC_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ROLE` (
  `ROLE_ID` bigint(20) NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `ROLE_NAME_INDEX` (`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ROLE`
--

LOCK TABLES `BLC_ROLE` WRITE;
/*!40000 ALTER TABLE `BLC_ROLE` DISABLE KEYS */;
INSERT INTO `BLC_ROLE` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `BLC_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SANDBOX`
--

DROP TABLE IF EXISTS `BLC_SANDBOX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SANDBOX` (
  `SANDBOX_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `AUTHOR` bigint(20) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GO_LIVE_DATE` datetime DEFAULT NULL,
  `SANDBOX_NAME` varchar(255) DEFAULT NULL,
  `SANDBOX_TYPE` varchar(255) DEFAULT NULL,
  `PARENT_SANDBOX_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SANDBOX_ID`),
  KEY `SANDBOX_NAME_INDEX` (`SANDBOX_NAME`),
  KEY `FKDD37A9A174160452` (`PARENT_SANDBOX_ID`),
  CONSTRAINT `FKDD37A9A174160452` FOREIGN KEY (`PARENT_SANDBOX_ID`) REFERENCES `BLC_SANDBOX` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SANDBOX`
--

LOCK TABLES `BLC_SANDBOX` WRITE;
/*!40000 ALTER TABLE `BLC_SANDBOX` DISABLE KEYS */;
INSERT INTO `BLC_SANDBOX` VALUES (1,'N',NULL,'2016-12-27 20:04:45','2016-12-27 20:04:45',NULL,NULL,'#20C0F0',NULL,NULL,'Default','DEFAULT',NULL),(2,'N',NULL,'2016-12-27 20:04:46','2016-12-27 20:04:46',NULL,-1,NULL,NULL,NULL,'Default','USER',1),(51,'N',NULL,NULL,NULL,NULL,-4,NULL,NULL,NULL,'Default','USER',1);
/*!40000 ALTER TABLE `BLC_SANDBOX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SANDBOX_MGMT`
--

DROP TABLE IF EXISTS `BLC_SANDBOX_MGMT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SANDBOX_MGMT` (
  `SANDBOX_MGMT_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `SANDBOX_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SANDBOX_MGMT_ID`),
  UNIQUE KEY `UK_4845009FE52B6993` (`SANDBOX_ID`),
  KEY `FK4845009F579FE59D` (`SANDBOX_ID`),
  CONSTRAINT `FK4845009F579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `BLC_SANDBOX` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SANDBOX_MGMT`
--

LOCK TABLES `BLC_SANDBOX_MGMT` WRITE;
/*!40000 ALTER TABLE `BLC_SANDBOX_MGMT` DISABLE KEYS */;
INSERT INTO `BLC_SANDBOX_MGMT` VALUES (1,NULL,'2016-12-27 20:04:45','2016-12-27 20:04:45',NULL,1),(2,NULL,'2016-12-27 20:04:46','2016-12-27 20:04:46',NULL,2),(51,NULL,NULL,NULL,NULL,51);
/*!40000 ALTER TABLE `BLC_SANDBOX_MGMT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC`
--

DROP TABLE IF EXISTS `BLC_SC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC` (
  `SC_ID` bigint(20) NOT NULL,
  `CONTENT_NAME` varchar(255) NOT NULL,
  `OFFLINE_FLAG` tinyint(1) DEFAULT NULL,
  `PRIORITY` int(11) NOT NULL,
  `LOCALE_CODE` varchar(255) NOT NULL,
  `SC_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_ID`),
  KEY `CONTENT_NAME_INDEX` (`CONTENT_NAME`),
  KEY `SC_OFFLN_FLG_INDX` (`OFFLINE_FLAG`),
  KEY `CONTENT_PRIORITY_INDEX` (`PRIORITY`),
  KEY `FK74EEB716A1E1C128` (`LOCALE_CODE`),
  KEY `FK74EEB71671EBFA46` (`SC_TYPE_ID`),
  CONSTRAINT `FK74EEB71671EBFA46` FOREIGN KEY (`SC_TYPE_ID`) REFERENCES `BLC_SC_TYPE` (`SC_TYPE_ID`),
  CONSTRAINT `FK74EEB716A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `BLC_LOCALE` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC`
--

LOCK TABLES `BLC_SC` WRITE;
/*!40000 ALTER TABLE `BLC_SC` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_FLD`
--

DROP TABLE IF EXISTS `BLC_SC_FLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_FLD` (
  `SC_FLD_ID` bigint(20) NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_FLD`
--

LOCK TABLES `BLC_SC_FLD` WRITE;
/*!40000 ALTER TABLE `BLC_SC_FLD` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_FLD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_FLDGRP_XREF`
--

DROP TABLE IF EXISTS `BLC_SC_FLDGRP_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_FLDGRP_XREF` (
  `SC_FLD_TMPLT_ID` bigint(20) NOT NULL,
  `FLD_GROUP_ID` bigint(20) NOT NULL,
  `GROUP_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`,`GROUP_ORDER`),
  KEY `FK71612AEA6A79BDB5` (`FLD_GROUP_ID`),
  KEY `FK71612AEAF6B0BA84` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FK71612AEA6A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `BLC_FLD_GROUP` (`FLD_GROUP_ID`),
  CONSTRAINT `FK71612AEAF6B0BA84` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `BLC_SC_FLD_TMPLT` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_FLDGRP_XREF`
--

LOCK TABLES `BLC_SC_FLDGRP_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_SC_FLDGRP_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_FLDGRP_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_FLD_MAP`
--

DROP TABLE IF EXISTS `BLC_SC_FLD_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_FLD_MAP` (
  `BLC_SC_SC_FIELD_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `SC_ID` bigint(20) NOT NULL,
  `SC_FLD_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`BLC_SC_SC_FIELD_ID`),
  KEY `FKD948019213D95585` (`SC_ID`),
  KEY `FKD9480192DD6FD28A` (`SC_FLD_ID`),
  CONSTRAINT `FKD948019213D95585` FOREIGN KEY (`SC_ID`) REFERENCES `BLC_SC` (`SC_ID`),
  CONSTRAINT `FKD9480192DD6FD28A` FOREIGN KEY (`SC_FLD_ID`) REFERENCES `BLC_SC_FLD` (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_FLD_MAP`
--

LOCK TABLES `BLC_SC_FLD_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_SC_FLD_MAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_FLD_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_FLD_TMPLT`
--

DROP TABLE IF EXISTS `BLC_SC_FLD_TMPLT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_FLD_TMPLT` (
  `SC_FLD_TMPLT_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_FLD_TMPLT`
--

LOCK TABLES `BLC_SC_FLD_TMPLT` WRITE;
/*!40000 ALTER TABLE `BLC_SC_FLD_TMPLT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_FLD_TMPLT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_ITEM_CRITERIA`
--

DROP TABLE IF EXISTS `BLC_SC_ITEM_CRITERIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_ITEM_CRITERIA` (
  `SC_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  `SC_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_ITEM_CRITERIA_ID`),
  KEY `FK6D52BDA213D95585` (`SC_ID`),
  CONSTRAINT `FK6D52BDA213D95585` FOREIGN KEY (`SC_ID`) REFERENCES `BLC_SC` (`SC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_ITEM_CRITERIA`
--

LOCK TABLES `BLC_SC_ITEM_CRITERIA` WRITE;
/*!40000 ALTER TABLE `BLC_SC_ITEM_CRITERIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_ITEM_CRITERIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_RULE`
--

DROP TABLE IF EXISTS `BLC_SC_RULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_RULE` (
  `SC_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_RULE`
--

LOCK TABLES `BLC_SC_RULE` WRITE;
/*!40000 ALTER TABLE `BLC_SC_RULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_RULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_RULE_MAP`
--

DROP TABLE IF EXISTS `BLC_SC_RULE_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_RULE_MAP` (
  `BLC_SC_SC_ID` bigint(20) NOT NULL,
  `SC_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_SC_SC_ID`,`MAP_KEY`),
  KEY `FK169F1C8256E51A06` (`SC_RULE_ID`),
  KEY `FK169F1C82156E72FC` (`BLC_SC_SC_ID`),
  CONSTRAINT `FK169F1C82156E72FC` FOREIGN KEY (`BLC_SC_SC_ID`) REFERENCES `BLC_SC` (`SC_ID`),
  CONSTRAINT `FK169F1C8256E51A06` FOREIGN KEY (`SC_RULE_ID`) REFERENCES `BLC_SC_RULE` (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_RULE_MAP`
--

LOCK TABLES `BLC_SC_RULE_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_SC_RULE_MAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_RULE_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SC_TYPE`
--

DROP TABLE IF EXISTS `BLC_SC_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SC_TYPE` (
  `SC_TYPE_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SC_FLD_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_TYPE_ID`),
  KEY `SC_TYPE_NAME_INDEX` (`NAME`),
  KEY `FKE19886C3F6B0BA84` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FKE19886C3F6B0BA84` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `BLC_SC_FLD_TMPLT` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SC_TYPE`
--

LOCK TABLES `BLC_SC_TYPE` WRITE;
/*!40000 ALTER TABLE `BLC_SC_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SC_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SEARCH_FACET`
--

DROP TABLE IF EXISTS `BLC_SEARCH_FACET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SEARCH_FACET` (
  `SEARCH_FACET_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `MULTISELECT` tinyint(1) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRES_ALL_DEPENDENT` tinyint(1) DEFAULT NULL,
  `SEARCH_DISPLAY_PRIORITY` int(11) DEFAULT NULL,
  `SHOW_ON_SEARCH` tinyint(1) DEFAULT NULL,
  `USE_FACET_RANGES` tinyint(1) DEFAULT NULL,
  `INDEX_FIELD_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_ID`),
  KEY `FK4FFCC986BE3CE566` (`INDEX_FIELD_TYPE_ID`),
  CONSTRAINT `FK4FFCC986BE3CE566` FOREIGN KEY (`INDEX_FIELD_TYPE_ID`) REFERENCES `BLC_INDEX_FIELD_TYPE` (`INDEX_FIELD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SEARCH_FACET`
--

LOCK TABLES `BLC_SEARCH_FACET` WRITE;
/*!40000 ALTER TABLE `BLC_SEARCH_FACET` DISABLE KEYS */;
INSERT INTO `BLC_SEARCH_FACET` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,'Manufacturer','Manufacturer Facet',NULL,0,0,0,2),(2,NULL,NULL,NULL,NULL,NULL,1,'Heat Range','Heat Range Facet',NULL,0,0,0,3),(3,NULL,NULL,NULL,NULL,NULL,1,'Price','Price Facet',NULL,1,1,1,4),(4,NULL,NULL,NULL,NULL,NULL,1,'Color','Color Facet',NULL,0,1,0,9);
/*!40000 ALTER TABLE `BLC_SEARCH_FACET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SEARCH_FACET_RANGE`
--

DROP TABLE IF EXISTS `BLC_SEARCH_FACET_RANGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SEARCH_FACET_RANGE` (
  `SEARCH_FACET_RANGE_ID` bigint(20) NOT NULL,
  `MAX_VALUE` decimal(19,5) DEFAULT NULL,
  `MIN_VALUE` decimal(19,5) NOT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_RANGE_ID`),
  KEY `SEARCH_FACET_INDEX` (`SEARCH_FACET_ID`),
  KEY `FK7EC3B124B96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK7EC3B124B96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `BLC_SEARCH_FACET` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SEARCH_FACET_RANGE`
--

LOCK TABLES `BLC_SEARCH_FACET_RANGE` WRITE;
/*!40000 ALTER TABLE `BLC_SEARCH_FACET_RANGE` DISABLE KEYS */;
INSERT INTO `BLC_SEARCH_FACET_RANGE` VALUES (1,5.00000,0.00000,3),(2,10.00000,5.00000,3),(3,15.00000,10.00000,3),(4,NULL,15.00000,3);
/*!40000 ALTER TABLE `BLC_SEARCH_FACET_RANGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SEARCH_FACET_XREF`
--

DROP TABLE IF EXISTS `BLC_SEARCH_FACET_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SEARCH_FACET_XREF` (
  `ID` bigint(20) NOT NULL,
  `REQUIRED_FACET_ID` bigint(20) NOT NULL,
  `SEARCH_FACET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK35A63034DA7E1C7C` (`REQUIRED_FACET_ID`),
  KEY `FK35A63034B96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK35A63034B96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `BLC_SEARCH_FACET` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK35A63034DA7E1C7C` FOREIGN KEY (`REQUIRED_FACET_ID`) REFERENCES `BLC_SEARCH_FACET` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SEARCH_FACET_XREF`
--

LOCK TABLES `BLC_SEARCH_FACET_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_SEARCH_FACET_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SEARCH_FACET_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SEARCH_INTERCEPT`
--

DROP TABLE IF EXISTS `BLC_SEARCH_INTERCEPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SEARCH_INTERCEPT` (
  `SEARCH_REDIRECT_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `SEARCH_TERM` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`SEARCH_REDIRECT_ID`),
  KEY `SEARCH_ACTIVE_INDEX` (`ACTIVE_END_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SEARCH_INTERCEPT`
--

LOCK TABLES `BLC_SEARCH_INTERCEPT` WRITE;
/*!40000 ALTER TABLE `BLC_SEARCH_INTERCEPT` DISABLE KEYS */;
INSERT INTO `BLC_SEARCH_INTERCEPT` VALUES (-2,NULL,NULL,NULL,NULL,NULL,NULL,-10,'sale','/clearance'),(-1,NULL,NULL,NULL,NULL,NULL,NULL,1,'insanity','/hot-sauces/insanity_sauce');
/*!40000 ALTER TABLE `BLC_SEARCH_INTERCEPT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SEARCH_SYNONYM`
--

DROP TABLE IF EXISTS `BLC_SEARCH_SYNONYM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SEARCH_SYNONYM` (
  `SEARCH_SYNONYM_ID` bigint(20) NOT NULL,
  `SYNONYMS` varchar(255) DEFAULT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_SYNONYM_ID`),
  KEY `SEARCHSYNONYM_TERM_INDEX` (`TERM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SEARCH_SYNONYM`
--

LOCK TABLES `BLC_SEARCH_SYNONYM` WRITE;
/*!40000 ALTER TABLE `BLC_SEARCH_SYNONYM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SEARCH_SYNONYM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SHIPPING_RATE`
--

DROP TABLE IF EXISTS `BLC_SHIPPING_RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SHIPPING_RATE` (
  `ID` bigint(20) NOT NULL,
  `BAND_RESULT_PCT` int(11) NOT NULL,
  `BAND_RESULT_QTY` decimal(19,2) NOT NULL,
  `BAND_UNIT_QTY` decimal(19,2) NOT NULL,
  `FEE_BAND` int(11) NOT NULL,
  `FEE_SUB_TYPE` varchar(255) DEFAULT NULL,
  `FEE_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SHIPPINGRATE_FEESUB_INDEX` (`FEE_SUB_TYPE`),
  KEY `SHIPPINGRATE_FEE_INDEX` (`FEE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SHIPPING_RATE`
--

LOCK TABLES `BLC_SHIPPING_RATE` WRITE;
/*!40000 ALTER TABLE `BLC_SHIPPING_RATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SHIPPING_RATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SITE`
--

DROP TABLE IF EXISTS `BLC_SITE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SITE` (
  `SITE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_TYPE` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SITE_ID`),
  KEY `BLC_SITE_ID_VAL_INDEX` (`SITE_IDENTIFIER_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SITE`
--

LOCK TABLES `BLC_SITE` WRITE;
/*!40000 ALTER TABLE `BLC_SITE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SITE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SITE_CATALOG`
--

DROP TABLE IF EXISTS `BLC_SITE_CATALOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SITE_CATALOG` (
  `SITE_CATALOG_XREF_ID` bigint(20) NOT NULL,
  `CATALOG_ID` bigint(20) NOT NULL,
  `SITE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SITE_CATALOG_XREF_ID`),
  KEY `FK5F3F2047A350C7F1` (`CATALOG_ID`),
  KEY `FK5F3F2047843A8B63` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047843A8B63` FOREIGN KEY (`SITE_ID`) REFERENCES `BLC_SITE` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047A350C7F1` FOREIGN KEY (`CATALOG_ID`) REFERENCES `BLC_CATALOG` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SITE_CATALOG`
--

LOCK TABLES `BLC_SITE_CATALOG` WRITE;
/*!40000 ALTER TABLE `BLC_SITE_CATALOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SITE_CATALOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SITE_MAP_CFG`
--

DROP TABLE IF EXISTS `BLC_SITE_MAP_CFG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SITE_MAP_CFG` (
  `INDEXED_SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `INDEXED_SITE_MAP_FILE_PATTERN` varchar(255) DEFAULT NULL,
  `MAX_URL_ENTRIES_PER_FILE` int(11) DEFAULT NULL,
  `SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`),
  KEY `FK7012930FC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK7012930FC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `BLC_MODULE_CONFIGURATION` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SITE_MAP_CFG`
--

LOCK TABLES `BLC_SITE_MAP_CFG` WRITE;
/*!40000 ALTER TABLE `BLC_SITE_MAP_CFG` DISABLE KEYS */;
INSERT INTO `BLC_SITE_MAP_CFG` VALUES (NULL,NULL,NULL,NULL,-1);
/*!40000 ALTER TABLE `BLC_SITE_MAP_CFG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SITE_MAP_GEN_CFG`
--

DROP TABLE IF EXISTS `BLC_SITE_MAP_GEN_CFG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SITE_MAP_GEN_CFG` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `DISABLED` tinyint(1) NOT NULL,
  `GENERATOR_TYPE` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1D76000A340ED71` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK1D76000A340ED71` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `BLC_SITE_MAP_CFG` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SITE_MAP_GEN_CFG`
--

LOCK TABLES `BLC_SITE_MAP_GEN_CFG` WRITE;
/*!40000 ALTER TABLE `BLC_SITE_MAP_GEN_CFG` DISABLE KEYS */;
INSERT INTO `BLC_SITE_MAP_GEN_CFG` VALUES (-8,'HOURLY',1,'SKU','0.5',-1),(-7,'HOURLY',0,'CATEGORY','0.5',-1),(-6,'HOURLY',0,'CATEGORY','0.5',-1),(-5,'HOURLY',0,'CATEGORY','0.5',-1),(-4,'HOURLY',0,'CATEGORY','0.5',-1),(-3,'HOURLY',0,'PAGE','0.5',-1),(-2,'HOURLY',0,'PRODUCT','0.5',-1),(-1,'HOURLY',0,'CUSTOM','0.5',-1);
/*!40000 ALTER TABLE `BLC_SITE_MAP_GEN_CFG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SITE_MAP_URL_ENTRY`
--

DROP TABLE IF EXISTS `BLC_SITE_MAP_URL_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SITE_MAP_URL_ENTRY` (
  `URL_ENTRY_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `LAST_MODIFIED` datetime NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`URL_ENTRY_ID`),
  KEY `FKE2004FED36AFE1EE` (`GEN_CONFIG_ID`),
  CONSTRAINT `FKE2004FED36AFE1EE` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `BLC_CUST_SITE_MAP_GEN_CFG` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SITE_MAP_URL_ENTRY`
--

LOCK TABLES `BLC_SITE_MAP_URL_ENTRY` WRITE;
/*!40000 ALTER TABLE `BLC_SITE_MAP_URL_ENTRY` DISABLE KEYS */;
INSERT INTO `BLC_SITE_MAP_URL_ENTRY` VALUES (-8,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/8','0.5',-1),(-7,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/7','0.5',-1),(-6,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/6','0.5',-1),(-5,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/5','0.5',-1),(-4,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/4','0.5',-1),(-3,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/3','0.5',-1),(-2,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/2','0.5',-1),(-1,'HOURLY','2016-12-27 19:55:40','http://www.heatclinic.com/1','0.5',-1);
/*!40000 ALTER TABLE `BLC_SITE_MAP_URL_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU`
--

DROP TABLE IF EXISTS `BLC_SKU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU` (
  `SKU_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `AVAILABLE_FLAG` char(1) DEFAULT NULL,
  `COST` decimal(19,5) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTAINER_SHAPE` varchar(255) DEFAULT NULL,
  `DEPTH` decimal(19,2) DEFAULT NULL,
  `DIMENSION_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `GIRTH` decimal(19,2) DEFAULT NULL,
  `HEIGHT` decimal(19,2) DEFAULT NULL,
  `CONTAINER_SIZE` varchar(255) DEFAULT NULL,
  `WIDTH` decimal(19,2) DEFAULT NULL,
  `DISCOUNTABLE_FLAG` char(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `IS_MACHINE_SORTABLE` tinyint(1) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `QUANTITY_AVAILABLE` int(11) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE_FLAG` char(1) DEFAULT NULL,
  `UPC` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `WEIGHT` decimal(19,2) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `DEFAULT_PRODUCT_ID` bigint(20) DEFAULT NULL,
  `ADDL_PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SKU_ID`),
  KEY `SKU_ACTIVE_END_INDEX` (`ACTIVE_END_DATE`),
  KEY `SKU_ACTIVE_START_INDEX` (`ACTIVE_START_DATE`),
  KEY `SKU_AVAILABLE_INDEX` (`AVAILABLE_FLAG`),
  KEY `SKU_DISCOUNTABLE_INDEX` (`DISCOUNTABLE_FLAG`),
  KEY `SKU_EXTERNAL_ID_INDEX` (`EXTERNAL_ID`),
  KEY `SKU_NAME_INDEX` (`NAME`),
  KEY `SKU_TAXABLE_INDEX` (`TAXABLE_FLAG`),
  KEY `SKU_UPC_INDEX` (`UPC`),
  KEY `SKU_URL_KEY_INDEX` (`URL_KEY`),
  KEY `FK28E82CF73E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK28E82CF77E555D75` (`DEFAULT_PRODUCT_ID`),
  KEY `FK28E82CF750D6498B` (`ADDL_PRODUCT_ID`),
  CONSTRAINT `FK28E82CF73E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`),
  CONSTRAINT `FK28E82CF750D6498B` FOREIGN KEY (`ADDL_PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`),
  CONSTRAINT `FK28E82CF77E555D75` FOREIGN KEY (`DEFAULT_PRODUCT_ID`) REFERENCES `BLC_PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU`
--

LOCK TABLES `BLC_SKU` WRITE;
/*!40000 ALTER TABLE `BLC_SKU` DISABLE KEYS */;
INSERT INTO `BLC_SKU` VALUES (1,NULL,'2016-12-27 19:55:17',NULL,3.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',NULL,'As my Chilipals know, I am never one to be satisfied. Hence, the creation of Sudden Death. When you need to go beyond... Sudden Death will deliver! ','Sudden Death Sauce',NULL,10.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'2016-12-27 19:55:17',NULL,3.79000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',NULL,'The perfect topper for chicken, fish, burgers or pizza. A great blend of Habanero, Mango, Passion Fruit and more make this Death Sauce an amazing tropical treat.','Sweet Death Sauce',NULL,10.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'2016-12-27 19:55:17',NULL,3.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Tangy, ripe cayenne peppes flow together with garlic, onion, tomato paste and a hint of cane sugar to make this a smooth sauce with a bite.  Wonderful on eggs, poultry, pork, or fish, this sauce blends to make rich marinades and soups.','Hoppin\' Hot Sauce',NULL,4.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'2016-12-27 19:55:17',NULL,4.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'When any pepper is dried and smoked, it is referred to as a Chipotle. Usually with a wrinkled, drak brown appearance, the Chipotle delivers a smokey, sweet flavor which is generally used for adding a smokey, roasted flavor to salsas, stews and marinades.','Day of the Dead Chipotle Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'2016-12-27 19:55:17',NULL,5.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'If you want hot, this is the chile to choose. Native to the Carribean, Yucatan and Northern Coast of South America, the Habanero presents itself in a variety of colors ranging from light green to a bright red. The Habanero\'s bold heat, unique flavor and aroma has made it the favorite of chile lovers.','Day of the Dead Habanero Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'2016-12-27 19:55:17',NULL,5.40000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Often mistaken for the Habanero, the Scotch Bonnet has a deeply inverted tip as opposed to the pointed end of the Habanero. Ranging in many colors from green to yellow-orange, the Scotch Bonnet is a staple in West Indies and Barbados style pepper sauces.','Day of the Dead Scotch Bonnet Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,'2016-12-27 19:55:17',NULL,8.10000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Made with Naga Bhut Jolokia, the World\'s Hottest pepper.','Green Ghost',NULL,11.99000,9.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,'2016-12-27 19:55:17',NULL,3.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'You bet your boots, this hot sauce earned its name from folks that appreciate an outstanding hot sauce. What you\'ll find here is a truly original zesty flavor, not an overpowering pungency that is found in those ordinary Tabasco pepper sauces - even though the pepper used in this product was tested at 285,000 Scoville units. So, saddle up for a ride to remember. To make sure we brought you only the finest Habanero pepper sauce, we went to the foothills of the Mayan mountains in Belize, Central America. This product is prepared entirely by hand using only fresh vegetables and all natural ingredients.','Blazin\' Saddle XXX Hot Habanero Pepper Sauce',NULL,4.99000,3.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,'2016-12-27 19:55:17',NULL,5.30000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'All Hell is breaking loose, fire &amp; brimstone rain down? prepare to meet your maker.','Armageddon The Hot Sauce To End All',NULL,12.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,'2016-12-27 19:55:17',NULL,6.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Here is the Prescription for those who enjoy intolerable heat. Dr. Chilemeister\'s sick and evil deadly brew should be used with caution. Pain can become addictive!','Dr. Chilemeister\'s Insane Hot Sauce',NULL,12.99000,10.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,'2016-12-27 19:55:17',NULL,2.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Been there, roped that. Hotter than a buckin\' mare in heat! Sprinkle on meat entrees, seafood and vegetables. Use as additive in barbecue sauce or any food that needs a spicy flavor. Start with a few drops and work up to the desired flavor.','Bull Snort Cowboy Cayenne Pepper Hot Sauce',NULL,3.99000,2.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,'2016-12-27 19:55:17',NULL,3.09000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'One of the more unusual sauces we sell. The original was an old style Cajun sauce and this is it\'s updated blackening version. It\'s sweet but you get a great hit of cinnamon and cloves with a nice kick of cayenne heat. Use on all foods to give that Cajun flair!','Cafe Louisiane Sweet Cajun Blackening Sauce',NULL,4.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,'2016-12-27 19:55:17',NULL,2.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Everything is bigger in Texas, even the burn of a Bull Snortin\' Hot Sauce! shower on that Texas sized steak they call the Ole 96er or your plane Jane vegetables. If you are a fan on making BBQ sauce from scratch like I am, you can use Bull Snort Smokin\' Tonsils Hot Sauce as an additive. Red hot habaneros and cayenne peppers give this tonsil tingler it\'s famous flavor and red hot heat. Bull Snort Smokin\' Tonsils Hot Sauce\'ll have your bowels buckin\' with just a drop!','Bull Snort Smokin\' Toncils Hot Sauce',NULL,3.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,'2016-12-27 19:55:17',NULL,3.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Cool Cayenne Pepper Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,'2016-12-27 19:55:17',NULL,4.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Roasted Garlic Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,'2016-12-27 19:55:17',NULL,2.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Scotch Bonnet Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,'2016-12-27 19:55:17',NULL,3.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Insanity Sauce',NULL,5.99000,4.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,'2016-12-27 19:55:17',NULL,3.25000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Hurtin\' Jalapeno Hot Sauce',NULL,5.99000,4.49000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,'2016-12-27 19:55:17',NULL,2.59000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Roasted Red Pepper & Chipotle Hot Sauce',NULL,5.99000,4.09000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,'2016-12-27 19:55:17',NULL,4.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'','bundle1',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,'2016-12-27 19:55:17',NULL,3.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'','bundle2',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,NULL,'2016-12-27 19:55:18',NULL,4.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(112,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(113,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(114,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(121,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(122,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(123,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(124,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(131,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(132,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(133,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(134,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(200,NULL,'2016-12-27 19:55:18',NULL,4.69000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(212,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(213,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(214,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(221,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(222,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(223,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(224,NULL,'2016-12-27 19:55:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(231,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(232,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(233,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(234,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(300,NULL,'2016-12-27 19:55:18',NULL,5.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(312,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(313,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(314,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(321,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(322,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(323,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(324,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(331,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(332,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(333,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(334,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(400,NULL,'2016-12-27 19:55:18',NULL,5.49000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(412,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(413,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(414,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(421,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(422,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(423,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(424,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(431,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(432,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(433,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(434,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(500,NULL,'2016-12-27 19:55:18',NULL,4.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(512,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(513,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(514,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(521,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(522,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(523,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(524,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(531,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(532,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(533,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(534,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(600,NULL,'2016-12-27 19:55:18',NULL,4.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(611,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,NULL),(612,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,NULL),(613,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,NULL),(614,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,NULL),(621,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,NULL),(622,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,NULL),(623,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,NULL),(624,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,NULL),(631,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,NULL),(632,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,NULL),(633,NULL,'2016-12-27 19:55:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,NULL),(634,NULL,'2016-12-27 19:55:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,NULL),(646,NULL,'2017-01-04 15:30:21',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,0,NULL,'Chawari-PK-1',NULL,11000.00000,NULL,NULL,'N',NULL,NULL,NULL,'KILOGRAMS',NULL,610,NULL),(647,NULL,'2017-01-04 15:46:42',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>for 1 day</p>','Chair',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,NULL,610),(648,NULL,'2017-01-04 15:47:27',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>for 2 days</p>','chair',NULL,15.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,NULL,610),(649,NULL,'2017-01-04 15:47:48',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>for 3 days</p>','chair',NULL,20.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,NULL,610),(694,NULL,'2017-01-08 06:03:41',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-PK-2',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,660,NULL),(695,NULL,'2017-01-08 06:48:40',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-PK-3',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,661,NULL),(744,NULL,'2017-01-08 08:07:04',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Capacity of 6 members</p>','Round Table with Cover',NULL,200.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,710,NULL),(745,NULL,'2017-01-08 08:11:30',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Capacity of 6 members</p><p>Contrast Cover &amp; Top to show theme decor</p>','Round Table with Theme Cover & Top',NULL,250.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,711,NULL),(746,NULL,'2017-01-08 08:14:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>3 seater Sofa with colour options<br></p>','Sofa with Cover',NULL,350.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,712,NULL),(747,NULL,'2017-01-08 08:16:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>3 seater Leather sofa enhance beauty of your party<br></p>','Leather Sofa',NULL,800.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,713,NULL),(748,NULL,'2017-01-08 08:17:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chair Cushion',NULL,20.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,714,NULL),(749,NULL,'2017-01-08 08:20:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Colours of chair cover are available.<br></p>','Chair Cushion with Cover',NULL,30.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,715,NULL),(750,NULL,'2017-01-08 08:22:06',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Colours in chair cover &amp; ribbon both are available.</p>','Chair Cushion with Cover & Ribbon',NULL,40.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,716,NULL),(751,NULL,'2017-01-08 08:24:03',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Ceiling Size 15*15</p>','Ceiling Printed Pandal',NULL,450.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,717,NULL),(752,NULL,'2017-01-08 08:26:47',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Ceiling Size 15*15</p>','Ceiling White Pandal',NULL,550.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,718,NULL),(753,NULL,'2017-01-08 08:28:38',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Price unit is per sq.ft.</p><p>Bengali Fabric Work Available in various colours<br></p>','Ceiling White with Bengali Fabric work',NULL,4.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,719,NULL),(754,NULL,'2017-01-08 08:32:56',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Price unit is per sq.ft.</p><p>Various colours are available<br></p>','Truss Pandal Semi Open',NULL,20.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,720,NULL),(755,NULL,'2017-01-08 08:34:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Carpet size is 5\'*50\'=250 sq.ft. approx.@ 2/- Rs. per sq.ft.</p>','Carpet Green',NULL,500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,721,NULL),(756,NULL,'2017-01-08 08:36:16',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Selfie Corner-Combo-2',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,722,NULL),(794,NULL,'2017-01-08 08:53:29',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>1 FRONT TRUSS, 4 SHARPEE, 15 LED PAR, 6 PAR REGULAR</p><p>1 SMOKE, 1 LASER, DMX CONTROLLER</p>','Front Truss Light-Combo-1',NULL,25000.00000,20000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,760,NULL),(795,NULL,'2017-01-08 08:56:17',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>1 FRONT TRUSS, 8 SHARPEE, 25 LED PAR, 10 PAR REGULAR</p><p>1 SMOKE, 1 LASER, DMX CONTROLLER<br></p>','Front Truss Light-Combo-2',NULL,30000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,761,NULL),(796,NULL,'2017-01-08 08:58:01',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>1 BOX TRUSS, 12 SHARPEE, 30 LED PAR, 12 PAR REGULAR,</p><p>2 SMOKE, 1 FOLLOW LIGHT, 1 LASER, DMX CONTROLLER, POWER PACK<br></p>','Box Truss Light-Combo-1',NULL,50000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,762,NULL),(797,NULL,'2017-01-08 08:59:22',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>1 BOX TRUSS, 16 SHARPEE, 40 LED PAR, 16 PAR REGULAR,</p><p>2 SMOKE, 1 FOLLOW LIGHT, 1 LASER, 4 BENDERS, DMX CONTROLLER</p><p>POWER PACK<br></p>','Box Truss Light-Combo-2',NULL,60000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,763,NULL),(798,NULL,'2017-01-08 09:01:17',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>2 TOP, 2 BASS, 1 MIC, 1 LASER, LAPTOP</p><p>MIXER, 4 LED PAR<br></p>','DJ 5000 watt',NULL,6000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,764,NULL),(799,NULL,'2017-01-08 09:03:14',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>4 TOP, 4 BASS ( 2 DUAL CABINET )</p><p>2 MIC, 1 LASER, LAPTOP, MIXER, 8 LED PAR<br></p>','DJ 12000 watt',NULL,10000.00000,9000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,765,NULL),(800,NULL,'2017-01-08 09:04:32',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>6 TOP, 8 BASS ( 4 DUAL CABINET )</p><p>2 MIC, 1 LASER, LAPTOP, MIXER</p><p>8 LED PAR, 2 MONITOR<br></p>','DJ 20000 watt',NULL,15000.00000,12000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,766,NULL),(801,NULL,'2017-01-08 09:07:05',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Generator 62kva',NULL,3500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,767,NULL),(802,NULL,'2017-01-08 09:08:36',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Generator 125 kva',NULL,4500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,768,NULL),(803,NULL,'2017-01-08 09:10:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Metal Light',NULL,150.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,769,NULL),(804,NULL,'2017-01-08 09:12:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Par Light Regular',NULL,200.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,770,NULL),(805,NULL,'2017-01-08 09:13:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Park Light LED',NULL,250.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,771,NULL),(806,NULL,'2017-01-08 09:15:35',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Halogen 500 watt',NULL,50.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,772,NULL),(807,NULL,'2017-01-08 09:16:59',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Halogen 1000 watt',NULL,100.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,773,NULL),(808,NULL,'2017-01-08 09:23:25',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>30 Metal Light white, 8 Halogen ( emergency )</p><p>8 Halogen ( Kitchen ), 16 Halogen ( parking )<br></p><p><br></p>','10000 sq.ft. Area Light',NULL,7500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,774,NULL),(809,NULL,'2017-01-08 09:26:22',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>45 Metal Light white, 8 Halogen ( emergency ),</p><p>12 Halogen ( kitchen ), 20 Halogen ( parking )<br></p>','15000 sq.ft. Area Light',NULL,11000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,775,NULL),(810,NULL,'2017-01-08 09:27:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'65Metal Light white, 12 Halogen ( emergency ),<p>12 Halogen ( kitchen ), 24 Halogen ( parking )<br></p>','20000 sq.ft. Area Light',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,776,NULL),(811,NULL,'2017-01-08 09:30:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Doli-1',NULL,4000.00000,2800.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,777,NULL),(812,NULL,'2017-01-08 09:32:18',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Paalki',NULL,4500.00000,4000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,778,NULL),(813,NULL,'2017-01-08 09:33:40',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>10 Persons with 2 Bighul, 1 Chattar, 1Chawar, 2 Shahi Paan, 4 Mashal.</p><p>In proper rajwadi dress.<br></p>','Lawazma',NULL,12000.00000,9000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,779,NULL),(814,NULL,'2017-01-08 09:35:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Short Ghodi only for kids</p>','Ghodi For Kids',NULL,3500.00000,3000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,780,NULL),(815,NULL,'2017-01-08 09:36:25',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'White Noori Ghodi <p>for Groom</p>','White Noori Ghodi (Groom)',NULL,5000.00000,4000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,781,NULL),(816,NULL,'2017-01-08 09:37:44',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'White Noori Ghodi with Chatarand <p>a attender</p>','White Noori Ghodi with Chatar',NULL,6000.00000,5100.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,782,NULL),(817,NULL,'2017-01-08 09:40:13',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Desi Gulab</p>','Varmala Gulab',NULL,2500.00000,1500.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,783,NULL),(818,NULL,'2017-01-08 09:41:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Desi Gulab with White Lily / RajniGandha</p>','Varmala-Fragnence',NULL,3500.00000,2500.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,784,NULL),(819,NULL,'2017-01-08 09:45:07',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Flower petals, Bombay Style<br></p>','Varmala Imported',NULL,4500.00000,3500.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,785,NULL),(820,NULL,'2017-01-08 09:46:55',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-1',NULL,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,786,NULL),(844,NULL,'2017-01-08 12:41:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-2',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,810,NULL),(845,NULL,'2017-01-08 12:41:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-4',NULL,15000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,811,NULL),(846,NULL,'2017-01-08 12:43:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Female Anchor-3',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,812,NULL),(847,NULL,'2017-01-08 12:46:20',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Number of 5 drivers with their tags for vehicle in proper dress up</p>','Valet Basic',NULL,4000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,813,NULL),(848,NULL,'2017-01-08 12:48:45',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Number of 10 drivers in proper dress up with tags for vehicle</p><p>They are sufficeint for 800-1200 members party<br></p>','Valet 1000',NULL,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,814,NULL),(849,NULL,'2017-01-08 12:50:35',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Number of 15 drivers in proper dress up with tags for vehicle</p><p>They are sufficeint for 1300-1700 members party<br></p>','Valet 1500',NULL,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,815,NULL),(850,NULL,'2017-01-08 12:53:23',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Price unit is per sq.ft.</p><p>Available in size 8\' *10\' =Rs.8000, 8\' *12\' =Rs.9600, 8\' *16\' =Rs.12800<br></p>','LED Screen Normal',NULL,100.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,816,NULL),(851,NULL,'2017-01-08 12:55:44',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Price unit is per sq.ft<p>Available in size 10\' *12\' =Rs.12000, 10\' *16\' =Rs.16000, 10\' *20\' =Rs.20000</p>','LED Screen Premium',NULL,100.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,817,NULL),(852,NULL,'2017-01-08 13:04:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Price unit is per sq.ft.<p>Led Screen slides from centre opening for Special entry of Bride &amp; Groom</p><p>Available in size 8\' *12\'=Rs.13000, 8\' *16\'=Rs.16000,</p><p>10\' *12\'=16000, 10\' * 16\'=Rs.20000<br></p>','LED Screen ( Bride & Groom ) Entry',NULL,100.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,818,NULL),(894,NULL,'2017-01-11 16:48:51',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Alaav with wood looks like camp firing</p>','Alaav',NULL,500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,860,NULL),(895,NULL,'2017-01-11 16:50:26',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Gas Heater with Gas cylinder</p>','Gas Heater',NULL,1500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,861,NULL),(896,NULL,'2017-01-11 16:53:43',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Selfie Corner-combo-1',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,862,NULL),(944,NULL,'2017-01-11 18:21:50',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Celebrity Leather sofa single seater</p>','Celebrity Sofa',NULL,1000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,910,NULL),(945,NULL,'2017-01-11 18:25:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Capacity of 6 members</p><p>Self Printed Nylon Top</p>','Round Table with Cover & Nylon Top',NULL,250.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,911,NULL),(946,NULL,'2017-01-11 18:26:48',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Price unit is per sq.ft.</p><p>Various colour options are available<br></p>','Checker Pandal',NULL,10.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,912,NULL),(947,NULL,'2017-01-11 18:28:06',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>price unit is per sq.ft.</p><p>Centre Height is minimum 14 ft.<br></p>','Truss Pandal Pack',NULL,25.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,913,NULL),(948,NULL,'2017-01-11 18:29:22',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Carpet size is 5\' * 50\'=250 sq.ft. approx. @ 2/- per sq.ft.</p>','Carpet Blue',NULL,500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,914,NULL),(949,NULL,'2017-01-11 18:31:09',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Carpet size is 5\' * 50\'=250 sq.ft. approx. @ 2.5/- per sq.ft.</p>','Carpet Red',NULL,600.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,915,NULL),(950,NULL,'2017-01-11 18:34:14',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>2 TOP, 1 MIXER, 1 MIC<br></p>','Dj 2000 watt',NULL,2500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,916,NULL),(951,NULL,'2017-01-11 18:36:18',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Dance Floor size 12 *12</p>','Dance Floor',NULL,2500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,917,NULL),(952,NULL,'2017-01-11 18:38:27',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>6 LINEARY, 8 BASS ( 4 DUAL CABINET )</p><p>2 MIC, 1 LASER, LAPTOP, MIXER, 2 MONITOR<br></p>','Lineary 22000 watt',NULL,18000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,918,NULL),(997,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,712),(998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,712),(999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,712),(1006,NULL,'2017-01-12 18:47:54',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Male Anchor',NULL,6000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,960,NULL),(1007,NULL,'2017-01-12 18:49:49',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Male Anchor cum Mimicry Artist',NULL,10000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,961,NULL),(1044,NULL,'2017-01-13 16:22:45',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-OP-1',NULL,6000.00000,5000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1010,NULL),(1045,NULL,'2017-01-13 16:27:10',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-OP-2',NULL,6000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1011,NULL),(1049,NULL,'2017-01-13 16:28:53',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Chawari-OP-3',NULL,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1012,NULL),(1094,NULL,'2017-01-15 10:25:41',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'Gas Heater',NULL,1500.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1060,NULL),(1144,NULL,'2017-01-26 12:08:53',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>8 LINEARY, 12 BASS ( 6 DUAL CABINET )</p><p>3 MIC, 1 LASER, LAPTOP, MIXER</p><p>4 MONITOR<br></p>','Lineary 30000 watt',NULL,25000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1110,NULL),(1145,NULL,'2017-01-26 12:10:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'12LINEARY,16 BASS ( 8 DUAL CABINET )<p>4 MIC, 1 LASER, LAPTOP, MIXER</p><p>4 MONITOR, 2 SIDE FILL</p><p><br></p>','Lineary 42000 watt',NULL,35000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1111,NULL),(1146,NULL,'2017-01-26 12:32:25',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>62 kva Silent Generator with Deisel for 6 hours</p>','Generator 62 kva with Deisel',NULL,9800.00000,7700.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1112,NULL),(1147,NULL,'2017-01-26 12:34:44',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'125kva silent generator with deisel for 6 hours','Generator 125 kva with Deisel',NULL,14800.00000,12900.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1113,NULL),(1148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>8*10 = 80 sq ft</p>',NULL,0,8000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,816),(1149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>8*12 = 960 sq ft</p>',NULL,0,9600.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,816),(1150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>8*16 = 128 sq ft</p>',NULL,0,12800.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,816),(1157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,12000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,817),(1158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,16000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,817),(1159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,20000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,817),(1160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,13000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,818),(1161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,16000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,818),(1162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,16000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,818),(1163,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,20000.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,818),(1194,NULL,'2017-02-08 06:10:46',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>12 Persons in proper dress with band-vehicle.</p><p>Only for 2 hours<br></p>','Band Basic',NULL,12000.00000,11000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1160,NULL),(1195,NULL,'2017-02-08 06:16:21',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>16 person in proper dress with band-vehicle.</p><p>Only for 2 hours.<br></p>','Band Gold',NULL,15000.00000,14000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1161,NULL),(1196,NULL,'2017-02-08 06:18:26',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>20 Persons in proper dress with band-vehicle.</p><p>Only for 2 hours..<br></p>','Band Platinum',NULL,20000.00000,18000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1162,NULL),(1197,NULL,'2017-02-08 06:18:26',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>20 Persons</p>','Band Platinum',NULL,20000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1163,NULL),(1198,NULL,'2017-02-08 06:18:26',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>20 Persons</p>','Band Platinum',NULL,20000.00000,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1164,NULL),(1199,NULL,'2017-02-08 06:22:21',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>10 Persons along with lights and generator.</p>','Gasbatti Basic',NULL,7500.00000,7000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1165,NULL),(1200,NULL,'2017-02-08 06:26:09',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>14 Persons along with lights and generator.</p>','Gasbatti Gold',NULL,11000.00000,10000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1166,NULL),(1201,NULL,'2017-02-08 06:26:55',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>18 Persons along with lights and generator.</p>','Gasbatti Platinum',NULL,14000.00000,13000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1167,NULL),(1244,NULL,'2017-02-25 20:08:00',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>White Luxury AC Baggi. Enhance glamour of Bride &amp; Groom</p>','Baggi AC',NULL,13000.00000,11000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1210,NULL),(1245,NULL,'2017-02-25 20:12:12',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'ReddishRoyal Baggi. Gives feel of Royal wedding of Bride &amp; Groom','Baggi Raja-Rani',NULL,15000.00000,13000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1211,NULL),(1246,NULL,'2017-02-25 20:14:25',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Compact Victoria Baggi gives Vintage look for Bride &amp; Groom.<br></p>','Baggi Victoria',NULL,10000.00000,8000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1212,NULL),(1247,NULL,'2017-02-25 20:16:57',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Sajan Goth<p> for lunch/dinner to treat special guests.</p><p>Seating of 100 members on platform with Chowki concept.<br></p>','Sajan Goth',NULL,25000.00000,20000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1213,NULL),(1248,NULL,'2017-02-25 20:40:24',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'<p>Fibre body Cooler</p>','Cooler',NULL,500.00000,400.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1214,NULL),(1249,NULL,'2017-02-25 20:41:14',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Mist Fanspray<p> of chilled water</p><p><br></p>','Mist Fan',NULL,1000.00000,800.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1215,NULL),(1294,NULL,'2017-03-18 09:01:28',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Selfie Jhula','Selfie Jhula',NULL,10000.00000,8000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1260,NULL),(1295,NULL,'2017-03-18 09:12:30',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Moving Ring Entry','Moving Ring',NULL,10000.00000,8000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1261,NULL);
/*!40000 ALTER TABLE `BLC_SKU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_ATTRIBUTE`
--

DROP TABLE IF EXISTS `BLC_SKU_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_ATTRIBUTE` (
  `SKU_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_ATTR_ID`),
  KEY `SKUATTR_NAME_INDEX` (`NAME`),
  KEY `SKUATTR_SKU_INDEX` (`SKU_ID`),
  KEY `FK6C6A5934B78C9977` (`SKU_ID`),
  CONSTRAINT `FK6C6A5934B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_ATTRIBUTE`
--

LOCK TABLES `BLC_SKU_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `BLC_SKU_ATTRIBUTE` VALUES (1,'heatRange',NULL,'4',1),(2,'heatRange',NULL,'1',2),(3,'heatRange',NULL,'2',3),(4,'heatRange',NULL,'2',4),(5,'heatRange',NULL,'4',5),(6,'heatRange',NULL,'4',6),(7,'heatRange',NULL,'3',7),(8,'heatRange',NULL,'4',8),(9,'heatRange',NULL,'5',9),(10,'heatRange',NULL,'5',10),(11,'heatRange',NULL,'2',11),(12,'heatRange',NULL,'1',12),(13,'heatRange',NULL,'2',13),(14,'heatRange',NULL,'2',14),(15,'heatRange',NULL,'1',15),(16,'heatRange',NULL,'3',16),(17,'heatRange',NULL,'5',17),(18,'heatRange',NULL,'3',18),(19,'heatRange',NULL,'1',19);
/*!40000 ALTER TABLE `BLC_SKU_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_AVAILABILITY`
--

DROP TABLE IF EXISTS `BLC_SKU_AVAILABILITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_AVAILABILITY` (
  `SKU_AVAILABILITY_ID` bigint(20) NOT NULL,
  `AVAILABILITY_DATE` datetime DEFAULT NULL,
  `AVAILABILITY_STATUS` varchar(255) DEFAULT NULL,
  `LOCATION_ID` bigint(20) DEFAULT NULL,
  `QTY_ON_HAND` int(11) DEFAULT NULL,
  `RESERVE_QTY` int(11) DEFAULT NULL,
  `SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SKU_AVAILABILITY_ID`),
  KEY `SKUAVAIL_STATUS_INDEX` (`AVAILABILITY_STATUS`),
  KEY `SKUAVAIL_LOCATION_INDEX` (`LOCATION_ID`),
  KEY `SKUAVAIL_SKU_INDEX` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_AVAILABILITY`
--

LOCK TABLES `BLC_SKU_AVAILABILITY` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_AVAILABILITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SKU_AVAILABILITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_BUNDLE_ITEM`
--

DROP TABLE IF EXISTS `BLC_SKU_BUNDLE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_BUNDLE_ITEM` (
  `SKU_BUNDLE_ITEM_ID` bigint(20) NOT NULL,
  `ITEM_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `PRODUCT_BUNDLE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_BUNDLE_ITEM_ID`),
  KEY `FKD55968CCF29B96` (`PRODUCT_BUNDLE_ID`),
  KEY `FKD55968B78C9977` (`SKU_ID`),
  CONSTRAINT `FKD55968B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`),
  CONSTRAINT `FKD55968CCF29B96` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `BLC_PRODUCT_BUNDLE` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_BUNDLE_ITEM`
--

LOCK TABLES `BLC_SKU_BUNDLE_ITEM` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_BUNDLE_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SKU_BUNDLE_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_FEE`
--

DROP TABLE IF EXISTS `BLC_SKU_FEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_FEE` (
  `SKU_FEE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXPRESSION` longtext,
  `FEE_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TAXABLE` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SKU_FEE_ID`),
  KEY `FKEEB7181E3E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FKEEB7181E3E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_FEE`
--

LOCK TABLES `BLC_SKU_FEE` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_FEE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SKU_FEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_FEE_XREF`
--

DROP TABLE IF EXISTS `BLC_SKU_FEE_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_FEE_XREF` (
  `SKU_FEE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  KEY `FKD88D409CB78C9977` (`SKU_ID`),
  KEY `FKD88D409CCF4C9A82` (`SKU_FEE_ID`),
  CONSTRAINT `FKD88D409CB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`),
  CONSTRAINT `FKD88D409CCF4C9A82` FOREIGN KEY (`SKU_FEE_ID`) REFERENCES `BLC_SKU_FEE` (`SKU_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_FEE_XREF`
--

LOCK TABLES `BLC_SKU_FEE_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_FEE_XREF` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SKU_FEE_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_FULFILLMENT_EXCLUDED`
--

DROP TABLE IF EXISTS `BLC_SKU_FULFILLMENT_EXCLUDED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_FULFILLMENT_EXCLUDED` (
  `SKU_ID` bigint(20) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  KEY `FK84162D7381F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FK84162D73B78C9977` (`SKU_ID`),
  CONSTRAINT `FK84162D7381F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK84162D73B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_FULFILLMENT_EXCLUDED`
--

LOCK TABLES `BLC_SKU_FULFILLMENT_EXCLUDED` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_FULFILLMENT_EXCLUDED` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SKU_FULFILLMENT_EXCLUDED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_FULFILLMENT_FLAT_RATES`
--

DROP TABLE IF EXISTS `BLC_SKU_FULFILLMENT_FLAT_RATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_FULFILLMENT_FLAT_RATES` (
  `SKU_ID` bigint(20) NOT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_ID`,`FULFILLMENT_OPTION_ID`),
  KEY `FKC1988C9681F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKC1988C96B78C9977` (`SKU_ID`),
  CONSTRAINT `FKC1988C9681F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `BLC_FULFILLMENT_OPTION` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKC1988C96B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_FULFILLMENT_FLAT_RATES`
--

LOCK TABLES `BLC_SKU_FULFILLMENT_FLAT_RATES` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_FULFILLMENT_FLAT_RATES` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SKU_FULFILLMENT_FLAT_RATES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_MEDIA_MAP`
--

DROP TABLE IF EXISTS `BLC_SKU_MEDIA_MAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_MEDIA_MAP` (
  `SKU_MEDIA_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  `BLC_SKU_SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_MEDIA_ID`),
  KEY `FKEB4AECF96E4720E0` (`MEDIA_ID`),
  KEY `FKEB4AECF9D93D857F` (`BLC_SKU_SKU_ID`),
  CONSTRAINT `FKEB4AECF96E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `BLC_MEDIA` (`MEDIA_ID`),
  CONSTRAINT `FKEB4AECF9D93D857F` FOREIGN KEY (`BLC_SKU_SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_MEDIA_MAP`
--

LOCK TABLES `BLC_SKU_MEDIA_MAP` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_MEDIA_MAP` DISABLE KEYS */;
INSERT INTO `BLC_SKU_MEDIA_MAP` VALUES (-100,'primary',101,1),(-99,'primary',201,2),(-98,'primary',301,3),(-97,'primary',401,4),(-96,'primary',501,5),(-95,'primary',601,6),(-94,'primary',701,7),(-93,'primary',801,8),(-92,'primary',901,9),(-91,'primary',1001,10),(-90,'primary',1101,11),(-89,'primary',1201,12),(-88,'primary',1301,13),(-87,'primary',1401,14),(-86,'primary',1501,15),(-85,'primary',1601,16),(-84,'primary',1701,17),(-83,'primary',1801,18),(-82,'primary',1901,19),(-81,'alt1',102,1),(-80,'alt1',202,2),(-79,'alt1',302,3),(-78,'alt1',402,4),(-77,'alt1',502,5),(-76,'alt1',602,6),(-75,'alt1',702,7),(-74,'alt1',802,8),(-73,'alt1',902,9),(-72,'alt1',1002,10),(-71,'alt1',1102,11),(-70,'alt1',1202,12),(-69,'alt1',1302,13),(-68,'alt1',1402,14),(-67,'alt1',1502,15),(-66,'alt1',1602,16),(-65,'alt1',1702,17),(-64,'alt1',1802,18),(-63,'alt1',1902,19),(-62,'alt2',203,2),(-61,'alt3',204,2),(-60,'alt4',205,2),(-59,'alt5',206,2),(-58,'primary',10001,100),(-57,'primary',20002,200),(-56,'primary',30003,300),(-55,'primary',40002,400),(-54,'primary',50003,500),(-53,'primary',60001,600),(-52,'alt1',10002,100),(-51,'alt1',20001,200),(-50,'alt1',30001,300),(-49,'alt1',40001,400),(-48,'alt1',50001,500),(-47,'alt1',60002,600),(-46,'alt2',10003,100),(-45,'alt2',20003,200),(-44,'alt2',30002,300),(-43,'alt2',40003,400),(-42,'alt2',50002,500),(-41,'alt2',60003,600),(3,'primary',60015,646),(51,'primary',60063,694),(52,'primary',60064,695),(101,'primary',60113,744),(151,'primary',60163,745),(152,'primary',60164,748),(201,'primary',60213,749),(202,'primary',60214,750),(203,'primary',60215,751),(204,'primary',60216,752),(205,'primary',60217,753),(206,'primary',60218,754),(207,'primary',60219,755),(208,'primary',60220,756),(209,'primary',60221,794),(210,'primary',60222,795),(211,'primary',60223,796),(212,'primary',60224,797),(213,'primary',60225,798),(214,'primary',60226,799),(215,'primary',60227,800),(216,'primary',60228,801),(217,'primary',60229,802),(218,'primary',60230,803),(219,'primary',60231,804),(220,'primary',60232,805),(221,'primary',60233,806),(222,'primary',60234,894),(223,'primary',60235,949),(224,'primary',60236,950),(225,'primary',60237,951),(251,'primary',60263,1044),(252,'primary',60264,1045),(256,'primary',60268,1049),(301,'primary',60313,945),(302,'primary',60314,746),(303,'primary',60315,747),(304,'primary',60316,944),(305,'primary',60317,946),(306,'primary',60318,947),(307,'primary',60319,948),(308,'primary',60320,807),(309,'primary',60321,814),(310,'primary',60322,815),(311,'primary',60323,816),(312,'primary',60324,850),(313,'primary',60325,851),(314,'primary',60326,852),(315,'primary',60327,895),(316,'primary',60328,1094),(351,'primary',60363,844),(352,'primary',60364,820),(353,'primary',60365,846),(354,'primary',60366,845),(355,'primary',60367,1006),(356,'primary',60368,1007),(357,'primary',60369,847),(358,'primary',60370,848),(359,'primary',60371,849),(360,'primary',60372,952),(361,'primary',60373,1144),(362,'primary',60374,1145),(363,'primary',60375,1146),(364,'primary',60376,1147),(365,'primary',60377,808),(366,'primary',60378,809),(367,'primary',60379,810),(401,'primary',60413,817),(402,'primary',60414,818),(403,'primary',60415,819),(404,'primary',60416,896),(405,'primary',60417,811),(406,'primary',60418,812),(407,'primary',60419,813),(408,'primary',60420,1194),(409,'primary',60421,1195),(410,'primary',60422,1196),(411,'primary',60423,1197),(412,'primary',60424,1198),(413,'primary',60425,1199),(414,'primary',60426,1200),(415,'primary',60427,1201),(451,'primary',60463,1248),(452,'primary',60464,1249),(453,'primary',60465,1247),(454,'primary',60466,1294),(455,'primary',60467,1295);
/*!40000 ALTER TABLE `BLC_SKU_MEDIA_MAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SKU_OPTION_VALUE_XREF`
--

DROP TABLE IF EXISTS `BLC_SKU_OPTION_VALUE_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SKU_OPTION_VALUE_XREF` (
  `SKU_OPTION_VALUE_XREF_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_OPTION_VALUE_XREF_ID`),
  KEY `FK7B61DC0BB0C16A73` (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK7B61DC0BB78C9977` (`SKU_ID`),
  CONSTRAINT `FK7B61DC0BB0C16A73` FOREIGN KEY (`PRODUCT_OPTION_VALUE_ID`) REFERENCES `BLC_PRODUCT_OPTION_VALUE` (`PRODUCT_OPTION_VALUE_ID`),
  CONSTRAINT `FK7B61DC0BB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `BLC_SKU` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SKU_OPTION_VALUE_XREF`
--

LOCK TABLES `BLC_SKU_OPTION_VALUE_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_SKU_OPTION_VALUE_XREF` DISABLE KEYS */;
INSERT INTO `BLC_SKU_OPTION_VALUE_XREF` VALUES (121,1,611),(122,11,611),(123,1,612),(124,12,612),(125,1,613),(126,13,613),(127,1,614),(128,14,614),(129,2,621),(130,11,621),(131,2,622),(132,12,622),(133,2,623),(134,13,623),(135,2,624),(136,14,624),(137,3,631),(138,11,631),(139,3,632),(140,12,632),(141,3,633),(142,13,633),(143,3,634),(144,14,634),(154,24,647),(155,25,648),(156,26,649),(208,1,997),(209,2,998),(210,3,999),(254,124,1148),(255,125,1149),(256,126,1150),(257,124,1148),(258,125,1149),(259,126,1150),(269,130,1157),(270,131,1158),(271,132,1159),(272,130,1157),(273,131,1158),(274,132,1159),(275,133,1160),(276,134,1161),(277,135,1162),(278,136,1163),(279,133,1160),(280,134,1161),(281,135,1162),(282,136,1163),(283,135,1162);
/*!40000 ALTER TABLE `BLC_SKU_OPTION_VALUE_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_STATE`
--

DROP TABLE IF EXISTS `BLC_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_STATE` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `STATE_NAME_INDEX` (`NAME`),
  KEY `FK8F94A1EBA46E16CF` (`COUNTRY`),
  CONSTRAINT `FK8F94A1EBA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `BLC_COUNTRY` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_STATE`
--

LOCK TABLES `BLC_STATE` WRITE;
/*!40000 ALTER TABLE `BLC_STATE` DISABLE KEYS */;
INSERT INTO `BLC_STATE` VALUES ('AA','ARMED FORCES AMERICA','US'),('AB','ALBERTA','CA'),('AE','ARMED FORCES','US'),('AK','ALASKA','US'),('AL','ALABAMA','US'),('AP','ARMED FORCES PACIFIC','US'),('AR','ARKANSAS','US'),('AS','AMERICAN SAMOA','US'),('AZ','ARIZONA','US'),('BC','BRITISH COLUMBIA','CA'),('CA','CALIFORNIA','US'),('CO','COLORADO','US'),('CT','CONNECTICUT','US'),('DC','DISTRICT OF COLUMBIA','US'),('DE','DELAWARE','US'),('FL','FLORIDA','US'),('FM','FEDERATED STATES OF MICRONESIA','US'),('GA','GEORGIA','US'),('GU','GUAM','US'),('HI','HAWAII','US'),('IA','IOWA','US'),('ID','IDAHO','US'),('IL','ILLINOIS','US'),('IN','INDIANA','US'),('KS','KANSAS','US'),('KY','KENTUCKY','US'),('LA','LOUISIANA','US'),('MA','MASSACHUSETTS','US'),('MB','MANITOBA','CA'),('MD','MARYLAND','US'),('ME','MAINE','US'),('MH','MARSHALL ISLANDS','US'),('MI','MICHIGAN','US'),('MN','MINNESOTA','US'),('MO','MISSOURI','US'),('MP','NORTHERN MARIANA ISLANDS','US'),('MS','MISSISSIPPI','US'),('MT','MONTANA','US'),('NB','NEW BRUNSWICK','CA'),('NC','NORTH CAROLINA','US'),('ND','NORTH DAKOTA','US'),('NE','NEBRASKA','US'),('NH','NEW HAMPSHIRE','US'),('NJ','NEW JERSEY','US'),('NL','NEWFOUNDLAND','CA'),('NM','NEW MEXICO','US'),('NS','NOVA SCOTIA','CA'),('NT','NORTHWEST TERRITORIES','CA'),('NU','NUNAVUT','CA'),('NV','NEVADA','US'),('NY','NEW YORK','US'),('OH','OHIO','US'),('OK','OKLAHOMA','US'),('ON','ONTARIO','CA'),('OR','OREGON','US'),('PA','PENNSYLVANIA','US'),('PE','PRINCE EDWARD ISLAND','CA'),('PR','PUERTO RICO','US'),('PW','PALAU','US'),('QC','QUEBEC','CA'),('RI','RHODE ISLAND','US'),('SC','SOUTH CAROLINA','US'),('SD','SOUTH DAKOTA','US'),('SK','SASKATCHEWAN','CA'),('TN','TENNESSEE','US'),('TX','TEXAS','US'),('UT','UTAH','US'),('VA','VIRGINIA','US'),('VI','VIRGIN ISLANDS','US'),('VT','VERMONT','US'),('WA','WASHINGTON','US'),('WI','WISCONSIN','US'),('WV','WEST VIRGINIA','US'),('WY','WYOMING','US'),('YT','YUKON','CA');
/*!40000 ALTER TABLE `BLC_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_STATIC_ASSET`
--

DROP TABLE IF EXISTS `BLC_STATIC_ASSET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_STATIC_ASSET` (
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `FILE_EXTENSION` varchar(255) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `FULL_URL` varchar(255) NOT NULL,
  `MIME_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STORAGE_TYPE` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `ASST_FULL_URL_INDX` (`FULL_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_STATIC_ASSET`
--

LOCK TABLES `BLC_STATIC_ASSET` WRITE;
/*!40000 ALTER TABLE `BLC_STATIC_ASSET` DISABLE KEYS */;
INSERT INTO `BLC_STATIC_ASSET` VALUES (60101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari OPEN 9.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari P5..jpg','image/jpg','Decor','FILESYSTEM',NULL),(60103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DANCE FLOOR FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 1 FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 2 FINAL copy.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 4 FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/DJ 6 FINAL copy.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/FRONT TRUSS FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GAS HEATER FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GENERATOR FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GHODI WITH CHATAR FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GREEN CARP.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/GREEN CARPET FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/halogen.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Pandal Hut 2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/king size sofa.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/leather sofa-1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/leather sofa-2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/led par tower.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/led par.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/metal.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/NORMAL GHODI FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal bengali.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal hut.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal printed.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/pandal white.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/par.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/RED CARPET.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table black.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table golden.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table white.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table with nylon top.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60134,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/round table-cover-top.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/screen 1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/screen 2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60137,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/sliding screen.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/sofa with cover.JPG','image/jpg','Decor','FILESYSTEM',NULL),(60139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/WHITE GHODI FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Pandal Hut 1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/ALAAV FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/BLACK  BACKGROUND.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/BLUE CARPET FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/BOX TRUSS FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/CHAIR WITH COVER FINAL.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/CHAIR WITH COVER N RIBBON.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chair.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/chawari OPEN 6.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Lineary-1.JPG','image/jpg','Decor','FILESYSTEM',NULL),(60150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/male_anchor.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60151,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/valet_5.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60152,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/CHAWARI-PK-1.JPG','image/jpg','Decor','FILESYSTEM',NULL),(60153,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/CHAWARI-PK-2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60154,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/female_anchor.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/generator_deisel.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/ground_light-1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/band1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/band2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/band3.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Doli.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/gasbatti.jpeg','image/jpg','Decor','FILESYSTEM',NULL),(60162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/lawazma.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60163,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/paalki.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/selfie2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60165,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/varmala.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Box truss-combo-2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Cooler.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60168,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/front truss-combo-2.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Mist Fan.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Moving Jhula Entry-1.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60171,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Moving Ring Entry.jpg','image/jpg','Decor','FILESYSTEM',NULL),(60172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Sajan Goth.JPG','image/jpg','Decor','FILESYSTEM',NULL),(60173,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/party/Selfie Jhula-1.jpg','image/jpg','Decor','FILESYSTEM',NULL);
/*!40000 ALTER TABLE `BLC_STATIC_ASSET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_STATIC_ASSET_DESC`
--

DROP TABLE IF EXISTS `BLC_STATIC_ASSET_DESC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_STATIC_ASSET_DESC` (
  `STATIC_ASSET_DESC_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_STATIC_ASSET_DESC`
--

LOCK TABLES `BLC_STATIC_ASSET_DESC` WRITE;
/*!40000 ALTER TABLE `BLC_STATIC_ASSET_DESC` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_STATIC_ASSET_DESC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_STATIC_ASSET_STRG`
--

DROP TABLE IF EXISTS `BLC_STATIC_ASSET_STRG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_STATIC_ASSET_STRG` (
  `STATIC_ASSET_STRG_ID` bigint(20) NOT NULL,
  `FILE_DATA` longblob,
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_STRG_ID`),
  KEY `STATIC_ASSET_ID_INDEX` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_STATIC_ASSET_STRG`
--

LOCK TABLES `BLC_STATIC_ASSET_STRG` WRITE;
/*!40000 ALTER TABLE `BLC_STATIC_ASSET_STRG` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_STATIC_ASSET_STRG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_STORE`
--

DROP TABLE IF EXISTS `BLC_STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_STORE` (
  `STORE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `STORE_NAME` varchar(255) NOT NULL,
  `OPEN` tinyint(1) DEFAULT NULL,
  `STORE_HOURS` varchar(255) DEFAULT NULL,
  `STORE_NUMBER` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `FK8F94D63BC13085DD` (`ADDRESS_ID`),
  CONSTRAINT `FK8F94D63BC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_STORE`
--

LOCK TABLES `BLC_STORE` WRITE;
/*!40000 ALTER TABLE `BLC_STORE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_STORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_SYSTEM_PROPERTY`
--

DROP TABLE IF EXISTS `BLC_SYSTEM_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_SYSTEM_PROPERTY` (
  `BLC_SYSTEM_PROPERTY_ID` bigint(20) NOT NULL,
  `FRIENDLY_GROUP` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `FRIENDLY_TAB` varchar(255) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_TYPE` varchar(255) DEFAULT NULL,
  `PROPERTY_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BLC_SYSTEM_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_SYSTEM_PROPERTY`
--

LOCK TABLES `BLC_SYSTEM_PROPERTY` WRITE;
/*!40000 ALTER TABLE `BLC_SYSTEM_PROPERTY` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_SYSTEM_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_TAR_CRIT_OFFER_XREF`
--

DROP TABLE IF EXISTS `BLC_TAR_CRIT_OFFER_XREF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_TAR_CRIT_OFFER_XREF` (
  `OFFER_TAR_CRIT_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_TAR_CRIT_ID`),
  KEY `FK125F5803D5F3FAF4` (`OFFER_ID`),
  KEY `FK125F58033615A91A` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK125F58033615A91A` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `BLC_OFFER_ITEM_CRITERIA` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK125F5803D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `BLC_OFFER` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_TAR_CRIT_OFFER_XREF`
--

LOCK TABLES `BLC_TAR_CRIT_OFFER_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_TAR_CRIT_OFFER_XREF` DISABLE KEYS */;
INSERT INTO `BLC_TAR_CRIT_OFFER_XREF` VALUES (-100,1,1);
/*!40000 ALTER TABLE `BLC_TAR_CRIT_OFFER_XREF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_TAX_DETAIL`
--

DROP TABLE IF EXISTS `BLC_TAX_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_TAX_DETAIL` (
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `TAX_COUNTRY` varchar(255) DEFAULT NULL,
  `JURISDICTION_NAME` varchar(255) DEFAULT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `TAX_REGION` varchar(255) DEFAULT NULL,
  `TAX_NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TAX_DETAIL_ID`),
  KEY `FKEABE4A4B3E2FC4F9` (`CURRENCY_CODE`),
  KEY `FKEABE4A4BC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FKEABE4A4B3E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`),
  CONSTRAINT `FKEABE4A4BC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `BLC_MODULE_CONFIGURATION` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_TAX_DETAIL`
--

LOCK TABLES `BLC_TAX_DETAIL` WRITE;
/*!40000 ALTER TABLE `BLC_TAX_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_TAX_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_TRANSLATION`
--

DROP TABLE IF EXISTS `BLC_TRANSLATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_TRANSLATION` (
  `TRANSLATION_ID` bigint(20) NOT NULL,
  `ENTITY_ID` varchar(255) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  `TRANSLATED_VALUE` longtext,
  PRIMARY KEY (`TRANSLATION_ID`),
  KEY `TRANSLATION_INDEX` (`ENTITY_TYPE`,`ENTITY_ID`,`FIELD_NAME`,`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_TRANSLATION`
--

LOCK TABLES `BLC_TRANSLATION` WRITE;
/*!40000 ALTER TABLE `BLC_TRANSLATION` DISABLE KEYS */;
INSERT INTO `BLC_TRANSLATION` VALUES (-1003,'3','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2>'),(-1002,'2','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2><h4 style=\"text-align:center;\">Haga <a href=\"http://www.broadleafcommerce.com/features/content\">click aqu&iacute;</a> para mas informaci&oacute;n.</h4>'),(-1001,'1','Page','pageTemplate|body','es','prueba de contenido'),(-1000,'1','Page','pageTemplate|title','es','Espa&ntilde;ol G&eacute;nerico'),(-398,'6','MenuItem','label','fr','FAQ'),(-397,'5','MenuItem','label','fr','Nouveau Hot Sauce?'),(-396,'3','FulfillmentOption','longDescription','fr','1 - 2 Journ&eacute;es'),(-395,'3','FulfillmentOption','name','fr','Express'),(-394,'2','FulfillmentOption','longDescription','fr','3 - 5 Journ&eacute;es'),(-393,'2','FulfillmentOption','name','fr','Priorit&eacute;'),(-392,'1','FulfillmentOption','longDescription','fr','5 - 7 Journ&eacute;es'),(-391,'1','FulfillmentOption','name','fr','Norme'),(-382,'3','SearchFacet','label','fr','Prix'),(-381,'2','SearchFacet','label','fr','Degr&eacute; de chaleur'),(-380,'1','SearchFacet','label','fr','Fabricant'),(-300,'600','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-299,'600','Sku','name','fr','Mascot Clinique chaleur (Femmes)'),(-298,'500','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-297,'500','Sku','name','fr','Mascot Clinique chaleur (Hommes)'),(-296,'400','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les femmes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-295,'400','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Femmes)'),(-294,'300','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les hommes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-293,'300','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Hommes)'),(-292,'200','Sku','longDescription','fr','Collecte de femmes Habanero standards chemise &agrave; manches courtes shirt s&eacute;rigraphi&eacute; &agrave; 30 coton doux singles en coupe regular.'),(-291,'200','Sku','name','fr','Hawt comme une chemise Habanero (Femmes)'),(-290,'100','Sku','longDescription','fr','Collecte Hommes Habanero standards chemise &agrave; manches courtes t s&eacute;rigraphi&eacute;es en 30 coton doux singles en coupe regular.'),(-289,'100','Sku','name','fr','Hawt comme une chemise Habanero (Hommes)'),(-288,'19','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-287,'19','Sku','name','fr','Sauce chaudes Chipotle'),(-286,'18','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-285,'18','Sku','name','fr','Sauces chaudes Jalapeno'),(-284,'17','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-283,'17','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-282,'16','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-281,'16','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-280,'15','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-279,'15','Sku','name','fr','Sauce &agrave; l\'ail rÃ´ti chaud'),(-278,'14','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-277,'14','Sku','name','fr','Frais Poivre de Cayenne Hot Sauce'),(-276,'13','Sku','longDescription','fr','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Tout est plus grand au Texas, m&ecirc;me la brÃ»lure de Hot Sauce une Snortin Bull! douche sur le Texas Steak taille qu\'ils appellent le 96er Ole ou vos l&eacute;gumes Jane avion. Si vous &ecirc;tes un fan sur faire de la sauce barbecue &agrave; partir de z&eacute;ro comme je suis, vous pouvez utiliser la sauce Bull amygdales Snort Smokin \'Hot tant qu\'additif. Red hot habaneros et piments donner &agrave; cette tingler amygdales sa saveur c&eacute;l&egrave;bre et rouge de chaleur chaud. Bull Snort Smokin \'Hot amygdales Sauce\'ll avoir vos entrailles buckin Â»avec une goutte d\'eau.'),(-275,'13','Sku','name','fr','Bull Snort Smokin \'Hot Sauce Toncils'),(-274,'12','Sku','longDescription','fr','L\'une des sauces les plus insolites que nous vendons. L\'original &eacute;tait un vieux style sauce cajun et c\'est Ã§a le noircissement &agrave; jour de version. C\'est gentil, mais vous obtenez un grand succ&egrave;s de cannelle et de clou de girofle avec un coup de chaleur agr&eacute;able de Cayenne. Utilisez-le sur tous les aliments &agrave; donner cette ambiance cajun.'),(-273,'12','Sku','name','fr','Caf&eacute; Cajun Louisiane Douce Sauce Blackening'),(-272,'11','Sku','longDescription','fr','Been there, encord&eacute;s cela. Hotter than jument buckin \'en chaleur! Saupoudrez de plats de viande, de fruits de mer et l&eacute;gumes. Utilisation comme additif dans une sauce barbecue ou tout aliment qui a besoin d\'une saveur &eacute;pic&eacute;e. Commencez avec quelques gouttes et travailler jusqu\'&agrave; la saveur d&eacute;sir&eacute;e.'),(-271,'11','Sku','name','fr','Bull Snort Cowboy poivre de Cayenne Hot Sauce'),(-270,'10','Sku','longDescription','fr','Voici la prescription pour ceux qui aiment la chaleur intol&eacute;rable. Dr Chilemeister potion de malades et mal mortel doit &ecirc;tre utilis&eacute; avec prudence. La douleur peut devenir une d&eacute;pendance!'),(-269,'10','Sku','name','fr','Dr Chilemeister Sauce Hot Insane'),(-268,'9','Sku','longDescription','fr','Tout l\'enfer se d&eacute;chaÃ®ne, le feu et le soufre pleuvoir? se pr&eacute;parer &agrave; rencontrer votre machine?'),(-267,'9','Sku','name','fr','Armageddon Le Hot Sauce To End All'),(-266,'8','Sku','longDescription','fr','Vous misez vos bottes, cette sauce chaude valu son nom de gens qui appr&eacute;cient une sauce chaude exceptionnel. Ce que vous trouverez ici est une saveur piquante vraiment original, pas un piquant irr&eacute;sistible que l\'on retrouve dans les sauces au poivre Tabasco ordinaires - m&ecirc;me si le piment utilis&eacute; dans ce produit a &eacute;t&eacute; test&eacute; &agrave; 285.000 unit&eacute;s Scoville. Alors, en selle pour une balade inoubliable. Pour vous assurer que nous vous avons apport&eacute; la plus belle sauce au poivre de Habanero, nous sommes all&eacute;s aux contreforts des montagnes mayas au Belize, en Am&eacute;rique centrale. Ce produit est pr&eacute;par&eacute; enti&egrave;rement &agrave; la main en utilisant uniquement des l&eacute;gumes frais et de tous les ingr&eacute;dients naturels.'),(-265,'8','Sku','name','fr','Blazin \'Selle XXX Hot Habanero sauce au poivre'),(-264,'7','Sku','longDescription','fr','Fabriqu&eacute; avec Naga Bhut Jolokia, plus chaud poivre dans le monde.'),(-263,'7','Sku','name','fr','Green Ghost'),(-262,'6','Sku','longDescription','fr','Souvent confondu avec le Habanero, le Scotch Bonnet a une pointe profond&eacute;ment invers&eacute;e par rapport &agrave; l\'extr&eacute;mit&eacute; pointue de l\'Habanero. Allant dans de nombreuses couleurs allant du vert au jaune-orange, le Scotch Bonnet est un aliment de base dans les Antilles et sauces au poivre de style Barbade.'),(-261,'6','Sku','name','fr','Jour de la sauce Scotch Bonnet Hot Morte'),(-260,'5','Sku','longDescription','fr','Si vous voulez chaud, c\'est le piment de choisir. Originaire de la CaraÃ¯be, du Yucatan et du Nord CÃ´te de l\'Am&eacute;rique du Sud, le Habanero se pr&eacute;sente dans une vari&eacute;t&eacute; de couleurs allant du vert p&acirc;le au rouge vif. La chaleur gras Habanero, la saveur et l\'arÃ´me unique, en a fait le favori des amateurs de chili.'),(-259,'5','Sku','name','fr','Jour de la sauce Habanero Hot Morte'),(-258,'4','Sku','longDescription','fr','Lorsque tout le poivre est s&eacute;ch&eacute; et fum&eacute;, il est consid&eacute;r&eacute; comme un Chipotle. Normalement, avec un aspect froiss&eacute;, drak brun, le chipotle fum&eacute; offre une saveur douce qui est g&eacute;n&eacute;ralement utilis&eacute; pour ajouter un smokey, saveur rÃ´tie aux salsas, les ragoÃ»ts et marinades.'),(-257,'4','Sku','name','fr','Jour de la sauce chaude Morte Chipotle'),(-256,'3','Sku','longDescription','fr','Tangy, venu de Cayenne poivron flux avec l\'ail, l\'oignon p&acirc;te de tomate, et un soupÃ§on de sucre de canne pour en faire une sauce onctueuse avec une morsure. Magnifique sur les Å“ufs, la volaille, le porc ou le poisson, cette sauce marie pour faire des marinades et des soupes riches.'),(-255,'3','Sku','name','fr','Hot Sauce Hoppin'),(-254,'2','Sku','longDescription','fr','Le parfait topper pour le poulet, le poisson, des hamburgers ou une pizza. Un grand m&eacute;lange de Habanero, mangue, fruits de la passion et de plus faire cette sauce Mort d\'un festin incroyable tropicale'),(-253,'2','Sku','name','fr','Sauce Sweet Death'),(-252,'1','Sku','longDescription','fr','Comme mes Chilipals sais, je suis pas du genre &agrave; &ecirc;tre satisfaite. Par cons&eacute;quent, la cr&eacute;ation de la mort subite. Lorsque vous avez besoin d\'aller au-del&agrave; ... Mort subite livrera!'),(-251,'1','Sku','name','fr','Sauce mort subite'),(-247,'14','ProdOptionVal','attributeValue','fr','XG'),(-246,'13','ProdOptionVal','attributeValue','fr','G'),(-245,'12','ProdOptionVal','attributeValue','fr','M'),(-244,'11','ProdOptionVal','attributeValue','fr','P'),(-243,'3','ProdOptionVal','attributeValue','fr','Argent'),(-242,'2','ProdOptionVal','attributeValue','fr','Rouge'),(-241,'1','ProdOptionVal','attributeValue','fr','Noir'),(-232,'2','ProdOption','label','fr','Shirt Taille'),(-231,'1','ProdOption','label','fr','Shirt Couleur'),(-214,'2004','Category','description','fr','D&eacute;gagement'),(-213,'2003','Category','description','fr','Marchandisfr'),(-212,'2002','Category','description','fr','Sauces chaudfr'),(-211,'2001','Category','description','fr','Page d\'accueil'),(-204,'2004','Category','name','fr','D&eacute;gagement'),(-203,'2003','Category','name','fr','Marchandisfr'),(-202,'2002','Category','name','fr','Sauces chaudfr'),(-201,'2001','Category','name','fr','Page d\'accueil'),(-198,'6','MenuItem','label','es','FAQ'),(-197,'5','MenuItem','label','es','Nuevo a la Salsa?'),(-196,'3','FulfillmentOption','longDescription','es','1 - 2 D&iacute;as'),(-195,'3','FulfillmentOption','name','es','Express'),(-194,'2','FulfillmentOption','longDescription','es','3 - 5 D&iacute;as'),(-193,'2','FulfillmentOption','name','es','Ejecutiva'),(-192,'1','FulfillmentOption','longDescription','es','5 - 7 D&iacute;as'),(-191,'1','FulfillmentOption','name','es','EstÃ¡ndar'),(-182,'3','SearchFacet','label','es','Precio'),(-181,'2','SearchFacet','label','es','Rango de Calor'),(-180,'1','SearchFacet','label','es','Fabricante'),(-100,'600','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-99,'600','Sku','name','es','Mascota de Heat Clinic (Mujeres)'),(-98,'500','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-97,'500','Sku','name','es','Mascota de Heat Clinic (Hombres)'),(-96,'400','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-95,'400','Sku','name','es','Heat Clinic dibujado a mano (Mujeres)'),(-94,'300','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-93,'300','Sku','name','es','Heat Clinic dibujado a mano (Hombres)'),(-92,'200','Sku','longDescription','es','Colecci&oacute;n de Mujeres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-91,'200','Sku','name','es','Camisa de Habanero Hawt (Mujeres)'),(-90,'100','Sku','longDescription','es','Colecci&oacute;n de Hombres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-89,'100','Sku','name','es','Camisa de Habanero Hawt (Hombres)'),(-88,'19','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-87,'19','Sku','name','es','Salsa de Pimienta Roja y Chipotle'),(-86,'18','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-85,'18','Sku','name','es','Salsa de Jalape&ntilde;o Ardiente'),(-84,'17','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-83,'17','Sku','name','es','Salsa de Locura'),(-82,'16','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-81,'16','Sku','name','es','Salsa de Locura'),(-80,'15','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-79,'15','Sku','name','es','Salsa de Ajo Tostado'),(-78,'14','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-77,'14','Sku','name','es','Salsa de Cayene Fresco'),(-76,'13','Sku','longDescription','es','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Si usted es un fan de hacer la salsa de barbacoa a partir de cero, como yo, puede utilizar la Salsa de Snortin Bull como aditivo. Habaneros ardientes y los pimientos de cayena dan a la garganta un sabor y calor al rojo vivo.'),(-75,'13','Sku','name','es','Salsa Mata-Gargantas de Bull Snort'),(-74,'12','Sku','longDescription','es','Una de las salsas m&aacute;s inusuales que vendemos. La original era un viejo estilo salsa caj&uacute;n y esto versi&oacute;n actualizada ennegrecimiento. Es dulce, pero se obtiene un gran sabor de canela y clavo de olor con un tiro agradable de piacnte de Cayena. Use en todos los alimentos para dar ese toque caj&uacute;n.'),(-73,'12','Sku','name','es','Salsa Dulce de Cajun de Lousiane'),(-72,'11','Sku','longDescription','es','Espolvorear con platos de carne, pescado y verduras. Use como aditivo en la salsa de barbacoa o cualquier alimento que necesita un sabor picante. Comience con unas gotas y aumente hasta llegar al sabor deseado.'),(-71,'11','Sku','name','es','Salsa Picante del Vaquero'),(-70,'10','Sku','longDescription','es','AquÃ­ est&aacute; la receta para aquellos que disfrutan de picante intolerable. Esta salsa macabra y mortal del Dr. Chilemeister se debe utilizar con precauci&oacute;n. El dolor puede llegar a ser adictivo!'),(-69,'10','Sku','name','es','Salsa Loca del Dr. Chilemeister'),(-68,'9','Sku','longDescription','es','Todo el infierno se ha desatado, fuego y azufre. Est&aacute; listo para el fin?'),(-67,'9','Sku','name','es','Fin del Mundo Salsa'),(-66,'8','Sku','longDescription','es','Esta salsa caliente recibe su nombre por la gente que aprecian una salsa picante. Lo que vas a encontrar aquÃ­ es un sabor picante realmente original, no una acritud abrumador que se encuentra en las salsas de chile Tabasco ordinarios - a pesar de la pimienta usado en este producto ha sido probado en 285.000 unidades Scoville. Por lo tanto, ensillar a dar un paseo para recordar. Para asegurarnos de que usted trajo s&oacute;lo la mejor salsa de pimiento habanero, nos fuimos a las faldas de las monta&ntilde;as mayas en Belice, Am&eacute;rica Central. Este producto se prepara totalmente a mano utilizando s&oacute;lo las verduras frescas y solo ingredientes naturales.'),(-65,'8','Sku','name','es','Salsa de Habanero de la Silla Ardiente'),(-64,'7','Sku','longDescription','es','Hecho con Naga Jolokia Bhut, el chile m&aacute;s picante del mundo.'),(-63,'7','Sku','name','es','Fantasma Verde'),(-62,'6','Sku','longDescription','es','Parecido al Habanero, el Bonnet Escoc&eacute;s tiene una punta profundamente invertidas en comparaci&oacute;n con el extremo puntiagudo del Habanero. Van en colores de verde a amarillo-naranja, el Bonnet Escoc&eacute;s es un alimento b&aacute;sico en West Indies, en Barbados y salsas estilo pimienta.'),(-61,'6','Sku','name','es','Salsa del D&iacute;a de los Muertos de Bonnet Escoc&eacute;s'),(-60,'5','Sku','longDescription','es','Si quieres picante, este es el Chile a elegir. Originario del Caribe, Yucat&aacute;n y la Costa norte de Am&eacute;rica del Sur, el habanero se presenta en una variedad de colores que van desde el verde claro a un rojo brillante. El calor, sabor y aroma &uacute;nicos del Habanero ha convertido el chile en el favorito de los amantes del picante.'),(-59,'5','Sku','name','es','Salsa del D&iacute;a de los Muertos de Habanero'),(-58,'4','Sku','longDescription','es','Cuando cualquier pimienta se seca y se fuma, se refiere como un Chipotle. Por lo general, con una apariencia arrugada, caf&eacute; oscuro, el Chipotle ofrece un sabor ahumado y dulce que se utiliza generalmente para agregar un sabor asado a las salsas, guisos y adobos.'),(-57,'4','Sku','name','es','Salsa del D&iacute;a de los Muertos de Chipotle'),(-56,'3','Sku','longDescription','es','Picante, maduro pimienta que se mezcla junto con el ajo, la cebolla, pasta de tomate y una pizca de az&uacute;car de ca&ntilde;a para hacer de esto una salsa suave. Maravilloso en huevos, aves de corral, carne de cerdo o pescado, esta salsa se â€‹â€‹mezcla para hacer los adobos y sopas ricas.'),(-55,'3','Sku','name','es','Salsa de la Muerte Saltante'),(-54,'2','Sku','longDescription','es','El perfecto acompa&ntilde;ante para el pollo, el pescado, hamburguesas o pizza. Una gran mezcla de habanero, mango, fruta de la pasi&oacute;n y mucho m&aacute;s hacen de esta salsa de la Muerte una delicia tropical incre&iacute;ble.'),(-53,'2','Sku','name','es','Salsa de la Muerte Dulce'),(-52,'1','Sku','longDescription','es','Como mis amigos salseros saben, nunca soy f&aacute;cil de satisfacer. Por lo tanto, naci&oacute; la creaci&oacute;n de la Muerte S&uacute;bita. Cuando este listo para saborear al m&aacute;s all&aacute; ... Muerte s&uacute;bita entregar&aacute;!'),(-51,'1','Sku','name','es','Salsa de la Muerte S&uacute;bita'),(-47,'14','ProdOptionVal','attributeValue','es','XG'),(-46,'13','ProdOptionVal','attributeValue','es','G'),(-45,'12','ProdOptionVal','attributeValue','es','M'),(-44,'11','ProdOptionVal','attributeValue','es','CH'),(-43,'3','ProdOptionVal','attributeValue','es','Plateado'),(-42,'2','ProdOptionVal','attributeValue','es','Rojo'),(-41,'1','ProdOptionVal','attributeValue','es','Negro'),(-32,'2','ProdOption','label','es','Tama&ntilde;o de Camisa'),(-31,'1','ProdOption','label','es','Color de Camisa'),(-14,'2004','Category','description','es','Descuento'),(-13,'2003','Category','description','es','Mercanc&iacute;a'),(-12,'2002','Category','description','es','Salsas Picantes'),(-11,'2001','Category','description','es','Inicio'),(-4,'2004','Category','name','es','Descuento'),(-3,'2003','Category','name','es','Mercanc&iacute;a'),(-2,'2002','Category','name','es','Salsas'),(-1,'2001','Category','name','es','Inicio');
/*!40000 ALTER TABLE `BLC_TRANSLATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_TRANS_ADDITNL_FIELDS`
--

DROP TABLE IF EXISTS `BLC_TRANS_ADDITNL_FIELDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_TRANS_ADDITNL_FIELDS` (
  `PAYMENT_TRANSACTION_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`,`FIELD_NAME`),
  KEY `FK376DDE4B9E955B1D` (`PAYMENT_TRANSACTION_ID`),
  CONSTRAINT `FK376DDE4B9E955B1D` FOREIGN KEY (`PAYMENT_TRANSACTION_ID`) REFERENCES `BLC_ORDER_PAYMENT_TRANSACTION` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_TRANS_ADDITNL_FIELDS`
--

LOCK TABLES `BLC_TRANS_ADDITNL_FIELDS` WRITE;
/*!40000 ALTER TABLE `BLC_TRANS_ADDITNL_FIELDS` DISABLE KEYS */;
INSERT INTO `BLC_TRANS_ADDITNL_FIELDS` VALUES (1,'COD','PASSTHROUGH_PAYMENT_TYPE'),(2,'COD','PASSTHROUGH_PAYMENT_TYPE'),(51,'COD','PASSTHROUGH_PAYMENT_TYPE'),(101,'COD','PASSTHROUGH_PAYMENT_TYPE'),(151,'COD','PASSTHROUGH_PAYMENT_TYPE'),(201,'COD','PASSTHROUGH_PAYMENT_TYPE'),(251,'COD','PASSTHROUGH_PAYMENT_TYPE'),(301,'COD','PASSTHROUGH_PAYMENT_TYPE'),(351,'COD','PASSTHROUGH_PAYMENT_TYPE'),(401,'COD','PASSTHROUGH_PAYMENT_TYPE'),(451,'COD','PASSTHROUGH_PAYMENT_TYPE'),(501,'COD','PASSTHROUGH_PAYMENT_TYPE'),(551,'COD','PASSTHROUGH_PAYMENT_TYPE'),(601,'COD','PASSTHROUGH_PAYMENT_TYPE'),(651,'COD','PASSTHROUGH_PAYMENT_TYPE'),(652,'COD','PASSTHROUGH_PAYMENT_TYPE'),(653,'COD','PASSTHROUGH_PAYMENT_TYPE'),(701,'COD','PASSTHROUGH_PAYMENT_TYPE'),(751,'COD','PASSTHROUGH_PAYMENT_TYPE'),(752,'COD','PASSTHROUGH_PAYMENT_TYPE'),(801,'COD','PASSTHROUGH_PAYMENT_TYPE'),(851,'COD','PASSTHROUGH_PAYMENT_TYPE'),(901,'COD','PASSTHROUGH_PAYMENT_TYPE'),(951,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1001,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1002,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1051,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1101,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1151,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1152,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1153,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1201,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1202,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1203,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1251,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1252,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1301,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1351,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1401,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1451,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1452,'COD','PASSTHROUGH_PAYMENT_TYPE'),(1501,'COD','PASSTHROUGH_PAYMENT_TYPE');
/*!40000 ALTER TABLE `BLC_TRANS_ADDITNL_FIELDS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_URL_HANDLER`
--

DROP TABLE IF EXISTS `BLC_URL_HANDLER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_URL_HANDLER` (
  `URL_HANDLER_ID` bigint(20) NOT NULL,
  `INCOMING_URL` varchar(255) NOT NULL,
  `NEW_URL` varchar(255) NOT NULL,
  `URL_REDIRECT_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`URL_HANDLER_ID`),
  KEY `INCOMING_URL_INDEX` (`INCOMING_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_URL_HANDLER`
--

LOCK TABLES `BLC_URL_HANDLER` WRITE;
/*!40000 ALTER TABLE `BLC_URL_HANDLER` DISABLE KEYS */;
INSERT INTO `BLC_URL_HANDLER` VALUES (1,'/googlePerm','http://www.google.com','REDIRECT_PERM'),(2,'/googleTemp','http://www.google.com','REDIRECT_TEMP'),(3,'/insanity','/hot-sauces/insanity_sauce','FORWARD'),(4,'/jalepeno','/hot-sauces/hurtin_jalepeno_hot_sauce','REDIRECT_TEMP');
/*!40000 ALTER TABLE `BLC_URL_HANDLER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_USERCONNECTION`
--

DROP TABLE IF EXISTS `BLC_USERCONNECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_USERCONNECTION` (
  `PROVIDERID` varchar(255) NOT NULL,
  `PROVIDERUSERID` varchar(255) NOT NULL,
  `USERID` varchar(255) NOT NULL,
  `ACCESSTOKEN` varchar(255) NOT NULL,
  `DISPLAYNAME` varchar(255) DEFAULT NULL,
  `EXPIRETIME` bigint(20) DEFAULT NULL,
  `IMAGEURL` varchar(255) DEFAULT NULL,
  `PROFILEURL` varchar(255) DEFAULT NULL,
  `RANK` int(11) NOT NULL,
  `REFRESHTOKEN` varchar(255) DEFAULT NULL,
  `SECRET` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROVIDERID`,`PROVIDERUSERID`,`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_USERCONNECTION`
--

LOCK TABLES `BLC_USERCONNECTION` WRITE;
/*!40000 ALTER TABLE `BLC_USERCONNECTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_USERCONNECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_UserConnection`
--

DROP TABLE IF EXISTS `BLC_UserConnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_UserConnection` (
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(255) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`providerId`,`providerUserId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_UserConnection`
--

LOCK TABLES `BLC_UserConnection` WRITE;
/*!40000 ALTER TABLE `BLC_UserConnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_UserConnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BLC_ZIP_CODE`
--

DROP TABLE IF EXISTS `BLC_ZIP_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BLC_ZIP_CODE` (
  `ZIP_CODE_ID` varchar(255) NOT NULL,
  `ZIP_CITY` varchar(255) DEFAULT NULL,
  `ZIP_LATITUDE` double DEFAULT NULL,
  `ZIP_LONGITUDE` double DEFAULT NULL,
  `ZIP_STATE` varchar(255) DEFAULT NULL,
  `ZIPCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ZIP_CODE_ID`),
  KEY `ZIPCODE_CITY_INDEX` (`ZIP_CITY`),
  KEY `ZIPCODE_LATITUDE_INDEX` (`ZIP_LATITUDE`),
  KEY `ZIPCODE_LONGITUDE_INDEX` (`ZIP_LONGITUDE`),
  KEY `ZIPCODE_STATE_INDEX` (`ZIP_STATE`),
  KEY `ZIPCODE_ZIP_INDEX` (`ZIPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLC_ZIP_CODE`
--

LOCK TABLES `BLC_ZIP_CODE` WRITE;
/*!40000 ALTER TABLE `BLC_ZIP_CODE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLC_ZIP_CODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE_GENERATOR`
--

DROP TABLE IF EXISTS `SEQUENCE_GENERATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE_GENERATOR` (
  `ID_NAME` varchar(255) NOT NULL,
  `ID_VAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE_GENERATOR`
--

LOCK TABLES `SEQUENCE_GENERATOR` WRITE;
/*!40000 ALTER TABLE `SEQUENCE_GENERATOR` DISABLE KEYS */;
INSERT INTO `SEQUENCE_GENERATOR` VALUES ('AddressImpl',2151),('AdminSectionImpl',10010),('CategoryImpl',2468),('CategoryProductXrefImpl',950),('CategorySearchFacetImpl',17),('CategoryXrefImpl',469),('ChallengeQuestionImpl',19),('CountrySubdivisionCategoryImpl',96),('CustomerAddressImpl',51),('CustomerRoleImpl',751),('EmailTrackingImpl',2201),('FeaturedProductImpl',20),('FieldDefinitionImpl',13),('FieldGroupImpl',11),('FieldImpl',19),('FulfillmentGroupImpl',7151),('FulfillmentGroupItemImpl',7151),('FulfillmentOptionImpl',13),('IndexFieldImpl',19),('IndexFieldTypeImpl',20),('MediaImpl',60513),('MenuImpl',11),('MenuItemImpl',116),('OfferImpl',11),('OfferItemCriteriaImpl',11),('OrderImpl',7151),('OrderItemAttributeImpl',1001),('OrderItemImpl',7151),('OrderItemPriceDetailImpl',3501),('OrderPaymentImpl',2101),('PageFieldImpl',14),('PageImpl',13),('PageTemplateFieldGroupXrefImpl',12),('PageTemplateImpl',11),('PaymentTransactionImpl',1551),('PersonalMessageImpl',1751),('PhoneImpl',2051),('ProductAttributeImpl',29),('ProductImpl',1310),('ProductOptionImpl',163),('ProductOptionValueImpl',174),('ProductOptionXrefImpl',173),('RoleImpl',11),('SandBoxImpl',101),('SandBoxManagementImpl',101),('SearchFacetImpl',14),('SearchFacetRangeImpl',14),('SkuAttributeImpl',29),('SkuImpl',1344),('SkuMediaXrefImpl',501),('SkuProductOptionValueXrefImpl',304),('StaticAssetImpl',60175),('URLHandlerImpl',14);
/*!40000 ALTER TABLE `SEQUENCE_GENERATOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-14 13:01:00
