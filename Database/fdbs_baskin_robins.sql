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
-- Table structure for table `baskin_robins`
--

DROP TABLE IF EXISTS `baskin_robins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baskin_robins` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baskin_robins`
--

LOCK TABLES `baskin_robins` WRITE;
/*!40000 ALTER TABLE `baskin_robins` DISABLE KEYS */;
INSERT INTO `baskin_robins` VALUES (1,'Vanilla Ice Cream','Ice Cream',95),(2,'Chocolate Ice Cream','Ice Cream',120),(3,'Butterscotch Ice Cream','Ice Cream',69),(4,'Pistachio Ice Cream','Ice Cream',90),(5,'Strawberry Ice Cream','Ice Cream',95),(6,'Cotton Candy And Marshmallow Shake ','Dessert',300),(7,'Bavarian Knight Roll Cake ','Starters',700),(8,'Thunder Hot Fudge','Ice Cream',185),(9,'Browny A-La Mode','Dessert',300),(10,'Hersheys Kisses Caramel Ice Cream ','Ice Cream',100),(11,'Gold Medal Ribbon Ice Cream','Ice Cream',320),(12,'Roasted Coffee Cream Ice Cream','Ice Cream',310),(13,'Fresh Alfanzo Mango Ice Cream','Ice Cream',320),(14,'Italian Wafer Sandwich','Starters',100),(15,'Choco Lava Cake Sundae','Starters',200);
/*!40000 ALTER TABLE `baskin_robins` ENABLE KEYS */;
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
