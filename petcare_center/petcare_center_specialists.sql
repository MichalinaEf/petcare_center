CREATE DATABASE  IF NOT EXISTS `petcare_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `petcare_center`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petcare_center
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `specialists`
--

DROP TABLE IF EXISTS `specialists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialists` (
  `Specialist_Id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(40) NOT NULL,
  `Last_name` varchar(40) NOT NULL,
  `Hub_Id` int NOT NULL,
  PRIMARY KEY (`Specialist_Id`),
  KEY `fk_Specialists_Hubs` (`Hub_Id`),
  CONSTRAINT `fk_Specialists_Hubs` FOREIGN KEY (`Hub_Id`) REFERENCES `hubs` (`Hub_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialists`
--

LOCK TABLES `specialists` WRITE;
/*!40000 ALTER TABLE `specialists` DISABLE KEYS */;
INSERT INTO `specialists` VALUES (1,'Andrew','Masalla',1),(2,'Boris','Yasek',5),(3,'Anna','Makarenko',4),(4,'Martha','McAllister',2),(5,'Bruno','Greenwood',5),(6,'David','Stones',6),(7,'Barbara','Coleman',3),(8,'Agneta','Carlsson',5),(9,'Thomas','Manningstone',5),(10,'Diana','Merling',4),(11,'Andy','Rashford',1),(12,'Gertrude','Blackmoore',2),(13,'Alice','Novak',6),(14,'Arno','Sommerville',3),(15,'Claudia','Willock',2),(16,'Barbara','Sullivan',4),(17,'Anastacia','Lipperstone',3),(18,'Sven','Linde',1),(19,'Adriano','Firmonetti',1),(20,'Olivia','Moore',3),(21,'Le-Ann','McTomminay',6),(22,'Briana','Semedo',4),(23,'Joanna','Meltzer',2),(24,'Judy','Bellic',4),(25,'Stanley','Folten',2),(26,'Lucas','Palmer',3),(27,'Kimberly','Gibbs',3),(28,'Gracia','Suarez',6),(29,'Anna','Mitrovsky',2),(30,'Olga','Shapoyeva',5),(31,'Mary','Briggs',1),(32,'Linda','Buggle',5),(33,'Rita','Wellbeck',4),(34,'Cristoph','Ballard',2),(35,'Alice','Jones',6),(36,'Vanessa','Woodland',6),(37,'Caroline','Sturridge',5),(38,'Gregory','Spencer',3);
/*!40000 ALTER TABLE `specialists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 23:10:18
