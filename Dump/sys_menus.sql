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
-- Table structure for table `sys_menus`
--

DROP TABLE IF EXISTS `sys_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menus` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `title` varchar(45) NOT NULL,
  `resource` varchar(100) NOT NULL,
  `master` int(10) unsigned NOT NULL DEFAULT '0',
  `can_data` int(10) unsigned NOT NULL DEFAULT '0',
  `can_param` varchar(100) NOT NULL DEFAULT '0',
  `lockup` int(10) unsigned NOT NULL,
  `type_lockup` varchar(100) NOT NULL,
  `usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` int(10) unsigned NOT NULL,
  `patch` varchar(100) NOT NULL,
  `root` varchar(50) DEFAULT NULL,
  `child` varchar(50) DEFAULT NULL,
  `child_parent` varchar(50) DEFAULT NULL,
  `formulario` int(10) unsigned NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menus`
--

LOCK TABLES `sys_menus` WRITE;
/*!40000 ALTER TABLE `sys_menus` DISABLE KEYS */;
INSERT INTO `sys_menus` (`codigo`, `descricao`, `title`, `resource`, `master`, `can_data`, `can_param`, `lockup`, `type_lockup`, `usuario`, `read_only`, `patch`, `root`, `child`, `child_parent`, `formulario`, `nivel`) VALUES (1,'Consulta de Clientes','Consulta Clientes','NovaMC.frmConsultaClientes',0,0,'0',0,'',1,0,'Vendas.Clientes','Vendas','Clientes',NULL,1,2),(2,'Vendas','Vendas','',0,0,'0',0,'',0,0,'Vendas','Vendas',NULL,NULL,0,1);
/*!40000 ALTER TABLE `sys_menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:56:46
