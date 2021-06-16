-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2021 a las 16:35:40
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taskwer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210406121222', '2021-04-06 14:12:52', 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `creado_en` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id`, `usuario_id`, `descripcion`, `finalizada`, `creado_en`) VALUES
(3, 1, 'Tarea de prueba admin 2', 0, '2021-05-05 10:45:39'),
(5, 1, 'Tarea de prueba admin 4', 0, '2021-05-05 10:45:39'),
(6, 1, 'Tarea de prueba admin 5', 0, '2021-05-05 10:45:39'),
(7, 1, 'Tarea de prueba admin 6', 0, '2021-05-05 10:45:39'),
(8, 1, 'Tarea de prueba admin 7', 0, '2021-05-05 10:45:39'),
(9, 1, 'Tarea de prueba admin 8', 0, '2021-05-05 10:45:39'),
(10, 1, 'Tarea de prueba admin 9', 0, '2021-05-05 10:45:39'),
(11, 1, 'Tarea de prueba admin 10', 0, '2021-05-05 10:45:39'),
(12, 1, 'Tarea de prueba admin 11', 0, '2021-05-05 10:45:39'),
(13, 1, 'Tarea de prueba admin 12', 1, '2021-05-05 10:45:39'),
(14, 1, 'Tarea de prueba admin 13', 1, '2021-05-05 10:45:39'),
(15, 1, 'Tarea de prueba admin 14', 0, '2021-05-05 10:45:39'),
(16, 1, 'Tarea de prueba admin 15', 0, '2021-05-05 10:45:39'),
(17, 1, 'Tarea de prueba admin 16', 0, '2021-05-05 10:45:39'),
(18, 1, 'Tarea de prueba admin 17', 0, '2021-05-05 10:45:39'),
(19, 1, 'Tarea de prueba admin 18', 0, '2021-05-05 10:45:39'),
(20, 1, 'Tarea de prueba admin 19', 0, '2021-05-05 10:45:39'),
(21, 2, 'Tarea de prueba user 0', 0, '2021-05-05 10:45:39'),
(22, 2, 'Tarea de prueba user 1', 0, '2021-05-05 10:45:39'),
(23, 2, 'Tarea de prueba user 2', 0, '2021-05-05 10:45:39'),
(24, 2, 'Tarea de prueba user 3', 0, '2021-05-05 10:45:39'),
(25, 2, 'Tarea de prueba user 4', 0, '2021-05-05 10:45:39'),
(26, 2, 'Tarea de prueba user 5', 0, '2021-05-05 10:45:39'),
(27, 2, 'Tarea de prueba user 6', 0, '2021-05-05 10:45:39'),
(28, 2, 'Tarea de prueba user 7', 0, '2021-05-05 10:45:39'),
(29, 2, 'Tarea de prueba user 8', 0, '2021-05-05 10:45:39'),
(30, 2, 'Tarea de prueba user 9', 0, '2021-05-05 10:45:39'),
(31, 2, 'Tarea de prueba user 10', 0, '2021-05-05 10:45:39'),
(32, 2, 'Tarea de prueba user 11', 1, '2021-05-05 10:45:39'),
(33, 2, 'Tarea de prueba user 12', 1, '2021-05-05 10:45:39'),
(34, 2, 'Tarea de prueba user 13', 1, '2021-05-05 10:45:39'),
(35, 2, 'Tarea de prueba user 14', 1, '2021-05-05 10:45:39'),
(36, 2, 'Tarea de prueba user 15', 1, '2021-05-05 10:45:39'),
(37, 2, 'Tarea de prueba user 16', 1, '2021-05-05 10:45:39'),
(38, 2, 'Tarea de prueba user 17', 1, '2021-05-05 10:45:39'),
(39, 2, 'Tarea de prueba user 18', 1, '2021-05-05 10:45:39'),
(40, 2, 'Tarea de prueba user 19', 0, '2021-05-05 10:45:39'),
(41, 1, 'Tarea 1 hola', 1, '2021-05-05 12:37:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ultimo_acces` datetime DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `ultimo_acces`, `is_verified`) VALUES
(1, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$XwzhRs9UaWFOMl8JcB30bA$Uw2+50ekyrJlnIe/OowtwSpT43XgYJaLJhu1msttYCc', '2021-06-03 01:08:11', 0),
(2, 'user@user.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$S63krWF59inrbu1HA8qIAw$RVu6X/jC2hUL9e90+iX5so2ff1BOMb+EV5B3BPEaN8g', '2021-06-03 02:04:56', 0),
(3, 'mbgarcia390@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$RmpQQjFBWWsvb3lQdFM4WQ$oNN5/oCyDE+PpbmHr3jUiJqzM8kEkT6Qii+/8hu5qEI', '2021-06-03 02:02:27', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3CA05366DB38439A` (`usuario_id`) USING BTREE;

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3CA05366DB38439E` (`usuario_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `FK_3CA05366DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
