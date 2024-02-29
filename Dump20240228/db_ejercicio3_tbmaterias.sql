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
-- Table structure for table `tbmaterias`
--

DROP TABLE IF EXISTS `tbmaterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbmaterias` (
  `id_materia` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_materia` varchar(100) DEFAULT NULL,
  `grupo_materia` int(11) DEFAULT NULL,
  `id_profesor` varchar(36) DEFAULT NULL,
  `cupos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materia`),
  KEY `FK_Materia_Profesor` (`id_profesor`),
  CONSTRAINT `FK_Materia_Profesor` FOREIGN KEY (`id_profesor`) REFERENCES `tbprofesores` (`id_profesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmaterias`
--

LOCK TABLES `tbmaterias` WRITE;
/*!40000 ALTER TABLE `tbmaterias` DISABLE KEYS */;
INSERT INTO `tbmaterias` VALUES ('544c424a-d6ab-11ee-ab3f-644ed7218d86','Matemáticas',1,'542feca6-d6ab-11ee-ab3f-644ed7218d86',29),('5455fb04-d6ab-11ee-ab3f-644ed7218d86','algebrafia',2,'54307114-d6ab-11ee-ab3f-644ed7218d86',31),('545772db-d6ab-11ee-ab3f-644ed7218d86','Literatura',1,'5431016a-d6ab-11ee-ab3f-644ed7218d86',27),('54584330-d6ab-11ee-ab3f-644ed7218d86','Biología',2,'5431bdce-d6ab-11ee-ab3f-644ed7218d86',31),('54593134-d6ab-11ee-ab3f-644ed7218d86','Física',1,'5432e321-d6ab-11ee-ab3f-644ed7218d86',29),('545a46b3-d6ab-11ee-ab3f-644ed7218d86','Química',2,'5433bfa0-d6ab-11ee-ab3f-644ed7218d86',28),('545b7a5d-d6ab-11ee-ab3f-644ed7218d86','Economía',1,'54342d77-d6ab-11ee-ab3f-644ed7218d86',26),('545c8f00-d6ab-11ee-ab3f-644ed7218d86','Geografía',2,'543494af-d6ab-11ee-ab3f-644ed7218d86',27),('545da463-d6ab-11ee-ab3f-644ed7218d86','Inglés',1,'5434f1a9-d6ab-11ee-ab3f-644ed7218d86',29),('545e6edf-d6ab-11ee-ab3f-644ed7218d86','Arte',2,'54355bb8-d6ab-11ee-ab3f-644ed7218d86',25),('545f2948-d6ab-11ee-ab3f-644ed7218d86','Programación',1,'5435c0c9-d6ab-11ee-ab3f-644ed7218d86',29),('545fcfe0-d6ab-11ee-ab3f-644ed7218d86','Educación Física',2,'54362436-d6ab-11ee-ab3f-644ed7218d86',24),('546073f7-d6ab-11ee-ab3f-644ed7218d86','Filosofía',1,'54369531-d6ab-11ee-ab3f-644ed7218d86',28),('54611d22-d6ab-11ee-ab3f-644ed7218d86','Psicología',2,'543705ab-d6ab-11ee-ab3f-644ed7218d86',26),('5461a928-d6ab-11ee-ab3f-644ed7218d86','Sociología',1,'54377df1-d6ab-11ee-ab3f-644ed7218d86',25);
/*!40000 ALTER TABLE `tbmaterias` ENABLE KEYS */;
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
