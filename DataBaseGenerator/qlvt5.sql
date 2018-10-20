-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: qlvt5
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `bs_category`
--

DROP TABLE IF EXISTS `bs_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_category`
--

LOCK TABLES `bs_category` WRITE;
/*!40000 ALTER TABLE `bs_category` DISABLE KEYS */;
INSERT INTO `bs_category` VALUES (1,'Gia Dung'),(2,'Xay Dung 1'),(3,'Loai Khac');
/*!40000 ALTER TABLE `bs_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_materials`
--

DROP TABLE IF EXISTS `bs_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `sold_number` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_materials`
--

LOCK TABLES `bs_materials` WRITE;
/*!40000 ALTER TABLE `bs_materials` DISABLE KEYS */;
INSERT INTO `bs_materials` VALUES (1,'Tivi1',2,10,30.00),(2,'Tu Lanh',1,100,15.00),(3,'Cap',2,2,100.00),(4,'May No',2,5,50.00),(5,'Banh xe',3,1,100.00);
/*!40000 ALTER TABLE `bs_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_producer`
--

DROP TABLE IF EXISTS `bs_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_producer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `dob` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_producer`
--

LOCK TABLES `bs_producer` WRITE;
/*!40000 ALTER TABLE `bs_producer` DISABLE KEYS */;
INSERT INTO `bs_producer` VALUES (1,'NSX Vinh Tuong','1962-12-21 00:00:00'),(2,'NSX ASANZO','1952-12-21 00:00:00'),(3,'NSX PANASONIC','1932-12-21 00:00:00'),(4,'NSX PETROCABEL','1922-12-21 00:00:00'),(5,'NSX VOLGA','1972-12-21 00:00:00');
/*!40000 ALTER TABLE `bs_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_producer_materials`
--

DROP TABLE IF EXISTS `bs_producer_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_producer_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producer_id` int(11) NOT NULL,
  `materials_id` int(11) NOT NULL,
  `revenue_share` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_producer_materials`
--

LOCK TABLES `bs_producer_materials` WRITE;
/*!40000 ALTER TABLE `bs_producer_materials` DISABLE KEYS */;
INSERT INTO `bs_producer_materials` VALUES (1,1,1,1.00),(2,2,2,0.30),(3,3,2,0.70),(4,4,3,1.00),(5,5,4,1.00),(6,4,5,1.00);
/*!40000 ALTER TABLE `bs_producer_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_user`
--

DROP TABLE IF EXISTS `bs_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `dob` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_user`
--

LOCK TABLES `bs_user` WRITE;
/*!40000 ALTER TABLE `bs_user` DISABLE KEYS */;
INSERT INTO `bs_user` VALUES (1,'tui@gmail.com','123456','MANAGER','1990-05-03 00:00:00'),(2,'tui2@gmail.com','123456','PRODUCER','1992-05-06 00:00:00');
/*!40000 ALTER TABLE `bs_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-19 11:01:01
