-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2023 a las 03:22:07
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
-- Base de datos: `entregable`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `flag` varchar(45) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `flag`, `capital`) VALUES
(1, 'Colombia', 'amarillo rojo azul', 'Bogotá '),
(2, 'España', 'roja amarilla roja', 'Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE `departaments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `id_countries` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `name`, `id_countries`) VALUES
(1, 'Amazonas', 1),
(2, 'Antioquia', 1),
(3, 'Arauca', 1),
(4, 'Atlantico', 1),
(5, 'Bolivar', 1),
(6, 'boyaca', 1),
(7, 'Caldas', 1),
(8, 'Caqueta', 1),
(9, 'Casanare', 1),
(10, 'Cauca', 1),
(11, 'Cauca', 1),
(12, 'Cesar', 1),
(13, 'Choco', 1),
(14, 'Cordoba', 1),
(15, 'Cundinamarca', 1),
(16, 'guainia', 1),
(17, 'Guaviare', 1),
(18, 'Huila', 1),
(19, 'La Guajira', 1),
(20, 'Magdalena', 1),
(21, 'Madrid', 2),
(22, 'Barcelona', 2),
(23, 'Valencia', 2),
(24, 'Sevilla', 2),
(25, 'Alicante', 2),
(26, 'Malaga', 2),
(27, 'Murcia', 2),
(28, 'Cadiz', 2),
(29, 'Baleares', 2),
(30, 'Las Palmas', 2),
(31, 'Vizcaya', 2),
(32, 'La Coruña', 2),
(33, 'Santa Cruz de Tenerife', 2),
(34, 'Asturias', 2),
(35, 'Zaragosa', 2),
(36, 'Pontevegra', 2),
(37, 'Granada', 2),
(38, 'Tarragona', 2),
(39, 'Gerona', 2),
(40, 'Almeria', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `id_countries` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `name`, `adress`, `phone`, `id_countries`) VALUES
(1, 'Colegio New Cambridge', 'Cl. 32 #22-140, Floridablanca, Santander', '76386152', 1),
(2, 'Liceo Campo David', 'Cl. 46 Sur #21-27, Bogotá', '17676146', 1),
(3, 'Cambridge School Pamplona', 'Cra. 5 #7-94, Pamplona', '(607) 5685309', 1),
(4, 'Gimnasio Colombo Británico', 'Costado Sur Occidental, Aero. Guaymaral', '6016683999', 1),
(5, 'Colegio Anglo Americano', 'Cl. 170 #8-80/70, Bogotá', '16694181', 1),
(6, 'Colegio Bilingüe Diana Oese', 'Km. 3 Calle 11, Cali', '3259000', 1),
(7, 'Boston International School', 'Cl. 73b #39-142, Nte. Centro Historico, Barra', '53177410', 1),
(8, 'Colegio Santa Francisca Romana', ' Cl. 151 #1640, Usaquén, Bogotá', '15804444', 1),
(9, 'Colegio Bilingüe Buckingham', 'Cra. 52 #214 - 55, Bogotá', '16760812', 1),
(10, 'Colegio La Quinta Del Puente', 'Cra. 10 #9-86, Floridablanca', '6481844', 1),
(11, 'Colegio Montaigne', 'C. Colombia, 2, 41013 Sevilla', '+34 954 23 19 05', 2),
(12, 'Colegio San Luis de los Franceses', 'C. de Portugalete, 1, 28223 Pozuelo de Alarcó', '+34 913 52 05 17', 2),
(13, 'Colegio Juan de Lanuza', 'Carr. del Aeropuerto, 275, 50011 Zaragoza', '+34 976 30 03 36', 2),
(14, 'Colegio Privado en Sevilla: Highlands School', 'Km. 4,5, Ctra. de Utrera, 41089 Montequinto, ', '+34955990150', 2),
(15, 'Colegio Patrocinio de San José', 'C. de Edgar Neville, 24, 28020 Madrid', '+34 915 35 98 40', 2),
(16, 'Colegio Maristas Sede Fuensanta Murcia', 'Avenida, Av. Don Juan de Borbón, 1, 30007 Mur', '+34 968 23 38 50', 2),
(17, 'Colegio Maristas Sede Fuensanta Murcia', 'Avenida, Av. Don Juan de Borbón, 1, 30007 Mur', '+34 968 23 38 50', 2),
(18, 'Colegio CEU Jesús María', 'C/ de L\'Esportista Alejandra Quereda, 15, 030', '+34 965 26 14 00', 2),
(19, 'Colegio Askartza Claret', 'Sarriena Auzoa, 173, 48940 Leioa, Biscay', '+34 944 64 26 00', 2),
(20, 'Colegio Concertado Licenciados Reunidos', 'C. Londres, 3, 10005 Cáceres', '+34 927 23 20 02', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_birth` varchar(45) NOT NULL,
  `deparments_id` int(11) NOT NULL,
  `id_schools` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `date_birth`, `deparments_id`, `id_schools`) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '123456', '1985-03-10', 25, 12),
(2, 'pablo', 'perez', 'pablito@hotmail.com', '456123', '04/05/1987', 1, 1),
(3, 'mario', 'mendez', 'mendezmario@gmail.com', '354555', '07-08-2002', 2, 2),
(4, 'maria', 'padilla', 'padillama@gmail.com', '89575', '05-08-1986', 3, 3),
(5, 'carmenza', 'cantillo', 'laniñadelpueblo@gmail.com', '568845', '07-12-1972', 4, 4),
(6, 'camilo', 'lopez', 'camilolopez@yahoo.es', '55555', '20-08-1996', 5, 5),
(7, 'diego', 'moreno', 'dmoreno@hotmail.com', '789546', '05-04-1988', 6, 6),
(8, 'alejandro', 'garcia', 'alejandrogarcia@gmail.com', 'latinopass', '15-05-1990', 7, 7),
(9, 'maria', 'rodriguez', 'mariarodriguez@hotmail.com', 'latin123', '20-09-1988', 8, 8),
(10, 'carlos', 'lopez', 'carloslopez@hotmail.com', 'latim2023', '05-03-1993', 9, 9),
(11, 'ana', 'hernandez', 'anahernandez@gmail.com', 'anita23', '10-11-1985', 10, 10),
(12, 'luis', 'martinez', 'luismartinez@hotmail.com', 'latinlover', '25-07-1996', 11, 11),
(13, 'laura', 'gomez', 'lauragomez@hotmail.com', 'latin2022', '15-02-1991', 12, 3),
(14, 'juan', 'morales', 'juanmorales@yahoo.es', 'where54', '30-06-1987', 13, 10),
(15, 'carolina', 'paredes', 'carolinaparedes@hotmail.com', 'latinpass123', '08-09-1994', 14, 11),
(16, 'jose', 'silva', 'josesilva@outlook.com', 'lastmost123', '12-04-1989', 15, 2),
(17, 'pablo', 'perez', 'pablito@hotmail.com', '456123', '1987-05-04', 17, 1),
(18, 'maria', 'lopez', 'marialopez@gmail.com', 'abc123', '1990-09-12', 19, 2),
(19, 'juan', 'garcia', 'juangarcia@yahoo.com', 'qwerty', '1985-03-20', 18, 3),
(20, 'laura', 'fernandez', 'laurafernandez@gmail.com', 'pass123', '1993-11-02', 22, 4),
(21, 'carlos', 'rodriguez', 'carlosrodriguez@hotmail.com', '987654', '1988-07-15', 20, 5),
(22, 'ana', 'martinez', 'anamartinez@yahoo.com', 'password', '1991-12-08', 21, 6),
(23, 'javier', 'sanchez', 'javiersanchez@gmail.com', 'abc456', '1986-02-18', 25, 7),
(24, 'lucia', 'gomez', 'luciagomez@hotmail.com', 'p@ssw0rd', '1994-06-30', 22, 8),
(25, 'daniel', 'ramirez', 'danielramirez@yahoo.com', 'qazwsx', '1989-10-22', 24, 9),
(26, 'sofia', 'pereira', 'sofiapereira@gmail.com', '123abc', '1992-04-25', 28, 10),
(27, 'manuel', 'ortiz', 'manuelortiz@hotmail.com', 'password123', '1987-08-17', 25, 11),
(28, 'isabel', 'rodriguez', 'isabelrodriguez@gmail.com', 'qwerty123', '1990-01-10', 27, 3),
(29, 'pedro', 'santos', 'pedrosantos@yahoo.com', 'passpass', '1985-05-28', 26, 10),
(30, 'natalia', 'castro', 'nataliacastro@gmail.com', '987654321', '1993-09-03', 34, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_countries` (`id_countries`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_countries` (`id_countries`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deparments_id` (`deparments_id`),
  ADD KEY `id_schools` (`id_schools`),
  ADD KEY `deparments_id_2` (`deparments_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD CONSTRAINT `departaments_ibfk_1` FOREIGN KEY (`id_countries`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_ibfk_1` FOREIGN KEY (`id_countries`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`deparments_id`) REFERENCES `departaments` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_schools`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
