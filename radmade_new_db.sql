-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2025 at 06:55 AM
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
-- Database: `radmade_new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Devansh', 'devansh@instabytesolutions.com', '$2y$12$J10E8iE2q/mG17.iOg2zF.kSEmX2fkLVte0RLj.LNPgO1D1ALVy7m', 1, '2025-12-13 04:18:16', '2025-12-13 04:18:16');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2025_12_09_060459_create_pages_table', 1),
(5, '2025_12_09_065901_create_admins_table', 1),
(6, '2025_12_09_104509_create_menus_table', 1),
(7, '2025_12_09_110435_create_settings_table', 1),
(8, '2025_12_10_063426_create_page_sliders_table', 1),
(9, '2025_12_10_070145_create_page_carousels_table', 1),
(10, '2025_12_10_084850_create_page_grids_table', 1),
(11, '2025_12_10_121316_create_page_banners_table', 1),
(12, '2025_12_12_051503_create_page_logos_table', 1),
(13, '2025_12_13_043831_create_page_layouts_table', 2),
(14, '2025_12_13_100535_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `section_order` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `meta_keywords`, `section_order`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Home', 'home', '<p>test grid3</p>', 'test grid3', 'test grid3', 'test grid3', NULL, 1, '2025-12-13 03:34:48', '2025-12-13 05:33:35'),
(7, 'Home 1', 'home-1', '<p>Home 1</p>', 'Home 1', 'Home 1', 'Home 1', NULL, NULL, '2025-12-13 05:51:46', '2025-12-13 05:51:46'),
(8, 'Home 2', 'home-2', '<p>Home 2</p>', 'Home 2', NULL, 'Home 2', NULL, NULL, '2025-12-13 05:55:21', '2025-12-13 05:55:21'),
(9, 'Compact', 'home-3', '<p>Home 4</p>', 'Home 34', 'Home 4', 'Home 4', NULL, 1, '2025-12-13 06:05:11', '2025-12-13 09:56:10'),
(10, 'About us', 'about-us', '<p>About us</p>', 'About us', 'About us', 'About us', NULL, 1, '2025-12-14 22:28:50', '2025-12-14 22:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `page_banners`
--

CREATE TABLE `page_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `text_img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `button1_text` varchar(255) DEFAULT NULL,
  `button1_link` varchar(255) DEFAULT NULL,
  `button2_text` varchar(255) DEFAULT NULL,
  `button2_link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_carousels`
--

CREATE TABLE `page_carousels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `items_desktop` int(11) NOT NULL DEFAULT 3,
  `items_tablet` int(11) NOT NULL DEFAULT 2,
  `items_mobile` int(11) NOT NULL DEFAULT 1,
  `autoplay` tinyint(1) NOT NULL DEFAULT 1,
  `speed` int(11) NOT NULL DEFAULT 3000,
  `loop` tinyint(1) NOT NULL DEFAULT 1,
  `nav` tinyint(1) NOT NULL DEFAULT 1,
  `dots` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_grids`
--

CREATE TABLE `page_grids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `layout` enum('left','right') NOT NULL DEFAULT 'left',
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_layouts`
--

CREATE TABLE `page_layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_layouts`
--

INSERT INTO `page_layouts` (`id`, `page_id`, `type`, `section_id`, `title`, `description`, `data`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(6, 5, 'slider', 'slider1', NULL, NULL, '{\"slides\":[{\"image\":null,\"title\":null,\"description\":null}]}', 2, 1, '2025-12-13 03:34:48', '2025-12-13 05:40:38'),
(7, 5, 'carousel', 'carousel1', NULL, NULL, '{\"settings\":{\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"1\",\"autoplay\":\"1\",\"speed\":\"3000\",\"loop\":\"1\",\"nav\":\"1\",\"dots\":\"1\"},\"items\":[{\"image\":null,\"title\":null,\"description\":null}]}', 3, 1, '2025-12-13 03:34:48', '2025-12-13 05:40:38'),
(8, 5, 'grid', 'grid2', NULL, NULL, '{\"columns\":2,\"items\":[{\"image\":null,\"title\":\"test 2grid left\",\"description\":\"test 2grid left\",\"layout\":\"right\"}]}', 4, 1, '2025-12-13 03:34:48', '2025-12-13 05:40:38'),
(9, 5, 'grid_3', 'grid3', NULL, NULL, '{\"columns\":3,\"items\":[{\"image\":\"grid3\\/BglIJDYZeOjSqrBfR2E4J4CQR7zte3pa65XDymOM.png\",\"title\":\"col1\",\"description\":\"col1\",\"button_text\":\"col1\",\"button_link\":\"col1\"},{\"image\":\"grid3\\/ZSa0PslSBQgTP7yp3aVWrmV9QsYCO7bLRyjpEWjB.png\",\"title\":\"col2\",\"description\":\"col2\",\"button_text\":\"col2\",\"button_link\":\"col2\"},{\"image\":\"grid3\\/wMfEPWF7AQrWDsyctHSQIp0IYnbUHQ1lwNpRQvDQ.png\",\"title\":\"col3\",\"description\":\"col3\",\"button_text\":\"col3\",\"button_link\":\"col3\"}]}', 6, 1, '2025-12-13 03:34:48', '2025-12-13 05:40:38'),
(10, 5, 'banner', 'banner1', NULL, NULL, '[{\"bg_image\":\"banners\\/bg\\/AQSOXZbtyqDvcob34M0i6J8OkQUz4QrwDq9VfA7J.jpg\",\"image\":null,\"text_img\":null,\"title\":\"Page Layout test Banner\",\"subtitle\":\"Page Layout test Banner\"}]', 1, 1, '2025-12-13 03:34:48', '2025-12-13 05:40:38'),
(15, 7, 'slider', 'slider1', NULL, NULL, '{\"slides\":[{\"image\":null,\"title\":null,\"description\":null}]}', 1, 1, '2025-12-13 05:51:46', '2025-12-13 05:51:46'),
(16, 7, 'carousel', 'carousel1', NULL, NULL, '{\"settings\":{\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"1\",\"autoplay\":\"1\",\"speed\":\"3000\",\"loop\":\"1\",\"nav\":\"1\",\"dots\":\"1\"},\"items\":[{\"image\":null,\"title\":null,\"description\":null}]}', 2, 1, '2025-12-13 05:51:46', '2025-12-13 05:51:46'),
(17, 7, 'grid', 'grid2', NULL, NULL, '{\"columns\":2,\"items\":[{\"image\":null,\"title\":null,\"description\":null,\"layout\":\"left\"}]}', 3, 1, '2025-12-13 05:51:46', '2025-12-13 05:51:46'),
(18, 7, 'grid_3', 'grid3', NULL, NULL, '{\"columns\":3,\"items\":[{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":1},{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":2},{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":3}]}', 4, 1, '2025-12-13 05:51:46', '2025-12-13 05:51:46'),
(19, 8, 'slider', 'slider1', NULL, NULL, '{\"slides\":[{\"image\":null,\"title\":null,\"description\":null}]}', 1, 1, '2025-12-13 05:55:21', '2025-12-13 05:55:21'),
(20, 8, 'carousel', 'carousel1', NULL, NULL, '{\"settings\":{\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"1\",\"autoplay\":\"1\",\"speed\":\"3000\",\"loop\":\"1\",\"nav\":\"1\",\"dots\":\"1\"},\"items\":[{\"image\":null,\"title\":null,\"description\":null}]}', 2, 1, '2025-12-13 05:55:21', '2025-12-13 05:55:21'),
(21, 8, 'grid', 'grid2', NULL, NULL, '{\"columns\":2,\"items\":[{\"image\":null,\"title\":null,\"description\":null,\"layout\":\"left\"}]}', 3, 1, '2025-12-13 05:55:21', '2025-12-13 05:55:21'),
(22, 8, 'grid_3', 'grid3', NULL, NULL, '{\"columns\":3,\"items\":[{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":1},{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":2},{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":3}]}', 4, 1, '2025-12-13 05:55:21', '2025-12-13 05:55:21'),
(23, 9, 'slider', 'slider1', NULL, NULL, '{\"slides\":[{\"image\":\"sliders\\/oM6hU2sZl175hEhvgPk5wqZAFw0ZEFW3ygwDzPJt.jpg\",\"title\":\"slider1\",\"description\":\"slider1\"},{\"image\":\"sliders\\/ThH3BBe0c18KPrZMmkUTvpTFIrt2FrP4hZ0iQkQV.jpg\",\"title\":\"Slider2\",\"description\":\"Slider2\"}]}', 4, 1, '2025-12-13 06:05:11', '2025-12-13 22:21:39'),
(24, 9, 'carousel', 'carousel1', NULL, NULL, '{\"settings\":{\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"1\",\"autoplay\":\"1\",\"speed\":\"3000\",\"loop\":\"1\",\"nav\":\"1\",\"dots\":\"1\"},\"items\":[{\"image\":null,\"title\":null,\"description\":null}]}', 5, 1, '2025-12-13 06:05:11', '2025-12-13 22:21:39'),
(25, 9, 'grid', 'grid2', NULL, NULL, '{\"columns\":2,\"items\":[{\"image\":null,\"title\":null,\"description\":null,\"layout\":\"left\"}]}', 2, 1, '2025-12-13 06:05:11', '2025-12-13 22:21:39'),
(26, 9, 'grid_3', 'grid3', NULL, NULL, '{\"columns\":3,\"items\":[{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":1},{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":2},{\"image\":null,\"title\":null,\"description\":null,\"button_text\":null,\"button_link\":null,\"sort_order\":3}]}', 7, 1, '2025-12-13 06:05:11', '2025-12-13 22:21:39'),
(27, 9, 'banner', 'banner1', NULL, NULL, '[{\"bg_image\":\"banners\\/bg\\/XUYZGM1oI7MX675TTQR5mV8Mk29iqYRaLmJtqKDb.jpg\",\"image\":\"banners\\/main\\/n6XEUwIRizAVxqcm2tFK4iHZRdH4HwpHPERFnnTO.png\",\"text_img\":\"banners\\/text\\/jJ3RW6qLknOwBnqIbirOBblCdOgt7lCUKZ5SokWq.png\",\"title\":\"Radcom Compact\",\"subtitle\":\"Read Anywhere.\",\"button1_text\":\"Learn More\",\"button1_link\":\"Learn More\",\"button2_text\":\"Learn More\",\"button2_link\":\"Learn More\"},{\"bg_image\":\"banners\\/bg\\/iG7NZYEc4Bj4waIt9vNgrS36z21wyXLKLWYiXJIt.jpg\",\"image\":\"banners\\/main\\/o13kTE9xMUom4foibd2iuBsLpBlpneGmAkE0WOc5.png\",\"text_img\":\"banners\\/text\\/yevQINbk0TjrioRVqwj7RrzeoEEf2gg0CwIq6fSK.png\",\"title\":\"Radcom Bundle\",\"subtitle\":\"Read Anywhere.\",\"button1_text\":\"Learn More\",\"button1_link\":\"Learn More\",\"button2_text\":\"Learn More\",\"button2_link\":\"Learn More\"},{\"bg_image\":\"banners\\/bg\\/OG5OhYwOOqKEXjm73NispIGSpyrlXIbzQ4UWdkaz.jpg\",\"image\":\"banners\\/main\\/KCFFqZNR0mkfxFLDhuzyM7nw9I3XG5g8d0INBITG.png\",\"text_img\":\"banners\\/text\\/NwychGaV1gAm9cyABgivSi7FWHH2JpvhuuOtHVrh.png\",\"title\":\"Portable Reading Stations\",\"subtitle\":\"Read Anywhere.\",\"button1_text\":\"Learn More\",\"button1_link\":\"Learn More\",\"button2_text\":\"Learn More\",\"button2_link\":\"Learn More\"}]', 1, 1, '2025-12-13 06:05:12', '2025-12-14 23:41:48'),
(28, 9, 'logos', 'logos1', NULL, NULL, '{\"logos\":[\"logos\\/iZB3VE8silFhslWww1SxzQSI8mcS4hs4G7xK05u7.png\"]}', 6, 1, '2025-12-13 22:04:26', '2025-12-13 22:21:39'),
(29, 10, 'slider', 'slider1', NULL, NULL, '{\"slides\":[{\"image\":\"sliders\\/vJ5h8qjOtVqg7XuVJATgtaqQpP04M5K5YvfmY9ve.jpg\",\"title\":\"Slider1\",\"description\":\"Slider1\"}]}', 1, 1, '2025-12-14 22:28:50', '2025-12-14 22:28:50'),
(30, 10, 'carousel', 'carousel1', NULL, NULL, '{\"settings\":{\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"1\",\"autoplay\":\"1\",\"speed\":\"3000\",\"loop\":\"1\",\"nav\":\"1\",\"dots\":\"1\"},\"items\":[{\"image\":\"carousels\\/poBwDkiJvTcd8OfYV1kTU9fETU927XT9B0Ia37lw.png\",\"title\":\"Carousel1\",\"description\":\"Carousel1\"}]}', 2, 1, '2025-12-14 22:28:50', '2025-12-14 22:28:50'),
(31, 10, 'grid', 'grid2', NULL, NULL, '{\"columns\":2,\"items\":[{\"image\":\"grids\\/wNSahd1m1b7DDfzD8Uw32nyaYUIvNyL037Aqqreh.png\",\"title\":\"2 Column Grid Section\",\"description\":\"2 Column Grid Section\",\"layout\":\"left\"},{\"image\":\"grids\\/xQXPKpbY62uZB8ba587xzGdMapPShbbYWI2VWION.jpg\",\"title\":\"2 Column Grid Section-1\",\"description\":\"2 Column Grid Section-1\",\"layout\":\"right\"}]}', 3, 1, '2025-12-14 22:28:50', '2025-12-14 22:28:50'),
(32, 10, 'grid_3', 'grid3', NULL, NULL, '{\"columns\":3,\"items\":[{\"image\":null,\"title\":\"Col1\",\"description\":\"Col1\",\"button_text\":\"Col1\",\"button_link\":\"Col1\",\"sort_order\":1},{\"image\":\"grid3\\/GtVemy10rYiJ316zMRcRd5wfkFj7TRrwM2Tiu03t.png\",\"title\":\"Col2\",\"description\":\"Col2\",\"button_text\":\"Col2\",\"button_link\":\"Col2\",\"sort_order\":2},{\"image\":\"grid3\\/g5UwA0VTWeV1Det3O7ZHnZXAHxGlLBxW9oxGuAFV.jpg\",\"title\":\"Col3\",\"description\":\"Col3\",\"button_text\":\"Col3\",\"button_link\":\"Col3\",\"sort_order\":3}]}', 4, 1, '2025-12-14 22:28:50', '2025-12-14 22:28:50'),
(33, 10, 'banner', 'banner1', NULL, NULL, '[{\"bg_image\":\"banners\\/bg\\/VgvgYm1DukKyiINQuhjhWnFlkOjmF07WL8YMtNtE.jpg\",\"image\":\"banners\\/main\\/Dw8MTbayZBVC3Rn6O8WeQzahXqdY8qkVCMEV0Gb5.png\",\"text_img\":\"banners\\/text\\/S5YMfwcoyXJ8R88lHANM4yirB9oeoyr8WjN0mrc0.webp\",\"title\":\"Banner1\",\"subtitle\":\"Banner1\",\"button1_text\":null,\"button1_link\":null,\"button2_text\":null,\"button2_link\":null}]', 5, 1, '2025-12-14 22:28:50', '2025-12-14 22:52:32'),
(34, 10, 'logos', 'logos1', NULL, NULL, '{\"logos\":[\"logos\\/wxdrmFpTPbAXkpJmC2E1I2GKDj54LkVo1WNmXFNs.jpg\",\"logos\\/ebuMNJraYGuEyHWDMqgBYgXTkgbePHNEsEUib2kf.png\"]}', 6, 1, '2025-12-14 22:28:50', '2025-12-14 23:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `page_logos`
--

CREATE TABLE `page_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_sliders`
--

CREATE TABLE `page_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
('D0M0HFnaUzZWw5q9LEmTDaSqxeeUmU50mIPhgDIF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiR0RqenNUcVFPOFZIQU5uN3dTQW1FV2hNUWlSVzRPcGhVUzYza1R2cCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGRhdGUtc2V0dGluZ3MiO3M6NToicm91dGUiO3M6MTQ6ImFkbWluLnNldHRpbmdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJhZG1pbl9pZCI7aToxO3M6NDoibmFtZSI7czo3OiJEZXZhbnNoIjtzOjE0OiJhZG1pbl91c2VybmFtZSI7czozMDoiZGV2YW5zaEBpbnN0YWJ5dGVzb2x1dGlvbnMuY29tIjtzOjE4OiJpc19hZG1pbl9sb2dnZWRfaW4iO2I6MTt9', 1765777514);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `flogo` varchar(255) DEFAULT NULL,
  `banner1` varchar(255) DEFAULT NULL,
  `banner2` varchar(255) DEFAULT NULL,
  `banner3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `flogo`, `banner1`, `banner2`, `banner3`, `created_at`, `updated_at`) VALUES
(1, 'logos/PWpOoUngEDD0fMnDshCbfyocdmjawC7lumy1qcdm.png', 'logos/oumoNpePFxMcqYhZw6vLmYDFuiKhLRM6g0L0gYer.webp', NULL, NULL, NULL, '2025-12-12 22:53:43', '2025-12-14 22:01:16');

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
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_banners`
--
ALTER TABLE `page_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_carousels`
--
ALTER TABLE `page_carousels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_carousels_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_grids`
--
ALTER TABLE `page_grids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_grids_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_layouts`
--
ALTER TABLE `page_layouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_layouts_page_id_index` (`page_id`);

--
-- Indexes for table `page_logos`
--
ALTER TABLE `page_logos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_logos_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_sliders`
--
ALTER TABLE `page_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_sliders_page_id_foreign` (`page_id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_banners`
--
ALTER TABLE `page_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_carousels`
--
ALTER TABLE `page_carousels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_grids`
--
ALTER TABLE `page_grids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_layouts`
--
ALTER TABLE `page_layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `page_logos`
--
ALTER TABLE `page_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_sliders`
--
ALTER TABLE `page_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `page_banners`
--
ALTER TABLE `page_banners`
  ADD CONSTRAINT `page_banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_carousels`
--
ALTER TABLE `page_carousels`
  ADD CONSTRAINT `page_carousels_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_grids`
--
ALTER TABLE `page_grids`
  ADD CONSTRAINT `page_grids_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_layouts`
--
ALTER TABLE `page_layouts`
  ADD CONSTRAINT `page_layouts_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_logos`
--
ALTER TABLE `page_logos`
  ADD CONSTRAINT `page_logos_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_sliders`
--
ALTER TABLE `page_sliders`
  ADD CONSTRAINT `page_sliders_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
