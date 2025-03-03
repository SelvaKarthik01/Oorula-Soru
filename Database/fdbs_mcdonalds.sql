-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: fdbs
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `mcdonalds`
--

DROP TABLE IF EXISTS `mcdonalds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcdonalds` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcdonalds`
--

LOCK TABLES `mcdonalds` WRITE;
/*!40000 ALTER TABLE `mcdonalds` DISABLE KEYS */;
INSERT INTO `mcdonalds` VALUES (1,' French Fries','Starters',60),(2,'McVeggie Burger','Fast Food',110),(3,' McChicken Happy Meal','Fast Food',265),(4,'Chicken Nuggets (9 pcs)','Fast Food',190),(5,'Crushers','Dessert',247),(6,'McFlerry Oreo','Dessert',115),(7,'McSaver Big Spicy Chicken Wrap','Fast Food',350),(8,'McSaver American Cheese Supreme','Fast Food',280),(9,'Maharaja Mac','Fast Food',110),(10,'McSpicy Paneer Burger','Fast Food',170),(11,'McChicken Double Patty Burger','Fast Food',190),(12,'Veg Pizza McPuff','Starters',45),(13,'Chicken Strips (2 pcs)','Starters',85),(14,'Vanilla Chocolate Muffin','Dessert',115),(15,'Mocha Oreo Shake','Dessert',250);
/*!40000 ALTER TABLE `mcdonalds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22 20:32:45
