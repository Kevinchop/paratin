-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2023 a las 12:41:34
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `acronimo` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `nombre`, `acronimo`, `created_at`, `updated_at`) VALUES
(1, 'Activo', 'A', '2023-11-07 04:19:26', '2023-11-07 04:19:26'),
(2, 'Vencido', 'V', '2023-11-07 04:20:47', '2023-11-07 04:20:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departamento_id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `departamento_id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 5, 'Arroyo Barú', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(2, 5, 'Colón', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(3, 5, 'Colonia Hugues', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(4, 5, 'Hambis', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(5, 5, 'Hocker', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(6, 5, 'La Clarita', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(7, 5, 'Pueblo Cazes', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(8, 5, 'Pueblo Liebig', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(9, 5, 'San José', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(10, 5, 'El Brillante', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(11, 5, 'El Colorado', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(12, 5, 'San José', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(13, 5, 'Ubajay', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(14, 5, 'Villa  Elisa', '2023-11-13 14:23:54', '2023-11-13 14:23:54'),
(15, 6, 'Calabacilla', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(16, 6, 'Clodomiro Ledesma ', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(17, 6, 'Colonia Ayuí', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(18, 6, 'Colonia General Roca', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(19, 6, 'Colonia Yeruá', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(20, 6, 'Concordia', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(21, 6, 'Benito Legerén', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(22, 6, 'Concordia', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(23, 6, 'Las Tejas', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(24, 6, 'Villa Adela', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(25, 6, 'Villa Zorraquín', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(26, 6, 'El Redomón', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(27, 6, 'Estación Yeruá', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(28, 6, 'La Criolla', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(29, 6, 'Los Charrúas', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(30, 6, 'Nueva Escocia', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(31, 6, 'Osvaldo Magnasco', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(32, 6, 'Pedernal', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(33, 6, 'Puerto Yeruá', '2023-11-13 14:24:15', '2023-11-13 14:24:15'),
(34, 2, 'Aldea Brasilera', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(35, 2, 'Aldea Protestante', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(36, 2, 'Aldea Salto', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(37, 2, 'Aldea San Francisco', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(38, 2, 'Aldea Spatzenkutter', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(39, 2, 'Aldea Valle María', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(40, 2, 'Colonia Ensayo', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(41, 2, 'Diamante', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(42, 2, 'Diamante', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(43, 2, 'Strobel', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(44, 2, 'Estación Camps', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(45, 2, 'General Alvear', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(46, 2, 'General Racedo', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(47, 2, 'General Ramírez', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(48, 2, 'Paraje La Virgen', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(49, 2, 'Puerto Las Cuevas', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(50, 2, 'Villa Libertador San Martín', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(51, 2, 'Estación Puíggari', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(52, 2, 'Villa Libertador San Martín', '2023-11-13 14:24:39', '2023-11-13 14:24:39'),
(53, 4, 'Chajarí', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(54, 4, 'Colonia Alemana', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(55, 4, 'Colonia Ensanche Sauce', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(56, 4, 'Colonia La Argentina', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(57, 4, 'Colonia Peña', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(58, 4, 'Colonia Santa María', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(59, 4, 'Federación', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(60, 4, 'Los Conquistadores', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(61, 4, 'San Jaime de la Frontera', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(62, 4, 'San Pedro', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(63, 4, 'Santa Ana', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(64, 4, 'Villa del Rosario', '2023-11-13 14:24:56', '2023-11-13 14:24:56'),
(65, 7, 'Conscripto Bernardi', '2023-11-13 14:25:18', '2023-11-13 14:25:18'),
(66, 7, 'El Cimarrón', '2023-11-13 14:25:18', '2023-11-13 14:25:18'),
(67, 7, 'Federal', '2023-11-13 14:25:18', '2023-11-13 14:25:18'),
(68, 7, 'Nueva Viscaya', '2023-11-13 14:25:18', '2023-11-13 14:25:18'),
(69, 7, 'Sauce de Luna', '2023-11-13 14:25:18', '2023-11-13 14:25:18'),
(70, 8, 'San José de Feliciano', '2023-11-13 14:25:38', '2023-11-13 14:25:38'),
(71, 8, 'San Víctor', '2023-11-13 14:25:38', '2023-11-13 14:25:38'),
(72, 9, 'Aldea Asunción', '2023-11-13 14:26:02', '2023-11-13 14:26:02'),
(73, 9, 'Estación Lazo', '2023-11-13 14:26:02', '2023-11-13 14:26:02'),
(74, 9, 'General Galarza', '2023-11-13 14:26:02', '2023-11-13 14:26:02'),
(75, 9, 'Gualeguay', '2023-11-13 14:26:02', '2023-11-13 14:26:02'),
(76, 9, 'Puerto Ruiz', '2023-11-13 14:26:02', '2023-11-13 14:26:02'),
(77, 10, 'Aldea San Antonio', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(78, 10, 'Aldea San Juan', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(79, 10, 'Enrique Carbó', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(80, 10, 'Faustino M. Parera ', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(81, 10, 'General Almada', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(82, 10, 'Gilbert', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(83, 10, 'Gualeguaychú', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(84, 10, 'Irazusta', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(85, 10, 'Larroque', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(86, 10, 'Pueblo General Belgrano', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(87, 10, 'Urdinarrain', '2023-11-13 14:26:36', '2023-11-13 14:26:36'),
(88, 11, 'Arroyo Martínez', '2023-11-13 14:26:58', '2023-11-13 14:26:58'),
(89, 11, 'Ceibas', '2023-11-13 14:26:58', '2023-11-13 14:26:58'),
(90, 11, 'Ibicuy', '2023-11-13 14:26:58', '2023-11-13 14:26:58'),
(91, 11, 'Médanos', '2023-11-13 14:26:58', '2023-11-13 14:26:58'),
(92, 11, 'Ñancay', '2023-11-13 14:26:58', '2023-11-13 14:26:58'),
(93, 11, 'Villa Paranacito', '2023-11-13 14:26:58', '2023-11-13 14:26:58'),
(94, 12, 'Bovril', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(95, 12, 'Colonia Avigdor', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(96, 12, 'El Solar', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(97, 12, 'La Paz', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(98, 12, 'Piedras Blancas', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(99, 12, 'Pueblo Arrúa', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(100, 12, 'San Gustavo', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(101, 12, 'Santa Elena', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(102, 12, 'Sir Leonard', '2023-11-13 14:27:24', '2023-11-13 14:27:24'),
(103, 13, 'Aranguren', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(104, 13, 'Betbeder', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(105, 13, 'Don Cristóbal', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(106, 13, 'Febré', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(107, 13, 'Hernández', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(108, 13, 'Lucas González', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(109, 13, 'Nogoyá', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(110, 13, 'XX de Setiembre', '2023-11-13 18:57:17', '2023-11-13 18:57:17'),
(111, 1, 'Aldea María Luisa', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(112, 1, 'Aldea San Rafael', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(113, 1, 'Aldea Santa María', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(114, 1, 'Aldea Santa Rosa', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(115, 1, 'Cerrito', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(116, 1, 'Pueblo Moreno', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(117, 1, 'Colonia Avellaneda', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(118, 1, 'Crespo', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(119, 1, 'El Palenque', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(120, 1, 'El Pingo', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(121, 1, 'Hasenkamp', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(122, 1, 'Hernandarias', '2023-11-13 18:57:58', '2023-11-13 18:57:58'),
(123, 1, 'La Picada', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(124, 1, 'Las Tunas ', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(125, 1, 'María Grande', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(126, 1, 'Oro Verde', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(127, 1, 'Paraná', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(128, 1, 'Pueblo Bellocq (Est. Las Garzas) ', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(129, 1, 'Pueblo Brugo', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(130, 1, 'Pueblo General San Martín', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(131, 1, 'San Benito', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(132, 1, 'Sauce Montrull', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(133, 1, 'Sauce Pinto ', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(134, 1, 'Seguí', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(135, 1, 'Sosa', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(136, 1, 'Tabossi', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(137, 1, 'Tezanos Pinto', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(138, 1, 'Viale', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(139, 1, 'Villa Fontana', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(140, 1, 'Villa Gdor. Luis F. Etchevehere', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(141, 1, 'Villa Urquiza', '2023-11-13 18:57:59', '2023-11-13 18:57:59'),
(142, 14, 'General Campos', '2023-11-13 18:58:30', '2023-11-13 18:58:30'),
(143, 14, 'San Salvador', '2023-11-13 18:58:30', '2023-11-13 18:58:30'),
(144, 15, 'Altamirano Sur ', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(145, 15, 'Durazno', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(146, 15, 'Estación Arroyo Clé', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(147, 15, 'Gobernador Echagüe', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(148, 15, 'Gobernador Mansilla', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(149, 15, 'Gobernador Solá', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(150, 15, 'Guardamonte', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(151, 15, 'Las Guachas', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(152, 15, 'Maciá', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(153, 15, 'Rosario del Tala', '2023-11-13 18:59:02', '2023-11-13 18:59:02'),
(154, 16, 'Basavilbaso', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(155, 16, 'Caseros', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(156, 16, 'Colonia Elía', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(157, 16, 'Concepción del Uruguay', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(158, 16, 'Estancia San Pedro', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(159, 16, 'Herrera', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(160, 16, 'Las Moscas', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(161, 16, 'Líbaros', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(162, 16, '1º de Mayo', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(163, 16, 'Pronunciamiento', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(164, 16, 'Rocamora', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(165, 16, 'Santa Anita', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(166, 16, 'Villa Mantero', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(167, 16, 'Villa San Justo', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(168, 16, 'Villa San Marcial (Est. Gobernador Urquiza)', '2023-11-13 18:59:29', '2023-11-13 18:59:29'),
(169, 3, 'Antelo', '2023-11-13 19:00:13', '2023-11-13 19:00:13'),
(170, 3, 'Charigüé', '2023-11-13 19:00:13', '2023-11-13 19:00:13'),
(171, 3, 'Laguna del Pescado', '2023-11-13 19:00:13', '2023-11-13 19:00:13'),
(172, 3, 'Molino Doll ', '2023-11-13 19:00:13', '2023-11-13 19:00:13'),
(173, 3, 'Rincón de Nogoyá', '2023-11-13 19:00:13', '2023-11-13 19:00:13'),
(174, 3, 'Victoria', '2023-11-13 19:00:13', '2023-11-13 19:00:13'),
(175, 17, 'Estación Raíces', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(176, 17, 'Ingeniero Miguel Sajaroff', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(177, 17, 'Jubileo', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(178, 17, 'Mojones Norte', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(179, 17, 'Paso de la Laguna', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(180, 17, 'Villa Clara', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(181, 17, 'Villa Domínguez', '2023-11-13 19:00:35', '2023-11-13 19:00:35'),
(182, 17, 'Villaguay', '2023-11-13 19:00:35', '2023-11-13 19:00:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(54, '2019_08_19_000000_create_failed_jobs_table', 1),
(55, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(56, '2023_10_20_232023_create_sessions_table', 1),
(57, '2023_10_21_162515_create_personas_table', 1),
(58, '2023_10_21_220902_create_tipos_table', 1),
(59, '2023_10_22_224358_create_departamentos_table', 1),
(60, '2023_11_04_142217_create_sexos_table', 1),
(61, '2023_11_04_143120_create_clubes_table', 1),
(62, '2023_11_06_144049_create_localidades_table', 1),
(63, '2023_11_06_154048_create_estados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni` varchar(11) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo_id` bigint(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `departamento_id` bigint(20) DEFAULT NULL,
  `localidad_id` bigint(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `clube_id` bigint(20) DEFAULT NULL,
  `matricula_nac` varchar(30) DEFAULT NULL,
  `matricula_prov` varchar(30) DEFAULT NULL,
  `anio` bigint(20) NOT NULL,
  `estado_id` bigint(20) DEFAULT NULL,
  `tipo_id` bigint(20) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('a2wtHzPQThrcdPK7WWhiLrNZQMh38QaAweMpEIwV', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWkc3UTRkMTZ0YUtxNnhmcWJ6YzZlMEtabEFpT2VzS2x5eFN6cmxLOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9wYXJhdGluLmxvY2FsL2FkaWNpb25hbGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRxTVg0SWlrb09zcWtjVGFERkpObU5laHFyTERaL3pyTW5USHMzbDN4bmloUGFWV24zaDFKQyI7fQ==', 1699885644),
('RdgEInofW0obeE4C5E9xpinmC0j4YI6N5bXGm2of', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZGliMk1YUDVtZG03WGRQdUFYWHZQdVlMbHVYZVB4T3lTNk5KQmtOTCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vcGFyYXRpbi5sb2NhbC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHFNWDRJaWtvT3Nxa2NUYURGSk5tTmVocXJMRFovenJNblRIczNsM3huaWhQYVZXbjNoMUpDIjt9', 1699902041),
('SVCGgJF5y8Y5c7hDWGV1Nidd4Mdmkq3g03d04PQD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia1hEemVwaEF0S25aZVZ5bEJZZGU2WXBmMjdnbTJpaTRlSjhsVVlPcCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovL3BhcmF0aW4ubG9jYWwvZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9wYXJhdGluLmxvY2FsL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1699977749),
('T0kyl5jhT5SgsmPytAmlFWQQdNTqfWpmIfyHUMnO', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoia2lWdGJjVUVGUWhPQ2dET3NERFhzMXRBMXVFdjhPc2JjZFk5TUltWiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vcGFyYXRpbi5sb2NhbC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHFNWDRJaWtvT3Nxa2NUYURGSk5tTmVocXJMRFovenJNblRIczNsM3huaWhQYVZXbjNoMUpDIjt9', 1699839842);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE `sexos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `acronimo` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sexos`
--

INSERT INTO `sexos` (`id`, `nombre`, `acronimo`, `created_at`, `updated_at`) VALUES
(1, 'Masculino', 'M', '2023-11-07 03:54:06', '2023-11-07 03:54:06'),
(2, 'Femenino', 'F', '2023-11-07 03:54:12', '2023-11-07 03:54:12'),
(3, 'Otro', 'O', '2023-11-07 03:54:18', '2023-11-07 03:54:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` char(1) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(40) NOT NULL DEFAULT 'ente_generico.svg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `codigo`, `nombre`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'D', 'Deportista', 'ente_generico.svg', '2023-11-07 03:17:24', '2023-11-07 03:17:24'),
(2, 'E', 'Entrenador', 'ente_generico.svg', '2023-11-07 03:56:29', '2023-11-07 03:56:29'),
(3, 'L', 'Delegado', 'ente_generico.svg', '2023-11-07 03:56:42', '2023-11-07 03:56:42'),
(4, 'J', 'Juez', 'ente_generico.svg', '2023-11-07 03:59:15', '2023-11-07 03:59:15'),
(5, 'A', 'Dirigente', 'ente_generico.svg', '2023-11-07 03:59:58', '2023-11-07 03:59:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Exequiel', 'exequiel.polito@accusys.com.ar', NULL, '$2y$10$qMX4IikoOsqkcTaDFJNmNehqrLDZ/zrMnTHs3l3xnihPaVWn3h1JC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 01:49:51', '2023-11-07 01:49:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
