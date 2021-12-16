-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2021 at 07:27 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edit_ascww_database`
--
DROP DATABASE IF EXISTS `edit_ascww_database`;
CREATE DATABASE IF NOT EXISTS `edit_ascww_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edit_ascww_database`;

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

DROP TABLE IF EXISTS `billings`;
CREATE TABLE IF NOT EXISTS `billings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Cycle_MonthCount` int(11) NOT NULL,
  `Bills_Customer_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bills_Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bills_AccountNum` int(11) NOT NULL,
  `CycleMonth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CycleYear` int(11) NOT NULL,
  `Bills_AccountType_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bills_MeterStatus_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bills_Activity_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bills_Region_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bills_CurrentReading` int(11) NOT NULL,
  `Bills_PreviousReading` int(11) NOT NULL,
  `Bills_WaterAmount` int(11) NOT NULL,
  `Bills_WaterValue` decimal(8,2) NOT NULL,
  `Bills_SanitationValue` decimal(8,2) NOT NULL,
  `Bills_Sustainability` decimal(8,2) NOT NULL,
  `Bills_SalesTaxValue` decimal(8,2) NOT NULL,
  `Bills_Organizational` decimal(8,2) NOT NULL,
  `Bills_ContractPremiumValue` decimal(8,2) NOT NULL,
  `Bills_NetValue` decimal(8,2) NOT NULL,
  `Bills_WaterValueText` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `Cycle_MonthCount`, `Bills_Customer_Name`, `Bills_Address`, `Bills_AccountNum`, `CycleMonth`, `CycleYear`, `Bills_AccountType_Name`, `Bills_MeterStatus_Name`, `Bills_Activity_Name`, `Bills_Region_Name`, `Bills_CurrentReading`, `Bills_PreviousReading`, `Bills_WaterAmount`, `Bills_WaterValue`, `Bills_SanitationValue`, `Bills_Sustainability`, `Bills_SalesTaxValue`, `Bills_Organizational`, `Bills_ContractPremiumValue`, `Bills_NetValue`, `Bills_WaterValueText`) VALUES
(1, 2, 'مبني الاذاعه و التلفزيون ', 'ش النميس', 261, '4', 2011, 'فعال', 'قيد', 'نشط', 'حي غرب', 12, 11, 34, '43.20', '4.30', '12.30', '12.20', '53.20', '22.20', '122.92', 'مائه اثنان و عشرون جنيها و اثنان و تسعون قرشا'),
(2, 4, 'مبني الازهر', 'ش الوليديه', 4, '32', 2021, 'فعال', 'نشط', 'قيد', 'حي وسط', 22, 33, 44, '2.30', '22.40', '12.30', '6.72', '21.30', '22.20', '101.20', 'مائه و احد جنيها و اثتنان قرشا فقط لا غير ');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_11_082617_create_billings_table', 1),
(5, '2021_12_15_074112_create_students_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age_in_october` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_graduated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
