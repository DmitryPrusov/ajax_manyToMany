-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 21, 2017 at 12:15 PM
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
-- Table structure for table `questions_answers`
--

CREATE TABLE `questions_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED DEFAULT NULL,
  `expert_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email_inquirer` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions_answers`
--

INSERT INTO `questions_answers` (`id`, `theme_id`, `expert_id`, `active`, `views`, `email_inquirer`, `created_at`, `updated_at`, `published_at`) VALUES
(3, 1, 19, 1, 2, 'test@gmail.com', NULL, '2017-11-15 15:09:27', NULL),
(12, 2, 19, 0, 0, 'test777@bigmir.net', '2017-10-30 13:23:51', '2017-10-30 13:23:51', NULL),
(13, 3, 17, 0, 0, 'testing@gmail.com', '2017-10-30 13:27:45', '2017-10-30 13:27:45', NULL),
(14, 3, NULL, 0, 0, 'testing@gmail.com', '2017-10-30 13:28:20', '2017-10-30 13:28:20', NULL),
(15, 1, 30, 0, 0, 'testing@gmail.com', '2017-10-30 13:35:06', '2017-10-30 13:35:06', NULL),
(16, 2, 19, 1, 7, 'testing@bigmir.net', '2017-10-30 12:05:00', '2017-11-15 15:07:42', '2017-11-08 15:49:00'),
(17, 1, 19, 1, 3, 'test@gmail.com', NULL, '2017-11-15 09:00:36', NULL),
(18, 3, 31, 1, 27, 'test@gmail.com', NULL, '2017-11-15 16:02:56', '2017-11-02 15:47:00'),
(19, 2, NULL, 0, 0, 'test@bigmir.net', '2017-11-24 09:59:18', '2017-11-24 09:59:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions_answers`
--
ALTER TABLE `questions_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_questions_answers_theme_id_idx` (`theme_id`),
  ADD KEY `fk_questions_answers_expert_id_idx` (`expert_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions_answers`
--
ALTER TABLE `questions_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions_answers`
--
ALTER TABLE `questions_answers`
  ADD CONSTRAINT `fk_questions_answers_expert_id` FOREIGN KEY (`expert_id`) REFERENCES `experts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_questions_answers_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
