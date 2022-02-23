-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: wms
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int DEFAULT NULL,
  `customers_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (28,33,3,1,165),(30,16,5,2,670),(31,12,6,1,280);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (3,'Customer','customer@customer.com','customer','Customer','Male',10,'999999999'),(5,'Ganesh prasad','ganesh@prasad.s','ganesh','','',0,NULL),(6,'John Doe','john.doe@gmail.com','johndoe','Bangalore','Male',30,'9898989898');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(15) DEFAULT NULL,
  `traders_id` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Vegetables',1,'Carrot','The carrot is a root vegetable, most commonly observed as orange in color, though purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot',30,'carrot.jpg'),(6,'Vegetables',1,'Beetroot','The beetroot is the taproot portion of a beet plant, usually known in Canada and the USA as beets while the vegetable is referred to as beetroot in British English, and also known as the table beet,',35,'beetroot.jpg'),(7,'Vegetables',1,'Beans','A bean is the seed of one of several genera of the flowering plant family Fabaceae, which are used as vegetables for human or animal food. ',28,'beans.jpg'),(8,'Vegetables',1,'Coriander Leaves','Coriander is an annual herb in the family Apiaceae. It is also known as Chinese parsley, dhania or cilantro. All parts of the plant are edible',10,'coriander.jpg'),(9,'Vegetables',1,'Curry Leaves','The curry tree is a tropical to sub-tropical tree in the family Rutaceae, and is native to Asia. The plant is also sometimes called sweet neem',10,'curry.jpg'),(10,'Vegetables',1,'Chilli','The chili pepper, from Nahuatl chīlli, is the berry-fruit of plants from the genus Capsicum which are members of the nightshade family, Solanaceae',15,'chilli.jpg'),(11,'Meat',1,'Chicken','The chicken, a subspecies of the red junglefowl, is a type of domesticated fowl, originally from Southeastern Asia. Rooster or cock is a term for an adult male bird',280,'chicken.jpg'),(12,'Meat',1,'Mutton','Lamb, hogget, and mutton, generically sheep meat, are the meat of domestic sheep, Ovis aries. A sheep in its first year is a lamb and its meat is also lamb.',280,'mutton.jpg'),(13,'Meat',1,'Fish','Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish. Shellfish include various species of molluscs, crustaceans, and echinoderms',300,'fish.jpg'),(14,'Meat',1,'Prawns','Prawn is a common name for small aquatic crustaceans with an exoskeleton and ten legs, some of which can be eaten',500,'prawns.jpg'),(15,'Dry Fruits',1,'Badam','Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.',790,'badam.jpg'),(16,'Dry Fruits',1,'Pista','Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.',670,'pista.jpg'),(17,'Dry Fruits',1,'Cashew Nut','Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.',800,'cashew.jpg'),(18,'Dry Fruits',1,'Dry Grapes','Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.',700,'drygrapes.jpg'),(19,'Dry Fruits',1,'Dates','Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.',600,'dates.jpg'),(20,'Dry Fruits',1,'Walnut','Dried fruit is fruit from which the majority of the original water content has been removed either naturally, through sun drying, or through the use of specialized dryers or dehydrators.',400,'walnut.jpg'),(21,'Flowers',1,'Jasmine','This flower not only has great medicinal value but it also holds great religious significance. If you wish to please Lord Hanuman, jasmine is one of the flowers that you should consider offering ',50,'jasmine.jpg'),(22,'Flowers',1,'Red Rose','This small fragrant flower not only has great medicinal value but it also holds great religious significance. ',20,'redrose.jpg'),(23,'Flowers',1,'Palash','Palash flowers are one of the most essential requirements for worshipping goddess Saraswati. It is believed that Goddess Saraswati is fond of white coloured flowers',40,'palash.jpg'),(24,'Flowers',1,'Marigold','Lord Ganesha is believed to like red coloured flowers, and marigold is one of them. This saffron coloured flower is offered in the form of a garland or otherwise too.',30,'marigold.jpg'),(25,'Flowers',1,'Lotus','The Goddess of wealth and prosperity, Goddess Laxmi is fond of lotus and for this reason, this flower is used to worship during Laxmi pujan or during Diwali. ',50,'lotus.jpg'),(26,'Flowers',1,'Parijata','Night-flowering coral jasmine is considered a divine flower and is believed to please Lord Vishnu. It is believed that this flower emerged during the ocean churning and Lord Indra got it to heaven.',60,'parijata.jpg'),(27,'Flowers',1,'Hibiscus','The Goddess Kali epitomises fierceness and the flower that depicts this beautifully is red hibiscus. The shape of the flower symbolises the goddess’s tongue',25,'hibiscus.jpg'),(28,'Flowers',1,'Crown Flower','This whitish purplish flower is used while worshipping Lord Shiva. Also, known as akanda, this poisonous flower is one of the most important ingredients of Shiv puja.',44,'crown.jpg'),(29,'Flowers',1,'Nerium Oleander','Goddess Durga is offered flowers in reddish hues, and Nerium Oleander is one such flower.',65,'nerium.jpg'),(30,'Flowers',1,'Purple Orchid','This beautiful and exotic flower is also a very popular flower in Hindu worshipping. This dainty flower is offered to Lord Shiva. This can be offered with milk or otherwise too.',70,'purpleorchid.jpg'),(31,'Flowers',1,'Dhatura','As per Hindu mythology, Lord Shiva consumed the poison that was obtained during the ocean churning. After doing so, this flower emerged from Lord Shiva’s chest',100,'dhatura.jpg'),(32,'Fruits',1,'Apple','Fruits are important sources of dietary fibre, vitamins (especially vitamin C), and antioxidants. ',180,'apple.jpg'),(33,'Fruits',1,'Green Apple','Fruits are important sources of dietary fibre, vitamins (especially vitamin C), and antioxidants. ',165,'greenapple.jpg'),(34,'Fruits',1,'Mango','Fruits are important sources of dietary fibre, vitamins (especially vitamin C), and antioxidants. ',49,'mango.jpg'),(35,'Fruits',1,'Orange','Fruits are important sources of dietary fibre, vitamins (especially vitamin C), and antioxidants. ',40,'orange.jpg'),(36,'Fruits',1,'Banana','Fruits are important sources of dietary fibre, vitamins (especially vitamin C), and antioxidants. ',30,'banana.jpg'),(37,'Milk Products',2,'Milk','Its packed with important nutrients like calcium, phosphorus, B vitamins, potassium and vitamin D. Plus, its an excellent source of protein.',22,'milk.jpg'),(38,'Milk Products',1,'Ghee','Its packed with important nutrients like calcium, phosphorus, B vitamins, potassium and vitamin D. Plus, its an excellent source of protein.',540,'ghee.jpg'),(39,'Milk Products',1,'Butter','Its packed with important nutrients like calcium, phosphorus, B vitamins, potassium and vitamin D. Plus, its an excellent source of protein.',90,'butter.jpg'),(40,'Milk Products',1,'Paneer','Its packed with important nutrients like calcium, phosphorus, B vitamins, potassium and vitamin D. Plus, its an excellent source of protein.',120,'paneer.jpg'),(41,'Milk Products',1,'Cheese','Its packed with important nutrients like calcium, phosphorus, B vitamins, potassium and vitamin D. Plus, its an excellent source of protein.',170,'cheese.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(25) DEFAULT NULL,
  `sales_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `products_id` int DEFAULT NULL,
  `customers_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (15,'COD','2021-08-13 10:20:15',16,3,1,670,1),(16,'pay_HkYmoKJVj3dQye','2021-08-13 10:33:52',32,3,1,180,1),(17,'COD','2021-08-13 13:58:41',33,3,1,165,0),(21,'COD','2021-08-13 14:20:05',11,5,1,280,0),(22,'COD','2021-08-22 20:35:00',16,5,2,670,0),(23,'COD','2021-09-16 11:03:47',33,3,1,165,NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traders`
--

DROP TABLE IF EXISTS `traders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traders`
--

LOCK TABLES `traders` WRITE;
/*!40000 ALTER TABLE `traders` DISABLE KEYS */;
INSERT INTO `traders` VALUES (1,'Trader','trader@trader.com','trader','Trader','Trader',10,'Male','999999998',1),(2,'Chithra','ganishankar99@gmail.com','chithra','','',0,'',NULL,1);
/*!40000 ALTER TABLE `traders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','admin','admin'),(2,'Trader','trader@trader.com','trader','Trader'),(3,'Customer','customer@customer.com','customer','Customer'),(7,'Ganesh prasad','ganesh@prasad.s','ganesh','Customer'),(8,'Chithra','ganishankar99@gmail.com','chithra','Trader'),(9,'John Doe','john.doe@gmail.com','johndoe','Customer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 12:12:07
