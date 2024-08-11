-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2024 at 12:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_product`
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
(4, '2024_08_09_043852_create_product_table', 1),
(5, '2024_08_09_043933_create_tables_table', 1),
(6, '2024_08_09_074758_create_orders_table', 1),
(7, '2024_08_11_112955_create_printers_table', 2),
(8, '2024_08_11_113219_create_order_items_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `table_id`, `total`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9cbd86ef-109f-4c63-8196-45f959cf13e4', '9cbd7afb-c880-47d4-98e6-85d118155460', '50000', NULL, '2024-08-11 05:11:05', '2024-08-11 05:11:05'),
('9cbd8755-9e7b-41f4-8492-230841ac85aa', '9cbd7afb-c880-47d4-98e6-85d118155460', '10000', NULL, '2024-08-11 05:12:12', '2024-08-11 05:12:12'),
('9cbd878f-87d4-41f7-b37a-44789a318e92', '9cbd7afb-c880-47d4-98e6-85d118155460', '50000', NULL, '2024-08-11 05:12:50', '2024-08-11 05:12:50'),
('9cbd87cc-4cc8-424e-9e87-ef1e5691446e', '9cbd7afb-c880-47d4-98e6-85d118155460', '10000', NULL, '2024-08-11 05:13:30', '2024-08-11 05:13:30'),
('9cbd87f0-0c22-47ab-819d-2d7eca67b911', '9cbd7afb-c880-47d4-98e6-85d118155460', '20000', NULL, '2024-08-11 05:13:54', '2024-08-11 05:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `printer_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `printer_id`, `quantity`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9cbd86ef-1a5b-466e-8cdc-e6a82ab9afa0', '9cbd86ef-109f-4c63-8196-45f959cf13e4', '9cbd7e68-c300-4759-8857-f6db20f763ca', '9cbd7ac6-f478-48d1-9ced-4aadcc49d9b2', '1', '12000', NULL, '2024-08-11 05:11:05', '2024-08-11 05:11:05'),
('9cbd8755-ada4-4feb-9360-b1d25d2c4441', '9cbd8755-9e7b-41f4-8492-230841ac85aa', '9cbd7e68-cfe6-4eb8-b7d4-df8f17a2d11d', '9cbd7ac6-f478-48d1-9ced-4aadcc49d9b2', '1', '6000', NULL, '2024-08-11 05:12:12', '2024-08-11 05:12:12'),
('9cbd878f-9789-4402-b0e3-596c8a5d7143', '9cbd878f-87d4-41f7-b37a-44789a318e92', '9cbd7e68-d2b7-43fb-8424-d8c6d0d66918', '9cbd7ac6-df23-488f-8c39-7c3947ee6436', '2', '46000', NULL, '2024-08-11 05:12:50', '2024-08-11 05:12:50'),
('9cbd87cc-5994-4133-93df-d8592641dcc8', '9cbd87cc-4cc8-424e-9e87-ef1e5691446e', '9cbd7e68-ce38-4d47-aca3-f0d40d48d23d', '9cbd7ac6-f478-48d1-9ced-4aadcc49d9b2', '1', '8000', NULL, '2024-08-11 05:13:30', '2024-08-11 05:13:30'),
('9cbd87f0-1495-4f8e-a151-891552b8bf57', '9cbd87f0-0c22-47ab-819d-2d7eca67b911', '9cbd7e68-d0ff-4193-b7b4-509988d64c27', '9cbd7ac6-f2e6-4ce5-a54c-af70cd6703d3', '1', '15000', NULL, '2024-08-11 05:13:54', '2024-08-11 05:13:54');

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
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printers`
--

INSERT INTO `printers` (`id`, `name`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9cbd7ac6-df23-488f-8c39-7c3947ee6436', 'Printer Kasir', 'A', NULL, '2024-08-11 04:37:06', '2024-08-11 04:37:06'),
('9cbd7ac6-f2e6-4ce5-a54c-af70cd6703d3', 'Printer Dapur', 'B', NULL, '2024-08-11 04:37:06', '2024-08-11 04:37:06'),
('9cbd7ac6-f478-48d1-9ced-4aadcc49d9b2', 'Printer Bar', 'C', NULL, '2024-08-11 04:37:06', '2024-08-11 04:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `variant`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9cbd7e68-c300-4759-8857-f6db20f763ca', 'Jeruk Dingin', 'minuman', 'Dingin', '12000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-cd6a-4337-851f-75f2f82b5fe4', 'Jeruk Panas', 'minuman', 'Panas', '10000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-ce38-4d47-aca3-f0d40d48d23d', 'Teh Manis', 'minuman', 'Manis', '8000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-ced9-4d41-87a7-83adabfc181b', 'Teh Tawar', 'minuman', 'Tawar', '5000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-cf60-4192-9d2e-f574cb77629e', 'Kopi Dingin', 'minuman', 'Dingin', '8000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-cfe6-4eb8-b7d4-df8f17a2d11d', 'Kopi Panas', 'minuman', 'Panas', '6000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-d069-4bfa-8e28-16e3266a1c73', 'Extra Es Batu', 'minuman', 'Dingin', '2000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-d0ff-4193-b7b4-509988d64c27', 'Mie Goreng', 'makanan', 'Goreng', '15000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-d175-4809-a3f8-a3b81b35a44f', 'Mie Kuah', 'makanan', 'Kuah', '15000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-d238-4a03-b969-64c48bbc9d5d', 'Nasi Goreng', 'makanan', 'Goreng', '15000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15'),
('9cbd7e68-d2b7-43fb-8424-d8c6d0d66918', 'Nasi Goreng + Jeruk Dingin', 'promo', '', '23000', NULL, '2024-08-11 04:47:15', '2024-08-11 04:47:15');

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

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9cbd7afb-c880-47d4-98e6-85d118155460', 'Meja No 1', NULL, '2024-08-11 04:37:40', '2024-08-11 04:37:40'),
('9cbd7afb-d361-48f1-a422-1b7281de3b05', 'Meja No 2', NULL, '2024-08-11 04:37:40', '2024-08-11 04:37:40'),
('9cbd7afb-d5a9-4372-beb6-aff70f0c55be', 'Meja No 3', NULL, '2024-08-11 04:37:40', '2024-08-11 04:37:40');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_table_id_foreign` (`table_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_printer_id_foreign` (`printer_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_printer_id_foreign` FOREIGN KEY (`printer_id`) REFERENCES `printers` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
