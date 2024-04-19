-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 10:31 PM
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
-- Database: `mamu_app`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_01_214507_create_post_categories_table', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '5b72c0972597f82ccf308110bce3c11d8952691fb93979c143f0d3427376e7bd', '[\"*\"]', NULL, NULL, '2024-03-31 14:33:16', '2024-03-31 14:33:16'),
(2, 'App\\Models\\User', 1, 'MyApp', '710c95acdb9e29f80661af893c6e8a937594bd401537123f709438080e7f549c', '[\"*\"]', NULL, NULL, '2024-03-31 14:44:12', '2024-03-31 14:44:12'),
(3, 'App\\Models\\User', 1, 'MyApp', 'f4d694c171bbe070b09164232c67707d72406897ee3a7774227d65def22998bd', '[\"*\"]', NULL, NULL, '2024-04-04 13:14:32', '2024-04-04 13:14:32'),
(4, 'App\\Models\\User', 1, 'MyApp', '4f04d0e514aca47206b18480830e276cd1f457e27bf36648561e26be78385a73', '[\"*\"]', NULL, NULL, '2024-04-04 13:14:37', '2024-04-04 13:14:37'),
(5, 'App\\Models\\User', 1, 'MyApp', '835be752a52fa5752127dc8013e92f75e58fcefd194ba0453ecb3c75d0ea8902', '[\"*\"]', NULL, NULL, '2024-04-04 13:14:39', '2024-04-04 13:14:39'),
(6, 'App\\Models\\User', 1, 'MyApp', '8e79d7fcf7fe1a7c51cf6599040472c56987e49f147cf028950ea7fb7cb70dc3', '[\"*\"]', NULL, NULL, '2024-04-04 13:14:42', '2024-04-04 13:14:42'),
(7, 'App\\Models\\User', 1, 'MyApp', 'b019dc308a2b939691f13fe33c21b1912a5ec357bfbc826d3464e68a6f5fa553', '[\"*\"]', NULL, NULL, '2024-04-04 13:21:59', '2024-04-04 13:21:59'),
(8, 'App\\Models\\User', 1, 'MyApp', '426669c711b49fd39198db44f8a4dcb0ed06b5ed994b05d1acb22deac18f27f6', '[\"*\"]', NULL, NULL, '2024-04-04 13:22:03', '2024-04-04 13:22:03'),
(9, 'App\\Models\\User', 1, 'MyApp', 'e021bf22fc1cb557df2f50426eeb49204b121dd11e077a319065a3fe552ffbf3', '[\"*\"]', NULL, NULL, '2024-04-04 13:49:39', '2024-04-04 13:49:39'),
(10, 'App\\Models\\User', 1, 'MyApp', '054b9a48d0ff7fc3f2e0bf005577f0c671818e96b02df131ebbdb1ad1f31fefd', '[\"*\"]', NULL, NULL, '2024-04-04 13:55:25', '2024-04-04 13:55:25'),
(11, 'App\\Models\\User', 1, 'MyApp', '073a92a5d674b340a91418b32db25114525c32db1c6547c09b2a1094a9872645', '[\"*\"]', NULL, NULL, '2024-04-04 14:06:11', '2024-04-04 14:06:11'),
(12, 'App\\Models\\User', 1, 'MyApp', '5f68e79f0156e4668b8e24e01cad0fa6242332f8a00d29633fe2db4e295d12cb', '[\"*\"]', NULL, NULL, '2024-04-04 14:07:13', '2024-04-04 14:07:13'),
(13, 'App\\Models\\User', 1, 'MyApp', 'cc8fa98af5a3fc871c37714e42575dbb94fa5de6aedc952870a72dd9c5597100', '[\"*\"]', NULL, NULL, '2024-04-04 14:07:40', '2024-04-04 14:07:40'),
(14, 'App\\Models\\User', 1, 'MyApp', '09e7f0c5e7e94c8e434fbc1234dc5080a156445a4c17623fb9629a2a047008cf', '[\"*\"]', NULL, NULL, '2024-04-04 14:10:47', '2024-04-04 14:10:47'),
(15, 'App\\Models\\User', 1, 'MyApp', 'dfbd3662f091184cd3d0afb77667443e8ac3e830f2ab544aa6d34078001b620c', '[\"*\"]', NULL, NULL, '2024-04-04 14:14:39', '2024-04-04 14:14:39'),
(16, 'App\\Models\\User', 1, 'MyApp', '6ca48a04d3870d9ecc0cbc4285cac863e4af63aa5d7ab8d78689f6f0e52a83d0', '[\"*\"]', NULL, NULL, '2024-04-04 14:15:12', '2024-04-04 14:15:12'),
(17, 'App\\Models\\User', 1, 'MyApp', '4fbb48bbe5b64803cfb57602b47216d0aaa6e8f112b1ffdd2eb7e8c680d606ac', '[\"*\"]', NULL, NULL, '2024-04-04 14:19:20', '2024-04-04 14:19:20'),
(18, 'App\\Models\\User', 1, 'MyApp', 'abb4c005926b51be2e14a157eb885d5750cc34756e348deee6030d7254c9fbb6', '[\"*\"]', NULL, NULL, '2024-04-04 14:20:15', '2024-04-04 14:20:15'),
(19, 'App\\Models\\User', 1, 'MyApp', 'ea812787dfe23ae8d4ea7ea4e0448f7b0c02517e84ebb0c4a5380df0d4e8d305', '[\"*\"]', NULL, NULL, '2024-04-04 14:20:28', '2024-04-04 14:20:28'),
(20, 'App\\Models\\User', 1, 'MyApp', '1c566547b0274f36be3fe2e0693f568885d1e98b390b3fc85c75f5bf19d716a4', '[\"*\"]', NULL, NULL, '2024-04-04 14:20:54', '2024-04-04 14:20:54'),
(21, 'App\\Models\\User', 1, 'MyApp', 'a79af3711499646949f183d4f010257b3d98723807677adc1db4ae9851d8d2c0', '[\"*\"]', NULL, NULL, '2024-04-04 14:23:52', '2024-04-04 14:23:52'),
(22, 'App\\Models\\User', 1, 'MyApp', 'fd541642cc522905fd59be070abf03a798cc646e682071fe499bbdb302e2512a', '[\"*\"]', NULL, NULL, '2024-04-04 14:23:54', '2024-04-04 14:23:54'),
(23, 'App\\Models\\User', 1, 'MyApp', '1801a4a838e312bae67e82b14f3802c22ea62dac6dec1f89b2d7c96b95bf142b', '[\"*\"]', NULL, NULL, '2024-04-04 14:24:22', '2024-04-04 14:24:22'),
(24, 'App\\Models\\User', 1, 'MyApp', '398924a92e7f158840e0fc25b8b0e5a96539851f877e4d6ba9f3f5be96ef58ae', '[\"*\"]', NULL, NULL, '2024-04-04 14:25:11', '2024-04-04 14:25:11'),
(25, 'App\\Models\\User', 1, 'MyApp', '1c413be8d6373baaed63ee183bfac85b4b7f60cb250dfaeda5e15f7213f55fcb', '[\"*\"]', NULL, NULL, '2024-04-04 14:26:15', '2024-04-04 14:26:15'),
(26, 'App\\Models\\User', 1, 'MyApp', 'd33324d87db82e0f9d083c45fae637a76b806c105dcb0e80d53211bdec88b741', '[\"*\"]', NULL, NULL, '2024-04-04 14:27:02', '2024-04-04 14:27:02'),
(27, 'App\\Models\\User', 1, 'MyApp', '9ebc336377d7ee18f6dbf1446a6900f3c238f57845a2b991047c8444adbce23a', '[\"*\"]', NULL, NULL, '2024-04-04 14:27:48', '2024-04-04 14:27:48'),
(28, 'App\\Models\\User', 1, 'MyApp', 'd1434c1cd7455e05449afdf5add7ef71368456840778017f445f22a40c375d2f', '[\"*\"]', NULL, NULL, '2024-04-04 21:26:58', '2024-04-04 21:26:58'),
(29, 'App\\Models\\User', 1, 'MyApp', '958f2074bd356e05521360fa843062b68d7784f3102ef4dcb075578c93fea3fc', '[\"*\"]', NULL, NULL, '2024-04-05 12:22:12', '2024-04-05 12:22:12'),
(30, 'App\\Models\\User', 1, 'MyApp', '5c0e164153a07ec6af0d257762a636e008dd76729042c79ba1967d2006cd6393', '[\"*\"]', NULL, NULL, '2024-04-14 12:03:59', '2024-04-14 12:03:59'),
(31, 'App\\Models\\User', 1, 'MyApp', '85ff473b801ec790724ce806cab05b57970988bb70880d055dfd4f50e1a206a0', '[\"*\"]', NULL, NULL, '2024-04-14 12:47:32', '2024-04-14 12:47:32'),
(32, 'App\\Models\\User', 1, 'MyApp', '6d81518c1404953d51a6f5a48bb0529436666149f8c4d6735871d2cd7d88b475', '[\"*\"]', NULL, NULL, '2024-04-14 18:10:01', '2024-04-14 18:10:01'),
(33, 'App\\Models\\User', 1, 'MyApp', '76be41728a21478cd908c5aa76b667c877f5305e050b0aebc4c2e7d35f5f199c', '[\"*\"]', NULL, NULL, '2024-04-14 18:10:28', '2024-04-14 18:10:28'),
(34, 'App\\Models\\User', 1, 'MyApp', '603161486420678c64869bd16e4b86e30a58f15f56954f9c3d79db1db25f0271', '[\"*\"]', NULL, NULL, '2024-04-14 18:14:15', '2024-04-14 18:14:15'),
(35, 'App\\Models\\User', 1, 'MyApp', 'cea5c357befe3d468b3ad567b4f3bea4e1568ee6384b10e5a69b74a78ada6504', '[\"*\"]', NULL, NULL, '2024-04-14 18:15:51', '2024-04-14 18:15:51'),
(36, 'App\\Models\\User', 1, 'MyApp', 'a0449e2ecf56de9169e35020b3fbfadb64def71841061ad2001b4d2c1165a958', '[\"*\"]', NULL, NULL, '2024-04-14 18:17:46', '2024-04-14 18:17:46'),
(37, 'App\\Models\\User', 2, 'MyApp', '21b81df66b592acc3b7e60b602944d5416ee5dc97330484ca811a0d110661882', '[\"*\"]', NULL, NULL, '2024-04-14 18:20:21', '2024-04-14 18:20:21'),
(38, 'App\\Models\\User', 3, 'MyApp', 'a630f50782950ede570403e2a6a1e0d2e06d3a6c7a6bdb144b36d14d04f62a04', '[\"*\"]', NULL, NULL, '2024-04-14 18:23:42', '2024-04-14 18:23:42'),
(39, 'App\\Models\\User', 4, 'MyApp', '2ac0e7e663234fe8b3be9d8c055e0568399ef9667c484d0d9a6eabddd731b3f6', '[\"*\"]', NULL, NULL, '2024-04-14 18:26:31', '2024-04-14 18:26:31'),
(40, 'App\\Models\\User', 1, 'MyApp', 'b447b03cb0bfbd8e5c1ac23680283ff9c7efdebd72e62e35419dedc23f0fdf89', '[\"*\"]', NULL, NULL, '2024-04-15 00:25:28', '2024-04-15 00:25:28'),
(41, 'App\\Models\\User', 1, 'MyApp', '589faa858740ca13e35d76f04b9d96dba87ecf5ac03bd4c9b0c47c903d78f86d', '[\"*\"]', NULL, NULL, '2024-04-15 00:25:39', '2024-04-15 00:25:39'),
(42, 'App\\Models\\User', 1, 'MyApp', 'f901afcb82781cf41a865317fc9af47b329d702705ce1a4808120671b8dc4a75', '[\"*\"]', NULL, NULL, '2024-04-15 00:25:39', '2024-04-15 00:25:39'),
(43, 'App\\Models\\User', 1, 'MyApp', 'bde6a58d4689c219e018589af7e2d19fa562e2bd339f3059df324e06512bb8b0', '[\"*\"]', NULL, NULL, '2024-04-15 00:25:40', '2024-04-15 00:25:40'),
(44, 'App\\Models\\User', 1, 'MyApp', 'eda57ee642de8494708cda7cc0eeb7f7075ac69d5a114e259ab99a4e6ca7501b', '[\"*\"]', NULL, NULL, '2024-04-15 00:25:40', '2024-04-15 00:25:40'),
(45, 'App\\Models\\User', 1, 'MyApp', '73063ed55cde4de7cbf82e735986d4dea7c31788d065ca61e111dee4b5ef513b', '[\"*\"]', NULL, NULL, '2024-04-15 00:25:41', '2024-04-15 00:25:41'),
(46, 'App\\Models\\User', 1, 'MyApp', 'a79ffe1f97188023ddd6f6a84c76e11baf6ffcbc267487fc3e7a392685d1ec3c', '[\"*\"]', NULL, NULL, '2024-04-15 00:28:11', '2024-04-15 00:28:11'),
(47, 'App\\Models\\User', 1, 'MyApp', 'dd666d7944e23ae0a65bc2a9db32b0d7c3184d4230a2d682fab1c02925d6534e', '[\"*\"]', NULL, NULL, '2024-04-15 00:29:04', '2024-04-15 00:29:04'),
(48, 'App\\Models\\User', 1, 'MyApp', '40e14589a7df9b976be8405268e16dbd91e20247a84f0e8402c15042f1f74a3b', '[\"*\"]', NULL, NULL, '2024-04-15 00:29:11', '2024-04-15 00:29:11'),
(49, 'App\\Models\\User', 1, 'MyApp', '254fc5b1a0abde645c84b7cafd8fc1baafaa817e6eaa4a94b97c06b919f05aab', '[\"*\"]', NULL, NULL, '2024-04-15 00:31:10', '2024-04-15 00:31:10'),
(50, 'App\\Models\\User', 1, 'MyApp', 'e499c9d3ae0f49e7cfaa6ca2016d1a90778dba5817dc352dc62201d1ec974bdb', '[\"*\"]', NULL, NULL, '2024-04-15 00:31:25', '2024-04-15 00:31:25'),
(51, 'App\\Models\\User', 1, 'MyApp', '2b79de94c2ebe86f4e87926c11d5be70fe0eb8d0b3548e6a190f4365a363f7bd', '[\"*\"]', NULL, NULL, '2024-04-15 00:32:30', '2024-04-15 00:32:30'),
(52, 'App\\Models\\User', 1, 'MyApp', '0e721d106e0db7947cdadd7f7fe81712b1df6bbe572f37ead24c970c8af70498', '[\"*\"]', NULL, NULL, '2024-04-15 00:32:47', '2024-04-15 00:32:47'),
(53, 'App\\Models\\User', 1, 'MyApp', 'feb37e683f6fcd4c6abb31b40ca9778169ad6fda52031d165ef68b47677fd430', '[\"*\"]', NULL, NULL, '2024-04-15 00:33:37', '2024-04-15 00:33:37'),
(54, 'App\\Models\\User', 1, 'MyApp', '40f505cb2364190ff83ffb0c5ba6a87ec566544be796c260613fff813d0427aa', '[\"*\"]', NULL, NULL, '2024-04-15 00:34:20', '2024-04-15 00:34:20'),
(55, 'App\\Models\\User', 1, 'MyApp', '7920b9c7cba2e33cfa85ba6d54121dda9bf07c137e43bf8bf8f208b2fb02b3a2', '[\"*\"]', NULL, NULL, '2024-04-15 00:35:46', '2024-04-15 00:35:46'),
(56, 'App\\Models\\User', 1, 'MyApp', 'fc026096dcc2afa8bd794101e882c21b856586f65411dec1b02032ed5bcafe76', '[\"*\"]', NULL, NULL, '2024-04-15 00:35:57', '2024-04-15 00:35:57'),
(57, 'App\\Models\\User', 1, 'MyApp', '30a6f0f8997e46db530d80530a4d528a31c059d52765e02ffdc7334caedd99ee', '[\"*\"]', NULL, NULL, '2024-04-15 00:36:25', '2024-04-15 00:36:25'),
(58, 'App\\Models\\User', 1, 'MyApp', 'dc029e2af28aa27ef72674add5e624e53355e81b9ba3f2c41d31f65510280d7f', '[\"*\"]', NULL, NULL, '2024-04-15 03:39:32', '2024-04-15 03:39:32'),
(59, 'App\\Models\\User', 1, 'MyApp', '229450ea25e93987b3265da1cbe64909168934ab3c424bf74ce9eb98f8c754d9', '[\"*\"]', NULL, NULL, '2024-04-15 03:39:42', '2024-04-15 03:39:42'),
(60, 'App\\Models\\User', 1, 'MyApp', 'f3f638544b6d3f738e74f31f1148537e531326d014c1b5feeb085d827690358f', '[\"*\"]', NULL, NULL, '2024-04-15 03:41:14', '2024-04-15 03:41:14'),
(61, 'App\\Models\\User', 1, 'MyApp', '856c710cd31b5eaaf688e41adde0058dfe37bc72d4d57b7d26afcdf1fc2a078f', '[\"*\"]', NULL, NULL, '2024-04-15 03:44:56', '2024-04-15 03:44:56'),
(62, 'App\\Models\\User', 1, 'MyApp', 'f0c171a1c61de8ca2007eb4970078269e70f0bc5368cf901cf41f5dc276ee237', '[\"*\"]', NULL, NULL, '2024-04-15 03:45:02', '2024-04-15 03:45:02'),
(63, 'App\\Models\\User', 1, 'MyApp', 'ea3d7b223ae33f04c96da1d1758b593bda25651d9ffe0c967d35340985d226a6', '[\"*\"]', NULL, NULL, '2024-04-15 03:47:58', '2024-04-15 03:47:58'),
(64, 'App\\Models\\User', 1, 'MyApp', 'cc184f44e4feb359f7fc0ee24e7f302ebd9b3479883adce02c6e291942568d5b', '[\"*\"]', NULL, NULL, '2024-04-15 04:02:49', '2024-04-15 04:02:49'),
(65, 'App\\Models\\User', 1, 'MyApp', 'eeee8fd1bcf516d239ad84c3585d65656f318e538b575d3c8e63f07e271840ef', '[\"*\"]', NULL, NULL, '2024-04-15 04:03:51', '2024-04-15 04:03:51'),
(66, 'App\\Models\\User', 1, 'MyApp', '75c0240b4a7e0883dfc7f61b86e97626be9020f0f5635e5bf07748bd67554495', '[\"*\"]', NULL, NULL, '2024-04-15 04:07:50', '2024-04-15 04:07:50'),
(67, 'App\\Models\\User', 1, 'MyApp', '427b25d07e855b21b2629f674a459c4dfaaa20713a38cd09c003d1caa7852f6b', '[\"*\"]', NULL, NULL, '2024-04-15 04:08:01', '2024-04-15 04:08:01'),
(68, 'App\\Models\\User', 1, 'MyApp', '3ebe42502ac1f229c5e83cd1d37c1f329789638d77bfd455da2a8cd075ebc3b8', '[\"*\"]', NULL, NULL, '2024-04-15 04:08:07', '2024-04-15 04:08:07'),
(69, 'App\\Models\\User', 1, 'MyApp', 'fac05fb34ac90f8257b9a2a9e52891385c2e89151ebdedb6d107ee1f3b15c284', '[\"*\"]', NULL, NULL, '2024-04-15 04:08:08', '2024-04-15 04:08:08'),
(70, 'App\\Models\\User', 1, 'MyApp', '29c8fc23fdfe73471d369296596b299f81b5922ee806b4d19c162aba7e8120cd', '[\"*\"]', NULL, NULL, '2024-04-15 04:08:08', '2024-04-15 04:08:08'),
(71, 'App\\Models\\User', 1, 'MyApp', '56a9ef9e64212c0f1aeb8fe4f2ccf4ec1a2229e9181d3854abae956893112a9b', '[\"*\"]', NULL, NULL, '2024-04-15 04:08:09', '2024-04-15 04:08:09'),
(72, 'App\\Models\\User', 1, 'MyApp', '4969988d4878a8d9c7386dcea068a80d5860fea02853428b64e63ec45d56f86b', '[\"*\"]', NULL, NULL, '2024-04-15 04:08:09', '2024-04-15 04:08:09'),
(73, 'App\\Models\\User', 1, 'MyApp', '8a0d221c00e45383f240ad3981d0a4650cc96bd5360c41bee74f6c64ed4a8ca6', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:26', '2024-04-15 04:09:26'),
(74, 'App\\Models\\User', 1, 'MyApp', '155a4a09ce3693e0faab764a002eeb2020c929cf1fde7b2738430f4d08fff78c', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:40', '2024-04-15 04:09:40'),
(75, 'App\\Models\\User', 1, 'MyApp', 'a8ac505a6e914466b682be12b323966935920b7f270451b4d2e15f42906e933c', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:56', '2024-04-15 04:09:56'),
(76, 'App\\Models\\User', 1, 'MyApp', 'ff853783fd4d9cb68f65e86e829bd1e59efad169853c8fa9d1b04a1ab03f58f8', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:57', '2024-04-15 04:09:57'),
(77, 'App\\Models\\User', 1, 'MyApp', 'e534353ad5483860f408faa21f1368ba93834574f10de341906f50e7a1ea2e00', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:58', '2024-04-15 04:09:58'),
(78, 'App\\Models\\User', 1, 'MyApp', '9d252ecc77ee8908807b013343f13fc9cd0d39b1b7feb8c0e219fda76482d532', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:58', '2024-04-15 04:09:58'),
(79, 'App\\Models\\User', 1, 'MyApp', '8ae69341d5def4a1daee4b98ceb475d2cfba071e17fa5fc56e34b9ded713b1f5', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:59', '2024-04-15 04:09:59'),
(80, 'App\\Models\\User', 1, 'MyApp', 'e1ac4a65c67a2d44935c1a47211fd7b25d2f583ca7153edb29293fea3e2d48a9', '[\"*\"]', NULL, NULL, '2024-04-15 04:09:59', '2024-04-15 04:09:59'),
(81, 'App\\Models\\User', 1, 'MyApp', 'c8c6db824293d3b1ef76800d2043baecb1b1117721b4640e75540c7c5de1e11e', '[\"*\"]', NULL, NULL, '2024-04-15 12:54:58', '2024-04-15 12:54:58'),
(82, 'App\\Models\\User', 1, 'MyApp', '258a4b7e29897398ac0a72dec4202c693ce696982abf1c21a8370cd0a29e5f68', '[\"*\"]', NULL, NULL, '2024-04-15 13:02:39', '2024-04-15 13:02:39'),
(83, 'App\\Models\\User', 1, 'MyApp', '945df137feb08f1e8f94f160a9c89f70148d370a6c896b7b1b1b8fd327556ff7', '[\"*\"]', NULL, NULL, '2024-04-15 13:02:44', '2024-04-15 13:02:44'),
(84, 'App\\Models\\User', 1, 'MyApp', '941be4cc383b712467571a570dc6d2d247d1954dafcd152a1d1d743a1b3705ca', '[\"*\"]', NULL, NULL, '2024-04-15 13:02:51', '2024-04-15 13:02:51'),
(85, 'App\\Models\\User', 1, 'MyApp', '72377659c435e89eb7024ba0fa3a56d6e9858c925537e1aca6a51108a560859c', '[\"*\"]', NULL, NULL, '2024-04-15 13:06:36', '2024-04-15 13:06:36'),
(86, 'App\\Models\\User', 1, 'MyApp', 'e38978a4c54a494418e994422b5f83060fae4975fdd559c098b677b8616cfc31', '[\"*\"]', NULL, NULL, '2024-04-15 13:06:56', '2024-04-15 13:06:56'),
(87, 'App\\Models\\User', 1, 'MyApp', '01d2f3c2af49cd0192c055df13a8ae5188487b1f89e62b17620f72bdf9370eed', '[\"*\"]', NULL, NULL, '2024-04-15 13:12:44', '2024-04-15 13:12:44'),
(88, 'App\\Models\\User', 1, 'MyApp', '2814e1e58d9dfedbc9be0711fd408019c5207a4ddac108461c9f46017a2ad477', '[\"*\"]', NULL, NULL, '2024-04-15 13:15:32', '2024-04-15 13:15:32'),
(89, 'App\\Models\\User', 5, 'MyApp', 'c64157a690f7fd1287d270112e31ee01963207898daadab30a8e9c2e85ab2392', '[\"*\"]', NULL, NULL, '2024-04-15 13:15:49', '2024-04-15 13:15:49'),
(90, 'App\\Models\\User', 6, 'MyApp', '43d932fa0d079f34c4a7398751321e0187e854c55fa6771d6f760b4aefe3b955', '[\"*\"]', NULL, NULL, '2024-04-15 13:17:42', '2024-04-15 13:17:42'),
(91, 'App\\Models\\User', 7, 'MyApp', '4f04c4c51c8327363c43b915622a17592eae8f6e0e204ded4b638dbb2d55a090', '[\"*\"]', NULL, NULL, '2024-04-15 13:23:01', '2024-04-15 13:23:01'),
(92, 'App\\Models\\User', 1, 'MyApp', 'a87ec7fd0f5f1681460f272326264965f67509bbbbff7091a543236361d3f01d', '[\"*\"]', NULL, NULL, '2024-04-15 13:23:25', '2024-04-15 13:23:25'),
(93, 'App\\Models\\User', 1, 'MyApp', 'dfbb2511adfc428f47476d87f4185f073b4585254cc570794e434b7fe16b7184', '[\"*\"]', NULL, NULL, '2024-04-15 13:23:48', '2024-04-15 13:23:48'),
(94, 'App\\Models\\User', 1, 'MyApp', '7b2a9aaa13377849f2ad5a30cc59fd5a32caec9e1f0cd9ef11ce09a8f31b69f9', '[\"*\"]', NULL, NULL, '2024-04-15 13:25:21', '2024-04-15 13:25:21'),
(95, 'App\\Models\\User', 1, 'MyApp', 'a938e891c20db9a045591b7637298703e617144d430b5b2a529b066352f8afbb', '[\"*\"]', NULL, NULL, '2024-04-15 13:26:19', '2024-04-15 13:26:19'),
(96, 'App\\Models\\User', 1, 'MyApp', 'b087b6d7a6614a557e1f18a70be32f7074800c44aa1ba3e73d3ad2f978858bb8', '[\"*\"]', NULL, NULL, '2024-04-15 13:27:06', '2024-04-15 13:27:06'),
(97, 'App\\Models\\User', 1, 'MyApp', '907b2224a5eee68a93c5dc9354af1bead2a411b63ea2915be9b89b066e6fdbda', '[\"*\"]', NULL, NULL, '2024-04-15 13:32:15', '2024-04-15 13:32:15'),
(98, 'App\\Models\\User', 1, 'MyApp', 'f39de3634d00119d6e5b74f87dc6347e2712426434574439158d2b9d0720e727', '[\"*\"]', NULL, NULL, '2024-04-15 13:32:46', '2024-04-15 13:32:46'),
(99, 'App\\Models\\User', 1, 'MyApp', '06534a5167ba7c8044669067b913160c766b608973fa14f9ff9d6ae2628f32c2', '[\"*\"]', NULL, NULL, '2024-04-15 13:33:25', '2024-04-15 13:33:25'),
(100, 'App\\Models\\User', 1, 'MyApp', '5e932f1c6bb8dfb0d898d332d8a095a6f7703c460a6c239a0741f65a7f5421ab', '[\"*\"]', NULL, NULL, '2024-04-15 13:33:44', '2024-04-15 13:33:44'),
(101, 'App\\Models\\User', 1, 'MyApp', 'a399b3993a6b10108846c9558010bdc5d9393c3b79f94e670bb623802b3ac108', '[\"*\"]', NULL, NULL, '2024-04-15 13:34:22', '2024-04-15 13:34:22'),
(102, 'App\\Models\\User', 1, 'MyApp', '49a7c520dac3d7c2c685d0354d34a22348b62edc070d42117406394b413e159f', '[\"*\"]', NULL, NULL, '2024-04-15 13:34:31', '2024-04-15 13:34:31'),
(103, 'App\\Models\\User', 1, 'MyApp', 'c3339cd174105eea9da3d20bc4b3eb0ef96ea5bf34f814ef7e47e271a07e84be', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:16', '2024-04-15 13:35:16'),
(104, 'App\\Models\\User', 1, 'MyApp', '63fe1c26523b1b51aa0142f08ac140e12220e204e566ba1a328be29daed95f6c', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:21', '2024-04-15 13:35:21'),
(105, 'App\\Models\\User', 1, 'MyApp', '366881ce0487f0b649e1ac02d0c373f4f6be0da1a6d48103b4c7d800f7c70917', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:22', '2024-04-15 13:35:22'),
(106, 'App\\Models\\User', 1, 'MyApp', '4ed4b35c90ae1cfd3ef7e36d3c2a3619f7cea4db514e8b5bb94c3a04e1eb04a6', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:23', '2024-04-15 13:35:23'),
(107, 'App\\Models\\User', 1, 'MyApp', 'c1eeb0dc47c13aff6c24b2dc082a6bddbfccb9cdcf074138e6162e29f39e1d5f', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:23', '2024-04-15 13:35:23'),
(108, 'App\\Models\\User', 1, 'MyApp', 'ca98f3f02e0440a3881e3ab01edf1fd59fc1edb9b2f77c8d76cf21ac6474f7c3', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:24', '2024-04-15 13:35:24'),
(109, 'App\\Models\\User', 1, 'MyApp', 'be1084db1868cfae1c56fa4c121e3652f3dea55542befe8f5ec3161e8d83e0a5', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:25', '2024-04-15 13:35:25'),
(110, 'App\\Models\\User', 1, 'MyApp', '07ec233eaeff165aa10b5d03aaa9a11394453c8e765622c4a6d200a2c44fd7e2', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:25', '2024-04-15 13:35:25'),
(111, 'App\\Models\\User', 1, 'MyApp', '67dee8dfc18266adab7505bf9240b0b24b3e86a63e25b81821ed1a7e34c1fabe', '[\"*\"]', NULL, NULL, '2024-04-15 13:35:26', '2024-04-15 13:35:26'),
(112, 'App\\Models\\User', 1, 'MyApp', '7aaa141a258103c99f995585e16eb448234b02de9b26787778d03a968b250773', '[\"*\"]', NULL, NULL, '2024-04-15 13:36:14', '2024-04-15 13:36:14'),
(113, 'App\\Models\\User', 1, 'MyApp', 'b555b2d558d468f87ef577ee8578ee197ad11686e80294a834caa0147990b9d4', '[\"*\"]', NULL, NULL, '2024-04-15 13:36:35', '2024-04-15 13:36:35'),
(114, 'App\\Models\\User', 1, 'MyApp', '1ed98869a2a308dda51f5e68651d82e594bf3631423fec4c568407e53e90ac7e', '[\"*\"]', NULL, NULL, '2024-04-15 13:38:23', '2024-04-15 13:38:23'),
(115, 'App\\Models\\User', 1, 'MyApp', 'ecee49fa000e674cad9a0facb87c29f601419518427e4d215fee053f10e5cf3b', '[\"*\"]', NULL, NULL, '2024-04-15 13:38:47', '2024-04-15 13:38:47'),
(116, 'App\\Models\\User', 1, 'MyApp', '3fc790b131fcc4179e5af624d303ec742f15efe3e56b8c7a88d7768eae68bb9b', '[\"*\"]', NULL, NULL, '2024-04-15 13:39:26', '2024-04-15 13:39:26'),
(117, 'App\\Models\\User', 1, 'MyApp', 'e0f7c92fe67fcc4d235d63577a6e0515f4487f37365785979ca33f09c1717427', '[\"*\"]', NULL, NULL, '2024-04-15 13:57:42', '2024-04-15 13:57:42'),
(118, 'App\\Models\\User', 1, 'MyApp', '45619673feb12d73ad7be9fea5acc59c8a0569e7a640fc63c754e3c6dabf6722', '[\"*\"]', NULL, NULL, '2024-04-15 13:58:18', '2024-04-15 13:58:18'),
(119, 'App\\Models\\User', 1, 'MyApp', '1a0cbe180e939a1f889f2ef6b5ad803f26fbe3218c300c19a88b2f2c7b9d62d5', '[\"*\"]', NULL, NULL, '2024-04-15 13:58:43', '2024-04-15 13:58:43'),
(120, 'App\\Models\\User', 1, 'MyApp', '30a459342d149d850d864465b6c07921d443c30d6088ca2c8179d359e9ede91c', '[\"*\"]', NULL, NULL, '2024-04-17 10:56:14', '2024-04-17 10:56:14'),
(121, 'App\\Models\\User', 1, 'MyApp', '9ec80401f57b3827c1d1b354bfd24cb6a7112109d460dedfaf185be63abd0fe6', '[\"*\"]', '2024-04-17 11:27:40', NULL, '2024-04-17 10:59:06', '2024-04-17 11:27:40'),
(122, 'App\\Models\\User', 1, 'MyApp', '521cca0717d645fd07b7b49781d05e86abce0490bb66a4ed60aa00e2f214d5a8', '[\"*\"]', NULL, NULL, '2024-04-17 11:36:07', '2024-04-17 11:36:07'),
(123, 'App\\Models\\User', 1, 'MyApp', '61242b33069aa466823e9c3273a463ac93583e95775f9efa41e291c5216c1826', '[\"*\"]', NULL, NULL, '2024-04-17 11:36:20', '2024-04-17 11:36:20'),
(124, 'App\\Models\\User', 1, 'MyApp', 'c3ad51853264a3d2a8b4753def82ab4acec87dc47de568298ec4fdf537fcefd0', '[\"*\"]', NULL, NULL, '2024-04-17 11:37:13', '2024-04-17 11:37:13'),
(125, 'App\\Models\\User', 1, 'MyApp', '8e803ae9009878362a2fcbdc2890de1239a3d9e8c93ad32b77a030ca27427701', '[\"*\"]', '2024-04-17 11:39:21', NULL, '2024-04-17 11:37:55', '2024-04-17 11:39:21'),
(126, 'App\\Models\\User', 1, 'MyApp', '00345f964c0507b6bdf4b2ebb09e91968dad5e14f8c6ab60b5d0e1d7b8f0a43e', '[\"*\"]', '2024-04-17 14:50:44', NULL, '2024-04-17 11:40:52', '2024-04-17 14:50:44'),
(127, 'App\\Models\\User', 1, 'MyApp', '82b706bd54eb41d2edd4c9de73c61bc9c239624ab85553517bff734de5a57900', '[\"*\"]', NULL, NULL, '2024-04-17 15:03:37', '2024-04-17 15:03:37'),
(128, 'App\\Models\\User', 1, 'MyApp', '7f11aa56b6dc7a6353fea7d4e14bc9dc28450c496a5e36209451065ffac9ea06', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:00', '2024-04-17 15:04:00'),
(129, 'App\\Models\\User', 1, 'MyApp', '1e71e24cc46161425aee02fe210982920768bdf41b7a20f79436f8f46f5a3365', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:07', '2024-04-17 15:04:07'),
(130, 'App\\Models\\User', 1, 'MyApp', '8398a0b87aa798d41ac82cbfc1dfa11e45c13319970284145bed9aa8f8d2f71e', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:07', '2024-04-17 15:04:07'),
(131, 'App\\Models\\User', 1, 'MyApp', 'e8d145974990b081915ff2f219cb35d39ea50c17d5f21d1f6123ce0c37ff9f0f', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:08', '2024-04-17 15:04:08'),
(132, 'App\\Models\\User', 1, 'MyApp', '8ecadb764f016cf8635f98471fbdda7f2ee91a8e25771ba63719b778367b3063', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:09', '2024-04-17 15:04:09'),
(133, 'App\\Models\\User', 1, 'MyApp', '90fe71c8bdf3591054c91ebc860c9d340fcad213de4cb8f37dbae5aa5fee5165', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:09', '2024-04-17 15:04:09'),
(134, 'App\\Models\\User', 1, 'MyApp', '8bc00587be46c30febbef1eae5c4caf867eecc05178e38151ee60fffb9d8792c', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:09', '2024-04-17 15:04:09'),
(135, 'App\\Models\\User', 1, 'MyApp', '71720462653237c1647ee4b922c1942b4358aa583c89e407203f41d393115065', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:28', '2024-04-17 15:04:28'),
(136, 'App\\Models\\User', 1, 'MyApp', '3ac5a45dff750f7204bf73ce177a83ee86b96b38568cc8f407bb5ca7ce452fd4', '[\"*\"]', NULL, NULL, '2024-04-17 15:04:43', '2024-04-17 15:04:43'),
(137, 'App\\Models\\User', 1, 'MyApp', 'a242dcbd7d2fdec3e6f05af0afff97965e00c134507065056a2f2643aa76d5f1', '[\"*\"]', NULL, NULL, '2024-04-17 15:26:34', '2024-04-17 15:26:34'),
(138, 'App\\Models\\User', 1, 'MyApp', '668b2c2b71c1318abec4ec70f8f34f09a5dc8744526de9c1c371c947115a33ec', '[\"*\"]', NULL, NULL, '2024-04-17 15:27:01', '2024-04-17 15:27:01'),
(139, 'App\\Models\\User', 1, 'MyApp', '6c953cb563cd6b2d3fe670b669aa9e66a2f67c7af84f992bdfcd7fdd5a3141c7', '[\"*\"]', NULL, NULL, '2024-04-17 15:42:02', '2024-04-17 15:42:02'),
(140, 'App\\Models\\User', 1, 'MyApp', 'e218588c34a6d74293cc775ecf489d2d6a6ab376c71be8e75f77e7928b4ee425', '[\"*\"]', NULL, NULL, '2024-04-17 15:42:58', '2024-04-17 15:42:58'),
(141, 'App\\Models\\User', 1, 'MyApp', '8146d2c2b52fa95810e7ca609bd3da2d4d77e1bfd914ddc1ef876f7803191f74', '[\"*\"]', NULL, NULL, '2024-04-17 15:43:05', '2024-04-17 15:43:05'),
(142, 'App\\Models\\User', 1, 'MyApp', 'f7d17c61e662719229e8114efbcac57d36b202e976465793363c47f1f367c780', '[\"*\"]', '2024-04-17 15:46:43', NULL, '2024-04-17 15:44:36', '2024-04-17 15:46:43'),
(143, 'App\\Models\\User', 1, 'MyApp', '68bc661d1c1239806b42e03fa108d3df21a3d0e5a747d65921b594dfa51243f6', '[\"*\"]', NULL, NULL, '2024-04-17 15:46:52', '2024-04-17 15:46:52'),
(144, 'App\\Models\\User', 1, 'MyApp', '9672fc8a5539b3663e9f875dac3466b75289bbb468992fdbabc60d0453dc2d45', '[\"*\"]', NULL, NULL, '2024-04-17 15:47:53', '2024-04-17 15:47:53'),
(145, 'App\\Models\\User', 1, 'MyApp', 'e136d3dc71821d0a44caac17f9ace761a2c81dba50e3e5642b55ab71356bf2da', '[\"*\"]', NULL, NULL, '2024-04-17 15:51:00', '2024-04-17 15:51:00'),
(146, 'App\\Models\\User', 1, 'MyApp', '970294b629ee08bb65b89b44967cddec5ff14956d41f36a21ac9ab191b3c4c40', '[\"*\"]', '2024-04-17 15:51:21', NULL, '2024-04-17 15:51:20', '2024-04-17 15:51:21'),
(147, 'App\\Models\\User', 1, 'MyApp', 'f3074ece67f130dfa5629fd605d114cccbaac39162e5f4660c7de46ba5df2fee', '[\"*\"]', '2024-04-17 15:55:10', NULL, '2024-04-17 15:55:07', '2024-04-17 15:55:10'),
(148, 'App\\Models\\User', 1, 'MyApp', '8c649c7745b1dcd85499b6789f8d11558ce483d84c7c851c75f0840a95dda50d', '[\"*\"]', '2024-04-17 16:02:35', NULL, '2024-04-17 16:02:04', '2024-04-17 16:02:35'),
(149, 'App\\Models\\User', 1, 'MyApp', 'b0cb3df866505419963722e6a1361d4077670b32f1ba4f72be13b4b007f553f6', '[\"*\"]', NULL, NULL, '2024-04-17 16:02:44', '2024-04-17 16:02:44'),
(150, 'App\\Models\\User', 1, 'MyApp', 'f70240f01a2b3ddadc0cf818dbf1d804b7cd2df5ed2d729c74aa6ef2f1a32bac', '[\"*\"]', NULL, NULL, '2024-04-17 16:15:59', '2024-04-17 16:15:59'),
(151, 'App\\Models\\User', 1, 'MyApp', '19bfdb2c631d84b246ee5c5fc326f9552cf5eb5b1adb1ec0ed6690f419379bf0', '[\"*\"]', '2024-04-17 16:19:42', NULL, '2024-04-17 16:19:40', '2024-04-17 16:19:42'),
(152, 'App\\Models\\User', 1, 'MyApp', '8eb9d426329aedca79cf91a970c56b46413fe29e710a9e64cf42b8defe145b35', '[\"*\"]', NULL, NULL, '2024-04-17 16:26:51', '2024-04-17 16:26:51'),
(153, 'App\\Models\\User', 1, 'MyApp', 'b7a1e7af8f4cc2470ae55731bd1ec62a354673f5515b7f266c814a705fd2280d', '[\"*\"]', NULL, NULL, '2024-04-17 16:27:31', '2024-04-17 16:27:31'),
(154, 'App\\Models\\User', 1, 'MyApp', '07dabfc5d6d0fc79961adb376d8899c0f8b208aed1b9299fad98c8e38793253a', '[\"*\"]', NULL, NULL, '2024-04-17 16:28:41', '2024-04-17 16:28:41'),
(155, 'App\\Models\\User', 1, 'MyApp', '570783e41c8c9755787bee5aa560c35147efba7f7101063f8046e35823b43258', '[\"*\"]', NULL, NULL, '2024-04-17 16:33:27', '2024-04-17 16:33:27'),
(156, 'App\\Models\\User', 1, 'MyApp', '834701d963ac6911d21d0d7468db38d3b9b44506e8a320fa7ce1c828dc67783b', '[\"*\"]', '2024-04-17 16:42:40', NULL, '2024-04-17 16:42:39', '2024-04-17 16:42:40'),
(157, 'App\\Models\\User', 1, 'MyApp', 'f193c729048d8a6916fb15a8c95e6999b73d5b150f4327642e0ecaf8394b9d04', '[\"*\"]', '2024-04-17 16:50:31', NULL, '2024-04-17 16:44:27', '2024-04-17 16:50:31'),
(158, 'App\\Models\\User', 1, 'MyApp', '6e61b0492f7fa9689459ce0e805371d1a38483928f4920e802294a78604d1911', '[\"*\"]', NULL, NULL, '2024-04-19 02:33:02', '2024-04-19 02:33:02'),
(159, 'App\\Models\\User', 1, 'MyApp', 'f18d3e8aa814a143fbefd8a0893e7b011183b1d4e12be6d9c55f1c680fcd057d', '[\"*\"]', NULL, NULL, '2024-04-19 02:33:09', '2024-04-19 02:33:09'),
(160, 'App\\Models\\User', 1, 'MyApp', 'b05e0dfbbe34b2c8b32131d82211bed448e31af1e015cfac8a7c7685b4b7cb7a', '[\"*\"]', '2024-04-19 02:34:43', NULL, '2024-04-19 02:34:39', '2024-04-19 02:34:43'),
(161, 'App\\Models\\User', 1, 'MyApp', '8ce1b30128bf35ecd305e26d9a1547d3613dd82e9ff9d81295bd4e4f138bc011', '[\"*\"]', NULL, NULL, '2024-04-19 02:39:56', '2024-04-19 02:39:56'),
(162, 'App\\Models\\User', 1, 'MyApp', 'f220ee94ab17f367961b337a4704baf2bde63c6fe173d52c4c88983cbaad91c5', '[\"*\"]', '2024-04-19 02:54:04', NULL, '2024-04-19 02:48:40', '2024-04-19 02:54:04'),
(163, 'App\\Models\\User', 1, 'MyApp', 'ad2a42ce58f258e8816d857846a99c7df25a622df5712caeafe4574d97e2c134', '[\"*\"]', '2024-04-19 14:27:28', NULL, '2024-04-19 14:27:24', '2024-04-19 14:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(300) NOT NULL DEFAULT '"image Nai"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`) VALUES
(2, 'Vue', 'vue training', '2024-04-02 11:53:37', '2024-04-02 11:53:37', '\"image Nai\"'),
(3, 'computer update data 3', 'comuter slug update 3', '2024-04-02 12:28:45', '2024-04-02 12:57:51', '\"image Nai\"'),
(4, 'Vue', 'vue training', '2024-04-15 13:48:26', '2024-04-15 13:48:26', '\"image Nai\"'),
(5, 'testnamecate', 'slugtestsluge', '2024-04-15 13:49:32', '2024-04-15 13:49:32', '\"image Nai\"'),
(6, 'kigo@mailinator.com', 'bukucanige@mailinator.com', '2024-04-15 13:51:42', '2024-04-15 13:51:42', '\"image Nai\"'),
(7, 'zavedu@mailinator.com', 'kujuz@mailinator.com', '2024-04-15 13:51:52', '2024-04-15 13:51:52', '\"image Nai\"'),
(8, 'fagudy@mailinator.com', 'nafajylu@mailinator.com', '2024-04-15 13:52:15', '2024-04-15 13:52:15', '\"image Nai\"'),
(9, 'asdf', 'asdfasdf', '2024-04-19 02:53:58', '2024-04-19 02:53:58', '\"image Nai\"'),
(10, 'Vue', 'vue training', '2024-04-19 14:05:48', '2024-04-19 14:05:48', '\"image Nai\"'),
(11, 'Vue', 'vue training', '2024-04-19 14:06:40', '2024-04-19 14:06:40', '\"image Nai\"'),
(14, 'Vue', 'vue training', '2024-04-19 14:16:22', '2024-04-19 14:16:22', '\"image Nai\"'),
(15, 'image name', 'Image Slug', '2024-04-19 14:25:28', '2024-04-19 14:25:28', 'C:\\Users\\PC-3\\Desktop\\mamu-app\\public\\upload\\1713558328.png');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hadiisbadboy', 'hadijaman@gmail.com', NULL, '$2y$12$SDyt5Or0zpdyf4vrdM8uBuLALtVdub0YVZPdCJQ5gEQVeXNfx1Zlm', NULL, '2024-03-31 14:33:16', '2024-03-31 14:33:16'),
(2, 'hadijaman', 'hadijaman10@gmail.com', NULL, '$2y$12$1PXuqbgAO0qdt0NIs5kf6.xDGnbeb0PcdblS4WbUPsJLsHHpkbHHC', NULL, '2024-04-14 18:20:21', '2024-04-14 18:20:21'),
(3, 'hadibadboyr', 'hadijamanr@gmail.com', NULL, '$2y$12$MMI2OHKYCdT2jjFYz37Js.Dk5Yoydt2/Je/qFQjkjQAtrCfpvre1G', NULL, '2024-04-14 18:23:42', '2024-04-14 18:23:42'),
(4, 'rowza', 'rowza@gmail.com', NULL, '$2y$12$p80WzU37sEHBsjQkAy3wHuj/Qw7Keqrd1rrt3ibcJ/fdMnfcczKVa', NULL, '2024-04-14 18:26:31', '2024-04-14 18:26:31'),
(5, 'rusu@mailinator.com', 'salagy@mailinator.com', NULL, '$2y$12$oUniidSyWPIE9LJ1kpIFKukmkbbVuAq15aOa1De1vkkILbX9MRcH.', NULL, '2024-04-15 13:15:49', '2024-04-15 13:15:49'),
(6, 'keniga@mailinator.com', 'wosizyjax@mailinator.com', NULL, '$2y$12$h3LtHubOzk3z9kpf34Xakeeq4mDZEDk6i9rI9.LhWNht9DLiG0On2', NULL, '2024-04-15 13:17:42', '2024-04-15 13:17:42'),
(7, 'dysuj@mailinator.com', 'gunoxyf@mailinator.com', NULL, '$2y$12$Ke6jmQduJTMHgHJfY1NO5udprBb2ia3lDw.kKP0FPXKnF4bpOnSRG', NULL, '2024-04-15 13:23:01', '2024-04-15 13:23:01');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
