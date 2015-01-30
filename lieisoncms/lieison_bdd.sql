-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2015 a las 03:39:40
-- Versión del servidor: 5.5.23
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lieison_bdd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dashboard`
--

CREATE TABLE IF NOT EXISTS `dashboard` (
  `id_dashboard` int(11) NOT NULL AUTO_INCREMENT,
  `id_seccion` int(11) NOT NULL,
  `icono` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `titulo` text NOT NULL,
  `start` int(11) NOT NULL,
  `privilegios` int(11) NOT NULL,
  PRIMARY KEY (`id_dashboard`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `dashboard`
--

INSERT INTO `dashboard` (`id_dashboard`, `id_seccion`, `icono`, `link`, `titulo`, `start`, `privilegios`) VALUES
(1, 1, 'glyphicon glyphicon-dashboard', 'monitor.php', 'Monitoreo', 2, 4),
(2, 1, 'glyphicon glyphicon-home', 'index.php', 'Principal', 1, 0),
(3, 2, 'fa fa-fast-forward', 'frontend/slider.php', 'Slider', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dashboard_copyright`
--

CREATE TABLE IF NOT EXISTS `dashboard_copyright` (
  `id_copy` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_copy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
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
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id_log`, `id_usuario`, `entrada`, `salida`, `fecha`) VALUES
('01c95b5a07797ebcd3ef618ec69bb64c', 'roli_00', '04:18:46', NULL, '2015-01-24'),
('0c65bcf03c70197e94700f0484060af1', 'roli_00', '02:23:17', '03:00:42', '2015-01-26'),
('0da0b5f6185f87a6e143fef1a75cedfb', 'roli_00', '03:25:21', '04:27:44', '2015-01-26'),
('10a0af2f849b2753cc2c4a8bb5bd30b5', 'roli_00', '00:03:06', '00:13:50', '2015-01-24'),
('165ad3b2479966ed948ea7b3007afc5b', 'roli_00', '04:18:46', '04:37:52', '2015-01-24'),
('219fd3a79286cce126ec6b2d00c258c1', 'roli_00', '19:59:06', NULL, '2015-01-28'),
('2e0644e7e64e538d7d25b1ee44bf084b', 'roli_00', '18:27:44', '05:13:12', '2015-01-24'),
('32e3aa5e85dc6edc0e765e9dbef99613', 'roli_00', '04:00:27', '04:04:46', '2015-01-24'),
('38e637b891ae037039b98e7fa5fb7c69', 'roli_00', '22:18:33', '18:43:21', '2015-01-26'),
('3aa32baa9075ae1ad0e51173607f036f', 'roli_00', '02:11:45', '02:26:45', '2015-01-24'),
('3e3237d8e5be5655e795919098f0146c', 'roli_00', '01:54:02', NULL, '2015-01-24'),
('440e5ab6affe941f6edc68907e67e96a', 'roli_00', '04:14:39', '04:14:43', '2015-01-24'),
('472f81da80725ac216bd7610da985024', 'roli_00', '03:39:03', '03:39:25', '2015-01-24'),
('5156cdb8297dfa7f68f7387d76b24835', 'roli_00', '05:34:25', '05:34:29', '2015-01-29'),
('54e29f60a08bd928d6e1f7877df13001', 'roli_00', '03:56:36', '03:57:38', '2015-01-24'),
('567f9cb97904942cc52f3bec21f20bc5', 'roli_00', '03:57:58', '03:59:03', '2015-01-24'),
('56d0069ab9b1af77c40b8864c8e7d106', 'roli_00', '18:26:36', '18:26:39', '2015-01-24'),
('5b8c981a6c5372b566085489be20b1af', 'roli_00', '05:13:15', '05:23:01', '2015-01-25'),
('634d2d803d4bf24732f91d766834bbf3', 'roli_00', '03:48:19', '03:48:25', '2015-01-24'),
('657cb97ffb5f20f324e27cc6d70480cb', 'roli_00', '03:40:12', '03:40:16', '2015-01-24'),
('67a54dfb7ad65bb587caab88bd78b29b', 'roli_00', '04:45:56', '04:45:59', '2015-01-24'),
('6d5ce9f199fe47725d7726fd543839f5', 'roli_00', '22:55:21', '22:58:13', '2015-01-25'),
('722eb74a9210d395fcf26654d3247872', 'roli_00', '03:59:50', '04:12:54', '2015-01-24'),
('725300010c8dd1fe18a44c1e1f1cf10b', 'roli_00', '16:32:23', '18:26:34', '2015-01-24'),
('75c8c3037b254b30af4e3aadec257e2a', 'roli_00', '23:51:24', '23:52:58', '2015-01-26'),
('7d0d2f0594cb268b871acc7e108e4251', 'roli_00', '02:24:37', '02:25:36', '2015-01-24'),
('7d648ed8cf234a47ae2fad087dd8e457', 'roli_00', '22:47:54', '22:55:08', '2015-01-25'),
('7ffbd938215df78ffee35e35f53cdf0c', 'roli_00', '15:19:21', '22:47:52', '2015-01-25'),
('805da4a97b73decf3fea4b093fcb6dd9', 'roli_00', '15:46:01', '16:03:10', '2015-01-24'),
('8489559d58d95cb873497e79b4cc326f', 'roli_00', '03:09:54', '04:25:37', '2015-01-29'),
('8897bf1c1a73a3a2abda10ab7a00bfdf', 'roli_00', '05:13:15', NULL, '2015-01-25'),
('8cc324d93344b4427886da8535b0542a', 'roli_00', '04:45:59', '04:56:35', '2015-01-29'),
('919ef03f30e3b2b90cf2ada1d20b43cd', 'roli_00', '15:34:00', '16:08:04', '2015-01-24'),
('94084926acb2936144d1e6a217061fa2', 'roli_00', '22:59:45', '23:21:57', '2015-01-25'),
('9651da775c53e3ae8e354f84d1f95862', 'roli_00', '23:56:35', '00:03:04', '2015-01-24'),
('99b51915668b0878b9042865db745823', 'roli_00', '18:43:33', '19:58:40', '2015-01-28'),
('9cf10e36d3ef7f361ba8f53605e59c43', 'roli_00', '23:55:28', '23:55:32', '2015-01-24'),
('ac8d4db2dfcaa06011d27459fdccc21d', 'roli_00', '02:22:12', '02:22:22', '2015-01-24'),
('b158139e08d253824cf8362f3b871bc8', 'roli_00', '01:17:25', '01:51:12', '2015-01-24'),
('bf1462c4cd73862dcfbad3fa5a745090', 'roli_00', '03:52:55', '03:52:59', '2015-01-24'),
('c1598d49dcf8b8a5b9c4b669e55fff01', 'roli_00', '03:41:22', '03:41:31', '2015-01-24'),
('c24f95834e5dc7dc936ebb96050bd1c7', 'roli_00', '02:22:24', '02:24:35', '2015-01-24'),
('c51588f03b615257d42c39221356e8d3', 'roli_00', '03:37:19', '04:06:32', '2015-01-24'),
('c6c562240921780dd83692fed0370e8b', 'roli_00', '02:26:09', NULL, '2015-01-24'),
('cc7345b0d0a464603026ada4c0777d57', 'roli_00', '06:06:04', '06:09:30', '2015-01-29'),
('d075c370b95d0b390801854f6a10a0bb', 'roli_00', '00:29:10', '01:16:48', '2015-01-24'),
('d6f44309e5c52a3f09749fbdc433ffbe', 'roli_00', '02:26:48', '02:48:10', '2015-01-24'),
('dcd4930b55fa15cef88965977b76d2bd', 'roli_00', '04:16:30', '04:42:10', '2015-01-24'),
('e5e12a9c032cc307f0d64feccb74582a', 'roli_00', '02:02:29', '02:02:33', '2015-01-24'),
('eea29fe37f085c307fabe0cbb8aa58d4', 'roli_00', '05:23:04', '15:19:07', '2015-01-25'),
('f5e2950ff2b5b265ee8459aef599f893', 'roli_00', '00:16:04', '00:29:03', '2015-01-24'),
('fbd142dbae042827f3ec76358d92a70c', 'roli_00', '00:13:54', '00:15:47', '2015-01-24'),
('fe1513f2a2345ad877cb90232af7fdb7', 'roli_00', '18:43:22', '18:43:26', '2015-01-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tabla de logueo lieison , esta tabla genera los permisos necesarios	' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_login`, `id_usuario`, `user`, `password`, `activo`, `rol`, `fecha`) VALUES
(1, 'roli_00', 'roli', 'linux', 1, 'admin', '2015-01-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios`
--

CREATE TABLE IF NOT EXISTS `privilegios` (
  `id_privilegios` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `nombre` text NOT NULL,
  PRIMARY KEY (`id_privilegios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `privilegios`
--

INSERT INTO `privilegios` (`id_privilegios`, `nivel`, `nombre`) VALUES
(1, 0, 'All'),
(2, 4, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_dashboard`
--

CREATE TABLE IF NOT EXISTS `seccion_dashboard` (
  `id_seccion` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `titulo` text NOT NULL,
  PRIMARY KEY (`id_seccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `seccion_dashboard`
--

INSERT INTO `seccion_dashboard` (`id_seccion`, `numero`, `icono`, `titulo`) VALUES
(1, 1, 'icon-home', 'Dashboard'),
(2, 2, 'fa fa-cog', 'Front-End');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` int(11) NOT NULL,
  `script` text NOT NULL,
  `json_data` text NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` varchar(255) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `dui` varchar(45) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `email` text,
  `imagen` text,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `dui`, `nit`, `email`, `imagen`) VALUES
('roli_00', 'Rolando', 'Arriaza', '000', '000', 'rmarroquin@lieison.com', 'yo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE IF NOT EXISTS `visitas` (
  `id_visitas` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  PRIMARY KEY (`id_visitas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`id_visitas`, `numero`, `mes`, `anio`) VALUES
(2, 200, 2, 2015),
(3, 50, 3, 2015),
(4, 100, 1, 2015);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
