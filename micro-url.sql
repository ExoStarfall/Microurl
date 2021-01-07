-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 03:33 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micro-url`
--

-- --------------------------------------------------------

--
-- Table structure for table `assoc_mc_url`
--

CREATE TABLE `assoc_mc_url` (
  `id` int(11) NOT NULL,
  `mc_id` int(11) NOT NULL,
  `url_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assoc_mc_url`
--

INSERT INTO `assoc_mc_url` (`id`, `mc_id`, `url_id`) VALUES
(1, 1, 1),
(2, 4, 2),
(3, 3, 3),
(8, 14, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mc`
--

CREATE TABLE `mc` (
  `id` int(11) NOT NULL,
  `mc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mc`
--

INSERT INTO `mc` (`id`, `mc`) VALUES
(1, 'santé'),
(2, 'poubelle'),
(3, 'Saucisse'),
(4, 'BDSM'),
(14, 'tomate');

-- --------------------------------------------------------

--
-- Table structure for table `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `shortcut` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `url`
--

INSERT INTO `url` (`id`, `url`, `shortcut`, `datetime`, `description`) VALUES
(1, 'urlmoncul', 'urlraccourcie', '2021-01-06 15:24:56', 'shit'),
(2, 'https://www.impots.gouv.fr/portail/', 'hagar.com', '2021-01-06 15:37:45', 'AIE AIE AIE '),
(3, 'www.stackoverflow.com', 'labibledudev', '2021-01-06 15:37:45', 'rfgergtryertertert'),
(6, 'www.jesaispasquoimettre.sh', 'jsp.sh', '2021-01-06 16:17:50', 'voilou');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assoc_mc_url`
--
ALTER TABLE `assoc_mc_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mc_id` (`mc_id`),
  ADD KEY `url_id` (`url_id`);

--
-- Indexes for table `mc`
--
ALTER TABLE `mc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assoc_mc_url`
--
ALTER TABLE `assoc_mc_url`
  ADD CONSTRAINT `assoc_mc_url_ibfk_1` FOREIGN KEY (`url_id`) REFERENCES `url` (`id`),
  ADD CONSTRAINT `assoc_mc_url_ibfk_2` FOREIGN KEY (`mc_id`) REFERENCES `mc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
