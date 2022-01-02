-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2022 at 07:26 AM
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
  `link_Search` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `Cycle_MonthCount`, `Bills_Customer_Name`, `Bills_Address`, `Bills_AccountNum`, `CycleMonth`, `CycleYear`, `Bills_AccountType_Name`, `Bills_MeterStatus_Name`, `Bills_Activity_Name`, `Bills_Region_Name`, `Bills_CurrentReading`, `Bills_PreviousReading`, `Bills_WaterAmount`, `Bills_WaterValue`, `Bills_SanitationValue`, `Bills_Sustainability`, `Bills_SalesTaxValue`, `Bills_Organizational`, `Bills_ContractPremiumValue`, `Bills_NetValue`, `Bills_WaterValueText`, `link_Search`) VALUES
(1, 2, 'مبني الاذاعه و التلفزيون ', 'ش النميس', 261, '4', 2011, 'فعال', 'قيد', 'نشط', 'حي غرب', 12, 11, 34, '43.20', '4.30', '12.30', '12.20', '53.20', '22.20', '122.92', 'مائه اثنان و عشرون جنيها و اثنان و تسعون قرشا', '/an-elsherka'),
(2, 4, 'مبني الازهر', 'ش الوليديه', 4, '32', 2021, 'فعال', 'نشط', 'قيد', 'حي وسط', 22, 33, 44, '2.30', '22.40', '12.30', '6.72', '21.30', '22.20', '101.20', 'مائه و احد جنيها و اثتنان قرشا فقط لا غير ', '/toWomen');

-- --------------------------------------------------------

--
-- Table structure for table `complaines`
--

DROP TABLE IF EXISTS `complaines`;
CREATE TABLE IF NOT EXISTS `complaines` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaineText` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaines`
--

INSERT INTO `complaines` (`id`, `name`, `phone`, `email`, `complaineText`, `created_at`, `updated_at`) VALUES
(1, 'مروه', '01111111111', 'marwa@yahoo.com', 'wsssss', '2021-12-27 07:08:28', '2021-12-27 07:08:28'),
(2, 'بيتر باسم يوسف', '01002222222', 'mm@yaho.com', 'sdkjedjwk', '2021-12-28 05:34:14', '2021-12-28 05:34:14'),
(3, 'hhg', '01111111111', 'mm@yahoo.com', 'wwww', '2021-12-28 09:43:42', '2021-12-28 09:43:42');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_11_082617_create_billings_table', 1),
(5, '2021_12_15_074112_create_students_table', 1),
(8, '2021_12_19_101710_create_searches_table', 2),
(13, '2021_12_27_082437_create_complaines_table', 3),
(15, '2021_12_27_104538_create_news_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mainImg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `mainImg`, `item`, `link`, `details`, `img1`, `img2`, `img3`, `created_at`, `updated_at`) VALUES
(1, 'https://images.ctfassets.net/hrltx12pl8hq/61DiwECVps74bWazF88Cy9/2cc9411d050b8ca50530cf97b3e51c96/Image_Cover.jpg?fit=fill&w=480&h=270', 'كلمه الرئيس', '/show-selected-news/1', 'أصدر المهندس محمد صلاح الدين عبد الغفار رئيس شركة مياه الشرب والصرف الصحى بأسيوط والوادى الجديد تعليماته المشددة للتغلب على مشكلة ضعف المياه بقرى بنى حسين', 'https://images.ctfassets.net/hrltx12pl8hq/61DiwECVps74bWazF88Cy9/2cc9411d050b8ca50530cf97b3e51c96/Image_Cover.jpg?fit=fill&w=480&h=270', 'https://images.ctfassets.net/hrltx12pl8hq/61DiwECVps74bWazF88Cy9/2cc9411d050b8ca50530cf97b3e51c96/Image_Cover.jpg?fit=fill&w=480&h=270', 'https://images.ctfassets.net/hrltx12pl8hq/61DiwECVps74bWazF88Cy9/2cc9411d050b8ca50530cf97b3e51c96/Image_Cover.jpg?fit=fill&w=480&h=270', NULL, NULL);

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
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
CREATE TABLE IF NOT EXISTS `searches` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `created_at`, `updated_at`, `item`, `link`) VALUES
(1, NULL, NULL, 'تفاصيل عن الشركه', '/an-elsherka'),
(2, NULL, NULL, 'فروع الشركة', '/Branch-of-company'),
(3, NULL, NULL, 'رؤيه و رساله الشركة', '/vision-and-message'),
(4, NULL, NULL, 'الهيكل التنظيمي للشركه', '/organization-structure'),
(5, NULL, NULL, 'إنجازات الشركه', '/company-achivement'),
(6, NULL, NULL, 'توعيه للسيدات', '/toWomen'),
(7, NULL, NULL, 'توعيه للاطفال', '/forKids'),
(8, NULL, NULL, 'معايير جوده المياه', '/water-quality'),
(9, NULL, NULL, 'طرق التنقيه', '/refining-water'),
(10, NULL, NULL, ' المعمل وتحليل العينات', '/lab-of-company-water'),
(11, NULL, NULL, 'المناقصات', '/allTenders'),
(13, NULL, NULL, 'أنواع التدريب ', '/general-admin-training'),
(14, NULL, NULL, 'تسجيل في المدرسه الفنيه ', '/register-in-school'),
(15, NULL, NULL, 'نتائج المدرسه الفنيه ', '/Result-of-school'),
(16, NULL, NULL, 'المسابقات و الوظائف الحالية', '/jobs-and-compitaion'),
(17, NULL, NULL, 'نتائج مسابقات الوظائف', '/result-Of-compitaion'),
(18, NULL, NULL, 'أستعلم عن فاتورتك', '/inquire-your-bill'),
(19, NULL, NULL, 'خدمة العملاء', '/call-center'),
(20, NULL, NULL, 'أدخل قراءتك', '/inquire-your-bill'),
(21, NULL, NULL, 'جولات الرئيس مجلس الإداره', '/trips-the-boss');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `userId`, `date`, `age_in_october`, `city`, `year_of_graduated`, `phone`, `address`, `total_grade`, `created_at`, `updated_at`) VALUES
(1, '12222', '11111111111111', '2010-12-10', '12', 'الاقصر', '2021', '01111111111', 'qq', '121', '2021-12-16 06:28:27', '2021-12-16 06:28:27'),
(2, 'ضضض', '11111111111111', '2010-12-10', '12', 'سوهاج', '2021', '01111111111', 'ضضضضضض', '122', '2021-12-16 08:20:59', '2021-12-16 08:20:59'),
(3, 'روجيتا مظهر أفرايم', '01111111111111', '2010-12-15', '12', 'سوهاج', '2022', '01111111111', 'ش النميس', '122', '2021-12-16 09:11:43', '2021-12-16 09:11:43'),
(4, 'peter', '11111111111111', '2010-12-08', '12', 'أسيوط', '2021', '01111111111', 'qqqq', '122', '2021-12-18 06:06:55', '2021-12-18 06:06:55'),
(5, 'aaa', 'aaaaaaa', 'aaaaaaaaa', 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 'aaaaaa', 'aaaa', 'aaa', '2021-12-18 09:56:55', '2021-12-18 09:56:55'),
(6, 'aaaa', '12222222222222', '2010-12-09', '22', 'أسوان', '2021', '01111111111', 'wewe', '111', '2021-12-18 10:02:19', '2021-12-18 10:02:19'),
(7, 'Mos', '11111111111111', '2010-12-03', '12', 'أسيوط', '2022', '01111111111', 'wwwww', '122', '2021-12-21 06:17:08', '2021-12-21 06:17:08'),
(8, '33', 'this.userId', 'this.date', 'this.ageInOctober', 'this.selectCity', 'this.selectYear', 'this.phone', 'this.address', 'this.totalGrade', '2022-01-02 05:04:19', '2022-01-02 05:04:19');

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
