-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2015 at 09:30 PM
-- Server version: 5.5.23
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lieisoft_encuestas`
--

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `url` text NOT NULL,
  `logo` text,
  `activo` int(11) NOT NULL DEFAULT '1',
  `fecha` date DEFAULT NULL,
  `titulo` text,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `encuestas`
--

CREATE TABLE IF NOT EXISTS `encuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) DEFAULT NULL,
  `titulo` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `encuestas`
--

INSERT INTO `encuestas` (`id`, `id_empresa`, `titulo`, `fecha`) VALUES
(1, 1, 'Lieison es bueno ?', '2012-12-15'),
(2, 1, 'PRUEBA', '2015-03-03'),
(3, NULL, 'Para quien es esto', '2015-03-03'),
(4, NULL, 'prueba 2', '2015-03-03'),
(5, NULL, 'Quien es mas racista', '2015-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_encuesta` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `opciones`
--

INSERT INTO `opciones` (`id`, `id_encuesta`, `nombre`, `valor`) VALUES
(1, 1, 'Muy Bueno', 14),
(2, 1, 'Bueno', 6),
(3, 1, 'Malo', 3),
(4, 4, 'bien', 1),
(5, 4, 'mal', 0),
(6, 5, 'USA', 8),
(7, 5, 'Hitler', 2);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
