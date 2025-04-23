-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2025 a las 00:32:22
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
('a', 931349),
('a', 974576),
('a', 999243),
('a', 1232546),
('a', 1276073);

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
(931349, 'Ash', 'A woman wakes up on a distant planet and finds the crew of her space station viciously killed. Her investigation into what happened sets in motion a terrifying chain of events.', 'https://image.tmdb.org/t/p/w500/vmTg5jt6sXsv6GNcAnwqclarFgQ.jpg'),
(974576, 'Conclave', 'After the unexpected death of the Pope, Cardinal Lawrence is tasked with managing the covert and ancient ritual of electing a new one. Sequestered in the Vatican with the Catholic Church’s most powerful leaders until the process is complete, Lawrence finds himself at the center of a conspiracy that could lead to its downfall.', 'https://image.tmdb.org/t/p/w500/m5x8D0bZ3eKqIVWZ5y7TnZ2oTVg.jpg'),
(999243, 'Hell of a Summer', 'When 24-year-old Jason Hochberg arrives for counsellor weekend at his beloved Camp Pineway, his biggest problem is feeling out of touch with his teenage co-workers. Little does he know; a masked killer has murdered camp owners John and Kathy and is preparing to strike again.', 'https://image.tmdb.org/t/p/w500/wmSCSKUI15Q2pApB5f3oEl0EQuE.jpg'),
(1232546, 'Until Dawn', 'One year after her sister Melanie mysteriously disappeared, Clover and her friends head into the remote valley where she vanished in search of answers. Exploring an abandoned visitor center, they find themselves stalked by a masked killer and horrifically murdered one by one…only to wake up and find themselves back at the beginning of the same evening.', 'https://image.tmdb.org/t/p/w500/6O9nkcmZBymDXtxOGJmulqcxJdv.jpg'),
(1276073, 'Bullet Train Explosion', 'When panic erupts on a Tokyo-bound bullet train that will explode if it slows below 100 kph, authorities race against time to save everyone on board.', 'https://image.tmdb.org/t/p/w500/qkTKtOHK9JEEOHgPQZ0dFtzs5ML.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`email`, `username`, `password`) VALUES
('a', 'a', 'a'),
('b', 'b', 'b');

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
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritemovie`
--
ALTER TABLE `favoritemovie`
  ADD CONSTRAINT `favoritemovie_ibfk_1` FOREIGN KEY (`email_usuario`) REFERENCES `user` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `favoritemovie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`tmdb_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
