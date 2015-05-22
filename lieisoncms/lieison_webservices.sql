-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-05-2015 a las 11:10:53
-- Versión del servidor: 5.5.41-cll-lve
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lieison_webservices`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `key_values`
--

CREATE TABLE IF NOT EXISTS `key_values` (
  `id_key` int(11) NOT NULL AUTO_INCREMENT,
  `asign` text NOT NULL,
  `key_value` text NOT NULL,
  PRIMARY KEY (`id_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `key_values`
--

INSERT INTO `key_values` (`id_key`, `asign`, `key_value`) VALUES
(1, 'plugin', '99d811c94efdeb8d3f079030d944afa9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
  `id_plugin` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `version` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id_plugin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `plugins`
--

INSERT INTO `plugins` (`id_plugin`, `name`, `version`, `url`) VALUES
(1, 'prospect', '1.0', 'null');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
