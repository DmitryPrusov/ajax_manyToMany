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
-- Table structure for table `expert_theme`
--

CREATE TABLE `expert_theme` (
  `expert_id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expert_theme`
--

INSERT INTO `expert_theme` (`expert_id`, `theme_id`) VALUES
(19, 1),
(30, 2),
(19, 2),
(31, 1),
(31, 2),
(31, 3),
(30, 1),
(17, 1),
(17, 3),
(11, 2),
(13, 1),
(12, 1),
(10, 2),
(4, 1),
(33, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expert_theme`
--
ALTER TABLE `expert_theme`
  ADD KEY `fk_expert_expert_id_idx` (`expert_id`),
  ADD KEY `fk_expert_theme_theme_id_idx` (`theme_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expert_theme`
--
ALTER TABLE `expert_theme`
  ADD CONSTRAINT `fk_expert_expert_id` FOREIGN KEY (`expert_id`) REFERENCES `experts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_expert_theme_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
