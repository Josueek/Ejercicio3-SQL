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
-- Table structure for table `tbprofesores`
--

DROP TABLE IF EXISTS `tbprofesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbprofesores` (
  `id_profesor` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_profesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbprofesores`
--

LOCK TABLES `tbprofesores` WRITE;
/*!40000 ALTER TABLE `tbprofesores` DISABLE KEYS */;
INSERT INTO `tbprofesores` VALUES ('c1263bdf-d662-11ee-b40a-644ed7218d86','John','Doe','john.doe@example.com'),('c126b50c-d662-11ee-b40a-644ed7218d86','Jane','Smith','jane.smith@example.com'),('c12721b2-d662-11ee-b40a-644ed7218d86','Michael','Johnson','michael.johnson@example.com'),('c127b362-d662-11ee-b40a-644ed7218d86','Emily','Williams','emily.williams@example.com'),('c1283d17-d662-11ee-b40a-644ed7218d86','Christopher','Jones','christopher.jones@example.com'),('c128ab72-d662-11ee-b40a-644ed7218d86','Jessica','Brown','jessica.brown@example.com'),('c1291f6a-d662-11ee-b40a-644ed7218d86','David','Davis','david.davis@example.com'),('c129904b-d662-11ee-b40a-644ed7218d86','Sarah','Miller','sarah.miller@example.com'),('c12a0019-d662-11ee-b40a-644ed7218d86','Daniel','Wilson','daniel.wilson@example.com'),('c12a71b9-d662-11ee-b40a-644ed7218d86','Jennifer','Taylor','jennifer.taylor@example.com'),('c12adc68-d662-11ee-b40a-644ed7218d86','Matthew','Anderson','matthew.anderson@example.com'),('c12b4632-d662-11ee-b40a-644ed7218d86','Elizabeth','Thomas','elizabeth.thomas@example.com'),('c12bb778-d662-11ee-b40a-644ed7218d86','Andrew','Jackson','andrew.jackson@example.com'),('c12c27c3-d662-11ee-b40a-644ed7218d86','Lauren','White','lauren.white@example.com'),('c12c8a70-d662-11ee-b40a-644ed7218d86','William','Harris','william.harris@example.com');
/*!40000 ALTER TABLE `tbprofesores` ENABLE KEYS */;
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
