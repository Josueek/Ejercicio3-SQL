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
INSERT INTO `tbalumnos` VALUES ('c133b1ab-d662-11ee-b40a-644ed7218d86','AB123','Alice','Adams',20),('c134354a-d662-11ee-b40a-644ed7218d86','CD456','Bob','Brown',22),('c134a74e-d662-11ee-b40a-644ed7218d86','EF789','Charlie','Clark',21),('c1351b22-d662-11ee-b40a-644ed7218d86','GH012','David','Davis',19),('c1359bde-d662-11ee-b40a-644ed7218d86','IJ345','Emily','Evans',23),('c1360543-d662-11ee-b40a-644ed7218d86','KL678','Fiona','Foster',20),('c136790f-d662-11ee-b40a-644ed7218d86','MN901','George','Green',22),('c136e16c-d662-11ee-b40a-644ed7218d86','OP234','Hannah','Hall',21),('c1374c83-d662-11ee-b40a-644ed7218d86','QR567','Ian','Irwin',20),('c137bd13-d662-11ee-b40a-644ed7218d86','ST890','Jessica','Jones',23),('c1382c37-d662-11ee-b40a-644ed7218d86','UV123','Kevin','King',21),('c138988e-d662-11ee-b40a-644ed7218d86','WX456','Laura','Lee',22),('c1390004-d662-11ee-b40a-644ed7218d86','YZ789','Matthew','Moore',19),('c1397080-d662-11ee-b40a-644ed7218d86','AB012','Nancy','Nelson',20),('c139e443-d662-11ee-b40a-644ed7218d86','CD345','Olivia','Owens',21);
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

-- Dump completed on 2024-02-28 11:59:16
