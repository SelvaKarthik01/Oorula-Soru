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
-- Table structure for table `star_bucks`
--

DROP TABLE IF EXISTS `star_bucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_bucks` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_bucks`
--

LOCK TABLES `star_bucks` WRITE;
/*!40000 ALTER TABLE `star_bucks` DISABLE KEYS */;
INSERT INTO `star_bucks` VALUES (1,'Cappuccino','Beverage',260),(2,'Cafe Mocha','Beverage',270),(3,'Espresso','Beverage',210),(4,'Double Chocolate Chip Frappuccino','Beverage',330),(5,'Hathikuli Tea','Beverage',400),(6,'Vanilla Cream Cappuccino','Beverage',295),(7,'Ice Cafe Americano','Beverage',215),(8,'Flat White','Beverage',295),(9,'Java Chip Frappuccino','Beverage',300),(10,'Caramel Macchiato','Beverage',295),(11,'Butter Croissant','Dessert',205),(12,'Green Tea Latte','Beverage',240),(13,'Espresso Frappuccino','Beverage',300),(14,'Egg White And Chicken Croissant','Starter',295),(15,'Almond Croissant','Starters',235);
/*!40000 ALTER TABLE `star_bucks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22 20:32:44
