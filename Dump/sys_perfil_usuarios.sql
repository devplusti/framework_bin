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
-- Table structure for table `sys_perfil_usuarios`
--

DROP TABLE IF EXISTS `sys_perfil_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_perfil_usuarios` (
  `perfil` int(10) unsigned NOT NULL,
  `usuarios` int(10) unsigned NOT NULL,
  PRIMARY KEY (`perfil`,`usuarios`),
  KEY `FK_usuarios` (`usuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_perfil_usuarios`
--

LOCK TABLES `sys_perfil_usuarios` WRITE;
/*!40000 ALTER TABLE `sys_perfil_usuarios` DISABLE KEYS */;
INSERT INTO `sys_perfil_usuarios` (`perfil`, `usuarios`) VALUES (1,23),(1,140),(1,144),(2,1),(2,2),(2,3),(2,25),(2,144),(3,4),(3,6),(3,7),(3,8),(3,13),(3,19),(3,23),(3,24),(3,26),(3,27),(3,95),(3,119),(3,139),(3,143),(3,144),(3,145),(3,168),(3,178),(3,197),(3,204),(3,211),(3,215),(3,220),(3,242),(3,243),(3,245),(3,250),(3,266),(3,268),(4,7),(4,16),(4,23),(4,26),(4,119),(4,182),(4,250),(4,266),(5,7),(5,8),(5,51),(6,10),(6,12),(6,13),(6,23),(6,26),(6,31),(6,49),(6,98),(6,108),(6,144),(6,150),(6,157),(6,182),(6,195),(6,197),(6,199),(6,203),(6,209),(6,211),(6,212),(6,241),(6,250),(6,263),(6,266),(9,12),(9,13),(9,19),(9,59),(9,71),(9,75),(9,91),(9,92),(9,98),(9,100),(9,103),(9,144),(9,150),(9,174),(9,190),(9,195),(9,199),(9,203),(9,209),(9,211),(9,212),(9,222),(9,236),(9,241),(10,87),(10,107),(10,194),(10,214),(10,222),(10,236),(10,269),(11,59),(11,87),(11,107),(11,110),(11,112),(11,118),(11,174),(11,190),(11,194),(11,214),(11,222),(11,223),(11,269),(12,13),(12,19),(12,23),(12,40),(12,59),(12,71),(12,87),(12,91),(12,98),(12,100),(12,108),(12,120),(12,147),(12,183),(12,193),(12,199),(12,211),(12,212),(12,222),(12,269),(13,19),(13,40),(13,71),(13,91),(13,100),(13,147),(13,222),(14,144),(14,157),(14,241),(15,23),(15,119),(15,139),(15,197),(15,268),(16,23),(16,120),(16,183),(16,193),(17,148),(17,149),(18,139),(18,268),(19,1),(19,2),(20,108),(20,164),(20,173),(21,119),(21,222),(21,260),(21,263),(22,144),(23,167),(24,71),(24,87),(24,100),(25,23),(25,182),(26,120),(26,183),(26,193),(26,222),(27,1),(27,2),(27,25),(28,10),(28,197),(29,190),(29,194),(29,236),(30,59),(30,144),(31,197),(32,87),(32,144),(32,269);
/*!40000 ALTER TABLE `sys_perfil_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:45:30
