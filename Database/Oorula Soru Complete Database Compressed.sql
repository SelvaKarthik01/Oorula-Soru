-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `Funds` int NOT NULL,
  PRIMARY KEY (`Funds`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (3704);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nad`
--

DROP TABLE IF EXISTS `nad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nad` (
  `SNO` int NOT NULL,
  `Idea` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nad`
--

LOCK TABLES `nad` WRITE;
/*!40000 ALTER TABLE `nad` DISABLE KEYS */;
INSERT INTO `nad` VALUES (1,'Search Feature'),(2,'Recommended Food & Personalization'),(3,'Food Wastage Prevention/Charity Donation'),(4,'GUI'),(5,'Order Tracker');
/*!40000 ALTER TABLE `nad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timer`
--

DROP TABLE IF EXISTS `timer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timer` (
  `time_end` int NOT NULL,
  PRIMARY KEY (`time_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timer`
--

LOCK TABLES `timer` WRITE;
/*!40000 ALTER TABLE `timer` DISABLE KEYS */;
INSERT INTO `timer` VALUES (1641562436);
/*!40000 ALTER TABLE `timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans`
--

DROP TABLE IF EXISTS `trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans` (
  `transaction` varchar(50) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans`
--

LOCK TABLES `trans` WRITE;
/*!40000 ALTER TABLE `trans` DISABLE KEYS */;
INSERT INTO `trans` VALUES ('Paneer Butter Masala',200),('Parotta',50);
/*!40000 ALTER TABLE `trans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22 20:38:27
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
-- Table structure for table `a2b`
--

DROP TABLE IF EXISTS `a2b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a2b` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a2b`
--

LOCK TABLES `a2b` WRITE;
/*!40000 ALTER TABLE `a2b` DISABLE KEYS */;
INSERT INTO `a2b` VALUES (1,'Standard Meals','South Indian',140),(2,'Parotta','South Indian',50),(3,'Idli (2 Pcs)','South Indian',30),(4,'Plain Dosa','South Indian',40),(5,'Puri','South Indian',80),(6,'Uttapam','South Indian',30),(7,'Veg Pulav','South Indian',245),(8,'Gulab Jamun','South Indian',195),(9,'Kaju Katli','Dessert',310),(10,'Fried Rice','South Indian',130),(11,'Ghee Roast','South Indian',140),(12,'Lemon Rice','South Indian',80),(13,'Curd Rice','South Indian',55),(14,'Sambhar Vadai','South Indian',70),(15,'Vadai Curry','South Indian',85);
/*!40000 ALTER TABLE `a2b` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `delhi_highway_restaurant`
--

DROP TABLE IF EXISTS `delhi_highway_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delhi_highway_restaurant` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delhi_highway_restaurant`
--

LOCK TABLES `delhi_highway_restaurant` WRITE;
/*!40000 ALTER TABLE `delhi_highway_restaurant` DISABLE KEYS */;
INSERT INTO `delhi_highway_restaurant` VALUES (1,'Paneer Butter Masala','North Indian',200),(2,'Paneer Tikka Masala','North Indian',240),(3,'Dal Makhani','North Indian',200),(4,'Chola Batura','North Indian',130),(5,'Pav Bhaji','North Indian',100),(6,'Naan','North Indian',60),(7,'Butter Roti ','North Indian',80),(8,'Gobi 65','Starter',130),(9,'Channa Masala','North Indian',90),(10,'North Indian Thali','North Indian',140),(11,'Palak Paneer','North Indian',220),(12,'Paneer Pulav','South Indian',210),(13,'Chicken 65','South Indian',280),(14,'Paneer 65','South Indian',185),(15,'Lassi','Drinks',65);
/*!40000 ALTER TABLE `delhi_highway_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dindigul_thalappakatti`
--

DROP TABLE IF EXISTS `dindigul_thalappakatti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dindigul_thalappakatti` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dindigul_thalappakatti`
--

LOCK TABLES `dindigul_thalappakatti` WRITE;
/*!40000 ALTER TABLE `dindigul_thalappakatti` DISABLE KEYS */;
INSERT INTO `dindigul_thalappakatti` VALUES (1,'Chicken Briyani ','South Indian',290),(2,'Egg Fried Rice','South Indian',160),(3,'Mutton Briyani','South Indian',340),(4,'Kuska','South Indian',220),(5,'Paneer Briyani','South Indian',240),(6,'Hot and Sour Chicken Soup','Starters',160),(7,'Milagu Rasam Soup','Starters',110),(8,'Black Pepper Chicken','Starters',350),(9,'Dragon Chicken','Starters',320),(10,'Mutton Keema Balls Briyani','South Indian',330),(11,'Gun Fire Chicken','South Indian',200),(12,'Moru Moru Prawn','South Indian',410),(13,'Chilli Fish','South Indian',220),(14,'Paneer Manchurian','South Indian',250),(15,'Veg Fried Rice','South Indian',200);
/*!40000 ALTER TABLE `dindigul_thalappakatti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominos`
--

DROP TABLE IF EXISTS `dominos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dominos` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominos`
--

LOCK TABLES `dominos` WRITE;
/*!40000 ALTER TABLE `dominos` DISABLE KEYS */;
INSERT INTO `dominos` VALUES (1,'Margherita Pizza','Pizza',220),(2,'Pepper Barbecue Chicken','Pizza',420),(3,'Indo-Fusion Chicken Pizza','Pizza',660),(4,'Farm House','Pizza',420),(5,'Veggie Paradise','Pizza',420),(6,'Spiced Double Chicken','Pizza',520),(7,'Indie Chicken Tikka','Pizza',600),(8,'Mexican Green Wave','Pizza',420),(9,'Chicken Fiesta','Pizza',500),(10,'Dominos Lava Cake','Dessert',100),(11,'Coca Cola','Soft Drink',60),(12,'Pepsi','Soft Drink',60),(13,'Cheese Garlic Bread','Starters',160),(14,'Butterscotch Mousse Cake','Starters',100),(15,'Ice Cream','Ice Cream',100);
/*!40000 ALTER TABLE `dominos` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `sangeetha`
--

DROP TABLE IF EXISTS `sangeetha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sangeetha` (
  `ID` int NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sangeetha`
--

LOCK TABLES `sangeetha` WRITE;
/*!40000 ALTER TABLE `sangeetha` DISABLE KEYS */;
INSERT INTO `sangeetha` VALUES (1,'Pongal','South Indian',80),(2,'Rawa Kesari','South Indian',80),(3,'Upma','South Indian',105),(4,'Masala Dosa','South Indian',50),(5,'Rawa Idli','South Indian',100),(6,'Dahi Puri','South Indian',80),(7,'Bajji (3 pcs)','Starters',85),(8,'Aloo Bonda (4 pcs)','Starters',100),(9,'Rawa Kichidi','South Indian',150),(10,'Rasamalai','Dessert',80),(11,'Rasagulla','Dessert',80),(12,'Bhel Puri','Chat',50),(13,'Pani Puri','Chat',40),(14,'Samosa','Chat',70),(15,'Pav Bhaji','Chat',110);
/*!40000 ALTER TABLE `sangeetha` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-01-22 20:38:27
