CREATE DATABASE  IF NOT EXISTS `42cabi_DB` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `42cabi_DB`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: 42cabi_DB
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `lent`
--

DROP TABLE IF EXISTS `lent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lent` (
  `lent_id` int(11) NOT NULL AUTO_INCREMENT,
  `lent_cabinet_id` int(11) NOT NULL,
  `lent_user_id` int(11) NOT NULL,
  `lent_time` datetime NOT NULL,
  `expire_time` datetime NOT NULL,
  `extension` tinyint(4) NOT NULL,
  PRIMARY KEY (`lent_id`),
  KEY `user_id_idx` (`lent_user_id`),
  KEY `cabinet_id_idx` (`lent_cabinet_id`),
  CONSTRAINT `lent_cabinet_id` FOREIGN KEY (`lent_cabinet_id`) REFERENCES `cabinet` (`cabinet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lent_user_id` FOREIGN KEY (`lent_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lent`
--

LOCK TABLES `lent` WRITE;
/*!40000 ALTER TABLE `lent` DISABLE KEYS */;
/*!40000 ALTER TABLE `lent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 17:49:05
