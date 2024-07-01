-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student-management-gagol`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_30_171539_create_students_table', 1),
(6, '2024_06_30_171547_create_subjects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` enum('MALE','FEMALE') NOT NULL,
  `address` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `birthdate`, `sex`, `address`, `year`, `course`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Brooke', 'Stracke', '2007-08-09', 'MALE', '449 Eleazar Bridge Suite 225\nSouth Markhaven, MS 34957-9662', 4, 'minima', 'u', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(2, 'Barry', 'Johns', '1978-05-02', 'FEMALE', '61026 Hilpert Ridges Apt. 304\nNew Brandynberg, NJ 40972', 1, 'facere', 'q', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(3, 'Herman', 'Willms', '2005-05-21', 'FEMALE', '607 Ayla Brooks\nSouth Lindsey, GA 34255', 2, 'non', 'z', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(4, 'Craig', 'Ernser', '2010-09-14', 'FEMALE', '74685 Crist Parks Apt. 466\nNorth Kailynbury, RI 25029-3289', 2, 'exercitationem', 'j', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(5, 'Jacques', 'Denesik', '2009-02-24', 'MALE', '1000 Augustus Mews Suite 823\nPurdyville, MN 72423', 2, 'ut', 'k', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(6, 'Duane', 'O\'Keefe', '2000-03-12', 'MALE', '42574 Miller Alley Apt. 024\nNorth Ashlynnville, WI 16033-8792', 4, 'enim', 'v', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(7, 'Delta', 'Schroeder', '2011-06-10', 'FEMALE', '73366 Kristian Route Suite 787\nWolffort, AR 18270-7680', 3, 'facere', 'u', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(8, 'Koby', 'Schuster', '1972-08-08', 'MALE', '200 Lucile Fort\nLoweland, NC 45068-7907', 3, 'atque', 's', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(9, 'Leanna', 'Watsica', '2017-09-08', 'FEMALE', '486 Hirthe Knolls\nWunschland, MS 27370-7148', 4, 'reprehenderit', 'f', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(10, 'Zelda', 'Kunde', '1988-08-10', 'MALE', '16152 Bart Gardens\nNew Carlifurt, NH 32468-4529', 1, 'animi', 'u', '2024-07-01 04:06:59', '2024-07-01 04:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `instructor` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `grades` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`grades`)),
  `average_grade` double NOT NULL,
  `remarks` enum('PASSED','FAILED') NOT NULL,
  `date_taken` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `student_id`, `subject_code`, `name`, `description`, `instructor`, `schedule`, `grades`, `average_grade`, `remarks`, `date_taken`, `created_at`, `updated_at`) VALUES
(1, 1, 'jkw-694', 'vel cumque commodi', 'Et veniam adipisci odio voluptatum inventore cumque aperiam.', 'Baylee Hayes', 'Tuesday 17:50:43', '{\"prelims\":1.35,\"midterms\":1.3,\"pre_finals\":4.62,\"finals\":4.8}', 3.0175, 'PASSED', '1986-12-12', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(2, 1, 'fhf-640', 'voluptatem sit pariatur', 'Et neque cupiditate voluptas dicta quis accusamus.', 'Prof. Keegan Prohaska', 'Tuesday 01:11:06', '{\"prelims\":4.15,\"midterms\":4.66,\"pre_finals\":1.45,\"finals\":3.75}', 3.5025, 'PASSED', '2000-10-08', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(3, 1, 'vpi-195', 'quidem et aut', 'Aut provident et rem corrupti exercitationem eum.', 'Dr. Kadin Weimann', 'Saturday 16:09:10', '{\"prelims\":2.62,\"midterms\":2.92,\"pre_finals\":4.81,\"finals\":4.47}', 3.705, 'PASSED', '2011-12-28', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(4, 1, 'tlf-783', 'deleniti sequi commodi', 'Ea quo et laudantium totam.', 'Prof. Alia Hahn DDS', 'Sunday 03:54:02', '{\"prelims\":4.96,\"midterms\":3.37,\"pre_finals\":2.59,\"finals\":1.91}', 3.2075, 'PASSED', '1998-04-15', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(5, 1, 'krq-712', 'expedita consequatur reiciendis', 'Sed et eos dolorum deleniti sapiente et.', 'Oren Wyman', 'Saturday 10:15:12', '{\"prelims\":1.25,\"midterms\":1.16,\"pre_finals\":2.49,\"finals\":3.56}', 2.115, 'FAILED', '1985-08-31', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(6, 2, 'xch-141', 'asperiores quia odio', 'Id tempora non saepe quasi consectetur.', 'Isobel Williamson', 'Wednesday 10:13:33', '{\"prelims\":3.99,\"midterms\":2.97,\"pre_finals\":4.55,\"finals\":2.67}', 3.545, 'PASSED', '1991-02-21', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(7, 2, 'yxb-180', 'et et architecto', 'Dignissimos quas deleniti quaerat consequatur cupiditate nobis facere.', 'Rhett Collier MD', 'Tuesday 20:38:30', '{\"prelims\":2.26,\"midterms\":1.72,\"pre_finals\":3.73,\"finals\":2.7}', 2.6025, 'FAILED', '1996-10-30', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(8, 2, 'jhk-989', 'sint voluptatibus occaecati', 'Qui qui corrupti et voluptas.', 'Dr. Marilou Erdman Jr.', 'Thursday 14:57:51', '{\"prelims\":3.71,\"midterms\":1.66,\"pre_finals\":4.61,\"finals\":4}', 3.495, 'PASSED', '1988-08-06', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(9, 2, 'sga-696', 'dolorem nemo amet', 'Velit quasi consequatur voluptas est ipsa rem ipsam.', 'Leonie Braun', 'Saturday 06:54:23', '{\"prelims\":4.6,\"midterms\":1.89,\"pre_finals\":3.49,\"finals\":2.68}', 3.165, 'PASSED', '1972-09-18', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(10, 2, 'dpf-245', 'rerum ut illo', 'Eos cupiditate doloremque dignissimos ipsum id quos.', 'Kiera Kiehn', 'Saturday 18:46:29', '{\"prelims\":2.66,\"midterms\":2.75,\"pre_finals\":2.99,\"finals\":4.22}', 3.155, 'PASSED', '1983-02-05', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(11, 3, 'nhh-068', 'natus nobis sunt', 'Ea omnis modi illum officia et voluptatem distinctio.', 'Miss Viva Fisher Jr.', 'Friday 10:28:08', '{\"prelims\":3.35,\"midterms\":3.22,\"pre_finals\":4.03,\"finals\":3.13}', 3.4325, 'PASSED', '1984-03-29', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(12, 3, 'ubf-115', 'autem ad nulla', 'Qui odit temporibus laboriosam est iste ratione.', 'Rosalinda Sanford', 'Monday 04:04:38', '{\"prelims\":4.58,\"midterms\":1.63,\"pre_finals\":4.04,\"finals\":4.15}', 3.6, 'PASSED', '2022-03-14', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(13, 3, 'lzv-889', 'sed nobis rerum', 'Odit nihil animi non quibusdam voluptatem nihil natus.', 'Mr. Rigoberto Hilpert', 'Wednesday 15:31:51', '{\"prelims\":2.79,\"midterms\":1.06,\"pre_finals\":2.82,\"finals\":1.04}', 1.9275, 'FAILED', '1974-06-01', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(14, 3, 'tyj-740', 'sit quia temporibus', 'Ex sapiente recusandae alias et id.', 'Walton Powlowski', 'Friday 14:20:43', '{\"prelims\":3.23,\"midterms\":2.31,\"pre_finals\":4.56,\"finals\":3.21}', 3.3275, 'PASSED', '1999-10-12', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(15, 3, 'wbe-548', 'enim eos inventore', 'Ex quia vitae cumque dolorum ducimus voluptatem.', 'Marisa Zulauf', 'Thursday 18:04:36', '{\"prelims\":1.52,\"midterms\":2.16,\"pre_finals\":4.81,\"finals\":4.08}', 3.1425, 'PASSED', '1985-03-03', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(16, 4, 'pme-099', 'nam non aut', 'Voluptatum quidem laborum beatae iure dolorem ducimus rerum.', 'Dr. Alexzander Nader I', 'Sunday 11:44:21', '{\"prelims\":4.98,\"midterms\":1.4,\"pre_finals\":4.39,\"finals\":4.12}', 3.7225, 'PASSED', '2023-09-21', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(17, 4, 'dsr-009', 'est temporibus quasi', 'Recusandae tenetur officia modi voluptatibus id.', 'Quinton Turcotte', 'Thursday 17:15:07', '{\"prelims\":1.56,\"midterms\":2.07,\"pre_finals\":4.7,\"finals\":4.17}', 3.125, 'PASSED', '2005-05-01', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(18, 4, 'nwu-695', 'voluptatem illum voluptatem', 'Sint ea cupiditate modi.', 'Mrs. Joelle Watsica III', 'Saturday 22:18:55', '{\"prelims\":2.47,\"midterms\":2.29,\"pre_finals\":1.01,\"finals\":3.69}', 2.365, 'FAILED', '1986-09-19', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(19, 4, 'jzs-730', 'ipsam ratione et', 'Et voluptas et sed sunt nulla.', 'Dr. Erwin D\'Amore MD', 'Wednesday 15:55:07', '{\"prelims\":4.05,\"midterms\":3.16,\"pre_finals\":1.58,\"finals\":3.47}', 3.065, 'PASSED', '2011-01-26', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(20, 4, 'ilf-258', 'voluptas excepturi illum', 'Iure quam et cum similique voluptas voluptas.', 'Jorge Muller', 'Saturday 04:10:22', '{\"prelims\":1.37,\"midterms\":4.08,\"pre_finals\":2.19,\"finals\":1.39}', 2.2575, 'FAILED', '2023-01-27', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(21, 5, 'gux-277', 'placeat quidem adipisci', 'Repellendus porro aut mollitia reiciendis.', 'Philip Sauer Sr.', 'Tuesday 20:15:30', '{\"prelims\":4,\"midterms\":4.1,\"pre_finals\":2.56,\"finals\":3.93}', 3.6475, 'PASSED', '1998-10-29', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(22, 5, 'lwl-074', 'velit cupiditate possimus', 'Voluptates et deleniti voluptatem corporis labore et cumque soluta.', 'Ava Metz', 'Sunday 21:11:26', '{\"prelims\":3.11,\"midterms\":2.36,\"pre_finals\":1.76,\"finals\":1.22}', 2.1125, 'FAILED', '1987-01-02', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(23, 5, 'vao-819', 'ut et et', 'Molestiae architecto ducimus dicta ad.', 'Sydnie Fahey', 'Wednesday 05:24:23', '{\"prelims\":2.65,\"midterms\":2.85,\"pre_finals\":2.32,\"finals\":3.63}', 2.8625, 'FAILED', '2006-11-02', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(24, 5, 'irr-268', 'alias et sunt', 'Natus et id sit beatae repellat accusamus.', 'Hoyt Cruickshank', 'Tuesday 11:35:29', '{\"prelims\":3.81,\"midterms\":1.46,\"pre_finals\":2.39,\"finals\":3.52}', 2.795, 'FAILED', '1971-10-31', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(25, 5, 'nya-970', 'eligendi nemo eos', 'Ut omnis est saepe sed earum soluta et.', 'Mr. Amparo Stracke', 'Saturday 01:14:56', '{\"prelims\":4.17,\"midterms\":1.12,\"pre_finals\":1.11,\"finals\":2.54}', 2.235, 'FAILED', '1972-02-25', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(26, 6, 'xym-205', 'labore atque numquam', 'Rerum placeat aut minima labore commodi tenetur.', 'Shanie Bergstrom', 'Monday 15:50:58', '{\"prelims\":1.42,\"midterms\":3.2,\"pre_finals\":2.18,\"finals\":1.99}', 2.1975, 'FAILED', '1982-11-17', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(27, 6, 'huq-995', 'nemo tempora ut', 'Quidem et repellat et ratione quas alias voluptatem blanditiis.', 'Elouise Kohler', 'Sunday 12:55:42', '{\"prelims\":3.74,\"midterms\":3.43,\"pre_finals\":4.05,\"finals\":4.52}', 3.935, 'PASSED', '2003-05-17', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(28, 6, 'sij-036', 'eveniet est quos', 'Commodi et et ea placeat.', 'Brisa Carroll', 'Thursday 14:56:12', '{\"prelims\":2.29,\"midterms\":3.94,\"pre_finals\":4.08,\"finals\":4.37}', 3.67, 'PASSED', '1979-11-14', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(29, 6, 'gbv-485', 'rerum architecto ut', 'Aut corrupti soluta aliquid voluptatum consequuntur.', 'Serena Bode', 'Monday 17:55:51', '{\"prelims\":1.89,\"midterms\":3.52,\"pre_finals\":1.91,\"finals\":3.45}', 2.6925, 'FAILED', '2013-09-24', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(30, 6, 'lhl-788', 'amet eum inventore', 'Eos dolorem molestias delectus molestiae.', 'Marie Harris', 'Saturday 21:13:04', '{\"prelims\":4.7,\"midterms\":4.34,\"pre_finals\":2.03,\"finals\":2.17}', 3.31, 'PASSED', '2015-10-11', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(31, 7, 'vmt-291', 'a et labore', 'Soluta sint eligendi nihil reiciendis.', 'Dr. Stephan Oberbrunner II', 'Monday 05:21:49', '{\"prelims\":4.24,\"midterms\":3.37,\"pre_finals\":1.54,\"finals\":4.54}', 3.4225, 'PASSED', '1975-04-23', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(32, 7, 'qdm-365', 'et quasi illo', 'Labore et voluptatem harum tempore temporibus.', 'Salvador Lesch', 'Sunday 09:04:19', '{\"prelims\":2.77,\"midterms\":3.82,\"pre_finals\":1.4,\"finals\":4.57}', 3.14, 'PASSED', '2015-05-24', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(33, 7, 'ecp-753', 'quam voluptas ut', 'Nihil soluta earum voluptates repudiandae.', 'Eriberto Daniel', 'Friday 06:42:45', '{\"prelims\":1.84,\"midterms\":4.7,\"pre_finals\":1.54,\"finals\":2.41}', 2.6225, 'FAILED', '1999-09-05', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(34, 7, 'pxp-029', 'quae eos omnis', 'Eos at non non animi.', 'Mrs. Helga Murazik', 'Tuesday 10:39:55', '{\"prelims\":4.42,\"midterms\":4.63,\"pre_finals\":2.31,\"finals\":4.64}', 4, 'PASSED', '2004-09-16', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(35, 7, 'etx-132', 'dolorum debitis aliquid', 'Sed consequatur eos maiores illum optio et est voluptatum.', 'Dr. Seth Bechtelar PhD', 'Monday 18:03:10', '{\"prelims\":4.97,\"midterms\":2.24,\"pre_finals\":1.9,\"finals\":2.71}', 2.955, 'FAILED', '1992-04-11', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(36, 8, 'gvj-243', 'illum sit non', 'Voluptatum est repellat corporis voluptatem facilis aliquam.', 'Hassie Kutch', 'Wednesday 17:40:48', '{\"prelims\":2.33,\"midterms\":1.09,\"pre_finals\":3.42,\"finals\":4.96}', 2.95, 'FAILED', '1976-08-07', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(37, 8, 'yfl-433', 'quia autem vel', 'Asperiores illo fugiat saepe error eos.', 'Braxton Hermiston', 'Sunday 10:20:04', '{\"prelims\":2.02,\"midterms\":2.67,\"pre_finals\":3.11,\"finals\":2.73}', 2.6325, 'FAILED', '2000-01-03', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(38, 8, 'seo-883', 'consequatur fugiat eum', 'Nisi dolorum accusantium incidunt reprehenderit non excepturi.', 'Prof. Amber Pollich DVM', 'Sunday 17:32:34', '{\"prelims\":4.57,\"midterms\":1.56,\"pre_finals\":4.79,\"finals\":2.08}', 3.25, 'PASSED', '1980-12-04', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(39, 8, 'nth-696', 'dolorum et qui', 'Quidem placeat omnis voluptates vero.', 'Dr. Emmanuelle Paucek', 'Sunday 05:41:36', '{\"prelims\":4.43,\"midterms\":1.36,\"pre_finals\":1.38,\"finals\":2.85}', 2.505, 'FAILED', '2011-09-18', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(40, 8, 'wir-427', 'excepturi amet est', 'Sed suscipit facere ullam.', 'Jaycee Kovacek Jr.', 'Thursday 19:17:13', '{\"prelims\":4.14,\"midterms\":3.01,\"pre_finals\":4.13,\"finals\":3.05}', 3.5825, 'PASSED', '1974-09-04', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(41, 9, 'jdw-061', 'dolores occaecati nobis', 'Eos voluptatem consectetur atque voluptatem.', 'Mrs. Ashleigh Hill II', 'Monday 15:46:53', '{\"prelims\":2.98,\"midterms\":4.41,\"pre_finals\":1.65,\"finals\":3.65}', 3.1725, 'PASSED', '1999-03-06', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(42, 9, 'udv-829', 'quas incidunt aut', 'Laboriosam consequatur cupiditate dolor omnis blanditiis culpa.', 'Ruthie Wilderman', 'Friday 15:58:26', '{\"prelims\":4.11,\"midterms\":1.09,\"pre_finals\":1.48,\"finals\":1.21}', 1.9725, 'FAILED', '1982-07-19', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(43, 9, 'ibl-096', 'deserunt ab in', 'Est labore esse est voluptas ab officiis.', 'Dr. Issac Hill', 'Sunday 22:45:58', '{\"prelims\":3.12,\"midterms\":2.88,\"pre_finals\":4.3,\"finals\":4.77}', 3.7675, 'PASSED', '2015-07-10', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(44, 9, 'ixl-512', 'fuga aliquid ut', 'Et ea harum aut aut.', 'Lenora Frami', 'Saturday 20:09:36', '{\"prelims\":3.04,\"midterms\":2.52,\"pre_finals\":1.29,\"finals\":4.15}', 2.75, 'FAILED', '2001-03-22', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(45, 9, 'uwn-864', 'recusandae cupiditate quia', 'Quisquam adipisci repudiandae mollitia aut quasi magni.', 'Abdiel Osinski V', 'Monday 04:36:53', '{\"prelims\":2.04,\"midterms\":4.27,\"pre_finals\":4.19,\"finals\":3.7}', 3.55, 'PASSED', '1975-03-07', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(46, 10, 'gqf-571', 'sapiente cupiditate odio', 'Quae enim molestiae aliquam sit.', 'Dr. Naomie Rempel', 'Monday 10:26:28', '{\"prelims\":2.95,\"midterms\":1.04,\"pre_finals\":1.7,\"finals\":2.79}', 2.12, 'FAILED', '1994-06-25', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(47, 10, 'seg-050', 'aut aut rerum', 'Quos ducimus et perferendis dolores et fugit est.', 'Retta Parisian Jr.', 'Sunday 14:41:52', '{\"prelims\":4.03,\"midterms\":4.19,\"pre_finals\":1.32,\"finals\":2.19}', 2.9325, 'FAILED', '1977-09-25', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(48, 10, 'etu-449', 'enim quae assumenda', 'Est molestias aliquam eius maiores et.', 'Ambrose Feest DVM', 'Monday 10:00:47', '{\"prelims\":3.31,\"midterms\":2.88,\"pre_finals\":1.16,\"finals\":1.47}', 2.205, 'FAILED', '1984-02-06', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(49, 10, 'aww-204', 'ea qui a', 'Laudantium quam quia ratione omnis et.', 'Emery Yundt', 'Friday 19:39:49', '{\"prelims\":2.7,\"midterms\":4.44,\"pre_finals\":1.54,\"finals\":4.4}', 3.27, 'PASSED', '2015-12-21', '2024-07-01 04:06:59', '2024-07-01 04:06:59'),
(50, 10, 'ldd-783', 'et molestiae non', 'Consequatur tempore sed porro.', 'Marcelo Kirlin', 'Tuesday 14:52:48', '{\"prelims\":2.04,\"midterms\":1.95,\"pre_finals\":4.72,\"finals\":3.78}', 3.1225, 'PASSED', '2004-05-10', '2024-07-01 04:06:59', '2024-07-01 04:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
