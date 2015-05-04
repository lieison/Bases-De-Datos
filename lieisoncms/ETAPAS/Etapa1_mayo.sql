CREATE DATABASE  IF NOT EXISTS `lieison_soft` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lieison_soft`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: lieison.com    Database: lieison_soft
-- ------------------------------------------------------
-- Server version	5.5.41-cll-lve

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
-- Temporary table structure for view `VIEW_DASHBOARD_DB`
--

DROP TABLE IF EXISTS `VIEW_DASHBOARD_DB`;
/*!50001 DROP VIEW IF EXISTS `VIEW_DASHBOARD_DB`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `VIEW_DASHBOARD_DB` (
  `id` tinyint NOT NULL,
  `dash_titulo` tinyint NOT NULL,
  `sec_titulo` tinyint NOT NULL,
  `link` tinyint NOT NULL,
  `icono` tinyint NOT NULL,
  `priv_nombre` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(255) NOT NULL,
  `nombre` text NOT NULL,
  `contrato` text NOT NULL,
  `aceptado` int(11) DEFAULT NULL,
  `fecha_envio` date NOT NULL,
  `fecha_contrato` date DEFAULT NULL,
  PRIMARY KEY (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'rolando55admin18894933','Contrato Empleo Programador','arriaza_contrato.docx',1,'2015-02-07','2015-02-08');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id_dashboard` int(11) NOT NULL AUTO_INCREMENT,
  `id_seccion` int(11) NOT NULL,
  `icono` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `titulo` text NOT NULL,
  `start` int(11) NOT NULL,
  `privilegios` text NOT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id_dashboard`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (1,3,'glyphicon glyphicon-dashboard','dashboard_monitor.php','Monitoreo',2,'55',0),(2,1,'glyphicon glyphicon-home','index.php','Principal',1,'0',1),(3,2,'fa fa-header','frontend/index.php','Lieison',1,'55',1),(4,3,'fa fa-users','dashboard_gestion_usuarios.php','GestiÃ³n de Usuarios',1,'55',1),(5,5,'fa fa-file-o','seccion/dashboard_control_paginas.php','Control de Paginas',3,'55',1),(6,4,'fa fa-plus ','sales/dashboard_add_prospecto.php','Agregar Prospecto',1,'76',1),(7,4,'fa fa-puzzle-piece ','sales/dashboard_admin_prospecto.php','Admin Prospectos',2,'76',1),(8,5,'fa fa-plug','plugins/dashboard_index.php','Modulos',1,'55,155',1),(11,5,'fa fa-desktop','apps/dashboard_index.php','Apps',2,'55,155',0),(12,8,'fa fa-plus','task/dashboard_add_task.php','Add Task',1,'55,76,1829',1),(13,8,'fa fa-tasks','task/dashboard_index.php','Your Tasks',1,'55',1);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_copyright`
--

DROP TABLE IF EXISTS `dashboard_copyright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_copyright` (
  `id_copy` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_copy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_copyright`
--

LOCK TABLES `dashboard_copyright` WRITE;
/*!40000 ALTER TABLE `dashboard_copyright` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_copyright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_page_slider`
--

DROP TABLE IF EXISTS `front_page_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `front_page_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `script` text NOT NULL,
  `json_data` text NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_page_slider`
--

LOCK TABLES `front_page_slider` WRITE;
/*!40000 ALTER TABLE `front_page_slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `front_page_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieisoft_mensajeria`
--

DROP TABLE IF EXISTS `lieisoft_mensajeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieisoft_mensajeria` (
  `id_mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario_para` varchar(255) NOT NULL,
  `id_usuario_de` varchar(255) NOT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `leido` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='cliente de mensajeria lieisoft		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieisoft_mensajeria`
--

LOCK TABLES `lieisoft_mensajeria` WRITE;
/*!40000 ALTER TABLE `lieisoft_mensajeria` DISABLE KEYS */;
INSERT INTO `lieisoft_mensajeria` VALUES (2,'rolando55admin18894933','esanchez30admin10528679','hola chele','hola como estas mira una pregunta es cierto que tu sos programador ?','2015-02-24','15:16:00',1);
/*!40000 ALTER TABLE `lieisoft_mensajeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieisoft_mensajes_permisos`
--

DROP TABLE IF EXISTS `lieisoft_mensajes_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieisoft_mensajes_permisos` (
  `id_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(255) DEFAULT NULL,
  `id_usuario_permiso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_permisos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieisoft_mensajes_permisos`
--

LOCK TABLES `lieisoft_mensajes_permisos` WRITE;
/*!40000 ALTER TABLE `lieisoft_mensajes_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `lieisoft_mensajes_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieisoft_submensajeria`
--

DROP TABLE IF EXISTS `lieisoft_submensajeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieisoft_submensajeria` (
  `id_submensajeria` int(11) NOT NULL AUTO_INCREMENT,
  `id_mensajeria` int(11) NOT NULL,
  `id_usuario` varchar(255) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `leido` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_submensajeria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='mensajes hijos del mensaje padre	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieisoft_submensajeria`
--

LOCK TABLES `lieisoft_submensajeria` WRITE;
/*!40000 ALTER TABLE `lieisoft_submensajeria` DISABLE KEYS */;
INSERT INTO `lieisoft_submensajeria` VALUES (2,2,'esanchez30admin10528679','hola','2015-10-12','15:20:00',0),(3,2,'rolando55admin18894933','aca respondiendote','2015-10-15','15:25:00',0);
/*!40000 ALTER TABLE `lieisoft_submensajeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id_log` varchar(255) NOT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `entrada` text,
  `salida` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('015322bff348a3a22ec5c384734d504f','rolando55admin18894933','14:56:30',NULL,'2015-02-26'),('01c95b5a07797ebcd3ef618ec69bb64c','roli_00','04:18:46',NULL,'2015-01-24'),('01f46f7d2080a2ce55c1e27fdc7883dd','rolando55admin18894933','00:01:04','02:16:40','2015-02-21'),('048e55d3fd8099d70e133bff17e253dc','rolando55admin18894933','20:42:54','16:57:44','2015-02-24'),('05ac92e284242b50f4ab277e14619d28','juan69Sub-user10385792','16:12:44','16:13:35','2015-02-12'),('061e0fbb38020585cf811c0d636d5390','rolando55admin18894933','04:05:08',NULL,'2015-03-24'),('07e793dddd4c4797ebbc995b908e78ea','rolando55admin18894933','14:57:00',NULL,'2015-02-26'),('0b2c0d92e68d7120a947359c146769b9','rolando55admin18894933','15:42:18',NULL,'2015-02-27'),('0c5208cb9e21d0aa85d9a0785a65e140','geabenitez51admin11122516','23:18:17',NULL,'2015-03-17'),('0c65bcf03c70197e94700f0484060af1','roli_00','02:23:17','03:00:42','2015-01-26'),('0cf63cfcc0a0f2b700cd2086e4cbd824','rolando55admin18894933','10:18:44',NULL,'2015-03-30'),('0da0b5f6185f87a6e143fef1a75cedfb','roli_00','03:25:21','04:27:44','2015-01-26'),('0f7b20e86e1e473d257059146a29c1f7','roli_00','04:12:55',NULL,'2015-01-31'),('101147a041882d6ddbd8362bd11154cd','juan69Sub-user10385792','20:11:34','20:12:22','2015-02-13'),('10253159541085c55f302972c5aa7696','rolando55admin18894933','20:59:52','21:00:27','2015-03-31'),('10498b4a0609e86cf71a32e1a89e0ebd','rolando55admin18894933','14:53:47','09:45:50','2015-03-29'),('10a0af2f849b2753cc2c4a8bb5bd30b5','roli_00','00:03:06','00:13:50','2015-01-24'),('1139efde205be639c6e300e32e33b698','geabenitez51admin11122516','15:14:12',NULL,'2015-03-13'),('12e4c7fb00d519d57230a184c7028168','rolando55admin18894933','19:36:51','19:37:47','2015-03-04'),('13113c921a5a30a1dba82049a6e2c9f2','rolando55admin18894933','23:36:24','10:24:57','2015-04-02'),('1441146ce9d60de8d2bb1c691529d41a','roli_00','20:41:20','21:00:55','2015-01-30'),('165ad3b2479966ed948ea7b3007afc5b','roli_00','04:18:46','04:37:52','2015-01-24'),('16848ea38a06d8a05ae91e89f73b6eb6','esanchez30admin10528679','17:39:26','17:39:31','2015-02-26'),('16db2051828c79d19c6b7f3f1f6de9f0','rolando55admin18894933','08:06:28','09:41:08','2015-03-07'),('17f7cc0b10d59fb5cf3b5fbf3d4051a4','rolando55admin18894933','21:00:06','14:54:44','2015-02-25'),('18677001dcf7b5c8e487d4c2e0c47e0a','juan69Sub-user10385792','02:16:46','02:19:26','2015-02-23'),('1e33cf1a43bcd5db614dd98ab820cb61','esanchez30admin10528679','15:53:48','15:54:28','2015-04-23'),('1f2b6812a11363e5c0970680274531da','rolando55admin18894933','17:29:47','18:20:10','2015-01-31'),('1f4415e05ef05c63e7c781a7a832b32b','rolando55admin18894933','14:55:21',NULL,'2015-02-26'),('205c82069d498fecc51536d911b1689f','rolando55admin18894933','09:51:29','10:44:23','2015-03-07'),('209412a03ff6cedac19f1f93e9112e98','rolando55admin18894933','17:11:56',NULL,'2015-03-04'),('215465bc918ce8789af1f9bfb84118e6','rolando55admin18894933','16:12:02',NULL,'2015-02-27'),('219fd3a79286cce126ec6b2d00c258c1','roli_00','19:59:06',NULL,'2015-01-28'),('23c3d18156067c94b5fbdefa347cf32a','rolando55admin18894933','15:23:45','15:23:58','2015-03-16'),('24c0df820b4263e684577d1e9ad16cac','rolando55admin18894933','19:58:42','20:02:15','2015-02-12'),('24dc6550fa7d7446b4f18689b1200a45','geabenitez51admin11122516','15:35:03',NULL,'2015-02-27'),('259a1eb38b27695776de2aed94b6cb40','rolando55admin18894933','15:28:11','00:52:30','2015-02-08'),('2885c508ea1cc823c6ba1284dcd62791','esanchez30admin10528679','21:20:31','21:23:15','2015-02-13'),('2ae55f09e08037e312bda5691da2d03a','esanchez30admin10528679','17:43:29',NULL,'2015-02-26'),('2bb9cce9774bfd69b7725957a1d77386','rolando55admin18894933','17:01:28','18:39:31','2015-02-24'),('2bf6e496222db3a6b2d2669c3a92ed99','rolando55admin18894933','21:24:27','21:26:11','2015-02-13'),('2c1f86130eae0b6978b96776eb7783c7','esanchez30admin10528679','21:09:44','21:10:30','2015-03-25'),('2c5332ceb7786055d6cee34dfe74a9a7','rolando55admin18894933','09:38:20','19:24:01','2015-03-08'),('2c8dcf77a96706dd995759bd2846a5a9','rolando55admin18894933','17:08:56','17:09:55','2015-03-04'),('2d80e977a97553f4aba7377ff2577226','rolando55admin18894933','19:42:52','19:42:54','2015-03-04'),('2dbf9cdad0dd229cf1c5db9187aba407','rolando55admin18894933','17:12:35',NULL,'2015-03-08'),('2e0644e7e64e538d7d25b1ee44bf084b','roli_00','18:27:44','05:13:12','2015-01-24'),('2e081d0a1447490075ce88ead119357c','rolando55admin18894933','18:53:17','18:53:26','2015-02-24'),('2f16a1706c338aecc91884c6c9f3a03c','roli_00','04:19:48','04:20:33','2015-01-31'),('2f4b67899a4fa6fdb98e9563840e1459','esanchez30admin10528679','21:19:59','21:20:20','2015-02-13'),('32e3aa5e85dc6edc0e765e9dbef99613','roli_00','04:00:27','04:04:46','2015-01-24'),('356eabb260a6aa45337e6fae04c1df50','rolando55admin18894933','10:57:34','10:07:50','2015-04-04'),('35e3204dbb2e6ee59809f90a95b87eb6','rolando55admin18894933','18:01:42',NULL,'2015-03-23'),('38e637b891ae037039b98e7fa5fb7c69','roli_00','22:18:33','18:43:21','2015-01-26'),('39bbb1d332269c39c9610f1bef548fc8','geabenitez51admin11122516','23:19:59',NULL,'2015-03-14'),('39e663bf9b32498bfc6d41de2da2a66f','rolando55admin18894933','04:38:14','04:59:01','2015-02-06'),('3aa32baa9075ae1ad0e51173607f036f','roli_00','02:11:45','02:26:45','2015-01-24'),('3aa827528144a1dd5fbd361c247940db','rolando55admin18894933','17:10:38',NULL,'2015-03-04'),('3bdfd62e460b84e4520d0ed6a4c5f23b','rolando55admin18894933','15:02:17','17:19:49','2015-02-26'),('3d3dc7987847ec027771abac9f8248aa','geabenitez51admin11122516','14:12:14',NULL,'2015-03-18'),('3dcd759ce23f8e491eaf10ee328ce68e','rolando55admin18894933','11:53:31',NULL,'2015-03-26'),('3e3237d8e5be5655e795919098f0146c','roli_00','01:54:02',NULL,'2015-01-24'),('4094b18befe0e18af731ebdcfbd44479','rolando55admin18894933','18:11:19',NULL,'2015-03-16'),('40d088c94dbe95b48c28f28a3959ea83','rolando55admin18894933','19:59:38','20:37:17','2015-03-04'),('40f19590e2f5c7044ea60b287ba9780c','rolando55admin18894933','16:38:20',NULL,'2015-03-29'),('4118ed3f3f20d6f43b5e764acbf03a87','geabenitez2admin13216571','15:53:57','15:56:12','2015-02-12'),('4181bf3e2921bcbff97e05efff6cf51d','geabenitez51admin11122516','14:52:31',NULL,'2015-03-17'),('4212a3881ed4c59f8e4f7612bf6c2579','esanchez30admin10528679','21:26:14','21:26:43','2015-02-13'),('43d57bef9189a71ba68468ea2783391c','roli_00','04:22:59','04:23:24','2015-01-31'),('440e5ab6affe941f6edc68907e67e96a','roli_00','04:14:39','04:14:43','2015-01-24'),('4524271d500bf54e39057fc672bdef11','juan69Sub-user10385792','09:51:11','10:06:57','2015-04-20'),('45b421c9be7f642568208029ab86b5bb','rolando55admin18894933','22:32:50','09:37:05','2015-03-07'),('45f6d42f52102b054545646898b74049','esanchez30admin10528679','19:40:30','20:00:07','2015-04-19'),('464ecc51cfe364233b3e45a293aa36f1','geabenitez51admin11122516','14:47:46','04:06:19','2015-02-24'),('472f81da80725ac216bd7610da985024','roli_00','03:39:03','03:39:25','2015-01-24'),('47e7e006c4e3253a92167ac1056006b4','rolando55admin18894933','21:04:12','21:09:38','2015-03-25'),('4909fcafdd653d5e4055dddcd9c9581c','maya75Graphic Designer18614558','23:53:47','00:00:43','2015-02-21'),('4956ad7f7c9cbcf1f5fbfb9d04f6deb4','geabenitez51admin11122516','02:21:57','20:42:50','2015-02-23'),('4abc7199ab4d43e35c952d2d1c19c3d9','esanchez30admin10528679','18:39:49','18:42:46','2015-02-24'),('4b99ccf7c0e4ebc35b1e4c4130db66cd','rolando55admin18894933','18:42:51','18:47:53','2015-02-24'),('4bf1af8473200ac9c3a048181d81f5da','geabenitez51admin11122516','15:50:02',NULL,'2015-02-21'),('4e7676adb2fecdbcdcbbb016490a5c0a','rolando55admin18894933','16:14:37',NULL,'2015-02-27'),('4eb38692f0eaff48cb53d1d3cc1bd69a','00user','15:05:36','15:05:48','2015-01-31'),('4ed71e1bbdfb8b829b6395c432115baa','rolando55admin18894933','17:02:15','20:36:29','2015-03-15'),('50a8e5634f494b0ab598faaa956f8b3c','rolando55admin18894933','23:43:22','23:43:56','2015-02-10'),('50caf741b944133dce9c32ed7ff36b54','esanchez30admin10528679','00:24:05','09:12:58','2015-04-21'),('510639723ce1863a086e3b587097e8ee','geabenitez51admin11122516','16:25:17',NULL,'2015-03-02'),('5156cdb8297dfa7f68f7387d76b24835','roli_00','05:34:25','05:34:29','2015-01-29'),('515ae3387a4534f3c8230b092944dabb','rolando55admin18894933','10:44:12',NULL,'2015-03-26'),('5181875d3d1e9820857d4246b12c69d4','geabenitez51admin11122516','07:51:56','07:53:43','2015-02-25'),('52f20fec850eb9a1d7b55d48e5301a6f','geabenitez51admin11122516','00:17:42',NULL,'2015-03-05'),('53e31a92cc937db8e5986090f3347442','rolando55admin18894933','18:19:58','21:26:07','2015-02-01'),('54829300edf5258eff5a460fe6b70861','rolando55admin18894933','11:54:25','17:23:23','2015-02-25'),('54a732e339e25a11efe33a3e7850c686','rolando55admin18894933','17:33:29',NULL,'2015-03-29'),('54e29f60a08bd928d6e1f7877df13001','roli_00','03:56:36','03:57:38','2015-01-24'),('554f4718cb793ea35362ddc1e10cb0aa','rolando55admin18894933','22:11:40','04:37:41','2015-02-05'),('55f36d125aecf7f6de60c725bbe729ef','rolando55admin18894933','15:02:02','15:02:11','2015-02-26'),('5661880972e9ef4126730408164c4f18','rolando55admin18894933','21:10:18','21:13:43','2015-02-13'),('567f9cb97904942cc52f3bec21f20bc5','roli_00','03:57:58','03:59:03','2015-01-24'),('56d0069ab9b1af77c40b8864c8e7d106','roli_00','18:26:36','18:26:39','2015-01-24'),('56ea13313a92840e06bf3c692719f87f','rolando55admin18894933','17:20:02','17:39:18','2015-02-26'),('57255afb8651953e7ea718f0facb32ed','esanchez30admin10528679','17:19:54','17:19:57','2015-02-26'),('57e1bc5fd88021e435e99385723c8933','rolando55admin18894933','17:39:40','19:33:24','2015-02-26'),('5829980bd0cfeca7c2bc73f95fceb38f','esanchez30admin10528679','18:11:57','18:20:38','2015-02-13'),('5997096cb373647a61bb1bde4ded93ff','rolando55admin18894933','16:06:27',NULL,'2015-02-27'),('5b8c981a6c5372b566085489be20b1af','roli_00','05:13:15','05:23:01','2015-01-25'),('5e53d5e419e243d047971804b8546c9f','rolando55admin18894933','21:10:38','10:42:05','2015-03-25'),('5e77969d842e883943a34ae6d200000e','roli_00','20:35:34','20:35:38','2015-01-30'),('5fb6eed45cbb24c59355fce1d75ce16f','roli_00','05:04:27','05:04:56','2015-01-30'),('6148847f35e33fea50b917b22ce36302','juan69Sub-user10385792','17:27:58','17:29:51','2015-02-12'),('616398611ce249f75b86359cd77a66c0','juan69Sub-user10385792','04:37:47','04:38:08','2015-02-06'),('62778ad5f8e34a449ed6883be85eb25b','geabenitez51admin11122516','15:08:45',NULL,'2015-03-16'),('633de0909777b259b57590d6c6323c67','juan69Sub-user10385792','10:09:26','10:11:23','2015-04-20'),('634d2d803d4bf24732f91d766834bbf3','roli_00','03:48:19','03:48:25','2015-01-24'),('64d4572fa933dfec6a83c0bfcbcf51ec','geabenitez2admin13216571','15:56:31','16:12:38','2015-02-12'),('65029aab5bd350071954fc4f6b18a072','rolando55admin18894933','19:29:04','19:29:08','2015-03-17'),('657cb97ffb5f20f324e27cc6d70480cb','roli_00','03:40:12','03:40:16','2015-01-24'),('6608e43337e9cd4cca56b6978338ed83','rolando55admin18894933','17:01:46',NULL,'2015-02-24'),('67a54dfb7ad65bb587caab88bd78b29b','roli_00','04:45:56','04:45:59','2015-01-24'),('6972a38c9d4376d8060a987c07bd8bd4','esanchez30admin10528679','22:19:17','22:19:28','2015-04-19'),('6b5a637b4b0fa76e0170958ddf370a83','geabenitez51admin11122516','18:20:43',NULL,'2015-02-13'),('6ceaf0219ba946bd5651487a226dd6f3','rolando55admin18894933','01:52:38','01:53:25','2015-03-09'),('6d5ce9f199fe47725d7726fd543839f5','roli_00','22:55:21','22:58:13','2015-01-25'),('6df151ac92437a74fe36093b4834bcd6','rolando55admin18894933','20:53:58','20:59:03','2015-03-31'),('6e20106f257e3ed1c5ce9e20c4ffeb4a','rolando55admin18894933','15:34:50','18:19:52','2015-02-01'),('6e49103844459af31b991371efade0dd','roli_00','04:19:12','04:19:23','2015-01-31'),('6f748c27b26f57a3a2309a9633b8b62d','rolando55admin18894933','16:16:01','16:16:07','2015-02-27'),('6fe784abe7063c09904630770af754d8','esanchez30admin10528679','18:53:33','18:55:59','2015-02-24'),('70807e09599cebcf3dc4a6b9656e0e8d','00user','04:05:27','04:10:22','2015-01-31'),('722eb74a9210d395fcf26654d3247872','roli_00','03:59:50','04:12:54','2015-01-24'),('725300010c8dd1fe18a44c1e1f1cf10b','roli_00','16:32:23','18:26:34','2015-01-24'),('7329357ff521fbfa77c056ae91b2496e','rolando55admin18894933','02:30:35','20:11:29','2015-02-11'),('73911e5b747a9b977d200c19ab4e2c30','roli_00','04:10:27','04:11:10','2015-01-31'),('750d76ac0b581826f5cbeb5ec63719c2','esanchez30admin10528679','19:57:45','19:57:59','2015-03-04'),('75c8c3037b254b30af4e3aadec257e2a','roli_00','23:51:24','23:52:58','2015-01-26'),('782e74fd1f21d95fb32c32280326a8a7','roli_00','15:01:07','17:26:19','2015-01-31'),('7b8906587b1ce22997bbc1ff8627cad7','rolando55admin18894933','21:14:46','07:37:43','2015-03-15'),('7c0ecf327b3aca80965661b46a4159d7','rolando55admin18894933','21:18:14','11:06:55','2015-03-31'),('7d0d2f0594cb268b871acc7e108e4251','roli_00','02:24:37','02:25:36','2015-01-24'),('7d648ed8cf234a47ae2fad087dd8e457','roli_00','22:47:54','22:55:08','2015-01-25'),('7f5325db214b342b8a2dbbd255c06bf7','rolando55admin18894933','23:44:02','23:44:06','2015-02-10'),('7f6b2795a6af188e9a9ebfc18d4cd36a','rolando55admin18894933','10:25:46','10:57:23','2015-04-04'),('7fdb9f089a8222488563b05170793b61','rolando55admin18894933','16:32:51',NULL,'2015-03-29'),('7ffbd938215df78ffee35e35f53cdf0c','roli_00','15:19:21','22:47:52','2015-01-25'),('805da4a97b73decf3fea4b093fcb6dd9','roli_00','15:46:01','16:03:10','2015-01-24'),('80b4197985aea9b3fabb6eca7f202912','roli_00','03:55:24','03:58:43','2015-01-31'),('81f0fe9231c53acd04133e2554d39075','esanchez30admin10528679','09:37:56','09:38:12','2015-03-08'),('81f6b12fa7c84cd16522a841c57d5364','esanchez30admin10528679','11:04:49','11:05:47','2015-04-28'),('8394289567ad38f5da2f3a352563a9ed','roli_00','03:59:52',NULL,'2015-01-31'),('8489559d58d95cb873497e79b4cc326f','roli_00','03:09:54','04:25:37','2015-01-29'),('85077379ce52d2b448c411a19f7700c5','rolando55admin18894933','15:44:31',NULL,'2015-03-02'),('85ea278acb2dd7cfbed4ffc8f52a7f7a','roli_00','04:04:35','04:04:55','2015-01-31'),('86d23ac517bab0ce02f69bf438539f90','rolando55admin18894933','09:33:32',NULL,'2015-03-07'),('871ddcbb46f05bc4610a06174fa4f73e','esanchez30admin10528679','11:09:08','11:25:39','2015-04-21'),('8897bf1c1a73a3a2abda10ab7a00bfdf','roli_00','05:13:15',NULL,'2015-01-25'),('8b69d23751510b748154138e25d7c989','rolando55admin18894933','15:48:10',NULL,'2015-02-02'),('8bbba6a7ce67ed0fe1851dda1f8ca73a','rolando55admin18894933','17:31:44','17:43:20','2015-02-26'),('8bd0281fbb88e39e108ace2cc2718726','juan69Sub-user10385792','10:11:43','10:14:44','2015-04-20'),('8cc324d93344b4427886da8535b0542a','roli_00','04:45:59','04:56:35','2015-01-29'),('8eb8110a50f72f64ff9efb2834109938','esanchez30admin10528679','18:56:23','18:58:00','2015-02-24'),('8f417bd039f841789ca296cdf20a4075','roli_00','04:18:53',NULL,'2015-01-31'),('8fcf732428a65b168e9a3879f23015f0','esanchez30admin10528679','09:50:58','09:51:39','2015-04-19'),('90810568271b5cefed9402e77ab32331','rolando55admin18894933','09:42:09','10:44:07','2015-03-26'),('910e3da05c314ca052556066f0ecfc92','roli_00','04:17:23','04:18:51','2015-01-31'),('91181207ca807787cea11df0edefc400','rolando55admin18894933','16:07:20',NULL,'2015-02-27'),('919ef03f30e3b2b90cf2ada1d20b43cd','roli_00','15:34:00','16:08:04','2015-01-24'),('925266e748a0a60928f5e23c9cd77233','roli_00','21:00:57','03:55:06','2015-01-30'),('92b169fded0a435103e5460eae4ace7a','esanchez30admin10528679','18:47:59','18:53:09','2015-02-24'),('93eddc0ba7e0956d96eefe9e1c4b337e','rolando55admin18894933','18:50:45',NULL,'2015-03-12'),('94084926acb2936144d1e6a217061fa2','roli_00','22:59:45','23:21:57','2015-01-25'),('9485ca1e482c5e172f788c934e26aa96','juan69Sub-user10385792','02:21:42','02:21:52','2015-02-23'),('94eba115be41b6d8f7673f0eef68d2b5','roli_00','03:55:08','03:55:22','2015-01-31'),('96215055d0a2e4a57beab492d58d9915','geabenitez51admin11122516','15:13:58',NULL,'2015-03-16'),('9651da775c53e3ae8e354f84d1f95862','roli_00','23:56:35','00:03:04','2015-01-24'),('975e021a29d393107d593ff902677302','geabenitez51admin11122516','14:32:59',NULL,'2015-03-25'),('97d1fbd30fbded6c4eb5d9b83c581735','rolando55admin18894933','20:08:03','17:19:34','2015-03-12'),('99b51915668b0878b9042865db745823','roli_00','18:43:33','19:58:40','2015-01-28'),('9a2b164fb1216f2acd05a814b1b5dfd4','rolando55admin18894933','02:19:30','02:21:36','2015-02-23'),('9bdb9b1ef178cfa773157140ab2a5633','geabenitez2admin13216571','16:13:42','16:20:57','2015-02-12'),('9cf10e36d3ef7f361ba8f53605e59c43','roli_00','23:55:28','23:55:32','2015-01-24'),('9e02eeed1b88652e7ee4d252474699b8','rolando55admin18894933','05:06:53',NULL,'2015-02-14'),('9ea568fb61cd65e12886db86d67319ab','juan69Sub-user10385792','10:39:39','10:40:50','2015-04-20'),('9ec46ffde0cb4a0ec5772d0ffddf3543','rolando55admin18894933','11:06:20',NULL,'2015-03-31'),('9ed107852a82704208c725e2b2889957','maya75Graphic Designer18614558','20:00:15','20:01:15','2015-04-19'),('9ed2bdf315c25bb807d863ad1d4008be','rolando55admin18894933','14:57:29',NULL,'2015-02-26'),('a11bc9cee7cad0652a84852794064445','rolando55admin18894933','17:27:30','04:18:41','2015-01-31'),('a1567571904386bfed4fdb75cc11f4ff','rolando55admin18894933','18:27:29',NULL,'2015-02-25'),('a2c23734438ac49cf866dae1b0815914','juan69Sub-user10385792','10:15:00','10:39:22','2015-04-20'),('a3f58814fddd33642e08ad64ae127cdf','rolando55admin18894933','21:13:52','21:19:54','2015-02-13'),('a7d32a1cc852fab1d6f3dc61f7730577','rolando55admin18894933','20:14:02','20:14:05','2015-02-13'),('a84884b604481d54b5c6d85036e5819d','juan69Sub-user10385792','21:26:46','21:26:49','2015-02-13'),('a874c71f064dde932c4470ddcbc4eee8','rolando55admin18894933','16:13:06',NULL,'2015-02-27'),('a9024f1682bf477a38722c2b82067de4','juan69Sub-user10385792','20:13:10','20:13:33','2015-02-13'),('a90aa469d4e555f7dbc122a4114cad20','roli_00','15:00:19',NULL,'2015-01-31'),('a936b3837cc8bb259676ed40c3d9c7cc','rolando55admin18894933','23:42:20','23:42:23','2015-02-10'),('a9b78d2c78ae69fe9283e1de7350dbb5','rolando55admin18894933','00:54:07','23:34:25','2015-02-09'),('a9e148ff8c75fbeb9cc5a06d49823a47','rolando55admin18894933','15:24:43',NULL,'2015-03-13'),('aa0a75fa212400ea5e585183bbf7af6d','rolando55admin18894933','17:39:06','15:26:33','2015-02-07'),('ac8d4db2dfcaa06011d27459fdccc21d','roli_00','02:22:12','02:22:22','2015-01-24'),('ac8de2852745835e7785b4ece570b255','rolando55admin18894933','21:11:59','21:16:29','2015-03-31'),('adecc7118fcaa974c53dc21daf045d93','00user','04:11:18','04:23:32','2015-01-31'),('aec58d61dd1610e34849573b75482a67','rolando55admin18894933','20:12:35','20:13:06','2015-02-13'),('afec98e8b34b285dfca9dbf4ebfd5569','rolando55admin18894933','02:59:17','03:42:49','2015-02-14'),('b0d6e476fa33f355f43957158a11e0ea','rolando55admin18894933','21:02:10','21:11:39','2015-03-31'),('b158139e08d253824cf8362f3b871bc8','roli_00','01:17:25','01:51:12','2015-01-24'),('b1aff52753362f390ed69172397c4c89','rolando55admin18894933','07:53:52','07:54:54','2015-02-25'),('b2e3c1e4195dbd5e57421ff1f580cba9','geabenitez51admin11122516','23:17:08',NULL,'2015-03-17'),('b405ac560dc4d730c2fca4a256058158','00user','20:38:59','20:41:18','2015-01-30'),('b48806109f15f349c376165cabe08dea','geabenitez51admin11122516','19:44:41',NULL,'2015-03-13'),('b48d04aa6046968efe4e76a96f2d0458','rolando55admin18894933','03:46:12',NULL,'2015-03-24'),('b5c915a2091ed8e225cf645ce1c57047','rolando55admin18894933','18:58:05','07:51:50','2015-02-24'),('b62f5d3b059fd949bdeac7203180caae','esanchez30admin10528679','11:08:00','16:09:07','2015-04-28'),('b753bae52ad40140f012d66356c63d6f','rolando55admin18894933','07:42:46','17:36:35','2015-03-16'),('b7d4cec86e782fe52fccea137690c677','geabenitez51admin11122516','00:40:35',NULL,'2015-03-19'),('b849a9789971e8913b3897b0596efed0','rolando55admin18894933','17:41:38',NULL,'2015-03-17'),('ba2bfa698a95c6956d2a23f0d2ed6cc9','roli_00','15:05:55','17:27:53','2015-01-31'),('bb37741d36c82882b36155b6c14a7b49','rolando55admin18894933','15:28:29',NULL,'2015-02-27'),('bbd188b887732dccd52df6b2c75dfd74','juan69Sub-user10385792','20:43:00','21:10:09','2015-02-13'),('bc265bd067d53e09daaca3a37525017e','geabenitez51admin11122516','15:42:55',NULL,'2015-03-27'),('bcb3d7b4f92b6cede48c3db925ca0859','rolando55admin18894933','17:31:52',NULL,'2015-02-25'),('bd352368cf986c1607c4cdb5d4829af4','rolando55admin18894933','20:13:37','20:13:56','2015-02-13'),('bd5013f54603163f66d628fc5a5907ca','rolando55admin18894933','15:24:12','18:07:38','2015-03-16'),('bdfb744ce354935543d2eef6319b3ae5','maya75Graphic Designer18614558','15:54:40','15:55:25','2015-04-23'),('be7f6c01a88052d59cb404c1a0a6c5e1','rolando55admin18894933','19:39:44','19:39:47','2015-03-04'),('bf1462c4cd73862dcfbad3fa5a745090','roli_00','03:52:55','03:52:59','2015-01-24'),('bf90b300437fbc10d983fe8fdb1de2a5','rolando55admin18894933','10:49:12',NULL,'2015-03-30'),('c01a7305d82ba6149848b17c6d72ad67','rolando55admin18894933','10:08:30',NULL,'2015-04-05'),('c09658abff0279ac25524f8857af4909','rolando55admin18894933','15:25:14',NULL,'2015-02-23'),('c09ba7db61616689c12098ead8804bc8','rolando55admin18894933','14:59:32',NULL,'2015-02-26'),('c11e7f9076404eef6c59dc090d6a9e1b','rolando55admin18894933','21:26:52','02:55:04','2015-02-13'),('c1598d49dcf8b8a5b9c4b669e55fff01','roli_00','03:41:22','03:41:31','2015-01-24'),('c24f95834e5dc7dc936ebb96050bd1c7','roli_00','02:22:24','02:24:35','2015-01-24'),('c276cd31419321ee8ddda687aedeae09','juan69Sub-user10385792','20:14:08','20:15:04','2015-02-13'),('c3eb570ca0fc321012e7bb98f0b56824','esanchez30admin10528679','15:40:49',NULL,'2015-02-27'),('c51588f03b615257d42c39221356e8d3','roli_00','03:37:19','04:06:32','2015-01-24'),('c6c562240921780dd83692fed0370e8b','roli_00','02:26:09',NULL,'2015-01-24'),('c8d1ac53e478282d5defbbfa7754eaf2','geabenitez51admin11122516','17:44:36',NULL,'2015-03-30'),('c9a34a28155aa831901158af13441145','esanchez30admin10528679','19:38:35','19:39:03','2015-04-27'),('c9c6dfb9c8deaf7ac62da782add31f7c','geabenitez51admin11122516','21:55:55','23:57:54','2015-02-12'),('ca43edc39088a4e983506a64757d205d','rolando55admin18894933','16:26:06','17:39:03','2015-02-07'),('cbbfc9e2ecba9bca188ed879488f4e52','rolando55admin18894933','17:14:18','17:27:45','2015-02-12'),('cc2f1070019dadd0bd0a0f95fb2b7273','rolando55admin18894933','07:39:21','07:39:50','2015-03-16'),('cc7345b0d0a464603026ada4c0777d57','roli_00','06:06:04','06:09:30','2015-01-29'),('cc9a287feef502580f7b14e6d30af7c4','juan69Sub-user10385792','10:07:02','10:08:52','2015-04-20'),('ccfac64969132eb6a6ec6081f662439f','rolando55admin18894933','19:29:40',NULL,'2015-03-04'),('cd8d9a3a08538327937e0a0ee3fecc5b','geabenitez51admin11122516','17:01:54',NULL,'2015-04-08'),('cfbb09c5056639e762414c5a5e63783b','rolando55admin18894933','15:27:07',NULL,'2015-03-23'),('d075c370b95d0b390801854f6a10a0bb','roli_00','00:29:10','01:16:48','2015-01-24'),('d0b669af1c8b35a9a97ad3fb4c3105d4','geabenitez51admin11122516','02:58:05','02:59:14','2015-02-14'),('d0ec6bc8e453973b698f4deca647a1a2','maya75Graphic Designer18614558','19:37:59','19:40:22','2015-04-19'),('d2132312d6f773ddaff3805c9318cd24','rolando55admin18894933','17:30:06',NULL,'2015-02-12'),('d2655d760fa117e1edd9ea10ebc82cd0','rolando55admin18894933','20:41:58','20:53:55','2015-03-31'),('d3893fac448862c6c91642b45ee32a6a','esanchez30admin10528679','21:23:26','21:24:24','2015-02-13'),('d46bdd9cb2638ad604c07d5620b87420','roli_00','04:23:36','04:36:15','2015-01-31'),('d53266fc857f40e1e0dfd59f7498d0a7','geabenitez51admin11122516','04:11:06',NULL,'2015-03-19'),('d5c7216b3d36f714301c6af6dcd3d16f','esanchez30admin10528679','09:37:12','09:37:33','2015-03-08'),('d60bf777e3e2dfd54278de338d85a706','rolando55admin18894933','09:45:54','18:21:47','2015-03-31'),('d6228dbfa5c1cdc6e086d7942dfb932b','rolando55admin18894933','19:19:15','19:44:47','2015-03-12'),('d64a7d947e9684b8838d34acab8493eb','juan69Sub-user10385792','21:23:18','21:23:23','2015-02-13'),('d6f44309e5c52a3f09749fbdc433ffbe','roli_00','02:26:48','02:48:10','2015-01-24'),('d7242974c5fec25dc95241285caa823e','juan69Sub-user10385792','10:40:58',NULL,'2015-04-20'),('d799fc2fe92856fabf96182f6307d724','rolando55admin18894933','18:56:04','18:56:19','2015-02-24'),('d7f53143e47c369b43adbf89cd4453a9','rolando55admin18894933','19:40:08','19:40:17','2015-03-04'),('d819d8ce8e35e4108dcaad7546794ea4','esanchez30admin10528679','17:39:34','17:39:36','2015-02-26'),('d9fb85230b44b2bf73a8b21c50cc38d0','juan69Sub-user10385792','00:52:37','00:54:04','2015-02-09'),('daa6a0ffd7a14aa4a8cfe99166009c02','esanchez30admin10528679','20:56:31','21:02:24','2015-03-25'),('db673dd58069530441cf7d8c56f148f3','rolando55admin18894933','02:56:19','02:57:58','2015-02-14'),('db7f9754b081eadeae542c66e9571129','esanchez30admin10528679','17:56:32','18:11:54','2015-02-13'),('dcd4930b55fa15cef88965977b76d2bd','roli_00','04:16:30','04:42:10','2015-01-24'),('df6527c4eeb9d4d78f9cb23fb6d54f59','rolando55admin18894933','15:14:51',NULL,'2015-03-09'),('df99bdd70b7b34ccfdb4800264655a3f','00user','03:58:49',NULL,'2015-01-31'),('e0f3ee5d7aa2933c943a36b3e2522946','geabenitez51admin11122516','16:57:48','17:01:20','2015-02-24'),('e2c2a4e6e28b64517983986a93d045bb','rolando55admin18894933','21:20:23','21:20:28','2015-02-13'),('e32e1b7a157bcf63c1e9ef44486b6548','juan69Sub-user10385792','10:09:07','10:09:13','2015-04-20'),('e5a15324bb6f98fdde87f89510deb109','rolando55admin18894933','08:51:51','20:56:24','2015-03-25'),('e5e12a9c032cc307f0d64feccb74582a','roli_00','02:02:29','02:02:33','2015-01-24'),('e5fd476368a1bf51ca49cb0204a5b01e','juan69Sub-user10385792','21:13:46','21:13:50','2015-02-13'),('e74d0b22fff9d234625d1ac701ad3f6e','rolando55admin18894933','11:30:03','08:18:03','2015-03-22'),('e9339af8744997b94795a6cea78dba66','rolando55admin18894933','19:43:34','19:47:56','2015-03-04'),('e9bac20020eb525873f753d86e7dc43a','rolando55admin18894933','09:18:16','15:24:33','2015-03-15'),('ea12483b85fed08ad8ac838e70ef6de9','esanchez30admin10528679','22:16:36','22:19:07','2015-04-19'),('ec81c0aeb1fdb06227fbd1892dd1e7db','rolando55admin18894933','21:28:03','21:33:26','2015-03-08'),('ec95220222a75ac7ceb502a39dc10d27','geabenitez51admin11122516','03:10:42',NULL,'2015-02-21'),('ed20135facdcf0ab82ba17c4f8a852b9','rolando55admin18894933','21:02:30','21:04:06','2015-03-25'),('edcff246746bb42714a46db5690f86b8','rolando55admin18894933','08:33:13','09:09:56','2015-03-14'),('ee60f8be0362991836ecb64f35e94807','geabenitez51admin11122516','23:58:11','00:03:25','2015-02-13'),('eea29fe37f085c307fabe0cbb8aa58d4','roli_00','05:23:04','15:19:07','2015-01-25'),('ef4f3d96f45bea52839ebf6064694979','geabenitez51admin11122516','16:36:05','17:56:07','2015-02-13'),('efb8c78e9437020b45f708accdd3f8cd','rolando55admin18894933','09:37:41','09:37:51','2015-03-08'),('efcb883f391ee1547afe3c750ba33153','00user','20:36:53','20:38:37','2015-01-30'),('effefad12e664fe52dc8219df07f1ec4','roli_00','05:05:01','05:05:47','2015-01-30'),('f098b0b090b6f0a38b4735c1453700a0','rolando55admin18894933','16:28:03',NULL,'2015-03-12'),('f154f9ec3f95e84d3840ed3b42614d42','roli_00','04:02:02','04:17:08','2015-01-31'),('f1772882baaa9b07f2aab235df2ce790','rolando55admin18894933','19:27:16','19:29:57','2015-03-12'),('f1afea7981b7d1d462cf6db6cbba40d1','00user','20:38:41','04:04:23','2015-01-30'),('f1ec0efef9517389fb4b87fc9f42954b','esanchez30admin10528679','02:55:07','02:55:52','2015-02-14'),('f293b01ccc5979b420d74a2f1836628c','juan69Sub-user10385792','00:03:29',NULL,'2015-02-13'),('f2bf8326f78d65193ae87d11b39b2ee3','rolando55admin18894933','19:48:25','19:48:34','2015-03-04'),('f4e0d606b4373d128cc9b712f471e169','esanchez30admin10528679','08:18:12','08:51:45','2015-03-25'),('f5e2950ff2b5b265ee8459aef599f893','roli_00','00:16:04','00:29:03','2015-01-24'),('f6910baecdb1ab9f2aab1565dbf195b9','rolando55admin18894933','20:15:08','20:42:56','2015-02-13'),('f6a04977a92a92c85445229144736dbb','rolando55admin18894933','03:46:13',NULL,'2015-03-24'),('f8d91581648fb1b178b61cfffa9b4aca','rolando55admin18894933','10:28:55',NULL,'2015-03-28'),('fa3b882558977b174330f6a23d4ec1f8','rolando55admin18894933','17:23:56','18:17:32','2015-03-13'),('fb1b6054d35ad8817253cb864a2880db','roli_00','04:20:57','04:22:39','2015-01-31'),('fb3c5374395d9b971c303d1382974122','geabenitez51admin11122516','13:23:16',NULL,'2015-02-28'),('fbd142dbae042827f3ec76358d92a70c','roli_00','00:13:54','00:15:47','2015-01-24'),('fc746d578c22dfa2bb33b0e517390758','geabenitez51admin11122516','04:06:27',NULL,'2015-02-25'),('fdb3bee04acaffa76598c39c7acb9fe8','rolando55admin18894933','08:42:05','11:24:33','2015-03-27'),('fe1513f2a2345ad877cb90232af7fdb7','roli_00','18:43:22','18:43:26','2015-01-28'),('feecaf6b78c9aeb7365d28a54399da63','rolando55admin18894933','07:42:45',NULL,'2015-03-16'),('ffac470220e1ca1734b6251dc9d75c6f','juan69Sub-user10385792','09:38:32','09:51:06','2015-04-20');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(45) NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `activo` int(11) NOT NULL,
  `rol` varchar(45) NOT NULL,
  `fecha` date DEFAULT NULL,
  `sesion` int(11) DEFAULT '0',
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Tabla de logueo lieison , esta tabla genera los permisos necesarios	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (6,'rolando55admin18894933','rolando','B5lurcxKewhBxoNkDOMjD28AzoXiFfSuHs4Wzb2wsUI=',1,'admin',NULL,1),(11,'juan69Sub-user10385792','juan','X7H/sbA1EY+4HYt36qv+wWooj7icx3OFKYn4MO+kj1g=',1,'Junior','2015-02-06',1),(12,'geabenitez51admin11122516','geabenitez','0kI93Zv68xbREvZRS71FZwAaXKjcmAPZHXkWyMrfDSc=',1,'admin','2015-02-12',1),(13,'esanchez30admin10528679','esanchez','nouB2zBzN0/WESrrZnFglZmPukJ4n7LZvYLQbPIoA8s=',1,'Sales','2015-02-13',0),(14,'maya75Graphic Designer18614558','maya','S1yHuiJpFJDu41NGkDMM4Ci/U/vD0GwyYG+gZcOHSSQ=',1,'Graphic Designer','2015-02-21',0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `PAI_PK` int(11) NOT NULL AUTO_INCREMENT,
  `PAI_ISONUM` smallint(6) DEFAULT NULL,
  `PAI_ISO2` char(2) DEFAULT NULL,
  `PAI_ISO3` char(3) DEFAULT NULL,
  `PAI_NOMBRE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`PAI_PK`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,4,'AF','AFG','Afganistán'),(2,248,'AX','ALA','Islas Gland'),(3,8,'AL','ALB','Albania'),(4,276,'DE','DEU','Alemania'),(5,20,'AD','AND','Andorra'),(6,24,'AO','AGO','Angola'),(7,660,'AI','AIA','Anguilla'),(8,10,'AQ','ATA','Antártida'),(9,28,'AG','ATG','Antigua y Barbuda'),(10,530,'AN','ANT','Antillas Holandesas'),(11,682,'SA','SAU','Arabia Saudí'),(12,12,'DZ','DZA','Argelia'),(13,32,'AR','ARG','Argentina'),(14,51,'AM','ARM','Armenia'),(15,533,'AW','ABW','Aruba'),(16,36,'AU','AUS','Australia'),(17,40,'AT','AUT','Austria'),(18,31,'AZ','AZE','Azerbaiyán'),(19,44,'BS','BHS','Bahamas'),(20,48,'BH','BHR','Bahréin'),(21,50,'BD','BGD','Bangladesh'),(22,52,'BB','BRB','Barbados'),(23,112,'BY','BLR','Bielorrusia'),(24,56,'BE','BEL','Bélgica'),(25,84,'BZ','BLZ','Belice'),(26,204,'BJ','BEN','Benin'),(27,60,'BM','BMU','Bermudas'),(28,64,'BT','BTN','Bhután'),(29,68,'BO','BOL','Bolivia'),(30,70,'BA','BIH','Bosnia y Herzegovina'),(31,72,'BW','BWA','Botsuana'),(32,74,'BV','BVT','Isla Bouvet'),(33,76,'BR','BRA','Brasil'),(34,96,'BN','BRN','Brunéi'),(35,100,'BG','BGR','Bulgaria'),(36,854,'BF','BFA','Burkina Faso'),(37,108,'BI','BDI','Burundi'),(38,132,'CV','CPV','Cabo Verde'),(39,136,'KY','CYM','Islas Caimán'),(40,116,'KH','KHM','Camboya'),(41,120,'CM','CMR','Camerún'),(42,124,'CA','CAN','Canadá'),(43,140,'CF','CAF','República Centroafricana'),(44,148,'TD','TCD','Chad'),(45,203,'CZ','CZE','República Checa'),(46,152,'CL','CHL','Chile'),(47,156,'CN','CHN','China'),(48,196,'CY','CYP','Chipre'),(49,162,'CX','CXR','Isla de Navidad'),(50,336,'VA','VAT','Ciudad del Vaticano'),(51,166,'CC','CCK','Islas Cocos'),(52,170,'CO','COL','Colombia'),(53,174,'KM','COM','Comoras'),(54,180,'CD','COD','República Democrática del Congo'),(55,178,'CG','COG','Congo'),(56,184,'CK','COK','Islas Cook'),(57,408,'KP','PRK','Corea del Norte'),(58,410,'KR','KOR','Corea del Sur'),(59,384,'CI','CIV','Costa de Marfil'),(60,188,'CR','CRI','Costa Rica'),(61,191,'HR','HRV','Croacia'),(62,192,'CU','CUB','Cuba'),(63,208,'DK','DNK','Dinamarca'),(64,212,'DM','DMA','Dominica'),(65,214,'DO','DOM','República Dominicana'),(66,218,'EC','ECU','Ecuador'),(67,818,'EG','EGY','Egipto'),(68,222,'SV','SLV','El Salvador'),(69,784,'AE','ARE','Emiratos Árabes Unidos'),(70,232,'ER','ERI','Eritrea'),(71,703,'SK','SVK','Eslovaquia'),(72,705,'SI','SVN','Eslovenia'),(73,724,'ES','ESP','España'),(74,581,'UM','UMI','Islas ultramarinas de Estados Unidos'),(75,840,'US','USA','Estados Unidos'),(76,233,'EE','EST','Estonia'),(77,231,'ET','ETH','Etiopía'),(78,234,'FO','FRO','Islas Feroe'),(79,608,'PH','PHL','Filipinas'),(80,246,'FI','FIN','Finlandia'),(81,242,'FJ','FJI','Fiyi'),(82,250,'FR','FRA','Francia'),(83,266,'GA','GAB','Gabón'),(84,270,'GM','GMB','Gambia'),(85,268,'GE','GEO','Georgia'),(86,239,'GS','SGS','Islas Georgias del Sur y Sandwich del Sur'),(87,288,'GH','GHA','Ghana'),(88,292,'GI','GIB','Gibraltar'),(89,308,'GD','GRD','Granada'),(90,300,'GR','GRC','Grecia'),(91,304,'GL','GRL','Groenlandia'),(92,312,'GP','GLP','Guadalupe'),(93,316,'GU','GUM','Guam'),(94,320,'GT','GTM','Guatemala'),(95,254,'GF','GUF','Guayana Francesa'),(96,324,'GN','GIN','Guinea'),(97,226,'GQ','GNQ','Guinea Ecuatorial'),(98,624,'GW','GNB','Guinea-Bissau'),(99,328,'GY','GUY','Guyana'),(100,332,'HT','HTI','Haití'),(101,334,'HM','HMD','Islas Heard y McDonald'),(102,340,'HN','HND','Honduras'),(103,344,'HK','HKG','Hong Kong'),(104,348,'HU','HUN','Hungría'),(105,356,'IN','IND','India'),(106,360,'ID','IDN','Indonesia'),(107,364,'IR','IRN','Irán'),(108,368,'IQ','IRQ','Iraq'),(109,372,'IE','IRL','Irlanda'),(110,352,'IS','ISL','Islandia'),(111,376,'IL','ISR','Israel'),(112,380,'IT','ITA','Italia'),(113,388,'JM','JAM','Jamaica'),(114,392,'JP','JPN','Japón'),(115,400,'JO','JOR','Jordania'),(116,398,'KZ','KAZ','Kazajstán'),(117,404,'KE','KEN','Kenia'),(118,417,'KG','KGZ','Kirguistán'),(119,296,'KI','KIR','Kiribati'),(120,414,'KW','KWT','Kuwait'),(121,418,'LA','LAO','Laos'),(122,426,'LS','LSO','Lesotho'),(123,428,'LV','LVA','Letonia'),(124,422,'LB','LBN','Líbano'),(125,430,'LR','LBR','Liberia'),(126,434,'LY','LBY','Libia'),(127,438,'LI','LIE','Liechtenstein'),(128,440,'LT','LTU','Lituania'),(129,442,'LU','LUX','Luxemburgo'),(130,446,'MO','MAC','Macao'),(131,807,'MK','MKD','ARY Macedonia'),(132,450,'MG','MDG','Madagascar'),(133,458,'MY','MYS','Malasia'),(134,454,'MW','MWI','Malawi'),(135,462,'MV','MDV','Maldivas'),(136,466,'ML','MLI','Malí'),(137,470,'MT','MLT','Malta'),(138,238,'FK','FLK','Islas Malvinas'),(139,580,'MP','MNP','Islas Marianas del Norte'),(140,504,'MA','MAR','Marruecos'),(141,584,'MH','MHL','Islas Marshall'),(142,474,'MQ','MTQ','Martinica'),(143,480,'MU','MUS','Mauricio'),(144,478,'MR','MRT','Mauritania'),(145,175,'YT','MYT','Mayotte'),(146,484,'MX','MEX','México'),(147,583,'FM','FSM','Micronesia'),(148,498,'MD','MDA','Moldavia'),(149,492,'MC','MCO','Mónaco'),(150,496,'MN','MNG','Mongolia'),(151,500,'MS','MSR','Montserrat'),(152,508,'MZ','MOZ','Mozambique'),(153,104,'MM','MMR','Myanmar'),(154,516,'NA','NAM','Namibia'),(155,520,'NR','NRU','Nauru'),(156,524,'NP','NPL','Nepal'),(157,558,'NI','NIC','Nicaragua'),(158,562,'NE','NER','Níger'),(159,566,'NG','NGA','Nigeria'),(160,570,'NU','NIU','Niue'),(161,574,'NF','NFK','Isla Norfolk'),(162,578,'NO','NOR','Noruega'),(163,540,'NC','NCL','Nueva Caledonia'),(164,554,'NZ','NZL','Nueva Zelanda'),(165,512,'OM','OMN','Omán'),(166,528,'NL','NLD','Países Bajos'),(167,586,'PK','PAK','Pakistán'),(168,585,'PW','PLW','Palau'),(169,275,'PS','PSE','Palestina'),(170,591,'PA','PAN','Panamá'),(171,598,'PG','PNG','Papúa Nueva Guinea'),(172,600,'PY','PRY','Paraguay'),(173,604,'PE','PER','Perú'),(174,612,'PN','PCN','Islas Pitcairn'),(175,258,'PF','PYF','Polinesia Francesa'),(176,616,'PL','POL','Polonia'),(177,620,'PT','PRT','Portugal'),(178,630,'PR','PRI','Puerto Rico'),(179,634,'QA','QAT','Qatar'),(180,826,'GB','GBR','Reino Unido'),(181,638,'RE','REU','Reunión'),(182,646,'RW','RWA','Ruanda'),(183,642,'RO','ROU','Rumania'),(184,643,'RU','RUS','Rusia'),(185,732,'EH','ESH','Sahara Occidental'),(186,90,'SB','SLB','Islas Salomón'),(187,882,'WS','WSM','Samoa'),(188,16,'AS','ASM','Samoa Americana'),(189,659,'KN','KNA','San Cristóbal y Nevis'),(190,674,'SM','SMR','San Marino'),(191,666,'PM','SPM','San Pedro y Miquelón'),(192,670,'VC','VCT','San Vicente y las Granadinas'),(193,654,'SH','SHN','Santa Helena'),(194,662,'LC','LCA','Santa Lucía'),(195,678,'ST','STP','Santo Tomé y Príncipe'),(196,686,'SN','SEN','Senegal'),(197,891,'CS','SCG','Serbia y Montenegro'),(198,690,'SC','SYC','Seychelles'),(199,694,'SL','SLE','Sierra Leona'),(200,702,'SG','SGP','Singapur'),(201,760,'SY','SYR','Siria'),(202,706,'SO','SOM','Somalia'),(203,144,'LK','LKA','Sri Lanka'),(204,748,'SZ','SWZ','Suazilandia'),(205,710,'ZA','ZAF','Sudáfrica'),(206,736,'SD','SDN','Sudán'),(207,752,'SE','SWE','Suecia'),(208,756,'CH','CHE','Suiza'),(209,740,'SR','SUR','Surinam'),(210,744,'SJ','SJM','Svalbard y Jan Mayen'),(211,764,'TH','THA','Tailandia'),(212,158,'TW','TWN','Taiwán'),(213,834,'TZ','TZA','Tanzania'),(214,762,'TJ','TJK','Tayikistán'),(215,86,'IO','IOT','Territorio Británico del Océano Índico'),(216,260,'TF','ATF','Territorios Australes Franceses'),(217,626,'TL','TLS','Timor Oriental'),(218,768,'TG','TGO','Togo'),(219,772,'TK','TKL','Tokelau'),(220,776,'TO','TON','Tonga'),(221,780,'TT','TTO','Trinidad y Tobago'),(222,788,'TN','TUN','Túnez'),(223,796,'TC','TCA','Islas Turcas y Caicos'),(224,795,'TM','TKM','Turkmenistán'),(225,792,'TR','TUR','Turquía'),(226,798,'TV','TUV','Tuvalu'),(227,804,'UA','UKR','Ucrania'),(228,800,'UG','UGA','Uganda'),(229,858,'UY','URY','Uruguay'),(230,860,'UZ','UZB','Uzbekistán'),(231,548,'VU','VUT','Vanuatu'),(232,862,'VE','VEN','Venezuela'),(233,704,'VN','VNM','Vietnam'),(234,92,'VG','VGB','Islas Vírgenes Británicas'),(235,850,'VI','VIR','Islas Vírgenes de los Estados Unidos'),(236,876,'WF','WLF','Wallis y Futuna'),(237,887,'YE','YEM','Yemen'),(238,262,'DJ','DJI','Yibuti'),(239,894,'ZM','ZMB','Zambia'),(240,716,'ZW','ZWE','Zimbabue');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilegios`
--

DROP TABLE IF EXISTS `privilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilegios` (
  `id_privilegios` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_privilegios`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilegios`
--

LOCK TABLES `privilegios` WRITE;
/*!40000 ALTER TABLE `privilegios` DISABLE KEYS */;
INSERT INTO `privilegios` VALUES (2,55,'admin',0),(11,84,'Accounting',0),(15,173,'Human Resources',0),(16,8,'Legal',0),(17,41,'Marketing',0),(18,53,'QMS',0),(19,76,'Sales',0),(22,962,'Graphic Designer',0),(23,1829,'Developer',0),(24,170,'Junior',1829);
/*!40000 ALTER TABLE `privilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_bitacora_tipo`
--

DROP TABLE IF EXISTS `sales_bitacora_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_bitacora_tipo` (
  `id_tipo` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_bitacora_tipo`
--

LOCK TABLES `sales_bitacora_tipo` WRITE;
/*!40000 ALTER TABLE `sales_bitacora_tipo` DISABLE KEYS */;
INSERT INTO `sales_bitacora_tipo` VALUES (0,'Sistema'),(1,'Nulo');
/*!40000 ALTER TABLE `sales_bitacora_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_client`
--

DROP TABLE IF EXISTS `sales_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `direccion` text NOT NULL,
  `id_pais` int(11) NOT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `pagina_web` text,
  `email` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `id_prospect` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_client`
--

LOCK TABLES `sales_client` WRITE;
/*!40000 ALTER TABLE `sales_client` DISABLE KEYS */;
INSERT INTO `sales_client` VALUES (3,'Ristel','Entre 83 y 81 avenida sur, Condominio aventura',68,'San Salvador','503','2222 2222','https://www.facebook.com/ristel','ristel','2015-04-23','16:50:25','http://www.ristel.com.sv','info@ristel.com','2222 2223','El Salvador',19,1),(4,'Pakora Hut','Calle La Mascota, San Salvador, El Salvador, ',68,'san salvador','503','2223 5333','https://www.facebook.com/pakorahut?fref=ts','','2015-04-23','16:57:21','http://www.pakorahut.com','','','san salvador',2,1),(5,'Manantiales de Jiboa','Direccion de prueba , La Paz',68,'La Paz','503','22290000','','','2015-04-24','01:32:54','http://www.manantialesdejiboa.com.sv','info@manantialesdejiboa.com.sv','','Rosario',21,1),(6,'Grupo ISE','89 Av Norte, San Salvador, El Salvador, Otra cosa',68,'San Salvador','503','+50321309025','','','2015-04-25','02:35:57','http://www.grupoise.com','info@grupoise.com','','Colonia San Francisco',22,1);
/*!40000 ALTER TABLE `sales_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_entradas`
--

DROP TABLE IF EXISTS `sales_entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_entradas` (
  `id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospecto` int(11) DEFAULT NULL,
  `id_usuario` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`id_entrada`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_entradas`
--

LOCK TABLES `sales_entradas` WRITE;
/*!40000 ALTER TABLE `sales_entradas` DISABLE KEYS */;
INSERT INTO `sales_entradas` VALUES (19,18,'rolando55admin18894933','2015-04-23','16:33:15'),(29,22,'geabenitez51admin11122516','2015-04-25','02:28:33'),(18,19,'rolando55admin18894933','2015-04-24','10:38:06'),(23,2,'rolando55admin18894933','2015-04-23','16:57:06'),(31,22,'esanchez30admin10528679','2015-04-28','11:05:36'),(25,8,'rolando55admin18894933','2015-04-23','16:54:53'),(26,2,'geabenitez51admin11122516','2015-04-24','01:27:47'),(27,21,'geabenitez51admin11122516','2015-04-24','01:30:42'),(28,21,'rolando55admin18894933','2015-04-23','19:53:30'),(30,22,'rolando55admin18894933','2015-04-25','00:32:54');
/*!40000 ALTER TABLE `sales_entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_phone_contact`
--

DROP TABLE IF EXISTS `sales_phone_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_phone_contact` (
  `id_phone_contact` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect_contact` int(11) DEFAULT NULL,
  `phone_name` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_phone_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_phone_contact`
--

LOCK TABLES `sales_phone_contact` WRITE;
/*!40000 ALTER TABLE `sales_phone_contact` DISABLE KEYS */;
INSERT INTO `sales_phone_contact` VALUES (18,13,'casa','2256223'),(21,13,'casa','2256665'),(22,15,'casa','26633663'),(27,16,'casa','22620282'),(28,22,'Celular','22960808'),(29,22,'Casa','22399823'),(30,26,'Celular','77777777'),(31,26,'Oficina','22222222');
/*!40000 ALTER TABLE `sales_phone_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_prospect`
--

DROP TABLE IF EXISTS `sales_prospect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_prospect` (
  `id_prospect` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `direccion` text,
  `direccion2` text,
  `provincia` text,
  `ciudad` varchar(255) DEFAULT NULL,
  `id_pais` int(11) NOT NULL,
  `zip` text,
  `telefono` varchar(25) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `pagina_web` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` text,
  `twitter` text,
  `notas` text,
  `fecha` date DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `meta_estado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_prospect`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COMMENT='Porspectos del sistema seals';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_prospect`
--

LOCK TABLES `sales_prospect` WRITE;
/*!40000 ALTER TABLE `sales_prospect` DISABLE KEYS */;
INSERT INTO `sales_prospect` VALUES (2,'Pakora Hut','Calle La Mascota, San Salvador, El Salvador','','san salvador','san salvador',68,'503','2223 5333','','http://www.pakorahut.com','','https://www.facebook.com/pakorahut?fref=ts','','<p><em><strong>PAKORAHUT</strong> 2</em></p>\r\n','2015-02-21',1,2),(19,'Ristel','Entre 83 y 81 avenida sur','Condominio aventura','San Salvador','El Salvador',68,'503','2222 2222','2222 2223','http://www.ristel.com.sv','info@ristel.com','https://www.facebook.com/ristel','ristel','<p>Muy pocos seguidores en redes sociales, la pagina web debe mejorarse.</p>\r\n','2015-04-08',1,2),(21,'Manantiales de Jiboa','Direccion de prueba ','La Paz','La Paz','Rosario',68,'503','22290000','','http://www.manantialesdejiboa.com.sv','info@manantialesdejiboa.com.sv','','','<p>nada</p>\n','2015-04-24',1,2),(22,'Grupo ISE','89 Av Norte, San Salvador, El Salvador','Otra cosa','San Salvador','Colonia San Francisco',68,'503','+50321309025','','http://www.grupoise.com','info@grupoise.com','','','<p>la pagina web no es responsive, pocos followers, publicidad intuitiva.</p>\n','2015-04-25',1,2);
/*!40000 ALTER TABLE `sales_prospect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_prospect_bitacora`
--

DROP TABLE IF EXISTS `sales_prospect_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_prospect_bitacora` (
  `id_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospecto` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_prospect_bitacora`
--

LOCK TABLES `sales_prospect_bitacora` WRITE;
/*!40000 ALTER TABLE `sales_prospect_bitacora` DISABLE KEYS */;
INSERT INTO `sales_prospect_bitacora` VALUES (1,13,'2015-03-28',1),(2,8,'2015-03-29',1),(3,2,'2015-03-29',1),(4,18,'2015-03-29',1),(5,17,'2015-04-02',1),(6,19,'2015-04-08',1),(7,20,'2015-04-16',1),(8,21,'2015-04-24',1),(9,22,'2015-04-25',1);
/*!40000 ALTER TABLE `sales_prospect_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_prospect_bitacora_log`
--

DROP TABLE IF EXISTS `sales_prospect_bitacora_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_prospect_bitacora_log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_bitacora` int(11) NOT NULL,
  `id_usuario` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `titulo` text,
  `descripcion` text,
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_prospect_bitacora_log`
--

LOCK TABLES `sales_prospect_bitacora_log` WRITE;
/*!40000 ALTER TABLE `sales_prospect_bitacora_log` DISABLE KEYS */;
INSERT INTO `sales_prospect_bitacora_log` VALUES (3,1,'rolando55admin18894933','2015-03-29','10:57:09',0,'Inicio del proceso','Este prospecto ha iniciado el proceso de verificacion'),(4,3,'geabenitez51admin11122516','2015-03-30','17:45:59',0,'Inicio del proceso','Este prospecto ha iniciado el proceso de verificacion'),(29,9,'geabenitez51admin11122516','2015-04-25','02:27:02',1,'Primera llamada','Se hablo con tal persona y se acordo una reunion'),(21,3,'geabenitez51admin11122516','2015-04-08','17:06:34',0,'Contacto','Se llamo y dijeron que si. Please proceed'),(22,6,'geabenitez51admin11122516','2015-04-08','17:31:34',0,'Inicio del proceso','Este prospecto ha iniciado el proceso de verificacion'),(24,7,'rolando55admin18894933','2015-04-16','18:51:07',0,'Inicio del proceso','Este prospecto ha iniciado el proceso de verificacion'),(28,9,'geabenitez51admin11122516','2015-04-25','02:26:06',0,'Inicio del proceso','Este prospecto ha iniciado el proceso de verificacion'),(26,8,'geabenitez51admin11122516','2015-04-24','01:30:20',0,'Inicio del proceso','Este prospecto ha iniciado el proceso de verificacion'),(27,8,'geabenitez51admin11122516','2015-04-24','01:32:32',0,'Llamada 1','Se acordo una reunion para el sabado 25 de abril');
/*!40000 ALTER TABLE `sales_prospect_bitacora_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_prospect_contact`
--

DROP TABLE IF EXISTS `sales_prospect_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_prospect_contact` (
  `id_prospect_contact` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect` int(11) DEFAULT NULL,
  `nombres` text,
  `apellidos` text,
  `titulo` text,
  `email` text,
  `notas` text,
  PRIMARY KEY (`id_prospect_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_prospect_contact`
--

LOCK TABLES `sales_prospect_contact` WRITE;
/*!40000 ALTER TABLE `sales_prospect_contact` DISABLE KEYS */;
INSERT INTO `sales_prospect_contact` VALUES (18,13,'Gerson ','Aguirre','Gerson','geabenitez@lieison.com','Alguna nota X'),(19,17,'Contacto 1','Apellido 1','CEO','contacto1@empresa2.com','Comentario XYZ'),(21,2,'Gaby','Osorio','Marketing Manager','gaby.osorio@pakorahut.com','Pintura aburrida'),(22,19,'Marvin','Mejia','CEO','marvin.mejia@ristel.com.sv','ssdsd'),(26,22,'Emerson J.','Sanchez','CSO','esanchez@lieison.com','Solo contesta el celular');
/*!40000 ALTER TABLE `sales_prospect_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion_dashboard`
--

DROP TABLE IF EXISTS `seccion_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seccion_dashboard` (
  `id_seccion` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `titulo` text NOT NULL,
  `privilegios` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id_seccion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion_dashboard`
--

LOCK TABLES `seccion_dashboard` WRITE;
/*!40000 ALTER TABLE `seccion_dashboard` DISABLE KEYS */;
INSERT INTO `seccion_dashboard` VALUES (1,1,'icon-home','Dashboard','0',1),(2,2,'fa fa-cog','Front-End','55',0),(3,3,'fa fa-user','Usuarios','55',1),(4,2,'fa fa-line-chart','Sales','76',1),(5,4,'fa fa-unlock-alt','Configuracion','55,155',1),(8,2,'fa fa-tasks','Task','55,76',1);
/*!40000 ALTER TABLE `seccion_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_file`
--

DROP TABLE IF EXISTS `task_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL,
  `name` text,
  `size` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_file`
--

LOCK TABLES `task_file` WRITE;
/*!40000 ALTER TABLE `task_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_multitask`
--

DROP TABLE IF EXISTS `task_multitask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_multitask` (
  `id_multitask` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `id_user_from` varchar(100) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text,
  PRIMARY KEY (`id_multitask`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_multitask`
--

LOCK TABLES `task_multitask` WRITE;
/*!40000 ALTER TABLE `task_multitask` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_multitask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_subtask`
--

DROP TABLE IF EXISTS `task_subtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_subtask` (
  `id_subtask` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL,
  `id_message` int(11) DEFAULT NULL,
  `id_status` int(11) NOT NULL,
  `comment` text,
  `id_user_from` varchar(255) NOT NULL,
  `id_user_to` varchar(255) NOT NULL,
  PRIMARY KEY (`id_subtask`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_subtask`
--

LOCK TABLES `task_subtask` WRITE;
/*!40000 ALTER TABLE `task_subtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_subtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_task`
--

DROP TABLE IF EXISTS `task_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `id_multitask` int(11) DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `id_user_from` varchar(255) NOT NULL,
  `id_user_to` varchar(255) NOT NULL,
  `id_message` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_asign` date NOT NULL,
  `time_asign` time NOT NULL,
  `id_files` int(11) DEFAULT NULL,
  `comments` text,
  `date_deadline` date NOT NULL,
  `time_deadline` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_task`
--

LOCK TABLES `task_task` WRITE;
/*!40000 ALTER TABLE `task_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_type`
--

DROP TABLE IF EXISTS `task_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type`
--

LOCK TABLES `task_type` WRITE;
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` varchar(255) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `dui` varchar(45) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `email` text,
  `imagen` text,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('esanchez30admin10528679','Emerson J.','Sanchez',NULL,NULL,'esanchez@lieison.com','calvo.png',NULL,NULL),('geabenitez51admin11122516','Gerson E.','Aguirre',NULL,NULL,'geabenitez@lieison.com','MTA4ODIzNTZfMTAxNTMwNzA4MDA4NDE4NjlfMTczNzM2NzgzMTU0NDY0MDM2N19uMTNmZjUxMTU=.jpg','22960546','77419987'),('juan69Sub-user10385792','juan','gabriel',NULL,NULL,'juan@lieison.com','MjAxNTAxMjZfMTE1ODMxX0p1YW5HYWJyaWVsZWJkYWFlMjk=.jpg','2577777','77303502'),('maya75Graphic Designer18614558','Maya E.','Siliezar',NULL,NULL,'msiliezar@lieison.com',NULL,NULL,NULL),('rolando55admin18894933','Rolando Antonio','Arriaza Marroquin',NULL,NULL,'rmarroquin@lieison.com','MTk3NTIyNV8xMDE1MjY2MTcxMzM3ODIyMl8xMTE4ODA0NDYzX25lNTUxZTk5YQ==.jpg','22620282','79002616');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitas`
--

DROP TABLE IF EXISTS `visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitas` (
  `id_visitas` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  PRIMARY KEY (`id_visitas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitas`
--

LOCK TABLES `visitas` WRITE;
/*!40000 ALTER TABLE `visitas` DISABLE KEYS */;
INSERT INTO `visitas` VALUES (2,223,2,2015),(3,50,3,2015),(4,110,1,2015),(5,3,4,2015);
/*!40000 ALTER TABLE `visitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lieison_soft'
--

--
-- Dumping routines for database 'lieison_soft'
--
/*!50003 DROP PROCEDURE IF EXISTS `Message_Count_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`lieison`@`%` PROCEDURE `Message_Count_procedure`(IN id_message TEXT , IN id_user TEXT , IN leido INT)
BEGIN
SELECT count(*) as count FROM lieisoft_submensajeria 
WHERE lieisoft_submensajeria.id_mensajeria LIKE 
id_message and lieisoft_submensajeria.id_usuario 
NOT LIKE id_user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcGetDashboardPagebyId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`lieison`@`%` PROCEDURE `ProcGetDashboardPagebyId`(in id_page int)
BEGIN
 select 
        `seccion_dashboard`.`id_seccion` AS `id_seccion`,
        `dashboard`.`titulo` AS `dash_titulo`,
        `seccion_dashboard`.`icono` AS `sec_icono`,
        `seccion_dashboard`.`titulo` AS `sec_titulo`,
        `dashboard`.`link` AS `link`,
        `dashboard`.`icono` AS `icono`,
        `dashboard`.`privilegios` AS `priv_nombre`
    from
        ((`dashboard`
        join `seccion_dashboard` ON ((`dashboard`.`id_seccion` = `seccion_dashboard`.`id_seccion`)))
        join `privilegios` ON ((`dashboard`.`privilegios` = `privilegios`.`nivel`)))
    where
        (`dashboard`.`id_dashboard` like id_page);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcGetEntrance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`lieison`@`%` PROCEDURE `ProcGetEntrance`()
BEGIN
SELECT 
concat(usuario.nombre , ' ' , usuario.apellido) as 'Uname' ,
usuario.imagen as 'Uimg' , 
usuario.id_usuario as 'Uid',
sales_prospect.nombre as 'Pname' , 
sales_prospect.estado as 'Pstate' , 
sales_entradas.id_entrada as 'id',
sales_entradas.fecha as 'date',
sales_entradas.hora as 'hour'
FROM sales_entradas 
INNER JOIN usuario ON sales_entradas.id_usuario=usuario.id_usuario
INNER JOIN sales_prospect ON sales_entradas.id_prospecto=sales_prospect.id_prospect
ORDER BY timestamp(sales_entradas.fecha , sales_entradas.hora) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcGetOldEntrace` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`lieison`@`%` PROCEDURE `ProcGetOldEntrace`()
BEGIN
(SELECT id_entrada FROM sales_entradas WHERE DATE_ADD(fecha, INTERVAL 5 DAY)  < date_format(now() , '%Y-%m-%d'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcProspectGetBitacora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`lieison`@`%` PROCEDURE `ProcProspectGetBitacora`( in id_p int , in hour_ varchar(50)  )
BEGIN
IF (hour_ = null or hour_ = '')  THEN 
SELECT  
sales_prospect_bitacora_log.id_log as 'id_log' ,
sales_prospect_bitacora_log.fecha as 'date',
sales_prospect_bitacora_log.hora as 'hour',
sales_prospect_bitacora_log.titulo as 'title',
sales_prospect_bitacora_log.descripcion as 'description',
sales_prospect_bitacora_log.id_usuario as 'id_user',
concat(usuario.nombre , ' '  , usuario.apellido) as 'name',
usuario.imagen as 'avatar',
sales_bitacora_tipo.titulo as 'title_type'
FROM sales_prospect_bitacora
INNER JOIN sales_prospect_bitacora_log ON sales_prospect_bitacora.id_bitacora= sales_prospect_bitacora_log.id_bitacora
INNER JOIN usuario ON sales_prospect_bitacora_log.id_usuario = usuario.id_usuario
INNER JOIN sales_bitacora_tipo ON sales_prospect_bitacora_log.id_tipo = sales_bitacora_tipo.id_tipo
WHERE sales_prospect_bitacora.id_prospecto LIKE id_p;
ELSE 
SELECT  
sales_prospect_bitacora_log.id_log as 'id_log' ,
sales_prospect_bitacora_log.fecha as 'date',
sales_prospect_bitacora_log.hora as 'hour',
sales_prospect_bitacora_log.titulo as 'title',
sales_prospect_bitacora_log.descripcion as 'description',
sales_prospect_bitacora_log.id_usuario as 'id_user',
concat(usuario.nombre , ' '  , usuario.apellido) as 'name',
usuario.imagen as 'avatar',
sales_bitacora_tipo.titulo as 'title_type'
FROM sales_prospect_bitacora
INNER JOIN sales_prospect_bitacora_log ON sales_prospect_bitacora.id_bitacora= sales_prospect_bitacora_log.id_bitacora
INNER JOIN usuario ON sales_prospect_bitacora_log.id_usuario = usuario.id_usuario
INNER JOIN sales_bitacora_tipo ON sales_prospect_bitacora_log.id_tipo = sales_bitacora_tipo.id_tipo
WHERE sales_prospect_bitacora.id_prospecto LIKE id_p AND sales_prospect_bitacora_log.hora LIKE hour_;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `VIEW_DASHBOARD_DB`
--

/*!50001 DROP TABLE IF EXISTS `VIEW_DASHBOARD_DB`*/;
/*!50001 DROP VIEW IF EXISTS `VIEW_DASHBOARD_DB`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lieison`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `VIEW_DASHBOARD_DB` AS select `dashboard`.`id_dashboard` AS `id`,`dashboard`.`titulo` AS `dash_titulo`,`seccion_dashboard`.`titulo` AS `sec_titulo`,`dashboard`.`link` AS `link`,`dashboard`.`icono` AS `icono`,`dashboard`.`privilegios` AS `priv_nombre`,`dashboard`.`status` AS `status` from ((`dashboard` join `seccion_dashboard` on((`dashboard`.`id_seccion` = `seccion_dashboard`.`id_seccion`))) join `privilegios` on((`dashboard`.`privilegios` = `privilegios`.`nivel`))) where (`dashboard`.`link` like '%dashboard%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-04 11:36:13
