-- MySQL dump 10.13  Distrib 5.5.35, for Linux (x86_64)
--
-- Host: mic.dyns.net    Database: nova
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1-log

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
-- Table structure for table `sys_user_permission`
--

DROP TABLE IF EXISTS `sys_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` int(10) unsigned NOT NULL,
  `permission` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_permission`
--

LOCK TABLES `sys_user_permission` WRITE;
/*!40000 ALTER TABLE `sys_user_permission` DISABLE KEYS */;
INSERT INTO `sys_user_permission` (`id`, `usuario`, `permission`) VALUES (1,1,17),(2,144,1),(3,2,2),(4,1,3),(5,98,3),(6,144,3),(7,26,3),(8,25,3),(9,74,3),(10,10,3),(11,1,4),(12,2,4),(13,157,3),(14,10,5),(15,1,6),(16,2,6),(17,1,8),(18,8,7),(19,8,8),(20,7,7),(21,7,8),(22,168,7),(24,1,9),(25,25,9),(26,197,7),(27,1,7),(28,95,7),(29,1,10),(30,144,1),(31,25,6),(32,1,11),(33,1,12),(34,144,11),(35,19,12),(36,19,11),(37,23,7),(38,1,13),(39,168,13),(40,25,1),(41,13,11),(42,25,8),(43,1,14),(44,25,14),(45,220,7),(46,26,14),(47,1,16),(48,25,16),(49,1,2),(50,222,1),(51,222,17),(52,245,13),(53,144,7),(54,144,8),(55,1,18),(56,2,18),(57,1,20),(58,2,20),(59,25,20),(60,260,17),(61,222,19);
/*!40000 ALTER TABLE `sys_user_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:56:54
