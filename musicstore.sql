-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2024 a las 05:19:21
-- Versión del servidor: 10.4.28-MariaDB-log
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musicstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Pwd` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`ID`, `Nombre`, `Pwd`) VALUES
(1, 'Noe', 'Noe4658');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adress`
--

CREATE TABLE `adress` (
  `Calle` varchar(70) NOT NULL,
  `Ciudad` varchar(80) NOT NULL,
  `Codigo` varchar(150) NOT NULL,
  `Estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `adress`
--

INSERT INTO `adress` (`Calle`, `Ciudad`, `Codigo`, `Estado`) VALUES
('Rafael Cardenas Z. 205', 'Guadalajara', '44250', 'Jalisco'),
('Castro 3800', 'Zapopan', '44230', 'Jalisco'),
('El chaco 356', 'Zapopan', '44236', 'Jalisco'),
('Cadiz 2823', 'Guadalajara', '44230', 'Jalisco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_productos`
--

CREATE TABLE `bitacora_productos` (
  `ID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Sentencia` varchar(150) NOT NULL,
  `Contrasentencia` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitacora_productos`
--

INSERT INTO `bitacora_productos` (`ID`, `Fecha`, `Sentencia`, `Contrasentencia`) VALUES
(1, '2023-11-22', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Mr. Morale & The Bigsteppers\', \'899.99\', El ultimo disco de Kendrick);', 'DELETE FROM productos WHERE id = 1'),
(2, '2023-11-22', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Igor\', \'599.99\', Disco de Tyler The Creator);', 'DELETE FROM productos WHERE id = 2'),
(3, '2023-11-28', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Good Kid Maad City\', \'899.99\', Disco de Kendrick Lamar);', 'DELETE FROM productos WHERE id = 3'),
(4, '2023-11-29', 'DELETE FROM productos WHERE id = 2', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Igor\', \'599.99\', Disco de Tyler The Creator);2'),
(5, '2023-11-29', 'UPDATE productos SET nombre = \'Mr. Morale & The Bigsteppers\',precio = 999.99\',descripcion=\'Disco de Kendrick Lamar\';', 'DELETE FROM productos WHERE id = 1'),
(6, '2023-11-29', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Igor\', \'699.99\', Tyler disco);', 'DELETE FROM productos WHERE id = 4'),
(7, '2023-11-29', 'UPDATE productos SET nombre = \'Noe\',precio = 789.99\',descripcion=\'JayZ Disco\';', 'DELETE FROM productos WHERE id = 4'),
(8, '2023-11-29', 'DELETE FROM productos WHERE id = 4', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Noe\', \'789.99\', JayZ Disco);4'),
(9, '2023-11-29', 'DELETE FROM productos WHERE id = 1', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Mr. Morale & The Bigsteppers\', \'999.99\', Disco de Kendrick Lamar);1'),
(10, '2023-11-29', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Good Kid Maad City\', \'899.99\', Disco de Kendrick Lamar);', 'DELETE FROM productos WHERE id = 5'),
(11, '2023-11-29', 'UPDATE productos SET nombre = \'The Melodic Blue\',precio = 999.99\',descripcion=\'El ultimo disco de Baby Keem\';', 'DELETE FROM productos WHERE id = 5'),
(12, '2023-12-04', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Mr. Morale & The Bigsteppers\', \'899.99\', Disco de Kendrick Lamar);', 'DELETE FROM productos WHERE id = 1'),
(13, '2023-12-04', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Mr. Morale & The Bigsteppers\', \'899.99\', Disco de Kendrick Lamar);', 'DELETE FROM productos WHERE id = 2'),
(14, '2023-12-04', 'UPDATE productos SET nombre = \'Igor\',precio = 789.99\',descripcion=\'Tyler disco\';', 'DELETE FROM productos WHERE id = 2'),
(15, '2023-12-04', 'UPDATE productos SET nombre = \'Igor\',precio = 789.99\',descripcion=\'Tyler disco\';', 'DELETE FROM productos WHERE id = 2'),
(16, '2023-12-06', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Good Kid Maad City\', \'699.99\', Disco de Kendrick Lamar);', 'DELETE FROM productos WHERE id = 3'),
(17, '2023-12-06', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'2014 Forest Hills Drive\', \'899.99\', Disco de J. Cole);', 'DELETE FROM productos WHERE id = 4'),
(18, '2023-12-06', 'UPDATE productos SET nombre = \'2014 Forest Hills Drive\',precio = 899.99\',descripcion=\'Ultimo disco de J. Cole\';', 'DELETE FROM productos WHERE id = 4'),
(19, '2023-12-06', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'The Melodic Blue\', \'450\', Ultimo ddisco de Baby Keem);', 'DELETE FROM productos WHERE id = 5'),
(20, '2023-12-06', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'4:44\', \'899.99\', JayZ Disco);', 'DELETE FROM productos WHERE id = 6'),
(21, '2023-12-06', 'DELETE FROM productos WHERE id = 5', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'The Melodic Blue\', \'450\', Ultimo ddisco de Baby Keem);5'),
(22, '2023-12-06', 'DELETE FROM productos WHERE id = 4', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'2014 Forest Hills Drive\', \'899.99\', Ultimo disco de J. Cole);4'),
(23, '2023-12-07', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Psalmos\', \'1000\', Te cambia la vida bro);', 'DELETE FROM productos WHERE id = 7'),
(24, '2023-12-07', 'INSERT INTO productos (nombre, precio, descripcion) VALUES (\'Lo que sea\', \'899.99\', Ultimo disco);', 'DELETE FROM productos WHERE id = 8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `Numero` int(11) NOT NULL,
  `Producto_Nom` varchar(70) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Usuario` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`Numero`, `Producto_Nom`, `Cantidad`, `Usuario`) VALUES
(1, 'Kendrick Lamar', 2, 'Rosita'),
(2, 'Igor', 3, 'Rosita'),
(3, 'Good Kid Maad City', 2, 'Ivan'),
(4, 'Good Kid Maad City', 5, 'Noe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`) VALUES
(1, 'Mr. Morale & The Bigsteppers', 899.99, 'Disco de Kendrick Lamar'),
(2, 'Igor', 789.99, 'Tyler disco'),
(3, 'Good Kid Maad City', 699.99, 'Disco de Kendrick Lamar'),
(6, '4:44', 899.99, 'JayZ Disco'),
(7, 'Psalmos', 1000, 'Te cambia la vida bro'),
(8, 'Lo que sea', 899.99, 'Ultimo disco');

--
-- Disparadores `productos`
--
DELIMITER $$
CREATE TRIGGER `bitacora_producto` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
INSERT INTO bitacora_productos (Fecha, Sentencia, Contrasentencia)
VALUES (NOW(), 
        CONCAT('INSERT INTO productos (nombre, precio, descripcion) VALUES (''', NEW.nombre, ''', ''', NEW.precio, ''', ', NEW.descripcion, ');'),
        CONCAT('DELETE FROM productos WHERE id = ', NEW.id)
);
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_producto';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_producto_actual` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
INSERT INTO bitacora_productos (Fecha, Sentencia, Contrasentencia)
VALUES (NOW(), 
        CONCAT('UPDATE productos SET nombre = ''',NEW.nombre, ''',precio = ',NEW.precio,''',descripcion=''',NEW.descripcion,''';'),
        CONCAT('DELETE FROM productos WHERE id = ', NEW.id)
);
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_producto';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_producto_eliminar` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
INSERT INTO bitacora_productos (Fecha, Sentencia, Contrasentencia)
VALUES (NOW(), 
        CONCAT('DELETE FROM productos WHERE id = ', OLD.id),
        CONCAT('INSERT INTO productos (nombre, precio, descripcion) VALUES (''', OLD.nombre, ''', ''', OLD.precio, ''', ', OLD.descripcion, ');', OLD.id)
);
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_producto';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos1`
--

CREATE TABLE `productos1` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` float(10,2) NOT NULL,
  `descripcion` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Correo` varchar(70) NOT NULL,
  `Pwd` varchar(70) NOT NULL,
  `Calle` varchar(70) NOT NULL,
  `CP` int(9) NOT NULL,
  `Ciudad` varchar(70) NOT NULL,
  `Estado` varchar(70) NOT NULL,
  `Cel` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Nombre`, `Correo`, `Pwd`, `Calle`, `CP`, `Ciudad`, `Estado`, `Cel`) VALUES
(1, 'vbbt', 'ivann@gmail.com', 'fefr', 'efrg', 2434, 'vrgefre', 'efrf', 3331683029),
(10, 'cecdc', 'bgtbrtbvbrbr@gmail.com', 'vvfr', 'dbrb', 23343, 'dvb', 'vtbgt', 132343),
(11, 'cecdc', 'bgtbrtbvbrbr@gmail.com', 'vvfr', 'dbrb', 23343, 'dvb', 'vtbgt', 132343),
(12, 'scdfr', 'xwce@gmail.com', 'qde', 'dedfe', 234, 'frgr', 'wffrf', 2344566789),
(13, 'Carlos', 'cazo@gmail.com', '1234', 'rio la barca', 44870, 'guadalajara', 'jalisco', 3325965777),
(14, 'ross', 'rsantana@ceti.mx', '1234', 'svvrb', 234, 'guadalajara', 'fee', 12334563),
(15, 'Ivan', 'ivannoeramirezvivanco@gmail.com', '1234', 'efrg', 2434, 'guadalajara', 'jalisco', 3325965777),
(16, 'Bryan', 'bryanvegetta@gmail.com', '1234', 'efrg', 2434, 'guadalajara', 'jalisco', 3331683029),
(17, 'Josue', 'josuebc2720@gmail.com', '12345678', '', 0, '', '', 0),
(18, '', '', '', '', 0, '', '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `bitacora_productos`
--
ALTER TABLE `bitacora_productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos1`
--
ALTER TABLE `productos1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bitacora_productos`
--
ALTER TABLE `bitacora_productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos1`
--
ALTER TABLE `productos1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
