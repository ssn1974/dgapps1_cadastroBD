CREATE DATABASE  IF NOT EXISTS `gerdemandadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gerdemandadb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gerdemandadb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bu`
--

DROP TABLE IF EXISTS `bu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bu`
--

LOCK TABLES `bu` WRITE;
/*!40000 ALTER TABLE `bu` DISABLE KEYS */;
INSERT INTO `bu` VALUES (1,'APPS'),(2,'APPS2'),(3,'ITS'),(4,'S6GA');
/*!40000 ALTER TABLE `bu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidatos` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `bonus_atual` varchar(255) DEFAULT NULL,
  `bonus_pretensao` varchar(255) DEFAULT NULL,
  `cesta_atual` varchar(255) DEFAULT NULL,
  `cesta_pretensao` varchar(255) DEFAULT NULL,
  `flash_atual` varchar(255) DEFAULT NULL,
  `flash_pretensao` varchar(255) DEFAULT NULL,
  `remuneracao_atual` varchar(255) DEFAULT NULL,
  `remuneracao_pretensao` varchar(255) DEFAULT NULL,
  `vale_alimentacao_atual` varchar(255) DEFAULT NULL,
  `vale_alimentacao_pretensao` varchar(255) DEFAULT NULL,
  `vale_refeicao_atual` varchar(255) DEFAULT NULL,
  `vale_refeicao_pretensao` varchar(255) DEFAULT NULL,
  `fk_status_candidato` int DEFAULT NULL,
  `fk_vagas` int DEFAULT NULL,
  `fk_plano` int DEFAULT NULL,
  `fk_plano_pretensao` int DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `fk_curriculo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm1a3lc0rgg7jh7nrukyv4r403` (`fk_status_candidato`),
  KEY `FKjwphgs34x01ih8w48imvsltut` (`fk_vagas`),
  KEY `FKn0xr6ck1fwqk8yx1psd679nki` (`fk_plano`),
  KEY `FKeec1wkklnp1kbs012wgwr1py6` (`fk_plano_pretensao`),
  KEY `FK2orog6l58g77al9c4sq05t124` (`fk_curriculo`),
  CONSTRAINT `FK2orog6l58g77al9c4sq05t124` FOREIGN KEY (`fk_curriculo`) REFERENCES `curriculo` (`id`),
  CONSTRAINT `FKeec1wkklnp1kbs012wgwr1py6` FOREIGN KEY (`fk_plano_pretensao`) REFERENCES `plano_saude_pretensao` (`id`),
  CONSTRAINT `FKjwphgs34x01ih8w48imvsltut` FOREIGN KEY (`fk_vagas`) REFERENCES `vagas` (`id`),
  CONSTRAINT `FKm1a3lc0rgg7jh7nrukyv4r403` FOREIGN KEY (`fk_status_candidato`) REFERENCES `status_candidato` (`id`),
  CONSTRAINT `FKn0xr6ck1fwqk8yx1psd679nki` FOREIGN KEY (`fk_plano`) REFERENCES `plano_saude` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos`
--

LOCK TABLES `candidatos` WRITE;
/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */;
INSERT INTO `candidatos` VALUES (2,'MARIA APARECIDA DIAS OZORIO','80382240197','MARIAAPARECIDA@QINTESS.COM','3213131','(61) 99380-4447','29',NULL,NULL,NULL,NULL,NULL,'2000,00','3000,00','300,00','300,00',NULL,NULL,6,NULL,3,3,'','O candidato estava vinculado a uma vaga, porém foi disponibilizado para uma nova vaga ',29),(41,'LUANA DIAS MARTINS ','81575004003','luanadias@gmail.com','1212121','(61) 99829-0711','29',NULL,NULL,NULL,NULL,NULL,'100,000','21.231,311','200,000','213,111',NULL,NULL,6,NULL,9,8,'candidato reprovado por não ter o tempo de experiência adequada ','O candidato estava vinculado a uma vaga, porém foi disponibilizado para uma nova vaga ',29),(45,'monaliza leite ','80117301000','monalizaleite@gmail.com','8786757','(61) 99829-0722',NULL,NULL,NULL,NULL,NULL,NULL,'2.000,00','500,00','500,00','500,00',NULL,NULL,6,NULL,3,8,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Analista administrativo JR'),(2,'Analista administrativo PL'),(3,'Analista administrativo SR'),(4,'Assistente administrativo'),(5,'Coordenador administrativo 1'),(6,'Coordenador administrativo 2'),(7,'Agile Coach'),(8,'Agile Master'),(9,'Product owner'),(10,'Scrum Master'),(11,'Assistente Executiva JR'),(12,'Assistente Executiva PL'),(13,'Assistente Executiva SR'),(14,'Administrador de Banco de dados ESP'),(15,'Administrador de Banco de dados JR'),(16,'Administrador de Banco de dados PL'),(17,'Administrador de Banco de dados SR'),(18,'CFO'),(19,'Presidente'),(20,'Vice presidente comercial '),(21,'Vice presidente operações'),(22,'Analista compras JR'),(23,'Analista compras PL'),(24,'Analista compras SR'),(25,'Agente de atendiento'),(26,'Analista de Service Desk PL'),(27,'Analista de Service Desk JR'),(28,'Analista de Service Desk SR'),(30,'Analista de Suporte ESP'),(31,'Analista de Suporte JR'),(32,'Analista de Suporte PL'),(33,'Analista de Suporte SR'),(34,'Coordenador de Suporte'),(35,'Gerente de service Desk '),(36,'Gerente de Suporte'),(37,'Lider Técnico JR'),(38,'Lider Técnico PL'),(39,'Lider Técnico SR'),(40,'Supervisor de Suporte '),(41,'Técnico de Service Desk JR'),(42,'Técnico de Service Desk PL'),(43,'Técnico de Service Desk SR'),(44,'Técnico de Suporte JR'),(45,'Técnico de Suporte PL'),(46,'Técnico de Suporte SR'),(47,'Analista Facilities JR'),(48,'Analista Facilities PL'),(49,'Analista Facilities SR'),(50,'Assistente de Compras'),(51,'Assistente de  Facilities'),(52,'Coordenador de Compras'),(53,'Gerente de Compras'),(54,'Analista Desenvolvedor CRM ESP'),(55,'Analista Desenvolvedor CRM JR'),(56,'Analista Desenvolvedor CRM PL'),(57,'Analista Desenvolvedor CRM SR'),(58,'Analista Funcional CRM JR'),(59,'Analista Funcional CRM PL'),(60,'Analista Funcional CRM SR'),(61,'Técnico de Soluções JR'),(62,'Técnico de Soluções PL'),(63,'Técnico de Soluções SR'),(64,'Analista Business intelligence ESP'),(65,'Analista Business intelligence JR'),(66,'Analista Business intelligence MASTER'),(67,'Analista Business intelligence PL'),(68,'Analista Business intelligence SR'),(69,'Arquiteto de Dados ESP'),(70,'Arquiteto de Dados JR'),(71,'Arquiteto de Dados MASTER'),(72,'Arquiteto de Dados PL'),(73,'Arquiteto de Dados SR'),(74,'Ciêntista de Dados e Machine Learning ESP'),(75,'Ciêntista de Dados e Machine Learning JR'),(76,'Ciêntista de Dados e Machine Learning PL'),(77,'Ciêntista de Dados e Machine Learning SR'),(78,'Ciêntista de Dados e Machine Learning Master'),(79,'Coordenador de Dados'),(80,'Diretor de Dados'),(81,'Engenheiro de Dados ESP'),(82,'Engenheiro de Dados JR'),(83,'Engenheiro de Dados MASTER'),(84,'Engenheiro de Dados PL'),(85,'Engenheiro de Dados SR'),(86,'Gerente de Dados'),(87,'Analista de Sistema 1'),(88,'Analista de Sistema 2'),(89,'Analista de Sistema 3'),(90,'Analista de Sistema 4'),(91,'Analista de Sistema 5'),(92,'Analista de Sistema 6'),(93,'Analista de Sistema 7'),(94,'Analista de Desenvolvedor 1'),(95,'Analista de Desenvolvedor 2'),(96,'Analista de Desenvolvedor 3'),(97,'Analista de Desenvolvedor 4'),(98,'Analista de Desenvolvedor 5'),(99,'Analista de Desenvolvedor 6'),(100,'Analista de Desenvolvedor 7'),(101,'Arquiteto de Software JR'),(102,'Arquiteto de Software PL'),(103,'Arquiteto de Software SR'),(104,'Assistente Técnico 1'),(105,'Assistente Técnico 2'),(106,'Consultor Desenvolvedor 1'),(107,'Consultor Desenvolvedor 2'),(108,'Desenvolvedor ESP 1'),(109,'Desenvolvedor ESP 2'),(110,'Especialista de Sistema 1'),(111,'Especialista de Sistema 2'),(112,'Teach Lead 1'),(113,'Teach Lead 2'),(114,'Ux Designer ESP'),(115,'Ux Designer JR'),(116,'Ux Designer PL'),(117,'Ux Designer SR'),(118,'Ux Researcher'),(119,'Ux Writer ESP'),(120,'Ux Writer JR'),(121,'Ux Writer PL'),(122,'Ux Writer SR'),(123,'Web Designer ESP'),(124,'Web Designer JR'),(125,'Web Designer PL'),(126,'Web Designer SR'),(127,'Estagiário'),(128,'Jovem Aprendiz '),(129,'Analista Contabil/ Fiscal JR'),(130,'Analista Contabil/ Fiscal PL'),(131,'Analista Contabil/ Fiscal SR'),(132,'Analista de Controladoria JR'),(133,'Analista de Controladoria PL'),(134,'Analista de Controladoria SR'),(135,'Analista de Fiscal JR'),(136,'Analista de Fiscal PL'),(137,'Analista de Fiscal SR'),(138,'Controller'),(139,'Coordenador/ Fiscal '),(140,'Coordenador Controladoria'),(141,'Diretor de Relações com investidores'),(142,'Diretor de Tesouraria'),(143,'Gerente de Tesouraria'),(144,'Analista de Planejamento Financeiro ESP'),(145,'Analista de Planejamento Financeiro JR'),(146,'Analista de Planejamento Financeiro PL'),(147,'Analista de Planejamento Financeiro SR'),(148,'Analista Princing ESP'),(149,'Analista Princing JR'),(150,'Analista Princing PL'),(151,'Analista Princing SR'),(152,'Analista Financeiro ESP'),(153,'Analista Financeiro JR'),(154,'Analista Financeiro PL'),(155,'Analista Financeiro SR'),(156,'Assistente Financeiro'),(157,'Consultor Financeiro'),(158,'Coordenador de Planejamento Financeiro'),(159,'Coordenador de Princing'),(160,'Coordenador Fincaneiro 1'),(161,'Coordenador Fincaneiro 2'),(162,'Diretor de Planejamento Financeiro'),(163,'Gerente de Planejamento Financeiro PL'),(164,'Gerente de Planejamento Financeiro SR'),(165,'Coordenador de Projetos JR'),(166,'Coordenador de Projetos PL'),(167,'Coordenador de Projetos SR'),(168,'Diretor de Operações'),(169,'Gerente de Operações'),(170,'Gerente de Operações ESP'),(171,'Gerente de Projeto 1 '),(172,'Gerente de Projeto 2'),(173,'Gerente de Serviços'),(174,'PMO JR'),(175,'PMO PL'),(176,'PMO SR'),(177,'Analista de Infraestrutura ESP'),(178,'Analista de Infraestrutura JR'),(179,'Analista de Infraestrutura PL'),(180,'Analista de Infraestrutura SR'),(181,'Analista de Rede JR'),(182,'Analista de Rede PL'),(183,'Analista de Rede SR'),(184,'Consultor de Infraestrutura'),(185,'Coordenador de Infraestrutura'),(186,'Gerente de Infraestrutura'),(187,'Técnico de Infraestrutura '),(188,'Analista de Inovação JR'),(189,'Analista de Inovação SR'),(190,'Analista de Inovação PL'),(191,'Consultor de Inovação'),(192,'Gerente de Inovação'),(193,'Advogado JR'),(194,'Advogado PL'),(195,'Advogado SR'),(196,'Analista Juridico'),(197,'Assistente Juridico');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_custo`
--

DROP TABLE IF EXISTS `centro_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_custo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_custo`
--

LOCK TABLES `centro_custo` WRITE;
/*!40000 ALTER TABLE `centro_custo` DISABLE KEYS */;
INSERT INTO `centro_custo` VALUES (1,'1000131009'),(2,'1000501009'),(3,'1000641009'),(4,'1002091009'),(5,'1002091010'),(7,'1000581009'),(8,'1006391010'),(9,'1007301010'),(10,'1007561009'),(11,'1007441010'),(12,'1099031009');
/*!40000 ALTER TABLE `centro_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Banco do Brasil'),(2,'CAIXA'),(3,'Departamento de Polícia Federal'),(4,'Tribunal de Justiça Estado do Pará'),(5,'Conselho Federal de Medicina'),(6,'QINTESS'),(7,'BENCH');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculo`
--

DROP TABLE IF EXISTS `curriculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculo`
--

LOCK TABLES `curriculo` WRITE;
/*!40000 ALTER TABLE `curriculo` DISABLE KEYS */;
INSERT INTO `curriculo` VALUES (27,'http://127.0.0.1:8080/uploads/CurriculoLuana.pdf',NULL),(28,'http://127.0.0.1:8080/src/main/uploads/Dados maquinas.pdf',NULL),(29,'http://127.0.0.1:8080/download/valdivacurriculo.pdf',NULL);
/*!40000 ALTER TABLE `curriculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demanda`
--

DROP TABLE IF EXISTS `demanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demanda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demanda`
--

LOCK TABLES `demanda` WRITE;
/*!40000 ALTER TABLE `demanda` DISABLE KEYS */;
INSERT INTO `demanda` VALUES (1,'122671'),(2,'122514'),(3,'132080'),(4,'130906'),(5,'130460'),(6,'124053'),(7,'137403'),(8,'139175'),(9,'140999'),(10,'136868'),(11,'142106'),(12,'136828');
/*!40000 ALTER TABLE `demanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'NOTEBOOK'),(2,'PESSOAL'),(3,'CLIENTE'),(4,'MACKBOOK ');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Java - Full stack'),(2,'Java - Front'),(3,'Java - Back'),(4,'Cobol'),(5,'JCL'),(6,'Banco de Dados'),(7,'Scrum'),(8,'Agile'),(9,'PO'),(10,'Negócio/ Requisitos'),(11,'Teste'),(12,'BI'),(13,'UX'),(14,'Arquiteto'),(15,'Gestão'),(16,'Infraestrutura'),(17,'PHP'),(18,'Python'),(19,'C#'),(20,'.Net'),(21,'ADM'),(22,'Líder Técnico'),(23,'Ponto de Função'),(24,'Natural');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (1,'Hunting'),(2,'Avaliação Rh'),(3,'Aprovação Técnica'),(4,'Reprovação Técnica'),(5,'Elaboração de Proposta'),(6,'Proposta Rejeitada'),(7,'Revisão de Proposta'),(8,'Avaliação R&S'),(9,'Aprovado'),(10,'Vaga Cancelada ');
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (123);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_maquinas`
--

DROP TABLE IF EXISTS `historico_maquinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_maquinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_inicio` datetime DEFAULT NULL,
  `data_final` datetime DEFAULT NULL,
  `vigente` varchar(255) DEFAULT NULL,
  `fk_modelo` int NOT NULL,
  `fk_usuario` int NOT NULL,
  `fk_equipamento` int DEFAULT NULL,
  `patrimonio` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `fk_memoria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcyu9iu2a1c7admxf8f2esqtej` (`fk_usuario`),
  KEY `FKndl9rkypskrwwmnapuipar5ct` (`fk_modelo`),
  KEY `FKcx1lelmemb7h248a43os0nh9` (`fk_equipamento`),
  KEY `FK9pmg385sn51u95pw20909bxyc` (`fk_memoria`),
  CONSTRAINT `FK9pmg385sn51u95pw20909bxyc` FOREIGN KEY (`fk_memoria`) REFERENCES `memoria` (`id`),
  CONSTRAINT `FKcx1lelmemb7h248a43os0nh9` FOREIGN KEY (`fk_equipamento`) REFERENCES `equipamento` (`id`),
  CONSTRAINT `FKcyu9iu2a1c7admxf8f2esqtej` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKndl9rkypskrwwmnapuipar5ct` FOREIGN KEY (`fk_modelo`) REFERENCES `modelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_maquinas`
--

LOCK TABLES `historico_maquinas` WRITE;
/*!40000 ALTER TABLE `historico_maquinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_maquinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_operacao`
--

DROP TABLE IF EXISTS `historico_operacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_operacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_inicio` datetime DEFAULT NULL,
  `data_final` datetime DEFAULT NULL,
  `fk_usuario` int NOT NULL,
  `fk_operacao` int NOT NULL,
  `vigente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1wsn7tdchc3ubpt7uj2d9uckc` (`fk_operacao`),
  KEY `FKgsu6q27josi8k840qrdytst81` (`fk_usuario`),
  CONSTRAINT `FK1wsn7tdchc3ubpt7uj2d9uckc` FOREIGN KEY (`fk_operacao`) REFERENCES `operacao` (`id`),
  CONSTRAINT `FKgsu6q27josi8k840qrdytst81` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_operacao`
--

LOCK TABLES `historico_operacao` WRITE;
/*!40000 ALTER TABLE `historico_operacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_operacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_perfil`
--

DROP TABLE IF EXISTS `historico_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_perfil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_final` datetime(6) DEFAULT NULL,
  `data_inicio` datetime(6) DEFAULT NULL,
  `vigente` varchar(255) DEFAULT NULL,
  `fk_perfil` int DEFAULT NULL,
  `fk_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk5kmrf1rhpa4gesax2nj5fmpo` (`fk_perfil`),
  KEY `FKl904p4lx73lb0u2e1w6ecw247` (`fk_usuario`),
  CONSTRAINT `FKk5kmrf1rhpa4gesax2nj5fmpo` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FKl904p4lx73lb0u2e1w6ecw247` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_perfil`
--

LOCK TABLES `historico_perfil` WRITE;
/*!40000 ALTER TABLE `historico_perfil` DISABLE KEYS */;
INSERT INTO `historico_perfil` VALUES (7,NULL,'2023-04-20 13:58:39.207000','Sim',1,80);
/*!40000 ALTER TABLE `historico_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_usuario`
--

DROP TABLE IF EXISTS `historico_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_inicio` datetime DEFAULT NULL,
  `data_final` datetime DEFAULT NULL,
  `vigente` varchar(45) DEFAULT NULL,
  `fk_cargo` int NOT NULL,
  `fk_usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cargo` (`fk_cargo`),
  KEY `fk_usuario` (`fk_usuario`),
  CONSTRAINT `fk_cargo` FOREIGN KEY (`fk_cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_usuario`
--

LOCK TABLES `historico_usuario` WRITE;
/*!40000 ALTER TABLE `historico_usuario` DISABLE KEYS */;
INSERT INTO `historico_usuario` VALUES (137,'2023-04-20 13:30:35',NULL,'Sim',1,79);
/*!40000 ALTER TABLE `historico_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memoria`
--

DROP TABLE IF EXISTS `memoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memoria`
--

LOCK TABLES `memoria` WRITE;
/*!40000 ALTER TABLE `memoria` DISABLE KEYS */;
INSERT INTO `memoria` VALUES (1,'4GB'),(2,'8GB'),(3,'16GB');
/*!40000 ALTER TABLE `memoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (1,'MACBOOK'),(2,'THIINKPAD E14'),(3,'LENOVO B330'),(4,'HP 240G7'),(5,'DELL');
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacao`
--

DROP TABLE IF EXISTS `operacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operacao` (
  `id` int NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacao`
--

LOCK TABLES `operacao` WRITE;
/*!40000 ALTER TABLE `operacao` DISABLE KEYS */;
INSERT INTO `operacao` VALUES (1,'Banco do Brasil -  CC/SB'),(2,'Caixa - Programa Sociais'),(3,'Caixa - Cartões'),(4,'Caixa - SITEC'),(5,'DPF - Projetos/Sustentação'),(6,'TJPA - Projetos/Sustentação'),(7,'CFM - BPM'),(8,'Caixa - Agente Operador'),(9,'SG&A'),(10,'BENCH');
/*!40000 ALTER TABLE `operacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id` int NOT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaehv7qqwsde87cy79hxhy4lke` (`usuario_id`),
  CONSTRAINT `FKaehv7qqwsde87cy79hxhy4lke` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
INSERT INTO `password_reset_token` VALUES (121,'2023-04-21 13:56:35.349000','bb50ec69-e49f-4c53-92ef-dfc484dba93a',80),(122,'2023-04-21 14:02:13.890000','ecb47cb3-f73e-405b-9866-c364144ea27c',80);
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Administrador'),(2,'Gestor'),(3,'RH'),(4,'Colaborador');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano_saude`
--

DROP TABLE IF EXISTS `plano_saude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano_saude` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_saude`
--

LOCK TABLES `plano_saude` WRITE;
/*!40000 ALTER TABLE `plano_saude` DISABLE KEYS */;
INSERT INTO `plano_saude` VALUES (1,'Unimed'),(2,'SulAmérica '),(3,'Amil Assistência Médica'),(4,'One Health'),(5,'Bradesco Seguros'),(6,'Golden Cross'),(7,'NotreDame Intermédica'),(8,'Prevent Senior'),(9,'São Francisco Saúde'),(10,'Mediservice');
/*!40000 ALTER TABLE `plano_saude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano_saude_pretensao`
--

DROP TABLE IF EXISTS `plano_saude_pretensao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano_saude_pretensao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_saude_pretensao`
--

LOCK TABLES `plano_saude_pretensao` WRITE;
/*!40000 ALTER TABLE `plano_saude_pretensao` DISABLE KEYS */;
INSERT INTO `plano_saude_pretensao` VALUES (1,'Unimed'),(2,'SulAmérica '),(3,'Amil Assistência Médica'),(4,'One Health'),(5,'Bradesco Seguros'),(6,'Golden Cross'),(7,'NotreDame Intermédica'),(8,'Prevent Senior'),(9,'São Francisco Saúde'),(10,'Mediservice');
/*!40000 ALTER TABLE `plano_saude_pretensao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recrutador`
--

DROP TABLE IF EXISTS `recrutador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recrutador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recrutador`
--

LOCK TABLES `recrutador` WRITE;
/*!40000 ALTER TABLE `recrutador` DISABLE KEYS */;
INSERT INTO `recrutador` VALUES (1,'Naianne'),(2,'Nicole');
/*!40000 ALTER TABLE `recrutador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Aberto'),(2,'Andamento'),(3,'Concluído'),(4,'Cancelado');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_candidato`
--

DROP TABLE IF EXISTS `status_candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_candidato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_candidato`
--

LOCK TABLES `status_candidato` WRITE;
/*!40000 ALTER TABLE `status_candidato` DISABLE KEYS */;
INSERT INTO `status_candidato` VALUES (1,'Análise Técnica '),(2,'Reprovado'),(3,'Declinio'),(4,'Contratado'),(5,'Aprovado'),(6,'Disponível');
/*!40000 ALTER TABLE `status_candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'OPERAÇÕES/DG'),(2,'OPERAÇÕES/ITS'),(3,'FILIAS');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(12) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `org_emissor` varchar(45) DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `codigo_re` varchar(100) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `fk_tipo` int DEFAULT NULL,
  `fk_bu` int DEFAULT NULL,
  `fk_cargo` int DEFAULT NULL,
  `fk_centro` int DEFAULT NULL,
  `fk_cliente` int DEFAULT NULL,
  `fk_demanda` int DEFAULT NULL,
  `fk_operacao` int DEFAULT NULL,
  `fk_equipamento` int DEFAULT NULL,
  `fk_memoria` int DEFAULT NULL,
  `fk_modelo` int DEFAULT NULL,
  `patrimonio` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `fk_perfil` int DEFAULT NULL,
  `primeiro_acesso` bit(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  KEY `fk_usuario_tipo1_idx` (`fk_tipo`),
  KEY `fk_usuario_bu1_idx` (`fk_bu`),
  KEY `fk_usuario_cargo1_idx` (`fk_cargo`),
  KEY `FKrieylj3x685smkkxkwgyt3cdg` (`fk_cliente`),
  KEY `FKh9450xw0pg7s128xfywbjdilq` (`fk_operacao`),
  KEY `FK56bemriaolndai14tvbie4dlp` (`fk_centro`),
  KEY `FKes31e5lyq2ovn83umtlad8cwf` (`fk_demanda`),
  KEY `FKmutpu6khm2bk4fqugcdux6n6p` (`fk_equipamento`),
  KEY `FKk0glivat3o1k9ylol8c454gut` (`fk_memoria`),
  KEY `FK4m5p32o6hvm2xt9ggykjrlv8w` (`fk_modelo`),
  KEY `FKgcfnxp0psffuggb6r99iapwkh` (`fk_perfil`),
  CONSTRAINT `FK4m5p32o6hvm2xt9ggykjrlv8w` FOREIGN KEY (`fk_modelo`) REFERENCES `modelo` (`id`),
  CONSTRAINT `FK56bemriaolndai14tvbie4dlp` FOREIGN KEY (`fk_centro`) REFERENCES `centro_custo` (`id`),
  CONSTRAINT `fk_usuario_bu1` FOREIGN KEY (`fk_bu`) REFERENCES `bu` (`id`),
  CONSTRAINT `fk_usuario_cargo1` FOREIGN KEY (`fk_cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `fk_usuario_tipo1` FOREIGN KEY (`fk_tipo`) REFERENCES `tipo` (`id`),
  CONSTRAINT `FKes31e5lyq2ovn83umtlad8cwf` FOREIGN KEY (`fk_demanda`) REFERENCES `demanda` (`id`),
  CONSTRAINT `FKgcfnxp0psffuggb6r99iapwkh` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FKh9450xw0pg7s128xfywbjdilq` FOREIGN KEY (`fk_operacao`) REFERENCES `operacao` (`id`),
  CONSTRAINT `FKk0glivat3o1k9ylol8c454gut` FOREIGN KEY (`fk_memoria`) REFERENCES `memoria` (`id`),
  CONSTRAINT `FKmutpu6khm2bk4fqugcdux6n6p` FOREIGN KEY (`fk_equipamento`) REFERENCES `equipamento` (`id`),
  CONSTRAINT `FKrieylj3x685smkkxkwgyt3cdg` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (78,'Monaliza Leite','44443780009','212121d','ssp','2021-02-10','2001-04-12','QR 325 Conjunto 7','Brasília','05','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0714','zildadiasosoarioo@gmail.com','re042125','Ativo',3,1,17,5,2,2,10,3,3,5,'sasa','ssa',2,_binary '\0','dd3049ef6ba611d18915db5845b0cf53437e869b924d01b597740642e7d1cbd7'),(79,'JULIANA DIAS MARTINS','40476121035','2312121','ssp','2023-04-13','2021-04-14','QR 325 Conjunto 7','Brasília','5','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0717','juliana.grigorio@qintess.com','re042127','Ativo',3,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,_binary '\0','68fa1288b20a1fd98b437876da58364e6fcd55975c0f3357a55828fb2263a1b0'),(80,'LUANA MARTINS ','05526146103','3293241','ssp','2023-04-13','2013-03-06','QR 325 Conjunto 7','Brasília','05','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0717','luana.martins@qintess.com','re042126','Ativo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,_binary '\0','68fa1288b20a1fd98b437876da58364e6fcd55975c0f3357a55828fb2263a1b0');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas`
--

DROP TABLE IF EXISTS `vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qualitor` varchar(255) DEFAULT NULL,
  `vale_alimentacao` varchar(45) DEFAULT NULL,
  `vale_refeicao` varchar(45) DEFAULT NULL,
  `remuneracao` varchar(45) DEFAULT NULL,
  `bonus` varchar(45) DEFAULT NULL,
  `cesta` varchar(45) DEFAULT NULL,
  `flash` varchar(45) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `fk_etapa` int DEFAULT NULL,
  `fk_status` int DEFAULT NULL,
  `fk_cargo` int DEFAULT NULL,
  `fk_especialidade` int DEFAULT NULL,
  `fk_bu` int DEFAULT NULL,
  `fk_operacao` int DEFAULT NULL,
  `fk_recrutador` int DEFAULT NULL,
  `fk_plano` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1g1btkx49jm23g9rcarr7pwvm` (`fk_etapa`),
  KEY `FKeu66miteeudlo4pcjmfseopjg` (`fk_status`),
  KEY `FKif3iydbyya5cw543ev2fxc7gn` (`fk_cargo`),
  KEY `FK5gqj6yl1edb9xf2iuavfehf0l` (`fk_especialidade`),
  KEY `FKlpi603bsqtiy9jik8xgp0xbcx` (`fk_bu`),
  KEY `FKuyw8hkcpw6g8qdav8k4trv5i` (`fk_operacao`),
  KEY `FKq152n5l7on0yx8m1he48im1e2` (`fk_recrutador`),
  KEY `FK3kc0xsq3skuwas4qe9fbej0vh` (`fk_plano`),
  CONSTRAINT `FK1g1btkx49jm23g9rcarr7pwvm` FOREIGN KEY (`fk_etapa`) REFERENCES `etapa` (`id`),
  CONSTRAINT `FK3kc0xsq3skuwas4qe9fbej0vh` FOREIGN KEY (`fk_plano`) REFERENCES `plano_saude` (`id`),
  CONSTRAINT `FK5gqj6yl1edb9xf2iuavfehf0l` FOREIGN KEY (`fk_especialidade`) REFERENCES `especialidade` (`id`),
  CONSTRAINT `FKeu66miteeudlo4pcjmfseopjg` FOREIGN KEY (`fk_status`) REFERENCES `status` (`id`),
  CONSTRAINT `FKif3iydbyya5cw543ev2fxc7gn` FOREIGN KEY (`fk_cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `FKlpi603bsqtiy9jik8xgp0xbcx` FOREIGN KEY (`fk_bu`) REFERENCES `bu` (`id`),
  CONSTRAINT `FKq152n5l7on0yx8m1he48im1e2` FOREIGN KEY (`fk_recrutador`) REFERENCES `recrutador` (`id`),
  CONSTRAINT `FKuyw8hkcpw6g8qdav8k4trv5i` FOREIGN KEY (`fk_operacao`) REFERENCES `operacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
INSERT INTO `vagas` VALUES (1,'31212','707,00',NULL,'2.000,00',NULL,NULL,NULL,'2023-01-18','2023-03-07',9,4,47,4,2,1,1,1),(2,'21213','707,00',NULL,'1.213,12',NULL,NULL,NULL,'2023-02-10','2023-03-07',10,4,14,13,1,5,1,2),(3,'12131','700,00',NULL,'200,00',NULL,NULL,NULL,'2023-02-23',NULL,8,1,89,20,1,1,2,3);
/*!40000 ALTER TABLE `vagas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 10:15:58
