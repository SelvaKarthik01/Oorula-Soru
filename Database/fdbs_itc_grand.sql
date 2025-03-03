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
-- Table structure for table `itc_grand`
--

DROP TABLE IF EXISTS `itc_grand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itc_grand` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itc_grand`
--

LOCK TABLES `itc_grand` WRITE;
/*!40000 ALTER TABLE `itc_grand` DISABLE KEYS */;
INSERT INTO `itc_grand` VALUES (1,'Stir Fried Noodles','Chinese',600),(2,'Risotto Tutto Pomodoro','Italian',1600),(3,'Paneer Tikka','North Indian',1100),(4,'Tandoori Jhinga','North Indian',2450),(5,'Risotto All Aracosta e Camomilla','Italian',4000),(6,'Grilled Miso Black Cod','Starters',2650),(7,'Veg Spring Rolls','Starters',700),(8,'Sikhandari Raan','North Indian',2800),(9,'Green Tea Cheese Cake','Dessert',700),(10,'Gulab Jamun','Dessert',450),(11,'Fabelle Ganache-Rich Dark (1 Pc)','Dessert',740),(12,'Fabelle Dark Milk Gianduja (12 Pc)','Dessert',800),(13,'Minestrone Alla Milanese','Starters',600),(14,'Teppaanyaki Fried Rice','Chinese',675),(15,'Steamed Jasmine Rice','Chinese',575);
/*!40000 ALTER TABLE `itc_grand` ENABLE KEYS */;
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
