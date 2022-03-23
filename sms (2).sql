-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 08:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enroll_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `enroll_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `subject_id`, `student_id`, `enroll_date`, `enroll_timestamp`, `payment_status`, `enroll_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-03-22', '1647907200', 'pending', 'pending', '2022-03-22 11:35:45', '2022-03-22 11:35:45'),
(4, 1, 4, '2022-03-23', '1647993600', 'pending', 'pending', '2022-03-22 22:03:47', '2022-03-22 22:03:47'),
(8, 1, 5, '2022-03-23', '1647993600', 'pending', 'pending', '2022-03-23 00:43:18', '2022-03-23 00:43:18'),
(9, 1, 6, '2022-03-23', '1647993600', 'pending', 'pending', '2022-03-23 01:02:24', '2022-03-23 01:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_03_064109_create_sessions_table', 1),
(7, '2022_03_15_031410_create_teachers_table', 2),
(8, '2022_03_16_034314_add_password_column_to_teachers_table', 3),
(9, '2022_03_20_055821_create_subjects_table', 4),
(10, '2022_03_22_050606_create_students_table', 5),
(11, '2022_03_22_050742_create_enrolls_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('30IkS24zx1BMHpJCUel97QNGouyB9s6KgLRxDsMz', 11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YToxMjp7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwOi8vbG9jYWxob3N0L3Ntcy9wdWJsaWMvbWFuYWdlLWNvdXJzZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJjRlpGanVLOUI1cUg0SUVVeGNqN2RYWHVqR1VZMFRvM0JvNTdyODlCIjtzOjc6InVzZXJfaWQiO2k6NjtzOjk6InVzZXJfbmFtZSI7czo3OiJGYXJpeWF6IjtzOjEwOiJ1c2VyX2ltYWdlIjtzOjIwOiJ0ZWFjaGVyLWltYWdlcy84LmpwZyI7czoxMDoic3R1ZGVudF9pZCI7aTo2O3M6MTI6InN0dWRlbnRfbmFtZSI7czo0OiJSYW5hIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEkwNEpDTi9WZ1AuSDYuQ2doRHp5emVwVUcwLy9MemwxUWpudTdMWjhsWHV5bTZhQXViUElPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRJMDRKQ04vVmdQLkg2LkNnaER6eXplcFVHMC8vTHpsMVFqbnU3TFo4bFh1eW02YUF1YlBJTyI7fQ==', 1648019439);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `mobile`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Salah Uddin', 'bv.salahuddin@gmail.com', '$2y$10$U/3O7lYvohxbYhFTTDXmKOAeAkopA2DkMpRhcKOglTe8An/0axJoi', '01719738512', NULL, 1, '2022-03-22 11:35:45', '2022-03-22 11:35:45'),
(2, 'T-shirt', 'salahuddinrana90@yahoo.com', '$2y$10$IkcGUWq0fmR6FD7DrM4qtOTtsfjl/oBG8a0K3okoSYsgq8bXmSKPC', '01712957099', NULL, 1, '2022-03-22 11:46:44', '2022-03-22 11:46:44'),
(3, 'Alamin', 'jahid@gmail.com', '$2y$10$1jkIbx1tN5Ph6NimAyHm7eFG/GV./Ke9btkiFzOAfaGj9vg0GTEgy', '1231231', NULL, 1, '2022-03-22 21:23:05', '2022-03-22 21:23:05'),
(4, 'Rana', 'afddsafdsa@gmail.com', '$2y$10$SWrfz1bKiiSaXVe7zC3C2uKch3aFU4IPApPXfZGVVLw6fhice03Mq', '01744444', NULL, 1, '2022-03-22 22:03:47', '2022-03-22 22:03:47'),
(5, 'Faryaz', 'rana21@gmail.com', '$2y$10$vH81WyuObWJleOfGHPKtYeckegTxKWrRa8IyuD/HIg.s5o09Y4rze', '123456', NULL, 1, '2022-03-22 23:21:47', '2022-03-22 23:21:47'),
(6, 'Rana', 'fariyaz@gmail.com', '$2y$10$U27MDy3wevZCdGlqMUaGNuCNFFdsP4449jO.tKZabPw0ImEzfuWq.', '123456', NULL, 1, '2022-03-23 01:02:24', '2022-03-23 01:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `teacher_id`, `title`, `code`, `fee`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Online Training on Modern JavaScript (ES6)', '102', 19999, '<p><span style=\"text-align: justify;\">This course will guide the developers and students who want to learn how to develop a Interactive website using JavaScript.</span><br></p>', NULL, 'subject-images/1644132708.jpg', 1, '2022-03-20 00:33:24', '2022-03-22 02:25:19'),
(3, 7, 'Cisco Certified Network Associate (CCNA)', '107', 10000, '<div class=\"box col-xs-12 col-sm-12 col-md-12 fadeInUp\" data-wow-duration=\"500ms\" data-wow-delay=\"900ms\" style=\"outline: none; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px; animation-name: fadeInUp;\"><div class=\"details_wrapper no-margin\" style=\"background-image: none; background-position: 0px 0px; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial; outline: none; border-radius: 5px; padding: 15px 0px; margin: 0px 0px 15px !important;\"><div class=\"box col-xs-12 col-sm-12 col-md-9 no-padding-right fadeInUp\" data-wow-duration=\"500ms\" data-wow-delay=\"900ms\" style=\"outline: none; min-height: 1px; padding-right: 0px; padding-left: 15px; float: left; width: 855px; animation-name: fadeInUp;\"><p class=\"course-inner-desc\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; outline: none; line-height: 27px;\">The CCNA Routing and Switching is a program developed for network engineers that fully develops and evaluates your networking knowledge and helps you add value to any organization\'s network.</p></div><div class=\"clearfix\" style=\"color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgba(0, 0, 0, 0); outline: none;\"></div></div></div>', NULL, 'subject-images/1644132708.jpg', 1, '2022-03-22 21:49:53', '2022-03-23 01:10:39'),
(4, 6, 'Online Training on Modern JavaScript (ES6)', '101', 20000, '<p><span style=\"text-align: justify;\">This course will guide the developers and students who want to learn how to develop a Interactive website using JavaScript.</span><br></p>', NULL, 'subject-images/php1.jpg', 1, '2022-03-23 00:46:06', '2022-03-23 01:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `code`, `email`, `mobile`, `address`, `image`, `status`, `created_at`, `updated_at`, `password`) VALUES
(3, 'alam', 'ALA227', 'admin@admin.com', '43242424', 'afdsfsaaa', 'teacher-images/1.png', '1', '2022-03-14 23:02:21', '2022-03-19 23:56:27', '$2y$10$xo8BbyZeB3g4txSdoS4ZU.WtO34QsHnWXuswfTUL8mQcOgClLbJpO'),
(4, 'alam', 'ALA20224', 'admin@admin.com', '43242424', 'afdsfsaaa', 'teacher-image/p2.jpg', '1', '2022-03-14 23:04:02', '2022-03-14 23:04:02', NULL),
(5, 'md. rahamm', 'MDR227', 'lakib@gmail.com', '4545', NULL, 'teacher-images/7.jpg', '1', '2022-03-14 23:05:55', '2022-03-19 23:56:11', '$2y$10$nEJgWrURJ4h85zx8BgY64OQoRE6ZCLfivC2D8Be2HPQIHt8AsDo1i'),
(6, 'Fariyaz', 'FAR227', 'fariyaz@gmail.com', '123456', 'dhaka', 'teacher-images/8.jpg', '1', '2022-03-15 21:55:43', '2022-03-19 23:55:50', '$2y$10$Rcm/Etjkds8k7SYZV3ucvuvrF/6Kd1aCYkopDCXbPyjU6t7uy65Kq'),
(7, 'Asha', 'ASH227', 'asha@gmail.com', '123345566', 'Dhaka', 'teacher-images/11.jpg', '1', '2022-03-22 21:46:06', '2022-03-22 21:46:06', '$2y$10$yBXnhIjHGkuwk.JRk94K0eSgxmgXA9gIx3EI5jwYzgbZySNtyivjK');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$vOtBFKp6FYqqJj0YsGrYtey7rBbSlFmrjNvpkORjTJsBE/0YpSAnm', NULL, NULL, NULL, NULL, NULL, '2022-03-03 00:50:08', '2022-03-23 00:04:50'),
(2, 'Sub admin', 'admin@gmail.com', NULL, '$2y$10$UBeQasPW4iUeXhSik2YUDeoJOv0Ygnw76B7gpT86wlGJ2Uvvh/i8q', NULL, NULL, NULL, NULL, NULL, '2022-03-12 23:16:48', '2022-03-14 21:02:34'),
(3, 'salahuddin1111111', 'salahuddin8512@gmail.com', NULL, '$2y$10$0JFhXwyz/kCGSXpF5hJXoeINKM28gAF0fqFRvIup9xtTFCScMkcK.', NULL, NULL, NULL, NULL, NULL, '2022-03-13 21:09:28', '2022-03-14 00:48:20'),
(10, 'alam', 'alam@gmail.com', NULL, '$2y$10$yviP9p9YRDFtJYoKH0UR8.1xBYp683F.DXz6l.TFgLw/0QOqrU.e.', NULL, NULL, NULL, NULL, NULL, '2022-03-13 22:38:20', '2022-03-13 22:38:20'),
(11, 'Rana', 'rana@gmail.com', NULL, '$2y$10$I04JCN/VgP.H6.CghDzyzepUG0//Lzl1Qjnu7LZ8lXuym6aAubPIO', NULL, NULL, NULL, NULL, NULL, '2022-03-23 01:10:29', '2022-03-23 01:10:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
