-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: ДрузьяЧеловека
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `PackAnimals_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,4),(2,5);
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimalsCombined`
--

DROP TABLE IF EXISTS `PackAnimalsCombined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimalsCombined` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `вес` double DEFAULT NULL,
  `высота` double DEFAULT NULL,
  `сила` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `PackAnimalsCombined_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimalsCombined`
--

LOCK TABLES `PackAnimalsCombined` WRITE;
/*!40000 ALTER TABLE `PackAnimalsCombined` DISABLE KEYS */;
INSERT INTO `PackAnimalsCombined` VALUES (1,4,500,1.7,NULL),(2,4,500,1.7,NULL);
/*!40000 ALTER TABLE `PackAnimalsCombined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pets`
--

DROP TABLE IF EXISTS `Pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Pets_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pets`
--

LOCK TABLES `Pets` WRITE;
/*!40000 ALTER TABLE `Pets` DISABLE KEYS */;
INSERT INTO `Pets` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `Pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Верблюды`
--

DROP TABLE IF EXISTS `Верблюды`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Верблюды` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `вес` double DEFAULT NULL,
  `высота` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Верблюды_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Верблюды`
--

LOCK TABLES `Верблюды` WRITE;
/*!40000 ALTER TABLE `Верблюды` DISABLE KEYS */;
/*!40000 ALTER TABLE `Верблюды` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ВсеЖивотные`
--

DROP TABLE IF EXISTS `ВсеЖивотные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ВсеЖивотные` (
  `id` int NOT NULL DEFAULT '0',
  `имя` varchar(50) DEFAULT NULL,
  `датаРождения` date DEFAULT NULL,
  `тип` varchar(6) NOT NULL DEFAULT '',
  `порода` varchar(50) DEFAULT NULL,
  `цвет` varchar(30) DEFAULT NULL,
  `вес` double DEFAULT NULL,
  `высота` double DEFAULT NULL,
  `сила` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ВсеЖивотные`
--

LOCK TABLES `ВсеЖивотные` WRITE;
/*!40000 ALTER TABLE `ВсеЖивотные` DISABLE KEYS */;
INSERT INTO `ВсеЖивотные` VALUES (1,'Бобик','2021-05-10','Собаки','Лабрадор','Желтый',NULL,NULL,NULL),(2,'Мурка','2022-03-15','Кошки','Сиамская','Белый',NULL,NULL,NULL),(3,'Снежок','2023-01-20','Хомяки',NULL,NULL,NULL,NULL,NULL),(4,'Буцефал','2020-07-01','Лошади',NULL,NULL,500,1.7,NULL);
/*!40000 ALTER TABLE `ВсеЖивотные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Животные`
--

DROP TABLE IF EXISTS `Животные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Животные` (
  `id` int NOT NULL AUTO_INCREMENT,
  `имя` varchar(50) DEFAULT NULL,
  `датаРождения` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Животные`
--

LOCK TABLES `Животные` WRITE;
/*!40000 ALTER TABLE `Животные` DISABLE KEYS */;
INSERT INTO `Животные` VALUES (1,'Бобик','2021-05-10'),(2,'Мурка','2022-03-15'),(3,'Снежок','2023-01-20'),(4,'Буцефал','2020-07-01'),(5,'Горбатый','2019-11-05');
/*!40000 ALTER TABLE `Животные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Кошки`
--

DROP TABLE IF EXISTS `Кошки`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Кошки` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `порода` varchar(50) DEFAULT NULL,
  `цвет` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Кошки_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Кошки`
--

LOCK TABLES `Кошки` WRITE;
/*!40000 ALTER TABLE `Кошки` DISABLE KEYS */;
INSERT INTO `Кошки` VALUES (1,2,'Сиамская','Белый');
/*!40000 ALTER TABLE `Кошки` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Лошади`
--

DROP TABLE IF EXISTS `Лошади`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Лошади` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `вес` double DEFAULT NULL,
  `высота` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Лошади_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Лошади`
--

LOCK TABLES `Лошади` WRITE;
/*!40000 ALTER TABLE `Лошади` DISABLE KEYS */;
INSERT INTO `Лошади` VALUES (1,4,500,1.7);
/*!40000 ALTER TABLE `Лошади` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `МолодыеЖивотные`
--

DROP TABLE IF EXISTS `МолодыеЖивотные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `МолодыеЖивотные` (
  `id` int NOT NULL DEFAULT '0',
  `имя` varchar(50) DEFAULT NULL,
  `датаРождения` date DEFAULT NULL,
  `возраст_в_месяцах` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `МолодыеЖивотные`
--

LOCK TABLES `МолодыеЖивотные` WRITE;
/*!40000 ALTER TABLE `МолодыеЖивотные` DISABLE KEYS */;
INSERT INTO `МолодыеЖивотные` VALUES (1,'Бобик','2021-05-10',37),(2,'Мурка','2022-03-15',27),(3,'Снежок','2023-01-20',16),(4,'Буцефал','2020-07-01',47);
/*!40000 ALTER TABLE `МолодыеЖивотные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ослы`
--

DROP TABLE IF EXISTS `Ослы`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ослы` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `сила` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Ослы_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ослы`
--

LOCK TABLES `Ослы` WRITE;
/*!40000 ALTER TABLE `Ослы` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ослы` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Собаки`
--

DROP TABLE IF EXISTS `Собаки`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Собаки` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `порода` varchar(50) DEFAULT NULL,
  `цвет` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Собаки_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Собаки`
--

LOCK TABLES `Собаки` WRITE;
/*!40000 ALTER TABLE `Собаки` DISABLE KEYS */;
INSERT INTO `Собаки` VALUES (1,1,'Лабрадор','Желтый');
/*!40000 ALTER TABLE `Собаки` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Хомяки`
--

DROP TABLE IF EXISTS `Хомяки`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Хомяки` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  `размерКлетки` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Хомяки_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Хомяки`
--

LOCK TABLES `Хомяки` WRITE;
/*!40000 ALTER TABLE `Хомяки` DISABLE KEYS */;
INSERT INTO `Хомяки` VALUES (1,3,0.5);
/*!40000 ALTER TABLE `Хомяки` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 19:09:33
