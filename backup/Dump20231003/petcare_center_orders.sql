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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_Id` int NOT NULL AUTO_INCREMENT,
  `Date_of_order` date NOT NULL,
  `Supplier_Id` int NOT NULL,
  `Hub_Id` int NOT NULL,
  `comment` varchar(300) DEFAULT '',
  PRIMARY KEY (`Order_Id`),
  KEY `fk_Orders_Suppliers` (`Supplier_Id`),
  KEY `fk_Orders_Hubs` (`Hub_Id`),
  CONSTRAINT `fk_Orders_Hubs` FOREIGN KEY (`Hub_Id`) REFERENCES `hubs` (`Hub_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Orders_Suppliers` FOREIGN KEY (`Supplier_Id`) REFERENCES `suppliers` (`Supplier_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-05-18',5,3,''),(2,'2023-03-21',4,4,''),(3,'2023-01-14',5,5,''),(4,'2023-01-04',6,3,''),(5,'2023-09-18',1,6,''),(6,'2023-02-23',1,3,''),(7,'2022-12-05',6,2,''),(8,'2023-06-12',5,5,''),(9,'2023-05-29',1,6,''),(10,'2022-11-06',1,2,''),(11,'2022-12-13',2,6,''),(12,'2023-02-13',2,3,''),(13,'2023-08-03',4,5,''),(14,'2023-04-24',4,6,''),(15,'2023-03-18',4,3,''),(16,'2023-02-28',5,4,''),(17,'2023-06-15',6,1,''),(18,'2023-04-12',5,1,''),(19,'2023-02-28',5,5,''),(20,'2023-08-03',4,6,''),(21,'2023-02-13',1,5,''),(22,'2023-01-04',4,2,''),(23,'2023-09-18',4,5,''),(24,'2023-03-21',6,2,''),(25,'2023-09-18',3,4,'');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 14:56:10
