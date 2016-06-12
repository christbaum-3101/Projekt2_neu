-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 08. Jun 2016 um 10:27
-- Server Version: 5.5.49-0ubuntu0.14.04.1
-- PHP-Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `laravel`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `on_post` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_on_post_foreign` (`on_post`),
  KEY `comments_from_user_foreign` (`from_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Daten für Tabelle `comments`
--

INSERT INTO `comments` (`id`, `on_post`, `from_user`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'und mir daugts auch voll', '2016-06-03 13:00:19', '2016-06-03 13:00:19'),
(2, 4, 1, 'was i net', '2016-06-03 13:05:36', '2016-06-03 13:05:36'),
(3, 3, 1, 'MIAU\r\n', '2016-06-03 13:11:55', '2016-06-03 13:11:55'),
(4, 3, 1, ';(\r\n', '2016-06-03 13:12:03', '2016-06-03 13:12:03'),
(5, 3, 1, '4 ever alone\r\n', '2016-06-03 13:12:17', '2016-06-03 13:12:17'),
(6, 3, 1, 'Du findest das auch noch lustig XD', '2016-06-03 13:12:37', '2016-06-03 13:12:37'),
(7, 3, 1, 'Hast du hunga?\r\n', '2016-06-03 13:12:43', '2016-06-03 13:12:43'),
(8, 3, 1, 'Also i ned. \r\n(POPCORN HUNGA) (IMMER???)', '2016-06-03 13:13:16', '2016-06-03 13:13:16'),
(9, 3, 1, 'Meine Lehrer nerfen', '2016-06-03 13:13:35', '2016-06-03 13:13:35'),
(10, 3, 1, 'Also sie spielen mit Nerf Waffen', '2016-06-03 13:14:12', '2016-06-03 13:14:12'),
(11, 3, 1, 'De Bösche swarze Kotz liagt for mia', '2016-06-03 13:14:46', '2016-06-03 13:14:46'),
(12, 6, 2, 'warum sollte ich das tun?', '2016-06-03 18:28:05', '2016-06-03 18:28:05'),
(13, 7, 3, 'muskelkater ich hab', '2016-06-03 20:11:52', '2016-06-03 20:11:52'),
(14, 6, 3, 'i kommentier des jetzt', '2016-06-03 20:12:35', '2016-06-03 20:12:35'),
(15, 6, 3, 'kommentar', '2016-06-03 20:48:47', '2016-06-03 20:48:47'),
(16, 9, 6, 'was soll ich da noch kommentieren?', '2016-06-08 06:02:00', '2016-06-08 06:02:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `impressums`
--

CREATE TABLE IF NOT EXISTS `impressums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `impressum_title_unique` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `impressums`
--

INSERT INTO `impressums` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Profi-Profi:', 'mt141055 Magdalena Marchsteiner', NULL, NULL),
(2, 'CSS-Profi:', 'mt141092 Marlene Strasser', NULL, NULL),
(3, 'Laravel-Profi:', 'mt142003 Martina Strohmayer', NULL, NULL),
(4, 'Auftraggeber:', '/fh/// St. Pölten, Abteilung Medientechnik', NULL, NULL),
(5, 'Semester:', '4. Semester, SS2016', NULL, NULL),
(6, 'Datum:', 'Juni 2016', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_03_122706_posts', 2),
('2016_06_03_122711_comments', 2),
('2016_06_03_122926_posts', 3),
('2016_06_03_122932_comments', 3),
('2016_06_04_013212_createImpressum', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('martina@lachfotos.at', 'da65a499cc99b3e714fe7f4a64425963d8ede6d6b753ad20afb78892475dc6bf', '2016-06-03 18:23:08');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_title_unique` (`title`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_author_id_foreign` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'erster post', '<p>Ich schreibe jetzt in meinen WYSIWYG Editor einfach alles rein, was mir so daugt.</p>', 'erster-post', 1, '2016-06-03 12:57:48', '2016-06-03 12:57:48'),
(2, 1, 'ich schreib gleich einen neuen post', '<p>der daugt mir auch voll</p>', 'ich-schreib-gleich-einen-neuen-post', 1, '2016-06-03 13:02:40', '2016-06-03 13:02:40'),
(3, 1, 'meine Tochter kommt gerade', '<p>&Delta;und sie bringt was schwarzes, s&uuml;sses mit!</p>', 'meine-tochter-kommt-gerade', 1, '2016-06-03 13:04:55', '2016-06-03 13:11:48'),
(4, 1, 'Nachbaren', '<p>wo ist nur der Post hingekommen?</p>', 'nachbaren', 1, '2016-06-03 13:05:27', '2016-06-03 13:05:27'),
(5, 1, 'Hunga', '<p>I hoab sooooooo on groasen HUNGA!!!!(RAURRRRR)</p>', 'hunga', 0, '2016-06-03 13:10:29', '2016-06-03 13:10:32'),
(6, 2, 'endlich ein neuer post', '<p>is eh ok</p>', 'endlich-ein-neuer-post', 1, '2016-06-03 18:27:54', '2016-06-03 19:20:04'),
(7, 3, 'radfahren', '<p>das radfahren war ur toll</p>', 'radfahren', 1, '2016-06-03 20:11:28', '2016-06-03 20:11:28'),
(8, 3, 'yxcv', '<p>yxcvyxcv</p>', 'yxcv', 1, '2016-06-03 20:47:31', '2016-06-03 20:47:31'),
(9, 6, 'mein neuer Post als Franz', '<p>wo ist nur die Sissi geblieben?</p>\r\n<p>oh, da ist sie ja</p>', 'mein-neuer-post-als-franz', 1, '2016-06-08 06:01:03', '2016-06-08 06:01:48');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','author','subscriber') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `country`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'martina', 'martina@lachfotos.at', 'Österreich', '$2y$10$kQJB/tRIQQEg.Y7WPMjINObVMrG70UwiYQ4eMQ6//BF0Ti4XAzJ/q', 'author', NULL, '2016-06-03 12:55:26', '2016-06-03 12:55:26'),
(2, 'susi16', 'susi@susi.at', 'Österreich', '$2y$10$uMV9Ydudd4KG.qlAYDWIkueQW7kIByZEMlBfj1H6v7NcGZx8gp/K6', 'author', NULL, '2016-06-03 18:24:08', '2016-06-03 18:24:08'),
(3, 'marlene', 'marlene@gmx.at', 'Österreich', '$2y$10$joH.oph94oaM1AYHjnl1jOdA45hvEvdYJwro5q0Bu9jgKqmjE/8AK', 'author', NULL, '2016-06-03 20:11:07', '2016-06-03 20:11:07'),
(4, 'martina33', 'martina@gmx.at', 'Österreich', '$2y$10$GDYBRdjCtHi7GhRoDR/yJ.qDWDA7DZEpmA9ZSnX/gohJO6jBwHeMi', 'author', 'PdepukmKpLdtmV5N62wGoVKV2PsVuB0DORyb0hvscqf9ZGbBH6qLmgpBqLf2', '2016-06-04 00:14:58', '2016-06-04 00:47:10'),
(5, 'martina77', 'martina77@gmx.at', 'Österreich', '$2y$10$JeGsGJ./h4c1PdhfptxwOe7iDFeQSRmjnNWDvkv.pqQqUdeundnMy', 'author', 'fff4kUzaxY3GTAZU45QfI9BY3XJdAzkx3X1LGH0a52Vn6lcndQsVR47WqVF6', '2016-06-04 00:49:14', '2016-06-04 01:33:38'),
(6, 'franz', 'franz@gmx.at', 'Polen', '$2y$10$2tOsTgsJfh7z3GD4hg4p8eVFXTN5Mx79XGOEurvOgF2RJh9JjUxGm', 'author', 'xe69JD0KJddMSd7RQDgqnzVZ56uY4lD0os5hniyGnbm1D3TzJ8AKQOg3pi0b', '2016-06-08 06:00:39', '2016-06-08 06:26:30');

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_on_post_foreign` FOREIGN KEY (`on_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
