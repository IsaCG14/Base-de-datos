-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2025 a las 17:27:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`codigo`, `nombre`, `apellido`) VALUES
(111, 'Carlos', 'Henriquez'),
(112, 'Alfonso', 'Villanueva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor_libro`
--

CREATE TABLE `autor_libro` (
  `id` int(11) NOT NULL,
  `libro` int(11) NOT NULL,
  `autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor_libro`
--

INSERT INTO `autor_libro` (`id`, `libro`, `autor`) VALUES
(1, 63456, 111),
(2, 653637, 111),
(3, 4312556, 112);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cedula` int(11) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedula`, `telefono`, `correo`, `direccion`, `nombre`, `apellido`) VALUES
(124314, '0412344556', 'juangob@gmail.com', 'La cumaca', 'Juan', 'Gomez'),
(7593463, '04165473963', 'pedropez@gmail.com', 'Lara Barquisimeto', 'Pedro', 'Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `rif` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion_fiscal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`rif`, `nombre`, `telefono`, `correo`, `direccion_fiscal`) VALUES
('J-53245', 'Santillana', '0413234556', 'santillana@gmail.com', 'Caracas Av 1213'),
('J-7567241', 'Biblioteca Ayacucho', '0413214435', 'bayacucho@gmail.com', 'Carabobo Valencia Av 79');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `codigo` int(11) NOT NULL,
  `metodo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` (`codigo`, `metodo`) VALUES
(1, 'Pago movil'),
(2, 'Efectivo'),
(3, 'Zell'),
(4, 'PayPal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `codigo` int(11) NOT NULL,
  `precio` double NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `editorial` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `seccion` int(11) NOT NULL,
  `fecha_publicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`codigo`, `precio`, `titulo`, `editorial`, `descripcion`, `cantidad`, `fecha_compra`, `seccion`, `fecha_publicacion`) VALUES
(63456, 9.99, 'Biografia de Simon Bolivar', 'J-53245', 'Libro sobre la historia y biografia de Simon Bolivar', 100, '2023-09-11', 3, '2013-10-25'),
(653637, 8.33, 'El cardenalito', 'J-53245', 'Libro educativo de castellano', 200, '2023-09-11', 1, '2013-10-25'),
(4312556, 12.43, 'La teoria del Big Bang', 'J-7567241', 'Teoria que explica la creacion del universo', 40, '2023-10-13', 4, '2012-10-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_venta`
--

CREATE TABLE `libro_venta` (
  `id` int(11) NOT NULL,
  `libro` int(11) NOT NULL,
  `venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro_venta`
--

INSERT INTO `libro_venta` (`id`, `libro`, `venta`) VALUES
(1, 63456, 4255365),
(2, 4312556, 1605365);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_venta`
--

CREATE TABLE `pago_venta` (
  `id` int(11) NOT NULL,
  `venta` int(11) NOT NULL,
  `forma_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago_venta`
--

INSERT INTO `pago_venta` (`id`, `venta`, `forma_pago`) VALUES
(1, 1605365, 2),
(2, 4255365, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `nombre_seccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `nombre_seccion`) VALUES
(1, 'Educacion'),
(2, 'Cocina'),
(3, 'Historia'),
(4, 'Ciencia y tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `codigo` int(11) NOT NULL,
  `detalles` varchar(255) NOT NULL,
  `fecha_venta` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`codigo`, `detalles`, `fecha_venta`, `cantidad`, `cliente`) VALUES
(1605365, 'Compra de libro de ciencia', '2024-03-10', 2, 7593463),
(4255365, 'Compra de libro de historia', '2024-03-08', 1, 124314);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `autor_libro`
--
ALTER TABLE `autor_libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro` (`libro`),
  ADD KEY `autor` (`autor`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`rif`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `editorial` (`editorial`),
  ADD KEY `fk_seccion` (`seccion`);

--
-- Indices de la tabla `libro_venta`
--
ALTER TABLE `libro_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro` (`libro`),
  ADD KEY `venta` (`venta`);

--
-- Indices de la tabla `pago_venta`
--
ALTER TABLE `pago_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta` (`venta`),
  ADD KEY `forma_pago` (`forma_pago`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_cliente` (`cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor_libro`
--
ALTER TABLE `autor_libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `libro_venta`
--
ALTER TABLE `libro_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pago_venta`
--
ALTER TABLE `pago_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor_libro`
--
ALTER TABLE `autor_libro`
  ADD CONSTRAINT `autor_libro_ibfk_1` FOREIGN KEY (`libro`) REFERENCES `libro` (`codigo`),
  ADD CONSTRAINT `autor_libro_ibfk_2` FOREIGN KEY (`autor`) REFERENCES `autor` (`codigo`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `fk_seccion` FOREIGN KEY (`seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`editorial`) REFERENCES `editorial` (`rif`);

--
-- Filtros para la tabla `libro_venta`
--
ALTER TABLE `libro_venta`
  ADD CONSTRAINT `libro_venta_ibfk_1` FOREIGN KEY (`libro`) REFERENCES `libro` (`codigo`),
  ADD CONSTRAINT `libro_venta_ibfk_2` FOREIGN KEY (`venta`) REFERENCES `venta` (`codigo`);

--
-- Filtros para la tabla `pago_venta`
--
ALTER TABLE `pago_venta`
  ADD CONSTRAINT `pago_venta_ibfk_1` FOREIGN KEY (`venta`) REFERENCES `venta` (`codigo`),
  ADD CONSTRAINT `pago_venta_ibfk_2` FOREIGN KEY (`forma_pago`) REFERENCES `forma_pago` (`codigo`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
