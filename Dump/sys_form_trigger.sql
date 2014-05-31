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
-- Table structure for table `sys_form_trigger`
--

DROP TABLE IF EXISTS `sys_form_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_form_trigger` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form` int(10) unsigned NOT NULL,
  `trigger_name` varchar(50) NOT NULL,
  `type_call` varchar(1) NOT NULL,
  `proc_name` varchar(255) NOT NULL,
  `type_trigger` int(10) unsigned NOT NULL COMMENT '1 - Insert, 2 - Update 3 - Delete',
  `descricao` varchar(250) DEFAULT NULL,
  `param_count` int(10) unsigned NOT NULL DEFAULT '0',
  `show_message` tinyint(1) NOT NULL DEFAULT '0',
  `message` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_form_trigger`
--

LOCK TABLES `sys_form_trigger` WRITE;
/*!40000 ALTER TABLE `sys_form_trigger` DISABLE KEYS */;
INSERT INTO `sys_form_trigger` (`codigo`, `form`, `trigger_name`, `type_call`, `proc_name`, `type_trigger`, `descricao`, `param_count`, `show_message`, `message`) VALUES (1,231,'atualiza_estoque','P','atualiza_estoque(\'{0}\',\'{1}\',\'{2}\')',1,'Atualiza o Estoque Quando um novo Registro é Inserido',3,1,'Estoque do Item {2} foi atualizado com sucesso!'),(2,231,'atualiza_estoque_delete','P','atualiza_estoque_delete(\'{0}\',\'{1}\',\'{2}\')',3,'Retorna o valor do estoque quando o registro é deletado',3,1,'Estoque do Item {2} foi atualizado com sucesso!'),(3,150,'corrige_cadastro','P','update pecas set paralelo = null where paralelo =\'\';',1,'Corrige cadastro de peças',0,0,''),(4,150,'corrige_cadastro','P','update pecas set paralelo = null where paralelo =\'\';',2,'Corrige cadastro de peças',0,0,''),(5,0,'corrige_repr','P','update repr set saida = null where saida = \'0001-01-01\';',2,'Corrige cadastro de Representantes',0,0,'');
/*!40000 ALTER TABLE `sys_form_trigger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:45:32
