-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2021 at 04:38 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patidar_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `ocupation`, `contact`, `created_at`, `updated_at`) VALUES
(2, 'Ram', 'Pathologist', '569309493', '2021-02-17 01:51:40', '2021-02-17 02:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_02_16_073845_create_patients_table', 2),
(10, '2021_02_17_070359_create_doctors_table', 3),
(11, '2021_02_17_075950_create_tests_table', 4),
(12, '2021_02_17_093657_create_parameters_table', 5),
(13, '2021_02_18_081453_add_coloumn_to_parameters_table', 6),
(14, '2021_03_08_050450_create_reports_table', 7),
(15, '2021_03_10_101100_add_first_item_and_second_item_and_next_item_to_users', 8),
(16, '2021_03_15_074814_add_parameter_data_to_reports', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('15f262e42ed4110debd99c1160acba0f7aa38996b4d48a2762033957b85ec68489b0c48487d29d97', 2, 1, 'authToken', '[]', 0, '2021-02-04 06:35:45', '2021-02-04 06:35:45', '2022-02-04 12:05:45'),
('c75db623d4442d91224b04ef9c612b99da150aeb09be8441ee6d797eb8eb6f1edfa974a7059c03a5', 2, 1, 'authToken', '[]', 0, '2021-02-04 07:04:21', '2021-02-04 07:04:21', '2022-02-04 12:34:21'),
('54a36c0be389c2439016fbb2e39c80bb4942d194274073001103b0808fe8a011866aa49b242db1fa', 3, 1, 'authToken', '[]', 0, '2021-02-05 01:25:38', '2021-02-05 01:25:38', '2022-02-05 06:55:38'),
('4599f2151c86bffb3e2581a566f6eeec8eccf347f88e08f7ed32f2003da17c6490c6b77f847496d6', 3, 1, 'authToken', '[]', 0, '2021-02-05 01:27:13', '2021-02-05 01:27:13', '2022-02-05 06:57:13'),
('037ee903cfbb26444cf33bb266f6911601143cfd3ff38e83694fe14dec578d886fda0118a856e132', 3, 1, 'authToken', '[]', 0, '2021-02-05 02:03:05', '2021-02-05 02:03:05', '2022-02-05 07:33:05'),
('41e797c787a58aa5bdb232f24329ed47b1c3d59d07d48435b686a01522d3e5a91314fc5009bb2429', 4, 1, 'authToken', '[]', 0, '2021-02-05 04:50:21', '2021-02-05 04:50:21', '2022-02-05 10:20:21'),
('5f491097fd4e0c1cfc655f06d4332a2a2ef813a85e497dcb71c42346a4468dc29a5e42c2fbc65a7e', 5, 1, 'authToken', '[]', 0, '2021-02-15 07:18:43', '2021-02-15 07:18:43', '2022-02-15 12:48:43'),
('7e6b7f58fca268cafe1fc4e97a8ac338206108f8dcec9ac2f1e550142d02f3b7607c756985d83c2d', 5, 1, 'authToken', '[]', 0, '2021-02-15 07:19:42', '2021-02-15 07:19:42', '2022-02-15 12:49:42'),
('7e793a8bd09681e8f4fa96db92f85aeb4dc0f2a8fe64f836fa09802ce26c324d861f69553cc2156d', 6, 1, 'authToken', '[]', 0, '2021-02-15 07:24:20', '2021-02-15 07:24:20', '2022-02-15 12:54:20'),
('b767b1b2956b0e89b9a1669139486950355f67e561f0d72ca6afa9bd75c3bf21e590a411deb9e8ac', 6, 1, 'authToken', '[]', 0, '2021-02-15 07:25:30', '2021-02-15 07:25:30', '2022-02-15 12:55:30'),
('1c1e00507be81d70829d036ade2ba4eee92503c4ab17bf41a36127e30ac6e69faa65b86c66f776dd', 7, 1, 'authToken', '[]', 0, '2021-02-16 01:46:38', '2021-02-16 01:46:38', '2022-02-16 07:16:38'),
('cd8ac364caa5646b062792bb438d0cdd5fdf5954131fdbffc038437db1a234ad98e8319d474a8ec3', 7, 1, 'authToken', '[]', 0, '2021-02-16 01:47:06', '2021-02-16 01:47:06', '2022-02-16 07:17:06'),
('799899ca41c3fe87c708be3c16f2092c2c22d65b51b981dc585b96626fd5b6c3abe61d0f0d704002', 7, 1, 'authToken', '[]', 0, '2021-02-16 01:47:52', '2021-02-16 01:47:52', '2022-02-16 07:17:52'),
('4ab86c59f0b34cfda667abe0bd11826fe0abd618d3eb20e778fb1f0cd260eba23182d874462a16c3', 7, 1, 'authToken', '[]', 0, '2021-02-16 02:00:47', '2021-02-16 02:00:47', '2022-02-16 07:30:47'),
('8472322b6edc1c5db670e12a2cdd84998024663010dac806f3ebcd0017584bd81bd0b665b33a0726', 7, 1, 'authToken', '[]', 0, '2021-02-16 02:03:25', '2021-02-16 02:03:25', '2022-02-16 07:33:25'),
('d45d524ad10fd2711e8f70158579583b2d335942b27e0c1159798ac1328fd67d8f6fa6c14930ec3c', 8, 1, 'authToken', '[]', 0, '2021-02-16 07:16:36', '2021-02-16 07:16:36', '2022-02-16 12:46:36'),
('aa4e8dee7e70dfa8e33d11a556b303821e4ba9c3145df0cdf88d7a05c5dbbc662c46b9a19ec8ba9e', 8, 1, 'authToken', '[]', 0, '2021-02-16 07:18:13', '2021-02-16 07:18:13', '2022-02-16 12:48:13'),
('906651b9ccc76584883a38c30f3171665daf2fe2e10159faad6487516fdd2e5656c4402e2090c1ff', 8, 1, 'authToken', '[]', 0, '2021-02-16 23:33:26', '2021-02-16 23:33:26', '2022-02-17 05:03:26'),
('33b3435ac6b26e04454f9fc3830d77d478e5da58bae10d93703a023590116043142fdc1e3734c9d4', 1, 1, 'authToken', '[]', 0, '2021-02-16 23:49:32', '2021-02-16 23:49:32', '2022-02-17 05:19:32'),
('34d4f06d5129601d6b613415c1ad862321425ae0f7a911f8ed45760ec1932013fa37a609cd5a03fe', 8, 1, 'authToken', '[]', 0, '2021-02-17 00:37:38', '2021-02-17 00:37:38', '2022-02-17 06:07:38'),
('882c4c8c3d868f0beeaee2d388a030e87c81f670ae1b5af8cff11078f665f2acd0887083430b7843', 9, 1, 'authToken', '[]', 0, '2021-02-17 00:38:40', '2021-02-17 00:38:40', '2022-02-17 06:08:40'),
('0bf3b8aa49bcb0eedc2c8e657d12655351203d7b7417ff8a87be3b8673e7d94d8f1831140e5afefa', 8, 1, 'authToken', '[]', 0, '2021-02-17 04:58:43', '2021-02-17 04:58:43', '2022-02-17 10:28:43'),
('f1ab12e88911c1cb41fadecb4713d7c005cf42394c726fbacbf7be2a568c36659531eebe3ed2d204', 8, 1, 'authToken', '[]', 0, '2021-02-17 05:01:18', '2021-02-17 05:01:18', '2022-02-17 10:31:18'),
('26d30d0987fe848663db14892e59bb68ed46ef8c5d240458a192b169fa9126afdf1a4e4b24e73c6b', 8, 1, 'authToken', '[]', 0, '2021-02-20 05:24:19', '2021-02-20 05:24:19', '2022-02-20 10:54:19'),
('b9977508cfb8edf5c229dd8964f9444e9c80441706085f4caab4b810f2f3b04fff8ce0c5231d4953', 8, 1, 'authToken', '[]', 0, '2021-02-20 05:24:49', '2021-02-20 05:24:49', '2022-02-20 10:54:49'),
('098119345a12034926d499fb8d17dc77a082cffe26b25a5a9d6a0485320e87be141b1d6299a357e9', 10, 1, 'authToken', '[]', 0, '2021-02-22 05:01:13', '2021-02-22 05:01:13', '2022-02-22 10:31:13'),
('b599522dccd2903026131ea4aca27b9aa9c01f64bef0a72b25003deac99a300f6e3dae14177cd51e', 11, 1, 'authToken', '[]', 0, '2021-02-22 05:04:16', '2021-02-22 05:04:16', '2022-02-22 10:34:16'),
('663866b390052a4f440573507ef7d72c9104221f1c5c419e7b10030156f4be47ef0160041dfe716f', 12, 1, 'authToken', '[]', 0, '2021-02-22 05:04:47', '2021-02-22 05:04:47', '2022-02-22 10:34:47'),
('10fa79c415d01f8a0c71892cb8e31f6e9eace2c5d7d69bb6fe6c0964747098284cff816037aa1e15', 13, 1, 'authToken', '[]', 0, '2021-02-22 05:43:58', '2021-02-22 05:43:58', '2022-02-22 11:13:58'),
('f29e9b2aca344959812695d22c1bfb96bd626f8ea135def9339fa11f35bd7f332e57ab16477537a5', 14, 1, 'authToken', '[]', 0, '2021-02-22 05:44:47', '2021-02-22 05:44:47', '2022-02-22 11:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7k718GSVmilNDQFJYsfQxqSi9FB9SvuW7PErUEUP', NULL, 'http://localhost', 1, 0, 0, '2021-02-04 06:24:24', '2021-02-04 06:24:24'),
(2, NULL, 'Laravel Password Grant Client', 'VSdGzpvq3MyhJWEXGT4P1MoagFABEweG107ORy0o', 'users', 'http://localhost', 0, 1, 0, '2021-02-04 06:24:24', '2021-02-04 06:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-04 06:24:24', '2021-02-04 06:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
CREATE TABLE IF NOT EXISTS `parameters` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parameter_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_range` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_range` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parameters_test_id_foreign` (`test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `parameter_name`, `unit`, `min_range`, `max_range`, `created_at`, `updated_at`, `test_id`) VALUES
(1, 'SGOT', 'mg', '5', '40', '2021-02-17 04:28:33', '2021-02-17 04:28:33', 0),
(2, 'rubin', 'IL', '1', '3', '2021-02-17 04:29:34', '2021-02-17 04:32:59', 0),
(4, 'Billrubin', 'IL', '0', '3', '2021-02-18 02:52:03', '2021-02-18 02:52:03', 1),
(6, 'rubin', 'mg', '1.4', '2.5', '2021-02-18 04:42:55', '2021-02-18 04:42:55', 6),
(7, 'lubin', 'mg', '0.4', '2.5', '2021-02-18 04:46:25', '2021-02-18 04:46:25', 7),
(8, 'zubin', 'mg', '0.4', '2.5', '2021-02-18 04:48:41', '2021-02-18 04:48:41', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('patidarmohan59@gmail.com', '$2y$10$cFd.BX1kUN4LINoJVpLqh.UHD0uW4nrBhqDNm/jTtnvmVhxKunXa6', '2021-02-15 07:20:09'),
('5mahankal9@gmail.com', '$2y$10$FVVdBFcOZRbkU/eBZcYI6OuTVJiZDnk1jNaMGjIYQc09pZyepHmhG', '2021-02-15 07:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `prefix`, `first_name`, `middle_name`, `last_name`, `gender`, `age`, `contact`, `address`, `patient_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 'Monu', NULL, 'Agrawal', 'M', '25', '54740749705', 'Rampur', 'PA1022', NULL, '2021-02-16 02:50:59', '2021-02-16 06:54:14'),
(2, 'Mr.', 'Balmukund', NULL, 'Patidar', 'Male', '25', '8305482009', 'Petlawad', 'PA102', NULL, '2021-02-16 02:51:52', '2021-02-16 02:51:52'),
(4, 'Mrs.', 'Anshulp', NULL, 'Agrawal', 'M', '25', '54740749705', 'Rampur', 'PA1022', NULL, '2021-02-16 05:46:33', '2021-02-16 06:47:58'),
(5, 'Mrs.', 'Anita', NULL, 'Agrawal', 'F', '25', '54740749705', 'Rampur', 'PA1023', NULL, '2021-02-16 06:53:58', '2021-02-16 06:53:58'),
(6, 'Mrs.', 'Anita', NULL, NULL, NULL, '25', '54740749705', NULL, 'PA201', 'adi123@gmail.com', '2021-02-17 01:05:30', '2021-02-17 01:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `patients_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parameter_data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_patients_id_foreign` (`patients_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `patients_id`, `name`, `test`, `created_at`, `updated_at`, `parameter_data`) VALUES
(2, 2, 'Mr. Ravi', 'WBC', '2021-03-08 00:24:17', '2021-03-08 00:24:17', NULL),
(3, 5, 'Mr. Ravi', '[\"WBC\",\"erp\"]', '2021-03-08 00:55:41', '2021-03-08 00:55:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `test_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Urea', '250', '2021-02-17 02:47:34', '2021-02-17 02:47:34'),
(5, 'CBC', '345', '2021-02-18 04:39:17', '2021-02-18 04:39:17'),
(3, 'WBC', '250', '2021-02-17 02:48:12', '2021-02-17 02:48:12'),
(4, 'blood cell', '250', '2021-02-17 02:49:13', '2021-02-18 01:46:10'),
(6, 'CBC', '345', '2021-02-18 04:42:55', '2021-02-18 04:42:55'),
(7, 'Cdc', '345', '2021-02-18 04:46:25', '2021-02-18 04:46:25'),
(8, 'ffg', '435', NULL, NULL),
(9, 'ffg', '435', NULL, NULL),
(10, 'Cdc', '500', '2021-02-18 04:48:41', '2021-02-18 04:48:41'),
(11, 'Cdc', '500', '2021-02-18 05:31:27', '2021-02-18 05:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `occupation`, `dob`, `contact_no`) VALUES
(1, 'Mr. Nilesh', 'ptdr@123gmail.com', NULL, '$2y$10$x.r.tjc.ifIbtJdEspP4CuS4WhkihnS9Ol2GudifRO2147L699WmG', NULL, '2021-02-04 05:40:26', '2021-03-10 04:54:51', 'MD', '12-02-2021', '3436346366'),
(2, 'Admin', 'patidar45@gmail.com', NULL, '$2y$10$EvKAJOK/BaMX41JUujvjpuKo4Vt2/CL0eAwDYk6qUSAD2dGSv0o/C', NULL, '2021-02-04 06:35:45', '2021-02-04 06:35:45', NULL, NULL, NULL),
(3, 'Admin', 'patidarmohan59@gmail.com', NULL, '$2y$10$bp2U5uJzaomlGdo69ouacexq1agtEglwVlprtGJ2LCSf0NV1lNmRS', 'aKLLhETedz8Q4VutPi3w5L8YAa94hjlCL925GVhM4mUDtQtZM0T8vYz28g2b', '2021-02-05 01:25:37', '2021-02-05 02:02:29', NULL, NULL, NULL),
(4, 'Admin', 'john59@gmail.com', '2021-02-05 04:54:58', '$2y$10$bIy7krInozmOh0O3sOwbTeFkMhtlCG2rPuXwagookuTcrNlb/r1GK', NULL, '2021-02-05 04:50:21', '2021-02-05 04:54:58', NULL, NULL, NULL),
(5, 'Admin', 'john591@gmail.com', NULL, '$2y$10$OXmeQWty7FBAgVc80vuYDupMknXzb4/VQ.WM0xd0eSZ005I/yQgmC', NULL, '2021-02-15 07:18:43', '2021-02-15 07:18:43', NULL, NULL, NULL),
(6, 'Mohan', '5mahankal9@gmail.com', NULL, '$2y$10$eDKmCwXyKp4MoM8IOklrkuYvJcvZItrzdWqmvFO4zralRbvNqzu12', NULL, '2021-02-15 07:24:20', '2021-02-15 07:24:20', NULL, NULL, NULL),
(7, 'Mohan', 'kali9@gmail.com', NULL, '$2y$10$OJuxIlMq/TLPpnBV5WMgnOCVcLnl8/pJ9eaGnfR9m6Xe5v6HTx/eK', NULL, '2021-02-16 01:46:38', '2021-02-16 01:46:38', NULL, NULL, NULL),
(8, 'Admin', 'admin123@gmail.com', NULL, '$2y$10$TQ5jq2aZ5mUKhR3.QVN5v.CznAQoVm1UagjBjy5zxomJCllOxfhSa', NULL, '2021-02-16 07:16:36', '2021-02-16 07:16:36', NULL, NULL, NULL),
(9, 'Admin', 'patel123@gmail.com', NULL, '$2y$10$h5EBoZaddxxSNtutdERIdubvHnv.XlHXnUqC.AJxg8U1UGBGZ7xli', NULL, '2021-02-17 00:38:40', '2021-02-17 00:38:40', NULL, NULL, NULL),
(10, 'Admin', 'test123@gmail.com', NULL, '$2y$10$WS6AApSeOJo.IxwKaXKlJOhhW2SS2oEInfumXJOEfO8JCyX6l6c9a', NULL, '2021-02-22 05:01:12', '2021-02-22 05:01:12', NULL, NULL, NULL),
(11, 'baludgfssg', 'test@gmail.com', NULL, '$2y$10$R9ftnHGwtNuSqKqsnb2UM.peFgTr9w5yZrOyyT6RFi..6yNy.EFxq', NULL, '2021-02-22 05:04:15', '2021-02-22 05:04:15', NULL, NULL, NULL),
(12, 'Admin', 'test1@gmail.com', NULL, '$2y$10$bRlJJom5HPtMmEi65gEb6.wyfamo/m45asfECytHOHdAUiNJbn8La', NULL, '2021-02-22 05:04:47', '2021-02-22 05:04:47', NULL, NULL, NULL),
(13, 'Mohan', 'afagd@gmail.com', NULL, '$2y$10$Dul0dxEICXfRiwG1X6SNK.CkVd9mNL7o2yJD3RJ3swC84.xG5yDRq', NULL, '2021-02-22 05:43:58', '2021-02-22 05:43:58', NULL, NULL, NULL),
(14, 'Mohan', 'afag@gmail.com', NULL, '$2y$10$jcCNcGrCJJNphSL06DRWiutFXxwhygJ0.yZRwdIVa4/Nj31KQqLBa', NULL, '2021-02-22 05:44:47', '2021-02-22 05:44:47', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
