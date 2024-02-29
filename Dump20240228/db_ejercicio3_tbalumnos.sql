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
-- Table structure for table `tbalumnos`
--

DROP TABLE IF EXISTS `tbalumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbalumnos` (
  `id_alumno` varchar(36) NOT NULL DEFAULT uuid(),
  `carnet_alumno` varchar(10) DEFAULT NULL,
  `nombre_alumno` varchar(50) DEFAULT NULL,
  `apellido_alumno` varchar(50) DEFAULT NULL,
  `edad_alumno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbalumnos`
--

LOCK TABLES `tbalumnos` WRITE;
/*!40000 ALTER TABLE `tbalumnos` DISABLE KEYS */;
INSERT INTO `tbalumnos` VALUES ('54622c4f-d6ab-11ee-ab3f-644ed7218d86','AB123','Alice','Adams',20),('5462c210-d6ab-11ee-ab3f-644ed7218d86','CD456','Bob','Brown',22),('546330c6-d6ab-11ee-ab3f-644ed7218d86','EF789','Charlie','Clark',21),('5463a819-d6ab-11ee-ab3f-644ed7218d86','GH012','David','Davis',19),('54641ff0-d6ab-11ee-ab3f-644ed7218d86','IJ345','Emily','Evans',23),('5464837d-d6ab-11ee-ab3f-644ed7218d86','KL678','Fiona','Foster',20),('5464f180-d6ab-11ee-ab3f-644ed7218d86','MN901','George','Green',22),('5465566b-d6ab-11ee-ab3f-644ed7218d86','OP234','Hannah','Hall',21),('5465c096-d6ab-11ee-ab3f-644ed7218d86','QR567','Ian','Irwin',20),('54662b24-d6ab-11ee-ab3f-644ed7218d86','ST890','Jessica','Jones',23),('546689ee-d6ab-11ee-ab3f-644ed7218d86','UV123','Kevin','King',21),('5466ed09-d6ab-11ee-ab3f-644ed7218d86','WX456','Laura','Lee',22),('5467620c-d6ab-11ee-ab3f-644ed7218d86','YZ789','Matthew','Moore',19),('5467c9b6-d6ab-11ee-ab3f-644ed7218d86','AB012','Nancy','Nelson',20),('546844a0-d6ab-11ee-ab3f-644ed7218d86','CD345','Olivia','Owens',21);
/*!40000 ALTER TABLE `tbalumnos` ENABLE KEYS */;
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
