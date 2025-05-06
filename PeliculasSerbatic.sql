-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2025 a las 00:50:48
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
-- Base de datos: `204aplicacionlaravel`
--
CREATE DATABASE IF NOT EXISTS `204aplicacionlaravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `204aplicacionlaravel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '2025_04_15_230943_create_tareas_table', 1),
(3, '2025_04_18_131632_create_cache_table', 1);

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
('9mJqsIc76QTvDNkEB41ndeBWkuPkqQpZSZoIJXJi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmFUcklzZDNFNlJBV1kzZE1tVGdsS29qUE5jUDdVRzVFZDNJbmNUcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1745159142),
('DZlIdQgas1p4vMxPJun4hyLXVOW41VSpIcbnMvWj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3FqUFU2OFcxcWNubTYzdm9HTXpDRzRSRDltRVhyZTdVVnp6elIyaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1745159514),
('kVZZfVIu9eSIr62DBf1mss8T5XB73zpKDwNjALpQ', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidFRtekZyWFRWOWFrWkpsMlFPUkVVRWxFRDVXd0h0OW5mdHNVZUxpbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE0OiJ1c3VhcmlvRW5DdXJzbyI7TjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1745159242);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `completada` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'alexasensio04@gmail.com', '$2y$12$Z/4rplkI12NzVRy0I6LzJOjL4iTF/AKXZAES4IiYgEJk2DNz2AtSS', NULL, '2025-04-20 12:09:16', '2025-04-20 12:09:16'),
(4, 'a', 'a@gmail.com', '$2y$12$Nieekdba4zHl2GQ0KJpd5Ok.usPRN4nH64BBRq0IRZXYt16OQ.HAu', NULL, '2025-04-20 12:31:49', '2025-04-20 12:31:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tareas_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `curso`
--
CREATE DATABASE IF NOT EXISTS `curso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `curso`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellidos`, `telefono`) VALUES
(1, 'Pepe', 'Rubio Crespo', '678453412'),
(2, 'Pepe', 'Rubio Crespo', '678453412'),
(3, 'Pepe', 'Rubio Crespo', '678453412'),
(4, 'Pepe', 'Rubio Crespo', '678453412');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `PAIS` varchar(30) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `CURSO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID`, `NOMBRE`, `PAIS`, `FECHA_NACIMIENTO`, `SEXO`, `CURSO`) VALUES
(0, 'fasdf', 'sadfas', '2019-10-14', 'H', 'asdf'),
(1, 'Pepito Gonzalez', 'Rumania', '0000-00-00', 'H', 'Bases de datos'),
(2, 'Laura Sanz', 'Mexico', '0000-00-00', 'M', 'Contabilidad'),
(12, 'fasdf', 'sadfas', '2019-10-14', 'H', 'asdf'),
(123, 'Miriam Ruiz', 'Cuba', '0000-00-00', 'M', 'Contabilidad'),
(129, 'Cristian Lopez', 'España', '0000-00-00', 'H', 'Economia'),
(213, 'Luis Perez', 'Argentina', '0000-00-00', 'H', 'Cocina'),
(6235, 'Simone Simons', 'Holanda', '0000-00-00', 'M', 'Ballet'),
(10012, 'Mustafa Kemal', 'Turquia', '0000-00-00', 'H', 'Ballet'),
(12321, 'Susana Perez', 'España', '0000-00-00', 'M', 'Java'),
(12322, 'Fernando Torres', 'España', '0000-00-00', 'H', 'Java');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articuloprueba`
--

CREATE TABLE `articuloprueba` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precion` double NOT NULL,
  `rutaImagen` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `telefono`) VALUES
(1, 'NombreCliente1', '1063780581'),
(2, 'NombreCliente2', '993730224'),
(3, 'NombreCliente3', '1002919202'),
(4, 'NombreCliente4', '595007928'),
(5, 'NombreCliente5', '731557108'),
(6, 'NombreCliente6', '784266740'),
(7, 'NombreCliente7', '582567029'),
(8, 'NombreCliente8', '1040269988'),
(9, 'NombreCliente9', '691110820'),
(10, 'NombreCliente10', '968186523'),
(11, 'j', '6'),
(14, 'j', '6'),
(15, 'j', '6'),
(16, 'j', '6'),
(17, 'j', '6'),
(18, 'j', '6'),
(19, 'j', '6'),
(20, 'j', '6'),
(21, 'Javier', '4'),
(22, 'j', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombre`, `apellidos`, `telefono`) VALUES
(1, 'c1', 'am', '1'),
(2, 'c2', 'am', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idVenta` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `total` bigint(20) DEFAULT NULL,
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idVenta`, `idCliente`, `total`, `id_venta`, `id_cliente`) VALUES
(0, 1, 4, 0, 0),
(2, 1, 0, 0, 0),
(3, 1, 0, 0, 0),
(4, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplo1`
--

CREATE TABLE `ejemplo1` (
  `id` int(11) NOT NULL,
  `valor1` varchar(255) DEFAULT NULL,
  `valor2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `ejemplo1`
--

INSERT INTO `ejemplo1` (`id`, `valor1`, `valor2`) VALUES
(1, 'Valor1-1', 'Valor2-1'),
(2, 'Valor1-2', 'Valor2-2'),
(3, 'Valor1-3', 'Valor2-3'),
(4, 'Valor1-4', 'Valor2-4'),
(5, 'Valor1-5', 'Valor2-5'),
(6, 'Valor1-6', 'Valor2-6'),
(7, 'Valor1-7', 'Valor2-7'),
(8, 'Valor1-8', 'Valor2-8'),
(9, 'Valor1-9', 'Valor2-9'),
(10, 'Valor1-10', 'Valor2-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplo2`
--

CREATE TABLE `ejemplo2` (
  `id` int(11) NOT NULL,
  `valor1` varchar(255) DEFAULT NULL,
  `valor2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `ejemplo2`
--

INSERT INTO `ejemplo2` (`id`, `valor1`, `valor2`) VALUES
(1, 'Valor1-1', 'Valor2-1'),
(2, 'Valor1-2', 'Valor2-2'),
(3, 'Valor1-3', 'Valor2-3'),
(4, 'Valor1-4', 'Valor2-4'),
(5, 'Valor1-5', 'Valor2-5'),
(6, 'Valor1-6', 'Valor2-6'),
(7, 'Valor1-7', 'Valor2-7'),
(8, 'Valor1-8', 'Valor2-8'),
(9, 'Valor1-9', 'Valor2-9'),
(10, 'Valor1-10', 'Valor2-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `granjeros`
--

CREATE TABLE `granjeros` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `granjeros`
--

INSERT INTO `granjeros` (`id`, `nombre`, `edad`) VALUES
(1, 'PepeGranjeros', 21),
(2, 'JoséGranjeros', 45),
(1, 'PepeGranjeros', 21),
(2, 'JoséGranjeros', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `idArticulo` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `precion` double NOT NULL,
  `rutaImagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre`, `descripcion`, `precio`, `stock`, `idArticulo`, `id`, `precion`, `rutaImagen`) VALUES
(1, 'Pera', 'Fruta: pera', 0.5, 100, 0, 0, 0, NULL),
(2, 'Manzana', 'Fruta: manzana', 0.3, 150, 0, 0, 0, NULL),
(3, 'Plátano', 'Fruta: plátano', 0.2, 120, 0, 0, 0, NULL),
(4, 'Uva', 'Fruta: uva', 0.1, 200, 0, 0, 0, NULL),
(5, 'Fresa', 'Fruta: fresa', 0.4, 80, 0, 0, 0, NULL),
(6, 'Sandía', 'Fruta: sandía', 1.5, 50, 0, 0, 0, NULL),
(7, 'Naranja', 'Fruta: naranja', 0.6, 120, 0, 0, 0, NULL),
(8, 'Melón', 'Fruta: melón', 1, 90, 0, 0, 0, NULL),
(9, 'Kiwi', 'Fruta: kiwi', 0.7, 70, 0, 0, 0, NULL),
(10, 'Cereza', 'Fruta: cereza', 0.2, 130, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla1`
--

CREATE TABLE `tabla1` (
  `clave_tabla_1` int(11) NOT NULL,
  `campo1_tabla_1` varchar(50) DEFAULT NULL,
  `campo2_tabla1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tabla1`
--

INSERT INTO `tabla1` (`clave_tabla_1`, `campo1_tabla_1`, `campo2_tabla1`) VALUES
(1, 'valor1', 0),
(2, 'valor2', 0),
(3, 'valor3', 0),
(4, 'valor4', 0),
(5, 'valor5', 0),
(6, 'valor6', 0),
(7, 'valor7', 0),
(8, 'valor8', 0),
(9, 'valor9', 0),
(10, 'valor1', 0),
(11, 'valor2', 0),
(12, 'valor3', 0),
(13, 'valor4', 0),
(14, 'valor5', 0),
(15, 'valor6', 0),
(16, 'valor7', 0),
(17, 'valor8', 0),
(18, 'valor9', 0),
(19, 'valor1', 0),
(20, 'valor2', 0),
(21, 'valor3', 0),
(22, 'valor4', 0),
(23, 'valor5', 0),
(24, 'valor6', 0),
(25, 'valor7', 0),
(26, 'valor8', 0),
(27, 'valor9', 0),
(28, 'valor1', 0),
(29, 'valor2', 0),
(30, 'valor3', 0),
(31, 'valor4', 0),
(32, 'valor5', 0),
(33, 'valor6', 0),
(34, 'valor7', 0),
(35, 'valor8', 0),
(36, 'valor9', 0),
(37, 'valor1', 0),
(38, 'valor2', 0),
(39, 'valor3', 0),
(40, 'valor4', 0),
(41, 'valor5', 0),
(42, 'valor6', 0),
(43, 'valor7', 0),
(44, 'valor8', 0),
(45, 'valor9', 0),
(46, 'valor1', 0),
(47, 'valor2', 0),
(48, 'valor3', 0),
(49, 'valor4', 0),
(50, 'valor5', 0),
(51, 'valor6', 0),
(52, 'valor7', 0),
(53, 'valor8', 0),
(54, 'valor9', 0),
(200, 'asdfasdf', 323),
(205, 'qwerqwer', 55324),
(206, 'xcvxv', 221556),
(208, 'qwerqwer', 55324),
(209, 'xcvxv', 221556),
(211, 'qwerqwer', 55324),
(212, 'xcvxv', 221556),
(214, 'qwerqwer', 55324),
(215, 'xcvxv', 221556),
(217, 'qwerqwer', 55324),
(218, 'xcvxv', 221556),
(220, 'qwerqwer', 55324),
(221, 'xcvxv', 221556),
(223, 'qwerqwer', 55324),
(224, 'xcvxv', 221556),
(227, 'qwerqwer', 55324),
(228, 'xcvxv', 221556),
(230, 'qwerqwer', 55324),
(231, 'xcvxv', 221556),
(233, 'qwerqwer', 55324),
(234, 'xcvxv', 221556);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla2`
--

CREATE TABLE `tabla2` (
  `clave_tabla_2` int(11) NOT NULL,
  `campo1_tabla_2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tabla2`
--

INSERT INTO `tabla2` (`clave_tabla_2`, `campo1_tabla_2`) VALUES
(1, '2019-10-06'),
(2, '2019-10-06'),
(3, '2019-10-06'),
(4, '2019-10-06'),
(5, '2019-10-06'),
(6, '2019-10-06'),
(7, '2019-10-06'),
(8, '2019-10-06'),
(9, '2019-10-06'),
(10, '2019-10-06'),
(11, '2019-10-06'),
(12, '2019-10-06'),
(13, '2019-10-06'),
(14, '2019-10-06'),
(15, '2019-10-06'),
(16, '2019-10-06'),
(17, '2019-10-06'),
(18, '2019-10-06'),
(19, '2019-10-06'),
(20, '2019-10-06'),
(21, '2019-10-06'),
(22, '2019-10-06'),
(23, '2019-10-06'),
(24, '2019-10-06'),
(25, '2019-10-06'),
(26, '2019-10-06'),
(27, '2019-10-06'),
(28, '2019-10-06'),
(29, '2019-10-06'),
(30, '2019-10-06'),
(31, '2019-10-06'),
(32, '2019-10-06'),
(33, '2019-10-06'),
(34, '2019-10-06'),
(35, '2019-10-06'),
(36, '2019-10-06'),
(37, '2019-10-06'),
(38, '2019-10-06'),
(39, '2019-10-06'),
(40, '2019-10-06'),
(41, '2019-10-06'),
(42, '2019-10-06'),
(43, '2019-10-06'),
(44, '2019-10-06'),
(45, '2019-10-06'),
(46, '2019-10-06'),
(47, '2019-10-06'),
(48, '2019-10-06'),
(49, '2019-10-06'),
(50, '2019-10-06'),
(51, '2019-10-06'),
(52, '2019-10-06'),
(53, '2019-10-06'),
(54, '2019-10-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla3`
--

CREATE TABLE `tabla3` (
  `clave_tabla_3` int(11) NOT NULL,
  `campo1_tabla_3` float DEFAULT NULL,
  `clave_tabla_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tabla3`
--

INSERT INTO `tabla3` (`clave_tabla_3`, `campo1_tabla_3`, `clave_tabla_2`) VALUES
(1, 10, 5),
(2, 20, 5),
(3, 30, 4),
(4, 40, 1),
(5, 50, 9),
(6, 60, 5),
(7, 70, 6),
(8, 80, 7),
(9, 90, 1),
(10, 10, 5),
(11, 20, 5),
(12, 30, 4),
(13, 40, 1),
(14, 50, 9),
(15, 60, 5),
(16, 70, 6),
(17, 80, 7),
(18, 90, 1),
(19, 10, 5),
(20, 20, 5),
(21, 30, 4),
(22, 40, 1),
(23, 50, 9),
(24, 60, 5),
(25, 70, 6),
(26, 80, 7),
(27, 90, 1),
(28, 10, 5),
(29, 20, 5),
(30, 30, 4),
(31, 40, 1),
(32, 50, 9),
(33, 60, 5),
(34, 70, 6),
(35, 80, 7),
(36, 90, 1),
(37, 10, 5),
(38, 20, 5),
(39, 30, 4),
(40, 40, 1),
(41, 50, 9),
(42, 60, 5),
(43, 70, 6),
(44, 80, 7),
(45, 90, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioprueba`
--

CREATE TABLE `usuarioprueba` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarioprueba`
--

INSERT INTO `usuarioprueba` (`id`, `user`, `pass`) VALUES
(1, 'Alex', 'paso'),
(4, 'eeeeee', 'cddd'),
(5, 'barbarie', 'sssss'),
(6, 'popo', 'popo'),
(7, 'pepiiiii', 'pep');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `nombre`, `edad`) VALUES
(1, 'PepeVendedores', 21),
(2, 'JoséVendedores', 45),
(1, 'PepeVendedores', 21),
(2, 'JoséVendedores', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idArticulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `articuloprueba`
--
ALTER TABLE `articuloprueba`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idVenta`,`idCliente`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `ejemplo1`
--
ALTER TABLE `ejemplo1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ejemplo2`
--
ALTER TABLE `ejemplo2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `tabla1`
--
ALTER TABLE `tabla1`
  ADD PRIMARY KEY (`clave_tabla_1`);

--
-- Indices de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  ADD PRIMARY KEY (`clave_tabla_2`);

--
-- Indices de la tabla `tabla3`
--
ALTER TABLE `tabla3`
  ADD PRIMARY KEY (`clave_tabla_3`),
  ADD KEY `clave_tabla_2` (`clave_tabla_2`);

--
-- Indices de la tabla `usuarioprueba`
--
ALTER TABLE `usuarioprueba`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `articuloprueba`
--
ALTER TABLE `articuloprueba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ejemplo1`
--
ALTER TABLE `ejemplo1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ejemplo2`
--
ALTER TABLE `ejemplo2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tabla1`
--
ALTER TABLE `tabla1`
  MODIFY `clave_tabla_1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  MODIFY `clave_tabla_2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `tabla3`
--
ALTER TABLE `tabla3`
  MODIFY `clave_tabla_3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `usuarioprueba`
--
ALTER TABLE `usuarioprueba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `usuarioprueba` (`id`);

--
-- Filtros para la tabla `tabla3`
--
ALTER TABLE `tabla3`
  ADD CONSTRAINT `tabla3_ibfk_1` FOREIGN KEY (`clave_tabla_2`) REFERENCES `tabla2` (`clave_tabla_2`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `db204dwes`
--
CREATE DATABASE IF NOT EXISTS `db204dwes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db204dwes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t01_usuario`
--

CREATE TABLE `t01_usuario` (
  `T01_CodUsuario` varchar(40) NOT NULL,
  `T01_Password` varchar(100) DEFAULT NULL,
  `T01_DescUsuario` varchar(300) DEFAULT NULL,
  `T01_NumConexiones` int(11) DEFAULT NULL,
  `T01_FechaHoraUltimaConexion` datetime DEFAULT NULL,
  `T01_Perfil` varchar(100) DEFAULT NULL,
  `T01_ImagenUsuario` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t01_usuario`
--

INSERT INTO `t01_usuario` (`T01_CodUsuario`, `T01_Password`, `T01_DescUsuario`, `T01_NumConexiones`, `T01_FechaHoraUltimaConexion`, `T01_Perfil`, `T01_ImagenUsuario`) VALUES
('admin', 'd6ed7eb369f21acd3d3d66a96de946cc2b514e4279827bf8a7ca9d7005514b27', 'Admin Admin Admin', 0, NULL, 'perfil', NULL),
('alex', '825e42135272fc44ca59e7bc969aabd49b88fafe3d60a4f774858b8719bd894c', 'Alex Asensio Sanchez', 1, '2025-02-11 18:30:14', 'perfil', NULL),
('amor', 'a8cce9d7335dddb7c1d076d02b698bd23ffa40099eed7d9263f0a91bd752225a', 'Amor Rodriguez Navarro', 0, NULL, 'perfil', NULL),
('antonio', 'b6ac37c1936df57d5a0c2eee5f6296df434ecef42b2ece8f23f0b361cc3eb1a9', 'Antonio Jañez Veleda', 0, NULL, 'perfil', NULL),
('gisela', '7653407f307ecf1621e47f840d56baf128268e41c93cbf258eddf52f9fc082fe', 'Gisela Folgueral Lindoso', 0, NULL, 'perfil', NULL),
('heraclio', '3f9c1511a87c9eec0d9151ac06d63053adbc269e569da272e72d8e1bfa28a6e3', 'Heraclio Borbujo Moran', 0, NULL, 'perfil', NULL),
('ivan', '25aa3f08c4b66c2a5641c39732b646afee91c9c29a076057196ff35075e7d0bf', 'Ivan Campos de Cela', 0, NULL, 'perfil', NULL),
('jesus', '326f4437726e404757b7e4aaf2d29e282e1be51efda023f03dbec3684cbd3c02', 'Jesus Ferreras Gonzalez', 0, NULL, 'perfil', NULL),
('luis', 'c0b7382a8c4432820b1cfa17a92110ee438e62f759e686c6d1ec1239f24cc52a', 'Luis Ferreras Gonzalez', 0, NULL, 'perfil', NULL),
('victor', 'ab75fd76bea36af351f763946182ff75a0f2ae9bd68e9b547040cd6175574a81', 'Victor Garcia Gordon', 0, NULL, 'perfil', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t02_departamento`
--

CREATE TABLE `t02_departamento` (
  `T02_CodDepartamento` varchar(3) NOT NULL,
  `T02_DescDepartamento` varchar(255) DEFAULT NULL,
  `T02_FechaCreacionDepartamento` datetime DEFAULT NULL,
  `T02_VolumenDeNegocio` float DEFAULT NULL,
  `T02_FechaBajaDepartamento` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t02_departamento`
--

INSERT INTO `t02_departamento` (`T02_CodDepartamento`, `T02_DescDepartamento`, `T02_FechaCreacionDepartamento`, `T02_VolumenDeNegocio`, `T02_FechaBajaDepartamento`) VALUES
('b', 'b', '2025-02-11 19:52:18', 4, NULL),
('CCC', 'asasasasasasa', '2025-02-02 15:21:37', 1234, NULL),
('CHA', 'Charcuteria', '2025-02-02 15:15:09', 2500.46, NULL),
('LIM', 'Limpieza', '2025-02-02 15:15:09', 3000.6, NULL),
('MAR', 'Marketing', '2025-02-02 15:15:09', 12.56, NULL),
('PES', 'Pescaderia', '2025-02-02 15:15:09', 100.34, NULL),
('r', 'f', '2025-02-11 19:53:12', 5, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t01_usuario`
--
ALTER TABLE `t01_usuario`
  ADD PRIMARY KEY (`T01_CodUsuario`);

--
-- Indices de la tabla `t02_departamento`
--
ALTER TABLE `t02_departamento`
  ADD PRIMARY KEY (`T02_CodDepartamento`);
--
-- Base de datos: `db204dwesloginlogofftema6`
--
CREATE DATABASE IF NOT EXISTS `db204dwesloginlogofftema6` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db204dwesloginlogofftema6`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t01_usuario`
--

CREATE TABLE `t01_usuario` (
  `T01_CodUsuario` varchar(40) NOT NULL,
  `T01_Password` varchar(100) DEFAULT NULL,
  `T01_DescUsuario` varchar(300) DEFAULT NULL,
  `T01_NumConexiones` int(11) DEFAULT NULL,
  `T01_FechaHoraUltimaConexion` datetime DEFAULT NULL,
  `T01_Perfil` varchar(100) DEFAULT NULL,
  `T01_ImagenUsuario` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t01_usuario`
--

INSERT INTO `t01_usuario` (`T01_CodUsuario`, `T01_Password`, `T01_DescUsuario`, `T01_NumConexiones`, `T01_FechaHoraUltimaConexion`, `T01_Perfil`, `T01_ImagenUsuario`) VALUES
('admin', 'd6ed7eb369f21acd3d3d66a96de946cc2b514e4279827bf8a7ca9d7005514b27', 'Admin Admin Admin', 0, NULL, 'perfil', NULL),
('alex', '825e42135272fc44ca59e7bc969aabd49b88fafe3d60a4f774858b8719bd894c', 'Alex Asensio Sanchez', 0, NULL, 'perfil', NULL),
('amor', 'a8cce9d7335dddb7c1d076d02b698bd23ffa40099eed7d9263f0a91bd752225a', 'Amor Rodriguez Navarro', 0, NULL, 'perfil', NULL),
('antonio', 'b6ac37c1936df57d5a0c2eee5f6296df434ecef42b2ece8f23f0b361cc3eb1a9', 'Antonio Jañez Veleda', 0, NULL, 'perfil', NULL),
('gisela', '7653407f307ecf1621e47f840d56baf128268e41c93cbf258eddf52f9fc082fe', 'Gisela Folgueral Lindoso', 0, NULL, 'perfil', NULL),
('heraclio', '3f9c1511a87c9eec0d9151ac06d63053adbc269e569da272e72d8e1bfa28a6e3', 'Heraclio Borbujo Moran', 0, NULL, 'perfil', NULL),
('ivan', '25aa3f08c4b66c2a5641c39732b646afee91c9c29a076057196ff35075e7d0bf', 'Ivan Campos de Cela', 0, NULL, 'perfil', NULL),
('jesus', '326f4437726e404757b7e4aaf2d29e282e1be51efda023f03dbec3684cbd3c02', 'Jesus Ferreras Gonzalez', 0, NULL, 'perfil', NULL),
('luis', 'c0b7382a8c4432820b1cfa17a92110ee438e62f759e686c6d1ec1239f24cc52a', 'Luis Ferreras Gonzalez', 0, NULL, 'perfil', NULL),
('victor', 'ab75fd76bea36af351f763946182ff75a0f2ae9bd68e9b547040cd6175574a81', 'Victor Garcia Gordon', 0, NULL, 'perfil', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t02_departamento`
--

CREATE TABLE `t02_departamento` (
  `T02_CodDepartamento` varchar(3) NOT NULL,
  `T02_DescDepartamento` varchar(255) DEFAULT NULL,
  `T02_FechaCreacionDepartamento` datetime DEFAULT NULL,
  `T02_VolumenDeNegocio` float DEFAULT NULL,
  `T02_FechaBajaDepartamento` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `t02_departamento`
--

INSERT INTO `t02_departamento` (`T02_CodDepartamento`, `T02_DescDepartamento`, `T02_FechaCreacionDepartamento`, `T02_VolumenDeNegocio`, `T02_FechaBajaDepartamento`) VALUES
('CHA', 'Charcuteria', '2025-01-06 15:19:52', 2500.46, NULL),
('LIM', 'Limpieza', '2025-01-06 15:19:52', 3000.6, NULL),
('MAR', 'Marketing', '2025-01-06 15:19:52', 12.56, NULL),
('PES', 'Pescaderia', '2025-01-06 15:19:52', 100.34, NULL),
('VER', 'Verduleria', '2024-07-19 12:00:00', 12000.6, '2024-11-02 14:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t01_usuario`
--
ALTER TABLE `t01_usuario`
  ADD PRIMARY KEY (`T01_CodUsuario`);

--
-- Indices de la tabla `t02_departamento`
--
ALTER TABLE `t02_departamento`
  ADD PRIMARY KEY (`T02_CodDepartamento`);
--
-- Base de datos: `db204dwesproyectotema4`
--
CREATE DATABASE IF NOT EXISTS `db204dwesproyectotema4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db204dwesproyectotema4`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t02_departamento`
--
-- Error leyendo la estructura de la tabla db204dwesproyectotema4.t02_departamento: #1932 - Table &#039;db204dwesproyectotema4.t02_departamento&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla db204dwesproyectotema4.t02_departamento: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `db204dwesproyectotema4`.`t02_departamento`&#039; en la linea 1
--
-- Base de datos: `db204dwesproyectotema5`
--
CREATE DATABASE IF NOT EXISTS `db204dwesproyectotema5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db204dwesproyectotema5`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t01_usuario`
--
-- Error leyendo la estructura de la tabla db204dwesproyectotema5.t01_usuario: #1932 - Table &#039;db204dwesproyectotema5.t01_usuario&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla db204dwesproyectotema5.t01_usuario: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `db204dwesproyectotema5`.`t01_usuario`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t02_departamento`
--
-- Error leyendo la estructura de la tabla db204dwesproyectotema5.t02_departamento: #1932 - Table &#039;db204dwesproyectotema5.t02_departamento&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla db204dwesproyectotema5.t02_departamento: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `db204dwesproyectotema5`.`t02_departamento`&#039; en la linea 1
--
-- Base de datos: `dbhilos`
--
CREATE DATABASE IF NOT EXISTS `dbhilos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbhilos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`) VALUES
(1, 'Alex'),
(2, 'pepe'),
(3, 'papa'),
(4, 'Pepe mel'),
(5, 'Paquito'),
(6, 'a'),
(7, 'uve');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `dblistatareas`
--
CREATE DATABASE IF NOT EXISTS `dblistatareas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblistatareas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `CodTarea` int(11) NOT NULL,
  `CodUsuario` varchar(10) NOT NULL,
  `DescripcionTarea` varchar(100) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `FechaTareaRealizada` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`CodTarea`, `CodUsuario`, `DescripcionTarea`, `FechaCreacion`, `FechaTareaRealizada`) VALUES
(1, 'Alex', 'Hacer la comida', '2025-02-27 09:39:37', NULL),
(2, 'Alex', 'Barrer', '2025-02-27 09:39:37', NULL),
(3, 'Alex', 'Hacer la compra', '2025-02-27 09:39:37', NULL),
(4, 'Alex', 'Programar', '2025-02-27 09:39:37', NULL),
(17, 'Alex', 'moñeco', '2025-02-27 17:05:42', NULL),
(20, 'Alex', '1', '2025-02-27 17:15:51', NULL),
(21, 'Alex', '2', '2025-02-27 17:15:54', NULL),
(22, 'Alex', '3', '2025-02-27 17:15:58', NULL),
(23, 'Alex', '4', '2025-02-27 17:16:01', NULL),
(26, 'Alex', 'se', '2025-02-27 17:16:35', NULL),
(31, 'd', 'dfg', '2025-02-27 18:07:37', NULL),
(32, 'a', 'a', '2025-02-27 18:12:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CodUsuario` varchar(10) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CodUsuario`, `Nombre`, `contraseña`) VALUES
('a', 'a', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'),
('Alex', 'Alex Asensio Sanchez', '4dd09b8f659e27847f94782920fb7e41b2c5afbd7f419a4a3ed8ab7aa5b7f944'),
('d', 'd', '18ac3e7343f016890c510e93f935261169d9e3f565436429830faf0934f4f8e4'),
('ff', 'ff', '252f10c83610ebca1a059c0bae8255eba2f95be4d1d7bcfa89d7248a82d9f111');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`CodTarea`,`CodUsuario`),
  ADD KEY `CodUsuario` (`CodUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CodUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `CodTarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `dbproductos`
--
CREATE DATABASE IF NOT EXISTS `dbproductos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbproductos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Nombre`, `Descripcion`, `Precio`) VALUES
('Pera', 'Una puta pera jajajajaj', 10000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Nombre`);
--
-- Base de datos: `ejemplos_spring_curso_serbatic`
--
CREATE DATABASE IF NOT EXISTS `ejemplos_spring_curso_serbatic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ejemplos_spring_curso_serbatic`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double NOT NULL,
  `stock` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioprueba`
--

CREATE TABLE `usuarioprueba` (
  `id` bigint(20) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_cliente`,`id_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarioprueba`
--
ALTER TABLE `usuarioprueba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarioprueba`
--
ALTER TABLE `usuarioprueba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `peliculasserbatic`
--
CREATE DATABASE IF NOT EXISTS `peliculasserbatic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `peliculasserbatic`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritemovie`
--

CREATE TABLE `favoritemovie` (
  `email_usuario` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favoritemovie`
--

INSERT INTO `favoritemovie` (`email_usuario`, `movie_id`) VALUES
('alex@gmail.com', 857),
('alex@gmail.com', 13223),
('alex@gmail.com', 18491);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie`
--

CREATE TABLE `movie` (
  `tmdb_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `poster_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movie`
--

INSERT INTO `movie` (`tmdb_id`, `title`, `overview`, `poster_url`) VALUES
(129, 'El viaje de Chihiro', 'Durante el traslado de su familia a los suburbios, una niña de 10 años de edad deambula por un mundo gobernado por dioses, brujas y espíritus, y donde los humanos se convierten en bestias.', 'https://image.tmdb.org/t/p/w500/laXrmaTRuroArSPfsGlvTbeWxVA.jpg'),
(857, 'Salvar al soldado Ryan', 'Iniciándose con la invasión aliada a Normandía el 6 de junio de 1944, los miembros del segundo batallón de asalto, bajo las ordenes del capitán Miller, luchan por ganar el control de la playa. En el combate dos hermanos resultan muertos. Un poco antes, en Nueva Guinea, un tercer hermano muere también. Su madre, la señora Ryan, va a recibir tres telegramas de defunción el mismo día. El jefe del ejército estadounidense, George C. Marshall, ve la oportunidad de aliviar el sufrimiento de la señora cuando se entera de la existencia de un cuarto hermano, el soldado James Ryan, y decide enviar a 8 hombres (el capitán Miller y un grupo selecto de su batallón) a buscarlo y devolverlo a casa de su madre.', 'https://image.tmdb.org/t/p/w500/dcKfD8xWf8XnS3tHVp7v331wdNT.jpg'),
(13223, 'Gran Torino', 'Walt Kowalski, un veterano de la guerra de Corea, es un obrero jubilado del sector del automóvil. Su máxima pasión es cuidar de su más preciado tesoro: un coche Gran Torino de 1972. Es un hombre inflexible y con una voluntad de hierro, al que le cuesta trabajo asimilar los cambios que se producen a su alrededor. Sin embargo, las circustancias harán que se vea obligado a replantearse sus ideas.', 'https://image.tmdb.org/t/p/w500/7w54KRHdRokgXqxL59GKVau8e6l.jpg'),
(18491, 'The End of Evangelion', 'Seele ordena un ataque sin cuartel contra NERV con el objetivo de destruir los Evas antes de que Gendo pueda provocar el Tercer Impacto y la unión de las almas humanas.', 'https://image.tmdb.org/t/p/w500/9jbxvKB937BWeYAmMKZTqPxBLsk.jpg'),
(265712, 'Quédate Conmigo, Doraemon', 'Nobita Nobi es un niño muy patoso al que todo le sale mal. Un día recibe la visita de Sewashi, un misterioso niño que afirma ser su tataranieto del siglo XXII y le anuncia que su futuro será un desastre que arruinará a toda la familia durante generaciones. Sewashi le presta su robot Doraemon para que le ayude a encontrar una solución. Poco después, Doraemon, el gato cósmico, cree haber encontrado la clave: el amor.', 'https://image.tmdb.org/t/p/w500/7g3SGUY7ym4D7RxErzqlseq5wwM.jpg'),
(668489, 'Estragos', 'Cuando un robo de drogas tiene consecuencias fatales, un policía lucha contra el submundo criminal de una ciudad corrupta para salvar al hijo de un político.', 'https://image.tmdb.org/t/p/w500/tbsDLmo2Ej8YFM0HKcOGfNMTlyJ.jpg'),
(950387, 'Una película de Minecraft', 'Cuatro inadaptados se encuentran luchando con problemas ordinarios cuando de repente se ven arrastrados a través de un misterioso portal al Mundo Exterior: un extraño país de las maravillas cúbico que se nutre de la imaginación. Para volver a casa, tendrán que dominar este mundo mientras se embarcan en una búsqueda mágica con un inesperado experto artesano, Steve.', 'https://image.tmdb.org/t/p/w500/mFjtmmh4RtK9tLv1aPnUsl6st3m.jpg'),
(974573, 'Otro pequeño favor', 'Stephanie Smothers y Emily Nelson se reúnen en la hermosa isla de Capri, Italia, para la extravagante boda de Emily con un rico hombre de negocios italiano. Junto con los glamurosos invitados, cabe esperar asesinatos y traiciones en una boda con más giros y vueltas que el camino desde el puerto a la plaza del centro de Capri.', 'https://image.tmdb.org/t/p/w500/pZr2QCUbsekpiLnZ7788twcLpSn.jpg'),
(986056, 'Thunderbolts*', 'Un grupo de supervillanos y antihéroes van en misiones para el gobierno. Basado en la serie de cómics del mismo nombre.', 'https://image.tmdb.org/t/p/w500/zLbhKNJGDSfBCXFNtypM7ZuPTaW.jpg'),
(1122099, 'The Ballad of Wallis Island', '', 'https://image.tmdb.org/t/p/w500/AhmJOYdUn9katXqDk0ZpZanQ0xp.jpg'),
(1233069, 'Extraterritorial', 'Cuando su hijo desaparece en un consulado de EE. UU., una exsoldado de las fuerzas especiales hará lo imposible por encontrarlo... y destapará una oscura conspiración.', 'https://image.tmdb.org/t/p/w500/bTYbNWz4kI1P3GzEVvWZwyZT7Uv.jpg'),
(1233413, 'Los pecadores', 'Tratando de dejar atrás sus problemáticas vidas, dos hermanos gemelos regresan a su pueblo natal para empezar de nuevo, solo para descubrir que un mal aún mayor les espera para darles la bienvenida.', 'https://image.tmdb.org/t/p/w500/zdClwqpYQXBSCGGDMdtvsuggwec.jpg'),
(1241436, 'Warfare. Tiempo de guerra', '', 'https://image.tmdb.org/t/p/w500/9Ci3Rl0eXN8lJCuxIApZrjds6cg.jpg'),
(1249213, 'La cita', 'Violet, una joven madre viuda que lleva años sin salir con nadie, al llegar al restaurante de lujo donde ha quedado con Henry, se siente aliviada al descubrir que este es mucho más encantador y apuesto de lo que esperaba. Pero la química se resquebraja cuando Violet empieza a mostrarse irritable al recibir una serie de mensajes anónimos en su móvil que acaban por aterrorizarla.', 'https://image.tmdb.org/t/p/w500/nCCtlyWeDkUUFu9eESd4jIQnUcj.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña`
--

CREATE TABLE `reseña` (
  `id` bigint(20) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `movie_tmdb_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reseña`
--

INSERT INTO `reseña` (`id`, `user_email`, `movie_tmdb_id`, `content`, `rating`, `created_at`, `updated_at`) VALUES
(33, 'prueba1@gmail.com', 1241436, 'Buena pelicula', NULL, '2025-05-06 19:21:59', '2025-05-06 19:21:59'),
(34, 'prueba1@gmail.com', 986056, 'No me gusto mucho', NULL, '2025-05-06 19:22:12', '2025-05-06 19:22:12'),
(35, 'prueba1@gmail.com', 974573, 'Una película muy aburrida', NULL, '2025-05-06 19:22:30', '2025-05-06 19:22:30'),
(36, 'prueba2@gmail.com', 1241436, 'Una película un poco mediocre', NULL, '2025-05-06 19:23:10', '2025-05-06 19:23:10'),
(37, 'prueba2@gmail.com', 986056, 'Esta película no esta nada mal', NULL, '2025-05-06 19:23:21', '2025-05-06 19:23:21'),
(38, 'prueba2@gmail.com', 974573, 'Buenísima esta película, 10/10', NULL, '2025-05-06 19:23:38', '2025-05-06 19:23:38'),
(39, 'alex@gmail.com', 13223, 'Me gustó esta película, Clint Eastwood es sin duda un gran actor', NULL, '2025-05-06 19:24:25', '2025-05-06 19:24:38'),
(40, 'alex@gmail.com', 18491, 'Una obra maestra que le da un cierre redondo a la historia, impresionante', NULL, '2025-05-06 19:25:52', '2025-05-06 19:30:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `administrador` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`email`, `username`, `password`, `administrador`) VALUES
('admin@admin.es', 'Admin', '$2a$10$FOnChn8BXTElZY/VkXZj.u1qpdLTk9JRmfDlRyQdeDvnLoY0i25TG', 1),
('alex@gmail.com', 'Alex', '$2a$10$elZy/d6n3ZHn9oPvIpb2pOQBcT4WrBXWIAfqjXcUjMbf3r4TZLRpK', 0),
('prueba1@gmail.com', 'Prueba 1', '$2a$10$AcyRvpHZyKpu/ioqAwbXReXnFKu/brxYP6ZDLtP8iQ3f5Bq1LNEW6', 0),
('prueba2@gmail.com', 'Prueba 2', '$2a$10$12LCs8J5byiSIhipCbA.ZeuI34iUJGFHEr.mS2.EwyqcOTMgH/Z5.', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `favoritemovie`
--
ALTER TABLE `favoritemovie`
  ADD PRIMARY KEY (`email_usuario`,`movie_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indices de la tabla `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`tmdb_id`);

--
-- Indices de la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_email`),
  ADD KEY `movie_tmdb_id` (`movie_tmdb_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reseña`
--
ALTER TABLE `reseña`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritemovie`
--
ALTER TABLE `favoritemovie`
  ADD CONSTRAINT `favoritemovie_ibfk_1` FOREIGN KEY (`email_usuario`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favoritemovie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`tmdb_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reseña`
--
ALTER TABLE `reseña`
  ADD CONSTRAINT `reseña_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reseña_ibfk_2` FOREIGN KEY (`movie_tmdb_id`) REFERENCES `movie` (`tmdb_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__bookmark: #1932 - Table &#039;phpmyadmin.pma__bookmark&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__bookmark: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__bookmark`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__central_columns: #1932 - Table &#039;phpmyadmin.pma__central_columns&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__central_columns: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__central_columns`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__column_info: #1932 - Table &#039;phpmyadmin.pma__column_info&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__column_info: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__column_info`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__designer_settings: #1932 - Table &#039;phpmyadmin.pma__designer_settings&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__designer_settings: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__designer_settings`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__export_templates: #1932 - Table &#039;phpmyadmin.pma__export_templates&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__export_templates: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__export_templates`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__favorite: #1932 - Table &#039;phpmyadmin.pma__favorite&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__favorite: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__favorite`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__history: #1932 - Table &#039;phpmyadmin.pma__history&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__history: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__history`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__navigationhiding: #1932 - Table &#039;phpmyadmin.pma__navigationhiding&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__navigationhiding: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__navigationhiding`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__pdf_pages: #1932 - Table &#039;phpmyadmin.pma__pdf_pages&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__pdf_pages: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__pdf_pages`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__recent: #1932 - Table &#039;phpmyadmin.pma__recent&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__recent: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__recent`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__relation: #1932 - Table &#039;phpmyadmin.pma__relation&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__relation: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__relation`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__savedsearches: #1932 - Table &#039;phpmyadmin.pma__savedsearches&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__savedsearches: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__savedsearches`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_coords: #1932 - Table &#039;phpmyadmin.pma__table_coords&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__table_coords: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__table_coords`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_info: #1932 - Table &#039;phpmyadmin.pma__table_info&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__table_info: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__table_info`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_uiprefs: #1932 - Table &#039;phpmyadmin.pma__table_uiprefs&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__table_uiprefs: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__table_uiprefs`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__tracking: #1932 - Table &#039;phpmyadmin.pma__tracking&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__tracking: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__tracking`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__userconfig: #1932 - Table &#039;phpmyadmin.pma__userconfig&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__userconfig: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__userconfig`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__usergroups: #1932 - Table &#039;phpmyadmin.pma__usergroups&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__usergroups: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__usergroups`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__users: #1932 - Table &#039;phpmyadmin.pma__users&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__users: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `phpmyadmin`.`pma__users`&#039; en la linea 1
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
