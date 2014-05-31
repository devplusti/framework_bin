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
-- Table structure for table `sys_proc`
--

DROP TABLE IF EXISTS `sys_proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_proc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proc_name` varchar(50) NOT NULL,
  `class_name` varchar(150) NOT NULL,
  `param_count` tinyint(3) unsigned NOT NULL,
  `proc_descr` text NOT NULL,
  `func_name` varchar(45) NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  `confirm_message` text,
  `reload_grid` tinyint(1) NOT NULL,
  `short_key` varchar(1) NOT NULL,
  `ok_msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_proc`
--

LOCK TABLES `sys_proc` WRITE;
/*!40000 ALTER TABLE `sys_proc` DISABLE KEYS */;
INSERT INTO `sys_proc` (`id`, `proc_name`, `class_name`, `param_count`, `proc_descr`, `func_name`, `confirm`, `confirm_message`, `reload_grid`, `short_key`, `ok_msg`) VALUES (1,'Procedimento de Teste','BLL.TranportadorasBLL',0,'Procedimento de Teste','GetValueParam',0,'Confirma o processamento da rotina de teste?',1,'P',NULL),(2,'Acerto de Contagem de Estoque','BLL.RegistroContagensBLL',0,'Realiza o Acerto de Estoque basedo em contagens físicas informadas no sistema','CerregarAcertos',1,'Confirma o processamento da rotina de acerto de estoque?',1,'E',NULL),(3,'Checagem de Estoque Antigo','BLL.RegistroContagensBLL',0,'Visualizar Histórico','RetornaHistorico',0,NULL,0,'V',NULL),(4,'Mostrar Consulta Detalhada','NovaMC.MCUtils',1,'Consulta Detalhada','LoadConsultaDetalhada',0,NULL,0,'P',NULL),(5,'Atualizar SG de Fornecedor','BLL.FornecedoresBLL',1,'Atualiza a Nota do sistema de gestão','UpdateSgNote',0,NULL,1,'S','Nota Atualizada com Sucesso!'),(6,'Mostrar Composição do IQF','NovaMC.MCUtils',1,'Mostrar Composição do IQF','LoadForneIQF',0,NULL,0,'I',NULL);
/*!40000 ALTER TABLE `sys_proc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:56:50
