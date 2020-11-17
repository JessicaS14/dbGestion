-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `idTicket` int NOT NULL AUTO_INCREMENT,
  `resumen` varchar(45) NOT NULL,
  `fechaCreacion` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `prioridad_idPrioridad` int NOT NULL,
  `estado_idEstado` int NOT NULL,
  `responsable_idResponsable` int NOT NULL,
  PRIMARY KEY (`idTicket`,`prioridad_idPrioridad`,`estado_idEstado`,`responsable_idResponsable`),
  KEY `fk_ticket_prioridad_idx` (`prioridad_idPrioridad`),
  KEY `fk_ticket_estado1_idx` (`estado_idEstado`),
  KEY `fk_ticket_responsable1_idx` (`responsable_idResponsable`),
  CONSTRAINT `FK78xo1osqmiomo82rsuotghrmh` FOREIGN KEY (`prioridad_idPrioridad`) REFERENCES `prioridad` (`idPrioridad`),
  CONSTRAINT `fk_ticket_estado1` FOREIGN KEY (`estado_idEstado`) REFERENCES `estado` (`idEstado`),
  CONSTRAINT `fk_ticket_prioridad` FOREIGN KEY (`prioridad_idPrioridad`) REFERENCES `prioridad` (`idPrioridad`),
  CONSTRAINT `fk_ticket_responsable1` FOREIGN KEY (`responsable_idResponsable`) REFERENCES `responsable` (`idResponsable`),
  CONSTRAINT `FKn9syontldxtrohtub9yxca0r0` FOREIGN KEY (`responsable_idResponsable`) REFERENCES `responsable` (`idResponsable`),
  CONSTRAINT `FKp94lnkagf7dvkb6j46pxgui1j` FOREIGN KEY (`estado_idEstado`) REFERENCES `estado` (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-17 12:17:33
