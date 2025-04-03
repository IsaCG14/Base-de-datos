-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-02-2025 a las 09:17:42
-- Versión del servidor: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- Versión de PHP: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `observacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `observacion`) VALUES
(1, 'Escolar', 'Contiene utiles'),
(2, 'Viveres', 'Rubros'),
(3, 'Aseo personal', 'Aseos personales'),
(4, 'Bebidas', 'Bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `precio` double NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `proveedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `marca`, `precio`, `fecha_vencimiento`, `id_categoria`, `cantidad`, `proveedor`) VALUES
(1001, 'Marcador', NULL, 57.5, NULL, 1, 10, NULL),
(1002, 'Harina Maiz', 'Pan', 63.78, '2025-04-02', 2, 100, 'J-4533'),
(1003, 'Jabon Baño', NULL, 27.5, NULL, 3, 78, NULL),
(1004, 'Lapiz', NULL, 1.5, NULL, 1, 150, NULL),
(1005, 'Jabon liquido', NULL, 8.5, '2030-05-14', 3, 50, NULL),
(1006, 'Malta', 'Maltin', 89.8, '2025-04-10', 4, 60, NULL),
(1007, 'Cuaderno', 'Fama', 2.77, NULL, 1, 400, 'J-234535'),
(1008, 'Cereal', 'Conflakes', 1.8, NULL, 2, 200, 'J-56435'),
(1009, 'Enjuague bucal', 'Colgate', 3.8, NULL, 3, 340, 'J-2345'),
(1010, 'Crema dental', 'Colgate', 4.8, NULL, 3, 640, 'J-2345'),
(1011, 'Crema dental', 'Colgate', 4.8, NULL, 3, 640, 'J-2345'),
(1012, 'Hilo dental', 'Colgate', 3.4, '2026-12-14', 3, 1540, 'J-2345'),
(1013, 'Cepillo dental', 'Colgate', 1.55, '2029-12-23', 3, 154, 'J-2345'),
(1014, 'Mortadela', 'El corral', 2.5, '2027-11-23', 2, 160, 'J-254935'),
(1015, 'Nuggets de pollo', 'El corral', 3.4, '2027-11-23', 2, 190, 'J-254935'),
(1016, 'Pollo', 'El corral', 1, '2027-07-23', 2, 340, 'J-254935'),
(1017, 'Jamon', 'El corral', 4, '2027-07-13', 2, 140, 'J-254935'),
(1018, 'Chorizo', 'El corral', 3, '2025-12-13', 2, 167, 'J-254935'),
(1019, 'Mortadela', 'El corral', 5, '2027-02-13', 2, 65, 'J-254935'),
(1020, 'Salchicha', 'El corral', 7, '2026-02-21', 2, 650, 'J-254935'),
(1021, 'Salchicha de pollo', 'El corral', 7.3, '2026-02-21', 2, 350, 'J-254935'),
(1022, 'Milanesa de pollo', 'El corral', 5.3, '2026-10-24', 2, 650, 'J-254935'),
(1023, 'Lapiz', 'Mongol', 0.77, NULL, 1, 2900, 'J-234535'),
(1024, 'Malta', 'Maltin Polar', 1.5, '2026-10-10', 4, 800, 'J-4533'),
(1025, 'Mantequilla', 'Mavesa', 2.5, '2026-11-15', 2, 800, 'J-4533'),
(1026, 'Mayonesa', 'Mavesa', 1.2, '2026-03-12', 2, 850, 'J-4533'),
(1027, 'Aceite', 'Mazeite', 3.2, '2026-04-15', 2, 600, 'J-4533'),
(1028, 'Arroz', 'Primor', 1.4, '2026-06-15', 2, 630, 'J-4533'),
(1029, 'Margarina', 'Primor', 2.3, '2026-06-15', 2, 630, 'J-4533'),
(1030, 'Pasta', 'Primor', 2.3, '2027-12-15', 2, 130, 'J-4533'),
(1031, 'Salsa de tomate', 'Pampero', 1.3, '2027-10-26', 2, 140, 'J-4533'),
(1032, 'Avena', 'Quaker', 3.56, '2027-03-25', 2, 740, 'J-4533'),
(1033, 'Crema de arroz', 'Primor', 1.3, '2027-11-15', 2, 160, 'J-4533'),
(1034, 'Atun', 'Margarita', 2.3, '2027-11-15', 2, 167, 'J-4533'),
(1035, 'Vinagre', 'Mavesa', 2.5, '2027-02-25', 2, 160, 'J-4533'),
(1036, 'Riquesa queso original', 'Riquesa', 1.5, '2027-12-25', 2, 300, 'J-4533'),
(1037, 'Mezcla de cachapas', 'Pan', 1.6, '2027-02-25', 2, 100, 'J-4533'),
(1038, 'Sardinas', 'Margarita', 1, '2027-01-25', 2, 145, 'J-4533'),
(1039, 'Cerveza', 'Cerveza polar', 1.5, '2027-11-04', 4, 145, 'J-4533'),
(1040, 'Jabon', 'Las llaves', 2, '2030-11-12', 2, 445, 'J-4533'),
(1041, 'Suavizante', 'Las llaves', 2.7, '2030-11-11', 2, 455, 'J-4533'),
(1042, 'Cereal', 'Choco Crispies', 1.88, '2026-12-06', 2, 200, 'J-56435'),
(1043, 'Crema dental', 'Alive', 1.7, '2030-11-11', 3, 465, 'J-18845'),
(1044, 'Jabon en polvo', 'Alive', 3.7, '2030-03-11', 3, 465, 'J-18845'),
(1045, 'Desorodante', 'Alive', 1.7, '2035-03-11', 3, 405, 'J-18845'),
(1046, 'Shampoo', 'Alive', 7, '2035-05-11', 3, 45, 'J-18845'),
(1047, 'Acondicionador', 'Alive', 7.1, '2033-05-11', 3, 405, 'J-18845'),
(1048, 'Crema corporal', 'Alive', 3.1, '2027-05-11', 3, 445, 'J-18845'),
(1049, 'Toallas', 'Alive', 2.1, '2027-11-11', 3, 145, 'J-18845'),
(1050, 'Cepillo dental', 'Alive', 1.1, NULL, 3, 225, 'J-18845'),
(1051, 'Harina de maiz', 'Dona belen', 1.45, '2026-02-04', 2, 340, 'J-8346');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `rif` varchar(50) NOT NULL,
  `nombre_proveedor` varchar(50) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`rif`, `nombre_proveedor`, `direccion`) VALUES
('J-18845', 'Alive Company', NULL),
('J-2345', 'Colgate', NULL),
('J-234535', 'Marfil', NULL),
('J-254935', 'Protinal', NULL),
('J-4533', 'Polar', NULL),
('J-56435', 'Kellogg Company', NULL),
('J-8346', 'Doña Belen', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `fk_proveedor` (`proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`rif`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`rif`),
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
