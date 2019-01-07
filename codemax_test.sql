-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2019 at 11:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codemax_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `codemax_cars_added`
--

CREATE TABLE `codemax_cars_added` (
  `car_added_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `units_added` int(11) NOT NULL DEFAULT '0',
  `added_by_user_id` int(11) NOT NULL DEFAULT '0',
  `add_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `codemax_cars_added`
--

INSERT INTO `codemax_cars_added` (`car_added_id`, `model_id`, `units_added`, `added_by_user_id`, `add_timestamp`, `updated_timestamp`, `status`) VALUES
(1, 1, 10, 1, '2018-12-04 06:35:49', '2018-12-04 06:35:49', 1),
(2, 2, 5, 1, '2018-12-04 06:50:44', '2018-12-04 06:50:44', 1),
(3, 3, 12, 1, '2018-12-04 07:33:14', '2018-12-04 07:33:14', 1),
(4, 2, 2, 1, '2018-12-04 07:33:20', '2018-12-04 07:33:20', 1),
(5, 2, 5, 1, '2018-12-04 07:33:46', '2018-12-04 07:33:46', 1),
(6, 2, 1, 1, '2018-12-04 07:49:54', '2018-12-04 07:49:54', 1),
(7, 2, 2, 1, '2018-12-04 07:50:02', '2018-12-04 07:50:02', 1),
(8, 4, 2, 1, '2018-12-04 07:50:38', '2018-12-04 07:50:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `codemax_cars_sold`
--

CREATE TABLE `codemax_cars_sold` (
  `car_sold_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `units_sold` int(11) DEFAULT '1',
  `sold_by_user_id` int(11) NOT NULL DEFAULT '0',
  `add_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codemax_cars_sold`
--

INSERT INTO `codemax_cars_sold` (`car_sold_id`, `model_id`, `units_sold`, `sold_by_user_id`, `add_timestamp`, `updated_timestamp`, `status`) VALUES
(1, 2, 1, 1, '2018-12-04 06:53:25', '2018-12-04 06:53:25', 1),
(2, 2, 1, 1, '2018-12-04 06:53:27', '2018-12-04 06:53:27', 1),
(3, 2, 1, 1, '2018-12-04 06:53:28', '2018-12-04 06:53:28', 1),
(4, 2, 1, 1, '2018-12-04 06:53:30', '2018-12-04 06:53:30', 1),
(5, 2, 1, 1, '2018-12-04 06:53:32', '2018-12-04 06:53:32', 1),
(6, 2, 1, 1, '2018-12-04 06:53:41', '2018-12-04 06:53:41', 1),
(7, 1, 1, 1, '2018-12-04 07:28:20', '2018-12-04 07:28:20', 1),
(8, 1, 1, 1, '2018-12-04 07:28:21', '2018-12-04 07:28:21', 1),
(9, 1, 1, 1, '2018-12-04 07:28:22', '2018-12-04 07:28:22', 1),
(10, 1, 1, 1, '2018-12-04 07:28:24', '2018-12-04 07:28:24', 1),
(11, 1, 1, 1, '2018-12-04 07:28:26', '2018-12-04 07:28:26', 1),
(12, 1, 1, 1, '2018-12-04 07:28:27', '2018-12-04 07:28:27', 1),
(13, 1, 1, 1, '2018-12-04 07:28:28', '2018-12-04 07:28:28', 1),
(14, 1, 1, 1, '2018-12-04 07:28:29', '2018-12-04 07:28:29', 1),
(15, 1, 1, 1, '2018-12-04 07:28:30', '2018-12-04 07:28:30', 1),
(16, 4, 1, 1, '2018-12-04 07:50:44', '2018-12-04 07:50:44', 1),
(17, 4, 1, 1, '2018-12-04 07:51:24', '2018-12-04 07:51:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `codemax_manufacturer`
--

CREATE TABLE `codemax_manufacturer` (
  `mfg_id` int(11) NOT NULL,
  `manufacturer_name` varchar(50) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by_user_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `codemax_manufacturer`
--

INSERT INTO `codemax_manufacturer` (`mfg_id`, `manufacturer_name`, `created_at`, `updated_at`, `added_by_user_id`, `status`) VALUES
(1, 'Tata', '2018-12-04 12:05:08', '2018-12-04 12:05:08', 1, 1),
(2, 'Maruti', '2018-12-04 12:20:25', '2018-12-04 12:20:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `codemax_model`
--

CREATE TABLE `codemax_model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL DEFAULT '0',
  `mfg_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by_user_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codemax_model`
--

INSERT INTO `codemax_model` (`model_id`, `model_name`, `mfg_id`, `created_at`, `updated_at`, `added_by_user_id`, `status`) VALUES
(1, 'Nano', 1, '2018-12-04 12:05:39', '2018-12-04 12:05:39', 1, 1),
(2, 'Suzuki', 2, '2018-12-04 12:20:35', '2018-12-04 12:20:35', 1, 1),
(3, 'Ka', 2, '2018-12-04 13:03:04', '2018-12-04 13:03:04', 1, 1),
(4, 'Sumo', 1, '2018-12-04 13:20:18', '2018-12-04 13:20:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `codemax_users`
--

CREATE TABLE `codemax_users` (
  `user_id` int(11) NOT NULL,
  `username` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(80) NOT NULL DEFAULT '0',
  `password` varchar(150) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codemax_users`
--

INSERT INTO `codemax_users` (`user_id`, `username`, `email_id`, `password`, `status`) VALUES
(1, 1, 'arki7n@gmail.com', 'hghkgnflk#$%$^', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codemax_cars_added`
--
ALTER TABLE `codemax_cars_added`
  ADD PRIMARY KEY (`car_added_id`);

--
-- Indexes for table `codemax_cars_sold`
--
ALTER TABLE `codemax_cars_sold`
  ADD PRIMARY KEY (`car_sold_id`);

--
-- Indexes for table `codemax_manufacturer`
--
ALTER TABLE `codemax_manufacturer`
  ADD PRIMARY KEY (`mfg_id`);

--
-- Indexes for table `codemax_model`
--
ALTER TABLE `codemax_model`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `codemax_users`
--
ALTER TABLE `codemax_users`
  ADD PRIMARY KEY (`user_id`);

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
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codemax_cars_added`
--
ALTER TABLE `codemax_cars_added`
  MODIFY `car_added_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `codemax_cars_sold`
--
ALTER TABLE `codemax_cars_sold`
  MODIFY `car_sold_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `codemax_manufacturer`
--
ALTER TABLE `codemax_manufacturer`
  MODIFY `mfg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `codemax_model`
--
ALTER TABLE `codemax_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `codemax_users`
--
ALTER TABLE `codemax_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
