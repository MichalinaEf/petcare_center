CREATE DATABASE  IF NOT EXISTS `petcare_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `petcare_center`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: petcare_center
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `service_specialist`
--

DROP TABLE IF EXISTS `service_specialist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_specialist` (
  `Service_Id` int NOT NULL,
  `Specialist_Id` int NOT NULL,
  PRIMARY KEY (`Service_Id`,`Specialist_Id`),
  KEY `fk_Specialists_Specialists` (`Specialist_Id`),
  CONSTRAINT `fk_Specialists_Services` FOREIGN KEY (`Service_Id`) REFERENCES `services` (`Service_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Specialists_Specialists` FOREIGN KEY (`Specialist_Id`) REFERENCES `specialists` (`Specialist_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_specialist`
--

LOCK TABLES `service_specialist` WRITE;
/*!40000 ALTER TABLE `service_specialist` DISABLE KEYS */;
INSERT INTO `service_specialist` VALUES (1,1),(4,1),(5,1),(7,1),(7,2),(1,3),(6,3),(8,3),(9,3),(12,3),(1,4),(3,4),(6,4),(8,5),(1,6),(3,6),(6,6),(1,7),(6,7),(9,7),(12,7),(1,8),(2,8),(5,8),(6,8),(9,8),(12,8),(13,9),(3,10),(2,11),(5,11),(1,12),(2,12),(4,12),(5,12),(6,12),(9,12),(12,12),(8,13),(7,14),(8,15),(4,16),(15,17),(3,18),(14,18),(10,19),(11,19),(4,20),(10,21),(11,21),(2,22),(4,22),(5,22),(14,23),(10,24),(11,24),(13,25),(1,26),(6,26),(2,27),(5,27),(10,27),(11,27),(1,28),(6,28),(9,28),(12,28),(2,29),(5,29),(15,29),(3,30),(1,31),(6,31),(7,31),(9,31),(12,31),(10,32),(11,32),(1,33),(6,33),(7,34),(10,34),(11,34),(4,35),(14,35),(2,36),(4,36),(5,36),(4,37),(15,37),(3,38);
/*!40000 ALTER TABLE `service_specialist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 14:56:11
