-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 02:23:33
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
-- Estructura de tabla para la tabla `clubes`
--

CREATE TABLE `clubes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` char(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clubes`
--

INSERT INTO `clubes` (`id`, `codigo`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'AEC', 'Atlético Echagüe  Club', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(2, 'ANC', 'Atlético Neuquen Club (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(3, 'CND', 'Circulo Nautico Diamante', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(4, 'CABS', 'Club Atlético Barrio Sud', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(5, 'CAFC', 'Club Atlético Ferrocarril Concordia', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(6, 'CAIG', 'Club Atlético Independiente-Gchu', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(7, 'CAL', 'Club Atlético Litoral (Ma. Grande)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(8, 'CALa', 'Club Atlético Lanus (Conc. del Uruguay)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(9, 'CAM', 'Club Atlético Maciá (Maciá)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(10, 'CAOV', 'Club Atlético Oro Verde', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(11, 'CAP', 'Club Atlético Patronato (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(12, 'CAPa', 'Club Atlético Paracao (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(13, 'CAR', 'Club Atletico Rivadavia (C. del Uruguay)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(14, 'CAS', 'Club Atlético Sarmiento (Crespo)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(15, 'CASB', 'Club Atlético San Benito', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(16, 'CASR', 'Club Atlético Santa Rosa (Chajari)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(17, 'CASV', 'Club Atlético Sarmiento (Victoria)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(18, 'CASC', 'Club Atlético Sauce (Colón)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(19, 'CASM', 'Club Atlético Libertador San Martín (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(20, 'CAUC', 'Club Atlético Unión de Crespo', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(21, 'CAT', 'Club Atlético Talleres (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(22, 'CDCA', 'Club Deportivo y Cultural Aranguren', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(23, 'CDCH', 'Club Deportivo y Cultural Hernandez', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(24, 'CD25', 'Club Deportivo 25 de Mayo (Victoria)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(25, 'CFED', 'Club Ferrocarril del Este (Diamante)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(26, 'CPAZ', 'Club Presbítero Andrés Zaninetti (C. del Uruguay)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(27, 'CSDF', 'Club Social Deportivo Federación', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(28, 'CSJC', 'Club Social y Deportivo Juventud (Caseros)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(29, 'CSU', 'Club Sportivo Urquiza (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(30, 'CUAC', 'Club Unión Agrario Cerrito', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(31, 'CULP', 'Club Atletico Unión (La Paz)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(32, 'EMGR', 'Esc. Municipal Gral. Ramírez', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(33, 'EMGM', 'Esc. Municipal Gdor. Mansilla', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(34, 'EMRT', 'Esc. Municipal Rosario del Tala', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(35, 'EMSA', 'Esc. Municipal Santa Anita', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(36, 'FFBC', 'Ferrocarril Foot Ball Club (Nogoyá)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(37, 'FSOL', 'Fundación De. Sol (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(38, 'IFBC', 'Independiente Foot Ball Club (Hernandarias)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(39, 'JFBC', 'Juventud Foot Ball Club (Feliciano)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(40, 'OCU', 'Olimpia Club Urdinarrain', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(41, 'SFCC', 'Sarmiento Futbol Club Concordia', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(42, 'SUA', 'Sociedad Union Arabe (Paraná)', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(43, 'VAMA', 'Escuela Municipal Valle Maria', '2023-11-13 01:22:53', '2023-11-13 01:22:53'),
(44, 'VFBC', 'Viale Foot Ball Club', '2023-11-13 01:22:53', '2023-11-13 01:22:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
