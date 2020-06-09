-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
--
 Tiempo de generación: 10-06-2020 a las 01:03:12
-- 
Versión del servidor: 5.6.21
-- 
Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101
 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS 
*/;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 
Base de datos: 
`basedatos_almacen`
--

-- --------------------------------------------------------

--
--
 Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` 
(
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
 
 `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Volcado de datos para la tabla `productos`

--

INSERT INTO `productos` (`id`, `descripcion`, `stock`) VALUES
(1, 'Celular Samsung J7', 104),

(2, 'Laptop 15 Sony', 55),
(3, 'ipod Pro 10', 30);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
