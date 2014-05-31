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
-- Table structure for table `sys_permission`
--

DROP TABLE IF EXISTS `sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` (`id`, `nome`, `descricao`) VALUES (1,'autoriza_preco','Essa permissão habilita o usuário a autorizar preços nos pedido de compra e encaminha-los a diretoria.'),(2,'autoriza_compra','Essa permissão habilita o usuário a autorizar um pedido de compra.'),(3,'visualiza_compra','Essa permissão habilita o usuário a visualizar pedidos de compras aprovados/reprovados'),(4,'autoriza_meta','Habilita o usuário a aprovar alterações de Metas'),(5,'bloqueia_impressao_compras','Bloqueia a Impressão de Pedidos de Compras'),(6,'autoriza_contas','Habilita o usuário a autorizar contas a pagar'),(7,'altera_preco','Habilita o usuário a alterar um preço fora da politica da empresa'),(8,'altera_desconto','Habilita o usuário a alterar o desconto padrão de um cliente'),(9,'altera_frete','Habilita o usuário a trocar o responsável pelo frete'),(10,'excluir_pedido','Habilita o Usuário a Excluir pedidos'),(11,'visualiza_desenho','Habilita o usuário a Visualizar um Desenho'),(12,'inclui_desenho','Habilita o usuário a incluir um desenho'),(13,'clientes_mj','Autoriza visualização de Cliente MJ Freios'),(14,'altera_apagar','Autoriza alteração de Titulo já pago'),(15,'oculta_pedido','Oculta pedidos de compra criados no sistema por outros usuários'),(16,'autoriza_data_compra','Autoriza qualquer data para pagamento'),(17,'autoriza_preco_usuario','Submete aprovacões de um usuário ou grupo especico para aprovação especpifica'),(18,'cancela_nf','Habilita o usuário a cancelar uma NF'),(19,'troca_maq_pcp','Habilita o usuário a trocar de Máquina'),(20,'exportar_grid','Habilita o usuário a exportar o conteudo dos grids');
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-31 10:56:49
