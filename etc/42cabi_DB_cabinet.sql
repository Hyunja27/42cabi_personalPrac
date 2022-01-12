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
-- Table structure for table `cabinet`
--

DROP TABLE IF EXISTS `cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinet` (
  `cabinet_id` int(11) NOT NULL AUTO_INCREMENT,
  `cabinet_num` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `floor` int(11) NOT NULL,
  `section` varchar(30) NOT NULL,
  `activation` tinyint(4) NOT NULL,
  PRIMARY KEY (`cabinet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinet`
--

LOCK TABLES `cabinet` WRITE;
/*!40000 ALTER TABLE `cabinet` DISABLE KEYS */;
INSERT INTO `cabinet` VALUES (1,141,'serom',2,'End of c2',0),(2,142,'serom',2,'End of c2',0),(3,143,'serom',2,'End of c2',0),(4,144,'serom',2,'End of c2',1),(5,145,'serom',2,'End of c2',1),(6,146,'serom',2,'End of c2',1),(7,147,'serom',2,'End of c2',1),(8,148,'serom',2,'End of c2',1),(9,89,'serom',2,'Oasis',0),(10,90,'serom',2,'Oasis',0),(11,91,'serom',2,'Oasis',1),(12,92,'serom',2,'Oasis',1),(13,93,'serom',2,'Oasis',0),(14,94,'serom',2,'Oasis',0),(15,95,'serom',2,'Oasis',1),(16,96,'serom',2,'Oasis',0),(17,97,'serom',2,'Oasis',0),(18,98,'serom',2,'Oasis',0),(19,99,'serom',2,'Oasis',1),(20,100,'serom',2,'Oasis',0),(21,101,'serom',2,'Oasis',1),(22,102,'serom',2,'Oasis',0),(23,103,'serom',2,'Oasis',0),(24,104,'serom',2,'Oasis',1),(25,105,'serom',2,'Oasis',1),(26,106,'serom',2,'Oasis',1),(27,107,'serom',2,'Oasis',0),(28,108,'serom',2,'Oasis',1),(29,109,'serom',2,'Oasis',1),(30,110,'serom',2,'Oasis',1),(31,111,'serom',2,'Oasis',1),(32,112,'serom',2,'Oasis',1),(33,113,'serom',2,'Oasis',1),(34,114,'serom',2,'Oasis',1),(35,115,'serom',2,'Oasis',1),(36,116,'serom',2,'Oasis',1),(37,117,'serom',2,'Oasis',0),(38,118,'serom',2,'Oasis',1),(39,119,'serom',2,'Oasis',1),(40,120,'serom',2,'Oasis',1),(41,121,'serom',2,'Oasis',1),(42,122,'serom',2,'Oasis',1),(43,123,'serom',2,'Oasis',1),(44,124,'serom',2,'Oasis',0),(45,125,'serom',2,'Oasis',1),(46,126,'serom',2,'Oasis',1),(47,127,'serom',2,'Oasis',1),(48,128,'serom',2,'Oasis',1),(49,129,'serom',2,'Oasis',0),(50,130,'serom',2,'Oasis',1),(51,131,'serom',2,'Oasis',1),(52,132,'serom',2,'Oasis',1),(53,133,'serom',2,'Oasis',1),(54,134,'serom',2,'Oasis',1),(55,135,'serom',2,'Oasis',1),(56,136,'serom',2,'Oasis',0),(57,137,'serom',2,'Oasis',0),(58,138,'serom',2,'Oasis',0),(59,139,'serom',2,'Oasis',1),(60,140,'serom',2,'Oasis',0),(61,17,'serom',2,'C1 - OA',0),(62,18,'serom',2,'C1 - OA',1),(63,19,'serom',2,'C1 - OA',1),(64,20,'serom',2,'C1 - OA',0),(65,21,'serom',2,'C1 - OA',0),(66,22,'serom',2,'C1 - OA',0),(67,23,'serom',2,'C1 - OA',0),(68,24,'serom',2,'C1 - OA',1),(69,25,'serom',2,'C1 - OA',1),(70,26,'serom',2,'C1 - OA',1),(71,27,'serom',2,'C1 - OA',0),(72,28,'serom',2,'C1 - OA',0),(73,29,'serom',2,'C1 - OA',1),(74,30,'serom',2,'C1 - OA',1),(75,31,'serom',2,'C1 - OA',1),(76,32,'serom',2,'C1 - OA',1),(77,33,'serom',2,'C1 - OA',0),(78,34,'serom',2,'C1 - OA',1),(79,35,'serom',2,'C1 - OA',0),(80,36,'serom',2,'C1 - OA',0),(81,1,'serom',2,'End of C1',1),(82,2,'serom',2,'End of C1',0),(83,3,'serom',2,'End of C1',0),(84,4,'serom',2,'End of C1',1),(85,5,'serom',2,'End of C1',0),(86,6,'serom',2,'End of C1',1),(87,7,'serom',2,'End of C1',0),(88,8,'serom',2,'End of C1',0),(89,9,'serom',2,'End of C1',1),(90,10,'serom',2,'End of C1',1),(91,11,'serom',2,'End of C1',0),(92,12,'serom',2,'End of C1',1),(93,13,'serom',2,'End of C1',0),(94,14,'serom',2,'End of C1',0),(95,15,'serom',2,'End of C1',0),(96,16,'serom',2,'End of C1',0),(97,37,'serom',2,'C1 - Terrace',1),(98,38,'serom',2,'C1 - Terrace',1),(99,39,'serom',2,'C1 - Terrace',0),(100,40,'serom',2,'C1 - Terrace',1),(101,41,'serom',2,'C1 - Terrace',1),(102,42,'serom',2,'C1 - Terrace',1),(103,43,'serom',2,'C1 - Terrace',0),(104,44,'serom',2,'C1 - Terrace',0),(105,45,'serom',2,'C1 - Terrace',0),(106,46,'serom',2,'C1 - Terrace',1),(107,47,'serom',2,'C1 - Terrace',0),(108,48,'serom',2,'C1 - Terrace',1),(109,49,'serom',2,'C1 - Terrace',0),(110,50,'serom',2,'C1 - Terrace',1),(111,51,'serom',2,'C1 - Terrace',0),(112,52,'serom',2,'C1 - Terrace',1),(113,53,'serom',2,'C1 - Terrace',1),(114,54,'serom',2,'C1 - Terrace',0),(115,55,'serom',2,'C1 - Terrace',1),(116,56,'serom',2,'C1 - Terrace',0),(117,57,'serom',2,'C1 - Terrace',0),(118,58,'serom',2,'C1 - Terrace',1),(119,59,'serom',2,'C1 - Terrace',1),(120,60,'serom',2,'C1 - Terrace',0),(121,61,'serom',2,'C1 - Terrace',1),(122,62,'serom',2,'C1 - Terrace',1),(123,63,'serom',2,'C1 - Terrace',0),(124,64,'serom',2,'C1 - Terrace',0),(125,65,'serom',2,'C1 - Terrace',0),(126,66,'serom',2,'C1 - Terrace',0),(127,67,'serom',2,'C1 - Terrace',1),(128,68,'serom',2,'C1 - Terrace',1),(129,69,'serom',2,'C1 - Terrace',1),(130,70,'serom',2,'C1 - Terrace',0),(131,71,'serom',2,'C1 - Terrace',0),(132,72,'serom',2,'C1 - Terrace',1),(133,73,'serom',2,'C1 - Terrace',0),(134,74,'serom',2,'C1 - Terrace',1),(135,75,'serom',2,'C1 - Terrace',0),(136,76,'serom',2,'C1 - Terrace',0),(137,77,'serom',2,'C1 - Terrace',1),(138,78,'serom',2,'C1 - Terrace',0),(139,79,'serom',2,'C1 - Terrace',1),(140,80,'serom',2,'C1 - Terrace',0),(141,81,'serom',2,'C1 - Terrace',1),(142,82,'serom',2,'C1 - Terrace',1),(143,83,'serom',2,'C1 - Terrace',0),(144,84,'serom',2,'C1 - Terrace',1),(145,85,'serom',2,'C1 - Terrace',1),(146,86,'serom',2,'C1 - Terrace',1),(147,87,'serom',2,'C1 - Terrace',1),(148,88,'serom',2,'C1 - Terrace',1),(149,89,'serom',4,'End of C4',0),(150,90,'serom',4,'End of C4',0),(151,91,'serom',4,'End of C4',1),(152,92,'serom',4,'End of C4',0),(153,93,'serom',4,'End of C4',1),(154,94,'serom',4,'End of C4',0),(155,95,'serom',4,'End of C4',1),(156,96,'serom',4,'End of C4',1),(157,97,'serom',4,'End of C4',0),(158,98,'serom',4,'End of C4',1),(159,99,'serom',4,'End of C4',0),(160,100,'serom',4,'End of C4',0),(161,37,'serom',4,'Oasis',0),(162,38,'serom',4,'Oasis',1),(163,39,'serom',4,'Oasis',0),(164,40,'serom',4,'Oasis',0),(165,41,'serom',4,'Oasis',1),(166,42,'serom',4,'Oasis',0),(167,43,'serom',4,'Oasis',0),(168,44,'serom',4,'Oasis',1),(169,45,'serom',4,'Oasis',0),(170,46,'serom',4,'Oasis',1),(171,47,'serom',4,'Oasis',1),(172,48,'serom',4,'Oasis',0),(173,49,'serom',4,'Oasis',1),(174,50,'serom',4,'Oasis',0),(175,51,'serom',4,'Oasis',0),(176,52,'serom',4,'Oasis',0),(177,53,'serom',4,'Oasis',0),(178,54,'serom',4,'Oasis',1),(179,55,'serom',4,'Oasis',0),(180,56,'serom',4,'Oasis',1),(181,57,'serom',4,'Oasis',1),(182,58,'serom',4,'Oasis',1),(183,59,'serom',4,'Oasis',0),(184,60,'serom',4,'Oasis',0),(185,61,'serom',4,'Oasis',0),(186,62,'serom',4,'Oasis',0),(187,63,'serom',4,'Oasis',0),(188,64,'serom',4,'Oasis',0),(189,65,'serom',4,'Oasis',0),(190,66,'serom',4,'Oasis',1),(191,67,'serom',4,'Oasis',0),(192,68,'serom',4,'Oasis',1),(193,69,'serom',4,'Oasis',1),(194,70,'serom',4,'Oasis',1),(195,71,'serom',4,'Oasis',1),(196,72,'serom',4,'Oasis',1),(197,73,'serom',4,'Oasis',0),(198,74,'serom',4,'Oasis',0),(199,75,'serom',4,'Oasis',0),(200,76,'serom',4,'Oasis',0),(201,77,'serom',4,'Oasis',0),(202,78,'serom',4,'Oasis',1),(203,79,'serom',4,'Oasis',1),(204,80,'serom',4,'Oasis',1),(205,81,'serom',4,'Oasis',1),(206,82,'serom',4,'Oasis',0),(207,83,'serom',4,'Oasis',1),(208,84,'serom',4,'Oasis',1),(209,85,'serom',4,'Oasis',1),(210,86,'serom',4,'Oasis',1),(211,87,'serom',4,'Oasis',0),(212,88,'serom',4,'Oasis',0),(213,17,'serom',4,'C3 - OA',0),(214,18,'serom',4,'C3 - OA',1),(215,19,'serom',4,'C3 - OA',0),(216,20,'serom',4,'C3 - OA',0),(217,21,'serom',4,'C3 - OA',0),(218,22,'serom',4,'C3 - OA',1),(219,23,'serom',4,'C3 - OA',0),(220,24,'serom',4,'C3 - OA',1),(221,25,'serom',4,'C3 - OA',1),(222,26,'serom',4,'C3 - OA',1),(223,27,'serom',4,'C3 - OA',0),(224,28,'serom',4,'C3 - OA',1),(225,29,'serom',4,'C3 - OA',1),(226,30,'serom',4,'C3 - OA',1),(227,31,'serom',4,'C3 - OA',1),(228,32,'serom',4,'C3 - OA',0),(229,33,'serom',4,'C3 - OA',1),(230,34,'serom',4,'C3 - OA',0),(231,35,'serom',4,'C3 - OA',0),(232,36,'serom',4,'C3 - OA',0),(233,1,'serom',4,'End of C3',0),(234,2,'serom',4,'End of C3',0),(235,3,'serom',4,'End of C3',1),(236,4,'serom',4,'End of C3',1),(237,5,'serom',4,'End of C3',0),(238,6,'serom',4,'End of C3',1),(239,7,'serom',4,'End of C3',1),(240,8,'serom',4,'End of C3',0),(241,9,'serom',4,'End of C3',1),(242,10,'serom',4,'End of C3',1),(243,11,'serom',4,'End of C3',1),(244,12,'serom',4,'End of C3',1),(245,13,'serom',4,'End of C3',0),(246,14,'serom',4,'End of C3',1),(247,15,'serom',4,'End of C3',0),(248,16,'serom',4,'End of C3',0),(249,17,'serom',5,'C5 - OA',1),(250,18,'serom',5,'C5 - OA',0),(251,19,'serom',5,'C5 - OA',1),(252,20,'serom',5,'C5 - OA',0),(253,21,'serom',5,'C5 - OA',1),(254,22,'serom',5,'C5 - OA',1),(255,23,'serom',5,'C5 - OA',0),(256,24,'serom',5,'C5 - OA',1),(257,25,'serom',5,'C5 - OA',0),(258,26,'serom',5,'C5 - OA',0),(259,27,'serom',5,'C5 - OA',0),(260,28,'serom',5,'C5 - OA',0),(261,29,'serom',5,'C5 - OA',1),(262,30,'serom',5,'C5 - OA',1),(263,31,'serom',5,'C5 - OA',0),(264,32,'serom',5,'C5 - OA',0),(265,33,'serom',5,'C5 - OA',1),(266,34,'serom',5,'C5 - OA',1),(267,35,'serom',5,'C5 - OA',1),(268,36,'serom',5,'C5 - OA',0),(269,1,'serom',5,'End of C5',0),(270,2,'serom',5,'End of C5',1),(271,3,'serom',5,'End of C5',0),(272,4,'serom',5,'End of C5',1),(273,5,'serom',5,'End of C5',1),(274,6,'serom',5,'End of C5',0),(275,7,'serom',5,'End of C5',1),(276,8,'serom',5,'End of C5',1),(277,9,'serom',5,'End of C5',0),(278,10,'serom',5,'End of C5',0),(279,11,'serom',5,'End of C5',0),(280,12,'serom',5,'End of C5',1),(281,13,'serom',5,'End of C5',1),(282,14,'serom',5,'End of C5',1),(283,15,'serom',5,'End of C5',1),(284,16,'serom',5,'End of C5',1),(285,37,'serom',5,'Oasis',1),(286,38,'serom',5,'Oasis',1),(287,39,'serom',5,'Oasis',0),(288,40,'serom',5,'Oasis',1),(289,41,'serom',5,'Oasis',1),(290,42,'serom',5,'Oasis',0),(291,43,'serom',5,'Oasis',0),(292,44,'serom',5,'Oasis',1),(293,45,'serom',5,'Oasis',1),(294,46,'serom',5,'Oasis',1),(295,47,'serom',5,'Oasis',0),(296,48,'serom',5,'Oasis',0),(297,49,'serom',5,'Oasis',1),(298,50,'serom',5,'Oasis',1),(299,51,'serom',5,'Oasis',1),(300,52,'serom',5,'Oasis',0),(301,53,'serom',5,'Oasis',1),(302,54,'serom',5,'Oasis',0),(303,55,'serom',5,'Oasis',0),(304,56,'serom',5,'Oasis',0),(305,57,'serom',5,'Oasis',1),(306,58,'serom',5,'Oasis',0),(307,59,'serom',5,'Oasis',1),(308,60,'serom',5,'Oasis',1),(309,61,'serom',5,'Oasis',1),(310,62,'serom',5,'Oasis',0),(311,63,'serom',5,'Oasis',0),(312,64,'serom',5,'Oasis',0),(313,65,'serom',5,'Oasis',1),(314,66,'serom',5,'Oasis',1),(315,67,'serom',5,'Oasis',0),(316,68,'serom',5,'Oasis',1),(317,69,'serom',5,'Oasis',1),(318,70,'serom',5,'Oasis',0),(319,71,'serom',5,'Oasis',0),(320,72,'serom',5,'Oasis',1),(321,73,'serom',5,'Oasis',1),(322,74,'serom',5,'Oasis',0),(323,75,'serom',5,'Oasis',1),(324,76,'serom',5,'Oasis',1),(325,77,'serom',5,'Oasis',0),(326,78,'serom',5,'Oasis',1),(327,79,'serom',5,'Oasis',0),(328,80,'serom',5,'Oasis',0),(329,81,'serom',5,'Oasis',0),(330,82,'serom',5,'Oasis',0),(331,83,'serom',5,'Oasis',0),(332,84,'serom',5,'Oasis',1),(333,85,'serom',5,'Oasis',0),(334,86,'serom',5,'Oasis',0),(335,87,'serom',5,'Oasis',0),(336,88,'serom',5,'Oasis',1),(337,89,'serom',5,'End of C6',0),(338,90,'serom',5,'End of C6',0),(339,91,'serom',5,'End of C6',1),(340,92,'serom',5,'End of C6',0),(341,93,'serom',5,'End of C6',1),(342,94,'serom',5,'End of C6',0),(343,95,'serom',5,'End of C6',1),(344,96,'serom',5,'End of C6',0);
/*!40000 ALTER TABLE `cabinet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 17:49:06