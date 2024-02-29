-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ejercicio3
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `tbinscripciones`
--

DROP TABLE IF EXISTS `tbinscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbinscripciones` (
  `id_inscripcion` varchar(36) NOT NULL DEFAULT uuid(),
  `id_alumno` varchar(36) DEFAULT NULL,
  `id_materia` varchar(36) DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  PRIMARY KEY (`id_inscripcion`),
  KEY `FK_id_alumno_Inscripcion` (`id_alumno`),
  KEY `FK_Inscripcion_Materia` (`id_materia`),
  CONSTRAINT `FK_Inscripcion_Materia` FOREIGN KEY (`id_materia`) REFERENCES `tbmaterias` (`id_materia`),
  CONSTRAINT `FK_id_alumno_Inscripcion` FOREIGN KEY (`id_alumno`) REFERENCES `tbalumnos` (`id_alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbinscripciones`
--

LOCK TABLES `tbinscripciones` WRITE;
/*!40000 ALTER TABLE `tbinscripciones` DISABLE KEYS */;
INSERT INTO `tbinscripciones` VALUES ('8d6dd59f-d6ab-11ee-ab3f-644ed7218d86','54622c4f-d6ab-11ee-ab3f-644ed7218d86','544c424a-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d6efcd1-d6ab-11ee-ab3f-644ed7218d86','5462c210-d6ab-11ee-ab3f-644ed7218d86','5455fb04-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d6f77ca-d6ab-11ee-ab3f-644ed7218d86','546330c6-d6ab-11ee-ab3f-644ed7218d86','545772db-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d6ff848-d6ab-11ee-ab3f-644ed7218d86','5463a819-d6ab-11ee-ab3f-644ed7218d86','54584330-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d707770-d6ab-11ee-ab3f-644ed7218d86','54641ff0-d6ab-11ee-ab3f-644ed7218d86','54593134-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d71018a-d6ab-11ee-ab3f-644ed7218d86','5464837d-d6ab-11ee-ab3f-644ed7218d86','545a46b3-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d7186fe-d6ab-11ee-ab3f-644ed7218d86','5464f180-d6ab-11ee-ab3f-644ed7218d86','545b7a5d-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d720b86-d6ab-11ee-ab3f-644ed7218d86','5465566b-d6ab-11ee-ab3f-644ed7218d86','545c8f00-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d735cf5-d6ab-11ee-ab3f-644ed7218d86','5465c096-d6ab-11ee-ab3f-644ed7218d86','545da463-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d73d5d1-d6ab-11ee-ab3f-644ed7218d86','54662b24-d6ab-11ee-ab3f-644ed7218d86','545e6edf-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d745652-d6ab-11ee-ab3f-644ed7218d86','546689ee-d6ab-11ee-ab3f-644ed7218d86','545f2948-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d74ce4d-d6ab-11ee-ab3f-644ed7218d86','5466ed09-d6ab-11ee-ab3f-644ed7218d86','545fcfe0-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d755945-d6ab-11ee-ab3f-644ed7218d86','5467620c-d6ab-11ee-ab3f-644ed7218d86','546073f7-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d75d66a-d6ab-11ee-ab3f-644ed7218d86','5467c9b6-d6ab-11ee-ab3f-644ed7218d86','54611d22-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo'),('8d7655b4-d6ab-11ee-ab3f-644ed7218d86','546844a0-d6ab-11ee-ab3f-644ed7218d86','5461a928-d6ab-11ee-ab3f-644ed7218d86','2024-01-01','Activo');
/*!40000 ALTER TABLE `tbinscripciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 20:41:25
