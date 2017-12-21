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
-- Table structure for table `questions_answers_translations`
--

CREATE TABLE `questions_answers_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_answer_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `question_text` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_text` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions_answers_translations`
--

INSERT INTO `questions_answers_translations` (`id`, `question_answer_id`, `locale`, `title`, `question_text`, `answer_text`, `meta_title`, `meta_keywords`, `meta_description`, `slug`) VALUES
(2, 3, 'ru', 'Заг', 'можно Вас спросить?', '<p>Конечно, можно</p>', 'заг', 'ключевые', 'слова', 'super'),
(3, 12, 'ru', 'NULL', 'test', NULL, NULL, NULL, NULL, NULL),
(4, 13, 'ru', 'NULL', 'Сколько стоит счастье?', NULL, NULL, NULL, NULL, NULL),
(5, 14, 'ru', 'NULL', 'Без выбранного эксперта', NULL, NULL, NULL, NULL, NULL),
(6, 15, 'ru', 'NULL', 'testing', NULL, NULL, NULL, NULL, NULL),
(7, 16, 'ru', 'Заг', 'test', '<p>some</p>', 'test', 'test', 'jklj', 'testing'),
(8, 17, 'ru', 'Ананас', 'Что такое \'ananas32\'?', '<p>непонятно</p>', 'test', 'test', 'descr', 'ananas'),
(9, 18, 'ru', 'Как починить кран?', 'Как починить кран?', '<p>Очень просто</p>', 'zaga-zaga', 'test test', 'test', 'kran'),
(10, 19, 'ru', 'NULL', 'Вопрос', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions_answers_translations`
--
ALTER TABLE `questions_answers_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_questions_answers_translations_question_answer_id_idx` (`question_answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions_answers_translations`
--
ALTER TABLE `questions_answers_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions_answers_translations`
--
ALTER TABLE `questions_answers_translations`
  ADD CONSTRAINT `fk_questions_answers_translations_question_answer_id` FOREIGN KEY (`question_answer_id`) REFERENCES `questions_answers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
