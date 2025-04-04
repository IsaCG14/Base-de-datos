-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2025 a las 01:39:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aeropuerto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aerolinea`
--

CREATE TABLE `aerolinea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aerolinea`
--

INSERT INTO `aerolinea` (`id`, `nombre`) VALUES
(1, 'Aerolíneas del Caribe'),
(2, 'Vuelos Andinos'),
(3, 'Transporte Aéreo del Sur'),
(4, 'Líneas Aéreas del Norte'),
(5, 'Aerovías del Centro'),
(6, 'Conexiones Aéreas del Este'),
(7, 'Viajes Aéreos del Oeste'),
(8, 'Aerolíneas del Pacífico'),
(9, 'Vuelos Atlánticos'),
(10, 'Transporte Aéreo Global');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuerto`
--

CREATE TABLE `aeropuerto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aeropuerto`
--

INSERT INTO `aeropuerto` (`id`, `nombre`, `ciudad`) VALUES
(1, 'Aeropuerto Internacional de Caracas', 'Caracas'),
(2, 'Aeropuerto Internacional de Miami', 'Miami'),
(3, 'Aeropuerto Internacional de Madrid', 'Madrid'),
(4, 'Aeropuerto Internacional de Bogotá', 'Bogotá'),
(5, 'Aeropuerto Internacional de Buenos Aires', 'Buenos Aires'),
(6, 'Aeropuerto Internacional de Santiago', 'Santiago'),
(7, 'Aeropuerto Internacional de Lima', 'Lima'),
(8, 'Aeropuerto Internacional de Ciudad de México', 'Ciudad de México'),
(9, 'Aeropuerto Internacional de Panamá', 'Panamá'),
(10, 'Aeropuerto Internacional de Quito', 'Quito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

CREATE TABLE `avion` (
  `matricula` varchar(50) NOT NULL,
  `id_aerolinea` int(11) DEFAULT NULL,
  `capacidad` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `avion`
--

INSERT INTO `avion` (`matricula`, `id_aerolinea`, `capacidad`, `modelo`) VALUES
('ABC-123', 1, '150', 'Boeing 737'),
('BCD-890', 10, '280', 'Boeing 767'),
('DEF-456', 2, '200', 'Airbus A320'),
('GHI-789', 3, '300', 'Boeing 777'),
('JKL-012', 4, '180', 'Airbus A321'),
('MNO-345', 5, '250', 'Boeing 787'),
('PQR-678', 6, '120', 'Embraer 190'),
('STU-901', 7, '350', 'Airbus A350'),
('VWX-234', 8, '160', 'Boeing 737 MAX'),
('YZA-567', 9, '220', 'Airbus A330');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleto`
--

CREATE TABLE `boleto` (
  `id` int(11) NOT NULL,
  `id_pasajero` varchar(50) NOT NULL,
  `asiento` varchar(50) NOT NULL,
  `clase` varchar(50) NOT NULL,
  `nmr_vuelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boleto`
--

INSERT INTO `boleto` (`id`, `id_pasajero`, `asiento`, `clase`, `nmr_vuelo`) VALUES
(1, 'A1234567', '2', 'Ejecutiva', 'V01'),
(2, 'A1234567', '4', 'Turista', 'V01'),
(3, 'I5678901', '22', 'Primera Clase', 'V02'),
(4, 'I5678901', '23', 'Ejecutiva', 'V02'),
(5, 'A1234567', '5', 'Turista', 'V03'),
(6, 'A1234567', '6', 'Primera Clase', 'V03'),
(7, 'I5678901', '7', 'Primera Clase', 'V02'),
(8, 'I5678901', '17', 'Turista', 'V03'),
(9, 'H6543210', '16', 'Ejecutiva', 'V01'),
(10, 'H6543210', '14', 'Primera Clase', 'V02'),
(11, 'H6543210', '11', 'Turista', 'V03'),
(12, 'G4567890', '8', 'Turista', 'V03'),
(13, 'J5432109', '7', 'Primera Clase', 'V03'),
(14, 'E2345678', '8', 'Ejecutiva', 'V01'),
(15, 'G4567890', '9', 'Turista', 'V01'),
(16, 'E2345678', '9', 'Primera Clase', 'V02'),
(17, 'J5432109', '10', 'Ejecutiva', 'V02'),
(18, 'E2345678', '11', 'Turista', 'V03'),
(19, 'F8765432', '21', 'Primera Clase', 'V03'),
(20, 'F8765432', '22', 'Primera Clase', 'V02'),
(21, 'D6543210', '23', 'Ejecutiva', 'V02'),
(22, 'F8765432', '24', 'Turista', 'V03'),
(23, 'D6543210', '26', 'Primera Clase', 'V03'),
(24, 'J5432109', '27', 'Ejecutiva', 'V01'),
(25, 'F8765432', '29', 'Turista', 'V01'),
(26, 'B8765432', '2', 'Primera Clase', 'V02'),
(27, 'C9876543', '1', 'Ejecutiva', 'V02'),
(28, 'B8765432', '15', 'Turista', 'V03'),
(29, 'C9876543', '16', 'Primera Clase', 'V03'),
(30, 'C9876543', '20', 'Ejecutiva', 'V01'),
(31, 'B8765432', '19', 'Turista', 'V01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llegada`
--

CREATE TABLE `llegada` (
  `id` int(50) NOT NULL,
  `hora_llegada` datetime DEFAULT NULL,
  `id_aeropuerto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `llegada`
--

INSERT INTO `llegada` (`id`, `hora_llegada`, `id_aeropuerto`) VALUES
(1, '2025-01-04 12:15:00', 4),
(2, '2025-01-05 07:05:58', 5),
(3, '2025-01-05 11:46:10', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `pasaporte` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`pasaporte`, `nombre`, `Nacionalidad`, `telefono`) VALUES
('A1234567', 'Ana García', 'Venezolana', '0412-1234567'),
('B8765432', 'Carlos Pérez', 'Colombiana', '0414-9876543'),
('C9876543', 'Sofía Rodríguez', 'Argentina', '0416-1237890'),
('D6543210', 'Javier López', 'Mexicana', '0424-6543210'),
('E2345678', 'Laura Martínez', 'Española', '0412-2345678'),
('F8765432', 'Diego Sánchez', 'Peruana', '0414-8765432'),
('G4567890', 'Isabela Ramírez', 'Chilena', '0416-4567890'),
('H6543210', 'Miguel Torres', 'Ecuatoriana', '0424-6543219'),
('I5678901', 'Valentina Díaz', 'Uruguaya', '0412-5678901'),
('J5432109', 'Sebastián Ruiz', 'Paraguaya', '0414-5432109');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puerta_embarque`
--

CREATE TABLE `puerta_embarque` (
  `nmr_puerta` int(11) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puerta_embarque`
--

INSERT INTO `puerta_embarque` (`nmr_puerta`, `ubicacion`, `estado`) VALUES
(1, 'Terminal A', 'Disponible'),
(2, 'Terminal B', 'No disponible'),
(3, 'Terminal A', 'Disponible'),
(4, 'Terminal C', 'Disponible'),
(5, 'Terminal B', 'No disponible'),
(6, 'Terminal D', 'Disponible'),
(7, 'Terminal C', 'Disponible'),
(8, 'Terminal A', 'No disponible'),
(9, 'Terminal D', 'Disponible'),
(10, 'Terminal B', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `id` int(11) NOT NULL,
  `origen` varchar(50) NOT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `id_aeropuerto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salida`
--

INSERT INTO `salida` (`id`, `origen`, `hora_salida`, `id_aeropuerto`) VALUES
(1, 'caracas', '2025-01-01 20:00:12', 1),
(2, 'miami', '2025-01-02 02:10:12', 2),
(3, 'madrid', '2025-01-03 16:30:14', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tripulacion`
--

CREATE TABLE `tripulacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tripulacion`
--

INSERT INTO `tripulacion` (`id`, `nombre`, `puesto`) VALUES
(1, 'Ana García', 'Piloto'),
(2, 'Carlos Pérez', 'Copiloto'),
(3, 'Sofía Rodríguez', 'Azafata'),
(4, 'Javier López', 'Mecánico de vuelo'),
(5, 'Laura Martínez', 'Navegante'),
(6, 'Diego Sánchez', 'Azafato'),
(7, 'Isabela Ramírez', 'Ingeniero de vuelo'),
(8, 'Miguel Torres', 'Sobrecargo'),
(9, 'Valentina Díaz', 'Azafata'),
(10, 'Sebastián Ruiz', 'Piloto'),
(11, 'Patricia Luna', 'Piloto'),
(12, 'Roberto Marin', 'Copiloto'),
(13, 'Carolina Soto', 'Azafata'),
(14, 'Eduardo Ríos', 'Mecánico de vuelo'),
(15, 'Fernanda Díaz', 'Ingeniero de vuelo'),
(16, 'Gustavo Ortiz', 'Azafato'),
(17, 'Hilda Núñez', 'Piloto'),
(18, 'Ignacio Castro', 'Copiloto'),
(19, 'Jessica Ruiz', 'Azafata'),
(20, 'Kevin Torres', 'Mecánico de vuelo'),
(21, 'Lorena Vargas', 'Ingeniero de vuelo'),
(22, 'Manuel Peña', 'Azafato'),
(23, 'Natalia Morales', 'Piloto'),
(24, 'Oscar Jiménez', 'Copiloto'),
(25, 'Paola Silva', 'Azafata'),
(26, 'Raúl Herrera', 'Mecánico de vuelo'),
(27, 'Silvia Mendoza', 'Ingeniero de vuelo'),
(28, 'Tomás Navarro', 'Azafato'),
(29, 'Ursula Castillo', 'Piloto'),
(30, 'Víctor Romero', 'Copiloto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `nmr_vuelo` varchar(50) NOT NULL,
  `avion` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(50) NOT NULL,
  `puerta` int(11) DEFAULT NULL,
  `salida` int(11) DEFAULT NULL,
  `llegada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`nmr_vuelo`, `avion`, `fecha`, `estado`, `puerta`, `salida`, `llegada`) VALUES
('V01', 'ABC-123', '2025-01-01', 'Disponible', 1, 1, 1),
('V02', 'BCD-890', '2025-01-02', 'Disponible', 2, 2, 2),
('V03', 'DEF-456', '2025-01-03', 'No Disponible', 3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo_tripulacion`
--

CREATE TABLE `vuelo_tripulacion` (
  `nmr_vuelo` varchar(50) DEFAULT NULL,
  `id_tripulante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vuelo_tripulacion`
--

INSERT INTO `vuelo_tripulacion` (`nmr_vuelo`, `id_tripulante`) VALUES
('V01', 1),
('V01', 2),
('V01', 3),
('V01', 4),
('V01', 5),
('V01', 6),
('V01', 11),
('V01', 12),
('V01', 13),
('V01', 14),
('V02', 7),
('V02', 8),
('V02', 9),
('V02', 10),
('V02', 15),
('V02', 16),
('V02', 17),
('V02', 18),
('V02', 19),
('V02', 20),
('V03', 21),
('V03', 22),
('V03', 23),
('V03', 24),
('V03', 25),
('V03', 26),
('V03', 27),
('V03', 28),
('V03', 29),
('V03', 30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aerolinea`
--
ALTER TABLE `aerolinea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aeropuerto`
--
ALTER TABLE `aeropuerto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `id_aerolinea` (`id_aerolinea`);

--
-- Indices de la tabla `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasajero` (`id_pasajero`),
  ADD KEY `nmr_vuelo` (`nmr_vuelo`);

--
-- Indices de la tabla `llegada`
--
ALTER TABLE `llegada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aeropuerto` (`id_aeropuerto`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`pasaporte`);

--
-- Indices de la tabla `puerta_embarque`
--
ALTER TABLE `puerta_embarque`
  ADD PRIMARY KEY (`nmr_puerta`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aeropuerto` (`id_aeropuerto`);

--
-- Indices de la tabla `tripulacion`
--
ALTER TABLE `tripulacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`nmr_vuelo`),
  ADD KEY `avion` (`avion`),
  ADD KEY `puerta` (`puerta`),
  ADD KEY `salida` (`salida`),
  ADD KEY `llegada` (`llegada`);

--
-- Indices de la tabla `vuelo_tripulacion`
--
ALTER TABLE `vuelo_tripulacion`
  ADD KEY `nmr_vuelo` (`nmr_vuelo`),
  ADD KEY `id_tripulante` (`id_tripulante`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `avion`
--
ALTER TABLE `avion`
  ADD CONSTRAINT `avion_ibfk_1` FOREIGN KEY (`id_aerolinea`) REFERENCES `aerolinea` (`id`);

--
-- Filtros para la tabla `boleto`
--
ALTER TABLE `boleto`
  ADD CONSTRAINT `boleto_ibfk_1` FOREIGN KEY (`id_pasajero`) REFERENCES `pasajeros` (`pasaporte`),
  ADD CONSTRAINT `boleto_ibfk_2` FOREIGN KEY (`nmr_vuelo`) REFERENCES `vuelos` (`nmr_vuelo`);

--
-- Filtros para la tabla `llegada`
--
ALTER TABLE `llegada`
  ADD CONSTRAINT `llegada_ibfk_1` FOREIGN KEY (`id_aeropuerto`) REFERENCES `aeropuerto` (`id`);

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `salida_ibfk_1` FOREIGN KEY (`id_aeropuerto`) REFERENCES `aeropuerto` (`id`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`avion`) REFERENCES `avion` (`matricula`),
  ADD CONSTRAINT `vuelos_ibfk_2` FOREIGN KEY (`puerta`) REFERENCES `puerta_embarque` (`nmr_puerta`),
  ADD CONSTRAINT `vuelos_ibfk_3` FOREIGN KEY (`salida`) REFERENCES `salida` (`id`),
  ADD CONSTRAINT `vuelos_ibfk_4` FOREIGN KEY (`llegada`) REFERENCES `llegada` (`id`);

--
-- Filtros para la tabla `vuelo_tripulacion`
--
ALTER TABLE `vuelo_tripulacion`
  ADD CONSTRAINT `vuelo_tripulacion_ibfk_1` FOREIGN KEY (`nmr_vuelo`) REFERENCES `vuelos` (`nmr_vuelo`),
  ADD CONSTRAINT `vuelo_tripulacion_ibfk_2` FOREIGN KEY (`id_tripulante`) REFERENCES `tripulacion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
