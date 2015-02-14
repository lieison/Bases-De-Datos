-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2015 at 06:08 PM
-- Server version: 5.5.23
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lieison_bdd`
--

-- --------------------------------------------------------

--
-- Table structure for table `contrato`
--

CREATE TABLE IF NOT EXISTS `contrato` (
  `id_contrato` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(255) NOT NULL,
  `nombre` text NOT NULL,
  `contrato` text NOT NULL,
  `aceptado` int(11) DEFAULT NULL,
  `fecha_envio` date NOT NULL,
  `fecha_contrato` date DEFAULT NULL,
  PRIMARY KEY (`id_contrato`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contrato`
--

INSERT INTO `contrato` (`id_contrato`, `id_usuario`, `nombre`, `contrato`, `aceptado`, `fecha_envio`, `fecha_contrato`) VALUES
(1, 'rolando55admin18894933', 'Contrato Empleo Programador', 'arriaza_contrato.docx', 1, '2015-02-07', '2015-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE IF NOT EXISTS `dashboard` (
  `id_dashboard` int(11) NOT NULL AUTO_INCREMENT,
  `id_seccion` int(11) NOT NULL,
  `icono` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `titulo` text NOT NULL,
  `start` int(11) NOT NULL,
  `privilegios` text NOT NULL,
  PRIMARY KEY (`id_dashboard`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id_dashboard`, `id_seccion`, `icono`, `link`, `titulo`, `start`, `privilegios`) VALUES
(1, 1, 'glyphicon glyphicon-dashboard', 'dashboard_monitor.php', 'Monitoreo', 2, '55,155'),
(2, 1, 'glyphicon glyphicon-home', 'index.php', 'Principal', 1, '0'),
(3, 2, 'fa fa-fast-forward', 'frontend/slider.php', 'Slider', 1, '55'),
(4, 3, 'fa fa-users', 'dashboard_gestion_usuarios.php', 'Gestionar Usuarios', 1, '55'),
(5, 3, 'fa fa-file-o', 'dashboard_control_paginas.php', 'Control de Paginas', 2, '55'),
(6, 4, 'fa fa-plus-square', 'sales/dashboard_add_prospecto.php', 'Agregar Prospecto', 1, '76'),
(7, 4, 'fa fa-pencil-square-o', 'sales/dashboard_admin_prospecto.php', 'Admin Prospectos', 2, '76');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_copyright`
--

CREATE TABLE IF NOT EXISTS `dashboard_copyright` (
  `id_copy` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_copy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `front_page_slider`
--

CREATE TABLE IF NOT EXISTS `front_page_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `script` text NOT NULL,
  `json_data` text NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id_log` varchar(255) NOT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `entrada` text,
  `salida` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_usuario`, `entrada`, `salida`, `fecha`) VALUES
('01c95b5a07797ebcd3ef618ec69bb64c', 'roli_00', '04:18:46', NULL, '2015-01-24'),
('05ac92e284242b50f4ab277e14619d28', 'juan69Sub-user10385792', '16:12:44', '16:13:35', '2015-02-12'),
('0c65bcf03c70197e94700f0484060af1', 'roli_00', '02:23:17', '03:00:42', '2015-01-26'),
('0da0b5f6185f87a6e143fef1a75cedfb', 'roli_00', '03:25:21', '04:27:44', '2015-01-26'),
('0f7b20e86e1e473d257059146a29c1f7', 'roli_00', '04:12:55', NULL, '2015-01-31'),
('101147a041882d6ddbd8362bd11154cd', 'juan69Sub-user10385792', '20:11:34', '20:12:22', '2015-02-13'),
('10a0af2f849b2753cc2c4a8bb5bd30b5', 'roli_00', '00:03:06', '00:13:50', '2015-01-24'),
('1441146ce9d60de8d2bb1c691529d41a', 'roli_00', '20:41:20', '21:00:55', '2015-01-30'),
('165ad3b2479966ed948ea7b3007afc5b', 'roli_00', '04:18:46', '04:37:52', '2015-01-24'),
('1f2b6812a11363e5c0970680274531da', 'rolando55admin18894933', '17:29:47', '18:20:10', '2015-01-31'),
('219fd3a79286cce126ec6b2d00c258c1', 'roli_00', '19:59:06', NULL, '2015-01-28'),
('24c0df820b4263e684577d1e9ad16cac', 'rolando55admin18894933', '19:58:42', '20:02:15', '2015-02-12'),
('259a1eb38b27695776de2aed94b6cb40', 'rolando55admin18894933', '15:28:11', '00:52:30', '2015-02-08'),
('2885c508ea1cc823c6ba1284dcd62791', 'esanchez30admin10528679', '21:20:31', '21:23:15', '2015-02-13'),
('2bf6e496222db3a6b2d2669c3a92ed99', 'rolando55admin18894933', '21:24:27', '21:26:11', '2015-02-13'),
('2e0644e7e64e538d7d25b1ee44bf084b', 'roli_00', '18:27:44', '05:13:12', '2015-01-24'),
('2f16a1706c338aecc91884c6c9f3a03c', 'roli_00', '04:19:48', '04:20:33', '2015-01-31'),
('2f4b67899a4fa6fdb98e9563840e1459', 'esanchez30admin10528679', '21:19:59', '21:20:20', '2015-02-13'),
('32e3aa5e85dc6edc0e765e9dbef99613', 'roli_00', '04:00:27', '04:04:46', '2015-01-24'),
('38e637b891ae037039b98e7fa5fb7c69', 'roli_00', '22:18:33', '18:43:21', '2015-01-26'),
('39e663bf9b32498bfc6d41de2da2a66f', 'rolando55admin18894933', '04:38:14', '04:59:01', '2015-02-06'),
('3aa32baa9075ae1ad0e51173607f036f', 'roli_00', '02:11:45', '02:26:45', '2015-01-24'),
('3e3237d8e5be5655e795919098f0146c', 'roli_00', '01:54:02', NULL, '2015-01-24'),
('4118ed3f3f20d6f43b5e764acbf03a87', 'geabenitez2admin13216571', '15:53:57', '15:56:12', '2015-02-12'),
('4212a3881ed4c59f8e4f7612bf6c2579', 'esanchez30admin10528679', '21:26:14', '21:26:43', '2015-02-13'),
('43d57bef9189a71ba68468ea2783391c', 'roli_00', '04:22:59', '04:23:24', '2015-01-31'),
('440e5ab6affe941f6edc68907e67e96a', 'roli_00', '04:14:39', '04:14:43', '2015-01-24'),
('472f81da80725ac216bd7610da985024', 'roli_00', '03:39:03', '03:39:25', '2015-01-24'),
('4eb38692f0eaff48cb53d1d3cc1bd69a', '00user', '15:05:36', '15:05:48', '2015-01-31'),
('50a8e5634f494b0ab598faaa956f8b3c', 'rolando55admin18894933', '23:43:22', '23:43:56', '2015-02-10'),
('5156cdb8297dfa7f68f7387d76b24835', 'roli_00', '05:34:25', '05:34:29', '2015-01-29'),
('53e31a92cc937db8e5986090f3347442', 'rolando55admin18894933', '18:19:58', '21:26:07', '2015-02-01'),
('54e29f60a08bd928d6e1f7877df13001', 'roli_00', '03:56:36', '03:57:38', '2015-01-24'),
('554f4718cb793ea35362ddc1e10cb0aa', 'rolando55admin18894933', '22:11:40', '04:37:41', '2015-02-05'),
('5661880972e9ef4126730408164c4f18', 'rolando55admin18894933', '21:10:18', '21:13:43', '2015-02-13'),
('567f9cb97904942cc52f3bec21f20bc5', 'roli_00', '03:57:58', '03:59:03', '2015-01-24'),
('56d0069ab9b1af77c40b8864c8e7d106', 'roli_00', '18:26:36', '18:26:39', '2015-01-24'),
('5829980bd0cfeca7c2bc73f95fceb38f', 'esanchez30admin10528679', '18:11:57', '18:20:38', '2015-02-13'),
('5b8c981a6c5372b566085489be20b1af', 'roli_00', '05:13:15', '05:23:01', '2015-01-25'),
('5e77969d842e883943a34ae6d200000e', 'roli_00', '20:35:34', '20:35:38', '2015-01-30'),
('5fb6eed45cbb24c59355fce1d75ce16f', 'roli_00', '05:04:27', '05:04:56', '2015-01-30'),
('6148847f35e33fea50b917b22ce36302', 'juan69Sub-user10385792', '17:27:58', '17:29:51', '2015-02-12'),
('616398611ce249f75b86359cd77a66c0', 'juan69Sub-user10385792', '04:37:47', '04:38:08', '2015-02-06'),
('634d2d803d4bf24732f91d766834bbf3', 'roli_00', '03:48:19', '03:48:25', '2015-01-24'),
('64d4572fa933dfec6a83c0bfcbcf51ec', 'geabenitez2admin13216571', '15:56:31', '16:12:38', '2015-02-12'),
('657cb97ffb5f20f324e27cc6d70480cb', 'roli_00', '03:40:12', '03:40:16', '2015-01-24'),
('67a54dfb7ad65bb587caab88bd78b29b', 'roli_00', '04:45:56', '04:45:59', '2015-01-24'),
('6b5a637b4b0fa76e0170958ddf370a83', 'geabenitez51admin11122516', '18:20:43', NULL, '2015-02-13'),
('6d5ce9f199fe47725d7726fd543839f5', 'roli_00', '22:55:21', '22:58:13', '2015-01-25'),
('6e20106f257e3ed1c5ce9e20c4ffeb4a', 'rolando55admin18894933', '15:34:50', '18:19:52', '2015-02-01'),
('6e49103844459af31b991371efade0dd', 'roli_00', '04:19:12', '04:19:23', '2015-01-31'),
('70807e09599cebcf3dc4a6b9656e0e8d', '00user', '04:05:27', '04:10:22', '2015-01-31'),
('722eb74a9210d395fcf26654d3247872', 'roli_00', '03:59:50', '04:12:54', '2015-01-24'),
('725300010c8dd1fe18a44c1e1f1cf10b', 'roli_00', '16:32:23', '18:26:34', '2015-01-24'),
('7329357ff521fbfa77c056ae91b2496e', 'rolando55admin18894933', '02:30:35', '20:11:29', '2015-02-11'),
('73911e5b747a9b977d200c19ab4e2c30', 'roli_00', '04:10:27', '04:11:10', '2015-01-31'),
('75c8c3037b254b30af4e3aadec257e2a', 'roli_00', '23:51:24', '23:52:58', '2015-01-26'),
('782e74fd1f21d95fb32c32280326a8a7', 'roli_00', '15:01:07', '17:26:19', '2015-01-31'),
('7d0d2f0594cb268b871acc7e108e4251', 'roli_00', '02:24:37', '02:25:36', '2015-01-24'),
('7d648ed8cf234a47ae2fad087dd8e457', 'roli_00', '22:47:54', '22:55:08', '2015-01-25'),
('7f5325db214b342b8a2dbbd255c06bf7', 'rolando55admin18894933', '23:44:02', '23:44:06', '2015-02-10'),
('7ffbd938215df78ffee35e35f53cdf0c', 'roli_00', '15:19:21', '22:47:52', '2015-01-25'),
('805da4a97b73decf3fea4b093fcb6dd9', 'roli_00', '15:46:01', '16:03:10', '2015-01-24'),
('80b4197985aea9b3fabb6eca7f202912', 'roli_00', '03:55:24', '03:58:43', '2015-01-31'),
('8394289567ad38f5da2f3a352563a9ed', 'roli_00', '03:59:52', NULL, '2015-01-31'),
('8489559d58d95cb873497e79b4cc326f', 'roli_00', '03:09:54', '04:25:37', '2015-01-29'),
('85ea278acb2dd7cfbed4ffc8f52a7f7a', 'roli_00', '04:04:35', '04:04:55', '2015-01-31'),
('8897bf1c1a73a3a2abda10ab7a00bfdf', 'roli_00', '05:13:15', NULL, '2015-01-25'),
('8b69d23751510b748154138e25d7c989', 'rolando55admin18894933', '15:48:10', NULL, '2015-02-02'),
('8cc324d93344b4427886da8535b0542a', 'roli_00', '04:45:59', '04:56:35', '2015-01-29'),
('8f417bd039f841789ca296cdf20a4075', 'roli_00', '04:18:53', NULL, '2015-01-31'),
('910e3da05c314ca052556066f0ecfc92', 'roli_00', '04:17:23', '04:18:51', '2015-01-31'),
('919ef03f30e3b2b90cf2ada1d20b43cd', 'roli_00', '15:34:00', '16:08:04', '2015-01-24'),
('925266e748a0a60928f5e23c9cd77233', 'roli_00', '21:00:57', '03:55:06', '2015-01-30'),
('94084926acb2936144d1e6a217061fa2', 'roli_00', '22:59:45', '23:21:57', '2015-01-25'),
('94eba115be41b6d8f7673f0eef68d2b5', 'roli_00', '03:55:08', '03:55:22', '2015-01-31'),
('9651da775c53e3ae8e354f84d1f95862', 'roli_00', '23:56:35', '00:03:04', '2015-01-24'),
('99b51915668b0878b9042865db745823', 'roli_00', '18:43:33', '19:58:40', '2015-01-28'),
('9bdb9b1ef178cfa773157140ab2a5633', 'geabenitez2admin13216571', '16:13:42', '16:20:57', '2015-02-12'),
('9cf10e36d3ef7f361ba8f53605e59c43', 'roli_00', '23:55:28', '23:55:32', '2015-01-24'),
('9e02eeed1b88652e7ee4d252474699b8', 'rolando55admin18894933', '05:06:53', NULL, '2015-02-14'),
('a11bc9cee7cad0652a84852794064445', 'rolando55admin18894933', '17:27:30', '04:18:41', '2015-01-31'),
('a3f58814fddd33642e08ad64ae127cdf', 'rolando55admin18894933', '21:13:52', '21:19:54', '2015-02-13'),
('a7d32a1cc852fab1d6f3dc61f7730577', 'rolando55admin18894933', '20:14:02', '20:14:05', '2015-02-13'),
('a84884b604481d54b5c6d85036e5819d', 'juan69Sub-user10385792', '21:26:46', '21:26:49', '2015-02-13'),
('a9024f1682bf477a38722c2b82067de4', 'juan69Sub-user10385792', '20:13:10', '20:13:33', '2015-02-13'),
('a90aa469d4e555f7dbc122a4114cad20', 'roli_00', '15:00:19', NULL, '2015-01-31'),
('a936b3837cc8bb259676ed40c3d9c7cc', 'rolando55admin18894933', '23:42:20', '23:42:23', '2015-02-10'),
('a9b78d2c78ae69fe9283e1de7350dbb5', 'rolando55admin18894933', '00:54:07', '23:34:25', '2015-02-09'),
('aa0a75fa212400ea5e585183bbf7af6d', 'rolando55admin18894933', '17:39:06', '15:26:33', '2015-02-07'),
('ac8d4db2dfcaa06011d27459fdccc21d', 'roli_00', '02:22:12', '02:22:22', '2015-01-24'),
('adecc7118fcaa974c53dc21daf045d93', '00user', '04:11:18', '04:23:32', '2015-01-31'),
('aec58d61dd1610e34849573b75482a67', 'rolando55admin18894933', '20:12:35', '20:13:06', '2015-02-13'),
('afec98e8b34b285dfca9dbf4ebfd5569', 'rolando55admin18894933', '02:59:17', '03:42:49', '2015-02-14'),
('b158139e08d253824cf8362f3b871bc8', 'roli_00', '01:17:25', '01:51:12', '2015-01-24'),
('b405ac560dc4d730c2fca4a256058158', '00user', '20:38:59', '20:41:18', '2015-01-30'),
('ba2bfa698a95c6956d2a23f0d2ed6cc9', 'roli_00', '15:05:55', '17:27:53', '2015-01-31'),
('bbd188b887732dccd52df6b2c75dfd74', 'juan69Sub-user10385792', '20:43:00', '21:10:09', '2015-02-13'),
('bd352368cf986c1607c4cdb5d4829af4', 'rolando55admin18894933', '20:13:37', '20:13:56', '2015-02-13'),
('bf1462c4cd73862dcfbad3fa5a745090', 'roli_00', '03:52:55', '03:52:59', '2015-01-24'),
('c11e7f9076404eef6c59dc090d6a9e1b', 'rolando55admin18894933', '21:26:52', '02:55:04', '2015-02-13'),
('c1598d49dcf8b8a5b9c4b669e55fff01', 'roli_00', '03:41:22', '03:41:31', '2015-01-24'),
('c24f95834e5dc7dc936ebb96050bd1c7', 'roli_00', '02:22:24', '02:24:35', '2015-01-24'),
('c276cd31419321ee8ddda687aedeae09', 'juan69Sub-user10385792', '20:14:08', '20:15:04', '2015-02-13'),
('c51588f03b615257d42c39221356e8d3', 'roli_00', '03:37:19', '04:06:32', '2015-01-24'),
('c6c562240921780dd83692fed0370e8b', 'roli_00', '02:26:09', NULL, '2015-01-24'),
('c9c6dfb9c8deaf7ac62da782add31f7c', 'geabenitez51admin11122516', '21:55:55', '23:57:54', '2015-02-12'),
('ca43edc39088a4e983506a64757d205d', 'rolando55admin18894933', '16:26:06', '17:39:03', '2015-02-07'),
('cbbfc9e2ecba9bca188ed879488f4e52', 'rolando55admin18894933', '17:14:18', '17:27:45', '2015-02-12'),
('cc7345b0d0a464603026ada4c0777d57', 'roli_00', '06:06:04', '06:09:30', '2015-01-29'),
('d075c370b95d0b390801854f6a10a0bb', 'roli_00', '00:29:10', '01:16:48', '2015-01-24'),
('d0b669af1c8b35a9a97ad3fb4c3105d4', 'geabenitez51admin11122516', '02:58:05', '02:59:14', '2015-02-14'),
('d2132312d6f773ddaff3805c9318cd24', 'rolando55admin18894933', '17:30:06', NULL, '2015-02-12'),
('d3893fac448862c6c91642b45ee32a6a', 'esanchez30admin10528679', '21:23:26', '21:24:24', '2015-02-13'),
('d46bdd9cb2638ad604c07d5620b87420', 'roli_00', '04:23:36', '04:36:15', '2015-01-31'),
('d64a7d947e9684b8838d34acab8493eb', 'juan69Sub-user10385792', '21:23:18', '21:23:23', '2015-02-13'),
('d6f44309e5c52a3f09749fbdc433ffbe', 'roli_00', '02:26:48', '02:48:10', '2015-01-24'),
('d9fb85230b44b2bf73a8b21c50cc38d0', 'juan69Sub-user10385792', '00:52:37', '00:54:04', '2015-02-09'),
('db673dd58069530441cf7d8c56f148f3', 'rolando55admin18894933', '02:56:19', '02:57:58', '2015-02-14'),
('db7f9754b081eadeae542c66e9571129', 'esanchez30admin10528679', '17:56:32', '18:11:54', '2015-02-13'),
('dcd4930b55fa15cef88965977b76d2bd', 'roli_00', '04:16:30', '04:42:10', '2015-01-24'),
('df99bdd70b7b34ccfdb4800264655a3f', '00user', '03:58:49', NULL, '2015-01-31'),
('e2c2a4e6e28b64517983986a93d045bb', 'rolando55admin18894933', '21:20:23', '21:20:28', '2015-02-13'),
('e5e12a9c032cc307f0d64feccb74582a', 'roli_00', '02:02:29', '02:02:33', '2015-01-24'),
('e5fd476368a1bf51ca49cb0204a5b01e', 'juan69Sub-user10385792', '21:13:46', '21:13:50', '2015-02-13'),
('ee60f8be0362991836ecb64f35e94807', 'geabenitez51admin11122516', '23:58:11', '00:03:25', '2015-02-13'),
('eea29fe37f085c307fabe0cbb8aa58d4', 'roli_00', '05:23:04', '15:19:07', '2015-01-25'),
('ef4f3d96f45bea52839ebf6064694979', 'geabenitez51admin11122516', '16:36:05', '17:56:07', '2015-02-13'),
('efcb883f391ee1547afe3c750ba33153', '00user', '20:36:53', '20:38:37', '2015-01-30'),
('effefad12e664fe52dc8219df07f1ec4', 'roli_00', '05:05:01', '05:05:47', '2015-01-30'),
('f154f9ec3f95e84d3840ed3b42614d42', 'roli_00', '04:02:02', '04:17:08', '2015-01-31'),
('f1afea7981b7d1d462cf6db6cbba40d1', '00user', '20:38:41', '04:04:23', '2015-01-30'),
('f1ec0efef9517389fb4b87fc9f42954b', 'esanchez30admin10528679', '02:55:07', '02:55:52', '2015-02-14'),
('f293b01ccc5979b420d74a2f1836628c', 'juan69Sub-user10385792', '00:03:29', NULL, '2015-02-13'),
('f5e2950ff2b5b265ee8459aef599f893', 'roli_00', '00:16:04', '00:29:03', '2015-01-24'),
('f6910baecdb1ab9f2aab1565dbf195b9', 'rolando55admin18894933', '20:15:08', '20:42:56', '2015-02-13'),
('fb1b6054d35ad8817253cb864a2880db', 'roli_00', '04:20:57', '04:22:39', '2015-01-31'),
('fbd142dbae042827f3ec76358d92a70c', 'roli_00', '00:13:54', '00:15:47', '2015-01-24'),
('fe1513f2a2345ad877cb90232af7fdb7', 'roli_00', '18:43:22', '18:43:26', '2015-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(45) NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `activo` int(11) NOT NULL,
  `rol` varchar(45) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tabla de logueo lieison , esta tabla genera los permisos necesarios	' AUTO_INCREMENT=14 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `id_usuario`, `user`, `password`, `activo`, `rol`, `fecha`) VALUES
(6, 'rolando55admin18894933', 'rolando', 'B5lurcxKewhBxoNkDOMjD28AzoXiFfSuHs4Wzb2wsUI=', 1, 'admin', NULL),
(11, 'juan69Sub-user10385792', 'juan', '2JwQ4vmr7sL78quEkRh4ulsVoQldnC+Zy3Hyhe25OEo=', 1, 'Developer', '2015-02-06'),
(12, 'geabenitez51admin11122516', 'geabenitez', '0kI93Zv68xbREvZRS71FZwAaXKjcmAPZHXkWyMrfDSc=', 1, 'admin', '2015-02-12'),
(13, 'esanchez30admin10528679', 'esanchez', 'nouB2zBzN0/WESrrZnFglZmPukJ4n7LZvYLQbPIoA8s=', 1, 'Sales', '2015-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
  `PAI_PK` int(11) NOT NULL AUTO_INCREMENT,
  `PAI_ISONUM` smallint(6) DEFAULT NULL,
  `PAI_ISO2` char(2) DEFAULT NULL,
  `PAI_ISO3` char(3) DEFAULT NULL,
  `PAI_NOMBRE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`PAI_PK`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=241 ;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`PAI_PK`, `PAI_ISONUM`, `PAI_ISO2`, `PAI_ISO3`, `PAI_NOMBRE`) VALUES
(1, 4, 'AF', 'AFG', 'Afganistán'),
(2, 248, 'AX', 'ALA', 'Islas Gland'),
(3, 8, 'AL', 'ALB', 'Albania'),
(4, 276, 'DE', 'DEU', 'Alemania'),
(5, 20, 'AD', 'AND', 'Andorra'),
(6, 24, 'AO', 'AGO', 'Angola'),
(7, 660, 'AI', 'AIA', 'Anguilla'),
(8, 10, 'AQ', 'ATA', 'Antártida'),
(9, 28, 'AG', 'ATG', 'Antigua y Barbuda'),
(10, 530, 'AN', 'ANT', 'Antillas Holandesas'),
(11, 682, 'SA', 'SAU', 'Arabia Saudí'),
(12, 12, 'DZ', 'DZA', 'Argelia'),
(13, 32, 'AR', 'ARG', 'Argentina'),
(14, 51, 'AM', 'ARM', 'Armenia'),
(15, 533, 'AW', 'ABW', 'Aruba'),
(16, 36, 'AU', 'AUS', 'Australia'),
(17, 40, 'AT', 'AUT', 'Austria'),
(18, 31, 'AZ', 'AZE', 'Azerbaiyán'),
(19, 44, 'BS', 'BHS', 'Bahamas'),
(20, 48, 'BH', 'BHR', 'Bahréin'),
(21, 50, 'BD', 'BGD', 'Bangladesh'),
(22, 52, 'BB', 'BRB', 'Barbados'),
(23, 112, 'BY', 'BLR', 'Bielorrusia'),
(24, 56, 'BE', 'BEL', 'Bélgica'),
(25, 84, 'BZ', 'BLZ', 'Belice'),
(26, 204, 'BJ', 'BEN', 'Benin'),
(27, 60, 'BM', 'BMU', 'Bermudas'),
(28, 64, 'BT', 'BTN', 'Bhután'),
(29, 68, 'BO', 'BOL', 'Bolivia'),
(30, 70, 'BA', 'BIH', 'Bosnia y Herzegovina'),
(31, 72, 'BW', 'BWA', 'Botsuana'),
(32, 74, 'BV', 'BVT', 'Isla Bouvet'),
(33, 76, 'BR', 'BRA', 'Brasil'),
(34, 96, 'BN', 'BRN', 'Brunéi'),
(35, 100, 'BG', 'BGR', 'Bulgaria'),
(36, 854, 'BF', 'BFA', 'Burkina Faso'),
(37, 108, 'BI', 'BDI', 'Burundi'),
(38, 132, 'CV', 'CPV', 'Cabo Verde'),
(39, 136, 'KY', 'CYM', 'Islas Caimán'),
(40, 116, 'KH', 'KHM', 'Camboya'),
(41, 120, 'CM', 'CMR', 'Camerún'),
(42, 124, 'CA', 'CAN', 'Canadá'),
(43, 140, 'CF', 'CAF', 'República Centroafricana'),
(44, 148, 'TD', 'TCD', 'Chad'),
(45, 203, 'CZ', 'CZE', 'República Checa'),
(46, 152, 'CL', 'CHL', 'Chile'),
(47, 156, 'CN', 'CHN', 'China'),
(48, 196, 'CY', 'CYP', 'Chipre'),
(49, 162, 'CX', 'CXR', 'Isla de Navidad'),
(50, 336, 'VA', 'VAT', 'Ciudad del Vaticano'),
(51, 166, 'CC', 'CCK', 'Islas Cocos'),
(52, 170, 'CO', 'COL', 'Colombia'),
(53, 174, 'KM', 'COM', 'Comoras'),
(54, 180, 'CD', 'COD', 'República Democrática del Congo'),
(55, 178, 'CG', 'COG', 'Congo'),
(56, 184, 'CK', 'COK', 'Islas Cook'),
(57, 408, 'KP', 'PRK', 'Corea del Norte'),
(58, 410, 'KR', 'KOR', 'Corea del Sur'),
(59, 384, 'CI', 'CIV', 'Costa de Marfil'),
(60, 188, 'CR', 'CRI', 'Costa Rica'),
(61, 191, 'HR', 'HRV', 'Croacia'),
(62, 192, 'CU', 'CUB', 'Cuba'),
(63, 208, 'DK', 'DNK', 'Dinamarca'),
(64, 212, 'DM', 'DMA', 'Dominica'),
(65, 214, 'DO', 'DOM', 'República Dominicana'),
(66, 218, 'EC', 'ECU', 'Ecuador'),
(67, 818, 'EG', 'EGY', 'Egipto'),
(68, 222, 'SV', 'SLV', 'El Salvador'),
(69, 784, 'AE', 'ARE', 'Emiratos Árabes Unidos'),
(70, 232, 'ER', 'ERI', 'Eritrea'),
(71, 703, 'SK', 'SVK', 'Eslovaquia'),
(72, 705, 'SI', 'SVN', 'Eslovenia'),
(73, 724, 'ES', 'ESP', 'España'),
(74, 581, 'UM', 'UMI', 'Islas ultramarinas de Estados Unidos'),
(75, 840, 'US', 'USA', 'Estados Unidos'),
(76, 233, 'EE', 'EST', 'Estonia'),
(77, 231, 'ET', 'ETH', 'Etiopía'),
(78, 234, 'FO', 'FRO', 'Islas Feroe'),
(79, 608, 'PH', 'PHL', 'Filipinas'),
(80, 246, 'FI', 'FIN', 'Finlandia'),
(81, 242, 'FJ', 'FJI', 'Fiyi'),
(82, 250, 'FR', 'FRA', 'Francia'),
(83, 266, 'GA', 'GAB', 'Gabón'),
(84, 270, 'GM', 'GMB', 'Gambia'),
(85, 268, 'GE', 'GEO', 'Georgia'),
(86, 239, 'GS', 'SGS', 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 288, 'GH', 'GHA', 'Ghana'),
(88, 292, 'GI', 'GIB', 'Gibraltar'),
(89, 308, 'GD', 'GRD', 'Granada'),
(90, 300, 'GR', 'GRC', 'Grecia'),
(91, 304, 'GL', 'GRL', 'Groenlandia'),
(92, 312, 'GP', 'GLP', 'Guadalupe'),
(93, 316, 'GU', 'GUM', 'Guam'),
(94, 320, 'GT', 'GTM', 'Guatemala'),
(95, 254, 'GF', 'GUF', 'Guayana Francesa'),
(96, 324, 'GN', 'GIN', 'Guinea'),
(97, 226, 'GQ', 'GNQ', 'Guinea Ecuatorial'),
(98, 624, 'GW', 'GNB', 'Guinea-Bissau'),
(99, 328, 'GY', 'GUY', 'Guyana'),
(100, 332, 'HT', 'HTI', 'Haití'),
(101, 334, 'HM', 'HMD', 'Islas Heard y McDonald'),
(102, 340, 'HN', 'HND', 'Honduras'),
(103, 344, 'HK', 'HKG', 'Hong Kong'),
(104, 348, 'HU', 'HUN', 'Hungría'),
(105, 356, 'IN', 'IND', 'India'),
(106, 360, 'ID', 'IDN', 'Indonesia'),
(107, 364, 'IR', 'IRN', 'Irán'),
(108, 368, 'IQ', 'IRQ', 'Iraq'),
(109, 372, 'IE', 'IRL', 'Irlanda'),
(110, 352, 'IS', 'ISL', 'Islandia'),
(111, 376, 'IL', 'ISR', 'Israel'),
(112, 380, 'IT', 'ITA', 'Italia'),
(113, 388, 'JM', 'JAM', 'Jamaica'),
(114, 392, 'JP', 'JPN', 'Japón'),
(115, 400, 'JO', 'JOR', 'Jordania'),
(116, 398, 'KZ', 'KAZ', 'Kazajstán'),
(117, 404, 'KE', 'KEN', 'Kenia'),
(118, 417, 'KG', 'KGZ', 'Kirguistán'),
(119, 296, 'KI', 'KIR', 'Kiribati'),
(120, 414, 'KW', 'KWT', 'Kuwait'),
(121, 418, 'LA', 'LAO', 'Laos'),
(122, 426, 'LS', 'LSO', 'Lesotho'),
(123, 428, 'LV', 'LVA', 'Letonia'),
(124, 422, 'LB', 'LBN', 'Líbano'),
(125, 430, 'LR', 'LBR', 'Liberia'),
(126, 434, 'LY', 'LBY', 'Libia'),
(127, 438, 'LI', 'LIE', 'Liechtenstein'),
(128, 440, 'LT', 'LTU', 'Lituania'),
(129, 442, 'LU', 'LUX', 'Luxemburgo'),
(130, 446, 'MO', 'MAC', 'Macao'),
(131, 807, 'MK', 'MKD', 'ARY Macedonia'),
(132, 450, 'MG', 'MDG', 'Madagascar'),
(133, 458, 'MY', 'MYS', 'Malasia'),
(134, 454, 'MW', 'MWI', 'Malawi'),
(135, 462, 'MV', 'MDV', 'Maldivas'),
(136, 466, 'ML', 'MLI', 'Malí'),
(137, 470, 'MT', 'MLT', 'Malta'),
(138, 238, 'FK', 'FLK', 'Islas Malvinas'),
(139, 580, 'MP', 'MNP', 'Islas Marianas del Norte'),
(140, 504, 'MA', 'MAR', 'Marruecos'),
(141, 584, 'MH', 'MHL', 'Islas Marshall'),
(142, 474, 'MQ', 'MTQ', 'Martinica'),
(143, 480, 'MU', 'MUS', 'Mauricio'),
(144, 478, 'MR', 'MRT', 'Mauritania'),
(145, 175, 'YT', 'MYT', 'Mayotte'),
(146, 484, 'MX', 'MEX', 'México'),
(147, 583, 'FM', 'FSM', 'Micronesia'),
(148, 498, 'MD', 'MDA', 'Moldavia'),
(149, 492, 'MC', 'MCO', 'Mónaco'),
(150, 496, 'MN', 'MNG', 'Mongolia'),
(151, 500, 'MS', 'MSR', 'Montserrat'),
(152, 508, 'MZ', 'MOZ', 'Mozambique'),
(153, 104, 'MM', 'MMR', 'Myanmar'),
(154, 516, 'NA', 'NAM', 'Namibia'),
(155, 520, 'NR', 'NRU', 'Nauru'),
(156, 524, 'NP', 'NPL', 'Nepal'),
(157, 558, 'NI', 'NIC', 'Nicaragua'),
(158, 562, 'NE', 'NER', 'Níger'),
(159, 566, 'NG', 'NGA', 'Nigeria'),
(160, 570, 'NU', 'NIU', 'Niue'),
(161, 574, 'NF', 'NFK', 'Isla Norfolk'),
(162, 578, 'NO', 'NOR', 'Noruega'),
(163, 540, 'NC', 'NCL', 'Nueva Caledonia'),
(164, 554, 'NZ', 'NZL', 'Nueva Zelanda'),
(165, 512, 'OM', 'OMN', 'Omán'),
(166, 528, 'NL', 'NLD', 'Países Bajos'),
(167, 586, 'PK', 'PAK', 'Pakistán'),
(168, 585, 'PW', 'PLW', 'Palau'),
(169, 275, 'PS', 'PSE', 'Palestina'),
(170, 591, 'PA', 'PAN', 'Panamá'),
(171, 598, 'PG', 'PNG', 'Papúa Nueva Guinea'),
(172, 600, 'PY', 'PRY', 'Paraguay'),
(173, 604, 'PE', 'PER', 'Perú'),
(174, 612, 'PN', 'PCN', 'Islas Pitcairn'),
(175, 258, 'PF', 'PYF', 'Polinesia Francesa'),
(176, 616, 'PL', 'POL', 'Polonia'),
(177, 620, 'PT', 'PRT', 'Portugal'),
(178, 630, 'PR', 'PRI', 'Puerto Rico'),
(179, 634, 'QA', 'QAT', 'Qatar'),
(180, 826, 'GB', 'GBR', 'Reino Unido'),
(181, 638, 'RE', 'REU', 'Reunión'),
(182, 646, 'RW', 'RWA', 'Ruanda'),
(183, 642, 'RO', 'ROU', 'Rumania'),
(184, 643, 'RU', 'RUS', 'Rusia'),
(185, 732, 'EH', 'ESH', 'Sahara Occidental'),
(186, 90, 'SB', 'SLB', 'Islas Salomón'),
(187, 882, 'WS', 'WSM', 'Samoa'),
(188, 16, 'AS', 'ASM', 'Samoa Americana'),
(189, 659, 'KN', 'KNA', 'San Cristóbal y Nevis'),
(190, 674, 'SM', 'SMR', 'San Marino'),
(191, 666, 'PM', 'SPM', 'San Pedro y Miquelón'),
(192, 670, 'VC', 'VCT', 'San Vicente y las Granadinas'),
(193, 654, 'SH', 'SHN', 'Santa Helena'),
(194, 662, 'LC', 'LCA', 'Santa Lucía'),
(195, 678, 'ST', 'STP', 'Santo Tomé y Príncipe'),
(196, 686, 'SN', 'SEN', 'Senegal'),
(197, 891, 'CS', 'SCG', 'Serbia y Montenegro'),
(198, 690, 'SC', 'SYC', 'Seychelles'),
(199, 694, 'SL', 'SLE', 'Sierra Leona'),
(200, 702, 'SG', 'SGP', 'Singapur'),
(201, 760, 'SY', 'SYR', 'Siria'),
(202, 706, 'SO', 'SOM', 'Somalia'),
(203, 144, 'LK', 'LKA', 'Sri Lanka'),
(204, 748, 'SZ', 'SWZ', 'Suazilandia'),
(205, 710, 'ZA', 'ZAF', 'Sudáfrica'),
(206, 736, 'SD', 'SDN', 'Sudán'),
(207, 752, 'SE', 'SWE', 'Suecia'),
(208, 756, 'CH', 'CHE', 'Suiza'),
(209, 740, 'SR', 'SUR', 'Surinam'),
(210, 744, 'SJ', 'SJM', 'Svalbard y Jan Mayen'),
(211, 764, 'TH', 'THA', 'Tailandia'),
(212, 158, 'TW', 'TWN', 'Taiwán'),
(213, 834, 'TZ', 'TZA', 'Tanzania'),
(214, 762, 'TJ', 'TJK', 'Tayikistán'),
(215, 86, 'IO', 'IOT', 'Territorio Británico del Océano Índico'),
(216, 260, 'TF', 'ATF', 'Territorios Australes Franceses'),
(217, 626, 'TL', 'TLS', 'Timor Oriental'),
(218, 768, 'TG', 'TGO', 'Togo'),
(219, 772, 'TK', 'TKL', 'Tokelau'),
(220, 776, 'TO', 'TON', 'Tonga'),
(221, 780, 'TT', 'TTO', 'Trinidad y Tobago'),
(222, 788, 'TN', 'TUN', 'Túnez'),
(223, 796, 'TC', 'TCA', 'Islas Turcas y Caicos'),
(224, 795, 'TM', 'TKM', 'Turkmenistán'),
(225, 792, 'TR', 'TUR', 'Turquía'),
(226, 798, 'TV', 'TUV', 'Tuvalu'),
(227, 804, 'UA', 'UKR', 'Ucrania'),
(228, 800, 'UG', 'UGA', 'Uganda'),
(229, 858, 'UY', 'URY', 'Uruguay'),
(230, 860, 'UZ', 'UZB', 'Uzbekistán'),
(231, 548, 'VU', 'VUT', 'Vanuatu'),
(232, 862, 'VE', 'VEN', 'Venezuela'),
(233, 704, 'VN', 'VNM', 'Vietnam'),
(234, 92, 'VG', 'VGB', 'Islas Vírgenes Británicas'),
(235, 850, 'VI', 'VIR', 'Islas Vírgenes de los Estados Unidos'),
(236, 876, 'WF', 'WLF', 'Wallis y Futuna'),
(237, 887, 'YE', 'YEM', 'Yemen'),
(238, 262, 'DJ', 'DJI', 'Yibuti'),
(239, 894, 'ZM', 'ZMB', 'Zambia'),
(240, 716, 'ZW', 'ZWE', 'Zimbabue');

-- --------------------------------------------------------

--
-- Table structure for table `privilegios`
--

CREATE TABLE IF NOT EXISTS `privilegios` (
  `id_privilegios` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_privilegios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `privilegios`
--

INSERT INTO `privilegios` (`id_privilegios`, `nivel`, `nombre`, `padre`) VALUES
(2, 55, 'admin', 0),
(9, 102, 'Operations', 0),
(10, 151, 'Graphic Designer', 102),
(11, 84, 'Accounting', 0),
(12, 155, 'Developer', 102),
(13, 137, 'Photographer', 102),
(14, 78, 'Community Manager', 102),
(15, 173, 'Human Resources', 0),
(16, 8, 'Legal', 0),
(17, 41, 'Marketing', 0),
(18, 53, 'QMS', 0),
(19, 76, 'Sales', 0),
(20, 119, 'Brand Positioner', 102),
(21, 164, 'Customer Manager', 102);

-- --------------------------------------------------------

--
-- Table structure for table `sales_phone_contact`
--

CREATE TABLE IF NOT EXISTS `sales_phone_contact` (
  `id_phone_contact` int(11) NOT NULL,
  `id_prospect_contact` int(11) DEFAULT NULL,
  `phone_name` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_phone_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_prospect`
--

CREATE TABLE IF NOT EXISTS `sales_prospect` (
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
  `facebook` text,
  `twitter` text,
  `notas` text,
  `fecha` date DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_prospect`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Porspectos del sistema seals' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_prospect_contact`
--

CREATE TABLE IF NOT EXISTS `sales_prospect_contact` (
  `id_prospect_contact` int(11) NOT NULL,
  `id_prospect` int(11) DEFAULT NULL,
  `nombres` text,
  `apellidos` text,
  `titulo` text,
  `email` text,
  `notas` text,
  `seals_prospect_contactcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_prospect_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seccion_dashboard`
--

CREATE TABLE IF NOT EXISTS `seccion_dashboard` (
  `id_seccion` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `titulo` text NOT NULL,
  `privilegios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_seccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `seccion_dashboard`
--

INSERT INTO `seccion_dashboard` (`id_seccion`, `numero`, `icono`, `titulo`, `privilegios`) VALUES
(1, 1, 'icon-home', 'Dashboard', 0),
(2, 2, 'fa fa-cog', 'Front-End', 55),
(3, 3, 'fa fa-user', 'Usuarios', 55),
(4, 2, 'fa fa-line-chart', 'Sales', 76);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
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

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `dui`, `nit`, `email`, `imagen`, `telefono`, `celular`) VALUES
('esanchez30admin10528679', 'Emerson J.', 'Sanchez', NULL, NULL, 'esanchez@lieison.com', NULL, NULL, NULL),
('geabenitez51admin11122516', 'Gerson E.', 'Aguirre', NULL, NULL, 'geabenitez@lieison.com', NULL, NULL, NULL),
('juan69Sub-user10385792', 'juan', 'gabriel', NULL, NULL, 'juan@lieison.com', 'YW5WaGJpMW5ZV0p5YVdWc09EZzFNREJqWWpJeVlUWms5ODRiOTk4OA==.jpg', NULL, NULL),
('rolando55admin18894933', 'Rolando Antonio', 'Arriaza Marroquin', NULL, NULL, 'rmarroquin@lieison.com', 'd2ViY2FtLXRveS1mb3RvM2FmMmFlNjM1.jpg', '22620282', '79002616');

-- --------------------------------------------------------

--
-- Table structure for table `visitas`
--

CREATE TABLE IF NOT EXISTS `visitas` (
  `id_visitas` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  PRIMARY KEY (`id_visitas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `visitas`
--

INSERT INTO `visitas` (`id_visitas`, `numero`, `mes`, `anio`) VALUES
(2, 215, 2, 2015),
(3, 50, 3, 2015),
(4, 110, 1, 2015);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
