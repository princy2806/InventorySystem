-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 04:07 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patanjali`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_masters`
--

CREATE TABLE `category_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_masters`
--

INSERT INTO `category_masters` (`id`, `cname`, `created_at`, `updated_at`) VALUES
(1, 'Natural health care ', '2021-05-31 12:25:29', '2021-05-31 12:25:46'),
(2, 'Natural Food Products', '2021-05-31 12:26:16', '2021-05-31 12:26:16'),
(3, 'Medicine', '2021-05-31 12:26:51', '2021-05-31 12:26:51'),
(4, 'Herbal Home Care', '2021-05-31 12:27:37', '2021-05-31 12:27:37'),
(5, 'Natural Process Care', '2021-06-09 18:30:00', '2021-06-09 18:30:00'),
(6, 'Fit India Category', '2021-06-09 18:30:00', '2021-06-09 18:30:00'),
(7, 'Patanjali Publication', '2021-06-09 18:30:00', '2021-06-09 18:30:00');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inward_registers`
--

CREATE TABLE `inward_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `itemid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `expiredate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inward_registers`
--

INSERT INTO `inward_registers` (`id`, `itemid`, `pid`, `uid`, `quantity`, `price`, `expiredate`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 4000, 350, '0000-00-00 00:00:00', '2021-06-09 18:30:00', '2021-06-09 18:30:00'),
(2, 5, 1, 2, 5000, 20, '2021-06-29 18:30:00', '2021-06-01 18:30:00', '2021-06-01 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_masters`
--

CREATE TABLE `item_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL,
  `iname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentstock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minstock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_masters`
--

INSERT INTO `item_masters` (`id`, `catid`, `iname`, `currentstock`, `minstock`, `image`, `mrp`, `created_at`, `updated_at`) VALUES
(2, 1, 'Fruit beverage', '1400', '50', '1623303995.jpeg', 112, '2021-05-31 12:40:06', '2021-06-10 00:16:35'),
(4, 1, 'Moosli pak', '4000', '100', '1623305125.jpeg', 350, '2021-06-09 18:30:00', '2021-06-10 00:35:25'),
(5, 1, 'Amla amrit', '5000', '100', '1623305141.png', 20, '2021-06-09 18:30:00', '2021-06-10 00:35:41'),
(6, 2, 'Oats', '5000', '100', '1623305446.jpeg', 40, '2021-06-09 18:30:00', '2021-06-10 00:40:46'),
(7, 2, 'Poha', '6000', '100', '1623305466.jpeg', 70, '2021-06-09 18:30:00', '2021-06-10 00:41:06'),
(8, 2, 'Sugar', '3000', '100', '1623305484.jpeg', 50, '2021-06-09 18:30:00', '2021-06-10 00:41:24'),
(9, 3, 'Divya churna', '6000', '100', '1623305709.jpeg', 50, '2021-06-09 18:30:00', '2021-06-10 00:45:09'),
(10, 3, 'Divya Makar Dhvaj', '7000', '1000', '1623305726.png', 80, '2021-06-09 18:30:00', '2021-06-10 00:45:26');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_31_104144_create_user_masters_table', 1),
(5, '2021_05_31_104541_create_item_masters_table', 1),
(6, '2021_05_31_105259_create_category_masters_table', 1),
(7, '2021_05_31_111054_create_inward_registers_table', 1),
(8, '2021_05_31_112325_create_place_masters_table', 1),
(9, '2021_05_31_112815_create_outward_registers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outward_registers`
--

CREATE TABLE `outward_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inwid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `place_masters`
--

CREATE TABLE `place_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `place_masters`
--

INSERT INTO `place_masters` (`id`, `landmark`, `location`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Near SMVS mandir', 'Upasna circle,Surendranagar', 275211233, '2021-05-31 12:34:14', '2021-05-31 12:34:14'),
(2, 'Near Ajramar Tower', 'Taki chock, Surendranagr', 275499877, '2021-05-31 12:36:13', '2021-05-31 12:36:13');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_masters`
--

CREATE TABLE `user_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ucontact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_masters`
--

INSERT INTO `user_masters` (`id`, `uname`, `uemail`, `upassword`, `ucontact`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Princy Shah', 'princy@gmail.com', 'Princy@123', '9999999999', 'Admin', '2021-05-31 12:29:38', '2021-06-10 00:24:51'),
(2, 'Mansi shah', 'mansi@gmail.com', 'Mansi@123', '8888888880', 'Admin', '2021-05-31 12:30:26', '2021-05-31 12:30:26'),
(3, 'Ansh shah', 'ansh@gmail.com', 'Ansh@123', '7777777770', 'Admin', '2021-05-31 12:31:52', '2021-05-31 12:31:52'),
(4, 'Abhi shah', 'abhi@gmail.com', 'Abhi@123', '6666666660', 'Admin', '2021-05-31 12:33:06', '2021-05-31 12:33:06'),
(5, 'Maya', 'maya@gmail.com', 'Maya@1234', '4284287824', 'Admin', '2021-06-09 18:30:00', '2021-06-09 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_masters`
--
ALTER TABLE `category_masters`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
