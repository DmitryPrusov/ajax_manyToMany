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
-- Table structure for table `experts`
--

CREATE TABLE `experts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `themes` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `experts`
--

INSERT INTO `experts` (`id`, `email`, `photo`, `themes`, `phone`, `active`, `created_at`, `updated_at`) VALUES
(4, NULL, 'experts/September2017/aIMVLWoHLy11WjIwq9DCYQoTmFF9N7SPb9lK21Wv.jpeg', NULL, NULL, 0, NULL, '2017-11-02 11:25:31'),
(6, NULL, 'experts/September2017/pF075imZbq2gXqFK179mmCnYY8gY01XFqsQQMoST.jpeg', NULL, NULL, 0, NULL, '2017-10-30 16:05:11'),
(7, NULL, 'experts/September2017/pwMHB4Ax1eoOKFSmopo3dfBTYe9WXrHhK3yhTR2s.jpeg', NULL, NULL, 0, NULL, '2017-10-30 15:56:41'),
(8, NULL, 'experts/September2017/iy1Em0NmwCuJtKUwtS3nCbLx9gM4BupGo4wMEfFy.jpeg', NULL, NULL, 0, NULL, '2017-10-30 16:06:01'),
(9, NULL, 'experts/September2017/iw7UJS9zYLBgvxymrspgFBG9UnV0SXWqekneY6d4.jpeg', NULL, NULL, 0, NULL, '2017-10-30 16:04:35'),
(10, NULL, 'experts/September2017/eaCFhBTTDskamy4jBTPr94Hfo7VetuMTBRhyDHHz.jpeg', NULL, NULL, 0, NULL, '2017-11-02 11:25:01'),
(11, NULL, 'experts/September2017/erHuaiEUf2e4POLM92BVLvbgS1DYlVS9kTKQmUiY.jpeg', NULL, NULL, 0, NULL, '2017-11-02 11:23:30'),
(12, NULL, 'experts/September2017/AIHbVCAcYliLq16UZVmv5Zw7fCpXSxMwEcBcStNL.jpeg', NULL, NULL, 0, NULL, '2017-11-02 11:24:33'),
(13, NULL, 'experts/September2017/ggpSOrXew6mRGb9g9htbd4Hc9sr5snBQddRO5DMN.jpeg', NULL, NULL, 0, NULL, '2017-11-02 11:24:02'),
(14, NULL, 'experts/September2017/uAdsUWgBBerDSIufAMyFJpndp9L1xhJelm6OyW4O.jpeg', NULL, NULL, 0, NULL, '2017-10-30 16:01:09'),
(15, NULL, 'experts/October2017/q2NHEVGAXpVIj5cbHIRIIu1Fd60ewxdAHhaliSX5.jpeg', NULL, NULL, 1, NULL, '2017-10-30 21:52:29'),
(17, NULL, 'experts/September2017/xRNIvBmEZ6ewbj4sD6SxAGcdAVJGo8XVo3Xb2R4I.jpeg', NULL, NULL, 1, '2017-10-12 19:04:00', '2017-10-30 15:55:07'),
(18, NULL, 'experts/September2017/ynFIU092NwxWs3XfHmj2PqWHBd6VxxfxkXKAIJ2p.jpeg', NULL, NULL, 1, NULL, '2017-10-30 15:55:00'),
(19, NULL, 'experts/September2017/7iCvgnhKtCEsR37NOUlTYzfgWs0qE06FEbuOliVg.jpeg', NULL, NULL, 1, '2017-10-12 06:54:00', '2017-10-30 15:54:51'),
(20, NULL, 'experts/October2017/gugBxKzTOBMLIQb6HHVTQmmaNaLkk8Mt46RqZG42.jpeg', NULL, NULL, 1, '2017-10-21 11:53:24', '2017-10-30 15:53:16'),
(30, NULL, 'experts/October2017/PeLVsxvQnhlVhgMtXeXs8yVqSzQXc1JpRnoEjMmy.jpeg', NULL, NULL, 1, '2017-10-27 12:45:49', '2017-10-30 15:54:25'),
(31, NULL, 'experts/October2017/RfKifVt5QyVPpA65oEtwPSdgqqxNGtIQJRsEhp1z.jpeg', NULL, NULL, 1, '2017-10-29 09:47:35', '2017-10-30 15:53:04'),
(33, NULL, 'experts/November2017/iM6iYRJtLg4H7P41gwxuDs0Cci7qsxgwPqpqfj50.jpeg', NULL, NULL, 1, '2017-11-05 14:11:06', '2017-11-05 14:11:06'),
(35, NULL, 'experts/November2017/vyUXNA5dA0CbCS8N9kDm3wJguZmy6EZK1noFbQTg.jpeg', NULL, NULL, 1, '2017-11-08 16:24:40', '2017-11-12 11:57:23'),
(36, NULL, 'experts/November2017/2w8DyF0X6yu7FxOCzxJ5GTUCFdjr6BnafjhhRhbL.jpeg', NULL, NULL, 1, '2017-11-12 12:03:57', '2017-11-12 12:03:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experts`
--
ALTER TABLE `experts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
