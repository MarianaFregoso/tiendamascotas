-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 24, 2019 at 07:33 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tiendamascotas`
--

-- --------------------------------------------------------

--
-- Table structure for table `especies`
--

CREATE TABLE `especies` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `especies`
--

INSERT INTO `especies` (`id`, `nombre`) VALUES
(1, 'Gato'),
(2, 'Perro'),
(3, 'Hamster'),
(4, 'Perico');

-- --------------------------------------------------------

--
-- Table structure for table `mascotas`
--

CREATE TABLE `mascotas` (
  `id` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `nacimiento` date NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mascotas`
--

INSERT INTO `mascotas` (`id`, `id_especie`, `nombre`, `precio`, `nacimiento`, `foto`) VALUES
(1, 1, 'minina', 12, '2019-01-06', ''),
(2, 2, 'firulais', 234, '2019-01-10', ''),
(3, 3, 'pepino', 12312, '2019-01-23', ''),
(4, 4, 'chimuelo', 23, '2019-01-01', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_especie` (`id_especie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `especies`
--
ALTER TABLE `especies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id`);