-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2017 at 08:11 AM
-- Server version: 5.5.58-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koridbik_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Electronics', 'fa-desktop', 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', '2017-11-26 07:44:34', '2017-11-26 07:44:34'),
(6, 'Home & Garden', 'fa-home', 'Buy and sell new and used home appliances including furniture, kitchen items, gardening products and other items for your garden.', '2017-11-26 07:45:41', '2017-11-26 07:45:41'),
(7, 'Cars & Vehicles', 'fa-car', 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', '2017-11-26 07:46:28', '2017-11-26 07:46:28'),
(8, 'Property', 'fa-home', 'View listings for property in Bangladesh. Find the cheapest rates for apartments, commercial and residential properties, as well as for land and plots.', '2017-11-26 07:47:27', '2017-11-26 07:47:27'),
(9, 'Clothing, Health & Beauty', 'fa-clock-o', 'Buy and sell clothing, garments, shoes and other personal items including handbags, perfumes, children\'s toys and hand made items in Bangladesh.', '2017-11-26 07:48:49', '2017-11-26 07:48:49'),
(10, 'Pets & Animals', 'fa-paw', 'Search from the widest variety of pets in Bangladesh . Select from dogs, puppies, cats, kittens, birds and other domesticated animals.', '2017-11-26 07:50:44', '2017-11-26 07:50:44'),
(11, 'Hobby, Sport & Kids', 'fa-futbol-o', 'Buy and sell used musical instruments, sports gear and accessories, art and collectibles and items for kids here.', '2017-11-26 07:51:54', '2017-11-26 07:51:54'),
(12, 'Education', 'fa-graduation-cap', 'Buy and sell books and magazines, find tuition, classes and other educational resources in Bangladesh.', '2017-11-26 07:52:55', '2017-11-26 07:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'name', 'text', 'Category Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(56, 7, 'icon', 'text', 'Font Awesome Icon', 0, 1, 1, 1, 1, 1, NULL, 3),
(57, 7, 'description', 'text_area', 'Description of this category', 1, 1, 1, 1, 1, 1, NULL, 4),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(60, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(61, 8, 'name', 'text', 'Sub Category Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(62, 8, 'category_id', 'select_dropdown', 'Select Category', 1, 1, 1, 1, 1, 1, NULL, 3),
(64, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(65, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(66, 7, 'category_hasmany_sub_category_relationship', 'relationship', 'categories', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\SubCategory\",\"table\":\"sub_categories\",\"type\":\"hasMany\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 7),
(67, 8, 'sub_category_belongsto_category_relationship', 'relationship', 'category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 7),
(68, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(69, 9, 'sub_category_id', 'select_dropdown', 'Extra Fields For', 1, 1, 1, 1, 1, 1, NULL, 2),
(73, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, NULL, 6),
(74, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(75, 9, 'extra_field_belongsto_sub_category_relationship', 'relationship', 'sub_category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SubCategory\",\"table\":\"sub_categories\",\"type\":\"belongsTo\",\"column\":\"sub_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 8),
(76, 8, 'sub_category_hasmany_extra_field_relationship', 'relationship', 'extra_fields', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\ExtraField\",\"table\":\"extra_fields\",\"type\":\"hasOne\",\"column\":\"sub_category_id\",\"key\":\"id\",\"label\":\"fields\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 8),
(77, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(78, 10, 'name', 'text', 'Divition Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(79, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(80, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(81, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(83, 11, 'divition_id', 'select_dropdown', 'Select Divition', 0, 1, 1, 1, 1, 1, NULL, 3),
(84, 11, 'is_popular', 'checkbox', 'Popular Location', 0, 1, 1, 1, 1, 1, NULL, 4),
(85, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(86, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(87, 10, 'divition_hasmany_place_relationship', 'relationship', 'places', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Place\",\"table\":\"places\",\"type\":\"hasMany\",\"column\":\"divition_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 5),
(88, 11, 'place_belongsto_divition_relationship', 'relationship', 'divition', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Divition\",\"table\":\"divitions\",\"type\":\"belongsTo\",\"column\":\"divition_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 7),
(89, 12, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(90, 12, 'user_id', 'select_dropdown', 'User', 0, 1, 1, 1, 1, 1, NULL, 2),
(91, 12, 'sub_category_id', 'select_dropdown', 'Select Sub Category', 0, 1, 1, 1, 1, 1, NULL, 3),
(92, 12, 'place_id', 'select_dropdown', 'Select place', 0, 1, 1, 1, 1, 1, NULL, 4),
(93, 12, 'title', 'text', 'Ad title', 1, 1, 1, 1, 1, 1, NULL, 5),
(94, 12, 'description', 'text_area', 'Ad description', 1, 1, 1, 1, 1, 1, NULL, 6),
(95, 12, 'photo1', 'image', 'Photo1', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 7),
(96, 12, 'photo2', 'image', 'Photo2', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 8),
(97, 12, 'photo3', 'image', 'Photo3', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 9),
(98, 12, 'photo4', 'image', 'Photo4', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 10),
(99, 12, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6}}', 11),
(100, 12, 'negatiable', 'checkbox', 'Negatiable', 0, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"display\":{\"width\":3}}', 12),
(102, 12, 'contact', 'text', 'Contact', 1, 1, 1, 1, 1, 1, NULL, 14),
(103, 12, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 0, 1, '{\"options\":{\"0\":\"pending\",\"1\":\"published\"},\"display\":{\"width\":3}}', 15),
(104, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 16),
(105, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 17),
(106, 12, 'post_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 18),
(107, 12, 'post_belongsto_sub_category_relationship', 'relationship', 'sub_category', 0, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\SubCategory\",\"table\":\"sub_categories\",\"type\":\"belongsTo\",\"column\":\"sub_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 19),
(108, 12, 'post_belongsto_place_relationship', 'relationship', 'place', 0, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Place\",\"table\":\"places\",\"type\":\"belongsTo\",\"column\":\"place_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 20),
(109, 3, 'user_hasmany_post_relationship', 'relationship', 'posts', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Post\",\"table\":\"posts\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 11),
(110, 11, 'place_hasmany_post_relationship', 'relationship', 'posts', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Post\",\"table\":\"posts\",\"type\":\"hasMany\",\"column\":\"place_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 8),
(111, 8, 'sub_category_hasmany_post_relationship', 'relationship', 'posts', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Post\",\"table\":\"posts\",\"type\":\"hasMany\",\"column\":\"sub_category_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 9),
(112, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(113, 13, 'user_id', 'select_dropdown', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(114, 13, 'post_id', 'select_dropdown', 'Post Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(115, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(116, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(117, 13, 'favorite_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 6),
(118, 13, 'favorite_belongsto_post_relationship', 'relationship', 'post', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Post\",\"table\":\"posts\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 7),
(119, 3, 'user_hasmany_favorite_relationship', 'relationship', 'favorites', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Favorite\",\"table\":\"favorites\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 12),
(120, 12, 'post_hasmany_favorite_relationship', 'relationship', 'favorites', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Favorite\",\"table\":\"favorites\",\"type\":\"hasMany\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 21),
(121, 12, 'extra_values', 'select_dropdown', 'Extra Values', 0, 0, 0, 0, 0, 0, NULL, 18),
(122, 9, 'fields', 'hidden', 'Fields', 1, 1, 1, 1, 1, 1, NULL, 3),
(123, 3, 'user_belongsto_place_relationship', 'relationship', 'place', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Place\",\"table\":\"places\",\"type\":\"belongsTo\",\"column\":\"place_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 13),
(124, 3, 'place_id', 'checkbox', 'Place Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(125, 3, 'contact_no', 'checkbox', 'Contact No', 0, 1, 1, 1, 1, 1, NULL, 11),
(126, 14, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(127, 14, 'provider_user_id', 'text', 'Provider User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(128, 14, 'provider', 'checkbox', 'Provider', 0, 1, 1, 1, 1, 1, NULL, 3),
(129, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(130, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-11-05 10:12:44', '2017-11-05 10:12:44'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2017-11-05 10:12:44', '2017-11-06 04:22:39'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-11-05 10:12:44', '2017-11-05 10:12:44'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-11-05 10:12:44', '2017-11-05 10:12:44'),
(7, 'categories', 'categories', 'Category', 'Categories', 'voyager-list', 'App\\Category', NULL, NULL, NULL, 1, 0, '2017-11-05 11:01:29', '2017-11-05 11:01:29'),
(8, 'sub_categories', 'sub-categories', 'Sub Category', 'Sub Categories', 'voyager-bolt', 'App\\SubCategory', NULL, NULL, NULL, 1, 0, '2017-11-05 11:10:23', '2017-11-05 11:10:23'),
(9, 'extra_fields', 'extra-fields', 'Extra Field', 'Extra Field', NULL, 'App\\ExtraField', NULL, NULL, NULL, 1, 0, '2017-11-05 11:52:32', '2017-11-05 11:52:32'),
(10, 'divitions', 'divitions', 'Divition', 'Divitions', 'voyager-list', 'App\\Divition', NULL, NULL, NULL, 1, 0, '2017-11-06 02:40:56', '2017-11-06 02:40:56'),
(11, 'places', 'places', 'Place', 'Places', 'voyager-list', 'App\\Place', NULL, NULL, NULL, 1, 0, '2017-11-06 02:46:21', '2017-11-06 02:46:21'),
(12, 'posts', 'posts', 'Post', 'Posts', NULL, 'App\\Post', NULL, NULL, NULL, 1, 0, '2017-11-06 03:25:47', '2017-11-06 03:25:47'),
(13, 'favorites', 'favorites', 'Favorite', 'Favorites', 'voyager-bolt', 'App\\Favorite', NULL, NULL, NULL, 1, 0, '2017-11-06 07:09:34', '2017-11-06 07:09:34'),
(14, 'social_facebook_account', 'social-facebook-account', 'Social Facebook Account', 'Social Facebook Accounts', 'voyager-person', 'App\\SocialFacebookAccount', NULL, NULL, NULL, 1, 0, '2017-11-08 13:29:51', '2017-11-08 13:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `divitions`
--

CREATE TABLE `divitions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divitions`
--

INSERT INTO `divitions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Dhaka', '2017-11-26 08:33:49', '2017-11-26 08:33:49'),
(4, 'Sylhet', '2017-11-26 08:34:08', '2017-11-26 08:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `extra_fields`
--

CREATE TABLE `extra_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `fields` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `extra_fields`
--

INSERT INTO `extra_fields` (`id`, `sub_category_id`, `fields`, `created_at`, `updated_at`) VALUES
(8, 5, '[{\"type\":\"radio-group\",\"label\":\"Condition<br>\",\"inline\":true,\"name\":\"extra_values[Condition]\",\"values\":[{\"label\":\"New\",\"value\":\"New\"},{\"label\":\"Used\",\"value\":\"Used\"}]},{\"type\":\"select\",\"label\":\"Brand\",\"placeholder\":\"Brand\",\"className\":\"form-control\",\"name\":\"extra_values[Brand]\",\"values\":[{\"label\":\"Brand\",\"value\":\"Brand\",\"selected\":true},{\"label\":\"Samsung\",\"value\":\"Samsung\"},{\"label\":\"Nokia\",\"value\":\"Nokia\"},{\"label\":\"Walton\",\"value\":\"Walton\"},{\"label\":\"ZTE\",\"value\":\"ZTE\"},{\"label\":\"Other Brand\",\"value\":\"\"}]},{\"type\":\"checkbox-group\",\"label\":\"Features (Optionals)<br>\",\"inline\":true,\"name\":\"extra_values[Features (Optionals)]\",\"values\":[{\"label\":\"Blutooth\",\"value\":\"Blutooth\"},{\"label\":\"Camera\",\"value\":\"Camera\"},{\"label\":\"Dual-Lens Camera\",\"value\":\"Dual-Lens Camera\"},{\"label\":\"Dual SIM\",\"value\":\"Dual SIM\"},{\"label\":\"Expandable Memory\",\"value\":\"Expandable Memory\"},{\"label\":\"Fingerprint Sensor\",\"value\":\"Fingerprint Sensor\"},{\"label\":\"GPS\",\"value\":\"GPS\"},{\"label\":\"Physical keyboard\",\"value\":\"Physical keyboard\"},{\"label\":\"Motion Sensors\",\"value\":\"Motion Sensors\"},{\"label\":\"3G\",\"value\":\"3G\"},{\"label\":\"4G\",\"value\":\"4G\"},{\"label\":\"GSM\",\"value\":\"GSM\"},{\"label\":\"Touch screen\",\"value\":\"Touch screen\"}]},{\"type\":\"text\",\"label\":\"Model\",\"className\":\"form-control\",\"name\":\"extra_values[Model]\",\"subtype\":\"text\"},{\"type\":\"radio-group\",\"label\":\"Authenticit  \",\"name\":\"extra_values[Authenticit  ]\",\"values\":[{\"label\":\"Original\",\"value\":\"Original\",\"selected\":true},{\"label\":\"Replica / Clone\",\"value\":\"Replica / Clone\"}]}]', '2017-11-26 08:29:57', '2017-11-26 08:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 17, '2017-11-29 07:38:04', '2017-11-29 07:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-11-05 10:12:46', '2017-11-05 10:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-11-05 10:12:46', '2017-11-05 10:12:46', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2017-11-05 10:12:47', '2017-11-08 03:12:16', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 11, '2017-11-05 10:12:47', '2017-11-08 03:12:16', 'voyager.users.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 9, '2017-11-05 10:12:47', '2017-11-08 03:12:16', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 12, '2017-11-05 10:12:47', '2017-11-08 03:12:02', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2017-11-05 10:12:47', '2017-11-08 03:12:02', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2017-11-05 10:12:47', '2017-11-07 07:08:33', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', '#000000', 8, 2, '2017-11-05 10:12:47', '2017-11-08 02:18:45', 'voyager.database.index', 'null'),
(11, 1, 'Compass', '/admin/compass', '_self', 'voyager-compass', NULL, 8, 3, '2017-11-05 10:12:47', '2017-11-06 04:38:57', NULL, NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', NULL, 8, 4, '2017-11-05 10:12:47', '2017-11-06 04:38:57', NULL, NULL),
(13, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2017-11-05 10:12:47', '2017-11-08 03:12:02', 'voyager.settings.index', NULL),
(14, 1, 'Categories', '/admin/categories', '_self', 'voyager-list', NULL, NULL, 3, '2017-11-05 11:01:29', '2017-11-08 03:12:19', NULL, NULL),
(15, 1, 'Sub Categories', '/admin/sub-categories', '_self', 'voyager-bolt', NULL, NULL, 4, '2017-11-05 11:10:23', '2017-11-08 03:12:19', NULL, NULL),
(16, 1, 'Extra Field', '/admin/extra-fields', '_self', NULL, NULL, NULL, 5, '2017-11-05 11:52:33', '2017-11-08 03:12:19', NULL, NULL),
(17, 1, 'Divitions', '/admin/divitions', '_self', 'voyager-list', NULL, NULL, 6, '2017-11-06 02:40:57', '2017-11-08 03:12:16', NULL, NULL),
(18, 1, 'Places', '/admin/places', '_self', 'voyager-list', NULL, NULL, 7, '2017-11-06 02:46:22', '2017-11-08 03:12:16', NULL, NULL),
(19, 1, 'Posts', '/admin/posts', '_self', NULL, NULL, NULL, 10, '2017-11-06 03:25:47', '2017-11-08 03:12:16', NULL, NULL),
(20, 1, 'Favorites', '/admin/favorites', '_self', 'voyager-bolt', NULL, NULL, 15, '2017-11-06 07:09:35', '2017-11-08 03:12:02', NULL, NULL),
(22, 1, 'Review Ads', '', '_self', NULL, '#ff8000', NULL, 2, '2017-11-08 03:11:42', '2017-11-08 03:13:39', 'ads.review', 'null'),
(23, 1, 'Social Facebook Accounts', '/admin/social-facebook-account', '_self', 'voyager-person', NULL, NULL, 16, '2017-11-08 13:29:51', '2017-11-08 13:29:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(15, '2017_01_15_000000_create_permission_groups_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(19, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(20, '2017_08_05_000000_add_group_to_settings_table', 1),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(24, '2016_06_01_000004_create_oauth_clients_table', 2),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0b1d1cffcaa5b402cd5361e26268af8e2a9d2d72a23428dd08fd315031b99795087c2439d7b5079b', 7, 1, 'MyApp', '[]', 0, '2017-11-28 11:49:12', '2017-11-28 11:49:12', '2018-11-28 11:49:12'),
('0b93171c52a362ec1f35a4d4a98c59abfd81ca48a7b1383769892989a1370d9d5e81e09f0a8110a1', 7, 1, 'MyApp', '[]', 0, '2017-11-28 12:02:12', '2017-11-28 12:02:12', '2018-11-28 12:02:12'),
('24d0385134852d540012ad5b7cc263c07fcb911a5abf194405e24dafb1e216410d63438998a7db4f', 7, 1, 'MyApp', '[]', 0, '2017-11-23 15:09:07', '2017-11-23 15:09:07', '2018-11-23 15:09:07'),
('31013caf74aa8b6fe3f786ed4c8eedc6d736341cb0e785cf9e134a9f720104aa54edaf8db684d0ed', 7, 1, 'MyApp', '[]', 0, '2017-11-22 08:44:01', '2017-11-22 08:44:01', '2018-11-22 08:44:01'),
('35ef1409128bf21b9180288e844a2d628cc50278511af4b19e1d09b34be74fccd30c26fd1ce4964f', 7, 1, 'MyApp', '[]', 0, '2017-11-22 06:39:55', '2017-11-22 06:39:55', '2018-11-22 06:39:55'),
('387dd180829b41636be8286ee6b394464f3bdb21698a3922c1c7d528e8d57beb4d73a30e353061f0', 7, 1, 'MyApp', '[]', 0, '2017-11-22 07:56:48', '2017-11-22 07:56:48', '2018-11-22 07:56:48'),
('54caf9cedc2642ffe8e333a4e385bca40e3ec5c192cfcf22420cedb92189dfecb048a9d72de1c0bc', 7, 1, 'MyApp', '[]', 0, '2017-11-22 08:20:30', '2017-11-22 08:20:30', '2018-11-22 08:20:30'),
('656c8d0af6fd63564957e826b97d9f427f4489710dbc70e0d8ce7d0a042c4b2d15cbb9a8e9ecc9cb', 1, 1, 'MyApp', '[]', 0, '2017-11-10 03:26:16', '2017-11-10 03:26:16', '2018-11-10 09:26:16'),
('74d13b441b469c049f6caa8bbf684df01d98e3e949044425666d94bb8862029203eb91bee510b55f', 7, 1, 'MyApp', '[]', 0, '2017-11-23 11:52:14', '2017-11-23 11:52:14', '2018-11-23 11:52:14'),
('7a59ff03b14abf126219e2d47c01b34e65c6d5ee0a1ce736169250b7f79c45c67f3f2af170b925cb', 7, 1, 'MyApp', '[]', 0, '2017-11-28 17:10:32', '2017-11-28 17:10:32', '2018-11-28 17:10:32'),
('8d75f01a02cc44031fbc42a2353dc320921dbcc20b99a607b2436ed7a8bffbf992060c9c5e1f30c9', 7, 1, 'MyApp', '[]', 0, '2017-11-22 10:05:55', '2017-11-22 10:05:55', '2018-11-22 10:05:55'),
('95620a36d075d3e6e257543732a8a1207b04d38e1ef9a4a880999f3de91817f2b6f2f260dae247ab', 7, 1, 'MyApp', '[]', 0, '2017-11-22 06:37:57', '2017-11-22 06:37:57', '2018-11-22 06:37:57'),
('9e4f48148e6e01b225af6c0031673b81e942fa974b404abd247c3f643d31559fa8875e20597bb692', 7, 1, 'MyApp', '[]', 0, '2017-11-28 12:12:08', '2017-11-28 12:12:08', '2018-11-28 12:12:08'),
('aa8f14047aff5a6bf49bc4103059ef5c7bf2c5638ea2e870c47e6c918ed1d8579f35464ebe42af45', 7, 1, 'MyApp', '[]', 0, '2017-11-23 15:09:05', '2017-11-23 15:09:05', '2018-11-23 15:09:05'),
('b117896c4056de59c37ab3660f40fd947b4dc37267e56eebe2d1d5ece2cb4a4813dc98d16fad5136', 7, 1, 'MyApp', '[]', 0, '2017-11-22 10:05:56', '2017-11-22 10:05:56', '2018-11-22 10:05:56'),
('b3d7f4b9eba798d2f293b6699e69419df796c6061af65639546c74c4ef6bafb9b9d3d81cb053c5fb', 7, 1, 'MyApp', '[]', 0, '2017-11-23 06:51:48', '2017-11-23 06:51:48', '2018-11-23 06:51:48'),
('b856658b8eeb9caa57c7f2cdd4cbb3b6a416a3b4d8e8adbbfb848a361617ed8923cbe7cfe997b817', 7, 1, 'MyApp', '[]', 0, '2017-11-22 07:59:12', '2017-11-22 07:59:12', '2018-11-22 07:59:12'),
('c527c4234a8d8dea610ce27645e7bcadcd802b76c8907b831ac4e4020ce42f5572be542e1447f15d', 7, 1, 'MyApp', '[]', 0, '2017-11-23 06:51:49', '2017-11-23 06:51:49', '2018-11-23 06:51:49'),
('ca26040b6d60459b67bc57b9d2facd8bcee6ab9591b3f9680bf678b9ee060aca2024a28a95224bc8', 7, 1, 'MyApp', '[]', 0, '2017-11-23 06:54:05', '2017-11-23 06:54:05', '2018-11-23 06:54:05'),
('d6187b7f795378675ef1141aed02f3f9246a9101fd861516b3a7c119469ee9871b5cd5fc532c5f70', 7, 1, 'MyApp', '[]', 0, '2017-11-28 11:49:13', '2017-11-28 11:49:13', '2018-11-28 11:49:13'),
('d9c5fccfa85adbfa64ad191de0170846b607fb08e934e43b882cc3a130055655fc5165fab0b81988', 7, 1, 'MyApp', '[]', 0, '2017-11-22 10:05:56', '2017-11-22 10:05:56', '2018-11-22 10:05:56'),
('db6fe2a1d40db1ec3d42e861e9fb3c044ed2069a1f254bd7cf61d547125f0c20d0fe8a48ff5f5fdc', 7, 1, 'MyApp', '[]', 0, '2017-11-23 06:54:07', '2017-11-23 06:54:07', '2018-11-23 06:54:07'),
('e7ca439caf3c80d8d31459a7a53c571fb04370fa847caf13d3d85c7e8663022318c86a14a78edc95', 7, 1, 'MyApp', '[]', 0, '2017-11-28 12:07:49', '2017-11-28 12:07:49', '2018-11-28 12:07:49'),
('f19472082aa60e3b78aad4643e421672ecd0928c67ca92a37ddf265b8a666a0e789856c15f34ab56', 7, 1, 'MyApp', '[]', 0, '2017-11-28 12:03:35', '2017-11-28 12:03:35', '2018-11-28 12:03:35'),
('f23cb3fda57e4c839251fd427f539f78151432cb9b317cee3244d5443720f0315f213453c20b3812', 7, 1, 'MyApp', '[]', 0, '2017-11-22 07:49:55', '2017-11-22 07:49:55', '2018-11-22 07:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Koridbiki.com Personal Access Client', '6FWUX2K8AROVmLhIQ40TRmQkx087XU98a3f9GEQI', 'http://localhost', 1, 0, 0, '2017-11-08 15:08:39', '2017-11-08 15:08:39'),
(2, NULL, 'Koridbiki.com Password Grant Client', 'TcjvgYMBAE7HBMjQ08eio5OTZ2bAssfotVG0Jouz', 'http://localhost', 0, 1, 0, '2017-11-08 15:08:39', '2017-11-08 15:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-11-08 15:08:39', '2017-11-08 15:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', 'Nice to meet here', '<h1>Hello there</h1>\r\n<form><input type=\"text\" /></form>', 'pages/November2017/vUOyRn1kw3G8YCJqde85.jpg', 'about-us', 'about-us', 'help', 'ACTIVE', '2017-11-05 10:38:35', '2017-11-05 10:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('masum385@gmail.com', '$2y$10$syRwTM/Ps6X.vvD8JWhT8.Xoa4patQaBjwCo1WDrcUdlywO0xirFO', '2017-11-23 10:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-11-05 10:12:47', '2017-11-05 10:12:47', NULL),
(2, 'browse_database', NULL, '2017-11-05 10:12:47', '2017-11-05 10:12:47', NULL),
(3, 'browse_media', NULL, '2017-11-05 10:12:47', '2017-11-05 10:12:47', NULL),
(4, 'browse_compass', NULL, '2017-11-05 10:12:47', '2017-11-05 10:12:47', NULL),
(5, 'browse_menus', 'menus', '2017-11-05 10:12:47', '2017-11-05 10:12:47', NULL),
(6, 'read_menus', 'menus', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(7, 'edit_menus', 'menus', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(8, 'add_menus', 'menus', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(9, 'delete_menus', 'menus', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(10, 'browse_pages', 'pages', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(11, 'read_pages', 'pages', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(12, 'edit_pages', 'pages', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(13, 'add_pages', 'pages', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(14, 'delete_pages', 'pages', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(15, 'browse_roles', 'roles', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(16, 'read_roles', 'roles', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(17, 'edit_roles', 'roles', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(18, 'add_roles', 'roles', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(19, 'delete_roles', 'roles', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(20, 'browse_users', 'users', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(21, 'read_users', 'users', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(22, 'edit_users', 'users', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(23, 'add_users', 'users', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(24, 'delete_users', 'users', '2017-11-05 10:12:48', '2017-11-05 10:12:48', NULL),
(35, 'browse_settings', 'settings', '2017-11-05 10:12:49', '2017-11-05 10:12:49', NULL),
(36, 'read_settings', 'settings', '2017-11-05 10:12:49', '2017-11-05 10:12:49', NULL),
(37, 'edit_settings', 'settings', '2017-11-05 10:12:49', '2017-11-05 10:12:49', NULL),
(38, 'add_settings', 'settings', '2017-11-05 10:12:49', '2017-11-05 10:12:49', NULL),
(39, 'delete_settings', 'settings', '2017-11-05 10:12:49', '2017-11-05 10:12:49', NULL),
(40, 'browse_categories', 'categories', '2017-11-05 11:01:29', '2017-11-05 11:01:29', NULL),
(41, 'read_categories', 'categories', '2017-11-05 11:01:29', '2017-11-05 11:01:29', NULL),
(42, 'edit_categories', 'categories', '2017-11-05 11:01:29', '2017-11-05 11:01:29', NULL),
(43, 'add_categories', 'categories', '2017-11-05 11:01:29', '2017-11-05 11:01:29', NULL),
(44, 'delete_categories', 'categories', '2017-11-05 11:01:29', '2017-11-05 11:01:29', NULL),
(45, 'browse_sub_categories', 'sub_categories', '2017-11-05 11:10:23', '2017-11-05 11:10:23', NULL),
(46, 'read_sub_categories', 'sub_categories', '2017-11-05 11:10:23', '2017-11-05 11:10:23', NULL),
(47, 'edit_sub_categories', 'sub_categories', '2017-11-05 11:10:23', '2017-11-05 11:10:23', NULL),
(48, 'add_sub_categories', 'sub_categories', '2017-11-05 11:10:23', '2017-11-05 11:10:23', NULL),
(49, 'delete_sub_categories', 'sub_categories', '2017-11-05 11:10:23', '2017-11-05 11:10:23', NULL),
(50, 'browse_extra_fields', 'extra_fields', '2017-11-05 11:52:33', '2017-11-05 11:52:33', NULL),
(51, 'read_extra_fields', 'extra_fields', '2017-11-05 11:52:33', '2017-11-05 11:52:33', NULL),
(52, 'edit_extra_fields', 'extra_fields', '2017-11-05 11:52:33', '2017-11-05 11:52:33', NULL),
(53, 'add_extra_fields', 'extra_fields', '2017-11-05 11:52:33', '2017-11-05 11:52:33', NULL),
(54, 'delete_extra_fields', 'extra_fields', '2017-11-05 11:52:33', '2017-11-05 11:52:33', NULL),
(55, 'browse_divitions', 'divitions', '2017-11-06 02:40:56', '2017-11-06 02:40:56', NULL),
(56, 'read_divitions', 'divitions', '2017-11-06 02:40:56', '2017-11-06 02:40:56', NULL),
(57, 'edit_divitions', 'divitions', '2017-11-06 02:40:56', '2017-11-06 02:40:56', NULL),
(58, 'add_divitions', 'divitions', '2017-11-06 02:40:56', '2017-11-06 02:40:56', NULL),
(59, 'delete_divitions', 'divitions', '2017-11-06 02:40:56', '2017-11-06 02:40:56', NULL),
(60, 'browse_places', 'places', '2017-11-06 02:46:22', '2017-11-06 02:46:22', NULL),
(61, 'read_places', 'places', '2017-11-06 02:46:22', '2017-11-06 02:46:22', NULL),
(62, 'edit_places', 'places', '2017-11-06 02:46:22', '2017-11-06 02:46:22', NULL),
(63, 'add_places', 'places', '2017-11-06 02:46:22', '2017-11-06 02:46:22', NULL),
(64, 'delete_places', 'places', '2017-11-06 02:46:22', '2017-11-06 02:46:22', NULL),
(65, 'browse_posts', 'posts', '2017-11-06 03:25:47', '2017-11-06 03:25:47', NULL),
(66, 'read_posts', 'posts', '2017-11-06 03:25:47', '2017-11-06 03:25:47', NULL),
(67, 'edit_posts', 'posts', '2017-11-06 03:25:47', '2017-11-06 03:25:47', NULL),
(68, 'add_posts', 'posts', '2017-11-06 03:25:47', '2017-11-06 03:25:47', NULL),
(69, 'delete_posts', 'posts', '2017-11-06 03:25:47', '2017-11-06 03:25:47', NULL),
(70, 'browse_favorites', 'favorites', '2017-11-06 07:09:34', '2017-11-06 07:09:34', NULL),
(71, 'read_favorites', 'favorites', '2017-11-06 07:09:34', '2017-11-06 07:09:34', NULL),
(72, 'edit_favorites', 'favorites', '2017-11-06 07:09:34', '2017-11-06 07:09:34', NULL),
(73, 'add_favorites', 'favorites', '2017-11-06 07:09:34', '2017-11-06 07:09:34', NULL),
(74, 'delete_favorites', 'favorites', '2017-11-06 07:09:34', '2017-11-06 07:09:34', NULL),
(75, 'browse_social_facebook_account', 'social_facebook_account', '2017-11-08 13:29:51', '2017-11-08 13:29:51', NULL),
(76, 'read_social_facebook_account', 'social_facebook_account', '2017-11-08 13:29:51', '2017-11-08 13:29:51', NULL),
(77, 'edit_social_facebook_account', 'social_facebook_account', '2017-11-08 13:29:51', '2017-11-08 13:29:51', NULL),
(78, 'add_social_facebook_account', 'social_facebook_account', '2017-11-08 13:29:51', '2017-11-08 13:29:51', NULL),
(79, 'delete_social_facebook_account', 'social_facebook_account', '2017-11-08 13:29:51', '2017-11-08 13:29:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `divition_id` int(10) UNSIGNED DEFAULT NULL,
  `is_popular` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `divition_id`, `is_popular`, `created_at`, `updated_at`) VALUES
(5, 'Mirpur', 3, 1, '2017-11-26 08:35:08', '2017-11-26 08:35:08'),
(6, 'Uttara', 3, 1, '2017-11-26 08:35:23', '2017-11-26 08:35:23'),
(7, 'Dhanmondi', 3, 1, '2017-11-26 08:35:39', '2017-11-26 08:35:39'),
(8, 'Gulsan', 3, 1, '2017-11-26 08:35:53', '2017-11-26 08:35:53'),
(9, 'Zindabazar', 4, 1, '2017-11-26 08:36:12', '2017-11-26 08:36:12'),
(10, 'Bondor Bazar', 4, 1, '2017-11-26 08:36:29', '2017-11-26 08:36:29'),
(11, 'Upsohor', 4, 1, '2017-11-26 08:36:50', '2017-11-26 08:36:50'),
(12, 'Lama Bazar', 4, 1, '2017-11-26 08:37:00', '2017-11-26 08:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL,
  `negatiable` tinyint(4) DEFAULT '0',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra_values` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `sub_category_id`, `place_id`, `title`, `description`, `photo1`, `photo2`, `photo3`, `photo4`, `price`, `negatiable`, `contact`, `status`, `created_at`, `updated_at`, `extra_values`) VALUES
(17, 6, 5, 5, 'Samsung galaxy s8', 'Samsung galaxy s8Samsung galaxy s8Samsung galaxy s8', 'posts/1dKPQoKT8hWaIbpb6uU8BCeXzyIsYcWr8yXy3SCX.jpeg', 'posts/oKOHVpZOP8zqq7a1MykAKH5AH59hrmQymSjxeRfe.jpeg', 'posts/hoektjDfRmCa4PihYo3x7fTYOL4xvjy7LFC06QTc.jpeg', 'posts/wJEUAAIE8NMYdO84gQKSr9kdgptdKEvfrcBGfwQA.jpeg', 4500, 0, '01715388913', 1, '2017-11-28 10:02:56', '2017-11-29 07:39:16', '{\"Condition\":\"Used\",\"Model\":\"S8\",\"Authenticit  \":\"Original\"}');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-11-05 10:12:47', '2017-11-05 10:12:47'),
(2, 'user', 'Normal User', '2017-11-05 10:12:47', '2017-11-05 10:12:47'),
(3, 'member', 'Member', '2017-11-08 03:30:12', '2017-11-08 03:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(3, 'admin.title', 'Admin Title', 'Koridbiki.com', NULL, 'text', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `social_facebook_accounts`
--

CREATE TABLE `social_facebook_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_facebook_accounts`
--

INSERT INTO `social_facebook_accounts` (`user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(5, '1681848391885201', 'facebook', '2017-11-10 02:38:17', '2017-11-10 02:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'Mobile Phones', 5, '2017-11-26 07:54:41', '2017-11-26 07:54:41'),
(6, 'Mobile Phone Accessories', 5, '2017-11-26 07:55:12', '2017-11-26 07:55:12'),
(7, 'Computers & Tablets', 5, '2017-11-26 07:55:29', '2017-11-26 07:55:29'),
(8, 'Computer Accessories', 5, '2017-11-26 07:56:00', '2017-11-26 07:56:00'),
(9, 'TVs', 5, '2017-11-26 07:56:16', '2017-11-26 07:56:16'),
(10, 'TV & Video Accessories', 5, '2017-11-26 07:56:31', '2017-11-26 07:56:31'),
(11, 'Cameras & Camcorders', 5, '2017-11-26 07:56:45', '2017-11-26 07:56:45'),
(12, 'Audio & MP3', 5, '2017-11-26 07:56:58', '2017-11-26 07:56:58'),
(13, 'Lighting', 5, '2017-11-26 07:57:11', '2017-11-26 07:57:11'),
(14, 'Video Games & Consoles', 5, '2017-11-26 07:57:26', '2017-11-26 07:57:26'),
(15, 'Other Electronics', 5, '2017-11-26 07:57:39', '2017-11-26 07:57:39'),
(16, 'Cars', 7, '2017-11-26 07:58:06', '2017-11-26 07:58:06'),
(17, 'Motorbikes & Scooters', 7, '2017-11-26 07:58:23', '2017-11-26 07:58:23'),
(18, 'Bicycles and Three Wheelers', 7, '2017-11-26 07:58:43', '2017-11-26 07:58:43'),
(19, 'Trucks, Vans & Buses', 7, '2017-11-26 07:59:00', '2017-11-26 07:59:00'),
(20, 'Tractors & Heavy-Duty', 7, '2017-11-26 07:59:17', '2017-11-26 07:59:17'),
(21, 'Auto Parts & Accessories', 7, '2017-11-26 07:59:00', '2017-11-26 07:59:48'),
(22, 'Boats & Water Transport', 7, '2017-11-26 08:00:16', '2017-11-26 08:00:16'),
(23, 'Auto Services', 7, '2017-11-26 08:00:29', '2017-11-26 08:00:29'),
(24, 'Apartments & Flats', 8, '2017-11-26 08:02:16', '2017-11-26 08:02:16'),
(25, 'Houses', 8, '2017-11-26 08:02:32', '2017-11-26 08:02:32'),
(26, 'Plots & Land', 8, '2017-11-26 08:02:49', '2017-11-26 08:02:49'),
(27, 'Garages', 8, '2017-11-26 08:03:04', '2017-11-26 08:03:04'),
(28, 'Commercial Property', 8, '2017-11-26 08:03:24', '2017-11-26 08:03:24'),
(29, 'Furniture', 6, '2017-11-26 08:03:55', '2017-11-26 08:03:55'),
(30, 'Home Appliances', 6, '2017-11-26 08:04:11', '2017-11-26 08:04:11'),
(31, 'Electricity, AC, Bathroom & Garden', 6, '2017-11-26 08:04:30', '2017-11-26 08:04:30'),
(32, 'Other Home Items', 6, '2017-11-26 08:04:52', '2017-11-26 08:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`, `place_id`, `contact_no`) VALUES
(1, 1, 'Super Admin', 'admin@admin.com', 'users/November2017/L8qHa6mcztQCCbGgSwE7.jpg', '$2y$10$xJOiyphOXWuEPdmmJa/3x.DGFXwb4xhzPXadShQyAZqHWvQK3EtOq', '78XlwtnJe967FflMdWMkycWZQDHHqC0oYmuOxP8j7z8OxleyQoUShcsNMN1l', '2017-11-05 10:16:18', '2017-11-12 07:33:39', 1, '0'),
(5, 2, 'Anwar Hussen', 'anik3472@gmail.com', 'https://graph.facebook.com/v2.10/1681848391885201/picture?type=normal', '8ab9bb97ce35080338be74dc6375e0ed', 'YRz52Ab67bD1E3cTQs9kgch3hj5K6PBoxh0cH3cXuxGA2BCArLvc7kfTsYlt', '2017-11-10 02:38:17', '2017-11-10 02:38:17', NULL, NULL),
(6, 2, 'Masum Ahmed', 'masum385@gmail.com', 'users/default.png', '$2y$10$nY83wWfGiHjmapkGDBcEyekFip5WXFMvToWWa99aeKiRb/DqYvN9O', '9mDbFGLLjq1MIyq98yjkL0HC2dwdotcmvvxSzV89pIX4BV09nMEzmcDbztvX', '2017-11-11 18:58:40', '2017-11-11 18:58:40', NULL, NULL),
(7, 2, 'Hello', 'anwar@gmail.com', 'users/default.png', '$2y$10$/ftRAI6XnXN9hyfoRBONmOaaRkTD4Rqx.YWCNVEdeZycWtxh5vLF.', '74lvPV0lOVwh2gloBY2MDUVGclIY8Opbzuoxpeztet2ZJCAqRZ0572ELIzui', '2017-11-22 06:34:00', '2017-11-22 06:34:00', NULL, NULL),
(8, 2, 'Abdul', 'angla@hotmail.co.uk', 'users/default.png', '$2y$10$6HCx17GplDJVJHaN.v.DGejO1kUH6J18gvIhtO5Pu227OgozArNtm', NULL, '2017-11-26 14:57:04', '2017-11-26 14:57:04', NULL, NULL),
(9, 2, 'Arafatul Alam', 'ribol.alam@gmail.com', 'users/default.png', '$2y$10$mt0YIg2AdNvdCDPawp1lDeBLUafD8qvFutwATv4xxEc7QGZ9okuiq', 'oqRMjaWsFGfjUPfv7C2xhlrOfLtnDosGJshUE1C20eT8PPIPgNdZhFNvAEz9', '2017-11-28 09:25:49', '2017-11-28 09:25:49', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `divitions`
--
ALTER TABLE `divitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_fields`
--
ALTER TABLE `extra_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `divitions`
--
ALTER TABLE `divitions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `extra_fields`
--
ALTER TABLE `extra_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
