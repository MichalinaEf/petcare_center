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
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `Order_Id` int NOT NULL,
  `Product_Id` int NOT NULL,
  `Product_qty` int NOT NULL,
  KEY `fk_Order_Product_Orders` (`Order_Id`),
  KEY `fk_Order_Product_Products` (`Product_Id`),
  CONSTRAINT `fk_Order_Product_Orders` FOREIGN KEY (`Order_Id`) REFERENCES `orders` (`Order_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Order_Product_Products` FOREIGN KEY (`Product_Id`) REFERENCES `orders` (`Order_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,3,6),(1,1,15),(1,12,8),(2,3,9),(2,6,20),(2,4,5),(2,9,1),(3,7,12),(3,3,5),(3,1,40),(3,13,6),(4,20,6),(4,15,12),(4,10,18),(5,18,60),(5,20,30),(5,10,9),(6,16,6),(6,13,30),(6,15,18),(7,16,5),(7,14,50),(7,12,12),(7,18,4),(8,11,8),(8,9,12),(8,10,20),(8,5,4),(9,1,3),(9,2,8),(9,6,24),(10,10,6),(10,8,14),(10,13,50),(11,13,40),(11,2,20),(11,9,18),(11,8,2),(12,17,25),(12,11,3),(12,8,4),(13,2,12),(13,4,60),(13,3,40),(14,15,3),(14,19,1),(14,2,16),(15,15,13),(15,8,24),(15,4,7),(15,20,6),(16,16,9),(16,15,4),(16,18,15),(16,17,25),(17,20,25),(17,19,10),(17,2,10),(17,4,1),(18,7,42),(18,15,15),(18,11,1),(19,3,42),(19,7,18),(19,13,5),(20,8,16),(20,1,2),(20,12,14),(20,2,20),(21,1,9),(21,6,17),(21,5,5),(22,13,40),(22,9,42),(22,18,6),(23,5,10),(23,20,14),(23,6,15),(24,19,10),(24,1,80),(24,13,26),(25,5,30),(25,8,18),(25,11,4);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 23:10:17
