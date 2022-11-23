-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: indproject
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `registerationtable`
--

DROP TABLE IF EXISTS `registerationtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registerationtable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(455) NOT NULL,
  `email` varchar(244) NOT NULL,
  `account` varchar(453) NOT NULL,
  `phonenumber` bigint NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(78) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registerationtable`
--

LOCK TABLES `registerationtable` WRITE;
/*!40000 ALTER TABLE `registerationtable` DISABLE KEYS */;
INSERT INTO `registerationtable` VALUES (1,'sneha','snehabfbjsw@gmail.com','walmart',3748375435,'snehae','sneha'),(2,'sneha  Elsa Kurian','dhdhh@gmail.com','English',3456789767,'ret','re'),(3,'wt','ety@gmail.com','EQUIFACTS',4356213451,'t','t'),(4,'undefined','FDGHSF@GMAIL.COM','EQUIFACTS',4532135441,'Y','Y'),(5,'undefined','ey','walmart',5443565776,'tr','rr'),(6,'wefw','wfwe','ANTHEM',547375672547,'p','p'),(7,'ewtr','rey','ANTHEM',435648568,'dfg','r'),(8,'aer','rere','EQUIFACTS',4537567658,'g','g'),(9,'ywey','reywrey','EQUIFACTS',6456437,'ghg','ghg'),(10,'rtghrt','trghe','EQUIFACTS',46757,'d','d'),(12,'hfd','fdhfd','EQUIFACTS',678,'fg','fg'),(14,'thf','fghfg','EQUIFACTS',98,'vnxfg','hhhh'),(15,'deghsdf','fghfsgh','EQUIFACTS',7876,'fghfdgh','ggg'),(16,'bsdfb','fsdghsrdh','EQUIFACTS',87068,'vjnfdgjfdg','hhhh'),(17,'fdhdh','fghfrgh','EQUIFACTS',78970,'jnxdf','lll'),(19,'fgjfgj','ghjdghj','EQUIFACTS',870890,'ghjg','hhh'),(21,'fgn','gfhnj','EQUIFACTS',7879,'gjg','h'),(23,'q','q','EQUIFACTS',9,'q','q'),(24,'w','w','EQUIFACTS',9,'w','w'),(25,'e','e','EQUIFACTS',7,'e','e'),(26,'r','r','EQUIFACTS',4,'r','r'),(27,'u','u','EQUIFACTS',8,'u','u'),(29,'sgdahjhfjd','adagerghfdhtr','EQUIFACTS',789,'fghgfjhgfj','yui'),(31,'fghefg','fhfgjhgh','EQUIFACTS',8,'tyjytjy','ggg'),(32,'dfhsfdgh','fghfgjfg','EQUIFACTS',9,'fghsfgjfhj','ttt'),(33,'dfghdfh','fhsgfjf','EQUIFACTS',9,'fgjdfgjdgh','ggggk'),(34,'th4r','rtue5tr','EQUIFACTS',7868,'ghjt','ghjd'),(35,'hjh','jyyh','EQUIFACTS',87,'uhyuhy','$2a$07$2Q7DTEwSBke1PljehtXo8uV37wi4pB99VOOQOBnqR410cMxJcqzIq'),(38,'fghtyj','tyjetyj','EQUIFACTS',9,'k','$2a$07$UvL6sISd2S2iZk/1xJzSuuazpDngRqzuoA2pVwJ6n.8WGUxwqUJcu');
/*!40000 ALTER TABLE `registerationtable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 15:45:55
