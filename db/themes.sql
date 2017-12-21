-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2017 at 01:50 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superdom.ua`
--

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `svg_ico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `image`, `active`, `svg_ico`) VALUES
(1, 'themes/October2017/5MLGN1ETRgiYpsng2jFVO6CYBXyNSGAOJqsQG9FT.jpeg', 1, '[{"download_link":"themes\\/October2017\\/RQkz2hWVY5fXY0lQ2OvJ.svg","original_name":"icon2.svg"}]'),
(2, 'themes/October2017/uM2bQPaGpm4KzbPui5YDpF6wyvHnevOzH4Kvnkyn.jpeg', 1, '[{"download_link":"themes\\/October2017\\/Bal7pMUr6XvdDWmbApum.svg","original_name":"icon.svg"}]'),
(3, 'themes/October2017/6P6nkTjT4lnDh9BE8LgGFqKXhRM9IpD4gjBj45Su.jpeg', 1, '[{"download_link":"themes\\/October2017\\/NDzW6bXMqwCFC3hVFsLh.svg","original_name":"icon4.svg"}]'),
(4, 'themes/November2017/3CTWnSjSaJQQrpOxV1qb1qDU5lyrTAfu94pkqjgM.jpeg', 0, NULL),
(5, 'themes/November2017/LC5i0FKButGbrAQQSkbjP6L9MoXUZNTrlS2xFKDi.jpeg', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
