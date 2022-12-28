-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sobreInstituicoes
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cargosFuncionarios`
--

DROP TABLE IF EXISTS `cargosFuncionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargosFuncionarios` (
  `idcargos` int NOT NULL AUTO_INCREMENT,
  `nomes_cargos` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idcargos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargosFuncionarios`
--

LOCK TABLES `cargosFuncionarios` WRITE;
/*!40000 ALTER TABLE `cargosFuncionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargosFuncionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecoInstituicao`
--

DROP TABLE IF EXISTS `enderecoInstituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecoInstituicao` (
  `idEndereco` int NOT NULL AUTO_INCREMENT,
  `idInstituicao` int NOT NULL,
  `rua` varchar(200) DEFAULT NULL,
  `cidade` varchar(170) DEFAULT NULL,
  `bairro` varchar(170) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `endereco_fk_instituicao` (`idInstituicao`),
  CONSTRAINT `endereco_fk_instituicao` FOREIGN KEY (`idInstituicao`) REFERENCES `relatorioTPd` (`id_tpd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecoInstituicao`
--

LOCK TABLES `enderecoInstituicao` WRITE;
/*!40000 ALTER TABLE `enderecoInstituicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `enderecoInstituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `idfuncionarios` int NOT NULL AUTO_INCREMENT,
  `id_cargos` int NOT NULL,
  `nomes_funcionarios` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idfuncionarios`),
  KEY `cargos_fk_funcionarios` (`id_cargos`),
  CONSTRAINT `cargos_fk_funcionarios` FOREIGN KEY (`id_cargos`) REFERENCES `cargosFuncionarios` (`idcargos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorioTPd`
--

DROP TABLE IF EXISTS `relatorioTPd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorioTPd` (
  `id_tpd` int NOT NULL AUTO_INCREMENT,
  `nome_tpd` varchar(200) DEFAULT NULL,
  `codigo` varchar(7) DEFAULT NULL,
  `ead` tinyint(1) DEFAULT NULL,
  `site` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_tpd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorioTPd`
--

LOCK TABLES `relatorioTPd` WRITE;
/*!40000 ALTER TABLE `relatorioTPd` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatorioTPd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonesInstituicao`
--

DROP TABLE IF EXISTS `telefonesInstituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonesInstituicao` (
  `idtelefones` int NOT NULL AUTO_INCREMENT,
  `idInstituicao` int NOT NULL,
  `numeroTelefone` char(9) DEFAULT NULL,
  PRIMARY KEY (`idtelefones`),
  KEY `telefones_fk_instituicao` (`idInstituicao`),
  CONSTRAINT `telefones_fk_instituicao` FOREIGN KEY (`idInstituicao`) REFERENCES `relatorioTPd` (`id_tpd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonesInstituicao`
--

LOCK TABLES `telefonesInstituicao` WRITE;
/*!40000 ALTER TABLE `telefonesInstituicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefonesInstituicao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-28 11:58:42
