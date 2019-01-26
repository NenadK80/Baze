-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2018 at 04:02 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qa_geography`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `population` int(11) DEFAULT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `population`, `country_id`) VALUES
(21, 'Kairo', 1000000, 123),
(22, 'Beograd', NULL, 3),
(23, 'Jagodina', NULL, 3),
(24, 'Novi Sad', 300000, 3),
(25, 'Sarajevo', NULL, 6),
(26, 'Banjaluka', 100000, 6),
(27, 'Pariz', 5000000, 4),
(28, 'Nica', NULL, 4),
(29, 'Barselona', 3000000, 10),
(30, 'Peking', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `name`) VALUES
(1, 'Afrika'),
(2, 'Evropa'),
(3, 'Azija'),
(4, 'Severna Amerika'),
(5, 'Južna Amerika');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `continent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `continent_id`) VALUES
(1, 'Egipat', 1),
(2, 'Kongo', 1),
(3, 'Srbija', 2),
(4, 'Francuska', 222),
(5, 'Rusija', 2),
(6, 'Bosna', 2),
(7, 'Japan', 3),
(8, 'Kina', 3),
(9, 'Indija', 333),
(10, 'Španija', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
