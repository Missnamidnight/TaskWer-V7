-- --------------------------------------------------------
-- Host:                         tvcpw8tpu4jvgnnq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com
-- Versión del servidor:         8.0.20 - Source distribution
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sntiuu8dhc86lamz
CREATE DATABASE IF NOT EXISTS `sntiuu8dhc86lamz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sntiuu8dhc86lamz`;

-- Volcando estructura para tabla sntiuu8dhc86lamz.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_compras_user` (`usuario_id`),
  CONSTRAINT `FK_compras_user` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sntiuu8dhc86lamz.compras: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` (`id`, `usuario_id`, `descripcion`) VALUES
	(34, 5, 'pan'),
	(35, 1, 'arroz'),
	(36, 1, 'zumo'),
	(38, 2, 'zanahoria'),
	(39, 2, 'patatas'),
	(40, 2, 'tomates'),
	(41, 2, 'tomate frito'),
	(42, 2, 'agua'),
	(43, 2, 'sal'),
	(44, 2, 'harina'),
	(45, 2, 'leche'),
	(46, 2, 'huevos'),
	(47, 2, 'arroz integral');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;

-- Volcando estructura para tabla sntiuu8dhc86lamz.doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla sntiuu8dhc86lamz.doctrine_migration_versions: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20210406121222', '2021-04-06 14:12:52', 43);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;

-- Volcando estructura para tabla sntiuu8dhc86lamz.tarea
CREATE TABLE IF NOT EXISTS `tarea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `creado_en` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3CA05366DB38439E` (`usuario_id`),
  CONSTRAINT `FK_3CA05366DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sntiuu8dhc86lamz.tarea: ~38 rows (aproximadamente)
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` (`id`, `usuario_id`, `descripcion`, `finalizada`, `creado_en`) VALUES
	(3, 1, 'Tarea de prueba admin 2', 1, '2021-05-05 10:45:39'),
	(5, 1, 'Tarea de prueba admin 4', 1, '2021-05-05 10:45:39'),
	(6, 1, 'Tarea de prueba admin 5', 1, '2021-05-05 10:45:39'),
	(7, 1, 'Tarea de prueba admin 6', 0, '2021-05-05 10:45:39'),
	(8, 1, 'Tarea de prueba admin 7', 0, '2021-05-05 10:45:39'),
	(9, 1, 'Tarea de prueba admin 8', 0, '2021-05-05 10:45:39'),
	(10, 1, 'Tarea de prueba admin 9', 0, '2021-05-05 10:45:39'),
	(11, 1, 'Tarea de prueba admin 10', 0, '2021-05-05 10:45:39'),
	(12, 1, 'Tarea de prueba admin 11', 0, '2021-05-05 10:45:39'),
	(13, 1, 'Tarea de prueba admin 12', 0, '2021-05-05 10:45:39'),
	(14, 1, 'Tarea de prueba admin 13', 0, '2021-05-05 10:45:39'),
	(15, 1, 'Tarea de prueba admin 14', 0, '2021-05-05 10:45:39'),
	(16, 1, 'Tarea de prueba admin 15', 0, '2021-05-05 10:45:39'),
	(17, 1, 'Tarea de prueba admin 16', 0, '2021-05-05 10:45:39'),
	(18, 1, 'Tarea de prueba admin 17', 0, '2021-05-05 10:45:39'),
	(19, 1, 'Tarea de prueba admin 18', 0, '2021-05-05 10:45:39'),
	(20, 1, 'Tarea de prueba admin 19', 0, '2021-05-05 10:45:39'),
	(22, 2, 'Tarea de prueba user 1', 1, '2021-05-05 10:45:39'),
	(23, 2, 'Tarea de prueba user 2', 1, '2021-05-05 10:45:39'),
	(24, 2, 'Tarea de prueba user 3', 1, '2021-05-05 10:45:39'),
	(25, 2, 'Tarea de prueba user 4', 0, '2021-05-05 10:45:39'),
	(26, 2, 'Tarea de prueba user 5', 0, '2021-05-05 10:45:39'),
	(27, 2, 'Tarea de prueba user 6', 0, '2021-05-05 10:45:39'),
	(28, 2, 'Tarea de prueba user 7', 0, '2021-05-05 10:45:39'),
	(29, 2, 'Tarea de prueba user 8', 0, '2021-05-05 10:45:39'),
	(30, 2, 'Tarea de prueba user 9', 0, '2021-05-05 10:45:39'),
	(31, 2, 'Tarea de prueba user 10', 0, '2021-05-05 10:45:39'),
	(32, 2, 'Tarea de prueba user 11', 0, '2021-05-05 10:45:39'),
	(33, 2, 'Tarea de prueba user 12', 0, '2021-05-05 10:45:39'),
	(34, 2, 'Tarea de prueba user 13', 0, '2021-05-05 10:45:39'),
	(35, 2, 'Tarea de prueba user 14', 0, '2021-05-05 10:45:39'),
	(36, 2, 'Tarea de prueba user 15', 0, '2021-05-05 10:45:39'),
	(37, 2, 'Tarea de prueba user 16', 0, '2021-05-05 10:45:39'),
	(38, 2, 'Tarea de prueba user 17', 0, '2021-05-05 10:45:39'),
	(39, 2, 'Tarea de prueba user 18', 0, '2021-05-05 10:45:39'),
	(40, 2, 'Tarea de prueba user 19', 0, '2021-05-05 10:45:39'),
	(47, 5, 'Tarea prueba', 0, '2021-06-03 18:27:48'),
	(48, 5, 'Tarea 2', 0, '2021-06-04 09:23:02');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;

-- Volcando estructura para tabla sntiuu8dhc86lamz.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ultimo_acces` datetime DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sntiuu8dhc86lamz.user: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `roles`, `password`, `ultimo_acces`, `is_verified`) VALUES
	(1, 'admin@admin.com', '["ROLE_ADMIN"]', '$argon2id$v=19$m=65536,t=4,p=1$XwzhRs9UaWFOMl8JcB30bA$Uw2+50ekyrJlnIe/OowtwSpT43XgYJaLJhu1msttYCc', '2021-06-06 22:42:17', 0),
	(2, 'user@user.com', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$S63krWF59inrbu1HA8qIAw$RVu6X/jC2hUL9e90+iX5so2ff1BOMb+EV5B3BPEaN8g', '2021-06-06 22:48:18', 0),
	(5, 'mbgarcia390@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SEZLeE5BaVgvdHFzcTh4QQ$owujRLOl1xSqER6ybMsGxKog93b0omAqLZFudqh02lQ', '2021-06-06 22:16:41', 1),
	(6, 'blancagarciaherreros@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aDFjL3M5T3BoenpjTWtZWg$V0jRNDbTBcj6rv8zHynDJh7afDMrvkb9/W7+/R1kobs', '2021-06-02 23:04:04', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
