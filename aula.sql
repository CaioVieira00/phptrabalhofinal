-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: diario
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `conteudo`
--
DROP DATABASE IF EXISTS `aula`;
CREATE DATABASE  `aula`;
USE `aula`;

DROP TABLE IF EXISTS `conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conteudo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(120) NOT NULL,
  `descricao` longtext NOT NULL,
  `horario` varchar(30) NOT NULL,
  `universidade_id` int(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (1,'Dev Web','Desenvolvimento Backend e Frontend','19:00',1);
INSERT INTO `conteudo` VALUES (2,'PI','Projetos Interdisciplinares','19:00',1);
INSERT INTO `conteudo` VALUES (3,'Tópicos Especiais','Ciência dos Dados','20:40',1);
INSERT INTO `conteudo` VALUES (4,'Dev Mobile','Aplicativos Híbridos e Nativos','20:40',1);
INSERT INTO `conteudo` VALUES (5,'POO','Estrutura de Dados','19:00',1);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidade_pessoas`
--

DROP TABLE IF EXISTS `universidade_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidade_pessoas` (
  `id_pessoa` int(11) DEFAULT NULL,
  `id_universidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade_pessoas`
--

LOCK TABLES `universidade_pessoas` WRITE;
/*!40000 ALTER TABLE `universidade_pessoas` DISABLE KEYS */;
/*!40000 ALTER TABLE `universidade_pessoas` ENABLE KEYS */;
INSERT INTO `universidade_pessoas` VALUES (1,1),(2,2);
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Joao Silva',20,80,1.8,1),(2,'Maíra Lemos',25,50,1.6,2);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidade`
--

DROP TABLE IF EXISTS `universidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `campus` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade`
--

LOCK TABLES `universidade` WRITE;
/*!40000 ALTER TABLE `universidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `universidade` ENABLE KEYS */;
INSERT INTO `universidade` VALUES (1,'UniBH','Estoril'),(2,'UniBH','Cristiano Machado');

UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-12  1:55:32
