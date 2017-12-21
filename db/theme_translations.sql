-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2017 at 01:51 PM
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
-- Table structure for table `theme_translations`
--

CREATE TABLE `theme_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `text_full` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theme_translations`
--

INSERT INTO `theme_translations` (`id`, `theme_id`, `locale`, `title`, `slug`, `text_full`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'ru', 'Огород', 'ogorod', '<p>Как посадить, как ухаживать и как выростить ту или иную огородную культуру, знают наши эксперты. Более того &ndash; они готовы ответииь на любые ваши вопросы!</p>', 'Огород', 'дача, огород, природа', 'тест тест'),
(2, 2, 'ru', 'Пшеница', 'wheat', '<p>Ведущая зерновая культура во многих странах</p>', 'Пшеница', 'зерна, мука, хлеб', 'Однолетние травянистые растения 30—150 см высотой.'),
(3, 3, 'ru', 'Ремонт', 'remont', '<p>Ремонт</p>', 'Ремонт', 'ремонт', 'ремонт - это круто'),
(4, 4, 'ru', 'Ветеринария', 'veterinariya', '<p>Вопросы по ветеринарной медицине</p>', 'Ветеринария', 'ветеринария,ветеринарная медицина', 'Вопросы ветеринарной медицины'),
(5, 5, 'ru', 'Купля-продажа недвижимости', 'kuplu-prodam-sovety-urista', '<p>Ваше жилище должно быть прочным, надежным, долговечным, теплым и уютным. А еще &ndash; правильно юридически оформленным. Покупаете или продаете недвижимость? Оформляйте её по согласно всем требованиям законодательства &ndash; это касается не только покупки-продажи квартиры или частного дома, но и земельного участка под последним. Если же у вас есть дополнительные вопросы &ndash; задавайте их нашим экспертам-юристам!</p>', 'Купля-продажа недвижимости', 'купля продажа недвижимости, как продать дом, как оформить продажу дома, как купить дом, юридическая консультация по', 'Хотите купить или продать дом либо квартиру? Не забудьте о правильно юридическом оформлении этого действия! А если у вас есть вопросы – задавайте их на сайте Superdom.ua нашим экспертам-юристам.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `theme_translations`
--
ALTER TABLE `theme_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_theme_translations_theme_id_idx` (`theme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `theme_translations`
--
ALTER TABLE `theme_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `theme_translations`
--
ALTER TABLE `theme_translations`
  ADD CONSTRAINT `fk_theme_translations_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
