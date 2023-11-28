-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 20:01:07
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
