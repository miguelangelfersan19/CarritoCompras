-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2021 a las 19:22:26
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito_compra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Mujeres', 'Ropar para dama', 'women.jpg'),
(2, 'Hombres', 'Ropa para hombre', 'men.jpg'),
(3, 'Niños', 'Ropa para niños', 'children.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envios` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envios`, `pais`, `company`, `direccion`, `estado`, `cp`, `id_venta`) VALUES
(1, '6', 'phantcode', 'calle 53d  21 a 12', 'barranquilla', '12', 27),
(2, '4', 'colegio', 'kr 12', 'bogota', '13', 34),
(3, '4', 'particular', 'calle 23', 'la paz', '44', 35),
(4, '6', 'particular', 'kr 20', 'medellin', '2001', 36),
(5, '6', 'procaps', 'call 3', 'barranquilla', '12', 37),
(6, '', '', '', '', '', 38),
(7, '3', 'chilesas', 'calle 3', 'santiago', '45', 39),
(8, '6', 'antonios s.a.s', 'calle 23', 'barranquilla', '12', 40),
(9, '6', 'antonios s.a.s', 'calle 23', 'barranquilla', '12', 41),
(10, '2', 'asas', 'saas', 'asa', '121', 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`, `talla`, `color`) VALUES
(1, 'Tank Top', 'Finding perfect t-shirt', 60, 'cloth_1.jpg', 18, 3, 'XL', 'white'),
(2, 'Corater', 'Finding perfect products', 20, 'shoe_1.jpg', 3, 2, '25.5', 'blue'),
(3, 'playera', 'playera deportiva', 30, 'cloth_2.jpg', 26, 1, '26', 'azul'),
(4, 'Producto 0', 'Esta es una descripcion aleatoria', 531, 'cloth_1.jpg', 1, 1, 'XL', 'Blue'),
(5, 'Producto 1', 'Esta es una descripcion aleatoria', 251, 'cloth_1.jpg', 18, 1, 'XL', 'Blue'),
(6, 'Producto 2', 'Esta es una descripcion aleatoria', 138, 'cloth_1.jpg', 74, 1, 'XL', 'Blue'),
(7, 'Producto 3', 'Esta es una descripcion aleatoria', 194, 'cloth_1.jpg', 79, 1, 'XL', 'Blue'),
(8, 'Producto 4', 'Esta es una descripcion aleatoria', 661, 'cloth_1.jpg', 30, 1, 'XL', 'Blue'),
(9, 'Producto 5', 'Esta es una descripcion aleatoria', 218, 'cloth_1.jpg', 79, 1, 'XL', 'Blue'),
(10, 'Producto 6', 'Esta es una descripcion aleatoria', 886, 'cloth_1.jpg', 82, 1, 'XL', 'Blue'),
(11, 'Producto 7', 'Esta es una descripcion aleatoria', 360, 'cloth_1.jpg', 48, 1, 'XL', 'Blue'),
(12, 'Producto 8', 'Esta es una descripcion aleatoria', 50, 'cloth_1.jpg', 53, 1, 'XL', 'Blue'),
(13, 'Producto 9', 'Esta es una descripcion aleatoria', 368, 'cloth_1.jpg', 65, 1, 'XL', 'Blue'),
(14, 'Producto 10', 'Esta es una descripcion aleatoria', 330, 'cloth_1.jpg', 71, 1, 'XL', 'Blue'),
(15, 'Producto 11', 'Esta es una descripcion aleatoria', 40, 'cloth_1.jpg', 10, 1, 'XL', 'Blue'),
(16, 'Producto 12', 'Esta es una descripcion aleatoria', 77, 'cloth_1.jpg', 82, 1, 'XL', 'Blue'),
(17, 'Producto 13', 'Esta es una descripcion aleatoria', 50, 'cloth_1.jpg', 19, 1, 'XL', 'Blue'),
(18, 'Producto 14', 'Esta es una descripcion aleatoria', 104, 'cloth_1.jpg', 97, 1, 'XL', 'Blue'),
(19, 'Producto 15', 'Esta es una descripcion aleatoria', 449, 'cloth_1.jpg', 31, 1, 'XL', 'Blue'),
(20, 'Producto 16', 'Esta es una descripcion aleatoria', 826, 'cloth_1.jpg', 12, 1, 'XL', 'Blue'),
(21, 'Producto 17', 'Esta es una descripcion aleatoria', 262, 'cloth_1.jpg', 37, 1, 'XL', 'Blue'),
(22, 'Producto 18', 'Esta es una descripcion aleatoria', 566, 'cloth_1.jpg', 22, 1, 'XL', 'Blue'),
(23, 'Producto 19', 'Esta es una descripcion aleatoria', 107, 'cloth_1.jpg', 29, 1, 'XL', 'Blue'),
(24, 'Producto 20', 'Esta es una descripcion aleatoria', 692, 'cloth_1.jpg', 27, 1, 'XL', 'Blue'),
(25, 'Producto 21', 'Esta es una descripcion aleatoria', 44, 'cloth_1.jpg', 55, 1, 'XL', 'Blue'),
(26, 'Producto 22', 'Esta es una descripcion aleatoria', 547, 'cloth_1.jpg', 79, 1, 'XL', 'Blue'),
(27, 'Producto 23', 'Esta es una descripcion aleatoria', 224, 'cloth_1.jpg', 60, 1, 'XL', 'Blue'),
(28, 'Producto 24', 'Esta es una descripcion aleatoria', 468, 'cloth_1.jpg', 92, 1, 'XL', 'Blue'),
(29, 'Producto 25', 'Esta es una descripcion aleatoria', 402, 'cloth_1.jpg', 10, 1, 'XL', 'Blue'),
(30, 'Producto 26', 'Esta es una descripcion aleatoria', 98, 'cloth_1.jpg', 53, 1, 'XL', 'Blue'),
(31, 'Producto 27', 'Esta es una descripcion aleatoria', 366, 'cloth_1.jpg', 74, 1, 'XL', 'Blue'),
(32, 'Producto 28', 'Esta es una descripcion aleatoria', 736, 'cloth_1.jpg', 53, 1, 'XL', 'Blue'),
(33, 'Producto 29', 'Esta es una descripcion aleatoria', 598, 'cloth_1.jpg', 90, 1, 'XL', 'Blue'),
(34, 'Producto 30', 'Esta es una descripcion aleatoria', 186, 'cloth_1.jpg', 34, 1, 'XL', 'Blue'),
(35, 'Producto 31', 'Esta es una descripcion aleatoria', 864, 'cloth_1.jpg', 50, 1, 'XL', 'Blue'),
(36, 'Producto 32', 'Esta es una descripcion aleatoria', 494, 'cloth_1.jpg', 43, 1, 'XL', 'Blue'),
(37, 'Producto 33', 'Esta es una descripcion aleatoria', 899, 'cloth_1.jpg', 62, 1, 'XL', 'Blue'),
(38, 'Producto 34', 'Esta es una descripcion aleatoria', 639, 'cloth_1.jpg', 93, 1, 'XL', 'Blue'),
(39, 'Producto 35', 'Esta es una descripcion aleatoria', 925, 'cloth_1.jpg', 65, 1, 'XL', 'Blue'),
(40, 'Producto 36', 'Esta es una descripcion aleatoria', 957, 'cloth_1.jpg', 95, 1, 'XL', 'Blue'),
(41, 'Producto 37', 'Esta es una descripcion aleatoria', 187, 'cloth_1.jpg', 12, 1, 'XL', 'Blue'),
(42, 'Producto 38', 'Esta es una descripcion aleatoria', 930, 'cloth_1.jpg', 57, 1, 'XL', 'Blue'),
(43, 'Producto 39', 'Esta es una descripcion aleatoria', 417, 'cloth_1.jpg', 83, 1, 'XL', 'Blue'),
(44, 'Producto 40', 'Esta es una descripcion aleatoria', 47, 'cloth_1.jpg', 58, 1, 'XL', 'Blue'),
(45, 'Producto 41', 'Esta es una descripcion aleatoria', 577, 'cloth_1.jpg', 43, 1, 'XL', 'Blue'),
(46, 'Producto 42', 'Esta es una descripcion aleatoria', 446, 'cloth_1.jpg', 37, 1, 'XL', 'Blue'),
(47, 'Producto 43', 'Esta es una descripcion aleatoria', 203, 'cloth_1.jpg', 12, 1, 'XL', 'Blue'),
(48, 'Producto 44', 'Esta es una descripcion aleatoria', 58, 'cloth_1.jpg', 88, 1, 'XL', 'Blue'),
(49, 'Producto 45', 'Esta es una descripcion aleatoria', 922, 'cloth_1.jpg', 93, 1, 'XL', 'Blue'),
(50, 'Producto 46', 'Esta es una descripcion aleatoria', 515, 'cloth_1.jpg', 71, 1, 'XL', 'Blue'),
(51, 'Producto 47', 'Esta es una descripcion aleatoria', 584, 'cloth_1.jpg', 56, 1, 'XL', 'Blue'),
(52, 'Producto 48', 'Esta es una descripcion aleatoria', 736, 'cloth_1.jpg', 37, 1, 'XL', 'Blue'),
(53, 'Producto 49', 'Esta es una descripcion aleatoria', 654, 'cloth_1.jpg', 10, 1, 'XL', 'Blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio`, `subtotal`) VALUES
(1, 25, 3, 5, 30, 150),
(2, 27, 2, 1, 20, 20),
(3, 29, 1, 4, 60, 240),
(4, 30, 1, 4, 60, 240),
(5, 31, 1, 1, 60, 60),
(6, 32, 1, 1, 60, 60),
(7, 33, 1, 1, 60, 60),
(8, 34, 1, 1, 60, 60),
(9, 35, 53, 1, 654, 654),
(10, 35, 3, 1, 30, 30),
(11, 36, 3, 3, 30, 90),
(12, 37, 5, 13, 251, 3263),
(13, 37, 48, 1, 58, 58),
(14, 39, 52, 1, 736, 736),
(15, 40, 51, 1, 584, 584),
(16, 42, 49, 1, 922, 922);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`) VALUES
(3, 'miguel sanjuanelo', '3006990580', 'miguelangelfersan19@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'default.jpg', 'admin'),
(5, 'maria  mares', '312222222', 'maria@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 'cliente'),
(9, 'angela santiago', '23234', 'angela@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_usuario`, `total`, `fecha`) VALUES
(1, 1, 0, '2021-02-11 10:02:08'),
(2, 1, 0, '2021-02-11 10:02:07'),
(3, 1, 0, '2021-02-11 10:02:41'),
(4, 1, 0, '2021-02-11 10:02:08'),
(5, 1, 0, '2021-02-11 10:02:53'),
(6, 1, 0, '2021-02-11 10:02:47'),
(7, 1, 0, '2021-02-11 07:02:43'),
(8, 1, 0, '2021-02-11 07:02:52'),
(9, 1, 0, '2021-02-11 07:02:50'),
(10, 1, 90, '2021-02-11 08:02:15'),
(11, 1, 90, '2021-02-11 08:02:28'),
(12, 1, 0, '2021-02-11 08:02:00'),
(13, 1, 90, '2021-02-11 08:02:02'),
(14, 1, 90, '2021-02-11 08:02:22'),
(15, 1, 90, '2021-02-11 08:02:22'),
(16, 1, 90, '2021-02-11 08:02:24'),
(17, 1, 90, '2021-02-11 08:02:42'),
(18, 1, 90, '2021-02-11 08:02:44'),
(19, 1, 90, '2021-02-11 08:02:47'),
(20, 1, 90, '2021-02-11 08:02:53'),
(21, 1, 0, '0000-00-00 00:00:00'),
(22, 1, 150, '2021-02-11 09:02:46'),
(23, 1, 150, '2021-02-11 09:02:51'),
(24, 1, 150, '2021-02-11 09:02:48'),
(25, 1, 150, '2021-02-11 09:02:11'),
(26, 1, 0, '2021-02-11 09:02:41'),
(27, 1, 20, '2021-02-11 12:02:47'),
(28, 2, 0, '2021-02-11 12:02:24'),
(29, 3, 240, '2021-02-11 12:02:11'),
(30, 4, 240, '2021-02-11 12:02:45'),
(31, 5, 60, '2021-02-11 12:02:40'),
(32, 6, 60, '2021-02-11 12:02:23'),
(33, 7, 60, '2021-02-11 12:02:28'),
(34, 8, 60, '2021-02-11 12:02:26'),
(35, 9, 684, '2021-02-12 06:02:50'),
(36, 10, 90, '2021-02-12 09:02:13'),
(37, 11, 3321, '2021-02-12 10:02:47'),
(38, 12, 0, '2021-02-12 10:02:05'),
(39, 13, 736, '2021-02-12 11:02:01'),
(40, 14, 584, '2021-02-12 07:02:51'),
(41, 15, 0, '2021-02-12 07:02:46'),
(42, 16, 922, '2021-02-12 07:02:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envios`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
