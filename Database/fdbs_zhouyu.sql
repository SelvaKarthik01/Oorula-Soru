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
-- Table structure for table `zhouyu`
--

DROP TABLE IF EXISTS `zhouyu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zhouyu` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhouyu`
--

LOCK TABLES `zhouyu` WRITE;
/*!40000 ALTER TABLE `zhouyu` DISABLE KEYS */;
INSERT INTO `zhouyu` VALUES (1,'Winter Melon Soy Bean Soup','Starters',200),(2,'Mutton Broth Herbal Soup','Starters',440),(3,'Hong Kong Steamed Fish','Chinese',750),(4,'Clay Pot Chicken Rice','Chinese',540),(5,'Double Cooked Pork Ribs','Chinese',540),(6,'XO Pork Ribs','Chinese',610),(7,'Egg Foo Yung','Chinese',220),(8,'Mapo Tofu','Chinese',385),(9,'Buddhas Feast ','Chinese',470),(10,'Stewed Duck','Chinese',1045),(11,'Taro And Egg Plant','Chinese',330),(12,'Braised Chicken In Stone Bowl','Chinese',440),(13,'Raddish Cake','Dessert',360),(14,'General Tso Cauliflower','Dessert',220),(15,'Shiitake Wonton In Chilli Oil','Dessert',385);
/*!40000 ALTER TABLE `zhouyu` ENABLE KEYS */;
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
