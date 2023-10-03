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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `Client_Id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(40) NOT NULL,
  `Last_name` varchar(40) NOT NULL,
  `Contact_id` int NOT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Client_Id`),
  UNIQUE KEY `Contact_id` (`Contact_id`),
  CONSTRAINT `fk_Clients_Contact_details` FOREIGN KEY (`Contact_id`) REFERENCES `contact_details` (`Contact_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Alice','Smith',13,1),(2,'Bob','Johnson',14,0),(3,'Carol','Williams',15,0),(4,'David','Jones',16,0),(5,'Emily','Brown',17,1),(6,'Frank','Davis',18,0),(7,'Grace','Miller',19,0),(8,'Henry','Wilson',20,0),(9,'Isabel','Moore',21,0),(10,'Jack','Taylor',22,0),(11,'Kate','Anderson',23,0),(12,'Liam','Thomas',24,0),(13,'Molly','Jackson',25,0),(14,'Nathan','White',26,0),(15,'Olivia','Harris',27,0),(16,'Peter','Martin',28,0),(17,'Rachel','Thompson',29,0),(18,'Monica','Garcia',30,0),(19,'Sam','Martinez',31,0),(20,'Thomas','Robinson',32,0),(21,'Ursula','Clark',33,0),(22,'Victor','Rodriguez',34,0),(23,'Wendy','Lewis',35,0),(24,'Xavier','Lee',36,0),(25,'Yvonne','Walker',37,0),(26,'Zoe','Hall',38,0),(27,'Aaron','Allen',39,0),(28,'Sophie','Young',40,0),(29,'Charlie','Wright',41,0),(30,'Daniel','King',42,0),(31,'John','Franco',43,0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
