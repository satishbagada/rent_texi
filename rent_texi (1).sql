-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 06:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent_texi`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(12) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '123456',
  `user_role` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 = User\r\n1 = Admin',
  `user_profile` varchar(255) NOT NULL DEFAULT '''a.jpg''',
  `user_status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 = active\r\n0 = deactive',
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `user_email`, `user_mobile`, `password`, `user_role`, `user_profile`, `user_status`, `created_date`) VALUES
(4, 'admin', 'admin@gmail.com', NULL, '$2y$10$CvYIw1c/StBs6pvJ7t3xA.8Y3HLDMUL7P.S7D.Kp9zP33tA5AsrYG', '0', 'a.jpg', '1', '2023-09-09 16:57:06'),
(5, 'user', 'user123@gmail.com', NULL, '$2y$10$wTbD9YxmwDbpbJtvWrnM/O3EX5xAy4QKVZB8uefEwO8WjHXBZq4Re', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(6, 'user', 'user123@gmail.com', NULL, '$2y$10$pDfZxVN4m.4j9VIeDhx65OIhORK8l.vfYFf/OAdECDPARLhhmBUiG', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(7, 'user', 'user123@gmail.com', NULL, '$2y$10$T/5NxLGYYmZ7VgzTa5hEuun4NzlooavQDdeEyEyMN8beiQDw.Nc/.', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(8, 'user', 'user123@gmail.com', NULL, '$2y$10$DHKcBmxbuEKUTituWRG5A.X4Kh3MGt0SC4hw4f0ptp8xdzO.xJpDG', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(9, 'user', 'user123@gmail.com', NULL, '$2y$10$0zVQWpjDh3rf776qq/iNAeKm9XBMgbinaMJOovNp8JfkKO1EEaJWG', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(10, 'user', 'user123@gmail.com', NULL, '$2y$10$y5cV9hGVdiZk6MEUy4PrMO/MZIw9CU/e0Uv0lKNQQ/Edx89ZoR952', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(11, 'user', 'user123@gmail.com', NULL, '$2y$10$szE6Ox5te7QmNpShzS/.zOxiQHZEVJ353zyty.ljqGrmYsgomCbym', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(12, 'user', 'user123@gmail.com', NULL, '$2y$10$DUxUfZdcLbU.eCv1KRvGMOKtMXCPFppCeZDI3Xp6be1.v0n93z1.y', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:23'),
(13, 'user', 'user123@gmail.com', NULL, '$2y$10$aGrmzI6nj5VYT9xMDUzQ8u8Qe4rC5.w/8vpM3dFvNfcIZmSgXFUJa', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(14, 'user', 'user123@gmail.com', NULL, '$2y$10$VbcrNw/9EC30r5ytkTbo/ua8Thcd5hbDg4Mh8B.6s7eZAoggzuFb2', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(15, 'user', 'user123@gmail.com', NULL, '$2y$10$suuCGQOo8zIFCPz9vy54auSwDt9tVxZKEX53YkHMOQiAiTKxNbQ7C', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(16, 'user', 'user123@gmail.com', NULL, '$2y$10$w2bx7PAD9Bim8C.YdfRhTe/wTwIRNCdz.ZbGbo9LUGuvN.RNvjH8G', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(17, 'user', 'user123@gmail.com', NULL, '$2y$10$PoCjTruK7i8VzTMA6LVvx.0wMbglcdsMEyvpgXeqP0xQ.V7uxzGz6', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(18, 'user', 'user123@gmail.com', NULL, '$2y$10$NdO1Sw1fNdhJtUqHowqGruKBA7lSiU38sA1C0BCfCkSFdIW3SULmC', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(19, 'user', 'user123@gmail.com', NULL, '$2y$10$kDBLci27xRCsmXCq66K61eOpd34qsOxua2eFOgDDB06iQxmJkimfm', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(20, 'user', 'user123@gmail.com', NULL, '$2y$10$Nj/AA2SgLK9Zrm4jfstRH.tCfxHENUdVxfaI.3jaVs6HNCdLVsaEe', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(21, 'user', 'user123@gmail.com', NULL, '$2y$10$hPoOxLXO/vaUfQFkosP..ehWdq1nl98p7pFPUQcX3gFEs9rQT0AcS', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(22, 'user', 'user123@gmail.com', NULL, '$2y$10$DYH5y0frYcPoQ2eoauehoO4Rf0fpLkOj96B3dhuPYQg9elUYE5i6u', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:24'),
(23, 'user', 'user123@gmail.com', NULL, '$2y$10$1UOCFFrTIyK5dB6Z8DwPr..Q2peUJ1SRHSIU0qKNMyQHvGbEw1ysS', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:25'),
(24, 'user', 'user123@gmail.com', NULL, '$2y$10$TAS8AUcRhdCZBqtPgwExluLfMwrsWtWzuDCNJsl7TGQejRmZjKPqm', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:25'),
(25, 'user', 'user123@gmail.com', NULL, '$2y$10$rq1kFRcAVzydGk2PR2NeE.PP0lRTlFQVd2p1cTkeSutsJUusFI5ou', '0', '\'a.jpg\'', '1', '2023-09-10 17:57:25'),
(26, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$UIT..QrmSerEbKRrd3pm9.5fjT16a3.qERIsDuliSZhTJrUGRLIwe', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:14'),
(27, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$WmhAnsmtGPVotHHvdgjC..HxsPtQfITvndSNgnb4IfA3PwBgqWRZq', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:14'),
(28, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$AnTHHdbhW8khHCWU0xZ1tO4GWbX0Zy2GcpdtQN2td5UVMZOKKK28m', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:14'),
(29, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$EM.uZm8IRE3eph3tPgicSe21J/lqYs7UWHJZlNzhdl19WcZTiusmq', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(30, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$Pggo7rLiN0ZSuGziX3diNOqnj7vkkozoKyunB/VFPQCusdESaNnqG', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(31, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$ufcmdPh/gFInwP8eCXF7pekUA.o3AEVdpc9.ss.925v.9oYfVIgPu', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(32, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$8SOdjkkv/V6R1il3GqGOP.VTfGX88v2yj6Ky4YeEYHzP6Z2LFTp7O', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(33, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$x2tduslFOj/XCk/QXdxqOuHuYAsHnVmyp.YQcx9wzi/jEKEoSWAfa', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(34, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$NX4rMp6WGQiLIggi9mUrVOx9oFA1tryRR.gxh6SKucdyuO5EFOFNy', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(35, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$0gCpf/rUPJ0Sk6Zdh7J5OOP4xZm7U0EyyIKNroizrkeGyAy9CdroC', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(36, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$f3w1pzZzBapPTibGlXwvYOYUVqSA6TOunqX/SJ/avpTPeAbQ6IP0O', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(37, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$gEZWMLEgYBKJt/fltrk6EOEzgm58E04/Ou8PVVgjDCJ4WyMIz7Tkq', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(38, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$0iYqpwpgaBgnNRNtBPYrHOypmiR6nbho4ug74lfIPKcUkKayTlKyy', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(39, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$qdsFtiuEC2jUqX4Q5BziX.fTl7m/O.fDU/ew9dNvdX3mD7cpZQOf6', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:15'),
(40, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$L.35sUtIawcO7N14prGO3Oz47P6l/pEW4Ky2bKhqO4cYffjGow0SS', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(41, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$fuWgFbJ4UB00J8hWVOZBDelWr5xd7b5E4epVXa4fgXoBmzZMON.xu', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(42, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$Z9Rw44YsXX6uoZ3l.HgyLO5Bir/KbkK9fNH.UHp0bbivIFHDayOva', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(43, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$jsBdSS0UM6ke7LPjBqCyn.eSGInrUTNkj0uP.3KFz/IsIMizC0P0i', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(44, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$ERob7oponPMMOGs4u.CJOOAq5gQktzvRwmTpaH9D0.dgcDsD7uQKu', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(45, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$Kxa4zkrwoMjhwDmPt.v75Oxa0SBF6HlrrRw.W64imYsk/vurj4Ss2', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(46, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$vQYATfaVfIiSLa3PzYRpF.YCx274O39R5IQJT05AW0b4aDS0SnVLy', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:16'),
(47, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$ghkh1A7/351ljq6GUkkIcurVGweSdhpX/DcqnmQgnGMW96iNuMkXi', '0', '\'a.jpg\'', '1', '2023-09-10 17:58:51');

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
