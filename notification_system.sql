-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: notification_system
-- ------------------------------------------------------
-- Server version	5.6.25-0ubuntu0.15.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `to_user` int(10) NOT NULL DEFAULT '0',
  `from_user` int(10) NOT NULL DEFAULT '0',
  `reference` int(10) NOT NULL DEFAULT '0',
  `type` enum('friend_request','mail','profile_comment','photo_comment') NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `to_user` (`to_user`),
  KEY `from_user` (`from_user`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1,2,2,'mail',1,'2015-10-25 09:25:06'),(2,1,2,2,'mail',1,'2015-10-25 09:45:27'),(3,1,2,2,'mail',1,'2015-10-25 09:45:47'),(4,1,2,2,'mail',1,'2015-10-25 09:52:22'),(5,1,2,2,'mail',1,'2015-10-25 09:52:33'),(6,1,2,2,'mail',1,'2015-10-25 09:52:43'),(7,1,2,2,'mail',1,'2015-10-25 09:52:53'),(8,1,2,2,'mail',1,'2015-10-25 09:53:03'),(9,1,2,2,'mail',1,'2015-10-25 09:53:13'),(10,1,2,2,'mail',0,'2015-10-25 09:53:23'),(11,1,2,2,'mail',0,'2015-10-25 09:53:33'),(12,1,2,2,'mail',0,'2015-10-25 09:53:43'),(13,1,2,2,'mail',0,'2015-10-25 09:53:53'),(14,1,2,2,'mail',0,'2015-10-25 09:54:03'),(15,1,2,2,'mail',0,'2015-10-25 09:54:13'),(16,1,2,2,'mail',1,'2015-10-25 09:54:23'),(17,1,2,2,'mail',1,'2015-10-25 09:54:33'),(18,1,2,2,'mail',1,'2015-10-25 09:54:43'),(19,1,2,2,'mail',1,'2015-10-25 09:54:53'),(20,1,2,2,'mail',1,'2015-10-25 09:55:03'),(21,1,2,2,'mail',1,'2015-10-25 09:55:13'),(22,1,2,2,'mail',1,'2015-10-25 09:55:23'),(23,1,2,2,'mail',1,'2015-10-25 09:55:33'),(24,1,2,2,'mail',1,'2015-10-25 09:55:43'),(25,1,2,2,'mail',1,'2015-10-25 09:55:53');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `defaultpic` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `displayName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Mahesh','','mahesh@gmail.com','Mahesh'),(2,'Sudeesh','',NULL,'Sudeesh');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-25 18:57:15
