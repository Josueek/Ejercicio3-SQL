-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ejercicio3
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
INSERT INTO `tbmaterias` VALUES ('c12cfaf7-d662-11ee-b40a-644ed7218d86','Matemáticas',1,'c1263bdf-d662-11ee-b40a-644ed7218d86',30),('c12d921a-d662-11ee-b40a-644ed7218d86','algebrafia',2,'c126b50c-d662-11ee-b40a-644ed7218d86',32),('c12e051e-d662-11ee-b40a-644ed7218d86','Literatura',1,'c12721b2-d662-11ee-b40a-644ed7218d86',28),('c12e7992-d662-11ee-b40a-644ed7218d86','Biología',2,'c127b362-d662-11ee-b40a-644ed7218d86',32),('c12edfc9-d662-11ee-b40a-644ed7218d86','Física',1,'c1283d17-d662-11ee-b40a-644ed7218d86',30),('c12f5d17-d662-11ee-b40a-644ed7218d86','Química',2,'c128ab72-d662-11ee-b40a-644ed7218d86',29),('c12fd228-d662-11ee-b40a-644ed7218d86','Economía',1,'c1291f6a-d662-11ee-b40a-644ed7218d86',27),('c130488d-d662-11ee-b40a-644ed7218d86','Geografía',2,'c129904b-d662-11ee-b40a-644ed7218d86',28),('c130b7a6-d662-11ee-b40a-644ed7218d86','Inglés',1,'c12a0019-d662-11ee-b40a-644ed7218d86',30),('c1311bae-d662-11ee-b40a-644ed7218d86','Arte',2,'c12a71b9-d662-11ee-b40a-644ed7218d86',26),('c1318da1-d662-11ee-b40a-644ed7218d86','Programación',1,'c12adc68-d662-11ee-b40a-644ed7218d86',30),('c131ee91-d662-11ee-b40a-644ed7218d86','Educación Física',2,'c12b4632-d662-11ee-b40a-644ed7218d86',25),('c13258e3-d662-11ee-b40a-644ed7218d86','Filosofía',1,'c12bb778-d662-11ee-b40a-644ed7218d86',29),('c132d33e-d662-11ee-b40a-644ed7218d86','Psicología',2,'c12c27c3-d662-11ee-b40a-644ed7218d86',27),('c133470b-d662-11ee-b40a-644ed7218d86','Sociología',1,'c12c8a70-d662-11ee-b40a-644ed7218d86',26);
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

-- Dump completed on 2024-02-28 11:59:16
