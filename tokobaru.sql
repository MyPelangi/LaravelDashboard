-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 04:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dt_penjualan`
--

CREATE TABLE `dt_penjualan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `REFID_Cabang` bigint(20) UNSIGNED NOT NULL,
  `nominal` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dt_penjualan`
--

INSERT INTO `dt_penjualan` (`id`, `REFID_Cabang`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 1, 10000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30'),
(2, 2, 15000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30'),
(3, 3, 5000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30'),
(4, 4, 18000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30'),
(5, 5, 20000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30'),
(6, 6, 11000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30'),
(7, 7, 35000000.00, '2024-07-16 21:26:30', '2024-07-16 21:26:30');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_17_023840_create_ms_cabang_table', 1),
(5, '2024_07_17_024910_create_dt_penjualan_table', 2),
(6, '2024_07_18_072952_add_data_to_table_user', 3),
(7, '2024_07_19_020121_rename_users_table', 4),
(8, '2024_07_19_031250_add_agree_to_users_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ms_cabang`
--

CREATE TABLE `ms_cabang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ms_cabang`
--

INSERT INTO `ms_cabang` (`id`, `nama_cabang`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Toko Pusat', 'Jl. Merdeka No. 1, Jakarta', '2024-07-16 20:38:40', '2024-07-16 20:38:40'),
(2, 'Toko Barat', 'Jl. Kebon Jeruk No. 10, Bandung', '2024-07-16 20:38:40', '2024-07-16 20:38:40'),
(3, 'Toko Timur', 'Jl. Madiun No. 45, Surabaya', '2024-07-16 20:38:40', '2024-07-16 20:38:40'),
(4, 'Toko Selatan', 'Jl. Palembang No. 78, Bali', '2024-07-16 20:38:40', '2024-07-16 20:38:40'),
(5, 'Toko Utara', 'Jl. Yogyakarta No. 15, Yogyakarta', '2024-07-16 20:38:40', '2024-07-16 20:38:40'),
(6, 'Toko Barat Daya', 'Jl. Indramayu No. 10, Surabaya', '2024-07-16 20:38:40', '2024-07-16 20:38:40'),
(7, 'Toko Tenggara', 'Jl. Cendrawasih No. 10, Balikpapan', '2024-07-16 20:38:40', '2024-07-16 20:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uJ0NxcJhDdpc9wdtBOLcoxnTZWL2YjQxxU1tKtgq', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRWFCcDFOWVhTTUs4enVGdXFWZUlUNW9BeDFqN2ZDeGJkSGUxcmNxVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9', 1721616581);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `agree` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `last_name`, `agree`) VALUES
(1, 'Pelangi', 'Pelangi1@gmail.com', NULL, '$2y$12$0iHHpzCBGo0Ulh22fP68SOn9ChmlECHBxXwvI7kZhuEgJwVfjijfG', NULL, NULL, NULL, '', 0),
(2, 'Pelangi', 'plngmawarni@gmail.com', NULL, '$2y$12$ulGDNhwwp3ZM.XqbmVnMU.2o8SrgFt4BE5wN86.KXaOH1xhfhu/7i', NULL, '2024-07-18 21:05:32', '2024-07-18 21:05:32', 'Dwi Mawarni', 1),
(3, 'Pelangi', 'apa@gmail.com', NULL, '$2y$12$ayBPJjTwB8CdE42RnMJHJuleJxFd/f2HWHUrY21xoGL2jFE4KLBkC', NULL, '2024-07-18 21:07:15', '2024-07-18 21:07:15', 'Dwi Mawarni', 1),
(4, 'ara', 'ara@gmail.com', NULL, '$2y$12$4u34rgwW4qi31.lfWItu6O9FiQP0DsuY1h1HSvFL1JcUHRR8kp1W6', NULL, '2024-07-18 21:11:09', '2024-07-18 21:11:09', 'ari', 0),
(7, 'andika', 'a@gmail.com', NULL, '$2y$12$WD1ikB.WUM5/k/nCMRHQauAUsrKaeq8Tujc9XdA6IpznOnAuQj5bG', NULL, '2024-07-19 00:29:53', '2024-07-19 00:29:53', 'anidko', 0),
(9, 'ana', 'ana@gmail.com', NULL, '$2y$12$6o7Ax5A.0A8ztNZfH6qfz.GZXqb4cRfs6saNoiwSuYrwacDP3RrGe', NULL, '2024-07-19 00:38:14', '2024-07-19 00:38:14', 'ani', 0),
(12, 'ali', 'alil@gmail.com', NULL, '$2y$12$YL/7IQS85KodzgAOotnzjO8AUAQVMtmmbKDpwvk74em6mWaTZw.cC', NULL, '2024-07-21 18:32:53', '2024-07-21 18:32:53', 'ala', 0),
(13, 'ali', 'akademiksc23@gmail.com', NULL, '$2y$12$SZLRVKSosdIyfCAZYQLCCOShuaGVN6UV6IO8.jQJNHmzJx4VeEuNC', NULL, '2024-07-21 18:34:27', '2024-07-21 18:34:27', 'ala', 0),
(14, 'as', 'admin.dipe@gmail.com', NULL, '$2y$12$I5XM72j3BbOlKcaxZhcYvOfFGXWUfG.DTv6c8txzJSeKpr2vaCPuO', NULL, '2024-07-21 18:38:34', '2024-07-21 18:38:34', 'as', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dt_penjualan`
--
ALTER TABLE `dt_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dt_penjualan_refid_cabang_foreign` (`REFID_Cabang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_cabang`
--
ALTER TABLE `ms_cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `dt_penjualan`
--
ALTER TABLE `dt_penjualan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ms_cabang`
--
ALTER TABLE `ms_cabang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dt_penjualan`
--
ALTER TABLE `dt_penjualan`
  ADD CONSTRAINT `dt_penjualan_refid_cabang_foreign` FOREIGN KEY (`REFID_Cabang`) REFERENCES `ms_cabang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
