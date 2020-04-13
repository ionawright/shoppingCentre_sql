-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2020 at 03:50 PM
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
-- Table structure for table `CENTRE_IW`
--

CREATE TABLE `CENTRE_IW` (
  `CENTRE_CODE` int(11) NOT NULL,
  `CENTRE_NAME` varchar(20) NOT NULL,
  `LOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CENTRE_IW`
--

INSERT INTO `CENTRE_IW` (`CENTRE_CODE`, `CENTRE_NAME`, `LOCATION`) VALUES
(1, 'Gyle', 'Edinburgh'),
(2, 'Ocean Terminal', 'Edinburgh'),
(3, 'The Fort', 'Edinburgh'),
(4, 'Straiton', 'Edinburgh'),
(5, 'Deisgner Outlet', 'Livingston'),
(6, 'Craigshiill', 'Livingston'),
(7, 'Princes Square', 'Glasgow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CENTRE_IW`
--
ALTER TABLE `CENTRE_IW`
  ADD PRIMARY KEY (`CENTRE_CODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CENTRE_IW`
--
ALTER TABLE `CENTRE_IW`
  MODIFY `CENTRE_CODE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
