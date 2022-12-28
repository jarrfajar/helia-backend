-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Des 2022 pada 10.05
-- Versi server: 5.7.33
-- Versi PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookmars`
--

CREATE TABLE `bookmars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bookmars`
--

INSERT INTO `bookmars` (`id`, `user_id`, `room_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2022-12-17 00:27:28', '2022-12-17 00:27:28'),
(5, 1, 4, '2022-12-17 02:26:59', '2022-12-17 02:26:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(1, 'VIP FAMILY', '500000', '2022-12-16 21:22:57', '2022-12-16 21:22:57'),
(3, 'VIP', '400000', '2022-12-17 01:39:17', '2022-12-17 01:39:17'),
(4, 'DELUXE', '350000', '2022-12-17 01:39:32', '2022-12-17 01:39:32'),
(5, 'Single Bed', '250000', '2022-12-17 01:39:41', '2022-12-17 01:39:41'),
(6, 'Double Bed', '250000', '2022-12-17 01:39:48', '2022-12-17 01:39:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2022_12_17_045512_create_categories_table', 2),
(7, '2022_12_17_050358_create_rooms_table', 3),
(8, '2022_12_17_050833_create_profiles_table', 4),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(10, '2022_12_17_073013_add_image_to_profiles_table', 6),
(11, '2022_12_17_080805_create_bookmars_table', 7),
(12, '2022_12_17_100112_add_image_to_rooms_table', 8),
(13, '2022_12_17_200810_add_description_to_rooms_table', 9),
(14, '2022_12_17_201150_create_reviews_table', 10),
(15, '2022_12_17_202842_add_count_to_rooms_table', 11),
(16, '2022_12_20_065923_create_transactions_table', 12),
(17, '2022_12_22_023919_add_status_to_transactions_table', 13),
(18, '2022_12_28_172355_create_ratings_table', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 1, 'auth_token', 'cb6a0e5ab68c68045a886024b08a722d2a6372009fdee233a0b77fdcc4d91529', '[\"*\"]', '2022-12-28 05:25:38', NULL, '2022-12-16 23:21:57', '2022-12-28 05:25:38'),
(6, 'App\\Models\\User', 1, 'auth_token', 'c780d3afe5975eb90a9eb1991c7956c9c392284a4e1ca5f530df3a4f02a110a0', '[\"*\"]', NULL, NULL, '2022-12-16 23:38:00', '2022-12-16 23:38:00'),
(7, 'App\\Models\\User', 1, 'auth_token', '027ccf17b3b4d91e5e77b2d776fc995a3257d7ad651a7510a6bcf57b9551899d', '[\"*\"]', '2022-12-28 09:30:36', NULL, '2022-12-16 23:42:40', '2022-12-28 09:30:36'),
(8, 'App\\Models\\User', 2, 'auth_token', '67ef3330455d223478b2224f0cec9b8dc73a2ecd05486d218cec3902300898dd', '[\"*\"]', '2022-12-19 22:47:15', NULL, '2022-12-17 01:25:55', '2022-12-19 22:47:15'),
(9, 'App\\Models\\User', 1, 'auth_token', 'bd2974c0121a2dc6db0b3b42c10015bd7f283f0fcab33eb41e7bad7481d2dad0', '[\"*\"]', '2022-12-28 09:36:52', NULL, '2022-12-21 18:32:46', '2022-12-28 09:36:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `birthday`, `address`, `gender`, `job`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'storage/user/uoO8UiHTzeUd8Tc4BFDHEyhJ8bBdigbZ3NQtm3Cd.jpg', 'Dec 30, 2022', 'lapadde', 'Male', 'student', '085123456789', '2022-12-16 23:38:00', '2022-12-28 07:15:01'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-17 01:25:55', '2022-12-17 01:25:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `room_id`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 5, '2022-12-17 20:16:32', '2022-12-17 20:16:32'),
(2, 1, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, '2022-12-17 20:16:32', '2022-12-17 20:16:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `image`, `title`, `description`, `category_id`, `status`, `count`, `created_at`, `updated_at`) VALUES
(4, 'storage/room/883kKnzqaODkXimkiNuVwQMhKOT7nzXEU3Lch2YJ.jpg', '1A', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 1, 'tersedia', 0, '2022-12-17 02:09:38', '2022-12-17 02:09:38'),
(5, 'storage/room/BJK2B39wmuOl6DEFZPj9gJQAIiWXWJOOhwATr1q5.jpg', '2A', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 1, 'tersedia', 0, '2022-12-17 02:19:57', '2022-12-17 02:19:57'),
(6, 'storage/room/19MPNZFlzWewKH9F9kKXqiOmkDHw7W3wg6bVJqx2.jpg', '1B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 3, 'tersedia', 0, '2022-12-17 02:20:43', '2022-12-17 02:20:43'),
(7, 'storage/room/m0PYruk3EyKIGvN1EOGICdn2Ixi40LQV4EB1aE9X.jpg', '2B', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 3, 'tersedia', 0, '2022-12-17 02:20:57', '2022-12-17 02:20:57'),
(8, 'storage/room/eaHBaz5gicZsQOUsjSJRRIXZlep8KYZnrnx1cx6O.jpg', '101', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 4, 'tersedia', 0, '2022-12-17 02:21:49', '2022-12-17 02:21:49'),
(9, 'storage/room/4WJlEx0ZxNEvcpIEqzOO7YqyzxkIXcKqoiZXmjKj.jpg', '102', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 4, 'tersedia', 0, '2022-12-17 02:22:01', '2022-12-17 02:22:01'),
(10, 'storage/room/l26VGjeAoNiCnSIGpwOncP4iIShZbrDtOkWFnwZi.jpg', '103', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 4, 'tersedia', 0, '2022-12-17 02:22:13', '2022-12-17 02:22:13'),
(11, 'storage/room/UwLxUeFqAlcyfZlkL2rb9O27AQcKI8wVQVmAjjvL.jpg', '104', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 4, 'tersedia', 0, '2022-12-17 02:22:24', '2022-12-17 02:22:24'),
(12, 'storage/room/883kKnzqaODkXimkiNuVwQMhKOT7nzXEU3Lch2YJ.jpg', '105', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 4, 'tersedia', 0, '2022-12-17 02:22:37', '2022-12-17 02:22:37'),
(13, 'storage/room/Sp2mssFIL6ZVmzQx0kvWDxrxGclvcO2nCd3HPpCd.jpg', '106', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 5, 'tersedia', 0, '2022-12-17 02:23:03', '2022-12-17 02:23:03'),
(14, 'storage/room/6xeaErUhq9VAihGW1K4gwed6ToUGANcH7oZx9afO.jpg', '107', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 5, 'tersedia', 0, '2022-12-17 02:23:14', '2022-12-17 02:23:14'),
(15, 'storage/room/ymEaDaYR5IkRLEKVzWlndiVdRSYygT9oiwnj8VlS.jpg', '108', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 5, 'tersedia', 0, '2022-12-17 02:23:27', '2022-12-17 02:23:27'),
(16, 'storage/room/x9XlrWsNc63EXZv6KDUQft03rWU6DReA4Ztmzf0X.jpg', '109', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 5, 'tersedia', 0, '2022-12-17 02:23:45', '2022-12-17 02:23:45'),
(17, 'storage/room/NabS19S6mVIJuyE6TbyhCSFF1PFp7KMgZioy4k6H.jpg', '110', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 5, 'tersedia', 0, '2022-12-17 02:23:56', '2022-12-17 02:23:56'),
(18, 'storage/room/7enzxlesL9QKiLlGaGPIE1aA3XxzeLOeLCOwsdUJ.jpg', '111', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 6, 'tersedia', 0, '2022-12-17 02:24:12', '2022-12-17 02:24:12'),
(19, 'storage/room/SCggpyiFHhgqCzbGWJePcIDrjj1TauV5bTMgDQ2c.jpg', '112', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 6, 'tersedia', 0, '2022-12-17 02:24:21', '2022-12-17 02:24:21'),
(20, 'storage/room/WeSp2kPJTL01NsDJLwwneHFBRQA4eN6DJ7FFdKWL.jpg', '113', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 6, 'tersedia', 0, '2022-12-17 02:24:31', '2022-12-17 02:24:31'),
(21, 'storage/room/jCbulqmmO0kHr9SrrPmXk3TkAkrMIkf6UJZQOXyP.jpg', '114', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 6, 'tersedia', 0, '2022-12-17 02:24:38', '2022-12-17 02:24:38'),
(22, 'storage/room/h9OAxo1Jr7nUvKPu1uBGa5PHFmWFojfA9mjZlVcj.jpg', '115', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 6, 'tersedia', 0, '2022-12-17 02:24:47', '2022-12-17 02:24:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `night` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `invoice`, `room_id`, `category_id`, `user_id`, `phone`, `checkin`, `checkout`, `night`, `price`, `tax`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, 'INVOICE-20221222-0001', 4, 1, 1, '085242476411', '2022-12-24 00:00:00.000', '2022-12-25 00:00:00.000', 1, '500000', '50000', '550000', 'completed', '2022-12-21 19:32:29', '2022-12-24 10:02:30'),
(3, 'INVOICE-20221222-0002', 4, 1, 1, '085242476411', '2022-12-30 00:00:00.000', '2022-12-31 00:00:00.000', 1, '500000', '50000', '550000', 'canceled', '2022-12-21 19:45:09', '2022-12-21 19:45:09'),
(4, 'INVOICE-20221222-0002', 4, 1, 1, '085242476411', '2022-12-28 00:00:00.000', '2022-12-31 00:00:00.000', 1, '500000', '50000', '550000', 'completed', '2022-12-21 19:45:09', '2022-12-21 19:45:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fajar', 'fajar@gmail.com', NULL, '$2y$10$5My2Mlo2TxmiES2NQipkH.GnNg56wzuaUTtLYWVd6wtFFkfyAt7I6', NULL, '2022-12-16 23:38:00', '2022-12-16 23:38:00'),
(2, 'jarr', 'jar@gmail.com', NULL, '$2y$10$CS4E57FpzI/26XN1VOfOi.Jr8S2L2JjoRjOpNd5PM6bmERd1IUaxW', NULL, '2022-12-17 01:25:54', '2022-12-17 01:25:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bookmars`
--
ALTER TABLE `bookmars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bookmars`
--
ALTER TABLE `bookmars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
