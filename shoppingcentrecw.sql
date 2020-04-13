-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2020 at 02:38 PM
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
-- Database: `shoppingcentrecw`
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

-- --------------------------------------------------------

--
-- Table structure for table `CENTRE_SHOP_IW`
--

CREATE TABLE `CENTRE_SHOP_IW` (
  `SHOP_NO` int(11) NOT NULL,
  `CENTRE_CODE` int(11) NOT NULL,
  `CATEGORY` enum('FASHION','ENTERTAINMENT','FOOD') DEFAULT NULL,
  `CUSTOMER_RATING` enum('1','2','3','4','5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CENTRE_SHOP_IW`
--

INSERT INTO `CENTRE_SHOP_IW` (`SHOP_NO`, `CENTRE_CODE`, `CATEGORY`, `CUSTOMER_RATING`) VALUES
(1, 1, 'FASHION', '1'),
(4, 3, 'FOOD', '4'),
(2, 5, 'FASHION', '5'),
(10, 2, 'FASHION', '2'),
(7, 1, 'ENTERTAINMENT', '2'),
(9, 7, 'FOOD', '1'),
(8, 6, 'ENTERTAINMENT', '4'),
(11, 4, 'ENTERTAINMENT', '2'),
(1, 7, 'FASHION', '2'),
(1, 6, 'FASHION', '5'),
(3, 6, 'FASHION', '1'),
(7, 6, 'ENTERTAINMENT', '4'),
(2, 4, 'FASHION', '5'),
(2, 1, 'FASHION', '1');

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
(11, 'HMV'),
(12, 'Tesco');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CENTRE_IW`
--
ALTER TABLE `CENTRE_IW`
  ADD PRIMARY KEY (`CENTRE_CODE`);

--
-- Indexes for table `CENTRE_SHOP_IW`
--
ALTER TABLE `CENTRE_SHOP_IW`
  ADD KEY `CENTRE_CENTRE_FK` (`CENTRE_CODE`),
  ADD KEY `CENTR_SHOP_FK` (`SHOP_NO`);

--
-- Indexes for table `SHOP_IW`
--
ALTER TABLE `SHOP_IW`
  ADD PRIMARY KEY (`SHOP_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CENTRE_IW`
--
ALTER TABLE `CENTRE_IW`
  MODIFY `CENTRE_CODE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `SHOP_IW`
--
ALTER TABLE `SHOP_IW`
  MODIFY `SHOP_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CENTRE_SHOP_IW`
--
ALTER TABLE `CENTRE_SHOP_IW`
  ADD CONSTRAINT `CENTRE_CENTRE_FK` FOREIGN KEY (`CENTRE_CODE`) REFERENCES `centre_iw` (`CENTRE_CODE`),
  ADD CONSTRAINT `CENTRE_SHOP_FK` FOREIGN KEY (`SHOP_NO`) REFERENCES `shop_iw` (`SHOP_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
