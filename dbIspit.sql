-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: prvi_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `radni_sati`
--

DROP TABLE IF EXISTS `radni_sati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radni_sati` (
  `radni_sati_id` int NOT NULL AUTO_INCREMENT,
  `radnik_id` int NOT NULL,
  `sati_po_danu` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ukupno_sati` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`radni_sati_id`),
  KEY `fk_radni_sati_radnik_id_idx` (`radnik_id`),
  CONSTRAINT `fk_radni_sati_radnik_id` FOREIGN KEY (`radnik_id`) REFERENCES `radnik` (`radnik_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radni_sati`
--

LOCK TABLES `radni_sati` WRITE;
/*!40000 ALTER TABLE `radni_sati` DISABLE KEYS */;
INSERT INTO `radni_sati` VALUES (1,1,'7,2','39'),(2,2,'8','40');
/*!40000 ALTER TABLE `radni_sati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radnik`
--

DROP TABLE IF EXISTS `radnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radnik` (
  `radnik_id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prezime` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `satnica` decimal(10,0) NOT NULL,
  PRIMARY KEY (`radnik_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radnik`
--

LOCK TABLES `radnik` WRITE;
/*!40000 ALTER TABLE `radnik` DISABLE KEYS */;
INSERT INTO `radnik` VALUES (1,'Djordje','Vujadinovic','djv@gmail.com',1500),(2,'Ivan','Ivic','ivI@gmail.com',1400),(3,'Jovan','Simanic','jovance@gmail.com',1650),(4,'Andjela','Malaci','andji@gmail.com',1500),(5,'Andjela','Malaci','andji1@gmail.com',1500),(6,'Andjela','Malaci','anddd1@gmail.com',1500),(7,'Jana','Jokic','jj7@gmail.com',1535);
/*!40000 ALTER TABLE `radnik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07  0:41:37
