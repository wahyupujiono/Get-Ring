-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: getring-mysqldbserver.mysql.database.azure.com
-- Generation Time: May 05, 2018 at 11:06 AM
-- Server version: 5.7.21-log
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getring_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_event` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `detail`, `regency_id`, `phone`, `name_event`, `detail_event`, `date_event`, `created_at`, `updated_at`) VALUES
(1, 2, 'Wahyu', 'Keputih', '444', '85724205685', 'Schematics 18', 'HMTC ITS', '2018-05-31', '2018-05-03 09:15:40', '2018-05-03 09:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Paket Hemat', 0, '2018-05-03 06:43:44', '2018-05-03 06:43:44'),
(2, 'Nasi Bungkus', 1, '2018-05-03 06:43:58', '2018-05-03 06:43:58'),
(3, 'Paket Box', 0, '2018-05-03 06:44:12', '2018-05-03 06:44:12'),
(4, 'Nasi Box', 3, '2018-05-03 06:44:20', '2018-05-03 06:44:20'),
(5, 'Selamatan', 3, '2018-05-03 06:44:38', '2018-05-03 06:44:38'),
(6, 'Akekah', 3, '2018-05-03 06:44:52', '2018-05-03 06:44:52'),
(7, 'Paket Snack', 0, '2018-05-03 06:45:11', '2018-05-03 06:45:11'),
(8, 'Jajanan Pasar', 7, '2018-05-03 06:45:24', '2018-05-03 06:45:24'),
(9, 'Coffee Break', 7, '2018-05-03 06:45:34', '2018-05-03 06:45:34'),
(10, 'Paket Masakan Tradisional', 0, '2018-05-03 06:47:17', '2018-05-03 06:47:17'),
(11, 'Nasi Tumpeng', 10, '2018-05-03 06:47:32', '2018-05-03 06:47:32'),
(12, 'Paket Lontong Sayur', 0, '2018-05-03 06:47:47', '2018-05-03 06:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 3, 3, NULL, NULL),
(6, 3, 4, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 4, 4, NULL, NULL),
(9, 5, 7, NULL, NULL),
(11, 6, 7, NULL, NULL),
(12, 7, 7, NULL, NULL),
(13, 8, 7, NULL, NULL),
(14, 8, 9, NULL, NULL),
(15, 7, 8, NULL, NULL),
(16, 9, 10, NULL, NULL),
(17, 10, 10, NULL, NULL),
(18, 11, 10, NULL, NULL),
(19, 11, 11, NULL, NULL),
(20, 12, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `origin` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `courier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `origin`, `destination`, `courier`, `service`, `weight`, `cost`, `created_at`, `updated_at`) VALUES
(1, 3, 444, 'jne', 'REG', 1000, 200, '2018-05-03 09:15:07', '2018-05-03 09:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2018_04_20_222040_create_products_table', 1),
('2018_04_20_222236_create_categories_table', 1),
('2018_04_20_222337_create_carts_table', 1),
('2018_04_20_222904_create_addresses_table', 1),
('2018_04_20_223014_create_fees_table', 1),
('2018_04_20_223056_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'waiting-payment',
  `bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_payment` decimal(18,2) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `status`, `bank`, `sender`, `total_payment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'packaging', 'mandiri', 'Wahyu', '510000.00', 'aCCSTs1Rnn9M8WVI55CLXwW0n5wS3apGFTSRq3Wk.jpeg', '2018-05-03 09:15:41', '2018-05-04 15:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `total_price` decimal(18,2) NOT NULL,
  `fee` decimal(10,2) UNSIGNED NOT NULL,
  `total_fee` decimal(18,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total_price`, `fee`, `total_fee`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 50, '10000.00', '500000.00', '200.00', '10000.00', '2018-05-03 09:15:41', '2018-05-03 09:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `vendor`, `description`, `price`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'Nasi Bungkus A', 'hJumBX0ho3CXLd9m5avj1Wj7ZGm79An14ot2mG3y.jpeg', 'Karibia Catering', '1. Nasi\r\n2. Ayam / Telur / Ikan\r\n3. Sambal\r\n4. Sayur (Wortel + Buncis / kacang + tempe / kacang + wortel / bihun + wortel / goreng tempe + kacang)', '6000.00', '1000.00', '2018-05-03 06:53:52', '2018-05-03 07:14:11'),
(2, 'Nasi Bungkus B', 'L8LPLVuS6qEQN6JjmxyzJb8aca4rb8ZF3pwfB2es.jpeg', 'Karibia Catering', '1. Nasi\r\n2. Ayam / Telur / Ikan\r\n3. Kerupuk\r\n4. Sambal\r\n5. Sayur (Wortel + Buncis / kacang + tempe / kacang + wortel / bihun + wortel / goreng tempe + kacang)\r\n', '8000.00', '1000.00', '2018-05-03 07:04:04', '2018-05-03 07:14:38'),
(3, 'Nasi Box A', '8FAV1gwoKNkoTzQimfx4PLv64ka5pL98dYvgSmbx.jpeg', 'Karibia Catering', '1. Nasi\r\n2. Ayam / Telur / Ikan\r\n3. Sambal\r\n4. Sayur (Wortel + Buncis / kacang + tempe / kacang + wortel / bihun + wortel / goreng tempe + kacang)\r\n5. Tempe / Tahu\r\n6. Kerupuk\r\n', '10000.00', '1000.00', '2018-05-03 07:12:25', '2018-05-03 07:12:25'),
(4, 'Nasi Box B', 'RpI9zBaA9aAhj3jA8ZQ6FWSOzCq3EvtMR7ifxBrm.jpeg', 'Karibia Catering', '1. Nasi\r\n2. Ayam / Telur / Ikan\r\n3. Sambal\r\n4. Sayur (Wortel + Buncis / kacang + tempe / kacang + wortel / bihun + wortel / goreng tempe + kacang)\r\n5. Tempe / Tahu\r\n6. Kerupuk\r\n7. Buah', '12500.00', '1000.00', '2018-05-03 07:13:43', '2018-05-03 07:13:43'),
(5, 'Snack Dus B', 'y0i9KnB02fxmyJn3t5ybFSZvbOuYJllSL8C1VQfw.jpeg', 'Teratai Catering', '1. 2 Kue Manis\r\n2. 1 Kue Asin\r\n3. Kacang / Keripik\r\n4. Minum', '14000.00', '1000.00', '2018-05-03 07:18:28', '2018-05-03 07:39:22'),
(6, 'Snack Dus A', 'eSiiSglFO0ubZmvWN8q5QQMAxqoW6GtuKoy6opAE.jpeg', 'Teratai Catering', '1. 2 Kue Manis\r\n2. 1 Kue Asin\r\n3. Minum\r\n\r\n', '12000.00', '1000.00', '2018-05-03 07:22:08', '2018-05-03 07:38:56'),
(7, 'Jajanan Pasar', 'SJgFfopkuhxOUqM7xN8HYHWtAIodjvMZmp4hP3ya.jpeg', 'Teratai Catering', '1. Bugis\r\n2. Cikak\r\n3. Apem\r\n4. Onde\r\n5. Nagasari\r\n6. Lemper', '25000.00', '1000.00', '2018-05-03 07:23:36', '2018-05-03 07:31:15'),
(8, 'Coffee Break', 'vwl59HbwINvXbyTIT1Kq697qdOuoahpzBmaoTlaa.jpeg', 'Teratai Catering', '1. Kopi + Creamer\r\n2. Teh\r\n3. 2 Kue Manis\r\n4. 1 Kue Asin\r\n\r\n', '17000.00', '1000.00', '2018-05-03 07:25:03', '2018-05-03 07:40:25'),
(9, 'Nasi Kuning', 'aduhV5rzxeE9Pb9VqK8QFWTkOv38xYcJxQeUmtrh.jpeg', 'Teratai Catering', '1. Nasi Kuning\r\n2. Ayam Goreng / Bakar\r\n3. Dadar Telur Iris\r\n4. Sambal Goreng\r\n5. Kering Tempe\r\n6. Timun Kemangi\r\n7. Krupuk\r\n8. Pisang\r\n9. Minum', '26000.00', '1000.00', '2018-05-03 07:45:33', '2018-05-03 07:45:33'),
(10, 'Nasi Kebuli', 'kzW5DRIeeBCz97o1g4BnaQ2FLwIwIcAl17PF8d1n.jpeg', 'Teratai Catering', '1. Nasi Kebuli\r\n2. Semur Daging Kambing / Sapi\r\n3. Acar Kering\r\n4. Sambal Goreng\r\n5. Krupuk\r\n6. Pisang\r\n7. Minum\r\n\r\n\r\n', '32000.00', '1000.00', '2018-05-03 07:47:08', '2018-05-03 07:47:08'),
(11, 'Nasi Tumpeng', 'IgyO52ImrDeSSNYK4jZGyJYwQgzzBO9AUvu13dUZ.jpeg', 'Teratai Catering', '1. Nasi Kuning\r\n2. Opor Ayam\r\n3. Opor Telur\r\n4. Sambal Goreng\r\n5. Uraban\r\n6. Perkedel\r\n\r\n\r\n\r\n', '600000.00', '1000.00', '2018-05-03 07:49:19', '2018-05-03 07:49:19'),
(12, 'Nasi Uduk', '8YRd39LeA0I6azAvDIobtMtUazynbIUcFBVIMwV7.jpeg', 'Teratai Catering', '1. Nasi Uduk\r\n2. Ayam Goreng / Bakar\r\n3. Dadar Telur Iris\r\n4. Sambal Goreng\r\n5. Kering Tempe\r\n6. Timun Kemangi\r\n7. Krupuk\r\n8. Pisang\r\n9. Minum\r\n', '26000.00', '1000.00', '2018-05-03 07:52:15', '2018-05-03 07:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1', 'Bali', '2018-05-03 06:38:28', '2018-05-03 06:38:28'),
('10', 'Jawa Tengah', '2018-05-03 06:38:31', '2018-05-03 06:38:31'),
('11', 'Jawa Timur', '2018-05-03 06:38:31', '2018-05-03 06:38:31'),
('12', 'Kalimantan Barat', '2018-05-03 06:38:32', '2018-05-03 06:38:32'),
('13', 'Kalimantan Selatan', '2018-05-03 06:38:32', '2018-05-03 06:38:32'),
('14', 'Kalimantan Tengah', '2018-05-03 06:38:32', '2018-05-03 06:38:32'),
('15', 'Kalimantan Timur', '2018-05-03 06:38:32', '2018-05-03 06:38:32'),
('16', 'Kalimantan Utara', '2018-05-03 06:38:33', '2018-05-03 06:38:33'),
('17', 'Kepulauan Riau', '2018-05-03 06:38:33', '2018-05-03 06:38:33'),
('18', 'Lampung', '2018-05-03 06:38:33', '2018-05-03 06:38:33'),
('19', 'Maluku', '2018-05-03 06:38:34', '2018-05-03 06:38:34'),
('2', 'Bangka Belitung', '2018-05-03 06:38:28', '2018-05-03 06:38:28'),
('20', 'Maluku Utara', '2018-05-03 06:38:34', '2018-05-03 06:38:34'),
('21', 'Nanggroe Aceh Darussalam (NAD)', '2018-05-03 06:38:34', '2018-05-03 06:38:34'),
('22', 'Nusa Tenggara Barat (NTB)', '2018-05-03 06:38:34', '2018-05-03 06:38:34'),
('23', 'Nusa Tenggara Timur (NTT)', '2018-05-03 06:38:35', '2018-05-03 06:38:35'),
('24', 'Papua', '2018-05-03 06:38:35', '2018-05-03 06:38:35'),
('25', 'Papua Barat', '2018-05-03 06:38:35', '2018-05-03 06:38:35'),
('26', 'Riau', '2018-05-03 06:38:36', '2018-05-03 06:38:36'),
('27', 'Sulawesi Barat', '2018-05-03 06:38:36', '2018-05-03 06:38:36'),
('28', 'Sulawesi Selatan', '2018-05-03 06:38:36', '2018-05-03 06:38:36'),
('29', 'Sulawesi Tengah', '2018-05-03 06:38:37', '2018-05-03 06:38:37'),
('3', 'Banten', '2018-05-03 06:38:28', '2018-05-03 06:38:28'),
('30', 'Sulawesi Tenggara', '2018-05-03 06:38:37', '2018-05-03 06:38:37'),
('31', 'Sulawesi Utara', '2018-05-03 06:38:37', '2018-05-03 06:38:37'),
('32', 'Sumatera Barat', '2018-05-03 06:38:38', '2018-05-03 06:38:38'),
('33', 'Sumatera Selatan', '2018-05-03 06:38:38', '2018-05-03 06:38:38'),
('34', 'Sumatera Utara', '2018-05-03 06:38:38', '2018-05-03 06:38:38'),
('4', 'Bengkulu', '2018-05-03 06:38:29', '2018-05-03 06:38:29'),
('5', 'DI Yogyakarta', '2018-05-03 06:38:30', '2018-05-03 06:38:30'),
('6', 'DKI Jakarta', '2018-05-03 06:38:30', '2018-05-03 06:38:30'),
('7', 'Gorontalo', '2018-05-03 06:38:30', '2018-05-03 06:38:30'),
('8', 'Jambi', '2018-05-03 06:38:30', '2018-05-03 06:38:30'),
('9', 'Jawa Barat', '2018-05-03 06:38:31', '2018-05-03 06:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`, `created_at`, `updated_at`) VALUES
('1', '21', 'Kabupaten Aceh Barat', '2018-05-03 06:38:39', '2018-05-03 06:38:39'),
('10', '21', 'Kabupaten Aceh Timur', '2018-05-03 06:38:41', '2018-05-03 06:38:41'),
('100', '19', 'Kabupaten Buru Selatan', '2018-05-03 06:39:10', '2018-05-03 06:39:10'),
('101', '30', 'Kabupaten Buton', '2018-05-03 06:39:10', '2018-05-03 06:39:10'),
('102', '30', 'Kabupaten Buton Utara', '2018-05-03 06:39:10', '2018-05-03 06:39:10'),
('103', '9', 'Kabupaten Ciamis', '2018-05-03 06:39:11', '2018-05-03 06:39:11'),
('104', '9', 'Kabupaten Cianjur', '2018-05-03 06:39:11', '2018-05-03 06:39:11'),
('105', '10', 'Kabupaten Cilacap', '2018-05-03 06:39:11', '2018-05-03 06:39:11'),
('106', '3', 'Kota Cilegon', '2018-05-03 06:39:11', '2018-05-03 06:39:11'),
('107', '9', 'Kota Cimahi', '2018-05-03 06:39:12', '2018-05-03 06:39:12'),
('108', '9', 'Kabupaten Cirebon', '2018-05-03 06:39:12', '2018-05-03 06:39:12'),
('109', '9', 'Kota Cirebon', '2018-05-03 06:39:12', '2018-05-03 06:39:12'),
('11', '21', 'Kabupaten Aceh Utara', '2018-05-03 06:38:42', '2018-05-03 06:38:42'),
('110', '34', 'Kabupaten Dairi', '2018-05-03 06:39:13', '2018-05-03 06:39:13'),
('111', '24', 'Kabupaten Deiyai (Deliyai)', '2018-05-03 06:39:13', '2018-05-03 06:39:13'),
('112', '34', 'Kabupaten Deli Serdang', '2018-05-03 06:39:13', '2018-05-03 06:39:13'),
('113', '10', 'Kabupaten Demak', '2018-05-03 06:39:14', '2018-05-03 06:39:14'),
('114', '1', 'Kota Denpasar', '2018-05-03 06:39:14', '2018-05-03 06:39:14'),
('115', '9', 'Kota Depok', '2018-05-03 06:39:14', '2018-05-03 06:39:14'),
('116', '32', 'Kabupaten Dharmasraya', '2018-05-03 06:39:15', '2018-05-03 06:39:15'),
('117', '24', 'Kabupaten Dogiyai', '2018-05-03 06:39:15', '2018-05-03 06:39:15'),
('118', '22', 'Kabupaten Dompu', '2018-05-03 06:39:15', '2018-05-03 06:39:15'),
('119', '29', 'Kabupaten Donggala', '2018-05-03 06:39:15', '2018-05-03 06:39:15'),
('12', '32', 'Kabupaten Agam', '2018-05-03 06:38:42', '2018-05-03 06:38:42'),
('120', '26', 'Kota Dumai', '2018-05-03 06:39:16', '2018-05-03 06:39:16'),
('121', '33', 'Kabupaten Empat Lawang', '2018-05-03 06:39:16', '2018-05-03 06:39:16'),
('122', '23', 'Kabupaten Ende', '2018-05-03 06:39:16', '2018-05-03 06:39:16'),
('123', '28', 'Kabupaten Enrekang', '2018-05-03 06:39:17', '2018-05-03 06:39:17'),
('124', '25', 'Kabupaten Fakfak', '2018-05-03 06:39:17', '2018-05-03 06:39:17'),
('125', '23', 'Kabupaten Flores Timur', '2018-05-03 06:39:17', '2018-05-03 06:39:17'),
('126', '9', 'Kabupaten Garut', '2018-05-03 06:39:17', '2018-05-03 06:39:17'),
('127', '21', 'Kabupaten Gayo Lues', '2018-05-03 06:39:18', '2018-05-03 06:39:18'),
('128', '1', 'Kabupaten Gianyar', '2018-05-03 06:39:18', '2018-05-03 06:39:18'),
('129', '7', 'Kabupaten Gorontalo', '2018-05-03 06:39:18', '2018-05-03 06:39:18'),
('13', '23', 'Kabupaten Alor', '2018-05-03 06:38:42', '2018-05-03 06:38:42'),
('130', '7', 'Kota Gorontalo', '2018-05-03 06:39:19', '2018-05-03 06:39:19'),
('131', '7', 'Kabupaten Gorontalo Utara', '2018-05-03 06:39:19', '2018-05-03 06:39:19'),
('132', '28', 'Kabupaten Gowa', '2018-05-03 06:39:19', '2018-05-03 06:39:19'),
('133', '11', 'Kabupaten Gresik', '2018-05-03 06:39:19', '2018-05-03 06:39:19'),
('134', '10', 'Kabupaten Grobogan', '2018-05-03 06:39:20', '2018-05-03 06:39:20'),
('135', '5', 'Kabupaten Gunung Kidul', '2018-05-03 06:39:20', '2018-05-03 06:39:20'),
('136', '14', 'Kabupaten Gunung Mas', '2018-05-03 06:39:20', '2018-05-03 06:39:20'),
('137', '34', 'Kota Gunungsitoli', '2018-05-03 06:39:21', '2018-05-03 06:39:21'),
('138', '20', 'Kabupaten Halmahera Barat', '2018-05-03 06:39:21', '2018-05-03 06:39:21'),
('139', '20', 'Kabupaten Halmahera Selatan', '2018-05-03 06:39:21', '2018-05-03 06:39:21'),
('14', '19', 'Kota Ambon', '2018-05-03 06:38:43', '2018-05-03 06:38:43'),
('140', '20', 'Kabupaten Halmahera Tengah', '2018-05-03 06:39:22', '2018-05-03 06:39:22'),
('141', '20', 'Kabupaten Halmahera Timur', '2018-05-03 06:39:22', '2018-05-03 06:39:22'),
('142', '20', 'Kabupaten Halmahera Utara', '2018-05-03 06:39:22', '2018-05-03 06:39:22'),
('143', '13', 'Kabupaten Hulu Sungai Selatan', '2018-05-03 06:39:23', '2018-05-03 06:39:23'),
('144', '13', 'Kabupaten Hulu Sungai Tengah', '2018-05-03 06:39:23', '2018-05-03 06:39:23'),
('145', '13', 'Kabupaten Hulu Sungai Utara', '2018-05-03 06:39:23', '2018-05-03 06:39:23'),
('146', '34', 'Kabupaten Humbang Hasundutan', '2018-05-03 06:39:23', '2018-05-03 06:39:23'),
('147', '26', 'Kabupaten Indragiri Hilir', '2018-05-03 06:39:24', '2018-05-03 06:39:24'),
('148', '26', 'Kabupaten Indragiri Hulu', '2018-05-03 06:39:24', '2018-05-03 06:39:24'),
('149', '9', 'Kabupaten Indramayu', '2018-05-03 06:39:24', '2018-05-03 06:39:24'),
('15', '34', 'Kabupaten Asahan', '2018-05-03 06:38:43', '2018-05-03 06:38:43'),
('150', '24', 'Kabupaten Intan Jaya', '2018-05-03 06:39:25', '2018-05-03 06:39:25'),
('151', '6', 'Kota Jakarta Barat', '2018-05-03 06:39:25', '2018-05-03 06:39:25'),
('152', '6', 'Kota Jakarta Pusat', '2018-05-03 06:39:25', '2018-05-03 06:39:25'),
('153', '6', 'Kota Jakarta Selatan', '2018-05-03 06:39:26', '2018-05-03 06:39:26'),
('154', '6', 'Kota Jakarta Timur', '2018-05-03 06:39:26', '2018-05-03 06:39:26'),
('155', '6', 'Kota Jakarta Utara', '2018-05-03 06:39:26', '2018-05-03 06:39:26'),
('156', '8', 'Kota Jambi', '2018-05-03 06:39:26', '2018-05-03 06:39:26'),
('157', '24', 'Kabupaten Jayapura', '2018-05-03 06:39:27', '2018-05-03 06:39:27'),
('158', '24', 'Kota Jayapura', '2018-05-03 06:39:27', '2018-05-03 06:39:27'),
('159', '24', 'Kabupaten Jayawijaya', '2018-05-03 06:39:27', '2018-05-03 06:39:27'),
('16', '24', 'Kabupaten Asmat', '2018-05-03 06:38:44', '2018-05-03 06:38:44'),
('160', '11', 'Kabupaten Jember', '2018-05-03 06:39:28', '2018-05-03 06:39:28'),
('161', '1', 'Kabupaten Jembrana', '2018-05-03 06:39:28', '2018-05-03 06:39:28'),
('162', '28', 'Kabupaten Jeneponto', '2018-05-03 06:39:28', '2018-05-03 06:39:28'),
('163', '10', 'Kabupaten Jepara', '2018-05-03 06:39:29', '2018-05-03 06:39:29'),
('164', '11', 'Kabupaten Jombang', '2018-05-03 06:39:29', '2018-05-03 06:39:29'),
('165', '25', 'Kabupaten Kaimana', '2018-05-03 06:39:29', '2018-05-03 06:39:29'),
('166', '26', 'Kabupaten Kampar', '2018-05-03 06:39:29', '2018-05-03 06:39:29'),
('167', '14', 'Kabupaten Kapuas', '2018-05-03 06:39:30', '2018-05-03 06:39:30'),
('168', '12', 'Kabupaten Kapuas Hulu', '2018-05-03 06:39:30', '2018-05-03 06:39:30'),
('169', '10', 'Kabupaten Karanganyar', '2018-05-03 06:39:30', '2018-05-03 06:39:30'),
('17', '1', 'Kabupaten Badung', '2018-05-03 06:38:44', '2018-05-03 06:38:44'),
('170', '1', 'Kabupaten Karangasem', '2018-05-03 06:39:31', '2018-05-03 06:39:31'),
('171', '9', 'Kabupaten Karawang', '2018-05-03 06:39:31', '2018-05-03 06:39:31'),
('172', '17', 'Kabupaten Karimun', '2018-05-03 06:39:31', '2018-05-03 06:39:31'),
('173', '34', 'Kabupaten Karo', '2018-05-03 06:39:31', '2018-05-03 06:39:31'),
('174', '14', 'Kabupaten Katingan', '2018-05-03 06:39:32', '2018-05-03 06:39:32'),
('175', '4', 'Kabupaten Kaur', '2018-05-03 06:39:32', '2018-05-03 06:39:32'),
('176', '12', 'Kabupaten Kayong Utara', '2018-05-03 06:39:32', '2018-05-03 06:39:32'),
('177', '10', 'Kabupaten Kebumen', '2018-05-03 06:39:33', '2018-05-03 06:39:33'),
('178', '11', 'Kabupaten Kediri', '2018-05-03 06:39:33', '2018-05-03 06:39:33'),
('179', '11', 'Kota Kediri', '2018-05-03 06:39:33', '2018-05-03 06:39:33'),
('18', '13', 'Kabupaten Balangan', '2018-05-03 06:38:44', '2018-05-03 06:38:44'),
('180', '24', 'Kabupaten Keerom', '2018-05-03 06:39:34', '2018-05-03 06:39:34'),
('181', '10', 'Kabupaten Kendal', '2018-05-03 06:39:34', '2018-05-03 06:39:34'),
('182', '30', 'Kota Kendari', '2018-05-03 06:39:34', '2018-05-03 06:39:34'),
('183', '4', 'Kabupaten Kepahiang', '2018-05-03 06:39:34', '2018-05-03 06:39:34'),
('184', '17', 'Kabupaten Kepulauan Anambas', '2018-05-03 06:39:35', '2018-05-03 06:39:35'),
('185', '19', 'Kabupaten Kepulauan Aru', '2018-05-03 06:39:35', '2018-05-03 06:39:35'),
('186', '32', 'Kabupaten Kepulauan Mentawai', '2018-05-03 06:39:35', '2018-05-03 06:39:35'),
('187', '26', 'Kabupaten Kepulauan Meranti', '2018-05-03 06:39:36', '2018-05-03 06:39:36'),
('188', '31', 'Kabupaten Kepulauan Sangihe', '2018-05-03 06:39:36', '2018-05-03 06:39:36'),
('189', '6', 'Kabupaten Kepulauan Seribu', '2018-05-03 06:39:36', '2018-05-03 06:39:36'),
('19', '15', 'Kota Balikpapan', '2018-05-03 06:38:44', '2018-05-03 06:38:44'),
('190', '31', 'Kabupaten Kepulauan Siau Tagulandang Biaro (Sitaro)', '2018-05-03 06:39:37', '2018-05-03 06:39:37'),
('191', '20', 'Kabupaten Kepulauan Sula', '2018-05-03 06:39:37', '2018-05-03 06:39:37'),
('192', '31', 'Kabupaten Kepulauan Talaud', '2018-05-03 06:39:37', '2018-05-03 06:39:37'),
('193', '24', 'Kabupaten Kepulauan Yapen (Yapen Waropen)', '2018-05-03 06:39:38', '2018-05-03 06:39:38'),
('194', '8', 'Kabupaten Kerinci', '2018-05-03 06:39:38', '2018-05-03 06:39:38'),
('195', '12', 'Kabupaten Ketapang', '2018-05-03 06:39:38', '2018-05-03 06:39:38'),
('196', '10', 'Kabupaten Klaten', '2018-05-03 06:39:38', '2018-05-03 06:39:38'),
('197', '1', 'Kabupaten Klungkung', '2018-05-03 06:39:39', '2018-05-03 06:39:39'),
('198', '30', 'Kabupaten Kolaka', '2018-05-03 06:39:39', '2018-05-03 06:39:39'),
('199', '30', 'Kabupaten Kolaka Utara', '2018-05-03 06:39:39', '2018-05-03 06:39:39'),
('2', '21', 'Kabupaten Aceh Barat Daya', '2018-05-03 06:38:39', '2018-05-03 06:38:39'),
('20', '21', 'Kota Banda Aceh', '2018-05-03 06:38:45', '2018-05-03 06:38:45'),
('200', '30', 'Kabupaten Konawe', '2018-05-03 06:39:40', '2018-05-03 06:39:40'),
('201', '30', 'Kabupaten Konawe Selatan', '2018-05-03 06:39:40', '2018-05-03 06:39:40'),
('202', '30', 'Kabupaten Konawe Utara', '2018-05-03 06:39:40', '2018-05-03 06:39:40'),
('203', '13', 'Kabupaten Kotabaru', '2018-05-03 06:39:40', '2018-05-03 06:39:40'),
('204', '31', 'Kota Kotamobagu', '2018-05-03 06:39:41', '2018-05-03 06:39:41'),
('205', '14', 'Kabupaten Kotawaringin Barat', '2018-05-03 06:39:41', '2018-05-03 06:39:41'),
('206', '14', 'Kabupaten Kotawaringin Timur', '2018-05-03 06:39:41', '2018-05-03 06:39:41'),
('207', '26', 'Kabupaten Kuantan Singingi', '2018-05-03 06:39:42', '2018-05-03 06:39:42'),
('208', '12', 'Kabupaten Kubu Raya', '2018-05-03 06:39:42', '2018-05-03 06:39:42'),
('209', '10', 'Kabupaten Kudus', '2018-05-03 06:39:42', '2018-05-03 06:39:42'),
('21', '18', 'Kota Bandar Lampung', '2018-05-03 06:38:45', '2018-05-03 06:38:45'),
('210', '5', 'Kabupaten Kulon Progo', '2018-05-03 06:39:43', '2018-05-03 06:39:43'),
('211', '9', 'Kabupaten Kuningan', '2018-05-03 06:39:43', '2018-05-03 06:39:43'),
('212', '23', 'Kabupaten Kupang', '2018-05-03 06:39:43', '2018-05-03 06:39:43'),
('213', '23', 'Kota Kupang', '2018-05-03 06:39:44', '2018-05-03 06:39:44'),
('214', '15', 'Kabupaten Kutai Barat', '2018-05-03 06:39:44', '2018-05-03 06:39:44'),
('215', '15', 'Kabupaten Kutai Kartanegara', '2018-05-03 06:39:44', '2018-05-03 06:39:44'),
('216', '15', 'Kabupaten Kutai Timur', '2018-05-03 06:39:45', '2018-05-03 06:39:45'),
('217', '34', 'Kabupaten Labuhan Batu', '2018-05-03 06:39:45', '2018-05-03 06:39:45'),
('218', '34', 'Kabupaten Labuhan Batu Selatan', '2018-05-03 06:39:45', '2018-05-03 06:39:45'),
('219', '34', 'Kabupaten Labuhan Batu Utara', '2018-05-03 06:39:45', '2018-05-03 06:39:45'),
('22', '9', 'Kabupaten Bandung', '2018-05-03 06:38:46', '2018-05-03 06:38:46'),
('220', '33', 'Kabupaten Lahat', '2018-05-03 06:39:46', '2018-05-03 06:39:46'),
('221', '14', 'Kabupaten Lamandau', '2018-05-03 06:39:46', '2018-05-03 06:39:46'),
('222', '11', 'Kabupaten Lamongan', '2018-05-03 06:39:46', '2018-05-03 06:39:46'),
('223', '18', 'Kabupaten Lampung Barat', '2018-05-03 06:39:47', '2018-05-03 06:39:47'),
('224', '18', 'Kabupaten Lampung Selatan', '2018-05-03 06:39:47', '2018-05-03 06:39:47'),
('225', '18', 'Kabupaten Lampung Tengah', '2018-05-03 06:39:47', '2018-05-03 06:39:47'),
('226', '18', 'Kabupaten Lampung Timur', '2018-05-03 06:39:48', '2018-05-03 06:39:48'),
('227', '18', 'Kabupaten Lampung Utara', '2018-05-03 06:39:48', '2018-05-03 06:39:48'),
('228', '12', 'Kabupaten Landak', '2018-05-03 06:39:48', '2018-05-03 06:39:48'),
('229', '34', 'Kabupaten Langkat', '2018-05-03 06:39:48', '2018-05-03 06:39:48'),
('23', '9', 'Kota Bandung', '2018-05-03 06:38:46', '2018-05-03 06:38:46'),
('230', '21', 'Kota Langsa', '2018-05-03 06:39:49', '2018-05-03 06:39:49'),
('231', '24', 'Kabupaten Lanny Jaya', '2018-05-03 06:39:49', '2018-05-03 06:39:49'),
('232', '3', 'Kabupaten Lebak', '2018-05-03 06:39:49', '2018-05-03 06:39:49'),
('233', '4', 'Kabupaten Lebong', '2018-05-03 06:39:50', '2018-05-03 06:39:50'),
('234', '23', 'Kabupaten Lembata', '2018-05-03 06:39:50', '2018-05-03 06:39:50'),
('235', '21', 'Kota Lhokseumawe', '2018-05-03 06:39:50', '2018-05-03 06:39:50'),
('236', '32', 'Kabupaten Lima Puluh Koto/Kota', '2018-05-03 06:39:51', '2018-05-03 06:39:51'),
('237', '17', 'Kabupaten Lingga', '2018-05-03 06:39:51', '2018-05-03 06:39:51'),
('238', '22', 'Kabupaten Lombok Barat', '2018-05-03 06:39:51', '2018-05-03 06:39:51'),
('239', '22', 'Kabupaten Lombok Tengah', '2018-05-03 06:39:51', '2018-05-03 06:39:51'),
('24', '9', 'Kabupaten Bandung Barat', '2018-05-03 06:38:46', '2018-05-03 06:38:46'),
('240', '22', 'Kabupaten Lombok Timur', '2018-05-03 06:39:52', '2018-05-03 06:39:52'),
('241', '22', 'Kabupaten Lombok Utara', '2018-05-03 06:39:52', '2018-05-03 06:39:52'),
('242', '33', 'Kota Lubuk Linggau', '2018-05-03 06:39:52', '2018-05-03 06:39:52'),
('243', '11', 'Kabupaten Lumajang', '2018-05-03 06:39:53', '2018-05-03 06:39:53'),
('244', '28', 'Kabupaten Luwu', '2018-05-03 06:39:53', '2018-05-03 06:39:53'),
('245', '28', 'Kabupaten Luwu Timur', '2018-05-03 06:39:53', '2018-05-03 06:39:53'),
('246', '28', 'Kabupaten Luwu Utara', '2018-05-03 06:39:54', '2018-05-03 06:39:54'),
('247', '11', 'Kabupaten Madiun', '2018-05-03 06:39:54', '2018-05-03 06:39:54'),
('248', '11', 'Kota Madiun', '2018-05-03 06:39:54', '2018-05-03 06:39:54'),
('249', '10', 'Kabupaten Magelang', '2018-05-03 06:39:54', '2018-05-03 06:39:54'),
('25', '29', 'Kabupaten Banggai', '2018-05-03 06:38:46', '2018-05-03 06:38:46'),
('250', '10', 'Kota Magelang', '2018-05-03 06:39:55', '2018-05-03 06:39:55'),
('251', '11', 'Kabupaten Magetan', '2018-05-03 06:39:55', '2018-05-03 06:39:55'),
('252', '9', 'Kabupaten Majalengka', '2018-05-03 06:39:55', '2018-05-03 06:39:55'),
('253', '27', 'Kabupaten Majene', '2018-05-03 06:39:56', '2018-05-03 06:39:56'),
('254', '28', 'Kota Makassar', '2018-05-03 06:39:56', '2018-05-03 06:39:56'),
('255', '11', 'Kabupaten Malang', '2018-05-03 06:39:56', '2018-05-03 06:39:56'),
('256', '11', 'Kota Malang', '2018-05-03 06:39:57', '2018-05-03 06:39:57'),
('257', '16', 'Kabupaten Malinau', '2018-05-03 06:39:57', '2018-05-03 06:39:57'),
('258', '19', 'Kabupaten Maluku Barat Daya', '2018-05-03 06:39:57', '2018-05-03 06:39:57'),
('259', '19', 'Kabupaten Maluku Tengah', '2018-05-03 06:39:57', '2018-05-03 06:39:57'),
('26', '29', 'Kabupaten Banggai Kepulauan', '2018-05-03 06:38:47', '2018-05-03 06:38:47'),
('260', '19', 'Kabupaten Maluku Tenggara', '2018-05-03 06:39:58', '2018-05-03 06:39:58'),
('261', '19', 'Kabupaten Maluku Tenggara Barat', '2018-05-03 06:39:58', '2018-05-03 06:39:58'),
('262', '27', 'Kabupaten Mamasa', '2018-05-03 06:39:58', '2018-05-03 06:39:58'),
('263', '24', 'Kabupaten Mamberamo Raya', '2018-05-03 06:39:59', '2018-05-03 06:39:59'),
('264', '24', 'Kabupaten Mamberamo Tengah', '2018-05-03 06:39:59', '2018-05-03 06:39:59'),
('265', '27', 'Kabupaten Mamuju', '2018-05-03 06:39:59', '2018-05-03 06:39:59'),
('266', '27', 'Kabupaten Mamuju Utara', '2018-05-03 06:40:00', '2018-05-03 06:40:00'),
('267', '31', 'Kota Manado', '2018-05-03 06:40:00', '2018-05-03 06:40:00'),
('268', '34', 'Kabupaten Mandailing Natal', '2018-05-03 06:40:00', '2018-05-03 06:40:00'),
('269', '23', 'Kabupaten Manggarai', '2018-05-03 06:40:01', '2018-05-03 06:40:01'),
('27', '2', 'Kabupaten Bangka', '2018-05-03 06:38:47', '2018-05-03 06:38:47'),
('270', '23', 'Kabupaten Manggarai Barat', '2018-05-03 06:40:01', '2018-05-03 06:40:01'),
('271', '23', 'Kabupaten Manggarai Timur', '2018-05-03 06:40:01', '2018-05-03 06:40:01'),
('272', '25', 'Kabupaten Manokwari', '2018-05-03 06:40:02', '2018-05-03 06:40:02'),
('273', '25', 'Kabupaten Manokwari Selatan', '2018-05-03 06:40:02', '2018-05-03 06:40:02'),
('274', '24', 'Kabupaten Mappi', '2018-05-03 06:40:02', '2018-05-03 06:40:02'),
('275', '28', 'Kabupaten Maros', '2018-05-03 06:40:02', '2018-05-03 06:40:02'),
('276', '22', 'Kota Mataram', '2018-05-03 06:40:03', '2018-05-03 06:40:03'),
('277', '25', 'Kabupaten Maybrat', '2018-05-03 06:40:03', '2018-05-03 06:40:03'),
('278', '34', 'Kota Medan', '2018-05-03 06:40:03', '2018-05-03 06:40:03'),
('279', '12', 'Kabupaten Melawi', '2018-05-03 06:40:04', '2018-05-03 06:40:04'),
('28', '2', 'Kabupaten Bangka Barat', '2018-05-03 06:38:48', '2018-05-03 06:38:48'),
('280', '8', 'Kabupaten Merangin', '2018-05-03 06:40:04', '2018-05-03 06:40:04'),
('281', '24', 'Kabupaten Merauke', '2018-05-03 06:40:04', '2018-05-03 06:40:04'),
('282', '18', 'Kabupaten Mesuji', '2018-05-03 06:40:04', '2018-05-03 06:40:04'),
('283', '18', 'Kota Metro', '2018-05-03 06:40:05', '2018-05-03 06:40:05'),
('284', '24', 'Kabupaten Mimika', '2018-05-03 06:40:05', '2018-05-03 06:40:05'),
('285', '31', 'Kabupaten Minahasa', '2018-05-03 06:40:05', '2018-05-03 06:40:05'),
('286', '31', 'Kabupaten Minahasa Selatan', '2018-05-03 06:40:06', '2018-05-03 06:40:06'),
('287', '31', 'Kabupaten Minahasa Tenggara', '2018-05-03 06:40:06', '2018-05-03 06:40:06'),
('288', '31', 'Kabupaten Minahasa Utara', '2018-05-03 06:40:06', '2018-05-03 06:40:06'),
('289', '11', 'Kabupaten Mojokerto', '2018-05-03 06:40:07', '2018-05-03 06:40:07'),
('29', '2', 'Kabupaten Bangka Selatan', '2018-05-03 06:38:48', '2018-05-03 06:38:48'),
('290', '11', 'Kota Mojokerto', '2018-05-03 06:40:07', '2018-05-03 06:40:07'),
('291', '29', 'Kabupaten Morowali', '2018-05-03 06:40:08', '2018-05-03 06:40:08'),
('292', '33', 'Kabupaten Muara Enim', '2018-05-03 06:40:08', '2018-05-03 06:40:08'),
('293', '8', 'Kabupaten Muaro Jambi', '2018-05-03 06:40:08', '2018-05-03 06:40:08'),
('294', '4', 'Kabupaten Muko Muko', '2018-05-03 06:40:09', '2018-05-03 06:40:09'),
('295', '30', 'Kabupaten Muna', '2018-05-03 06:40:09', '2018-05-03 06:40:09'),
('296', '14', 'Kabupaten Murung Raya', '2018-05-03 06:40:09', '2018-05-03 06:40:09'),
('297', '33', 'Kabupaten Musi Banyuasin', '2018-05-03 06:40:10', '2018-05-03 06:40:10'),
('298', '33', 'Kabupaten Musi Rawas', '2018-05-03 06:40:10', '2018-05-03 06:40:10'),
('299', '24', 'Kabupaten Nabire', '2018-05-03 06:40:10', '2018-05-03 06:40:10'),
('3', '21', 'Kabupaten Aceh Besar', '2018-05-03 06:38:39', '2018-05-03 06:38:39'),
('30', '2', 'Kabupaten Bangka Tengah', '2018-05-03 06:38:48', '2018-05-03 06:38:48'),
('300', '21', 'Kabupaten Nagan Raya', '2018-05-03 06:40:11', '2018-05-03 06:40:11'),
('301', '23', 'Kabupaten Nagekeo', '2018-05-03 06:40:11', '2018-05-03 06:40:11'),
('302', '17', 'Kabupaten Natuna', '2018-05-03 06:40:11', '2018-05-03 06:40:11'),
('303', '24', 'Kabupaten Nduga', '2018-05-03 06:40:11', '2018-05-03 06:40:11'),
('304', '23', 'Kabupaten Ngada', '2018-05-03 06:40:12', '2018-05-03 06:40:12'),
('305', '11', 'Kabupaten Nganjuk', '2018-05-03 06:40:12', '2018-05-03 06:40:12'),
('306', '11', 'Kabupaten Ngawi', '2018-05-03 06:40:12', '2018-05-03 06:40:12'),
('307', '34', 'Kabupaten Nias', '2018-05-03 06:40:13', '2018-05-03 06:40:13'),
('308', '34', 'Kabupaten Nias Barat', '2018-05-03 06:40:13', '2018-05-03 06:40:13'),
('309', '34', 'Kabupaten Nias Selatan', '2018-05-03 06:40:13', '2018-05-03 06:40:13'),
('31', '11', 'Kabupaten Bangkalan', '2018-05-03 06:38:48', '2018-05-03 06:38:48'),
('310', '34', 'Kabupaten Nias Utara', '2018-05-03 06:40:14', '2018-05-03 06:40:14'),
('311', '16', 'Kabupaten Nunukan', '2018-05-03 06:40:14', '2018-05-03 06:40:14'),
('312', '33', 'Kabupaten Ogan Ilir', '2018-05-03 06:40:14', '2018-05-03 06:40:14'),
('313', '33', 'Kabupaten Ogan Komering Ilir', '2018-05-03 06:40:15', '2018-05-03 06:40:15'),
('314', '33', 'Kabupaten Ogan Komering Ulu', '2018-05-03 06:40:15', '2018-05-03 06:40:15'),
('315', '33', 'Kabupaten Ogan Komering Ulu Selatan', '2018-05-03 06:40:15', '2018-05-03 06:40:15'),
('316', '33', 'Kabupaten Ogan Komering Ulu Timur', '2018-05-03 06:40:15', '2018-05-03 06:40:15'),
('317', '11', 'Kabupaten Pacitan', '2018-05-03 06:40:16', '2018-05-03 06:40:16'),
('318', '32', 'Kota Padang', '2018-05-03 06:40:16', '2018-05-03 06:40:16'),
('319', '34', 'Kabupaten Padang Lawas', '2018-05-03 06:40:16', '2018-05-03 06:40:16'),
('32', '1', 'Kabupaten Bangli', '2018-05-03 06:38:49', '2018-05-03 06:38:49'),
('320', '34', 'Kabupaten Padang Lawas Utara', '2018-05-03 06:40:17', '2018-05-03 06:40:17'),
('321', '32', 'Kota Padang Panjang', '2018-05-03 06:40:17', '2018-05-03 06:40:17'),
('322', '32', 'Kabupaten Padang Pariaman', '2018-05-03 06:40:17', '2018-05-03 06:40:17'),
('323', '34', 'Kota Padang Sidempuan', '2018-05-03 06:40:18', '2018-05-03 06:40:18'),
('324', '33', 'Kota Pagar Alam', '2018-05-03 06:40:18', '2018-05-03 06:40:18'),
('325', '34', 'Kabupaten Pakpak Bharat', '2018-05-03 06:40:18', '2018-05-03 06:40:18'),
('326', '14', 'Kota Palangka Raya', '2018-05-03 06:40:18', '2018-05-03 06:40:18'),
('327', '33', 'Kota Palembang', '2018-05-03 06:40:19', '2018-05-03 06:40:19'),
('328', '28', 'Kota Palopo', '2018-05-03 06:40:19', '2018-05-03 06:40:19'),
('329', '29', 'Kota Palu', '2018-05-03 06:40:19', '2018-05-03 06:40:19'),
('33', '13', 'Kabupaten Banjar', '2018-05-03 06:38:49', '2018-05-03 06:38:49'),
('330', '11', 'Kabupaten Pamekasan', '2018-05-03 06:40:20', '2018-05-03 06:40:20'),
('331', '3', 'Kabupaten Pandeglang', '2018-05-03 06:40:20', '2018-05-03 06:40:20'),
('332', '9', 'Kabupaten Pangandaran', '2018-05-03 06:40:20', '2018-05-03 06:40:20'),
('333', '28', 'Kabupaten Pangkajene Kepulauan', '2018-05-03 06:40:21', '2018-05-03 06:40:21'),
('334', '2', 'Kota Pangkal Pinang', '2018-05-03 06:40:21', '2018-05-03 06:40:21'),
('335', '24', 'Kabupaten Paniai', '2018-05-03 06:40:21', '2018-05-03 06:40:21'),
('336', '28', 'Kota Parepare', '2018-05-03 06:40:21', '2018-05-03 06:40:21'),
('337', '32', 'Kota Pariaman', '2018-05-03 06:40:22', '2018-05-03 06:40:22'),
('338', '29', 'Kabupaten Parigi Moutong', '2018-05-03 06:40:22', '2018-05-03 06:40:22'),
('339', '32', 'Kabupaten Pasaman', '2018-05-03 06:40:22', '2018-05-03 06:40:22'),
('34', '9', 'Kota Banjar', '2018-05-03 06:38:49', '2018-05-03 06:38:49'),
('340', '32', 'Kabupaten Pasaman Barat', '2018-05-03 06:40:23', '2018-05-03 06:40:23'),
('341', '15', 'Kabupaten Paser', '2018-05-03 06:40:23', '2018-05-03 06:40:23'),
('342', '11', 'Kabupaten Pasuruan', '2018-05-03 06:40:23', '2018-05-03 06:40:23'),
('343', '11', 'Kota Pasuruan', '2018-05-03 06:40:23', '2018-05-03 06:40:23'),
('344', '10', 'Kabupaten Pati', '2018-05-03 06:40:24', '2018-05-03 06:40:24'),
('345', '32', 'Kota Payakumbuh', '2018-05-03 06:40:24', '2018-05-03 06:40:24'),
('346', '25', 'Kabupaten Pegunungan Arfak', '2018-05-03 06:40:24', '2018-05-03 06:40:24'),
('347', '24', 'Kabupaten Pegunungan Bintang', '2018-05-03 06:40:25', '2018-05-03 06:40:25'),
('348', '10', 'Kabupaten Pekalongan', '2018-05-03 06:40:25', '2018-05-03 06:40:25'),
('349', '10', 'Kota Pekalongan', '2018-05-03 06:40:25', '2018-05-03 06:40:25'),
('35', '13', 'Kota Banjarbaru', '2018-05-03 06:38:50', '2018-05-03 06:38:50'),
('350', '26', 'Kota Pekanbaru', '2018-05-03 06:40:26', '2018-05-03 06:40:26'),
('351', '26', 'Kabupaten Pelalawan', '2018-05-03 06:40:26', '2018-05-03 06:40:26'),
('352', '10', 'Kabupaten Pemalang', '2018-05-03 06:40:26', '2018-05-03 06:40:26'),
('353', '34', 'Kota Pematang Siantar', '2018-05-03 06:40:27', '2018-05-03 06:40:27'),
('354', '15', 'Kabupaten Penajam Paser Utara', '2018-05-03 06:40:27', '2018-05-03 06:40:27'),
('355', '18', 'Kabupaten Pesawaran', '2018-05-03 06:40:27', '2018-05-03 06:40:27'),
('356', '18', 'Kabupaten Pesisir Barat', '2018-05-03 06:40:27', '2018-05-03 06:40:27'),
('357', '32', 'Kabupaten Pesisir Selatan', '2018-05-03 06:40:28', '2018-05-03 06:40:28'),
('358', '21', 'Kabupaten Pidie', '2018-05-03 06:40:28', '2018-05-03 06:40:28'),
('359', '21', 'Kabupaten Pidie Jaya', '2018-05-03 06:40:28', '2018-05-03 06:40:28'),
('36', '13', 'Kota Banjarmasin', '2018-05-03 06:38:50', '2018-05-03 06:38:50'),
('360', '28', 'Kabupaten Pinrang', '2018-05-03 06:40:29', '2018-05-03 06:40:29'),
('361', '7', 'Kabupaten Pohuwato', '2018-05-03 06:40:29', '2018-05-03 06:40:29'),
('362', '27', 'Kabupaten Polewali Mandar', '2018-05-03 06:40:29', '2018-05-03 06:40:29'),
('363', '11', 'Kabupaten Ponorogo', '2018-05-03 06:40:30', '2018-05-03 06:40:30'),
('364', '12', 'Kabupaten Pontianak', '2018-05-03 06:40:30', '2018-05-03 06:40:30'),
('365', '12', 'Kota Pontianak', '2018-05-03 06:40:30', '2018-05-03 06:40:30'),
('366', '29', 'Kabupaten Poso', '2018-05-03 06:40:30', '2018-05-03 06:40:30'),
('367', '33', 'Kota Prabumulih', '2018-05-03 06:40:31', '2018-05-03 06:40:31'),
('368', '18', 'Kabupaten Pringsewu', '2018-05-03 06:40:31', '2018-05-03 06:40:31'),
('369', '11', 'Kabupaten Probolinggo', '2018-05-03 06:40:31', '2018-05-03 06:40:31'),
('37', '10', 'Kabupaten Banjarnegara', '2018-05-03 06:38:50', '2018-05-03 06:38:50'),
('370', '11', 'Kota Probolinggo', '2018-05-03 06:40:32', '2018-05-03 06:40:32'),
('371', '14', 'Kabupaten Pulang Pisau', '2018-05-03 06:40:32', '2018-05-03 06:40:32'),
('372', '20', 'Kabupaten Pulau Morotai', '2018-05-03 06:40:32', '2018-05-03 06:40:32'),
('373', '24', 'Kabupaten Puncak', '2018-05-03 06:40:33', '2018-05-03 06:40:33'),
('374', '24', 'Kabupaten Puncak Jaya', '2018-05-03 06:40:33', '2018-05-03 06:40:33'),
('375', '10', 'Kabupaten Purbalingga', '2018-05-03 06:40:33', '2018-05-03 06:40:33'),
('376', '9', 'Kabupaten Purwakarta', '2018-05-03 06:40:34', '2018-05-03 06:40:34'),
('377', '10', 'Kabupaten Purworejo', '2018-05-03 06:40:34', '2018-05-03 06:40:34'),
('378', '25', 'Kabupaten Raja Ampat', '2018-05-03 06:40:34', '2018-05-03 06:40:34'),
('379', '4', 'Kabupaten Rejang Lebong', '2018-05-03 06:40:35', '2018-05-03 06:40:35'),
('38', '28', 'Kabupaten Bantaeng', '2018-05-03 06:38:51', '2018-05-03 06:38:51'),
('380', '10', 'Kabupaten Rembang', '2018-05-03 06:40:35', '2018-05-03 06:40:35'),
('381', '26', 'Kabupaten Rokan Hilir', '2018-05-03 06:40:35', '2018-05-03 06:40:35'),
('382', '26', 'Kabupaten Rokan Hulu', '2018-05-03 06:40:35', '2018-05-03 06:40:35'),
('383', '23', 'Kabupaten Rote Ndao', '2018-05-03 06:40:36', '2018-05-03 06:40:36'),
('384', '21', 'Kota Sabang', '2018-05-03 06:40:36', '2018-05-03 06:40:36'),
('385', '23', 'Kabupaten Sabu Raijua', '2018-05-03 06:40:36', '2018-05-03 06:40:36'),
('386', '10', 'Kota Salatiga', '2018-05-03 06:40:37', '2018-05-03 06:40:37'),
('387', '15', 'Kota Samarinda', '2018-05-03 06:40:37', '2018-05-03 06:40:37'),
('388', '12', 'Kabupaten Sambas', '2018-05-03 06:40:37', '2018-05-03 06:40:37'),
('389', '34', 'Kabupaten Samosir', '2018-05-03 06:40:38', '2018-05-03 06:40:38'),
('39', '5', 'Kabupaten Bantul', '2018-05-03 06:38:51', '2018-05-03 06:38:51'),
('390', '11', 'Kabupaten Sampang', '2018-05-03 06:40:38', '2018-05-03 06:40:38'),
('391', '12', 'Kabupaten Sanggau', '2018-05-03 06:40:38', '2018-05-03 06:40:38'),
('392', '24', 'Kabupaten Sarmi', '2018-05-03 06:40:39', '2018-05-03 06:40:39'),
('393', '8', 'Kabupaten Sarolangun', '2018-05-03 06:40:39', '2018-05-03 06:40:39'),
('394', '32', 'Kota Sawah Lunto', '2018-05-03 06:40:39', '2018-05-03 06:40:39'),
('395', '12', 'Kabupaten Sekadau', '2018-05-03 06:40:40', '2018-05-03 06:40:40'),
('396', '28', 'Kabupaten Selayar (Kepulauan Selayar)', '2018-05-03 06:40:40', '2018-05-03 06:40:40'),
('397', '4', 'Kabupaten Seluma', '2018-05-03 06:40:40', '2018-05-03 06:40:40'),
('398', '10', 'Kabupaten Semarang', '2018-05-03 06:40:40', '2018-05-03 06:40:40'),
('399', '10', 'Kota Semarang', '2018-05-03 06:40:41', '2018-05-03 06:40:41'),
('4', '21', 'Kabupaten Aceh Jaya', '2018-05-03 06:38:40', '2018-05-03 06:38:40'),
('40', '33', 'Kabupaten Banyuasin', '2018-05-03 06:38:51', '2018-05-03 06:38:51'),
('400', '19', 'Kabupaten Seram Bagian Barat', '2018-05-03 06:40:41', '2018-05-03 06:40:41'),
('401', '19', 'Kabupaten Seram Bagian Timur', '2018-05-03 06:40:41', '2018-05-03 06:40:41'),
('402', '3', 'Kabupaten Serang', '2018-05-03 06:40:42', '2018-05-03 06:40:42'),
('403', '3', 'Kota Serang', '2018-05-03 06:40:42', '2018-05-03 06:40:42'),
('404', '34', 'Kabupaten Serdang Bedagai', '2018-05-03 06:40:42', '2018-05-03 06:40:42'),
('405', '14', 'Kabupaten Seruyan', '2018-05-03 06:40:42', '2018-05-03 06:40:42'),
('406', '26', 'Kabupaten Siak', '2018-05-03 06:40:43', '2018-05-03 06:40:43'),
('407', '34', 'Kota Sibolga', '2018-05-03 06:40:43', '2018-05-03 06:40:43'),
('408', '28', 'Kabupaten Sidenreng Rappang/Rapang', '2018-05-03 06:40:43', '2018-05-03 06:40:43'),
('409', '11', 'Kabupaten Sidoarjo', '2018-05-03 06:40:44', '2018-05-03 06:40:44'),
('41', '10', 'Kabupaten Banyumas', '2018-05-03 06:38:51', '2018-05-03 06:38:51'),
('410', '29', 'Kabupaten Sigi', '2018-05-03 06:40:44', '2018-05-03 06:40:44'),
('411', '32', 'Kabupaten Sijunjung (Sawah Lunto Sijunjung)', '2018-05-03 06:40:45', '2018-05-03 06:40:45'),
('412', '23', 'Kabupaten Sikka', '2018-05-03 06:40:45', '2018-05-03 06:40:45'),
('413', '34', 'Kabupaten Simalungun', '2018-05-03 06:40:45', '2018-05-03 06:40:45'),
('414', '21', 'Kabupaten Simeulue', '2018-05-03 06:40:45', '2018-05-03 06:40:45'),
('415', '12', 'Kota Singkawang', '2018-05-03 06:40:46', '2018-05-03 06:40:46'),
('416', '28', 'Kabupaten Sinjai', '2018-05-03 06:40:46', '2018-05-03 06:40:46'),
('417', '12', 'Kabupaten Sintang', '2018-05-03 06:40:46', '2018-05-03 06:40:46'),
('418', '11', 'Kabupaten Situbondo', '2018-05-03 06:40:47', '2018-05-03 06:40:47'),
('419', '5', 'Kabupaten Sleman', '2018-05-03 06:40:47', '2018-05-03 06:40:47'),
('42', '11', 'Kabupaten Banyuwangi', '2018-05-03 06:38:52', '2018-05-03 06:38:52'),
('420', '32', 'Kabupaten Solok', '2018-05-03 06:40:47', '2018-05-03 06:40:47'),
('421', '32', 'Kota Solok', '2018-05-03 06:40:48', '2018-05-03 06:40:48'),
('422', '32', 'Kabupaten Solok Selatan', '2018-05-03 06:40:48', '2018-05-03 06:40:48'),
('423', '28', 'Kabupaten Soppeng', '2018-05-03 06:40:48', '2018-05-03 06:40:48'),
('424', '25', 'Kabupaten Sorong', '2018-05-03 06:40:49', '2018-05-03 06:40:49'),
('425', '25', 'Kota Sorong', '2018-05-03 06:40:49', '2018-05-03 06:40:49'),
('426', '25', 'Kabupaten Sorong Selatan', '2018-05-03 06:40:49', '2018-05-03 06:40:49'),
('427', '10', 'Kabupaten Sragen', '2018-05-03 06:40:50', '2018-05-03 06:40:50'),
('428', '9', 'Kabupaten Subang', '2018-05-03 06:40:50', '2018-05-03 06:40:50'),
('429', '21', 'Kota Subulussalam', '2018-05-03 06:40:50', '2018-05-03 06:40:50'),
('43', '13', 'Kabupaten Barito Kuala', '2018-05-03 06:38:52', '2018-05-03 06:38:52'),
('430', '9', 'Kabupaten Sukabumi', '2018-05-03 06:40:50', '2018-05-03 06:40:50'),
('431', '9', 'Kota Sukabumi', '2018-05-03 06:40:51', '2018-05-03 06:40:51'),
('432', '14', 'Kabupaten Sukamara', '2018-05-03 06:40:51', '2018-05-03 06:40:51'),
('433', '10', 'Kabupaten Sukoharjo', '2018-05-03 06:40:52', '2018-05-03 06:40:52'),
('434', '23', 'Kabupaten Sumba Barat', '2018-05-03 06:40:52', '2018-05-03 06:40:52'),
('435', '23', 'Kabupaten Sumba Barat Daya', '2018-05-03 06:40:52', '2018-05-03 06:40:52'),
('436', '23', 'Kabupaten Sumba Tengah', '2018-05-03 06:40:53', '2018-05-03 06:40:53'),
('437', '23', 'Kabupaten Sumba Timur', '2018-05-03 06:40:53', '2018-05-03 06:40:53'),
('438', '22', 'Kabupaten Sumbawa', '2018-05-03 06:40:53', '2018-05-03 06:40:53'),
('439', '22', 'Kabupaten Sumbawa Barat', '2018-05-03 06:40:54', '2018-05-03 06:40:54'),
('44', '14', 'Kabupaten Barito Selatan', '2018-05-03 06:38:52', '2018-05-03 06:38:52'),
('440', '9', 'Kabupaten Sumedang', '2018-05-03 06:40:54', '2018-05-03 06:40:54'),
('441', '11', 'Kabupaten Sumenep', '2018-05-03 06:40:54', '2018-05-03 06:40:54'),
('442', '8', 'Kota Sungaipenuh', '2018-05-03 06:40:55', '2018-05-03 06:40:55'),
('443', '24', 'Kabupaten Supiori', '2018-05-03 06:40:55', '2018-05-03 06:40:55'),
('444', '11', 'Kota Surabaya', '2018-05-03 06:40:55', '2018-05-03 06:40:55'),
('445', '10', 'Kota Surakarta (Solo)', '2018-05-03 06:40:56', '2018-05-03 06:40:56'),
('446', '13', 'Kabupaten Tabalong', '2018-05-03 06:40:56', '2018-05-03 06:40:56'),
('447', '1', 'Kabupaten Tabanan', '2018-05-03 06:40:56', '2018-05-03 06:40:56'),
('448', '28', 'Kabupaten Takalar', '2018-05-03 06:40:57', '2018-05-03 06:40:57'),
('449', '25', 'Kabupaten Tambrauw', '2018-05-03 06:40:57', '2018-05-03 06:40:57'),
('45', '14', 'Kabupaten Barito Timur', '2018-05-03 06:38:52', '2018-05-03 06:38:52'),
('450', '16', 'Kabupaten Tana Tidung', '2018-05-03 06:40:58', '2018-05-03 06:40:58'),
('451', '28', 'Kabupaten Tana Toraja', '2018-05-03 06:40:58', '2018-05-03 06:40:58'),
('452', '13', 'Kabupaten Tanah Bumbu', '2018-05-03 06:40:58', '2018-05-03 06:40:58'),
('453', '32', 'Kabupaten Tanah Datar', '2018-05-03 06:40:59', '2018-05-03 06:40:59'),
('454', '13', 'Kabupaten Tanah Laut', '2018-05-03 06:40:59', '2018-05-03 06:40:59'),
('455', '3', 'Kabupaten Tangerang', '2018-05-03 06:40:59', '2018-05-03 06:40:59'),
('456', '3', 'Kota Tangerang', '2018-05-03 06:41:00', '2018-05-03 06:41:00'),
('457', '3', 'Kota Tangerang Selatan', '2018-05-03 06:41:00', '2018-05-03 06:41:00'),
('458', '18', 'Kabupaten Tanggamus', '2018-05-03 06:41:00', '2018-05-03 06:41:00'),
('459', '34', 'Kota Tanjung Balai', '2018-05-03 06:41:01', '2018-05-03 06:41:01'),
('46', '14', 'Kabupaten Barito Utara', '2018-05-03 06:38:53', '2018-05-03 06:38:53'),
('460', '8', 'Kabupaten Tanjung Jabung Barat', '2018-05-03 06:41:01', '2018-05-03 06:41:01'),
('461', '8', 'Kabupaten Tanjung Jabung Timur', '2018-05-03 06:41:01', '2018-05-03 06:41:01'),
('462', '17', 'Kota Tanjung Pinang', '2018-05-03 06:41:02', '2018-05-03 06:41:02'),
('463', '34', 'Kabupaten Tapanuli Selatan', '2018-05-03 06:41:02', '2018-05-03 06:41:02'),
('464', '34', 'Kabupaten Tapanuli Tengah', '2018-05-03 06:41:02', '2018-05-03 06:41:02'),
('465', '34', 'Kabupaten Tapanuli Utara', '2018-05-03 06:41:02', '2018-05-03 06:41:02'),
('466', '13', 'Kabupaten Tapin', '2018-05-03 06:41:03', '2018-05-03 06:41:03'),
('467', '16', 'Kota Tarakan', '2018-05-03 06:41:03', '2018-05-03 06:41:03'),
('468', '9', 'Kabupaten Tasikmalaya', '2018-05-03 06:41:03', '2018-05-03 06:41:03'),
('469', '9', 'Kota Tasikmalaya', '2018-05-03 06:41:04', '2018-05-03 06:41:04'),
('47', '28', 'Kabupaten Barru', '2018-05-03 06:38:53', '2018-05-03 06:38:53'),
('470', '34', 'Kota Tebing Tinggi', '2018-05-03 06:41:04', '2018-05-03 06:41:04'),
('471', '8', 'Kabupaten Tebo', '2018-05-03 06:41:04', '2018-05-03 06:41:04'),
('472', '10', 'Kabupaten Tegal', '2018-05-03 06:41:04', '2018-05-03 06:41:04'),
('473', '10', 'Kota Tegal', '2018-05-03 06:41:05', '2018-05-03 06:41:05'),
('474', '25', 'Kabupaten Teluk Bintuni', '2018-05-03 06:41:05', '2018-05-03 06:41:05'),
('475', '25', 'Kabupaten Teluk Wondama', '2018-05-03 06:41:05', '2018-05-03 06:41:05'),
('476', '10', 'Kabupaten Temanggung', '2018-05-03 06:41:06', '2018-05-03 06:41:06'),
('477', '20', 'Kota Ternate', '2018-05-03 06:41:06', '2018-05-03 06:41:06'),
('478', '20', 'Kota Tidore Kepulauan', '2018-05-03 06:41:06', '2018-05-03 06:41:06'),
('479', '23', 'Kabupaten Timor Tengah Selatan', '2018-05-03 06:41:07', '2018-05-03 06:41:07'),
('48', '17', 'Kota Batam', '2018-05-03 06:38:53', '2018-05-03 06:38:53'),
('480', '23', 'Kabupaten Timor Tengah Utara', '2018-05-03 06:41:07', '2018-05-03 06:41:07'),
('481', '34', 'Kabupaten Toba Samosir', '2018-05-03 06:41:07', '2018-05-03 06:41:07'),
('482', '29', 'Kabupaten Tojo Una-Una', '2018-05-03 06:41:07', '2018-05-03 06:41:07'),
('483', '29', 'Kabupaten Toli-Toli', '2018-05-03 06:41:08', '2018-05-03 06:41:08'),
('484', '24', 'Kabupaten Tolikara', '2018-05-03 06:41:08', '2018-05-03 06:41:08'),
('485', '31', 'Kota Tomohon', '2018-05-03 06:41:08', '2018-05-03 06:41:08'),
('486', '28', 'Kabupaten Toraja Utara', '2018-05-03 06:41:09', '2018-05-03 06:41:09'),
('487', '11', 'Kabupaten Trenggalek', '2018-05-03 06:41:09', '2018-05-03 06:41:09'),
('488', '19', 'Kota Tual', '2018-05-03 06:41:09', '2018-05-03 06:41:09'),
('489', '11', 'Kabupaten Tuban', '2018-05-03 06:41:10', '2018-05-03 06:41:10'),
('49', '10', 'Kabupaten Batang', '2018-05-03 06:38:54', '2018-05-03 06:38:54'),
('490', '18', 'Kabupaten Tulang Bawang', '2018-05-03 06:41:10', '2018-05-03 06:41:10'),
('491', '18', 'Kabupaten Tulang Bawang Barat', '2018-05-03 06:41:10', '2018-05-03 06:41:10'),
('492', '11', 'Kabupaten Tulungagung', '2018-05-03 06:41:11', '2018-05-03 06:41:11'),
('493', '28', 'Kabupaten Wajo', '2018-05-03 06:41:11', '2018-05-03 06:41:11'),
('494', '30', 'Kabupaten Wakatobi', '2018-05-03 06:41:11', '2018-05-03 06:41:11'),
('495', '24', 'Kabupaten Waropen', '2018-05-03 06:41:12', '2018-05-03 06:41:12'),
('496', '18', 'Kabupaten Way Kanan', '2018-05-03 06:41:12', '2018-05-03 06:41:12'),
('497', '10', 'Kabupaten Wonogiri', '2018-05-03 06:41:12', '2018-05-03 06:41:12'),
('498', '10', 'Kabupaten Wonosobo', '2018-05-03 06:41:13', '2018-05-03 06:41:13'),
('499', '24', 'Kabupaten Yahukimo', '2018-05-03 06:41:13', '2018-05-03 06:41:13'),
('5', '21', 'Kabupaten Aceh Selatan', '2018-05-03 06:38:40', '2018-05-03 06:38:40'),
('50', '8', 'Kabupaten Batang Hari', '2018-05-03 06:38:54', '2018-05-03 06:38:54'),
('500', '24', 'Kabupaten Yalimo', '2018-05-03 06:41:13', '2018-05-03 06:41:13'),
('501', '5', 'Kota Yogyakarta', '2018-05-03 06:41:14', '2018-05-03 06:41:14'),
('51', '11', 'Kota Batu', '2018-05-03 06:38:54', '2018-05-03 06:38:54'),
('52', '34', 'Kabupaten Batu Bara', '2018-05-03 06:38:55', '2018-05-03 06:38:55'),
('53', '30', 'Kota Bau-Bau', '2018-05-03 06:38:55', '2018-05-03 06:38:55'),
('54', '9', 'Kabupaten Bekasi', '2018-05-03 06:38:55', '2018-05-03 06:38:55'),
('55', '9', 'Kota Bekasi', '2018-05-03 06:38:56', '2018-05-03 06:38:56'),
('56', '2', 'Kabupaten Belitung', '2018-05-03 06:38:56', '2018-05-03 06:38:56'),
('57', '2', 'Kabupaten Belitung Timur', '2018-05-03 06:38:56', '2018-05-03 06:38:56'),
('58', '23', 'Kabupaten Belu', '2018-05-03 06:38:56', '2018-05-03 06:38:56'),
('59', '21', 'Kabupaten Bener Meriah', '2018-05-03 06:38:57', '2018-05-03 06:38:57'),
('6', '21', 'Kabupaten Aceh Singkil', '2018-05-03 06:38:40', '2018-05-03 06:38:40'),
('60', '26', 'Kabupaten Bengkalis', '2018-05-03 06:38:57', '2018-05-03 06:38:57'),
('61', '12', 'Kabupaten Bengkayang', '2018-05-03 06:38:57', '2018-05-03 06:38:57'),
('62', '4', 'Kota Bengkulu', '2018-05-03 06:38:58', '2018-05-03 06:38:58'),
('63', '4', 'Kabupaten Bengkulu Selatan', '2018-05-03 06:38:58', '2018-05-03 06:38:58'),
('64', '4', 'Kabupaten Bengkulu Tengah', '2018-05-03 06:38:58', '2018-05-03 06:38:58'),
('65', '4', 'Kabupaten Bengkulu Utara', '2018-05-03 06:38:59', '2018-05-03 06:38:59'),
('66', '15', 'Kabupaten Berau', '2018-05-03 06:38:59', '2018-05-03 06:38:59'),
('67', '24', 'Kabupaten Biak Numfor', '2018-05-03 06:38:59', '2018-05-03 06:38:59'),
('68', '22', 'Kabupaten Bima', '2018-05-03 06:38:59', '2018-05-03 06:38:59'),
('69', '22', 'Kota Bima', '2018-05-03 06:39:00', '2018-05-03 06:39:00'),
('7', '21', 'Kabupaten Aceh Tamiang', '2018-05-03 06:38:40', '2018-05-03 06:38:40'),
('70', '34', 'Kota Binjai', '2018-05-03 06:39:00', '2018-05-03 06:39:00'),
('71', '17', 'Kabupaten Bintan', '2018-05-03 06:39:00', '2018-05-03 06:39:00'),
('72', '21', 'Kabupaten Bireuen', '2018-05-03 06:39:01', '2018-05-03 06:39:01'),
('73', '31', 'Kota Bitung', '2018-05-03 06:39:01', '2018-05-03 06:39:01'),
('74', '11', 'Kabupaten Blitar', '2018-05-03 06:39:01', '2018-05-03 06:39:01'),
('75', '11', 'Kota Blitar', '2018-05-03 06:39:02', '2018-05-03 06:39:02'),
('76', '10', 'Kabupaten Blora', '2018-05-03 06:39:02', '2018-05-03 06:39:02'),
('77', '7', 'Kabupaten Boalemo', '2018-05-03 06:39:02', '2018-05-03 06:39:02'),
('78', '9', 'Kabupaten Bogor', '2018-05-03 06:39:02', '2018-05-03 06:39:02'),
('79', '9', 'Kota Bogor', '2018-05-03 06:39:03', '2018-05-03 06:39:03'),
('8', '21', 'Kabupaten Aceh Tengah', '2018-05-03 06:38:41', '2018-05-03 06:38:41'),
('80', '11', 'Kabupaten Bojonegoro', '2018-05-03 06:39:03', '2018-05-03 06:39:03'),
('81', '31', 'Kabupaten Bolaang Mongondow (Bolmong)', '2018-05-03 06:39:03', '2018-05-03 06:39:03'),
('82', '31', 'Kabupaten Bolaang Mongondow Selatan', '2018-05-03 06:39:04', '2018-05-03 06:39:04'),
('83', '31', 'Kabupaten Bolaang Mongondow Timur', '2018-05-03 06:39:04', '2018-05-03 06:39:04'),
('84', '31', 'Kabupaten Bolaang Mongondow Utara', '2018-05-03 06:39:04', '2018-05-03 06:39:04'),
('85', '30', 'Kabupaten Bombana', '2018-05-03 06:39:04', '2018-05-03 06:39:04'),
('86', '11', 'Kabupaten Bondowoso', '2018-05-03 06:39:05', '2018-05-03 06:39:05'),
('87', '28', 'Kabupaten Bone', '2018-05-03 06:39:05', '2018-05-03 06:39:05'),
('88', '7', 'Kabupaten Bone Bolango', '2018-05-03 06:39:05', '2018-05-03 06:39:05'),
('89', '15', 'Kota Bontang', '2018-05-03 06:39:06', '2018-05-03 06:39:06'),
('9', '21', 'Kabupaten Aceh Tenggara', '2018-05-03 06:38:41', '2018-05-03 06:38:41'),
('90', '24', 'Kabupaten Boven Digoel', '2018-05-03 06:39:06', '2018-05-03 06:39:06'),
('91', '10', 'Kabupaten Boyolali', '2018-05-03 06:39:07', '2018-05-03 06:39:07'),
('92', '10', 'Kabupaten Brebes', '2018-05-03 06:39:07', '2018-05-03 06:39:07'),
('93', '32', 'Kota Bukittinggi', '2018-05-03 06:39:08', '2018-05-03 06:39:08'),
('94', '1', 'Kabupaten Buleleng', '2018-05-03 06:39:08', '2018-05-03 06:39:08'),
('95', '28', 'Kabupaten Bulukumba', '2018-05-03 06:39:08', '2018-05-03 06:39:08'),
('96', '16', 'Kabupaten Bulungan (Bulongan)', '2018-05-03 06:39:09', '2018-05-03 06:39:09'),
('97', '8', 'Kabupaten Bungo', '2018-05-03 06:39:09', '2018-05-03 06:39:09'),
('98', '29', 'Kabupaten Buol', '2018-05-03 06:39:09', '2018-05-03 06:39:09'),
('99', '19', 'Kabupaten Buru', '2018-05-03 06:39:09', '2018-05-03 06:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@getring.com', '$2y$10$/I4w04eB4kXZO5oirjJ/cu3IFzBtT1HFe7uluwK/JxKBVg7fadMnK', '2aqx5u0RJ2NYk2qIUi3qS0SWW7y9aiNVewXyrHJTjdjJ6BYSWHnVOMcmfzFA', '2018-05-03 06:38:27', '2018-05-03 09:22:18', 'admin'),
(2, 'customer', 'customer@gmail.com', '$2y$10$HAuy8dB0cs4n0mnc8eDyhueCtbPq2hyVk5JdTH1Z0q8lCzbiZa/PO', 'MOWIYDxXpdFspZPrKy2xQvMeyGHL0Sj8DG5fmdAm6LSf2bz7yXVgJvEswNd1', '2018-05-03 06:38:27', '2018-05-03 09:18:49', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_regency_id_foreign` (`regency_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_foreign` (`province_id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
