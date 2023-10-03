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
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_details` (
  `Contact_id` int NOT NULL AUTO_INCREMENT,
  `Phone_number` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  PRIMARY KEY (`Contact_id`),
  UNIQUE KEY `Phone_number` (`Phone_number`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES (1,'(123) 456-7890','petcarecracovia@petcarecenter.com','Krakow'),(2,'(456) 789-1234','petcarewroclavia@example.com','Wroclaw'),(3,'(789) 123-4567','petcaremasovia@example.com','Warszawa'),(4,'(234) 567-8901','petcarewarsavia@example.com','Warszawa'),(5,'(567) 890-1234','petcarepoznania@example.com','Poznan'),(6,'(890) 123-4567','petcarepomeranian@example.com','Gdansk'),(7,'(345) 678-9012','office@vetopharma.com','Krakow'),(8,'(678) 901-2345','contact@vetwholsale.com','Lodz'),(9,'(901) 234-5678','contact@groomershop.com','Wroclaw'),(10,'(432) 765-0987','orders@bayleg.com','Warszawa'),(11,'(765) 098-7654','office@medicorp.com','Krakow'),(12,'(098) 765-4321','orders@ecolab.com','Lodz'),(13,'(543) 210-9876','alice.smith@gmail.com','Krakow'),(14,'(876) 543-2109','bob.johnson@bing.com','Wroclaw'),(15,'(109) 876-5432','carol.williams@amazon.com','Poznan'),(16,'(321) 098-7654','david.jones@codefirstgirls.com','Warszawa'),(17,'(654) 321-0987','emily.brown@example.com','Warszawa'),(18,'(987) 654-3210','frank.davis@mycompany.com','Poznan'),(19,'(210) 987-6543','grace.miller@gmail.com','Gdansk'),(20,'(543) 432-1098','henry.wilson@bing.com','Krakow'),(21,'(876) 321-0987','isabel.moore@amazon.com','Wroclaw'),(22,'(123) 654-7890','jack.taylor@example.com','Wroclaw'),(23,'(456) 098-2345','kate.anderson@codefirstgirls.com','Gdansk'),(24,'(789) 321-5678','liam.thomas@gmail.com','Gdansk'),(25,'(234) 678-9012','molly.jackson@bing.com','Krakow'),(26,'(567) 890-3456','nathan.white@amazon.com','Warszawa'),(27,'(890) 234-5678','olivia.harris@example.com','Wroclaw'),(28,'(345) 567-8901','peter.martin@mycompany.com','Poznan'),(29,'(678) 901-2346','rachel.thompson@gmail.com','Warszawa'),(30,'(901) 234-5674','monica.garcia@bing.com','Wroclaw'),(31,'(543) 210-9872','sam.martinez@amazon.com','Warszawa'),(32,'(876) 543-2103','thomas.robinson@example.com','Gdansk'),(33,'(109) 876-5431','ursula.clark@codefirstgirls.com','Warszawa'),(34,'(321) 098-7657','victor.rodriguez@gmail.com','Krakow'),(35,'(654) 321-0988','wendy.lewis@bing.com','Warszawa'),(36,'(987) 654-3212','xavier.lee@amazon.com','Poznan'),(37,'(210) 987-6549','yvonne.walker@example.com','Poznan'),(38,'(543) 432-1091','zoe.hall@mycompany.com','Gdansk'),(39,'(876) 321-0986','aaron.allen@gmail.com','Gdansk'),(40,'(123) 654-7894','sophie.young@bing.com','Wroclaw'),(41,'(456) 098-2344','charlie.wright@amazon.com','Krakow'),(42,'(789) 321-5676','daniel.king@codefirstgirls.com','Warszawa'),(43,'(456)789-125','john@franco.com','Krakow');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 14:56:09
