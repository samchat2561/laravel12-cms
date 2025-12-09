-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2025 at 12:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel12_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1764908279),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1764908279;', 1764908279),
('laravel-cms-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1765004877),
('laravel-cms-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1765004877;', 1765004877),
('laravel-cms-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1765094438),
('laravel-cms-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1765094438;', 1765094438);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sort` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `sort`, `image`, `is_active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Software Developer', 'software-developer-slug', '<p>นักพัฒนาซอฟต์แวร์ (Software Developer) คือผู้สร้างสรรค์และพัฒนาโปรแกรมคอมพิวเตอร์หรือแอปพลิเคชัน โดยมีหน้าที่ครอบคลุมตั้งแต่การวิเคราะห์ความต้องการของลูกค้า การออกแบบ การเขียนโค้ด การทดสอบ ไปจนถึงการปรับปรุงและแก้ไขข้อผิดพลาด อาชีพนี้มีความสำคัญอย่างยิ่งในยุคดิจิทัล ทำให้แทบทุกองค์กรต้องการนักพัฒนาเพื่อสร้างและพัฒนาผลิตภัณฑ์ดิจิทัลของตนเอง</p>', 0, 'category/images/01KBPMMWBGBA17PNERJVNJF5BZ.jpg', 1, NULL, '2025-12-04 23:54:30', '2025-12-05 02:37:27'),
(2, 'Software Engineering', 'software-engineering', '<p>วิศวกรรมซอฟต์แวร์ (Software Engineering) คือการประยุกต์ใช้หลักการทางวิศวกรรมเพื่อออกแบบ พัฒนา ทดสอบ และบำรุงรักษาซอฟต์แวร์อย่างเป็นระบบ มีเป้าหมายเพื่อสร้างซอฟต์แวร์ที่มีคุณภาพสูง เชื่อถือได้ และมีประสิทธิภาพ วิศวกรซอฟต์แวร์ใช้ความรู้และกระบวนการที่เป็นระบบเพื่อจัดการกับความซับซ้อนในการสร้างซอฟต์แวร์ ตั้งแต่การเก็บความต้องการของลูกค้าไปจนถึงการส่งมอบและบำรุงรักษา</p>', 0, 'category/images/01KBPRSJTJZZMV9C19CBNW4VBN.jpg', 1, NULL, '2025-12-05 01:06:58', '2025-12-05 02:37:27'),
(3, 'Computer Engineering', 'computer-engineering', '<p>วิศวกรรมคอมพิวเตอร์ (Computer Engineering) คือการศึกษาเพื่อออกแบบ สร้าง และบำรุงรักษาระบบคอมพิวเตอร์ ซึ่งครอบคลุมทั้งส่วนฮาร์ดแวร์ (เช่น อุปกรณ์, ไมโครโปรเซสเซอร์) และซอฟต์แวร์ (เช่น ระบบปฏิบัติการ, โปรแกรม) โดยเป็นการผสมผสานความรู้จากวิศวกรรมไฟฟ้าและวิทยาการคอมพิวเตอร์ เพื่อนำหลักการไปประยุกต์ใช้ในการแก้ไขปัญหาทางเทคนิคต่าง ๆ เช่น การออกแบบระบบเครือข่าย, ระบบสมองกลฝังตัว, และระบบปัญญาประดิษฐ์</p>', 0, 'category/images/01KBPRZ3FD8MTESEMW6WMANQ9X.png', 1, NULL, '2025-12-05 01:09:59', '2025-12-05 02:37:27'),
(4, 'Computer Science', 'computer-science', '<p>วิทยาการคอมพิวเตอร์ (Computer Science) คือสาขาวิชาที่ศึกษาเกี่ยวกับการคำนวณ, ข้อมูล, และระบบอัตโนมัติ ครอบคลุมทั้งทฤษฎีและการประยุกต์ใช้ในการแก้ปัญหาต่างๆ ทั้งด้านซอฟต์แวร์ ฮาร์ดแวร์ และเครือข่าย ซึ่งเกี่ยวข้องกับหลายแขนง เช่น การออกแบบอัลกอริทึม, ภาษาโปรแกรม, โครงสร้างข้อมูล, และปัญญาประดิษฐ์</p>', 0, 'category/images/01KBPS15VFPSWDFGDDNQTA5GEP.png', 0, NULL, '2025-12-05 01:11:07', '2025-12-07 01:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_05_044106_create_categories_table', 2),
(5, '2025_12_05_120357_create_posts_table', 3),
(6, '2025_12_07_073912_create_category_posts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exercpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `published_at` datetime NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `comment_status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `exercpt`, `content`, `feature_image`, `is_featured`, `type`, `status`, `published_at`, `author_id`, `parent_id`, `comment_status`, `sort`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'นักพัฒนาเว็บไซต์ (Web Developer)', 'web-developer', 'นักพัฒนาเว็บไซต์ (Web Developer) คือผู้ที่สร้างและพัฒนาเว็บไซต์และเว็บแอปพลิเคชัน โดยใช้ภาษาคอมพิวเตอร์', '<p>นักพัฒนาเว็บไซต์ (Web Developer) คือผู้ที่สร้างและพัฒนาเว็บไซต์และเว็บแอปพลิเคชัน โดยใช้ภาษาคอมพิวเตอร์อย่าง HTML, CSS และ JavaScript เพื่อสร้างส่วนที่ผู้ใช้มองเห็น (Front-end) และใช้ภาษาอื่นๆ เช่น PHP, Python หรือ Ruby เพื่อจัดการระบบหลังบ้าน (Back-end) และฐานข้อมูล หน้าที่หลักของพวกเขาคือการเขียนโค้ด, การแก้ไขปัญหา และการทำให้เว็บไซต์ทำงานได้อย่างราบรื่น</p>', 'post/images/01KBQH3ZY08VT3A09KG3RK9CG6.jpg', 1, 'post', 'draft', '2025-12-05 15:08:15', 1, NULL, 1, 2, 0, '2025-12-05 08:12:05', '2025-12-07 01:35:07'),
(2, 'Mobile Application Developer', 'mobile-application-developer', 'นักพัฒนาแอปพลิเคชัน (Mobile Application Developer) คือผู้เชี่ยวชาญด้านการออกแบบ พัฒนา ทดสอบ และดูแลรักษาแอปพลิเคชันสำหรับอุปกรณ์พกพา (สมาร์ตโฟน, แท็บเล็ต)', '<p>นักพัฒนาแอปพลิเคชัน (Mobile Application Developer) คือผู้เชี่ยวชาญด้านการออกแบบ พัฒนา ทดสอบ และดูแลรักษาแอปพลิเคชันสำหรับอุปกรณ์พกพา (สมาร์ตโฟน, แท็บเล็ต) โดยสร้างสรรค์จากแนวคิดสู่แอปที่ใช้งานได้จริง บนแพลตฟอร์มหลักอย่าง iOS (Swift/Objective-C) และ Android (Kotlin/Java) รวมถึงการใช้เฟรมเวิร์กข้ามแพลตฟอร์ม (React Native, Flutter) เพื่อสร้างประสบการณ์ที่ดี มีประสิทธิภาพ และตรงตามความต้องการของผู้ใช้.</p>', 'post/images/01KBRM9E8A823V6VMQ6TWYH8FD.jpeg', 1, 'page', 'published', '2025-12-06 01:17:21', 1, NULL, 1, 1, 0, '2025-12-05 18:26:44', '2025-12-05 20:58:47'),
(3, 'Frontend Developer', 'frontend-developer', 'นักพัฒนา Front-End (Frontend Developer) คือผู้สร้างส่วน \"หน้าบ้าน\" ของเว็บไซต์หรือแอปพลิเคชัน ที่ผู้ใช้มองเห็นและโต้ตอบด้วยโดยตรง (เช่น ปุ่ม, เมนู, กราฟิก)', '<p>นักพัฒนา Front-End (Frontend Developer) คือผู้สร้างส่วน &quot;หน้าบ้าน&quot; ของเว็บไซต์หรือแอปพลิเคชัน ที่ผู้ใช้มองเห็นและโต้ตอบด้วยโดยตรง (เช่น ปุ่ม, เมนู, กราฟิก) โดยใช้เทคโนโลยีหลักอย่าง HTML, CSS, JavaScript และเฟรมเวิร์กต่างๆ (React, Vue, Angular) เพื่อทำให้หน้าตาเว็บสวยงาม ใช้งานง่าย มีประสิทธิภาพ และรองรับการแสดงผลบนทุกอุปกรณ์ (Responsive) เพื่อมอบประสบการณ์ที่ดีที่สุดแก่ผู้ใช้งาน.</p>', 'post/images/01KBS7DBG5ANTSR2HKS10CQVC8.png', 1, 'post', 'published', '2025-12-06 06:53:27', 1, NULL, 0, 0, 0, '2025-12-06 00:00:55', '2025-12-06 00:00:55'),
(4, 'นักพัฒนา Back-End (Backend Developer)', 'back-end-backend-developer', 'นักพัฒนา Back-End (Backend Developer) คือผู้สร้างและดูแลระบบหลังบ้านของเว็บไซต์หรือแอปพลิเคชัน เช่น เซิร์ฟเวอร์, ฐานข้อมูล, และการทำงานของฟังก์ชันต่างๆ ที่ผู้ใช้มองไม่เห็น', '<p>นักพัฒนา Back-End (Backend Developer) คือผู้สร้างและดูแลระบบหลังบ้านของเว็บไซต์หรือแอปพลิเคชัน เช่น เซิร์ฟเวอร์, ฐานข้อมูล, และการทำงานของฟังก์ชันต่างๆ ที่ผู้ใช้มองไม่เห็น แต่จำเป็นเพื่อให้ระบบทำงานได้ราบรื่น, จัดการข้อมูล, และรักษาความปลอดภัย โดยใช้ภาษาโปรแกรม เช่น Python, Java, Node.js และทำงานร่วมกับนักพัฒนา Front-End เพื่อส่งมอบประสบการณ์ที่ดีให้กับผู้ใช้.</p>', 'post/images/01KBS7S19R5DTT3G7D8HXB7Y5N.png', 1, 'page', 'published', '2025-12-06 07:02:40', 1, NULL, 1, 0, 0, '2025-12-06 00:07:18', '2025-12-06 00:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9oH9pLPYeHBhaNc5W2AMBsq74NWfzJQ60cb42o0s', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOTAzZW1KSnR4N1BtRTVKd3JkMkVZOGdUaU9VZTNrVWRSTGZUTDFWQiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2xhcmF2ZWwxMi1jbXMudGVzdC9hZG1pbi9wb3N0cyI7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbGFyYXZlbDEyLWNtcy50ZXN0L2FkbWluL2xvZ2luIjtzOjU6InJvdXRlIjtzOjI1OiJmaWxhbWVudC5hZG1pbi5hdXRoLmxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765108033),
('CKS4HLbbXuXPJm0a8URfurvY0njeHTn55JG1PBG7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUhjVVVaRnpOcFgwY09BaVZnWDRkS3VaNlZENk9hRFg2SjhibFlEWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765122077),
('fSQSy3TfGx6Xwtmy6XOcLTCJhJDVTUp1ZhP7r1iS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNURqN0swVkoxczd6aWkwOTJLTEY1M0YwQWJSSktuYTV3M2ozWEM0WSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QvP2hlcmQ9cHJldmlldyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765109647),
('iGvSJpC3rwj84DL1sGABzDQQdZHfTxGohwEzWgAT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTBkU05WNEZyZ0hPTTB6TnA3cHdKZlV6eDlsamMwYWp0MlRUUGZIYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QvP2hlcmQ9cHJldmlldyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765109604),
('L9HRmkT823EbMlub38xImAkfLRxJVBJ7HFlcLnPw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEpVcXExSHozV01aQ3pIdlh6b3dVY0NKOTh1RzhrdXZxUHR2RGhpMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QvP2hlcmQ9cHJldmlldyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765109654),
('rbygaoimpQOCBoCXMw3PjAWehUpiYFtX67Hvw1Md', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1ZsSWt5NDNITmp4Sm9SUTRRbm5iclNmMVptQVFmdnVSd3Z0c0FpTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QvP2hlcmQ9cHJldmlldyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765119616),
('YTfrxhUFLOaElEOAgaHnAzfYEDVXpsFjWgouapqd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk9EdVMycTBtZENFNFhKTk5hQ0lJZGlqZWxEV0J1bURFSndnZnR3WiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QvP2hlcmQ9cHJldmlldyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765122076),
('Zscl1SioBS1x4577oIQcjb0EPjwrtDNsHDWJMOLZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXB6eDFtaVdDY1p5cW9SS0VOZXhxMkJxazBtaVFKYVdZbVNLNE16YyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sYXJhdmVsMTItY21zLnRlc3QvP2hlcmQ9cHJldmlldyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765122128);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Test', 'admin@gmail.com', NULL, '$2y$12$WnYDMkc6WbqaKPHgLBOA4eCV5bNicL3f2NEmRLLuWwu6d9tnr4WY2', NULL, '2025-12-04 21:15:14', '2025-12-04 21:15:14');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_posts_category_id_foreign` (`category_id`),
  ADD KEY `category_posts_post_id_foreign` (`post_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_parent_id_foreign` (`parent_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
