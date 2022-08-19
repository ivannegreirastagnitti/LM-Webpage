-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2022 at 11:04 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logins`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
CREATE TABLE IF NOT EXISTS `credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `user`, `password`) VALUES
(1, 'Ivan', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'El concepto de Modelo-Vista-Controlador (MVC) explicado', 'MVC se utiliza ampliamente en una variedad de los principales lenguajes de programación y es la arquitectura más popular para la construcción de servidores web complejos. Es utilizado por muchos marcos de trabajo e implementado en casi todas las aplicaciones web modernas.', 'En la ingeniería de software, usamos patrones de diseño como soluciones reutilizables para un problema común, un patrón es como una plantilla de cómo resolver un problema.\r\nEl Modelo-Vista-Controlador (MVC) es un patrón de diseño de software que divide el programa o la aplicación web relacionada en tres elementos o componentes interconectados. Cada uno de estos componentes se construye para manejar aspectos específicos de desarrollo de una aplicación. Este patrón es uno de los marcos de trabajo de desarrollo web estándar de la industria que se utiliza con más frecuencia.'),
(2, 'Una startup argentina ofrece becas para formar programadores: hay 100 mil empleos por cubrir', 'La capacitación de Aptugo se basa en un software simple que no requiere conocimientos previos. ', 'La empresa argentina Aptugo trazó un plan por demás ambicioso para este año: formar 100.000 nuevos programadores argentinos en 2022 para terminar con la escasez estructural del sector tecnológico local y resolver el problema más acuciante que enfrenta hoy en día, que es formar a la nueva generación de programadores.\r\n\r\nLa ventaja de este software es que, sin ser un experto en soluciones de software o un especialista en código, con una cuota de ingenio y dedicación, cualquier interesado puede ser un desarrollador de aplicaciones en unas pocas semanas. Además, la aplicación permite programar tanto de manera visual como tradicional.'),
(10, '“Se busca programador”: la carrera que explotó en la pandemia y aún sigue sin poder cubrir la demanda laboral', 'La formación en el área digital se duplicó durante los meses de confinamiento. Cuál es el sueldo promedio del mercado y cuántas ofertas de empleo hay.', 'Hace tiempo que los egresados de programación o carreras relacionadas al universo de la informática son muy buscados por empresas locales e internacionales. Y también hace varios años que existen becas y otras iniciativas para sumar estudiantes que, luego de capacitarse, puedan cubrir la demanda de trabajo. Sin embargo, en pandemia esta tendencia se potenció: el número de inscriptos para formarse en el rubro, tanto en cursos cortos, tecnicaturas o carreras de grado, creció aún más que antes. En algunos casos, casi se duplicó y, en otros, hasta se quintuplicó.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
