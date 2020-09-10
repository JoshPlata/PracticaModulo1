CREATE DATABASE  IF NOT EXISTS `TTA053Final` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `TTA053Final`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: TTA053Final
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AccionRealizada`
--

DROP TABLE IF EXISTS `AccionRealizada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccionRealizada` (
  `idAccionRealizada` varchar(36) NOT NULL,
  `idEstadoAnimofk` varchar(36) NOT NULL,
  `accion` varchar(60) NOT NULL,
  `Comentario` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idAccionRealizada`),
  UNIQUE KEY `idAccionRealizada_UNIQUE` (`idAccionRealizada`),
  KEY `fk_AccionRealizada_EstadoAnimo1_idx` (`idEstadoAnimofk`),
  CONSTRAINT `fk_AccionRealizada_EstadoAnimo1` FOREIGN KEY (`idEstadoAnimofk`) REFERENCES `EstadoAnimo` (`idEstadoAnimo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccionRealizada`
--

LOCK TABLES `AccionRealizada` WRITE;
/*!40000 ALTER TABLE `AccionRealizada` DISABLE KEYS */;
INSERT INTO `AccionRealizada` VALUES ('10faa4a8-a7df-4952-a833-ea371b5db426','7346cde7-d482-4648-aa61-19f714f2be53','Música','Me gustó la canción qur escuché. '),('3aeaa739-4afb-4c64-af22-ddd2481d90bc','a93a7a29-e0a1-45a5-be67-a0d5e9644219','Cine','no me gustó la película '),('5ced8d57-7b0f-410a-9d89-aab5e2d87a83','f510a9dc-fc92-4159-bfdc-e909c5818b01','Amigos','me divierto mucho'),('7bb5bd77-4de3-412b-8441-353e6b747332','8759d76a-aeb1-4bd2-9bb6-5ab39f2ffaf8','Música','Mala canción '),('92971ed9-e69e-4c9c-b7cc-bbb265de0006','f7c9d841-4b9b-4111-a559-ba4118f9ca13','Estudio','Mucho trabajo. '),('ab6eaef0-70d6-41a5-84f9-f0a581348c95','e487ca9a-d4a1-46ca-853a-f751355d0e09','Estudio','buen deporte'),('d035b533-3761-4e08-87ec-97deb66b3f98','59477474-16ca-4a12-a4b4-bb2e1943428d','Juego','Nivel difícil ');
/*!40000 ALTER TABLE `AccionRealizada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Agenda`
--

DROP TABLE IF EXISTS `Agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Agenda` (
  `idAgenda` varchar(36) NOT NULL,
  `idPsicologofk` varchar(36) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idAgenda`),
  UNIQUE KEY `idAgenda_UNIQUE` (`idAgenda`),
  KEY `fk_Agenda_Psicologo1_idx` (`idPsicologofk`),
  CONSTRAINT `fk_Agenda_Psicologo1` FOREIGN KEY (`idPsicologofk`) REFERENCES `Psicologo` (`idPsicologo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Agenda`
--

LOCK TABLES `Agenda` WRITE;
/*!40000 ALTER TABLE `Agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `Agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnalisisNeuronal`
--

DROP TABLE IF EXISTS `AnalisisNeuronal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnalisisNeuronal` (
  `idAnalisisNeuronal` varchar(36) NOT NULL,
  `idPreguntafk` varchar(36) NOT NULL,
  `senial1` double DEFAULT NULL,
  `senial2` double DEFAULT NULL,
  `senial3` double DEFAULT NULL,
  `senial4` double DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `AnalisisNeuronalcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAnalisisNeuronal`),
  UNIQUE KEY `idAnalisisNeuronal_UNIQUE` (`idAnalisisNeuronal`),
  KEY `fk_AnalisisNeuronal_Pregunta1_idx` (`idPreguntafk`),
  CONSTRAINT `fk_AnalisisNeuronal_Pregunta1` FOREIGN KEY (`idPreguntafk`) REFERENCES `Pregunta` (`idPregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnalisisNeuronal`
--

LOCK TABLES `AnalisisNeuronal` WRITE;
/*!40000 ALTER TABLE `AnalisisNeuronal` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnalisisNeuronal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dia`
--

DROP TABLE IF EXISTS `Dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dia` (
  `idDia` varchar(36) NOT NULL,
  `idAgendafk` varchar(36) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idDia`),
  UNIQUE KEY `idDia_UNIQUE` (`idDia`),
  KEY `fk_Dia_Agenda1_idx` (`idAgendafk`),
  CONSTRAINT `fk_Dia_Agenda1` FOREIGN KEY (`idAgendafk`) REFERENCES `Agenda` (`idAgenda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dia`
--

LOCK TABLES `Dia` WRITE;
/*!40000 ALTER TABLE `Dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiaPaciente`
--

DROP TABLE IF EXISTS `DiaPaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DiaPaciente` (
  `idDiaPaciente` varchar(36) NOT NULL,
  `idDiarioPacientefk` varchar(36) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idDiaPaciente`),
  UNIQUE KEY `idDiaPaciente_UNIQUE` (`idDiaPaciente`),
  KEY `fk_DiaPaciente_DiarioPaciente1_idx` (`idDiarioPacientefk`),
  CONSTRAINT `fk_DiaPaciente_DiarioPaciente1` FOREIGN KEY (`idDiarioPacientefk`) REFERENCES `DiarioPaciente` (`idDiarioPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiaPaciente`
--

LOCK TABLES `DiaPaciente` WRITE;
/*!40000 ALTER TABLE `DiaPaciente` DISABLE KEYS */;
INSERT INTO `DiaPaciente` VALUES ('19794256-22d0-44e8-bfc6-b48d5afdbcd6','55e5140b-bc0b-4f78-aa42-053ee9954d40','2018-06-24'),('7c20ed34-692c-4124-9660-42909b45d76a','55e5140b-bc0b-4f78-aa42-053ee9954d40','2018-06-20');
/*!40000 ALTER TABLE `DiaPaciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diagnostico`
--

DROP TABLE IF EXISTS `Diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Diagnostico` (
  `idDiagnostico` varchar(36) NOT NULL,
  `ResumenDiagnostico` varchar(150) NOT NULL,
  `Diagnostico` varchar(250) NOT NULL,
  PRIMARY KEY (`idDiagnostico`),
  UNIQUE KEY `idDiagnostico_UNIQUE` (`idDiagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diagnostico`
--

LOCK TABLES `Diagnostico` WRITE;
/*!40000 ALTER TABLE `Diagnostico` DISABLE KEYS */;
INSERT INTO `Diagnostico` VALUES ('1a11033f-8370-48e2-a74d-784ff56eb930','Sufre con TDAH desde los 5 años','Paciente que sufre con TDAH'),('d7082b97-a2ce-4d79-86da-fec714cbfd38','El paciente desde los 5 años sufre TDAH','El paciente sufre de TDAH');
/*!40000 ALTER TABLE `Diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiarioPaciente`
--

DROP TABLE IF EXISTS `DiarioPaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DiarioPaciente` (
  `idDiarioPaciente` varchar(36) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `idPaciente` varchar(36) NOT NULL,
  PRIMARY KEY (`idDiarioPaciente`),
  UNIQUE KEY `idDiarioPaciente_UNIQUE` (`idDiarioPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiarioPaciente`
--

LOCK TABLES `DiarioPaciente` WRITE;
/*!40000 ALTER TABLE `DiarioPaciente` DISABLE KEYS */;
INSERT INTO `DiarioPaciente` VALUES ('55e5140b-bc0b-4f78-aa42-053ee9954d40','Diario TCC','3b476f65-fdb8-449c-8cd6-e762e47ec82d');
/*!40000 ALTER TABLE `DiarioPaciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstadoAnimo`
--

DROP TABLE IF EXISTS `EstadoAnimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstadoAnimo` (
  `idEstadoAnimo` varchar(36) NOT NULL,
  `idDiaPacientefk` varchar(36) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`idEstadoAnimo`),
  UNIQUE KEY `idEstadoAnimo_UNIQUE` (`idEstadoAnimo`),
  KEY `fk_EstadoAnimo_DiaPaciente1_idx` (`idDiaPacientefk`),
  CONSTRAINT `fk_EstadoAnimo_DiaPaciente1` FOREIGN KEY (`idDiaPacientefk`) REFERENCES `DiaPaciente` (`idDiaPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoAnimo`
--

LOCK TABLES `EstadoAnimo` WRITE;
/*!40000 ALTER TABLE `EstadoAnimo` DISABLE KEYS */;
INSERT INTO `EstadoAnimo` VALUES ('59477474-16ca-4a12-a4b4-bb2e1943428d','7c20ed34-692c-4124-9660-42909b45d76a','Temor'),('7346cde7-d482-4648-aa61-19f714f2be53','19794256-22d0-44e8-bfc6-b48d5afdbcd6','Alegría'),('8759d76a-aeb1-4bd2-9bb6-5ab39f2ffaf8','7c20ed34-692c-4124-9660-42909b45d76a','Enojo'),('a93a7a29-e0a1-45a5-be67-a0d5e9644219','7c20ed34-692c-4124-9660-42909b45d76a','Desagrado'),('e487ca9a-d4a1-46ca-853a-f751355d0e09','7c20ed34-692c-4124-9660-42909b45d76a','Alegría'),('f510a9dc-fc92-4159-bfdc-e909c5818b01','7c20ed34-692c-4124-9660-42909b45d76a','Alegría'),('f7c9d841-4b9b-4111-a559-ba4118f9ca13','7c20ed34-692c-4124-9660-42909b45d76a','Tristeza');
/*!40000 ALTER TABLE `EstadoAnimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-Aplicacion`
--

DROP TABLE IF EXISTS `GEN-Aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-Aplicacion` (
  `idAplicacion` varchar(36) NOT NULL,
  `NombreApp` varchar(100) NOT NULL,
  `Descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`idAplicacion`),
  UNIQUE KEY `idAplicación_UNIQUE` (`idAplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-Aplicacion`
--

LOCK TABLES `GEN-Aplicacion` WRITE;
/*!40000 ALTER TABLE `GEN-Aplicacion` DISABLE KEYS */;
INSERT INTO `GEN-Aplicacion` VALUES ('00000000-0000-0000-0000-000000000000','AppPsicologo','Es la aplicación a la que tendrán acceso los psicologos'),('00000000-0000-0000-0000-000000000001','AppPaciente','Es la aplicación a la que tendrán acceso los pacientes que halla registrado cada psicólogo');
/*!40000 ALTER TABLE `GEN-Aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-CodigoReContrasena`
--

DROP TABLE IF EXISTS `GEN-CodigoReContrasena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-CodigoReContrasena` (
  `idCodigoReContrasena` varchar(36) NOT NULL,
  `idCuentafk` varchar(36) NOT NULL,
  `CodigoContrasenacol` varchar(45) NOT NULL,
  `Fechalim` datetime NOT NULL,
  PRIMARY KEY (`idCodigoReContrasena`),
  UNIQUE KEY `idCodigoContrasena_UNIQUE` (`idCodigoReContrasena`),
  KEY `fk_GEN-CodigoReContrasena_GEN-Cuenta1_idx` (`idCuentafk`),
  CONSTRAINT `fk_GEN-CodigoReContrasena_GEN-Cuenta1` FOREIGN KEY (`idCuentafk`) REFERENCES `GEN-Cuenta` (`idCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-CodigoReContrasena`
--

LOCK TABLES `GEN-CodigoReContrasena` WRITE;
/*!40000 ALTER TABLE `GEN-CodigoReContrasena` DISABLE KEYS */;
INSERT INTO `GEN-CodigoReContrasena` VALUES ('2d0e151e-3dbc-4db3-ad6a-0ff10ae0ea4a','3a474613-bf54-4da9-8fb0-a10f0d221772','4297af22-8a7f-426b-8670-dc39c3e1688d','2018-06-20 13:35:58'),('b7c93286-caa3-4302-b392-5d87e616f136','5f4f6e17-7928-4434-8e54-0ab9b7127fca','03c0c0ec-6c24-4bf0-bb22-5ec272f6badb','2018-06-25 12:16:09'),('e7e78dd2-b4d1-4e48-b8b7-48cd8dda673b','ac8a92a0-701c-480e-9cce-e7cf114e1f96','fcc5cb9e-6918-4bda-8dae-53534495572f','2018-06-20 13:15:56'),('fc67e126-fb2b-4b42-a9d0-2c90b3d00ead','b2cd4c3c-ff94-4bb5-8199-913e85edf29d','5bebfaea-8190-4255-ab88-cf71a0053f89','2018-06-20 12:07:55');
/*!40000 ALTER TABLE `GEN-CodigoReContrasena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-Cuenta`
--

DROP TABLE IF EXISTS `GEN-Cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-Cuenta` (
  `idCuenta` varchar(36) NOT NULL,
  `idUsuario` varchar(36) NOT NULL,
  `Estado` tinyint(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`idCuenta`),
  UNIQUE KEY `idCuenta_UNIQUE` (`idCuenta`),
  KEY `fk_GEN-Cuenta_GEN-Usuario1_idx` (`idUsuario`),
  CONSTRAINT `fk_GEN-Cuenta_GEN-Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `GEN-Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-Cuenta`
--

LOCK TABLES `GEN-Cuenta` WRITE;
/*!40000 ALTER TABLE `GEN-Cuenta` DISABLE KEYS */;
INSERT INTO `GEN-Cuenta` VALUES ('3a474613-bf54-4da9-8fb0-a10f0d221772','7d3b3b89-2676-49fb-9738-4c84098fb3c1',1),('5f4f6e17-7928-4434-8e54-0ab9b7127fca','661190ca-2a09-449f-a1a0-f65ec363b139',1),('ac8a92a0-701c-480e-9cce-e7cf114e1f96','dcdc594c-44a2-4908-b6ef-c44d51cc1b39',1),('b2cd4c3c-ff94-4bb5-8199-913e85edf29d','b97b7b49-39a0-4ba9-8641-1feab1b733a3',1);
/*!40000 ALTER TABLE `GEN-Cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-CuentaAplicacion`
--

DROP TABLE IF EXISTS `GEN-CuentaAplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-CuentaAplicacion` (
  `idCuentafk` varchar(36) NOT NULL,
  `idAplicacionfk` varchar(36) NOT NULL,
  KEY `fk_GEN-Cuenta_has_GEN-Aplicacion_GEN-Aplicacion1_idx` (`idAplicacionfk`),
  KEY `fk_GEN-Cuenta_has_GEN-Aplicacion_GEN-Cuenta1_idx` (`idCuentafk`),
  CONSTRAINT `fk_GEN-Cuenta_has_GEN-Aplicacion_GEN-Aplicacion1` FOREIGN KEY (`idAplicacionfk`) REFERENCES `GEN-Aplicacion` (`idAplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GEN-Cuenta_has_GEN-Aplicacion_GEN-Cuenta1` FOREIGN KEY (`idCuentafk`) REFERENCES `GEN-Cuenta` (`idCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-CuentaAplicacion`
--

LOCK TABLES `GEN-CuentaAplicacion` WRITE;
/*!40000 ALTER TABLE `GEN-CuentaAplicacion` DISABLE KEYS */;
INSERT INTO `GEN-CuentaAplicacion` VALUES ('b2cd4c3c-ff94-4bb5-8199-913e85edf29d','00000000-0000-0000-0000-000000000000'),('ac8a92a0-701c-480e-9cce-e7cf114e1f96','00000000-0000-0000-0000-000000000001'),('3a474613-bf54-4da9-8fb0-a10f0d221772','00000000-0000-0000-0000-000000000001'),('5f4f6e17-7928-4434-8e54-0ab9b7127fca','00000000-0000-0000-0000-000000000001');
/*!40000 ALTER TABLE `GEN-CuentaAplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-Rol`
--

DROP TABLE IF EXISTS `GEN-Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-Rol` (
  `idRol` varchar(36) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `idRol_UNIQUE` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-Rol`
--

LOCK TABLES `GEN-Rol` WRITE;
/*!40000 ALTER TABLE `GEN-Rol` DISABLE KEYS */;
INSERT INTO `GEN-Rol` VALUES ('00000000-0000-0000-0000-000000000000','Administrador','Administrador del Sistema de Paciente y Psicologo'),('00000000-0000-0000-0000-000000000001','Psicologo','Este Rol es para los Psicólogos que tienen acceso al Sistema'),('00000000-0000-0000-0000-000000000002','Paciente','Este Rol es para todos los pacientes de cada Psicólogo Registrado');
/*!40000 ALTER TABLE `GEN-Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-RolUsuario`
--

DROP TABLE IF EXISTS `GEN-RolUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-RolUsuario` (
  `idRolfk` varchar(36) NOT NULL,
  `idUsuariofk` varchar(36) NOT NULL,
  KEY `fk_GEN-Rol_has_GEN-Usuario_GEN-Usuario1_idx` (`idUsuariofk`),
  KEY `fk_GEN-Rol_has_GEN-Usuario_GEN-Rol_idx` (`idRolfk`),
  CONSTRAINT `fk_GEN-Rol_has_GEN-Usuario_GEN-Rol` FOREIGN KEY (`idRolfk`) REFERENCES `GEN-Rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_GEN-Rol_has_GEN-Usuario_GEN-Usuario1` FOREIGN KEY (`idUsuariofk`) REFERENCES `GEN-Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-RolUsuario`
--

LOCK TABLES `GEN-RolUsuario` WRITE;
/*!40000 ALTER TABLE `GEN-RolUsuario` DISABLE KEYS */;
INSERT INTO `GEN-RolUsuario` VALUES ('00000000-0000-0000-0000-000000000001','b97b7b49-39a0-4ba9-8641-1feab1b733a3'),('00000000-0000-0000-0000-000000000002','dcdc594c-44a2-4908-b6ef-c44d51cc1b39'),('00000000-0000-0000-0000-000000000002','7d3b3b89-2676-49fb-9738-4c84098fb3c1'),('00000000-0000-0000-0000-000000000002','661190ca-2a09-449f-a1a0-f65ec363b139');
/*!40000 ALTER TABLE `GEN-RolUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GEN-Usuario`
--

DROP TABLE IF EXISTS `GEN-Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GEN-Usuario` (
  `idUsuario` varchar(36) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `App` varchar(60) NOT NULL,
  `Apm` varchar(60) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `contrasena` varchar(16) NOT NULL,
  `Foto` longblob,
  `FechaNacimiento` date NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Cel` varchar(13) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GEN-Usuario`
--

LOCK TABLES `GEN-Usuario` WRITE;
/*!40000 ALTER TABLE `GEN-Usuario` DISABLE KEYS */;
INSERT INTO `GEN-Usuario` VALUES ('661190ca-2a09-449f-a1a0-f65ec363b139','Juan ','Álvarez ','García','juanito@hotmsil.com','1234',NULL,'2014-01-06','5547607426','5568343534','Oriente 257 #236'),('7d3b3b89-2676-49fb-9738-4c84098fb3c1','Jesica Berenice','Perez ','San Juan','j.berenice15@gmail.com','1234',NULL,'1995-09-06','5547632808','5542361907','oriente 239c#141'),('b97b7b49-39a0-4ba9-8641-1feab1b733a3','Marco Alberto','Navarro','Razo','stilermarco@hotmail.com','1234',NULL,'1995-03-05','68343534','5547607426','Oriente 257 #236 C-1 Col.Agricola Oriental, C.P. 08500.'),('dcdc594c-44a2-4908-b6ef-c44d51cc1b39','Marco Alberto','Navarro','Razo','stilermarco@gmail.com','1234',NULL,'1995-03-05','5568343534','5547607426','oriente 257 #236 c1 cp 085');
/*!40000 ALTER TABLE `GEN-Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historial`
--

DROP TABLE IF EXISTS `Historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Historial` (
  `idHistorial` varchar(36) NOT NULL,
  `idDiagnosticofk` varchar(36) NOT NULL,
  `idPacientefk` varchar(45) NOT NULL,
  PRIMARY KEY (`idHistorial`),
  UNIQUE KEY `idHistorial_UNIQUE` (`idHistorial`),
  KEY `fk_Historial_Diagnostico1_idx` (`idDiagnosticofk`),
  CONSTRAINT `fk_Historial_Diagnostico1` FOREIGN KEY (`idDiagnosticofk`) REFERENCES `Diagnostico` (`idDiagnostico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historial`
--

LOCK TABLES `Historial` WRITE;
/*!40000 ALTER TABLE `Historial` DISABLE KEYS */;
INSERT INTO `Historial` VALUES ('d03d276d-5c2f-4aa3-bfc3-7d6daf53b0df','1a11033f-8370-48e2-a74d-784ff56eb930','513e0cef-56b6-4600-9cfc-22f490f4f82e'),('f4b9115c-7260-4c7b-b26a-6ed58afd3d51','d7082b97-a2ce-4d79-86da-fec714cbfd38','3b476f65-fdb8-449c-8cd6-e762e47ec82d');
/*!40000 ALTER TABLE `Historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitoreo`
--

DROP TABLE IF EXISTS `Monitoreo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitoreo` (
  `idMonitoreo` varchar(36) NOT NULL,
  `idPreguntafk` varchar(36) NOT NULL,
  `promedioGeneral` double DEFAULT NULL,
  `promedioSenial1` double DEFAULT NULL,
  `promedioSenial2` double DEFAULT NULL,
  `promedioSenial3` double DEFAULT NULL,
  `promedioSenial4` double DEFAULT NULL,
  PRIMARY KEY (`idMonitoreo`),
  UNIQUE KEY `idMonitoreo_UNIQUE` (`idMonitoreo`),
  KEY `fk_Monitoreo_Pregunta1_idx` (`idPreguntafk`),
  CONSTRAINT `fk_Monitoreo_Pregunta1` FOREIGN KEY (`idPreguntafk`) REFERENCES `Pregunta` (`idPregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitoreo`
--

LOCK TABLES `Monitoreo` WRITE;
/*!40000 ALTER TABLE `Monitoreo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitoreo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paciente`
--

DROP TABLE IF EXISTS `Paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paciente` (
  `idPaciente` varchar(36) NOT NULL,
  `idUsuariofk` varchar(36) NOT NULL,
  `idPsicologofk` varchar(36) NOT NULL,
  `Alias` varchar(50) DEFAULT NULL,
  `GradoEscolar` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`),
  UNIQUE KEY `idPaciente_UNIQUE` (`idPaciente`),
  KEY `fk_Paciente_GEN-Usuario1_idx` (`idUsuariofk`),
  KEY `fk_Paciente_Psicologo1_idx` (`idPsicologofk`),
  CONSTRAINT `fk_Paciente_GEN-Usuario1` FOREIGN KEY (`idUsuariofk`) REFERENCES `GEN-Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Paciente_Psicologo1` FOREIGN KEY (`idPsicologofk`) REFERENCES `Psicologo` (`idPsicologo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paciente`
--

LOCK TABLES `Paciente` WRITE;
/*!40000 ALTER TABLE `Paciente` DISABLE KEYS */;
INSERT INTO `Paciente` VALUES ('3b476f65-fdb8-449c-8cd6-e762e47ec82d','7d3b3b89-2676-49fb-9738-4c84098fb3c1','574d6d04-3a15-4769-9070-647a98ed896b','berecita','1ero Secundaria'),('513e0cef-56b6-4600-9cfc-22f490f4f82e','dcdc594c-44a2-4908-b6ef-c44d51cc1b39','574d6d04-3a15-4769-9070-647a98ed896b','Betito','3ro secundaria '),('e00f83f7-01b4-4ecd-a1dc-e8b1b75c1c15','661190ca-2a09-449f-a1a0-f65ec363b139','574d6d04-3a15-4769-9070-647a98ed896b','Juanito','segundo de secundaria');
/*!40000 ALTER TABLE `Paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pendientes`
--

DROP TABLE IF EXISTS `Pendientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pendientes` (
  `idPendientes` varchar(36) NOT NULL,
  `idDiafk` varchar(36) NOT NULL,
  `Pendiente` varchar(60) NOT NULL,
  `Descripcion` varchar(150) NOT NULL,
  `concretada` tinyint(1) NOT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`idPendientes`),
  UNIQUE KEY `idPendientes_UNIQUE` (`idPendientes`),
  KEY `fk_Pendientes_Dia1_idx` (`idDiafk`),
  CONSTRAINT `fk_Pendientes_Dia1` FOREIGN KEY (`idDiafk`) REFERENCES `Dia` (`idDia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pendientes`
--

LOCK TABLES `Pendientes` WRITE;
/*!40000 ALTER TABLE `Pendientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pendientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pregunta`
--

DROP TABLE IF EXISTS `Pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pregunta` (
  `idPregunta` varchar(36) NOT NULL,
  `idSesionConsultafk` varchar(36) NOT NULL,
  `pregunta` varchar(70) NOT NULL,
  `respuestaPaciente` varchar(150) DEFAULT NULL,
  `analisis` varchar(150) DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`idPregunta`),
  UNIQUE KEY `idPregunta_UNIQUE` (`idPregunta`),
  KEY `fk_Pregunta_SesionConsulta1_idx` (`idSesionConsultafk`),
  CONSTRAINT `fk_Pregunta_SesionConsulta1` FOREIGN KEY (`idSesionConsultafk`) REFERENCES `SesionConsulta` (`idSesionConsulta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pregunta`
--

LOCK TABLES `Pregunta` WRITE;
/*!40000 ALTER TABLE `Pregunta` DISABLE KEYS */;
INSERT INTO `Pregunta` VALUES ('3fe91d3a-da8b-41ac-8b7a-5c099eaf2ec6','e589061f-f79e-4f3a-955f-3a34941bc92a','como te sientes con respecto a el juego del domingo','se sintió muy alegre\n',NULL,'10:45:28',1),('dfae8110-1540-40ec-9011-f9eeefe2ebae','e589061f-f79e-4f3a-955f-3a34941bc92a','prueba2','prueba ',NULL,'10:45:28',2);
/*!40000 ALTER TABLE `Pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Psicologo`
--

DROP TABLE IF EXISTS `Psicologo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Psicologo` (
  `idPsicologo` varchar(36) NOT NULL,
  `idUsuariofk` varchar(36) NOT NULL,
  `Carrera` varchar(60) NOT NULL,
  `Especialidad` varchar(60) NOT NULL,
  `aniosexperiencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPsicologo`),
  UNIQUE KEY `idPsicologo_UNIQUE` (`idPsicologo`),
  KEY `fk_Psicologo_GEN-Usuario1_idx` (`idUsuariofk`),
  CONSTRAINT `fk_Psicologo_GEN-Usuario1` FOREIGN KEY (`idUsuariofk`) REFERENCES `GEN-Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Psicologo`
--

LOCK TABLES `Psicologo` WRITE;
/*!40000 ALTER TABLE `Psicologo` DISABLE KEYS */;
INSERT INTO `Psicologo` VALUES ('574d6d04-3a15-4769-9070-647a98ed896b','b97b7b49-39a0-4ba9-8641-1feab1b733a3','Lic. en Psicología','Psicólogo General',2);
/*!40000 ALTER TABLE `Psicologo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sesion`
--

DROP TABLE IF EXISTS `Sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sesion` (
  `idSesion` varchar(36) NOT NULL,
  `idCuentafk` varchar(36) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `IP` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idSesion`),
  UNIQUE KEY `idSesion_UNIQUE` (`idSesion`),
  KEY `fk_Sesion_GEN-Cuenta1_idx` (`idCuentafk`),
  CONSTRAINT `fk_Sesion_GEN-Cuenta1` FOREIGN KEY (`idCuentafk`) REFERENCES `GEN-Cuenta` (`idCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sesion`
--

LOCK TABLES `Sesion` WRITE;
/*!40000 ALTER TABLE `Sesion` DISABLE KEYS */;
INSERT INTO `Sesion` VALUES ('32b7fd0b-b92f-4fa5-b443-0a4c8df8319d','5f4f6e17-7928-4434-8e54-0ab9b7127fca','movil',0,NULL),('401e2ad5-3223-4117-8491-e42ea6dbc86c','ac8a92a0-701c-480e-9cce-e7cf114e1f96','movil',0,NULL),('4545f702-b844-4ae0-be0c-ea574cdcdaee','b2cd4c3c-ff94-4bb5-8199-913e85edf29d','movil',0,NULL),('4fa64b61-79fa-4d9c-9405-6d506477cc72','3a474613-bf54-4da9-8fb0-a10f0d221772','movil',0,NULL);
/*!40000 ALTER TABLE `Sesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SesionConsulta`
--

DROP TABLE IF EXISTS `SesionConsulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SesionConsulta` (
  `idSesionConsulta` varchar(36) NOT NULL,
  `idHistorialfk` varchar(36) NOT NULL,
  `objetivo` varchar(80) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `resumen` varchar(150) DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `objetivoCumplido` tinyint(1) DEFAULT NULL,
  `idPsicologofk` varchar(36) NOT NULL,
  `idPacientefk` varchar(36) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `statusSesion` tinyint(4) NOT NULL,
  PRIMARY KEY (`idSesionConsulta`),
  UNIQUE KEY `idSesion_UNIQUE` (`idSesionConsulta`),
  KEY `fk_SesionConsulta_Historial1_idx` (`idHistorialfk`),
  CONSTRAINT `fk_SesionConsulta_Historial1` FOREIGN KEY (`idHistorialfk`) REFERENCES `Historial` (`idHistorial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SesionConsulta`
--

LOCK TABLES `SesionConsulta` WRITE;
/*!40000 ALTER TABLE `SesionConsulta` DISABLE KEYS */;
INSERT INTO `SesionConsulta` VALUES ('0318e275-2662-4826-a9a3-873331db9c0f','d03d276d-5c2f-4aa3-bfc3-7d6daf53b0df','confirmar estatus del paciente',NULL,NULL,NULL,NULL,'574d6d04-3a15-4769-9070-647a98ed896b','513e0cef-56b6-4600-9cfc-22f490f4f82e','2018-06-22','10:00:00',0),('be8e9b3d-156e-474c-8427-3f105d711104','d03d276d-5c2f-4aa3-bfc3-7d6daf53b0df','Reafirmar la actitud del paciente',NULL,NULL,NULL,NULL,'574d6d04-3a15-4769-9070-647a98ed896b','513e0cef-56b6-4600-9cfc-22f490f4f82e','2018-06-26','13:00:00',0),('e589061f-f79e-4f3a-955f-3a34941bc92a','d03d276d-5c2f-4aa3-bfc3-7d6daf53b0df','Analisar al paciente para confirmar el Diagnóstico','el paciente se notó más alegre y más contra do que la sesión anterior\n','se debe a que se ha estado llevando un seguimiento del paciente y hace algún deporte','10:45:28',1,'574d6d04-3a15-4769-9070-647a98ed896b','513e0cef-56b6-4600-9cfc-22f490f4f82e','2018-06-21','10:00:00',1);
/*!40000 ALTER TABLE `SesionConsulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tutor`
--

DROP TABLE IF EXISTS `Tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tutor` (
  `idTutor` varchar(36) NOT NULL,
  `idPacientefk` varchar(36) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `ApellidoP` varchar(50) NOT NULL,
  `ApellidoM` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `Tel` varchar(45) NOT NULL,
  `Cel` varchar(45) NOT NULL,
  `parentezco` varchar(45) NOT NULL,
  PRIMARY KEY (`idTutor`),
  UNIQUE KEY `idTutor_UNIQUE` (`idTutor`),
  KEY `fk_Tutor_Paciente1_idx` (`idPacientefk`),
  CONSTRAINT `fk_Tutor_Paciente1` FOREIGN KEY (`idPacientefk`) REFERENCES `Paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tutor`
--

LOCK TABLES `Tutor` WRITE;
/*!40000 ALTER TABLE `Tutor` DISABLE KEYS */;
INSERT INTO `Tutor` VALUES ('3863b1a8-22b8-41e1-90d1-250ed57686fd','e00f83f7-01b4-4ecd-a1dc-e8b1b75c1c15','Marco','Navarro','Aguilar','marco@hotmail.com','5547607426','5542369823','Abuelo'),('d4e7955c-d559-4170-a158-8f10846e388c','3b476f65-fdb8-449c-8cd6-e762e47ec82d','Mario ','Juarez','Almaguer','mario@hotmail.com','5547632808','5547632120','Padre'),('eb6b6be4-b0b7-4848-a023-cf3348e9637c','513e0cef-56b6-4600-9cfc-22f490f4f82e','Marco Antonio ','Navarro','Aguilar','constelacionlunar2023@hotmail.com','5568343534','5547607483','Padre');
/*!40000 ALTER TABLE `Tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'TTA053Final'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-25  1:09:35
