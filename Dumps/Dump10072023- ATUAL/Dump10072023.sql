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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos`
--

LOCK TABLES `candidatos` WRITE;
/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */;
INSERT INTO `candidatos` VALUES (85,'LUANA DIAS MARTINS','05526146103','luanamartiins18@gmail.com','3293241','(61) 99829-0717',NULL,NULL,NULL,NULL,'12,121','21,212','20,000','121,212','212,121','121,212',NULL,NULL,5,2,3,3,NULL,NULL,NULL),(86,'maria aparecida ','80382240197','cidaoorio23@gmail.com','231321','(61) 99380-4471','312,321','2.132,131',NULL,NULL,'2.131,231','3.123,123','213,213','12.313,212','32.132,132','2.131,231',NULL,NULL,6,NULL,3,3,NULL,NULL,NULL),(87,'pedro alex','33391118040','peodjroori@gmail.com','1313231','(13) 21321-2321','32.321,213','321,321',NULL,NULL,'3.212,321','32,112','321,312','32.321,321','31.232,113','321,132',NULL,NULL,6,NULL,5,3,NULL,NULL,NULL),(88,'jdiaosjda adsijdas ','19667217060','dadsiudhgiuasdb@gmail.com','2131231','(31) 21232-1321','213,123','32.121,312',NULL,NULL,'213,321','321,321','2,332','21.313,212','3.212,321','213,321',NULL,NULL,6,NULL,7,2,NULL,NULL,NULL);
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
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operacao` varchar(255) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `demanda` varchar(255) DEFAULT NULL,
  `centro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'Banco do Brasil - Fábrica','Banco do Brasil','122671','1000131009'),(2,'Caixa - Programa Sociais','CAIXA','122514','1000501009'),(3,'Caixa - Cartões','CAIXA','132080','1000641009'),(4,'Caixa - SITEC','CAIXA','142106','1007441010'),(5,'Caixa - Agente Operador','CAIXA','140999','1007561009'),(6,'TJPA - Projetos/Sustentação','Tribunal de Justiça Estado do Pará','137403','1006391010'),(7,'CFM - BPM','Conselho Federal de Medicina','139175','1007301010'),(8,'DPF - Projetos/Sustentação','Departamento de Polícia Federal','124053','1000581009'),(9,'DG SG&A','Qintess','136868','2403011009'),(10,'BENCH QM','BENCH','146600','1099481009'),(11,'Banco do Brasil - Credenciamento','Banco do Brasil','144876','1007051009'),(12,'BENCH DG','BENCH','145854','1099181009');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculo`
--

LOCK TABLES `curriculo` WRITE;
/*!40000 ALTER TABLE `curriculo` DISABLE KEYS */;
INSERT INTO `curriculo` VALUES (32,'http://127.0.0.1:8080/download/portal.pdf',NULL);
/*!40000 ALTER TABLE `curriculo` ENABLE KEYS */;
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
INSERT INTO `etapa` VALUES (1,'Hunting'),(3,'Avaliação R&S'),(4,'Aprovado'),(5,'Vaga Cancelada ');
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
INSERT INTO `hibernate_sequence` VALUES (143);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_candidato`
--

DROP TABLE IF EXISTS `historico_candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_candidato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_inicio` datetime(6) DEFAULT NULL,
  `data_final` datetime(6) DEFAULT NULL,
  `vigente` varchar(255) DEFAULT NULL,
  `fk_status_candidato` int DEFAULT NULL,
  `fk_candidato` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4q03r3u5tfwntjo5yr0dl0pii` (`fk_candidato`),
  KEY `FK1c5usx82lbwbppyrje2d6n93f` (`fk_status_candidato`),
  CONSTRAINT `FK1c5usx82lbwbppyrje2d6n93f` FOREIGN KEY (`fk_status_candidato`) REFERENCES `status_candidato` (`id`),
  CONSTRAINT `FK4q03r3u5tfwntjo5yr0dl0pii` FOREIGN KEY (`fk_candidato`) REFERENCES `candidatos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_candidato`
--

LOCK TABLES `historico_candidato` WRITE;
/*!40000 ALTER TABLE `historico_candidato` DISABLE KEYS */;
INSERT INTO `historico_candidato` VALUES (69,'2023-06-22 17:25:54.165000','2023-06-22 17:26:18.540000','Não',13,85),(70,'2023-06-22 17:26:18.540000',NULL,'Sim',5,85);
/*!40000 ALTER TABLE `historico_candidato` ENABLE KEYS */;
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
INSERT INTO `historico_maquinas` VALUES (1,'2023-05-02 00:00:00','2023-05-02 00:00:00','Sim',1,78,1,'sasas','sasasa',1);
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
  `vigente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgsu6q27josi8k840qrdytst81` (`fk_usuario`),
  CONSTRAINT `FKgsu6q27josi8k840qrdytst81` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_operacao`
--

LOCK TABLES `historico_operacao` WRITE;
/*!40000 ALTER TABLE `historico_operacao` DISABLE KEYS */;
INSERT INTO `historico_operacao` VALUES (10,'2023-05-02 18:21:19','2023-05-02 19:38:40',80,'Não'),(11,'2023-05-02 19:38:40','2023-05-04 13:30:58',80,'Não'),(12,'2023-05-04 13:30:58','2023-05-04 13:39:24',80,'Não'),(13,'2023-05-04 13:39:24','2023-05-29 17:19:15',80,'Não'),(14,'2023-05-29 17:19:15','2023-05-29 17:35:38',80,'Não'),(15,'2023-05-29 17:35:38',NULL,80,'Sim');
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
-- Table structure for table `historico_proposta`
--

DROP TABLE IF EXISTS `historico_proposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_proposta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_final` datetime(6) DEFAULT NULL,
  `data_inicio` datetime(6) DEFAULT NULL,
  `vigente` varchar(255) DEFAULT NULL,
  `fk_proposta` int DEFAULT NULL,
  `fk_candidato` int DEFAULT NULL,
  `fk_status_candidato` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7jejlrq8ds77gjs5sb97w61u8` (`fk_proposta`),
  KEY `FKag05dsgbda09xo4ut6p3es1gt` (`fk_candidato`),
  KEY `FK65lmfg4ov41k6x5k5ctkd5rj6` (`fk_status_candidato`),
  CONSTRAINT `FK65lmfg4ov41k6x5k5ctkd5rj6` FOREIGN KEY (`fk_status_candidato`) REFERENCES `status_candidato` (`id`),
  CONSTRAINT `FK7jejlrq8ds77gjs5sb97w61u8` FOREIGN KEY (`fk_proposta`) REFERENCES `proposta` (`id`),
  CONSTRAINT `FKag05dsgbda09xo4ut6p3es1gt` FOREIGN KEY (`fk_candidato`) REFERENCES `candidatos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_proposta`
--

LOCK TABLES `historico_proposta` WRITE;
/*!40000 ALTER TABLE `historico_proposta` DISABLE KEYS */;
INSERT INTO `historico_proposta` VALUES (36,'2023-06-22 17:27:34.783000','2023-06-22 17:27:12.827000','Não',56,85,14),(37,NULL,'2023-06-22 17:27:34.783000','Sim',56,85,8);
/*!40000 ALTER TABLE `historico_proposta` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_usuario`
--

LOCK TABLES `historico_usuario` WRITE;
/*!40000 ALTER TABLE `historico_usuario` DISABLE KEYS */;
INSERT INTO `historico_usuario` VALUES (137,'2023-04-20 13:30:35',NULL,'Sim',1,79),(139,'2023-05-15 12:50:14',NULL,'Sim',168,85),(140,'2023-06-19 14:01:11',NULL,'Sim',14,86);
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
INSERT INTO `password_reset_token` VALUES (121,'2023-04-21 13:56:35.349000','bb50ec69-e49f-4c53-92ef-dfc484dba93a',80),(122,'2023-04-21 14:02:13.890000','ecb47cb3-f73e-405b-9866-c364144ea27c',80),(123,'2023-05-30 18:58:42.706000','2807ea30-4b32-4002-9948-51f6d86361d7',78),(124,'2023-05-30 18:58:54.408000','d424addd-df24-4554-85f6-2a7dd4726a00',78),(125,'2023-05-30 18:59:32.661000','d265cdd9-cd47-4f13-babe-aa6a58883cc3',80),(126,'2023-05-30 19:09:48.739000','265df7ef-5cf7-41ab-a071-1b9801cff005',80),(127,'2023-07-04 17:50:37.879000','61620e6f-5510-4366-997f-cf00ff62ec90',78),(128,'2023-07-04 17:53:42.493000','7366f1a3-1bff-43af-bab9-3834323e24de',78),(129,'2023-07-04 18:04:06.722000','1bfc6b80-8178-424e-8283-508a3666c0d7',78),(130,'2023-07-04 18:04:42.241000','b6f8f878-c939-495e-8657-3cee56e42f60',78),(131,'2023-07-05 14:11:21.968000','c200b2f3-599d-4a50-9a9e-29cb13d9c6f6',80),(132,'2023-07-05 14:14:37.496000','21122863-4f54-4c9a-84ac-f950a192bfbb',80),(133,'2023-07-05 14:33:06.920000','9fd19538-be94-4257-ab97-1e0c849c765e',78),(134,'2023-07-05 14:35:10.068000','12929368-9de3-424c-88f1-6c23b5c8cd85',78),(135,'2023-07-05 14:45:09.304000','d890abd0-6188-4348-9c2c-70c1663665a3',80),(136,'2023-07-05 14:45:34.323000','083654e8-870b-4d61-b2fd-53d696a1d0da',80),(137,'2023-07-05 14:46:00.615000','6b8cffa4-d030-4f70-8041-ab1f095ccdcf',80),(138,'2023-07-05 15:50:56.348000','a2c016ee-c817-4a7b-8fb8-bed82ba70e80',80),(139,'2023-07-05 16:08:07.662000','dd8b1cec-e90b-4672-b9fd-42491ab5f6cb',80),(140,'2023-07-05 16:09:04.536000','fad46cdd-3eee-4ecf-896b-02df62d24b51',80),(141,'2023-07-05 16:10:47.155000','8e49b0e4-399c-4435-9dfa-fe3dc1a835f8',80),(142,'2023-07-05 17:20:29.656000','4a801bb9-7f28-4ec6-8d7a-28144f823230',80);
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
-- Table structure for table `proposta`
--

DROP TABLE IF EXISTS `proposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flash` varchar(255) DEFAULT NULL,
  `plano_odonto` bit(1) DEFAULT NULL,
  `plano_saude` bit(1) DEFAULT NULL,
  `remuneracao` varchar(255) DEFAULT NULL,
  `seguro_vida` bit(1) DEFAULT NULL,
  `vale_alimetacao` bit(1) DEFAULT NULL,
  `vale_refeicao` bit(1) DEFAULT NULL,
  `fk_candidato` int DEFAULT NULL,
  `fk_status_candidato` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqm62qplc2torc634hly29sjo2` (`fk_candidato`),
  KEY `FKq2u95mmb46853yu5me4ri3l86` (`fk_status_candidato`),
  CONSTRAINT `FKq2u95mmb46853yu5me4ri3l86` FOREIGN KEY (`fk_status_candidato`) REFERENCES `status_candidato` (`id`),
  CONSTRAINT `FKqm62qplc2torc634hly29sjo2` FOREIGN KEY (`fk_candidato`) REFERENCES `candidatos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposta`
--

LOCK TABLES `proposta` WRITE;
/*!40000 ALTER TABLE `proposta` DISABLE KEYS */;
INSERT INTO `proposta` VALUES (56,'2,100',_binary '',_binary '','2,000',_binary '',_binary '\0',_binary '',85,8);
/*!40000 ALTER TABLE `proposta` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_candidato`
--

LOCK TABLES `status_candidato` WRITE;
/*!40000 ALTER TABLE `status_candidato` DISABLE KEYS */;
INSERT INTO `status_candidato` VALUES (1,'Análise Técnica '),(2,'Reprovação Técnica'),(3,'Declínio'),(4,'Contratado'),(5,'Aprovação Técnica'),(6,'Disponível'),(8,'Proposta Rejeitada'),(9,'Revisão de Proposta'),(10,'Aprovação Proposta'),(11,'Aprovado'),(12,'Avaliação Rh'),(13,'Aprovação Rh'),(14,'Elaboração de Prosposta');
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
  `codigo_re` varchar(100) DEFAULT NULL,
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
  `status` varchar(12) DEFAULT NULL,
  `fk_contrato` int DEFAULT NULL,
  `fk_tipo` int DEFAULT NULL,
  `fk_bu` int DEFAULT NULL,
  `fk_cargo` int DEFAULT NULL,
  `fk_equipamento` int DEFAULT NULL,
  `fk_memoria` int DEFAULT NULL,
  `fk_modelo` int DEFAULT NULL,
  `patrimonio` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `fk_perfil` int DEFAULT NULL,
  `primeiro_acesso` bit(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  KEY `fk_usuario_tipo1_idx` (`fk_tipo`),
  KEY `fk_usuario_bu1_idx` (`fk_bu`),
  KEY `fk_usuario_cargo1_idx` (`fk_cargo`),
  KEY `FKmutpu6khm2bk4fqugcdux6n6p` (`fk_equipamento`),
  KEY `FKk0glivat3o1k9ylol8c454gut` (`fk_memoria`),
  KEY `FK4m5p32o6hvm2xt9ggykjrlv8w` (`fk_modelo`),
  KEY `FKgcfnxp0psffuggb6r99iapwkh` (`fk_perfil`),
  KEY `FK35winxl9fsc9gjal635b3le4a` (`fk_contrato`),
  CONSTRAINT `FK35winxl9fsc9gjal635b3le4a` FOREIGN KEY (`fk_contrato`) REFERENCES `contrato` (`id`),
  CONSTRAINT `FK4m5p32o6hvm2xt9ggykjrlv8w` FOREIGN KEY (`fk_modelo`) REFERENCES `modelo` (`id`),
  CONSTRAINT `fk_usuario_bu1` FOREIGN KEY (`fk_bu`) REFERENCES `bu` (`id`),
  CONSTRAINT `fk_usuario_cargo1` FOREIGN KEY (`fk_cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `fk_usuario_tipo1` FOREIGN KEY (`fk_tipo`) REFERENCES `tipo` (`id`),
  CONSTRAINT `FKgcfnxp0psffuggb6r99iapwkh` FOREIGN KEY (`fk_perfil`) REFERENCES `perfil` (`id`),
  CONSTRAINT `FKk0glivat3o1k9ylol8c454gut` FOREIGN KEY (`fk_memoria`) REFERENCES `memoria` (`id`),
  CONSTRAINT `FKmutpu6khm2bk4fqugcdux6n6p` FOREIGN KEY (`fk_equipamento`) REFERENCES `equipamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (78,'re042125','MONALIZA LEITE','44443780009','212121d','ssp','2021-02-10','2001-04-12','QR 325 Conjunto 7','Brasília','05','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0714','zildadiasosoarioo@gmail.com','Ativo',NULL,3,1,17,3,3,5,'sasa','ssa',2,_binary '\0','b61eeb54db04dba851d77e3d469f871642131d99b32ba631a51eecdaa97957aa','2023-05-30',NULL),(79,'re042127','JULIANA DIAS MARTINS','40476121035','2312121','ssp','2023-04-13','2021-04-14','QR 325 Conjunto 7','Brasília','5','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0717','juliana.grigorio@qintess.com','Ativo',NULL,3,1,1,NULL,NULL,NULL,NULL,NULL,1,_binary '\0','b61eeb54db04dba851d77e3d469f871642131d99b32ba631a51eecdaa97957aa','2023-05-08',NULL),(80,'re042126','LUANA MARTINS ','05526146103','3293241','ssp','2023-04-13','2013-03-06','QR 325 Conjunto 7','Brasília','05','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0717','luana.martins@qintess.com','Ativo',11,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,_binary '\0','b61eeb54db04dba851d77e3d469f871642131d99b32ba631a51eecdaa97957aa','2023-05-24',NULL),(85,'RE037098','SIDNEY SERGIO LEITE DO NASCIMENTO','55980350144','1287516','ssp','2023-05-03','1974-11-19','QR 325 Conjunto 7','Brasília','21','Samambaia Sul (Samambaia)','72309807','DF','(61) 98450-6653','sidney.nascimento@qintess.com','Desligado',NULL,1,1,168,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','691f4fe6e7a5933184c2fb05677a6fced96b5b3437d8e189a1d34b19ad41cdf6','2023-05-02','2023-05-29'),(86,'re042129','MARIA APARECIDA DIAS OZORIO','80382240197','1741590','ssp/df','2023-01-23','1976-01-23','QR 325 Conjunto 7','Brasília','31','Samambaia Sul (Samambaia)','72309807','DF','(61) 99829-0812','maria.ozorio@gmail.com','Ativo',NULL,3,1,14,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','ab20975609bb01b562bd0eef54eb8fb0ddbab6e311554eae8a78970cfaf853f6','2023-06-19','2023-06-19');
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
  `fk_recrutador` int DEFAULT NULL,
  `fk_plano` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1g1btkx49jm23g9rcarr7pwvm` (`fk_etapa`),
  KEY `FKeu66miteeudlo4pcjmfseopjg` (`fk_status`),
  KEY `FKif3iydbyya5cw543ev2fxc7gn` (`fk_cargo`),
  KEY `FK5gqj6yl1edb9xf2iuavfehf0l` (`fk_especialidade`),
  KEY `FKlpi603bsqtiy9jik8xgp0xbcx` (`fk_bu`),
  KEY `FKq152n5l7on0yx8m1he48im1e2` (`fk_recrutador`),
  KEY `FK3kc0xsq3skuwas4qe9fbej0vh` (`fk_plano`),
  CONSTRAINT `FK1g1btkx49jm23g9rcarr7pwvm` FOREIGN KEY (`fk_etapa`) REFERENCES `etapa` (`id`),
  CONSTRAINT `FK3kc0xsq3skuwas4qe9fbej0vh` FOREIGN KEY (`fk_plano`) REFERENCES `plano_saude` (`id`),
  CONSTRAINT `FK5gqj6yl1edb9xf2iuavfehf0l` FOREIGN KEY (`fk_especialidade`) REFERENCES `especialidade` (`id`),
  CONSTRAINT `FKeu66miteeudlo4pcjmfseopjg` FOREIGN KEY (`fk_status`) REFERENCES `status` (`id`),
  CONSTRAINT `FKif3iydbyya5cw543ev2fxc7gn` FOREIGN KEY (`fk_cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `FKlpi603bsqtiy9jik8xgp0xbcx` FOREIGN KEY (`fk_bu`) REFERENCES `bu` (`id`),
  CONSTRAINT `FKq152n5l7on0yx8m1he48im1e2` FOREIGN KEY (`fk_recrutador`) REFERENCES `recrutador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
INSERT INTO `vagas` VALUES (1,'31212','707,00',NULL,'2.000,00',NULL,NULL,NULL,'2023-01-18','2023-03-07',1,4,47,4,2,1,1),(2,'21213','707,00',NULL,'1.213,12',NULL,NULL,'300,00','2023-02-10',NULL,3,2,14,13,1,1,2),(3,'12131','700,00',NULL,'200,00',NULL,NULL,NULL,'2023-02-23',NULL,1,1,89,20,1,2,3);
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

-- Dump completed on 2023-07-10 16:37:41
