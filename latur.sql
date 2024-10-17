-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 16, 2024 at 12:10 PM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latur`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_uploaded_document`
--

DROP TABLE IF EXISTS `all_uploaded_document`;
CREATE TABLE IF NOT EXISTS `all_uploaded_document` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `survey_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_uploaded_document`
--

INSERT INTO `all_uploaded_document` (`id`, `survey_no`, `document_id`, `document`, `created_at`, `updated_at`) VALUES
(1, '01478', '1', 'd2961724156593.jpeg', '2024-08-16 10:18:59', '2024-08-20 12:44:55'),
(2, '01478', '2', 'd7031724158483.jpeg', '2024-08-16 10:18:59', '2024-08-20 12:54:43'),
(3, '83', '1', 'd8371724148729.pdf', '2024-08-20 10:12:09', '2024-08-20 10:12:09'),
(4, '83', '2', 'd5341724148729.png', '2024-08-20 10:12:09', '2024-08-20 10:12:09'),
(5, '2800', '1', 'd2961724156593.jpeg', '2024-08-20 12:23:13', '2024-08-20 12:23:13'),
(6, '84', '1', 'd5471728468229.jpeg', '2024-10-09 10:03:50', '2024-10-09 10:03:50'),
(7, '84', '2', 'd1721728468230.png', '2024-10-09 10:03:51', '2024-10-09 10:03:51'),
(8, '84', '1', 'd2091728468631.jpeg', '2024-10-09 10:10:31', '2024-10-09 10:10:31'),
(9, '84', '2', 'd7941728469397.jpeg', '2024-10-09 10:23:18', '2024-10-09 10:23:18'),
(10, '12345', '1', 'd6441728469817.png', '2024-10-09 10:30:17', '2024-10-09 10:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `bussiness_registrations`
--

DROP TABLE IF EXISTS `bussiness_registrations`;
CREATE TABLE IF NOT EXISTS `bussiness_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bussiness_reg_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bussiness_reg_type1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bussiness_types`
--

DROP TABLE IF EXISTS `bussiness_types`;
CREATE TABLE IF NOT EXISTS `bussiness_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bussiness_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bussiness_type1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renewal_charges` int(100) DEFAULT NULL,
  `late_fee` int(100) DEFAULT NULL,
  `reg_fee` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bussiness_types`
--

INSERT INTO `bussiness_types` (`id`, `bussiness_type`, `bussiness_type1`, `charges`, `renewal_charges`, `late_fee`, `reg_fee`, `created_at`, `updated_at`) VALUES
(1, 'test', 'tes', '700', 300, 200, 500, '2024-10-14 09:58:21', '2024-10-14 09:58:21'),
(2, 'Gold and Silver Jewelers', 'सोने आणि चांदीचे दागिने', '500', 1000, 100, 2500, '2024-10-14 11:07:25', '2024-10-14 11:07:25'),
(3, 'Cloth', 'कापड', '200', 1000, 100, 5000, '2024-10-14 11:08:13', '2024-10-14 11:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

DROP TABLE IF EXISTS `citys`;
CREATE TABLE IF NOT EXISTS `citys` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`id`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Latur', '2024-10-09 15:49:45', '2024-10-09 15:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `corporations`
--

DROP TABLE IF EXISTS `corporations`;
CREATE TABLE IF NOT EXISTS `corporations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

DROP TABLE IF EXISTS `document_type`;
CREATE TABLE IF NOT EXISTS `document_type` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `document_name`, `created_at`, `updated_at`) VALUES
(1, 'Aadhar', '2024-08-16 08:12:30', '2024-08-16 08:12:30'),
(2, 'Pan Card', '2024-08-16 08:13:25', '2024-08-16 08:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `existing_serves`
--

DROP TABLE IF EXISTS `existing_serves`;
CREATE TABLE IF NOT EXISTS `existing_serves` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `survey_app_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_owner1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_house_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulding1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prabhag_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prabhag_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wht_app_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wht_app_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_type_id1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_bussiness_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_bussiness_id1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_room1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_ac_room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_ac_room1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_licence_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_licence_id1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_employee_working` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_employee_working1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_of_bussiness` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_of_bussiness1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_unpaid` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid',
  `certificate_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `past_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0 - approve\r\n1 - reject',
  `generate_notice` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0 - not generated 1 - generate',
  `generate_notice_date` date DEFAULT NULL,
  `generate_notice02` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `notice2_date` date DEFAULT NULL,
  `certificate_year02` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_year02` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_unpaid02` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `generate_notice03` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `notice3_date` date DEFAULT NULL,
  `certificate_year03` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_year03` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_unpaid03` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `existing_serves`
--

INSERT INTO `existing_serves` (`id`, `user_id`, `survey_app_no`, `establishment`, `establishment1`, `photo`, `bussiness_owner`, `bussiness_owner1`, `contact_person`, `contact_person1`, `shop_house_no`, `shop_house_no1`, `bulding`, `bulding1`, `street_name`, `street_name1`, `locality`, `locality1`, `prabhag_name`, `prabhag_name1`, `zone_no`, `zone_no1`, `pincode`, `pincode1`, `email`, `email1`, `wht_app_no`, `wht_app_no1`, `gst_no`, `gst_no1`, `year`, `bussiness_type_id`, `bussiness_type_id1`, `type_of_bussiness_id`, `type_of_bussiness_id1`, `bussiness_name`, `bussiness_name1`, `ac_room`, `ac_room1`, `non_ac_room`, `non_ac_room1`, `type_of_licence_id`, `type_of_licence_id1`, `licence_name`, `licence_name1`, `licence_no`, `licence_no1`, `no_of_employee_working`, `no_of_employee_working1`, `area_of_bussiness`, `area_of_bussiness1`, `receipt_no`, `book_no`, `payment_mode`, `date`, `paid_unpaid`, `certificate_year`, `past_year`, `pay_amount`, `status`, `generate_notice`, `generate_notice_date`, `generate_notice02`, `notice2_date`, `certificate_year02`, `past_year02`, `paid_unpaid02`, `generate_notice03`, `notice3_date`, `certificate_year03`, `past_year03`, `paid_unpaid03`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 39, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'झोन - ए', 'झोन - ए', '3', 'झोन - ए', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'कापड', 'cloth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', NULL, NULL, '0', '1', '2024-10-14', '1', '2024-10-14', '1', '0', 'unpaid', '0', NULL, NULL, NULL, 'unpaid', 18.546688, 75.0026752, '2024-07-29 20:17:45', '2024-10-14 13:11:16'),
(2, 39, '34567', 'test latur', 'चाचणी लातूर', 'survey7521722322751.png', 'test', 'कसोटी', 'test', 'कसोटी', '32', '32', 'test', 'कसोटी', 'test', 'कसोटी', 'latur', 'लातूर', 'झोन-01', '44605', '3', 'झोन - ए', 'xuqefulub@mailinator.com', 'xuqefulub@mailinator.com', '7458961235', '7458961235', '10', '१०', NULL, NULL, '10-10-2024', NULL, NULL, '1', 'tes', 'hotel', 'हॉटेल', '10', '१०', '10', '१०', 'Not Available', NULL, NULL, NULL, NULL, NULL, '15', '15', '1000', '1000', 'ss104', '100', 'Cash', '2024-10-09', 'paid', '1', NULL, '3500', '1', '1', '2024-10-09', '0', NULL, NULL, NULL, 'unpaid', '0', NULL, NULL, NULL, 'unpaid', 21.1484672, 79.0822912, '2024-07-30 16:29:11', '2024-10-14 10:17:51'),
(3, 39, '11199', 'testing latur image', NULL, 'survey1361722667246.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'unpaid', '0', NULL, NULL, NULL, 'unpaid', 21.0056358, 77.7208813, '2024-08-03 16:10:46', '2024-08-03 16:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `grid`
--

DROP TABLE IF EXISTS `grid`;
CREATE TABLE IF NOT EXISTS `grid` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `grid_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `establishment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grid`
--

INSERT INTO `grid` (`id`, `user_id`, `zone_id`, `grid_no`, `establishment_name`, `photo`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 39, 3, '10234', 'test latur grid', 'survey4101722250121.jpeg', 18.546688, 75.0026752, '2024-07-29 20:18:41', '2024-07-29 20:18:41'),
(2, 39, 3, '10404', 'testing grid image', 'survey8431722667299.jpeg', 21.0056358, 77.7208813, '2024-08-03 16:11:39', '2024-08-03 16:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_charges`
--

DROP TABLE IF EXISTS `hotel_charges`;
CREATE TABLE IF NOT EXISTS `hotel_charges` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hotel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_ac_room` int(11) NOT NULL,
  `ac_room` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_charges`
--

INSERT INTO `hotel_charges` (`id`, `hotel_id`, `non_ac_room`, `ac_room`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', 1000, 2000, '2023-04-08 02:44:43', '2023-04-19 00:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_business_type`
--

DROP TABLE IF EXISTS `new_business_type`;
CREATE TABLE IF NOT EXISTS `new_business_type` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice2`
--

DROP TABLE IF EXISTS `notice2`;
CREATE TABLE IF NOT EXISTS `notice2` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice2`
--

INSERT INTO `notice2` (`id`, `notice2`, `created_at`, `updated_at`) VALUES
(2, '10', '2023-06-05 02:48:51', '2023-06-05 07:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `notice3`
--

DROP TABLE IF EXISTS `notice3`;
CREATE TABLE IF NOT EXISTS `notice3` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice3`
--

INSERT INTO `notice3` (`id`, `notice3`, `created_at`, `updated_at`) VALUES
(2, '15', '2023-06-05 02:48:54', '2023-06-05 07:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
CREATE TABLE IF NOT EXISTS `operator` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `name`, `mobile`, `zone_id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Sandeep Anjankar', '7020946308', '3', 'sandeep', '$2y$10$XT3M9qyFGTLtQswBByHRUO0fDrtO/tjdJLYQU1ZPwkbNLvchRMtQy', '2024-10-09 15:32:45', '2024-10-09 15:32:45'),
(3, 'test user', '7896585745', '3', 'root', '$2y$10$PgX.3PP56dHpTP6Tg/PRlu4N3urZDyUW6Arc1YLTrUAyI8M.BI.RG', '2024-10-09 16:29:17', '2024-10-09 16:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `serves`
--

DROP TABLE IF EXISTS `serves`;
CREATE TABLE IF NOT EXISTS `serves` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `survey_app_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_owner1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_house_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulding1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prabhag_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prabhag_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wht_app_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wht_app_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_type_id1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_bussiness_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_bussiness_id1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bussiness_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_room1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_ac_room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `non_ac_room1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_licence_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_licence_id1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_no1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_employee_working` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_employee_working1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_of_bussiness` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_of_bussiness1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `paid_unpaid` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid',
  `certificate_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `past_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0 - approve\r\n1 - reject\r\n',
  `generate_notice` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT ' 0 - not generated\r\n\r\n\r\n1 - generate',
  `generate_notice02` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `generate_notice_date` date DEFAULT NULL,
  `notice2_date` date DEFAULT NULL,
  `certificate_year02` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_year02` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_unpaid02` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `generate_notice03` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `notice3_date` date DEFAULT NULL,
  `certificate_year03` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_year03` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_unpaid03` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photo` (`photo`(250))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serves`
--

INSERT INTO `serves` (`id`, `user_id`, `survey_app_no`, `establishment`, `establishment1`, `photo`, `bussiness_owner`, `bussiness_owner1`, `contact_person`, `contact_person1`, `shop_house_no`, `shop_house_no1`, `bulding`, `bulding1`, `street_name`, `street_name1`, `locality`, `locality1`, `prabhag_name`, `prabhag_name1`, `zone_no`, `zone_no1`, `pincode`, `pincode1`, `email`, `email1`, `wht_app_no`, `wht_app_no1`, `gst_no`, `gst_no1`, `year`, `bussiness_type_id`, `bussiness_type_id1`, `type_of_bussiness_id`, `type_of_bussiness_id1`, `bussiness_name`, `bussiness_name1`, `ac_room`, `ac_room1`, `non_ac_room`, `non_ac_room1`, `type_of_licence_id`, `type_of_licence_id1`, `licence_name`, `licence_name1`, `licence_no`, `licence_no1`, `no_of_employee_working`, `no_of_employee_working1`, `area_of_bussiness`, `area_of_bussiness1`, `receipt_no`, `book_no`, `payment_mode`, `date`, `paid_unpaid`, `certificate_year`, `past_year`, `pay_amount`, `status`, `generate_notice`, `generate_notice02`, `generate_notice_date`, `notice2_date`, `certificate_year02`, `past_year02`, `paid_unpaid02`, `generate_notice03`, `notice3_date`, `certificate_year03`, `past_year03`, `paid_unpaid03`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(4, NULL, '99999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', 'झोन - ए', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'tes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'unpaid', '1', NULL, NULL, '0', '1', '1', '2024-10-14', '2024-10-14', '1', '0', 'unpaid', '0', NULL, NULL, NULL, 'unpaid', NULL, NULL, '2024-10-14 14:23:48', '2024-10-14 14:24:29'),
(3, NULL, '84', NULL, 'Sint omnis quaerat', '1728468630.jpg', 'Nulla velit vitae si', 'Laboris aspernatur e', 'Nihil obcaecati quae', 'Aliquip asperiores l', 'Cupiditate et aute s', 'Enim quia non et odi', 'Reprehenderit aut m', 'Ipsum in velit volu', 'Pascale Stanley', 'Kane Jarvis', 'Qui ullam exercitati', 'Quam eos sunt aut it', 'झोन - ए', 'झोन - ए', '3', 'झोन - ए', 'Dolor sint voluptate', 'Officiis non similiq', 'sovep@mailinator.com', 'pacowequto@mailinator.com', 'Et praesentium iusto', 'Doloremque numquam a', 'Vel consequatur sed', 'Ut consequat Rem pe', '2013', NULL, NULL, '2', 'सोने आणि चांदीचे दागिने', 'Celeste Melton', 'Rahim Hines', '10', '१०', '10', '१०', NULL, 'Voluptatibus molesti', NULL, NULL, NULL, NULL, 'Officiis odio maxime', 'Non voluptatem fugit', 'Enim nostrud eligend', 'Molestias do veniam', NULL, NULL, NULL, NULL, 'unpaid', '1', NULL, NULL, '0', '1', '1', '2024-10-09', '2024-10-14', '1', '0', 'unpaid', '0', NULL, NULL, NULL, 'unpaid', NULL, NULL, '2024-10-09 10:03:49', '2024-10-14 13:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
CREATE TABLE IF NOT EXISTS `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `survey_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_of_licences`
--

DROP TABLE IF EXISTS `type_of_licences`;
CREATE TABLE IF NOT EXISTS `type_of_licences` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_of_licence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `licence_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `role` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2' COMMENT '0- super admin\r\n1 - admin\r\n2 - emp',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(100) DEFAULT NULL,
  `adhar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` int(255) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `address`, `pincode`, `mobile`, `city_id`, `state_id`, `adhar`, `pan`, `email_verified_at`, `username`, `zone_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0', 'admin', 'admin@gmail.com', 'test', '444601', '7896541235', '10', NULL, '1681284972.png', '1681284972.png', NULL, 'admin@gmail.com', NULL, '$2y$10$1ZsKjLC0Se6Q8L2RMb5.deSvEQNnwirZWNyrhR.YeLN0YuqEP.ZV.', NULL, NULL, '2023-04-12 02:06:12'),
(101, '2', 'Sujata Thorat', NULL, NULL, NULL, '7038440262', NULL, NULL, NULL, NULL, NULL, 'sujata', 8, '$2y$10$EbzZ2FjKabdo.a/TCbXsa.aeKDzFlkNWzHTLWSXrq7zb9rrqYYUju', NULL, '2023-05-12 05:14:06', '2023-05-12 05:14:06'),
(40, '2', 'Avinash Bhise', '11111', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '1111', '+919422840076', '12', NULL, NULL, NULL, NULL, 'avinash', NULL, '$2y$10$t33g3u5HzQGJXeByt9frJOgTfiNwOTtALk/5fs4ou2eiu.KeiDCyi', NULL, '2023-04-08 06:53:44', '2023-05-07 20:37:18'),
(39, '2', 'Amol Anjansolkar', '1111', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '1111', '+919422840076', 'Select', NULL, NULL, NULL, NULL, 'amol', NULL, '$2y$10$JSCoZSfSreRP0e4SElXQv.t8fB0YDFmEnuPCUHQX5y53NbxRydbbC', NULL, '2023-04-08 06:53:44', '2024-10-09 09:21:37'),
(38, '2', 'Goutam Narwale', '1111', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '1111', '+919422840076', '12', NULL, NULL, NULL, NULL, 'goutam', NULL, '$2y$10$8d29Swgq9kYOzKolQWF0KezMC0vNxoR2It/ufQjkNC.kbde/TcE2i', NULL, '2023-04-08 06:53:43', '2023-05-07 20:37:52'),
(111, '2', 'VAIBHAV', 'info@simakit.com', 'TELKIKAR', '431605', '7709095034', '12', NULL, NULL, NULL, NULL, 'vaibhav', NULL, '$2y$10$WB3565xSbMzZtI/MHJDtiuf/NtJOPYhx6CELcqVMkT6wulGtKV6Ta', NULL, '2023-06-07 02:14:59', '2023-06-07 02:14:59'),
(112, '2', 'MUSTAFA SHAIKH', 'info@simakit.com', 'NANDED', '431605', '9168728476', '12', NULL, NULL, NULL, NULL, 'mustafa', NULL, '$2y$10$vBlwiwRbjC8OxqXDF9j7R.nUvhdfVqbm/0T59/zUdHkxlOOFVcJg.', NULL, '2023-06-07 02:16:51', '2023-06-07 02:16:51'),
(110, '2', 'PAWAN DUDALE', 'info@simakit.com', 'NANDED', '431605', '7498825689', '12', NULL, NULL, NULL, NULL, 'pawan', NULL, '$2y$10$mDIJAvqwecjMvj/fHZputOFPACpOL.ASiWkbCgfcVeBTqtcNqedpG', NULL, '2023-06-07 01:46:34', '2023-06-07 01:46:34'),
(109, '2', 'SUJIT SONAWANE', 'info@flairtek.com', 'NANDED', '431605', '7385328625', '12', NULL, NULL, NULL, NULL, 'sujit', NULL, '$2y$10$FGnFTTpIDxDytQAYm76cNOXCAWNNqgMzTAGxS5k5hIcKFVgO0N0ye', NULL, '2023-06-07 01:44:59', '2023-06-07 01:44:59'),
(108, '2', 'Ganesh Duyyewar', 'info@flairtek.com', 'Nanded', '431605', '7499826986', '12', NULL, NULL, NULL, NULL, 'ganesh', NULL, '$2y$10$bUkSMpZ2O3HF1NIPGR2NSOin0X.yV/u/MrU/2PHu8e5Kt.yEbJpGu', NULL, '2023-05-29 05:43:03', '2023-05-29 05:43:03'),
(107, '2', 'Ramdas Jadhav', 'info@flairtek.com', 'Nanded', '431605', '9881868443', '12', NULL, NULL, NULL, NULL, 'ramdas', NULL, '$2y$10$DYBVR7M5s8KT43K2g4mB9OYbrPpCyGomp55KD1qRfKVl00uwG/KqS', NULL, '2023-05-29 00:43:46', '2023-05-29 00:43:46'),
(106, '2', 'Ganesh Duyyewar', NULL, NULL, NULL, '7499826986', NULL, NULL, NULL, NULL, NULL, 'ganesh', 8, '$2y$10$JFagLqf3NaP.k5plR8cknOXZhbTRmb1shcpw2ji7nCYMLzlsjKEGq', NULL, '2023-05-12 05:22:39', '2023-05-12 05:22:39'),
(105, '2', 'Ajay Gaikawad', NULL, NULL, NULL, '9028171820', NULL, NULL, NULL, NULL, NULL, 'ajay', 8, '$2y$10$rnx3kvLB8eAZ42W/xnu1r.eTbiuISGuQp0HfWD6o2BEzNtt0.9iOG', NULL, '2023-05-12 05:19:30', '2023-05-12 05:19:30'),
(104, '2', 'Suraj Gaikawad', NULL, NULL, NULL, '7072739601', NULL, NULL, NULL, NULL, NULL, 'suraj', 8, '$2y$10$Wti0eqGr/wLbrajVTXCnGuHXudTpBb1cUz0fTZOSTU0Q8KjEd3Jwi', NULL, '2023-05-12 05:18:22', '2023-05-12 05:18:22'),
(102, '2', 'Jaisheel Khandare', NULL, NULL, NULL, '9764010286', NULL, NULL, NULL, NULL, NULL, 'jaisheel', 8, '$2y$10$x83wf0JbhJGTm1cKQ2fOwug3epy9vh3xgPM8th8DqgRcNi/iSB5de', NULL, '2023-05-12 05:15:45', '2023-05-12 05:15:45'),
(103, '2', 'SachinWaghmare', NULL, NULL, NULL, '9146452213', NULL, NULL, NULL, NULL, NULL, 'sachin', 8, '$2y$10$Z3QQWPnK8HAUeGwh7PKhIOWzFFSu1BigVCVVYLufujXM7SRlNggvO', NULL, '2023-05-12 05:17:08', '2023-05-12 05:17:08'),
(100, '2', 'Satish Lokade', NULL, NULL, NULL, '9021973167', NULL, NULL, NULL, NULL, NULL, 'satish', 8, '$2y$10$f5tVClS4zhsdJx.ZLwjOrey9lwfhbD3r4vinJ9SFXu/xLEKhmJ5wC', NULL, '2023-05-12 05:12:26', '2023-05-12 05:12:26'),
(85, '2', 'AFROZ KHAN', 'afroz', NULL, NULL, '9881516280', NULL, NULL, NULL, NULL, NULL, 'afroz', 7, '$2y$10$Gcn7wppMMoC7q8gk7.kFE.piyzXhkVdcKln0X9MeFDLTAjK3iqyYW', NULL, '2023-05-12 03:51:37', '2023-05-12 03:53:02'),
(89, '2', 'Mohammad Faeem', NULL, NULL, NULL, '9552940178', NULL, NULL, NULL, NULL, NULL, 'faeem', 7, '$2y$10$SNClkQ50NijGQoaHIvCW3eh.IItNDOFx.N6f0H7TCicJnZe/uz6ES', NULL, '2023-05-12 04:44:02', '2023-05-12 04:44:02'),
(90, '2', 'Momin Nayeem', NULL, NULL, NULL, '9175890723', NULL, NULL, NULL, NULL, NULL, 'nayeem', 7, '$2y$10$F8j/ofbNUQSHi6Vh9naSieLxfpdOwEFKQMyp8zZZ2z8wmeUiwfF0.', NULL, '2023-05-12 04:46:22', '2023-05-12 04:46:22'),
(91, '2', 'Salman Ahmad', NULL, NULL, NULL, '7972515576', NULL, NULL, NULL, NULL, NULL, 'salman', 7, '$2y$10$lnn5KcWJSGUqNyLI6dp7dedubaH02i.ralXnKyXKrBd8dhHmhc47i', NULL, '2023-05-12 04:47:48', '2023-05-12 04:47:48'),
(99, '2', 'Sheikh Rahimsahab', NULL, NULL, NULL, '9373360613', NULL, NULL, NULL, NULL, NULL, 'rahim', 8, '$2y$10$gPW3WKwts9ZX2qI0teeh2e.TuUKfkkJ0d/H1PrrtAViKaAupc23uy', NULL, '2023-05-12 05:10:39', '2023-05-12 05:10:39'),
(98, '2', 'Amol Kurhe', NULL, NULL, NULL, '8928555358', NULL, NULL, NULL, NULL, NULL, 'kurhe', 8, '$2y$10$9wxHnGdpludmeks4rbUAfOzapq0ERDpfdSZqJDbSK6vMWczW.3xM.', NULL, '2023-05-12 05:05:24', '2023-05-12 05:05:24'),
(97, '2', 'Arvind Gaikawad', NULL, NULL, NULL, '9767463690', NULL, NULL, NULL, NULL, NULL, 'arvind', 8, '$2y$10$5P7wY3ls64sUzPKVrKRcP.NIihycWai2Qv2f5gGSsBSnuK0RUunpe', NULL, '2023-05-12 05:03:44', '2023-05-12 05:03:44'),
(92, '2', 'Kureshi Talha', NULL, NULL, NULL, '9096194872', NULL, NULL, NULL, NULL, NULL, 'talha', 7, '$2y$10$B/Vj1.9x6zlhE3fUYtinqOf2pR8bYtk0MX6ypUribRNuIqO4j/6dy', NULL, '2023-05-12 04:49:14', '2023-05-12 04:49:14'),
(93, '2', 'Abdul Wase', NULL, NULL, NULL, '8421852046', NULL, NULL, NULL, NULL, NULL, 'abdul', 7, '$2y$10$IstsHe21jhac6liNQIEPjOucp3q.MpK9kGCysdze0JBmeaFdsJyL6', NULL, '2023-05-12 04:50:47', '2023-05-12 04:50:47'),
(94, '2', 'Sheikh', NULL, NULL, NULL, 'Wahid', NULL, NULL, NULL, NULL, NULL, 'wahid', 7, '$2y$10$THQEL6RwKse98EbOSGHEO.7RsusaVfuCFFRnsvAO9A.HfkI/d/.cK', NULL, '2023-05-12 04:51:45', '2023-05-12 04:51:45'),
(95, '2', 'Mohammad Azimuddin', NULL, NULL, NULL, '7517764247', NULL, NULL, NULL, NULL, NULL, 'azim', 7, '$2y$10$N2Bx7H3M6wzt3kRBZSfs1e64XdYsIIk5MyqmOXPq1kuvItqxWwzl6', NULL, '2023-05-12 04:52:53', '2023-05-12 04:52:53'),
(96, '2', 'Nikhil Zapalwad', NULL, NULL, NULL, '9881531582', NULL, NULL, NULL, NULL, NULL, 'nikhil', 7, '$2y$10$SY3KWtlUhAGsDlLwxeDg3ua0UqLcfrqdX4bE0JVnlXqHwA4khCtQi', NULL, '2023-05-12 04:54:08', '2023-05-12 04:54:08'),
(88, '2', 'Amer Khan', NULL, NULL, NULL, '8329930400', NULL, NULL, NULL, NULL, NULL, 'amer', 7, '$2y$10$Y8mH3q5I.PGca920Pd1pYupfwkTmZG.spf90UZeOiAXCraZCY4MdK', NULL, '2023-05-12 04:42:13', '2023-05-12 04:42:13'),
(54, '2', 'Akshay Kamble', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'akshay', NULL, '$2y$10$lcFsw66ZTF5qBgOXR1E6BeMLAtcT.qxf.MpOca1kNZf8s5XyfWC6C', NULL, '2023-05-07 20:45:59', '2023-05-07 20:45:59'),
(55, '2', 'Amol Anjansolkar', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'amol', NULL, '$2y$10$glp4FlCQI.JmGyocfuefruT2IcV7VvR0nrx1/I75bE.1tsuxXxCkm', NULL, '2023-05-07 20:47:31', '2023-05-07 20:47:31'),
(56, '2', 'Balaji Sobhaji', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'balaji', NULL, '$2y$10$xJ/0HnEl9VaEKPSSU25F.eTk4.tCtBIvS3BCXDl/TFLfmA5VfYLCC', NULL, '2023-05-07 20:48:43', '2023-05-07 20:48:43'),
(57, '2', 'Goutam Narvade', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'goutam', NULL, '$2y$10$x2RfUjKSC3mykwZXfKnPyuGZQY1enB9cn/ZUFOprERkqNvWSEzESC', NULL, '2023-05-07 20:49:42', '2023-05-07 20:49:42'),
(58, '2', 'Keshav Pandav', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'keshav', NULL, '$2y$10$T7acuqnSFxqoQKhp6Me0bul1.j64eYoLNdXAMOBd/Syi5Qj.W1Pvy', NULL, '2023-05-07 20:50:36', '2023-05-07 20:50:36'),
(59, '2', 'Khadir Shaikh', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'khadir', NULL, '$2y$10$ZltcYIjQYVydyiMFxcg9Du6zAGAYTYlZeMPyANDiMd.9oN0z9UXsu', NULL, '2023-05-07 20:51:38', '2023-05-07 20:51:38'),
(60, '2', 'Narendra Bhukatre', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'naren', NULL, '$2y$10$JbIsNYKCEy8GbspbG7jK2OBtReAcRfvdOMPhvqYDd4n0RHMOtQjBe', NULL, '2023-05-07 20:52:45', '2023-05-07 20:52:45'),
(61, '2', 'Om Gour', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'omg', NULL, '$2y$10$RH4hQdGD4O1x9ISKpwPpXOdzKgOkPt.khARu6BfCKIUsJyCCiV8vO', NULL, '2023-05-07 20:53:36', '2023-05-07 20:53:36'),
(62, '2', 'Prasad Khedkar', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'prasad', NULL, '$2y$10$NOC7TJAhRflYfiYkAvYbluzusNsVAGEr57kzuNqSYFQ9C0wn29WuK', NULL, '2023-05-07 20:54:52', '2023-05-07 20:54:52'),
(63, '2', 'Rohit Sonkambale', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'rohit', NULL, '$2y$10$N9wiV5h.0YTKAxuSH7v0Tes6TzW3oM5iWOCYG50aELmOcKCY9UZzq', NULL, '2023-05-07 20:55:39', '2023-05-07 20:55:39'),
(64, '2', 'Sandesh Jamraj', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'sandesh', NULL, '$2y$10$UZoLY94T2h.BHNO5XSdKKOvdVLJdaI/rG9t1aunOvTFsnFj4Z8SmS', NULL, '2023-05-07 20:56:34', '2023-05-07 20:56:34'),
(65, '2', 'Santosh Pote', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'santosh', NULL, '$2y$10$Bizx1ewHSU9BKQxyijWTmegwyO4oJVXRp53pmRdg7XGGLNDO1zt2W', NULL, '2023-05-07 20:57:26', '2023-05-07 20:57:26'),
(66, '2', 'Shivkanya Panchal', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'shivkumar', NULL, '$2y$10$/PgO2VMBo.VWW629P/d7G.xVqPINGzkCPnIOx7JzqbyRRQb/QWEae', NULL, '2023-05-07 20:58:12', '2023-05-07 20:58:12'),
(67, '2', 'Shradha Adbalkar', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'shrad', NULL, '$2y$10$jXMaxqMKIm07e7af9G3hrOMqh2FiFcDnGJA7tf9NRUOtTVq1ZxeI6', NULL, '2023-05-07 20:59:18', '2023-05-07 20:59:18'),
(68, '2', 'Sunil Bagal', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'sunil', NULL, '$2y$10$JCEEmuyj1GeSWVk3aCe6P.Aw4ppnZDRIE708g69xGlwcwGQlFM2lK', NULL, '2023-05-07 21:00:34', '2023-05-07 21:00:34'),
(69, '2', 'Vishvambhar Khandole', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'vish', NULL, '$2y$10$VBRZEMrgEGLEJSjR845MJO3JrfqXlK33pqqS6uqj6mg7UTGVwKb9O', NULL, '2023-05-07 21:01:17', '2023-05-07 21:01:17'),
(70, '2', 'Abhishek Nilaver', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'abhi', NULL, '$2y$10$2JKP.eABCldCnoTFaWvKzeZkEf9OcIEPJwIDl89OCUTxg0xlKnAZK', NULL, '2023-05-07 21:02:01', '2023-05-07 21:02:01'),
(71, '2', 'Asha Mudholkar', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'asha', NULL, '$2y$10$g3wOOEAyYq.8L4ucaSJMceW0AGRhCxto7T0TX9yKhfNDWObwQzrq.', NULL, '2023-05-07 21:02:50', '2023-05-07 21:02:50'),
(72, '2', 'Avinash Bhise', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'avin', NULL, '$2y$10$QILmhb0z1emkhHMDPxSdU.rERXo3YZcKCv2AUBdpGMjCbX/GbKzH.', NULL, '2023-05-07 21:03:30', '2023-05-07 21:03:30'),
(73, '2', 'Gajanan waghmare', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'gajan', NULL, '$2y$10$98SwgvC8ugwZET5UBOa.h.JuyTrW1ZmWvnx6YGihn3U2iaIlCrTzK', NULL, '2023-05-07 21:04:23', '2023-05-07 21:04:23'),
(74, '2', 'Goutam Chintare', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'gotm', NULL, '$2y$10$PiKwJme5S2Rw.FAqThJsUOJhqph3SQI10sX4blV4aciMqNzW8EofG', NULL, '2023-05-07 21:05:03', '2023-05-07 21:05:03'),
(75, '2', 'Govind sonkamble', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'govind', NULL, '$2y$10$tSyss/xiatO4IjX//BHyyuH2tYxkkLTKT1orEXfjs/OZDwHJyt7ZC', NULL, '2023-05-07 21:05:43', '2023-05-07 21:05:43'),
(76, '2', 'Kiran Jondhale', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'kiran', NULL, '$2y$10$fPTicm5hLq0RhUupQiYge.cUNzrPhjmmhj5TyATezv7lcQAT7tFsO', NULL, '2023-05-07 21:06:26', '2023-05-07 21:06:26'),
(77, '2', 'Murali Kamble', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'murali', NULL, '$2y$10$QfjLvMVIaQ9tBPz2NuHm3.pkRa97bYmYhwIBffbYMoC3iKu1lqcNy', NULL, '2023-05-07 21:07:05', '2023-05-07 21:07:05'),
(78, '2', 'Pravin Kambale', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'pravin', NULL, '$2y$10$0.vMJ3bxJbkRkoz2zMyhSO2Av0PUaIAXls/MImlAuTfIV4VvMI4fa', NULL, '2023-05-07 21:07:41', '2023-05-07 21:07:41'),
(79, '2', 'Rajeshvari Rankhambe', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'rajesh', NULL, '$2y$10$0gsFjUaWRCmDk56/jkQVmOWU45.9ettzHXA/ggpxOFpNzLaFfPMDu', NULL, '2023-05-07 21:08:17', '2023-05-07 21:08:17'),
(80, '2', 'Shaikh Nijamsahab', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'shaikh', NULL, '$2y$10$jBK/e2CW4rFgQJAsSKdrZOvOYVShTy1lBsrXbPRWRKsliwRF6Kewq', NULL, '2023-05-07 21:09:00', '2023-05-07 21:09:00'),
(81, '2', 'Shatish Sonkamle', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'shatish', NULL, '$2y$10$FRLic8ZPTg/DZck3whbyiegqsioipncC1EGVCHPr0eFAOO60gfrZa', NULL, '2023-05-07 21:09:43', '2023-05-07 21:09:43'),
(82, '2', 'Wandana Watode', 'info@simakit.com', 'SIMAK IT PVT LTD\r\n3rd Floor Datta palace  Gandhi chowk', '444601', '+919422840076', '12', NULL, NULL, NULL, NULL, 'wandan', NULL, '$2y$10$YtRQ6vhehh0B3CBpUCXCt.wIkv3e6eEup8SncN5QnGsHgk/1zrmsa', NULL, '2023-05-07 21:10:18', '2023-05-07 21:10:18'),
(83, '1', 'test', 'test@gmail.com', NULL, NULL, '8695745689', NULL, NULL, NULL, NULL, NULL, 'test@gmail.com', 4, '$2y$10$Y4HD9wBeD668neK/opPzWeMgCRr32fnk88NebBrqBpl8uhmioc2g2', NULL, '2023-05-09 07:29:40', '2023-05-09 07:29:40'),
(84, '2', 'Bhawna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bhawna@gmail.com', NULL, '$2y$10$srGOOFjanzfCmI3ynjnq5u/yUhMKH8dij.WoYgywRmboZRyja7lMO', NULL, NULL, NULL),
(113, '2', 'SANDESH JAMRAJ', 'info@simakit.com', 'NANDED', '431605', '09422840076', '12', NULL, NULL, NULL, NULL, 'sandesh', NULL, '$2y$10$edTpziYEv/WOCgj4199SPeNdr8IhFb3i3zRnGBUqyJQaZWE7V20ju', NULL, '2023-06-16 08:50:17', '2023-06-16 08:50:17'),
(115, '2', 'Sandeep Anjankar', 'simakitpl@gmail.com', 'Latur', '413512', '7020946308', 'Select', NULL, NULL, NULL, NULL, 'sandeep', NULL, '$2y$10$XNwwCEbo56zOfzv40T5oauLVjjDKMqWs9UTQQsjjLR1aB3Ok.J5h.', NULL, '2024-10-09 15:37:08', '2024-10-09 15:37:08'),
(121, '2', 'Desiree Moreno', 'wavojuvux@mailinator.com', 'Totam saepe temporib', 'Hic perspiciatis ut', 'Eu eu impedit unde', '1', NULL, NULL, NULL, NULL, 'cydosab', NULL, '$2y$10$eOQSIRN7Pnt1WU2WsK01V.HmnkJvaRe5QyV6RyZuyGlWTuRk17L1.', NULL, '2024-10-09 09:15:16', '2024-10-09 09:15:16'),
(122, '2', 'Jolene Bolton', 'cogo@mailinator.com', 'Sit optio autem ips', 'Nulla reprehenderit', 'Sed ducimus praesen', '1', NULL, NULL, NULL, NULL, 'suguxubupo', NULL, '$2y$10$CdXWNm34KF/KU/5JlmDaRudIp4/Sw7UzTyQh6T4fQzjZu/NpQvA/6', NULL, '2024-10-09 09:22:04', '2024-10-09 09:22:04'),
(123, '2', 'Justine Sweeney', 'wedubo@mailinator.com', 'Quia dolor labore fu', 'Commodi in non atque', 'Eos natus reprehend', '1', NULL, NULL, NULL, NULL, 'hepevizyri', NULL, '$2y$10$jycN1VP6nMn0Jd44N/l3L.3XAD/To6Gyk.1SKBCGhV1esAVeDigNC', NULL, '2024-10-09 09:22:15', '2024-10-09 09:22:15'),
(124, '2', 'April Paul', 'xyvezu@mailinator.com', 'Beatae excepturi com', 'Est aute quis est o', 'Reprehenderit veniam', '1', NULL, NULL, NULL, NULL, 'cycobuwoqu', NULL, '$2y$10$8qUBO4fauJIRyTuOuTDG5.xyBfaqqrW9wDd3JhBR46/c/8czTxhAS', NULL, '2024-10-09 09:25:50', '2024-10-09 09:25:50'),
(125, '2', 'Jamal Rocha', 'wonusi@mailinator.com', 'Autem pariatur Ea q', 'Ipsam voluptatem un', 'Non quidem expedita', '1', NULL, NULL, NULL, NULL, 'gojas', NULL, '$2y$10$3K4XxBpxSujOf/BKiV4vdO9i7OHH9SteYzFHM90sUbSLXgRPI8KIq', NULL, '2024-10-09 09:26:30', '2024-10-09 09:26:30'),
(126, '2', 'Keiko Daniel', 'jaxyjanybu@mailinator.com', 'Do veritatis est sit', 'Aliqua Vero porro q', 'Iure iste nihil cons', 'Select', NULL, NULL, NULL, NULL, 'kiwetibata', NULL, '$2y$10$UVSMTy85l0Ac1MdT7Bvy7.CqB0sYBkBqUGrcbucFvQ7rc4SH1KsRa', NULL, '2024-10-09 09:26:59', '2024-10-09 09:26:59'),
(127, '2', 'Tiger Carlson', 'wizog@mailinator.com', 'Laboris est maiores', 'Ipsum ullam sed mol', 'Amet quia deleniti', 'Select', NULL, NULL, NULL, NULL, 'dybitag', NULL, '$2y$10$p4lD.tR0yljMvLYoBNTNVeH/IEB1H8my7cP.DUW3m7TuLsKdvzpiy', NULL, '2024-10-09 09:27:35', '2024-10-09 09:29:38'),
(128, '2', 'Uriah Lindsay', 'kysyno@mailinator.com', 'Sunt fugiat est re', 'Aspernatur in quia e', 'Proident cum minim', '1', NULL, NULL, NULL, NULL, 'nutite', NULL, '$2y$10$Q26LVWpLWuCs.TWGTXTB9Oob7dPhC2QjCpB4GuLjNPW.oo0uMXP2u', NULL, '2024-10-09 09:30:24', '2024-10-09 09:30:24'),
(129, '2', 'Hu Daniel', 'kana@mailinator.com', 'Dolorem cillum non s', 'Doloribus voluptatem', 'Atque veritatis accu', '1', NULL, NULL, NULL, NULL, 'gywiradec', NULL, '$2y$10$ELEE9Zw1sdS7.fTuUTwEluJGUM60PiZW/GkPdR/nSQ9bYSO6IFQw.', NULL, '2024-10-09 09:32:11', '2024-10-09 09:32:11'),
(130, '2', 'Stuart Ingram', 'cywi@mailinator.com', 'Voluptas quis est do', 'Totam quasi neque te', 'Quos quia sint maio', 'Select', NULL, NULL, NULL, NULL, 'mikin', NULL, '$2y$10$8LwcICNDr.0SChcpqqfhUulX44Kfx3hfCwmt4Nj1o0i9DQE9/qPqi', NULL, '2024-10-09 09:33:28', '2024-10-09 09:33:28'),
(131, '2', 'Russell Fields', 'pabeqekyr@mailinator.com', 'Rerum sunt reprehend', 'Amet rerum magna ma', 'Tempore possimus e', '1', NULL, '1728467368.jpeg', NULL, NULL, 'buvago', NULL, '$2y$10$2Wk5LIO.1I2Xc17G6C1ySuz9cQ9E.0raRz.Ux1liWg4adhV1zOD7O', NULL, '2024-10-09 09:49:28', '2024-10-09 09:49:28'),
(132, '2', 'Holmes Francis', 'qeje@mailinator.com', 'Cillum facere laboru', 'Et odio maxime aut e', 'Exercitation consequ', 'Select', NULL, NULL, '1728467433.jpg', NULL, 'root11', NULL, '$2y$10$AnR1JJBstD9f/joC3JPyjOnMXfPZR8j8DYytDWprJhjPEi61lg3Ja', NULL, '2024-10-09 09:50:33', '2024-10-10 14:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`id`, `zone`, `zone1`, `zone_name`, `created_at`, `updated_at`) VALUES
(3, 'Zone-A', 'झोन - ए', 'Zone-A', '2023-04-19 00:02:30', '2024-10-09 10:51:20'),
(4, 'Zone-B', 'झोन - बी', 'Zone-B', '2023-04-19 00:02:41', '2024-10-09 10:51:14'),
(5, 'Zone-C', 'झोन - सी', 'Zone-C', '2023-04-19 00:02:49', '2024-10-09 10:51:30'),
(6, 'Zone-D', 'झोन - डी', 'Zone-D', '2023-04-19 00:02:55', '2024-10-09 10:51:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
