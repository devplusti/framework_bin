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
-- Table structure for table `sys_perfil_formularios`
--

DROP TABLE IF EXISTS `sys_perfil_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_perfil_formularios` (
  `perfil` int(10) unsigned NOT NULL,
  `formulario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`perfil`,`formulario`),
  KEY `FK_formulario` (`formulario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_perfil_formularios`
--

LOCK TABLES `sys_perfil_formularios` WRITE;
/*!40000 ALTER TABLE `sys_perfil_formularios` DISABLE KEYS */;
INSERT INTO `sys_perfil_formularios` (`perfil`, `formulario`) VALUES (1,16),(1,17),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,45),(1,63),(1,75),(1,103),(1,113),(1,142),(1,143),(1,147),(1,154),(1,210),(1,211),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,71),(2,72),(2,73),(2,74),(2,75),(2,76),(2,77),(2,78),(2,79),(2,80),(2,81),(2,82),(2,83),(2,84),(2,85),(2,86),(2,87),(2,88),(2,89),(2,90),(2,91),(2,92),(2,93),(2,94),(2,95),(2,96),(2,97),(2,98),(2,99),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,118),(2,119),(2,120),(2,121),(2,122),(2,123),(2,124),(2,125),(2,126),(2,127),(2,128),(2,129),(2,130),(2,131),(2,132),(2,133),(2,134),(2,136),(2,137),(2,139),(2,140),(2,141),(2,142),(2,143),(2,144),(2,145),(2,146),(2,147),(2,148),(2,149),(2,150),(2,151),(2,152),(2,153),(2,154),(2,155),(2,157),(2,158),(2,159),(2,160),(2,162),(2,163),(2,164),(2,165),(2,166),(2,167),(2,168),(2,169),(2,170),(2,171),(2,172),(2,173),(2,174),(2,175),(2,176),(2,177),(2,178),(2,179),(2,180),(2,181),(2,182),(2,183),(2,184),(2,185),(2,186),(2,187),(2,188),(2,189),(2,190),(2,191),(2,192),(2,193),(2,194),(2,195),(2,196),(2,197),(2,199),(2,201),(2,202),(2,203),(2,204),(2,205),(2,207),(2,208),(2,209),(2,210),(2,211),(2,212),(2,213),(2,214),(2,215),(2,216),(2,217),(2,218),(2,220),(2,222),(2,223),(2,224),(2,225),(2,226),(2,227),(2,228),(2,229),(2,230),(2,231),(2,232),(2,233),(2,234),(2,235),(2,236),(2,237),(2,238),(2,239),(2,240),(2,242),(2,243),(2,244),(2,245),(2,246),(2,248),(2,249),(2,250),(2,251),(2,252),(2,253),(2,254),(2,259),(2,260),(2,262),(2,263),(2,264),(2,265),(3,7),(3,8),(3,12),(3,16),(3,18),(3,19),(3,20),(3,34),(3,43),(3,54),(3,62),(3,67),(3,68),(3,69),(3,72),(3,83),(3,85),(3,96),(3,98),(3,103),(3,112),(3,113),(3,123),(3,136),(3,147),(3,152),(3,164),(3,166),(3,169),(3,183),(4,7),(4,17),(4,20),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30),(4,50),(4,129),(4,141),(4,143),(4,147),(4,148),(4,151),(4,171),(4,172),(4,182),(4,187),(4,189),(4,199),(4,203),(4,204),(4,244),(5,1),(5,2),(5,7),(5,26),(5,69),(5,86),(5,130),(5,132),(5,160),(5,190),(5,193),(5,219),(5,234),(5,236),(5,238),(5,262),(6,1),(6,4),(6,6),(6,8),(6,16),(6,24),(6,25),(6,26),(6,27),(6,28),(6,29),(6,31),(6,33),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),(6,41),(6,48),(6,49),(6,52),(6,62),(6,64),(6,68),(6,80),(6,81),(6,82),(6,87),(6,88),(6,89),(6,90),(6,91),(6,92),(6,96),(6,98),(6,129),(6,136),(6,137),(6,144),(6,150),(6,157),(6,159),(6,163),(6,165),(6,167),(6,169),(6,183),(6,185),(6,186),(6,187),(6,194),(6,196),(6,204),(6,209),(6,224),(6,225),(6,227),(6,228),(6,231),(6,244),(6,248),(6,249),(9,5),(9,6),(9,21),(9,24),(9,25),(9,26),(9,27),(9,28),(9,32),(9,60),(9,61),(9,64),(9,65),(9,66),(9,79),(9,110),(9,120),(9,139),(9,143),(9,159),(9,226),(10,11),(10,32),(10,95),(10,159),(10,175),(10,201),(10,202),(10,229),(10,230),(10,235),(10,244),(10,261),(11,11),(11,32),(11,60),(11,61),(11,95),(11,121),(11,139),(11,140),(11,156),(12,45),(12,62),(12,63),(12,75),(12,96),(12,120),(12,150),(12,177),(12,185),(12,192),(12,197),(12,213),(12,217),(12,220),(12,223),(12,226),(12,239),(12,245),(13,5),(13,6),(13,55),(13,59),(13,60),(13,61),(13,64),(13,65),(13,66),(13,68),(13,79),(13,90),(13,110),(13,120),(13,121),(13,136),(13,147),(13,150),(13,153),(13,163),(13,175),(13,179),(13,213),(14,64),(14,124),(14,141),(14,147),(14,180),(15,111),(15,137),(15,142),(15,148),(15,160),(15,164),(15,170),(15,173),(15,174),(15,176),(15,180),(15,181),(15,183),(15,189),(15,207),(15,237),(15,244),(15,245),(16,13),(16,14),(16,46),(16,55),(16,62),(16,95),(16,96),(16,150),(16,174),(16,181),(16,208),(16,246),(16,247),(16,250),(17,17),(17,20),(17,113),(18,160),(19,55),(20,177),(20,178),(20,263),(20,264),(21,31),(21,36),(21,40),(21,77),(21,87),(21,90),(21,137),(21,158),(21,167),(21,231),(22,93),(23,184),(24,24),(24,25),(24,26),(24,27),(24,28),(24,29),(24,143),(24,145),(25,80),(25,188),(25,192),(25,216),(25,220),(25,223),(25,235),(25,245),(25,248),(25,249),(26,192),(26,216),(26,235),(28,113),(28,136),(28,184),(29,5),(29,6),(29,55),(29,64),(29,65),(29,66),(29,153),(29,185),(29,198),(30,172),(30,210),(30,211),(30,216),(31,211),(31,220),(32,244),(32,252),(32,253),(32,261);
/*!40000 ALTER TABLE `sys_perfil_formularios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:45:29