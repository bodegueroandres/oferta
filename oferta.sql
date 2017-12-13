-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2017 a las 20:20:26
-- Versión del servidor: 10.1.24-MariaDB
-- Versión de PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oferta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `fk_sede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre`, `fk_sede`) VALUES
(1, 'Tecnicatura Superior en Análisis y Programación Superior de Sistemas', NULL),
(2, 'Telecomunicaciones', NULL),
(3, 'Computación y Redes', NULL),
(4, 'Diseño Gráfico y Publicitario', NULL),
(5, 'Diseño Multimedial', NULL),
(6, 'Fotografía Creativa y Diseño Fotográfico', NULL),
(7, 'Diseño de Indumentaria', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_admin` int(11) DEFAULT NULL,
  `fk_institucion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id_datos` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `detalle_consulta` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id_datos`, `nombre`, `email`, `detalle_consulta`) VALUES
(3, 'anonimo', 'anonimo', NULL),
(4, 'anonimo', 'anonimo', NULL),
(5, 'anonimo', 'anonimo', NULL),
(6, 'Pedro', 'exequiel_puche@hotmail.com', NULL),
(7, 'Pedro', 'exequiel_puche@hotmail.com', NULL),
(8, 'anonimo', 'anonimo', NULL),
(9, 'anonimo', 'anonimo', NULL),
(10, 'anonimo', 'anonimo', NULL),
(11, 'anonimo', 'anonimo', NULL),
(12, 'anonimo', 'anonimo', NULL),
(13, 'anonimo', 'anonimo', NULL),
(14, 'anonimo', 'anonimo', NULL),
(15, 'anonimo', 'anonimo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_insitucion` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `localizacion` varchar(1000) DEFAULT NULL,
  `fk_sede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_insitucion`, `tipo`, `turno`, `nombre`, `direccion`, `telefono`, `email`, `localizacion`, `fk_sede`) VALUES
(1, 'estatal', 'vespertino', 'Instituto de Educacion Superior 9-0008 Manuel Belgrano ', 'Rodriguez 191(esq. Lamadrid)', '261-4286173', 'manuelbelgranorectoria@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3349.9912320057847!2d-68.85595208481475!3d-32.898400080935545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e090941efe5c3%3A0x5a79f9ddb0a955bb!2sJ.+Rodriguez+191%2C+Mendoza!5e0!3m2!1ses-419!2sar!4v1510754096998\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 2),
(2, 'estatal', 'vespertino', 'Instituto de Educacion Superior 9-0008 Manuel Belgrano ', 'Roque Saenz Peña 1271', '261-4246237', 'manuelbelgranorectoria@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d107156.30400190271!2d-68.8662087!3d-32.9342537!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e096e24fe67d3%3A0x8bd4ca97336e5fdb!2sIES+9-008+Manuel+Belgrano+-+Sede+Godoy+Cruz!5e0!3m2!1ses-419!2sar!4v1510753928812\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 1),
(3, 'estatal', 'vespertino', 'Instituto de Educacion Superior 9-0008 Manuel Belgrano ', 'Doctor moreno esq.Roca', '261-153478155', 'manuelbelgranorectoria@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d418.9696876921115!2d-68.84054!3d-32.8516718!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e08972bd84163%3A0xc69f774a11aa269a!2s9-008+-+Instituto+de+Educaci%C3%B3n+Superior+%22Manuel+Belgrano%22!5e0!3m2!1ses-419!2sar!4v1510753763452\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 3),
(4, 'estatal', 'vespertino', 'Instituto de Educacion Superior 9-0008 Manuel Belgrano ', 'Ruta Provincial N°50 nro 4566', '261-155070555', 'manuelbelgranorectoria@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d836.6222230531304!2d-68.68844577438587!3d-32.99088392962339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e6d36efdc2c57%3A0xa5ece9cdc61c705f!2sRP50+4566%2C+Mendoza!5e0!3m2!1ses-419!2sar!4v1510753140609\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id_sede`, `nombre`) VALUES
(1, 'Godoy Cruz'),
(2, 'Capital'),
(3, 'Las Heras'),
(4, 'Rodeo del Medio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede_carrera`
--

CREATE TABLE `sede_carrera` (
  `fk_sede` int(11) DEFAULT NULL,
  `fk_carrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sede_carrera`
--

INSERT INTO `sede_carrera` (`fk_sede`, `fk_carrera`) VALUES
(2, 1),
(3, 1),
(4, 1),
(2, 2),
(3, 3),
(4, 3),
(1, 4),
(1, 5),
(2, 6),
(3, 6),
(1, 7),
(3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`),
  ADD KEY `fk_sede` (`fk_sede`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `fk_usuario` (`fk_usuario`),
  ADD KEY `fk_institucion` (`fk_institucion`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id_datos`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_insitucion`),
  ADD KEY `fk_sede` (`fk_sede`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `sede_carrera`
--
ALTER TABLE `sede_carrera`
  ADD KEY `fk_sede` (`fk_sede`),
  ADD KEY `indice` (`fk_carrera`,`fk_sede`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id_datos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_insitucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`fk_institucion`) REFERENCES `institucion` (`id_insitucion`);

--
-- Filtros para la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD CONSTRAINT `institucion_ibfk_1` FOREIGN KEY (`fk_sede`) REFERENCES `sede` (`id_sede`);

--
-- Filtros para la tabla `sede_carrera`
--
ALTER TABLE `sede_carrera`
  ADD CONSTRAINT `sede_carrera_ibfk_1` FOREIGN KEY (`fk_sede`) REFERENCES `sede` (`id_sede`),
  ADD CONSTRAINT `sede_carrera_ibfk_2` FOREIGN KEY (`fk_carrera`) REFERENCES `carreras` (`id_carrera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
