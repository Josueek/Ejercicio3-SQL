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
INSERT INTO `tbprofesores` VALUES ('542feca6-d6ab-11ee-ab3f-644ed7218d86','John','Doe','john.doe@example.com'),('54307114-d6ab-11ee-ab3f-644ed7218d86','Jane','Smith','jane.smith@example.com'),('5431016a-d6ab-11ee-ab3f-644ed7218d86','Michael','Johnson','michael.johnson@example.com'),('5431bdce-d6ab-11ee-ab3f-644ed7218d86','Emily','Williams','emily.williams@example.com'),('5432e321-d6ab-11ee-ab3f-644ed7218d86','Christopher','Jones','christopher.jones@example.com'),('5433bfa0-d6ab-11ee-ab3f-644ed7218d86','Jessica','Brown','jessica.brown@example.com'),('54342d77-d6ab-11ee-ab3f-644ed7218d86','David','Davis','david.davis@example.com'),('543494af-d6ab-11ee-ab3f-644ed7218d86','Sarah','Miller','sarah.miller@example.com'),('5434f1a9-d6ab-11ee-ab3f-644ed7218d86','Daniel','Wilson','daniel.wilson@example.com'),('54355bb8-d6ab-11ee-ab3f-644ed7218d86','Jennifer','Taylor','jennifer.taylor@example.com'),('5435c0c9-d6ab-11ee-ab3f-644ed7218d86','Matthew','Anderson','matthew.anderson@example.com'),('54362436-d6ab-11ee-ab3f-644ed7218d86','Elizabeth','Thomas','elizabeth.thomas@example.com'),('54369531-d6ab-11ee-ab3f-644ed7218d86','Andrew','Jackson','andrew.jackson@example.com'),('543705ab-d6ab-11ee-ab3f-644ed7218d86','Lauren','White','lauren.white@example.com'),('54377df1-d6ab-11ee-ab3f-644ed7218d86','William','Harris','william.harris@example.com');
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

-- Dump completed on 2024-02-28 20:41:25
