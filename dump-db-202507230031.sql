/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-ubu2204-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Asiento`
--

DROP TABLE IF EXISTS `Asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asiento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_bus` int(10) unsigned DEFAULT NULL,
  `id_tipoasiento` int(10) unsigned DEFAULT NULL,
  `planta` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Asiento_TipoAsiento_FK` (`id_tipoasiento`),
  KEY `Asiento_Bus_FK` (`id_bus`),
  CONSTRAINT `Asiento_Bus_FK` FOREIGN KEY (`id_bus`) REFERENCES `Bus` (`id`),
  CONSTRAINT `Asiento_TipoAsiento_FK` FOREIGN KEY (`id_tipoasiento`) REFERENCES `TipoAsiento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asiento`
--

LOCK TABLES `Asiento` WRITE;
/*!40000 ALTER TABLE `Asiento` DISABLE KEYS */;
INSERT INTO `Asiento` VALUES
(1,1,1,1),
(2,1,1,2),
(3,1,2,1),
(4,1,2,2),
(5,1,3,1),
(6,1,3,2),
(7,2,1,1),
(8,2,1,2),
(9,2,2,1),
(10,2,2,2),
(11,2,3,1),
(12,2,3,2),
(13,3,1,1),
(14,3,1,2),
(15,3,2,1),
(16,3,2,2),
(17,3,3,1),
(18,3,3,2),
(19,4,1,1),
(20,4,1,2),
(21,4,2,1),
(22,4,2,2),
(23,4,3,1),
(24,4,3,2),
(25,5,1,1),
(26,5,1,2),
(27,5,2,1),
(28,5,2,2),
(29,5,3,1),
(30,5,3,2);
/*!40000 ALTER TABLE `Asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bus`
--

DROP TABLE IF EXISTS `Bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` int(10) unsigned DEFAULT NULL,
  `numero` int(10) unsigned DEFAULT NULL,
  `patente` varchar(15) DEFAULT NULL,
  `capacidad` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Bus_Empresa_FK` (`id_empresa`),
  CONSTRAINT `Bus_Empresa_FK` FOREIGN KEY (`id_empresa`) REFERENCES `Empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bus`
--

LOCK TABLES `Bus` WRITE;
/*!40000 ALTER TABLE `Bus` DISABLE KEYS */;
INSERT INTO `Bus` VALUES
(1,1,101,'ABC123',40),
(2,1,102,'DEF456',40),
(3,2,201,'GHI789',50),
(4,2,202,'JKL012',50),
(5,3,301,'MNO345',45);
/*!40000 ALTER TABLE `Bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ciudad`
--

DROP TABLE IF EXISTS `Ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ciudad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_provincia` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Ciudad_Provincia_FK` (`id_provincia`),
  CONSTRAINT `Ciudad_Provincia_FK` FOREIGN KEY (`id_provincia`) REFERENCES `Provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ciudad`
--

LOCK TABLES `Ciudad` WRITE;
/*!40000 ALTER TABLE `Ciudad` DISABLE KEYS */;
INSERT INTO `Ciudad` VALUES
(1,1,'La Plata'),
(2,1,'Mar del Plata'),
(3,1,'Bahía Blanca'),
(4,2,'Córdoba'),
(5,2,'Villa Carlos Paz'),
(6,2,'Monte Buey	'),
(7,3,'Santa Fe'),
(8,3,'Rafaela'),
(9,3,'Rosario'),
(10,4,'Mendoza'),
(11,4,'San Rafael'),
(12,4,'Godoy Cruz'),
(13,5,'San Miguel de Tucumán'),
(14,5,'Tafí Viejo'),
(15,5,'Concepción'),
(16,6,'Paraná'),
(17,6,'Concordia'),
(18,6,'Gualeguaychú'),
(19,7,'Salta'),
(20,7,'Orán'),
(21,7,'Tartagal'),
(22,8,'Neuquén'),
(23,8,'San Martín de los Andes'),
(24,8,'Zapala'),
(25,9,'Resistencia'),
(26,9,'Sáenz Peña'),
(27,9,'Villa Ángela'),
(28,10,'Bariloche'),
(29,10,'Viedma'),
(30,10,'Mainque');
/*!40000 ALTER TABLE `Ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documento_tipo` varchar(50) DEFAULT NULL,
  `documento_numero` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES
(1,'DNI','30123456','Ana','Pérez','1985-04-12'),
(2,'DNI','30234567','Juan','García','1990-09-23'),
(3,'DNI','30345678','María','López','1988-12-05'),
(4,'DNI','30456789','Pedro','González','1979-07-30'),
(5,'DNI','30567890','Lucía','Fernández','1992-03-17'),
(6,'DNI','30678901','Carlos','Torres','1983-11-08'),
(7,'DNI','30789012','Sofía','Díaz','1995-06-21'),
(8,'DNI','30890123','Diego','Romero','1987-02-14'),
(9,'DNI','30901234','Martina','Ruiz','1991-08-02'),
(10,'DNI','30012345','Matías','Gómez','1984-05-29');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES
(1,'FlechaBus'),
(2,'AndesMar'),
(3,'TBA');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parada`
--

DROP TABLE IF EXISTS `Parada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ciudad` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Parada_Ciudad_FK` (`id_ciudad`),
  CONSTRAINT `Parada_Ciudad_FK` FOREIGN KEY (`id_ciudad`) REFERENCES `Ciudad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parada`
--

LOCK TABLES `Parada` WRITE;
/*!40000 ALTER TABLE `Parada` DISABLE KEYS */;
INSERT INTO `Parada` VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30);
/*!40000 ALTER TABLE `Parada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pasaje`
--

DROP TABLE IF EXISTS `Pasaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pasaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_servicio` int(10) unsigned DEFAULT NULL,
  `id_cliente` int(10) unsigned DEFAULT NULL,
  `id_asiento` int(10) unsigned DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `importe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Pasaje_UNIQUE` (`id_servicio`,`id_asiento`),
  KEY `Pasaje_Cliente_FK` (`id_cliente`),
  KEY `Pasaje_Asiento_FK` (`id_asiento`),
  CONSTRAINT `Pasaje_Asiento_FK` FOREIGN KEY (`id_asiento`) REFERENCES `Asiento` (`id`),
  CONSTRAINT `Pasaje_Cliente_FK` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id`),
  CONSTRAINT `Pasaje_Servicio_FK` FOREIGN KEY (`id_servicio`) REFERENCES `Servicio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pasaje`
--

LOCK TABLES `Pasaje` WRITE;
/*!40000 ALTER TABLE `Pasaje` DISABLE KEYS */;
INSERT INTO `Pasaje` VALUES
(1,1,1,1,'2025-06-01',100),
(2,1,2,2,'2025-06-02',100),
(3,2,3,7,'2025-06-03',110),
(4,2,4,8,'2025-06-04',110),
(5,3,5,13,'2025-06-05',120),
(6,3,6,14,'2025-06-06',120),
(7,4,7,19,'2025-06-07',150),
(8,4,8,20,'2025-06-08',150),
(9,5,9,25,'2025-06-09',170),
(10,5,10,26,'2025-06-10',170);
/*!40000 ALTER TABLE `Pasaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provincia`
--

DROP TABLE IF EXISTS `Provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Provincia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provincia`
--

LOCK TABLES `Provincia` WRITE;
/*!40000 ALTER TABLE `Provincia` DISABLE KEYS */;
INSERT INTO `Provincia` VALUES
(1,'Buenos Aires'),
(2,'Córdoba'),
(3,'Santa Fe'),
(4,'Mendoza'),
(5,'Tucumán'),
(6,'Entre Ríos'),
(7,'Salta'),
(8,'Neuquén'),
(9,'Chaco'),
(10,'Río negro');
/*!40000 ALTER TABLE `Provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servicio`
--

DROP TABLE IF EXISTS `Servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_bus` int(10) unsigned DEFAULT NULL,
  `id_parada_origen` int(10) unsigned DEFAULT NULL,
  `id_parada_destino` int(10) unsigned DEFAULT NULL,
  `fecha_salida` datetime DEFAULT NULL,
  `fecha_llegada` datetime DEFAULT NULL,
  `duracion_minutos` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Servicio_Parada_FK` (`id_parada_origen`),
  KEY `Servicio_Parada_FK_1` (`id_parada_destino`),
  KEY `Servicio_Bus_FK` (`id_bus`),
  CONSTRAINT `Servicio_Bus_FK` FOREIGN KEY (`id_bus`) REFERENCES `Bus` (`id`),
  CONSTRAINT `Servicio_Parada_FK` FOREIGN KEY (`id_parada_origen`) REFERENCES `Parada` (`id`),
  CONSTRAINT `Servicio_Parada_FK_1` FOREIGN KEY (`id_parada_destino`) REFERENCES `Parada` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicio`
--

LOCK TABLES `Servicio` WRITE;
/*!40000 ALTER TABLE `Servicio` DISABLE KEYS */;
INSERT INTO `Servicio` VALUES
(1,1,1,7,'2025-06-15 08:00:00','2025-06-15 14:00:00',360),
(2,2,4,10,'2025-06-16 09:30:00','2025-06-16 15:45:00',375),
(3,3,7,13,'2025-06-17 07:15:00','2025-06-17 13:00:00',345),
(4,4,2,29,'2025-06-18 22:00:00','2025-06-19 06:00:00',480),
(5,5,5,21,'2025-06-19 11:00:00','2025-06-19 18:30:00',450);
/*!40000 ALTER TABLE `Servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServicioParada`
--

DROP TABLE IF EXISTS `ServicioParada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ServicioParada` (
  `id_servicio` int(10) unsigned NOT NULL,
  `id_parada` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_servicio`,`id_parada`),
  KEY `ServicioParada_Parada_FK` (`id_parada`),
  CONSTRAINT `ServicioParada_Parada_FK` FOREIGN KEY (`id_parada`) REFERENCES `Parada` (`id`),
  CONSTRAINT `ServicioParada_Servicio_FK` FOREIGN KEY (`id_servicio`) REFERENCES `Servicio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServicioParada`
--

LOCK TABLES `ServicioParada` WRITE;
/*!40000 ALTER TABLE `ServicioParada` DISABLE KEYS */;
INSERT INTO `ServicioParada` VALUES
(1,1,1),
(1,3,2),
(1,5,3),
(1,7,4),
(2,4,1),
(2,6,2),
(2,8,3),
(2,10,4),
(3,7,1),
(3,9,2),
(3,11,3),
(3,13,4),
(4,2,1),
(4,15,2),
(4,29,3),
(5,5,1),
(5,10,2),
(5,21,3);
/*!40000 ALTER TABLE `ServicioParada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarifa`
--

DROP TABLE IF EXISTS `Tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tarifa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` int(10) unsigned DEFAULT NULL,
  `id_tipoasiento` int(10) unsigned DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tarifa_UNIQUE` (`id_empresa`,`id_tipoasiento`),
  KEY `Tarifa_TipoAsiento_FK` (`id_tipoasiento`),
  CONSTRAINT `Tarifa_Empresa_FK` FOREIGN KEY (`id_empresa`) REFERENCES `Empresa` (`id`),
  CONSTRAINT `Tarifa_TipoAsiento_FK` FOREIGN KEY (`id_tipoasiento`) REFERENCES `TipoAsiento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarifa`
--

LOCK TABLES `Tarifa` WRITE;
/*!40000 ALTER TABLE `Tarifa` DISABLE KEYS */;
INSERT INTO `Tarifa` VALUES
(1,1,1,100.00),
(2,1,2,150.00),
(3,1,3,200.00),
(4,2,1,110.00),
(5,2,2,160.00),
(6,2,3,210.00),
(7,3,1,120.00),
(8,3,2,170.00),
(9,3,3,220.00);
/*!40000 ALTER TABLE `Tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoAsiento`
--

DROP TABLE IF EXISTS `TipoAsiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoAsiento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoAsiento`
--

LOCK TABLES `TipoAsiento` WRITE;
/*!40000 ALTER TABLE `TipoAsiento` DISABLE KEYS */;
INSERT INTO `TipoAsiento` VALUES
(1,'Semicama'),
(2,'Cama'),
(3,'Ejecutivo');
/*!40000 ALTER TABLE `TipoAsiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-07-23  0:31:09
