-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2020 at 03:53 PM
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
-- Table structure for table `CENTRE_SHOP_IW`
--

CREATE TABLE IF NOT EXISTS `CENTRE_SHOP_IW` (
  `SHOP_NO` int(11) NOT NULL,
  `CENTRE_CODE` int(11) NOT NULL,
  `CATEGORY` enum('FASHION','ENTERTAINMENT','FOOD') DEFAULT NULL,
  `CUSTOMER_RATING` enum('1','2','3','4','5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CENTRE_SHOP_IW`
--

INSERT INTO `CENTRE_SHOP_IW` (`SHOP_NO`, `CENTRE_CODE`, `CATEGORY`, `CUSTOMER_RATING`) VALUES
(1, 3, 'FASHION', '3'),
(2, 7, 'FASHION', '5'),
(4, 4, 'FOOD', '5'),
(6, 4, 'ENTERTAINMENT', NULL),
(8, 2, 'ENTERTAINMENT', '5'),
(9, 1, 'FOOD', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CENTRE_SHOP_IW`
--
ALTER TABLE `CENTRE_SHOP_IW`
  ADD KEY (`SHOP_NO`,`CENTRE_CODE`),
  ADD KEY `CENTRE_CENTRE_FK` (`CENTRE_CODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CENTRE_SHOP_IW`
--
ALTER TABLE `CENTRE_SHOP_IW`
  ADD CONSTRAINT `CENTRE_CENTRE_FK` FOREIGN KEY (`CENTRE_CODE`) REFERENCES `CENTRE_IW` (`CENTRE_CODE`),
  ADD CONSTRAINT `CENTRE_SHOP_FK` FOREIGN KEY (`SHOP_NO`) REFERENCES `SHOP_IW` (`SHOP_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;