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
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `Pet_Id` int NOT NULL AUTO_INCREMENT,
  `Pet_name` varchar(40) NOT NULL,
  `Species` varchar(40) NOT NULL,
  `Breed` varchar(40) DEFAULT NULL,
  `Date_of_birth` date NOT NULL,
  `Client_Id` int NOT NULL,
  PRIMARY KEY (`Pet_Id`),
  KEY `fk_Pets_Clients` (`Client_Id`),
  CONSTRAINT `fk_Pets_Clients` FOREIGN KEY (`Client_Id`) REFERENCES `clients` (`Client_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Luna','Dog','Golden Retriever','2014-07-22',1),(2,'Max','Cat','Persian','2014-10-11',2),(3,'Bella','Dog','German Shepherd','2015-03-29',3),(4,'Charlie','Dog','Poodle','2015-08-17',4),(5,'Lucy','Cat','Siamese','2015-12-04',5),(6,'Leo','Rat','Albino','2016-04-22',5),(7,'Daisy','Cat','Maine Coon','2016-09-09',6),(8,'Milo','Cat','Ragdoll','2016-12-28',7),(9,'Bailey','Dog','Doberman','2017-05-16',8),(10,'Luna','Dog','Shih Tzu','2017-10-03',8),(11,'Rocky','Cat','Persian','2018-02-20',9),(12,'Chloe','Rat','Dumbo','2018-07-09',9),(13,'Gringo','Dog','French Bulldog','2018-11-26',10),(14,'Simba','Dog','Japanese Spitz','2019-04-14',11),(15,'Bella','Rabbit','French Angora','2019-08-31',11),(16,'Olivier','Parrot','Budgerigar','2019-12-18',11),(17,'Max','Cat','British Shorthair','2020-05-06',12),(18,'Lily','Dog','Pug','2020-09-23',13),(19,'Duke','Cat','Abyssinian','2020-12-11',14),(20,'Bailey','Cat','Abyssinian','2021-04-28',14),(21,'Lessie','Parrot','Alexandrine Parakeet','2021-09-15',15),(22,'Marie','Cat','Ragdoll','2022-02-02',16),(23,'Buddy','Dog','Pug','2022-06-21',17),(24,'Leo','Dog','Golden Retriever','2022-11-08',18),(25,'Peter','Rabbit','Mini Rex','2023-03-27',19),(26,'Garfield','Cat','Ragdoll','2014-03-15',20),(27,'Leo','Dog','Shih Tzu','2014-08-01',20),(28,'Lucy','Cat','Ragdoll','2014-12-19',21),(29,'Pepsi','Degu','Common','2015-05-07',22),(30,'Cola','Degu','Common','2015-09-24',22),(31,'Milo','Dog','Border Collie','2016-02-11',22),(32,'Bailey','Dog','French Bulldog','2016-06-30',23),(33,'Lola','Cat','Maine Coon','2016-11-17',24),(34,'Daisy','Cat','Maine Coon','2017-04-05',24),(35,'Coco','Dog','Cocker Spaniel','2017-08-22',25),(36,'Rocko','Dog','German Shepherd','2017-12-10',26),(37,'Pinky','Rabbit','Britannia Petite','2018-04-27',27),(38,'Lucky','Rabbit','Britannia Petite','2018-09-14',27),(39,'Tiger','Cat','Siamese ','2019-01-01',5),(40,'Bella','Dog','Boxer','2019-05-20',17),(41,'Sisi','Cat','Scottish Fold','2019-10-07',18),(42,'Pablo','Parrot','Conure','2020-02-24',1),(43,'Oli','Dog','German Shepherd','2020-07-12',15),(44,'Kitty','Cat','Chartreux','2020-11-29',21),(45,'Scooby','Dog','Shih Tzu','2021-04-16',28),(46,'Pandy','Cat','Balinese','2021-09-03',28),(47,'Milo','Dog','Golden Retriever','2022-01-20',29),(48,'MerCat','Cat','Scottish Fold','2022-06-08',30),(49,'Speedy','Rat','Siamese','2022-10-26',30),(50,'Clara','Parrot','Conure','2023-03-15',30);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
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
