-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2023 a las 01:36:44
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
-- Base de datos: `paratin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Parana', '2023-11-07 01:50:27', '2023-11-07 01:50:27'),
(2, 'Diamante', '2023-11-07 01:50:33', '2023-11-07 01:50:33'),
(3, 'Victoria', '2023-11-07 01:50:38', '2023-11-07 01:50:38'),
(4, 'Federacion', '2023-11-07 01:50:47', '2023-11-07 01:50:47'),
(5, 'Colon', '2023-11-08 00:31:17', '2023-11-08 00:31:17'),
(6, 'Concordia', '2023-11-08 00:31:25', '2023-11-08 00:31:25'),
(7, 'Federal', '2023-11-08 00:31:41', '2023-11-08 00:31:41'),
(8, 'Feliciano', '2023-11-08 00:31:51', '2023-11-08 00:31:51'),
(9, 'Gualeguay', '2023-11-08 00:32:04', '2023-11-08 00:32:04'),
(10, 'Gualeguaychu', '2023-11-08 00:32:19', '2023-11-08 00:32:19'),
(11, 'Islas del Ibicuy', '2023-11-08 00:33:18', '2023-11-08 00:33:18'),
(12, 'La Paz', '2023-11-08 00:33:45', '2023-11-08 00:33:45'),
(13, 'Nogoya', '2023-11-08 00:33:57', '2023-11-08 00:33:57'),
(14, 'San Salvador', '2023-11-08 00:34:31', '2023-11-08 00:34:31'),
(15, 'Tala', '2023-11-08 00:34:38', '2023-11-08 00:34:38'),
(16, 'Uruguay', '2023-11-08 00:34:58', '2023-11-08 00:34:58'),
(17, 'Villaguay', '2023-11-08 00:35:30', '2023-11-08 00:35:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
