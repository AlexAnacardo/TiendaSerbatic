-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2025 a las 12:04:45
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
-- Base de datos: `peliculasserbatic`
--

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
('alex', 129),
('alex', 18491);

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
(18491, 'The End of Evangelion', 'Seele ordena un ataque sin cuartel contra NERV con el objetivo de destruir los Evas antes de que Gendo pueda provocar el Tercer Impacto y la unión de las almas humanas.', 'https://image.tmdb.org/t/p/w500/9jbxvKB937BWeYAmMKZTqPxBLsk.jpg'),
(265712, 'Quédate Conmigo, Doraemon', 'Nobita Nobi es un niño muy patoso al que todo le sale mal. Un día recibe la visita de Sewashi, un misterioso niño que afirma ser su tataranieto del siglo XXII y le anuncia que su futuro será un desastre que arruinará a toda la familia durante generaciones. Sewashi le presta su robot Doraemon para que le ayude a encontrar una solución. Poco después, Doraemon, el gato cósmico, cree haber encontrado la clave: el amor.', 'https://image.tmdb.org/t/p/w500/7g3SGUY7ym4D7RxErzqlseq5wwM.jpg'),
(950387, 'Una película de Minecraft', 'Cuatro inadaptados se encuentran luchando con problemas ordinarios cuando de repente se ven arrastrados a través de un misterioso portal al Mundo Exterior: un extraño país de las maravillas cúbico que se nutre de la imaginación. Para volver a casa, tendrán que dominar este mundo mientras se embarcan en una búsqueda mágica con un inesperado experto artesano, Steve.', 'https://image.tmdb.org/t/p/w500/mFjtmmh4RtK9tLv1aPnUsl6st3m.jpg'),
(986056, '', '', ''),
(1233413, '', '', ''),
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
(16, 'alex', 1249213, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', NULL, '2025-04-29 09:56:15', '2025-04-29 09:56:15');

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
('admin', 'Administrador Peliculas', 'paso', 1),
('alex', 'Alex', 'paso', 0),
('r', 'r', 'r', 0);

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
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reseña`
--
ALTER TABLE `reseña`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
