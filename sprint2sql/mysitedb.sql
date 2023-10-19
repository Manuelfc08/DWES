-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2000) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `libro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comUsu` (`usuario_id`),
  KEY `fk_comLib` (`libro_id`),
  CONSTRAINT `fk_comLib` FOREIGN KEY (`libro_id`) REFERENCES `tLibros` (`id`),
  CONSTRAINT `fk_comUsu` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES
(1,'Obra maestra',1,2),
(2,'Una delicia de lectura',2,1),
(3,'Fantástico. No pudo ser mejor!!',3,5),
(4,'Qué magistral. Este autor es increíble',5,4),
(5,'Una novela para tener siempre cerca y releerla una y otra vez',4,3);
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tLibros`
--

DROP TABLE IF EXISTS `tLibros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tLibros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `isbn` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tLibros`
--

LOCK TABLES `tLibros` WRITE;
/*!40000 ALTER TABLE `tLibros` DISABLE KEYS */;
INSERT INTO `tLibros` VALUES
(1,'Riccardino','https://imagessl5.casadellibro.com/a/l/s7/65/9788418681165.webp','Novela negra','9788418681165'),
(2,'La forma del agua','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTerIE_3Ru-Nw2RQc8iudTbyzjRg0QQho4E6IX3jGp3tabXm8PE','Novela negra','9783404154012'),
(3,'El ladrón de meriendas','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSvJ2n2Av4HeHTh4Iqfy1BIvWriPsVRL7sa2vNeQT2Up0j6BxXs','Novela negra','9788498385618'),
(4,'El perro de terracota','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTRqafVFEFZWsaRoFhYLCxOCkO2gJZZxNZcdrY34aZhRatSF5ox','Novela negra','9783838764849'),
(5,'El primer caso de Montalbano','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS8XiO-_UTzH6AoKkQoQfE3GZfLenfFR6m7Afmjf5eBg0d9dpyu','Novela negra','9783404922321');
/*!40000 ALTER TABLE `tLibros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contrasena` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES
(1,'Jose','Martínez','jl@gmail.com','1234'),
(2,'Raúl','Soria','rsoria@gmail.com','9876'),
(3,'Pedro','Castro','pcastro@gmail.com','0000'),
(4,'Mari','Rozas','mrozas@gmail.com','1111'),
(5,'Mame','Faty','mfaty@gmail.com','5555');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-18 15:51:28
