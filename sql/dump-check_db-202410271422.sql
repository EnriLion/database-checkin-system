-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: check_db
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `check_in`
--

DROP TABLE IF EXISTS `check_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_in` (
  `check_in_id` bigint NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `check_in_time` datetime DEFAULT NULL,
  `check_out_time` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`check_in_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `check_in_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_in`
--

LOCK TABLES `check_in` WRITE;
/*!40000 ALTER TABLE `check_in` DISABLE KEYS */;
INSERT INTO `check_in` VALUES (3,2,'2024-10-14 10:25:36','2024-10-23 11:21:28',1),(5,4,'2024-10-14 14:00:00','2024-10-23 11:18:56',1),(8,1,'2024-10-16 06:27:35','2024-10-23 11:08:40',1),(13,13,'2024-10-21 16:56:18','2024-10-23 10:57:23',1),(28,5,'2024-10-23 12:01:18','2024-10-23 12:01:18',0),(29,5,'2024-10-23 12:01:21','2024-10-23 12:01:21',0),(30,5,'2024-10-23 12:01:24','2024-10-23 12:01:24',0),(32,28,'2024-10-23 13:02:15','2024-10-23 13:02:15',0),(33,1,'2024-10-23 13:07:08','2024-10-23 13:08:20',1),(37,34,'2024-10-24 15:21:17','2024-10-24 15:21:17',0),(38,34,'2024-10-24 15:21:30','2024-10-24 15:21:30',0),(40,34,'2024-10-24 18:08:52','2024-10-24 18:08:52',0),(41,34,'2024-10-27 13:10:58','2024-10-27 13:10:58',0),(42,39,'2024-10-27 13:18:07','2024-10-27 13:18:07',0);
/*!40000 ALTER TABLE `check_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `department` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `position` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bg_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Carlos','Development','Devops','carlos@gmail.com','55555'),(2,'Diego','Development','Software Developer','ji@gmail.com','1212121'),(4,'Diego','Development','Software Developer','facebook@gmail.com','3415678123'),(5,'Eduardo','Management','Manager','edu@gmail.com','1242142143'),(13,'Sebastian','Production','Developer','lion@gmail.com','098765'),(28,'Enrique','Software','Software  Developer','enrique@gmail.com','554433112200'),(34,'Hello','Production','Developer','yux@gmail.com','22222789'),(37,'Pedro','Quality Assurance','Frontend Developer','tuxedlinux@gmail.com','14128439012740'),(38,'Hello','Production','Backend Developer','klfahda@gmail.com','1242152314'),(39,'Roberto','Quality Assurance','Backend Developer','robertico@outlook.com','124215325');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'check_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 14:22:04
