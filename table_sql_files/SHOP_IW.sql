-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2020 at 03:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SHOPPING_CENTRE_IW`
--

-- --------------------------------------------------------

--
-- Table structure for table `SHOP_IW`
--

CREATE TABLE `SHOP_IW` (
  `SHOP_NO` int(11) NOT NULL,
  `SHOP_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SHOP_IW`
--

INSERT INTO `SHOP_IW` (`SHOP_NO`, `SHOP_NAME`) VALUES
(1, 'Boots'),
(2, 'Zara'),
(3, 'TopShop'),
(4, 'Nandos'),
(5, 'FiveGuys'),
(6, 'PC World'),
(7, 'Disney'),
(8, 'Cineworld'),
(9, 'PizzaHut'),
(10, 'H&M'),
(11, 'HMV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SHOP_IW`
--
ALTER TABLE `SHOP_IW`
  ADD PRIMARY KEY (`SHOP_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `SHOP_IW`
--
ALTER TABLE `SHOP_IW`
  MODIFY `SHOP_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
