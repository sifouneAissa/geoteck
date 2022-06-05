-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2022 at 09:37 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `analyse_chimiques`
--

CREATE TABLE `analyse_chimiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `resultat_analyse_chimique` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essai_laboratoire_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-06-03 17:28:06', '2022-06-03 17:28:06'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-06-03 17:28:06', '2022-06-03 17:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `compagne_reconnaissance_geotechniques`
--

CREATE TABLE `compagne_reconnaissance_geotechniques` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_de_reconnaissance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `nom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compagne_reconnaissance_geotechniques`
--

INSERT INTO `compagne_reconnaissance_geotechniques` (`id`, `type_de_reconnaissance`, `phase`, `date`, `nom`) VALUES
(1, 'option1', 'option1', '2022-06-17', 'fdsfdsfd'),
(2, 'option1', 'option1', '2022-06-08', 'companie de mila');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 11, 'wilaya', 'text', 'Wilaya', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 11, 'commune', 'text', 'Commune', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 12, 'Nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 12, 'duree', 'text', 'Duree', 0, 1, 1, 1, 1, 1, '{}', 3),
(62, 12, 'maitre_de_ouvrage', 'text', 'Maitre De Ouvrage', 0, 1, 1, 1, 1, 1, '{}', 4),
(63, 12, 'maitre_de_oeuve', 'text', 'Maitre De Oeuve', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 12, 'entreprise_de_realisation', 'text', 'Entreprise De Realisation', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 12, 'situation_id', 'select_dropdown', 'Situation Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(66, 12, 'project_belongsto_project_relationship', 'relationship', 'Situation', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Situation\",\"table\":\"situations\",\"type\":\"belongsTo\",\"column\":\"situation_id\",\"key\":\"id\",\"label\":\"commune\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(67, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 14, 'type_de_reconnaissance', 'select_dropdown', 'Type De Reconnaissance', 0, 1, 1, 1, 1, 1, '{\"default\":\"g\\u00e9ophysique\",\"options\":{\"option1\":\"g\\u00e9ophysique\",\"option2\":\"g\\u00e9otechnique\"}}', 2),
(69, 14, 'phase', 'select_dropdown', 'Phase', 0, 1, 1, 1, 1, 1, '{\"default\":\"EXE\",\"options\":{\"option1\":\"EXE\",\"option2\":\"APD\"}}', 3),
(70, 14, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 14, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 5),
(72, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 15, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(74, 15, 'laboratoire_belongsto_compagne_reconnaissance_geotechnique_relationship', 'relationship', 'compagne', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CompagneReconnaissanceGeotechnique\",\"table\":\"compagne_reconnaissance_geotechniques\",\"type\":\"belongsTo\",\"column\":\"compagne_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(75, 15, 'compagne_id', 'text', 'Compagne Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(76, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 17, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 17, 'compage_id', 'text', 'Compage Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(79, 17, 'essai_in_situ_belongsto_compagne_reconnaissance_geotechnique_relationship', 'relationship', 'compagne_reconnaissance_geotechniques', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CompagneReconnaissanceGeotechnique\",\"table\":\"compagne_reconnaissance_geotechniques\",\"type\":\"belongsTo\",\"column\":\"compage_id\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(80, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 18, 'code_sondage', 'text', 'Code Sondage', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 18, 'code_ana', 'text', 'Code Ana', 0, 1, 1, 1, 1, 1, '{}', 3),
(83, 18, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 18, 'profondeur_max', 'text', 'Profondeur Max', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 18, 'x', 'text', 'X', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 18, 'y', 'text', 'Y', 0, 1, 1, 1, 1, 1, '{}', 7),
(87, 18, 'z', 'text', 'Z', 0, 1, 1, 1, 1, 1, '{}', 8),
(88, 18, 'systeme_de_projection', 'select_dropdown', 'Systeme De Projection', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Local\",\"option2\":\"Wgs\"}}', 9),
(89, 18, 'mode_sondage', 'select_dropdown', 'Mode Sondage', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Carotte\",\"option2\":\"Destructif\"}}', 10),
(90, 18, 'sondage_belongsto_essai_in_situ_relationship', 'relationship', 'essai_in_situs', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiInSitu\",\"table\":\"essai_in_situs\",\"type\":\"belongsTo\",\"column\":\"essai_in_situ_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(91, 18, 'essai_in_situ_id', 'text', 'Essai In Situ Id', 1, 1, 1, 1, 1, 1, '{}', 11),
(92, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 19, 'sondage_id', 'text', 'Sondage Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 19, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 19, 'lithologie', 'text', 'Lithologie', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 19, 'sondage_resultat_belongsto_sondage_relationship', 'relationship', 'sondages', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sondage\",\"table\":\"sondages\",\"type\":\"belongsTo\",\"column\":\"sondage_id\",\"key\":\"id\",\"label\":\"code_sondage\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(97, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 20, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 20, 'code_sondage', 'text', 'Code Sondage', 1, 1, 1, 1, 1, 1, '{}', 3),
(100, 20, 'code_echantillon', 'text', 'Code Echantillon', 1, 1, 1, 1, 1, 1, '{}', 4),
(101, 20, 'echantillon_belongsto_sondage_relationship', 'relationship', 'Sondage', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sondage\",\"table\":\"sondages\",\"type\":\"belongsTo\",\"column\":\"code_sondage\",\"key\":\"id\",\"label\":\"code_sondage\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(102, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 21, 'code_echantillon', 'text', 'Code Echantillon', 1, 1, 1, 1, 1, 1, '{}', 2),
(104, 21, 'profondeur_prelevement', 'text', 'Profondeur Prelevement', 0, 1, 1, 1, 1, 1, '{}', 3),
(105, 21, 'date_prelevement', 'date', 'Date Prelevement', 0, 1, 1, 1, 1, 1, '{}', 4),
(106, 21, 'mode_de_prelevement', 'select_dropdown', 'Mode De Prelevement', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Parafenie\",\"option2\":\"Non Parafenie\"}}', 5),
(107, 21, 'conditions_conservation', 'text', 'Conditions Conservation', 0, 1, 1, 1, 1, 1, '{}', 6),
(108, 21, 'essai_laboratoire_belongsto_echantillon_relationship', 'relationship', 'echantillons', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Echantillon\",\"table\":\"echantillons\",\"type\":\"belongsTo\",\"column\":\"code_echantillon\",\"key\":\"id\",\"label\":\"code_echantillon\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(109, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 22, 'triaxial', 'text', 'Triaxial', 0, 1, 1, 1, 1, 1, '{}', 2),
(111, 22, 'cisaillement_rectiligne', 'text', 'Cisaillement Rectiligne', 0, 1, 1, 1, 1, 1, '{}', 3),
(112, 22, 'oedometre', 'text', 'Oedometre', 0, 1, 1, 1, 1, 1, '{}', 4),
(113, 22, 'gonflement', 'text', 'Gonflement', 0, 1, 1, 1, 1, 1, '{}', 5),
(114, 22, 'traction', 'text', 'Traction', 0, 1, 1, 1, 1, 1, '{}', 6),
(115, 22, 'compression_simple', 'text', 'Compression Simple', 0, 1, 1, 1, 1, 1, '{}', 7),
(116, 22, 'code_essai_laboratoire', 'text', 'Code Essai Laboratoire', 1, 1, 1, 1, 1, 1, '{}', 8),
(117, 22, 'essai_mecanique_belongsto_essai_laboratoire_relationship', 'relationship', 'essai_laboratoires', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiLaboratoire\",\"table\":\"essai_laboratoires\",\"type\":\"belongsTo\",\"column\":\"code_essai_laboratoire\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(118, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 23, 'masse_volumique_yd', 'text', 'Masse Volumique Yd', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 23, 'teneur_en_eau_w', 'text', 'Teneur En Eau W', 0, 1, 1, 1, 1, 1, '{}', 4),
(122, 23, 'proctor_teneur_en_eau_w', 'text', 'Proctor Teneur En Eau W', 0, 1, 1, 1, 1, 1, '{}', 5),
(123, 23, 'proctor_teneur_en_eau_yd', 'text', 'Proctor Teneur En Eau Yd', 0, 1, 1, 1, 1, 1, '{}', 6),
(124, 23, 'wp', 'text', 'Wp', 0, 1, 1, 1, 1, 1, '{}', 7),
(125, 23, 'ip', 'text', 'Ip', 0, 1, 1, 1, 1, 1, '{}', 8),
(126, 23, 'wl', 'text', 'Wl', 0, 1, 1, 1, 1, 1, '{}', 9),
(127, 23, 'essai_physique_belongsto_essai_laboratoire_relationship', 'relationship', 'essai_laboratoires', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiLaboratoire\",\"table\":\"essai_laboratoires\",\"type\":\"belongsTo\",\"column\":\"code_essai_laboratoire\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(128, 23, 'code_essai_laboratoire', 'text', 'Code Essai Laboratoire', 1, 1, 1, 1, 1, 1, '{}', 10),
(129, 23, 'granulometrie_min', 'text', 'Granulometrie Min', 0, 1, 1, 1, 1, 1, '{}', 2),
(130, 23, 'granulometrie_max', 'text', 'Granulometrie Max', 0, 1, 1, 1, 1, 1, '{}', 11),
(131, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(132, 24, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 2),
(133, 24, 'vbs', 'text', 'Vbs', 0, 1, 1, 1, 1, 1, '{}', 3),
(134, 24, 'resultat_bleue_mytilene_belongsto_essai_physique_relationship', 'relationship', 'essai_physique', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiPhysique\",\"table\":\"essai_physiques\",\"type\":\"belongsTo\",\"column\":\"essai_physique_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(135, 24, 'essai_physique_id', 'text', 'Essai Physique Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(136, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(137, 26, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 2),
(138, 26, 'es', 'text', 'Es', 0, 1, 1, 1, 1, 1, '{}', 3),
(139, 26, 'essai_physique_id', 'text', 'Essai Physique Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(140, 26, 'resultat_equivalent_sable_belongsto_essai_physique_relationship', 'relationship', 'essai_physiques', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiPhysique\",\"table\":\"essai_physiques\",\"type\":\"belongsTo\",\"column\":\"essai_physique_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 5),
(141, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 27, 'resultat_analyse_chimique', 'text', 'Resultat Analyse Chimique', 0, 1, 1, 1, 1, 1, '{}', 2),
(143, 27, 'essai_laboratoire_id', 'text', 'Essai Laboratoire Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(144, 27, 'analyse_chimique_belongsto_essai_laboratoire_relationship', 'relationship', 'essai_laboratoires', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiLaboratoire\",\"table\":\"essai_laboratoires\",\"type\":\"belongsTo\",\"column\":\"essai_laboratoire_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(145, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(146, 28, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(147, 28, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 3),
(148, 28, 'sondage_id', 'text', 'Sondage Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(149, 28, 'permeabilite_belongsto_sondage_relationship', 'relationship', 'sondages', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sondage\",\"table\":\"sondages\",\"type\":\"belongsTo\",\"column\":\"sondage_id\",\"key\":\"id\",\"label\":\"code_sondage\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(150, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(151, 29, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(152, 29, 'sondage_id', 'text', 'Sondage Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(153, 29, 'profondeur_max', 'text', 'Profondeur Max', 0, 1, 1, 1, 1, 1, '{}', 4),
(154, 29, 'piezometry_belongsto_sondage_relationship', 'relationship', 'sondages', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sondage\",\"table\":\"sondages\",\"type\":\"belongsTo\",\"column\":\"sondage_id\",\"key\":\"id\",\"label\":\"code_sondage\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(155, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(156, 35, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(157, 35, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 3),
(158, 35, 'coefficient_permeabilite_K', 'text', 'Coefficient Permeabilite K', 0, 1, 1, 1, 1, 1, '{}', 4),
(159, 35, 'permeabilite_id', 'text', 'Permeabilite Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(160, 35, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"Lefranc\",\"option2\":\"Lugeon\"}}', 6),
(161, 35, 'unite', 'select_dropdown', 'Unite', 0, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"option1\":\"UL\",\"option2\":\"m\\/sec\"}}', 7),
(162, 35, 'resultat_permeabilite_belongsto_permeabilite_relationship', 'relationship', 'permeabilites', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Permeabilite\",\"table\":\"permeabilites\",\"type\":\"belongsTo\",\"column\":\"permeabilite_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(163, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(164, 37, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(165, 37, 'niveau_piezometrique', 'text', 'Niveau Piezometrique', 0, 1, 1, 1, 1, 1, '{}', 3),
(166, 37, 'piezometrie_id', 'text', 'Piezometrie Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(167, 37, 'resultat_piezometry_belongsto_piezometry_relationship', 'relationship', 'piezometries', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Piezometry\",\"table\":\"piezometries\",\"type\":\"belongsTo\",\"column\":\"piezometrie_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(168, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(169, 38, 'code_spt', 'text', 'Code Spt', 0, 1, 1, 1, 1, 1, '{}', 2),
(170, 38, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 3),
(171, 38, 'profondeurs', 'text', 'Profondeurs', 0, 1, 1, 1, 1, 1, '{}', 4),
(172, 38, 'essai_in_situ_id', 'text', 'Essai In Situ Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(173, 38, 'essai_spt_belongsto_essai_in_situ_relationship', 'relationship', 'essai_in_situs', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiInSitu\",\"table\":\"essai_in_situs\",\"type\":\"belongsTo\",\"column\":\"essai_in_situ_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(174, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(175, 39, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 2),
(176, 39, 'valeur_nspt', 'text', 'Valeur Nspt', 0, 1, 1, 1, 1, 1, '{}', 3),
(177, 39, 'schultze_menzenbach_e', 'text', 'E (Schultze Menzenbach)', 0, 1, 1, 1, 1, 1, '{}', 4),
(178, 39, 'skempton_n1', 'text', 'N1 (Skempton)', 0, 1, 1, 1, 1, 1, '{}', 5),
(179, 39, 'skempton_dr', 'text', 'Dr (Skempton)', 0, 1, 1, 1, 1, 1, '{}', 6),
(180, 39, 'essai_spt_id', 'text', 'Essai Spt Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(181, 39, 'resultat_essai_spt_belongsto_essai_spt_relationship', 'relationship', 'essai_spts', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\EssaiSpt\",\"table\":\"essai_spts\",\"type\":\"belongsTo\",\"column\":\"essai_spt_id\",\"key\":\"id\",\"label\":\"code_spt\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(182, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(183, 41, 'sondage_id', 'text', 'Sondage Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(184, 41, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 3),
(185, 41, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 4),
(186, 41, 'profondeur_max', 'text', 'Profondeur Max', 0, 1, 1, 1, 1, 1, '{}', 5),
(187, 41, 'pressiometre_belongsto_sondage_relationship', 'relationship', 'sondages', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sondage\",\"table\":\"sondages\",\"type\":\"belongsTo\",\"column\":\"sondage_id\",\"key\":\"id\",\"label\":\"code_sondage\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(188, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(189, 42, 'profondeur', 'text', 'Profondeur', 0, 1, 1, 1, 1, 1, '{}', 2),
(190, 42, 'pression_limite_pl', 'text', 'Pression Limite Pl', 0, 1, 1, 1, 1, 1, '{}', 3),
(191, 42, 'pressionde_fluage', 'text', 'Pressionde Fluage', 0, 1, 1, 1, 1, 1, '{}', 4),
(192, 42, 'em_pl', 'text', 'Em/Pl', 0, 1, 1, 1, 1, 1, '{}', 5),
(193, 42, 'module_pressiometrique', 'text', 'Module Pressiometrique', 0, 1, 1, 1, 1, 1, '{}', 6),
(194, 42, 'coefficient_rheologique', 'text', 'Coefficient Rheologique', 0, 1, 1, 1, 1, 1, '{}', 7),
(195, 42, 'module_de_young', 'text', 'Module De Young', 0, 1, 1, 1, 1, 1, '{}', 8),
(196, 42, 'pressiometre_id', 'text', 'Pressiometre Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(197, 42, 'resultat_pressiometre_belongsto_pressiometre_relationship', 'relationship', 'pressiometres', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Pressiometre\",\"table\":\"pressiometres\",\"type\":\"belongsTo\",\"column\":\"pressiometre_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"analyse_chimiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-06-03 17:27:39', '2022-06-03 17:27:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-06-03 17:27:39', '2022-06-03 17:27:39'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-06-03 17:27:39', '2022-06-03 17:27:39'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-06-03 17:28:05', '2022-06-03 17:28:05'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-06-03 17:28:06', '2022-06-03 17:28:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(11, 'situations', 'situations', 'Situation', 'Situations', NULL, 'App\\Situation', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2022-06-03 17:50:08', '2022-06-03 17:50:08'),
(12, 'projects', 'projects', 'Project', 'Projects', NULL, 'App\\Project', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 18:01:09', '2022-06-03 19:11:13'),
(14, 'compagne_reconnaissance_geotechniques', 'compagne-reconnaissance-geotechniques', 'Compagne Reconnaissance Geotechnique', 'Compagne Reconnaissance Geotechniques', NULL, 'App\\CompagneReconnaissanceGeotechnique', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 18:39:32', '2022-06-03 19:09:52'),
(15, 'laboratoires', 'laboratoires', 'Laboratoire', 'Laboratoires', NULL, 'App\\Laboratoire', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 19:17:44', '2022-06-03 19:27:58'),
(17, 'essai_in_situs', 'essai-in-situs', 'Essai In Situ', 'Essai In Situs', NULL, 'App\\EssaiInSitu', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 19:43:57', '2022-06-03 19:47:52'),
(18, 'sondages', 'sondages', 'Sondage', 'Sondages', NULL, 'App\\Sondage', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 20:10:02', '2022-06-05 18:23:20'),
(19, 'sondage_resultats', 'sondage-resultats', 'Sondage Resultat', 'Sondage Resultats', NULL, 'App\\SondageResultat', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 20:48:30', '2022-06-05 15:14:49'),
(20, 'echantillons', 'echantillons', 'Echantillon', 'Echantillons', NULL, 'App\\Echantillon', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 21:13:00', '2022-06-03 21:15:40'),
(21, 'essai_laboratoires', 'essai-laboratoires', 'Essai Laboratoire', 'Essai Laboratoires', NULL, 'App\\EssaiLaboratoire', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 21:30:08', '2022-06-03 21:34:04'),
(22, 'essai_mecaniques', 'essai-mecaniques', 'Essai Mecanique', 'Essai Mecaniques', NULL, 'App\\EssaiMecanique', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 21:43:53', '2022-06-03 21:46:20'),
(23, 'essai_physiques', 'essai-physiques', 'Essai Physique', 'Essai Physiques', NULL, 'App\\EssaiPhysique', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-03 22:00:33', '2022-06-04 21:26:01'),
(24, 'resultat_bleue_mytilenes', 'resultat-bleue-mytilenes', 'Resultat Bleue Mytilene', 'Resultat Bleue Mytilenes', NULL, 'App\\ResultatBleueMytilene', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-04 21:32:52', '2022-06-04 21:35:19'),
(25, 'resultat_equivalent_sable', 'resultat-equivalent-sable', 'Resultat Equivalent Sable', 'Resultat Equivalent Sables', NULL, 'App\\ResultatEquivalentSable', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2022-06-04 21:39:44', '2022-06-04 21:39:44'),
(26, 'resultat_equivalent_sables', 'resultat-equivalent-sables', 'Resultat Equivalent Sable', 'Resultat Equivalent Sables', NULL, 'App\\ResultatEquivalentSable', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2022-06-04 21:42:18', '2022-06-04 21:42:18'),
(27, 'analyse_chimiques', 'analyse-chimiques', 'Analyse Chimique', 'Analyse Chimiques', NULL, 'App\\AnalyseChimique', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-04 22:03:30', '2022-06-04 22:06:44'),
(28, 'permeabilites', 'permeabilites', 'Permeabilite', 'Permeabilites', NULL, 'App\\Permeabilite', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-04 22:34:52', '2022-06-04 22:36:37'),
(29, 'piezometries', 'piezometries', 'Piezometry', 'Piezometries', NULL, 'App\\Piezometry', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-04 22:37:33', '2022-06-04 22:38:36'),
(35, 'resultat_permeabilites', 'resultat-permeabilites', 'Resultat Permeabilite', 'Resultat Permeabilites', NULL, 'App\\ResultatPermeabilite', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-04 22:45:17', '2022-06-04 22:48:12'),
(37, 'resultat_piezometries', 'resultat-piezometries', 'Resultat Piezometry', 'Resultat Piezometries', NULL, 'App\\ResultatPiezometry', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-04 22:50:13', '2022-06-04 22:52:10'),
(38, 'essai_spts', 'essai-spts', 'Essai Spt', 'Essai Spts', NULL, 'App\\EssaiSpt', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-05 13:31:58', '2022-06-05 13:33:39'),
(39, 'resultat_essai_spts', 'resultat-essai-spts', 'Resultat Essai Spt', 'Resultat Essai Spts', NULL, 'App\\ResultatEssaiSpt', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-05 13:36:21', '2022-06-05 13:37:29'),
(41, 'pressiometres', 'pressiometres', 'Pressiometre', 'Pressiometres', NULL, 'App\\Pressiometre', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-05 13:39:45', '2022-06-05 13:40:47'),
(42, 'resultat_pressiometres', 'resultat-pressiometres', 'Resultat Pressiometre', 'Resultat Pressiometres', NULL, 'App\\ResultatPressiometre', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2022-06-05 13:41:58', '2022-06-05 13:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `echantillons`
--

CREATE TABLE `echantillons` (
  `id` int(10) UNSIGNED NOT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_sondage` int(11) NOT NULL,
  `code_echantillon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `echantillons`
--

INSERT INTO `echantillons` (`id`, `profondeur`, `code_sondage`, `code_echantillon`) VALUES
(1, 'fdsfd', 1, 'fsdfdsfs'),
(2, 'fdsafds', 1, 'fadfd'),
(3, '29', 1, 'fsfsadfsdf'),
(4, '40', 2, 'fdadsf');

-- --------------------------------------------------------

--
-- Table structure for table `essai_in_situs`
--

CREATE TABLE `essai_in_situs` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `compage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `essai_in_situs`
--

INSERT INTO `essai_in_situs` (`id`, `date`, `compage_id`) VALUES
(1, '2022-06-08', 1),
(2, NULL, 1),
(3, '2022-06-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `essai_laboratoires`
--

CREATE TABLE `essai_laboratoires` (
  `id` int(10) UNSIGNED NOT NULL,
  `code_echantillon` int(11) NOT NULL,
  `profondeur_prelevement` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_prelevement` date DEFAULT NULL,
  `mode_de_prelevement` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conditions_conservation` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `essai_laboratoires`
--

INSERT INTO `essai_laboratoires` (`id`, `code_echantillon`, `profondeur_prelevement`, `date_prelevement`, `mode_de_prelevement`, `conditions_conservation`) VALUES
(1, 1, 'gfgdfsg', '2022-01-01', 'option2', 'ffddsfsdf'),
(2, 1, NULL, NULL, 'option1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `essai_mecaniques`
--

CREATE TABLE `essai_mecaniques` (
  `id` int(10) UNSIGNED NOT NULL,
  `triaxial` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cisaillement_rectiligne` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oedometre` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gonflement` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traction` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compression_simple` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_essai_laboratoire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `essai_mecaniques`
--

INSERT INTO `essai_mecaniques` (`id`, `triaxial`, `cisaillement_rectiligne`, `oedometre`, `gonflement`, `traction`, `compression_simple`, `code_essai_laboratoire`) VALUES
(1, 'fdfdsf', 'asdfds', 'fdsafads', 'fsdfasd', 'fsdf', 'dsfsdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `essai_physiques`
--

CREATE TABLE `essai_physiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `granulometrie_min` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masse_volumique_yd` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teneur_en_eau_w` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proctor_teneur_en_eau_w` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proctor_teneur_en_eau_yd` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wp` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wl` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_essai_laboratoire` int(11) NOT NULL,
  `granulometrie_max` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essai_spts`
--

CREATE TABLE `essai_spts` (
  `id` int(10) UNSIGNED NOT NULL,
  `code_spt` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `profondeurs` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essai_in_situ_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `essai_spts`
--

INSERT INTO `essai_spts` (`id`, `code_spt`, `date`, `profondeurs`, `essai_in_situ_id`) VALUES
(1, 'adsfsdfd', NULL, NULL, 1);

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
-- Table structure for table `laboratoires`
--

CREATE TABLE `laboratoires` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compagne_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laboratoires`
--

INSERT INTO `laboratoires` (`id`, `nom`, `compagne_id`) VALUES
(1, 'fafdfdsfd', 1),
(2, 'labo1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-06-03 17:27:40', '2022-06-03 17:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2022-06-03 17:27:40', '2022-06-05 15:35:19', 'voyager.profile', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-06-03 17:27:40', '2022-06-05 14:18:19', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-06-03 17:27:40', '2022-06-03 17:27:40', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-06-03 17:27:40', '2022-06-03 17:27:40', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-06-03 17:27:40', '2022-06-05 14:23:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-06-03 17:27:40', '2022-06-05 14:23:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-06-03 17:27:41', '2022-06-05 14:23:05', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-06-03 17:27:41', '2022-06-05 14:23:06', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-06-03 17:27:41', '2022-06-05 14:23:06', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2022-06-03 17:27:41', '2022-06-05 14:23:06', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2022-06-03 17:28:05', '2022-06-05 14:18:20', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2022-06-03 17:28:07', '2022-06-05 14:18:19', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2022-06-03 17:28:08', '2022-06-05 14:18:20', 'voyager.pages.index', NULL),
(15, 1, 'Situations', '', '_self', NULL, NULL, 41, 1, '2022-06-03 17:50:08', '2022-06-05 14:26:25', 'voyager.situations.index', NULL),
(16, 1, 'Projects', '', '_self', NULL, NULL, 41, 3, '2022-06-03 18:01:10', '2022-06-05 14:26:25', 'voyager.projects.index', NULL),
(18, 1, 'Compagnies RG-techs', '', '_self', NULL, '#000000', 41, 2, '2022-06-03 18:39:32', '2022-06-05 15:20:10', 'voyager.compagne-reconnaissance-geotechniques.index', 'null'),
(19, 1, 'Laboratoires', '', '_self', NULL, NULL, 41, 4, '2022-06-03 19:17:44', '2022-06-05 14:26:17', 'voyager.laboratoires.index', NULL),
(21, 1, 'Essai In Situs', '', '_self', NULL, '#000000', 43, 1, '2022-06-03 19:43:57', '2022-06-05 15:09:10', 'voyager.essai-in-situs.index', 'null'),
(22, 1, 'Sondages', '', '_self', NULL, NULL, 42, 1, '2022-06-03 20:10:02', '2022-06-05 14:27:55', 'voyager.sondages.index', NULL),
(23, 1, 'Sondage Resultats', '', '_self', NULL, NULL, 42, 3, '2022-06-03 20:48:30', '2022-06-05 15:09:57', 'voyager.sondage-resultats.index', NULL),
(24, 1, 'Echantillons', '', '_self', NULL, NULL, 42, 2, '2022-06-03 21:13:00', '2022-06-05 15:09:56', 'voyager.echantillons.index', NULL),
(25, 1, 'Essai Laboratoires', '', '_self', NULL, NULL, 43, 10, '2022-06-03 21:30:08', '2022-06-05 15:18:07', 'voyager.essai-laboratoires.index', NULL),
(26, 1, 'Essai Mecaniques', '', '_self', NULL, NULL, 43, 15, '2022-06-03 21:43:53', '2022-06-05 15:18:07', 'voyager.essai-mecaniques.index', NULL),
(27, 1, 'Essai Physiques', '', '_self', NULL, NULL, 43, 11, '2022-06-03 22:00:33', '2022-06-05 15:18:07', 'voyager.essai-physiques.index', NULL),
(28, 1, 'Resultat Bleue Mytilenes', '', '_self', NULL, NULL, 43, 12, '2022-06-04 21:32:52', '2022-06-05 15:18:07', 'voyager.resultat-bleue-mytilenes.index', NULL),
(30, 1, 'Resultat Equivalent Sables', '', '_self', NULL, NULL, 43, 13, '2022-06-04 21:42:18', '2022-06-05 15:18:07', 'voyager.resultat-equivalent-sables.index', NULL),
(31, 1, 'Analyse Chimiques', '', '_self', NULL, NULL, 43, 14, '2022-06-04 22:03:30', '2022-06-05 15:17:25', 'voyager.analyse-chimiques.index', NULL),
(32, 1, 'Permeabilites', '', '_self', NULL, NULL, 43, 2, '2022-06-04 22:34:53', '2022-06-05 15:01:21', 'voyager.permeabilites.index', NULL),
(33, 1, 'Piezometries', '', '_self', NULL, NULL, 43, 4, '2022-06-04 22:37:33', '2022-06-05 15:01:24', 'voyager.piezometries.index', NULL),
(34, 1, 'Resultat Permeabilites', '', '_self', NULL, NULL, 43, 3, '2022-06-04 22:45:17', '2022-06-05 15:01:23', 'voyager.resultat-permeabilites.index', NULL),
(35, 1, 'Resultat Piezometries', '', '_self', NULL, NULL, 43, 5, '2022-06-04 22:50:13', '2022-06-05 15:01:25', 'voyager.resultat-piezometries.index', NULL),
(36, 1, 'Essai Spts', '', '_self', NULL, NULL, 43, 6, '2022-06-05 13:31:58', '2022-06-05 15:01:26', 'voyager.essai-spts.index', NULL),
(37, 1, 'Resultat Essai Spts', '', '_self', NULL, NULL, 43, 7, '2022-06-05 13:36:21', '2022-06-05 15:01:28', 'voyager.resultat-essai-spts.index', NULL),
(38, 1, 'Pressiometres', '', '_self', NULL, NULL, 43, 8, '2022-06-05 13:39:45', '2022-06-05 15:01:29', 'voyager.pressiometres.index', NULL),
(39, 1, 'Resultat Pressiometres', '', '_self', NULL, NULL, 43, 9, '2022-06-05 13:41:58', '2022-06-05 15:01:31', 'voyager.resultat-pressiometres.index', NULL),
(41, 1, 'Les compagnies', '', '_self', 'voyager-company', '#000000', NULL, 10, '2022-06-05 14:25:26', '2022-06-05 15:06:34', NULL, ''),
(42, 1, 'Les Sondages', '', '_self', 'voyager-hammer', '#000000', NULL, 11, '2022-06-05 14:27:39', '2022-06-05 15:07:32', NULL, ''),
(43, 1, 'Les essais', '', '_self', 'voyager-lab', '#000000', NULL, 12, '2022-06-05 14:28:35', '2022-06-05 15:09:01', NULL, '');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-06-03 17:28:08', '2022-06-03 17:28:08');

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
-- Table structure for table `permeabilites`
--

CREATE TABLE `permeabilites` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sondage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permeabilites`
--

INSERT INTO `permeabilites` (`id`, `date`, `type`, `sondage_id`) VALUES
(1, '2022-06-07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(2, 'browse_bread', NULL, '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(3, 'browse_database', NULL, '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(4, 'browse_media', NULL, '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(5, 'browse_compass', NULL, '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(6, 'browse_menus', 'menus', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(7, 'read_menus', 'menus', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(8, 'edit_menus', 'menus', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(9, 'add_menus', 'menus', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(10, 'delete_menus', 'menus', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(11, 'browse_roles', 'roles', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(12, 'read_roles', 'roles', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(13, 'edit_roles', 'roles', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(14, 'add_roles', 'roles', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(15, 'delete_roles', 'roles', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(16, 'browse_users', 'users', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(17, 'read_users', 'users', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(18, 'edit_users', 'users', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(19, 'add_users', 'users', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(20, 'delete_users', 'users', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(21, 'browse_settings', 'settings', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(22, 'read_settings', 'settings', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(23, 'edit_settings', 'settings', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(24, 'add_settings', 'settings', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(25, 'delete_settings', 'settings', '2022-06-03 17:27:42', '2022-06-03 17:27:42'),
(26, 'browse_categories', 'categories', '2022-06-03 17:28:05', '2022-06-03 17:28:05'),
(27, 'read_categories', 'categories', '2022-06-03 17:28:05', '2022-06-03 17:28:05'),
(28, 'edit_categories', 'categories', '2022-06-03 17:28:05', '2022-06-03 17:28:05'),
(29, 'add_categories', 'categories', '2022-06-03 17:28:06', '2022-06-03 17:28:06'),
(30, 'delete_categories', 'categories', '2022-06-03 17:28:06', '2022-06-03 17:28:06'),
(31, 'browse_posts', 'posts', '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(32, 'read_posts', 'posts', '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(33, 'edit_posts', 'posts', '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(34, 'add_posts', 'posts', '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(35, 'delete_posts', 'posts', '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(36, 'browse_pages', 'pages', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(37, 'read_pages', 'pages', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(38, 'edit_pages', 'pages', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(39, 'add_pages', 'pages', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(40, 'delete_pages', 'pages', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(46, 'browse_situations', 'situations', '2022-06-03 17:50:08', '2022-06-03 17:50:08'),
(47, 'read_situations', 'situations', '2022-06-03 17:50:08', '2022-06-03 17:50:08'),
(48, 'edit_situations', 'situations', '2022-06-03 17:50:08', '2022-06-03 17:50:08'),
(49, 'add_situations', 'situations', '2022-06-03 17:50:08', '2022-06-03 17:50:08'),
(50, 'delete_situations', 'situations', '2022-06-03 17:50:08', '2022-06-03 17:50:08'),
(51, 'browse_projects', 'projects', '2022-06-03 18:01:09', '2022-06-03 18:01:09'),
(52, 'read_projects', 'projects', '2022-06-03 18:01:09', '2022-06-03 18:01:09'),
(53, 'edit_projects', 'projects', '2022-06-03 18:01:09', '2022-06-03 18:01:09'),
(54, 'add_projects', 'projects', '2022-06-03 18:01:09', '2022-06-03 18:01:09'),
(55, 'delete_projects', 'projects', '2022-06-03 18:01:09', '2022-06-03 18:01:09'),
(61, 'browse_compagne_reconnaissance_geotechniques', 'compagne_reconnaissance_geotechniques', '2022-06-03 18:39:32', '2022-06-03 18:39:32'),
(62, 'read_compagne_reconnaissance_geotechniques', 'compagne_reconnaissance_geotechniques', '2022-06-03 18:39:32', '2022-06-03 18:39:32'),
(63, 'edit_compagne_reconnaissance_geotechniques', 'compagne_reconnaissance_geotechniques', '2022-06-03 18:39:32', '2022-06-03 18:39:32'),
(64, 'add_compagne_reconnaissance_geotechniques', 'compagne_reconnaissance_geotechniques', '2022-06-03 18:39:32', '2022-06-03 18:39:32'),
(65, 'delete_compagne_reconnaissance_geotechniques', 'compagne_reconnaissance_geotechniques', '2022-06-03 18:39:32', '2022-06-03 18:39:32'),
(66, 'browse_laboratoires', 'laboratoires', '2022-06-03 19:17:44', '2022-06-03 19:17:44'),
(67, 'read_laboratoires', 'laboratoires', '2022-06-03 19:17:44', '2022-06-03 19:17:44'),
(68, 'edit_laboratoires', 'laboratoires', '2022-06-03 19:17:44', '2022-06-03 19:17:44'),
(69, 'add_laboratoires', 'laboratoires', '2022-06-03 19:17:44', '2022-06-03 19:17:44'),
(70, 'delete_laboratoires', 'laboratoires', '2022-06-03 19:17:44', '2022-06-03 19:17:44'),
(76, 'browse_essai_in_situs', 'essai_in_situs', '2022-06-03 19:43:57', '2022-06-03 19:43:57'),
(77, 'read_essai_in_situs', 'essai_in_situs', '2022-06-03 19:43:57', '2022-06-03 19:43:57'),
(78, 'edit_essai_in_situs', 'essai_in_situs', '2022-06-03 19:43:57', '2022-06-03 19:43:57'),
(79, 'add_essai_in_situs', 'essai_in_situs', '2022-06-03 19:43:57', '2022-06-03 19:43:57'),
(80, 'delete_essai_in_situs', 'essai_in_situs', '2022-06-03 19:43:57', '2022-06-03 19:43:57'),
(81, 'browse_sondages', 'sondages', '2022-06-03 20:10:02', '2022-06-03 20:10:02'),
(82, 'read_sondages', 'sondages', '2022-06-03 20:10:02', '2022-06-03 20:10:02'),
(83, 'edit_sondages', 'sondages', '2022-06-03 20:10:02', '2022-06-03 20:10:02'),
(84, 'add_sondages', 'sondages', '2022-06-03 20:10:02', '2022-06-03 20:10:02'),
(85, 'delete_sondages', 'sondages', '2022-06-03 20:10:02', '2022-06-03 20:10:02'),
(86, 'browse_sondage_resultats', 'sondage_resultats', '2022-06-03 20:48:30', '2022-06-03 20:48:30'),
(87, 'read_sondage_resultats', 'sondage_resultats', '2022-06-03 20:48:30', '2022-06-03 20:48:30'),
(88, 'edit_sondage_resultats', 'sondage_resultats', '2022-06-03 20:48:30', '2022-06-03 20:48:30'),
(89, 'add_sondage_resultats', 'sondage_resultats', '2022-06-03 20:48:30', '2022-06-03 20:48:30'),
(90, 'delete_sondage_resultats', 'sondage_resultats', '2022-06-03 20:48:30', '2022-06-03 20:48:30'),
(91, 'browse_echantillons', 'echantillons', '2022-06-03 21:13:00', '2022-06-03 21:13:00'),
(92, 'read_echantillons', 'echantillons', '2022-06-03 21:13:00', '2022-06-03 21:13:00'),
(93, 'edit_echantillons', 'echantillons', '2022-06-03 21:13:00', '2022-06-03 21:13:00'),
(94, 'add_echantillons', 'echantillons', '2022-06-03 21:13:00', '2022-06-03 21:13:00'),
(95, 'delete_echantillons', 'echantillons', '2022-06-03 21:13:00', '2022-06-03 21:13:00'),
(96, 'browse_essai_laboratoires', 'essai_laboratoires', '2022-06-03 21:30:08', '2022-06-03 21:30:08'),
(97, 'read_essai_laboratoires', 'essai_laboratoires', '2022-06-03 21:30:08', '2022-06-03 21:30:08'),
(98, 'edit_essai_laboratoires', 'essai_laboratoires', '2022-06-03 21:30:08', '2022-06-03 21:30:08'),
(99, 'add_essai_laboratoires', 'essai_laboratoires', '2022-06-03 21:30:08', '2022-06-03 21:30:08'),
(100, 'delete_essai_laboratoires', 'essai_laboratoires', '2022-06-03 21:30:08', '2022-06-03 21:30:08'),
(101, 'browse_essai_mecaniques', 'essai_mecaniques', '2022-06-03 21:43:53', '2022-06-03 21:43:53'),
(102, 'read_essai_mecaniques', 'essai_mecaniques', '2022-06-03 21:43:53', '2022-06-03 21:43:53'),
(103, 'edit_essai_mecaniques', 'essai_mecaniques', '2022-06-03 21:43:53', '2022-06-03 21:43:53'),
(104, 'add_essai_mecaniques', 'essai_mecaniques', '2022-06-03 21:43:53', '2022-06-03 21:43:53'),
(105, 'delete_essai_mecaniques', 'essai_mecaniques', '2022-06-03 21:43:53', '2022-06-03 21:43:53'),
(106, 'browse_essai_physiques', 'essai_physiques', '2022-06-03 22:00:33', '2022-06-03 22:00:33'),
(107, 'read_essai_physiques', 'essai_physiques', '2022-06-03 22:00:33', '2022-06-03 22:00:33'),
(108, 'edit_essai_physiques', 'essai_physiques', '2022-06-03 22:00:33', '2022-06-03 22:00:33'),
(109, 'add_essai_physiques', 'essai_physiques', '2022-06-03 22:00:33', '2022-06-03 22:00:33'),
(110, 'delete_essai_physiques', 'essai_physiques', '2022-06-03 22:00:33', '2022-06-03 22:00:33'),
(111, 'browse_resultat_bleue_mytilenes', 'resultat_bleue_mytilenes', '2022-06-04 21:32:52', '2022-06-04 21:32:52'),
(112, 'read_resultat_bleue_mytilenes', 'resultat_bleue_mytilenes', '2022-06-04 21:32:52', '2022-06-04 21:32:52'),
(113, 'edit_resultat_bleue_mytilenes', 'resultat_bleue_mytilenes', '2022-06-04 21:32:52', '2022-06-04 21:32:52'),
(114, 'add_resultat_bleue_mytilenes', 'resultat_bleue_mytilenes', '2022-06-04 21:32:52', '2022-06-04 21:32:52'),
(115, 'delete_resultat_bleue_mytilenes', 'resultat_bleue_mytilenes', '2022-06-04 21:32:52', '2022-06-04 21:32:52'),
(116, 'browse_resultat_equivalent_sable', 'resultat_equivalent_sable', '2022-06-04 21:39:44', '2022-06-04 21:39:44'),
(117, 'read_resultat_equivalent_sable', 'resultat_equivalent_sable', '2022-06-04 21:39:44', '2022-06-04 21:39:44'),
(118, 'edit_resultat_equivalent_sable', 'resultat_equivalent_sable', '2022-06-04 21:39:44', '2022-06-04 21:39:44'),
(119, 'add_resultat_equivalent_sable', 'resultat_equivalent_sable', '2022-06-04 21:39:44', '2022-06-04 21:39:44'),
(120, 'delete_resultat_equivalent_sable', 'resultat_equivalent_sable', '2022-06-04 21:39:44', '2022-06-04 21:39:44'),
(121, 'browse_resultat_equivalent_sables', 'resultat_equivalent_sables', '2022-06-04 21:42:18', '2022-06-04 21:42:18'),
(122, 'read_resultat_equivalent_sables', 'resultat_equivalent_sables', '2022-06-04 21:42:18', '2022-06-04 21:42:18'),
(123, 'edit_resultat_equivalent_sables', 'resultat_equivalent_sables', '2022-06-04 21:42:18', '2022-06-04 21:42:18'),
(124, 'add_resultat_equivalent_sables', 'resultat_equivalent_sables', '2022-06-04 21:42:18', '2022-06-04 21:42:18'),
(125, 'delete_resultat_equivalent_sables', 'resultat_equivalent_sables', '2022-06-04 21:42:18', '2022-06-04 21:42:18'),
(126, 'browse_analyse_chimiques', 'analyse_chimiques', '2022-06-04 22:03:30', '2022-06-04 22:03:30'),
(127, 'read_analyse_chimiques', 'analyse_chimiques', '2022-06-04 22:03:30', '2022-06-04 22:03:30'),
(128, 'edit_analyse_chimiques', 'analyse_chimiques', '2022-06-04 22:03:30', '2022-06-04 22:03:30'),
(129, 'add_analyse_chimiques', 'analyse_chimiques', '2022-06-04 22:03:30', '2022-06-04 22:03:30'),
(130, 'delete_analyse_chimiques', 'analyse_chimiques', '2022-06-04 22:03:30', '2022-06-04 22:03:30'),
(131, 'browse_permeabilites', 'permeabilites', '2022-06-04 22:34:53', '2022-06-04 22:34:53'),
(132, 'read_permeabilites', 'permeabilites', '2022-06-04 22:34:53', '2022-06-04 22:34:53'),
(133, 'edit_permeabilites', 'permeabilites', '2022-06-04 22:34:53', '2022-06-04 22:34:53'),
(134, 'add_permeabilites', 'permeabilites', '2022-06-04 22:34:53', '2022-06-04 22:34:53'),
(135, 'delete_permeabilites', 'permeabilites', '2022-06-04 22:34:53', '2022-06-04 22:34:53'),
(136, 'browse_piezometries', 'piezometries', '2022-06-04 22:37:33', '2022-06-04 22:37:33'),
(137, 'read_piezometries', 'piezometries', '2022-06-04 22:37:33', '2022-06-04 22:37:33'),
(138, 'edit_piezometries', 'piezometries', '2022-06-04 22:37:33', '2022-06-04 22:37:33'),
(139, 'add_piezometries', 'piezometries', '2022-06-04 22:37:33', '2022-06-04 22:37:33'),
(140, 'delete_piezometries', 'piezometries', '2022-06-04 22:37:33', '2022-06-04 22:37:33'),
(141, 'browse_resultat_permeabilites', 'resultat_permeabilites', '2022-06-04 22:45:17', '2022-06-04 22:45:17'),
(142, 'read_resultat_permeabilites', 'resultat_permeabilites', '2022-06-04 22:45:17', '2022-06-04 22:45:17'),
(143, 'edit_resultat_permeabilites', 'resultat_permeabilites', '2022-06-04 22:45:17', '2022-06-04 22:45:17'),
(144, 'add_resultat_permeabilites', 'resultat_permeabilites', '2022-06-04 22:45:17', '2022-06-04 22:45:17'),
(145, 'delete_resultat_permeabilites', 'resultat_permeabilites', '2022-06-04 22:45:17', '2022-06-04 22:45:17'),
(146, 'browse_resultat_piezometries', 'resultat_piezometries', '2022-06-04 22:50:13', '2022-06-04 22:50:13'),
(147, 'read_resultat_piezometries', 'resultat_piezometries', '2022-06-04 22:50:13', '2022-06-04 22:50:13'),
(148, 'edit_resultat_piezometries', 'resultat_piezometries', '2022-06-04 22:50:13', '2022-06-04 22:50:13'),
(149, 'add_resultat_piezometries', 'resultat_piezometries', '2022-06-04 22:50:13', '2022-06-04 22:50:13'),
(150, 'delete_resultat_piezometries', 'resultat_piezometries', '2022-06-04 22:50:13', '2022-06-04 22:50:13'),
(151, 'browse_essai_spts', 'essai_spts', '2022-06-05 13:31:58', '2022-06-05 13:31:58'),
(152, 'read_essai_spts', 'essai_spts', '2022-06-05 13:31:58', '2022-06-05 13:31:58'),
(153, 'edit_essai_spts', 'essai_spts', '2022-06-05 13:31:58', '2022-06-05 13:31:58'),
(154, 'add_essai_spts', 'essai_spts', '2022-06-05 13:31:58', '2022-06-05 13:31:58'),
(155, 'delete_essai_spts', 'essai_spts', '2022-06-05 13:31:58', '2022-06-05 13:31:58'),
(156, 'browse_resultat_essai_spts', 'resultat_essai_spts', '2022-06-05 13:36:21', '2022-06-05 13:36:21'),
(157, 'read_resultat_essai_spts', 'resultat_essai_spts', '2022-06-05 13:36:21', '2022-06-05 13:36:21'),
(158, 'edit_resultat_essai_spts', 'resultat_essai_spts', '2022-06-05 13:36:21', '2022-06-05 13:36:21'),
(159, 'add_resultat_essai_spts', 'resultat_essai_spts', '2022-06-05 13:36:21', '2022-06-05 13:36:21'),
(160, 'delete_resultat_essai_spts', 'resultat_essai_spts', '2022-06-05 13:36:21', '2022-06-05 13:36:21'),
(161, 'browse_pressiometres', 'pressiometres', '2022-06-05 13:39:45', '2022-06-05 13:39:45'),
(162, 'read_pressiometres', 'pressiometres', '2022-06-05 13:39:45', '2022-06-05 13:39:45'),
(163, 'edit_pressiometres', 'pressiometres', '2022-06-05 13:39:45', '2022-06-05 13:39:45'),
(164, 'add_pressiometres', 'pressiometres', '2022-06-05 13:39:45', '2022-06-05 13:39:45'),
(165, 'delete_pressiometres', 'pressiometres', '2022-06-05 13:39:45', '2022-06-05 13:39:45'),
(166, 'browse_resultat_pressiometres', 'resultat_pressiometres', '2022-06-05 13:41:58', '2022-06-05 13:41:58'),
(167, 'read_resultat_pressiometres', 'resultat_pressiometres', '2022-06-05 13:41:58', '2022-06-05 13:41:58'),
(168, 'edit_resultat_pressiometres', 'resultat_pressiometres', '2022-06-05 13:41:58', '2022-06-05 13:41:58'),
(169, 'add_resultat_pressiometres', 'resultat_pressiometres', '2022-06-05 13:41:58', '2022-06-05 13:41:58'),
(170, 'delete_resultat_pressiometres', 'resultat_pressiometres', '2022-06-05 13:41:58', '2022-06-05 13:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
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
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(61, 1),
(61, 2),
(61, 3),
(62, 1),
(62, 2),
(62, 3),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(66, 3),
(67, 1),
(67, 2),
(67, 3),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(76, 1),
(76, 2),
(76, 3),
(77, 1),
(77, 2),
(77, 3),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(81, 3),
(82, 1),
(82, 2),
(82, 3),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(86, 3),
(87, 1),
(87, 2),
(87, 3),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(91, 3),
(92, 1),
(92, 2),
(92, 3),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(96, 3),
(97, 1),
(97, 2),
(97, 3),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(101, 3),
(102, 1),
(102, 2),
(102, 3),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 1),
(106, 2),
(106, 3),
(107, 1),
(107, 2),
(107, 3),
(108, 1),
(108, 2),
(109, 1),
(109, 2),
(110, 1),
(110, 2),
(111, 1),
(111, 2),
(111, 3),
(112, 1),
(112, 2),
(112, 3),
(113, 1),
(113, 2),
(114, 1),
(114, 2),
(115, 1),
(115, 2),
(116, 1),
(116, 2),
(116, 3),
(117, 1),
(117, 2),
(117, 3),
(118, 1),
(118, 2),
(119, 1),
(119, 2),
(120, 1),
(120, 2),
(121, 1),
(121, 2),
(121, 3),
(122, 1),
(122, 2),
(122, 3),
(123, 1),
(123, 2),
(124, 1),
(124, 2),
(125, 1),
(125, 2),
(126, 1),
(126, 2),
(126, 3),
(127, 1),
(127, 2),
(127, 3),
(128, 1),
(128, 2),
(129, 1),
(129, 2),
(130, 1),
(130, 2),
(131, 1),
(131, 2),
(131, 3),
(132, 1),
(132, 2),
(132, 3),
(133, 1),
(133, 2),
(134, 1),
(134, 2),
(135, 1),
(135, 2),
(136, 1),
(136, 2),
(136, 3),
(137, 1),
(137, 2),
(137, 3),
(138, 1),
(138, 2),
(139, 1),
(139, 2),
(140, 1),
(140, 2),
(141, 1),
(141, 2),
(141, 3),
(142, 1),
(142, 2),
(142, 3),
(143, 1),
(143, 2),
(144, 1),
(144, 2),
(145, 1),
(145, 2),
(146, 1),
(146, 2),
(146, 3),
(147, 1),
(147, 2),
(147, 3),
(148, 1),
(148, 2),
(149, 1),
(149, 2),
(150, 1),
(150, 2),
(151, 1),
(151, 2),
(151, 3),
(152, 1),
(152, 2),
(152, 3),
(153, 1),
(153, 2),
(154, 1),
(154, 2),
(155, 1),
(155, 2),
(156, 1),
(156, 2),
(156, 3),
(157, 1),
(157, 2),
(157, 3),
(158, 1),
(158, 2),
(159, 1),
(159, 2),
(160, 1),
(160, 2),
(161, 1),
(161, 2),
(161, 3),
(162, 1),
(162, 2),
(162, 3),
(163, 1),
(163, 2),
(164, 1),
(164, 2),
(165, 1),
(165, 2),
(166, 1),
(166, 2),
(166, 3),
(167, 1),
(167, 2),
(167, 3),
(168, 1),
(168, 2),
(169, 1),
(169, 2),
(170, 1),
(170, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piezometries`
--

CREATE TABLE `piezometries` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `sondage_id` int(11) NOT NULL,
  `profondeur_max` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-03 17:28:07', '2022-06-03 17:28:07'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-03 17:28:08', '2022-06-03 17:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `pressiometres`
--

CREATE TABLE `pressiometres` (
  `id` int(10) UNSIGNED NOT NULL,
  `sondage_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profondeur_max` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duree` text COLLATE utf8mb4_unicode_ci,
  `maitre_de_ouvrage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maitre_de_oeuve` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entreprise_de_realisation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `Nom`, `duree`, `maitre_de_ouvrage`, `maitre_de_oeuve`, `entreprise_de_realisation`, `situation_id`) VALUES
(1, 'fdsaadsf', '12', 'fadfadsf', 'fadsfadsf', 'fadfdsf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resultat_bleue_mytilenes`
--

CREATE TABLE `resultat_bleue_mytilenes` (
  `id` int(10) UNSIGNED NOT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vbs` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essai_physique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultat_equivalent_sables`
--

CREATE TABLE `resultat_equivalent_sables` (
  `id` int(10) UNSIGNED NOT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `es` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essai_physique_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultat_essai_spts`
--

CREATE TABLE `resultat_essai_spts` (
  `id` int(10) UNSIGNED NOT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valeur_nspt` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schultze_menzenbach_e` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skempton_n1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skempton_dr` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essai_spt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultat_permeabilites`
--

CREATE TABLE `resultat_permeabilites` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coefficient_permeabilite_K` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permeabilite_id` int(11) NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unite` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resultat_permeabilites`
--

INSERT INTO `resultat_permeabilites` (`id`, `code`, `profondeur`, `coefficient_permeabilite_K`, `permeabilite_id`, `type`, `unite`) VALUES
(1, 'dfdsfqf', 'fqdsfsd', 'fqsdfsdfsd', 1, 'option1', 'option1');

-- --------------------------------------------------------

--
-- Table structure for table `resultat_piezometries`
--

CREATE TABLE `resultat_piezometries` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `niveau_piezometrique` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `piezometrie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultat_pressiometres`
--

CREATE TABLE `resultat_pressiometres` (
  `id` int(10) UNSIGNED NOT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pression_limite_pl` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pressionde_fluage` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_pl` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_pressiometrique` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coefficient_rheologique` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_de_young` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pressiometre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-06-03 17:27:41', '2022-06-03 17:27:41'),
(2, 'user', 'Geo User', '2022-06-03 17:27:41', '2022-06-05 14:05:14'),
(3, 'Visitor', 'Visitor', '2022-06-05 18:29:33', '2022-06-05 18:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Geo Teck', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Geo Teck', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2022\\oZUgG0XTnueDYS6USYuD.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2022\\QZtGgPXfkxN9a8V0ZEPH.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'GeoTeck', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenue à GEOTECK Le panneau d\'administration de GeoTech', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\June2022\\cIaNv8OVjbLSpIfXw82V.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `situations`
--

CREATE TABLE `situations` (
  `id` int(10) UNSIGNED NOT NULL,
  `wilaya` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commune` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situations`
--

INSERT INTO `situations` (`id`, `wilaya`, `commune`) VALUES
(1, 'Mila', 'mila'),
(2, 'Constantine', 'gmass');

-- --------------------------------------------------------

--
-- Table structure for table `sondages`
--

CREATE TABLE `sondages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code_sondage` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_ana` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `profondeur_max` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `y` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `z` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systeme_de_projection` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_sondage` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essai_in_situ_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sondages`
--

INSERT INTO `sondages` (`id`, `code_sondage`, `code_ana`, `date`, `profondeur_max`, `x`, `y`, `z`, `systeme_de_projection`, `mode_sondage`, `essai_in_situ_id`) VALUES
(1, 'gfg', 'fgfdg', '2022-06-21', 'fgfgsfdgsfdg', 'gsfgf', 'gsfg', 'gfsdg', 'option1', 'option1', 1),
(2, 's11111', 'ana--111', NULL, '6.5', 'fsdf', 'fdsf', 'fsa', 'option1', 'option1', 1),
(3, 'fadsfds', 'fasdfdsf', '2022-06-07', 'fff', '33', '33', '33', 'option1', 'option1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sondage_resultats`
--

CREATE TABLE `sondage_resultats` (
  `id` int(10) UNSIGNED NOT NULL,
  `sondage_id` int(11) DEFAULT NULL,
  `profondeur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lithologie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sondage_resultats`
--

INSERT INTO `sondage_resultats` (`id`, `sondage_id`, `profondeur`, `lithologie`) VALUES
(1, 1, 'fdsaf', 'fdfdsf'),
(2, 1, '122', 'fasdfds');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-06-03 17:28:08', '2022-06-03 17:28:08'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-06-03 17:28:09', '2022-06-03 17:28:09'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-06-03 17:28:10', '2022-06-03 17:28:10'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-06-03 17:28:10', '2022-06-03 17:28:10'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-06-03 17:28:10', '2022-06-03 17:28:10'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-06-03 17:28:10', '2022-06-03 17:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$FLDHQB13yFxiLDtHT1Jb/uPYpvk/v3D9ynW3OvhnVSzjdle4zP/m6', 'WC6pt1Pqh3af9DKYurM86OSLNFYn4ZSMzBw4j4CUC7rDoNSJgIAJe9z5D6ak', NULL, '2022-06-03 17:28:06', '2022-06-03 17:28:06'),
(2, 2, 'User', 'user@user.com', 'users/default.png', NULL, '$2y$10$YWN7rAX4VWLA/a14xRxwSu3CwUpZu.c1itO7.OCODKqAW3j.5YU96', NULL, '{\"locale\":\"fr\"}', '2022-06-05 14:01:37', '2022-06-05 18:15:12'),
(3, 3, 'Visitor', 'visitor@visitor.com', 'users/default.png', NULL, '$2y$10$IJHFDM0WtrJyey.JNyA92.a6tgmjPoJmwCsRQWtKbRgWJQKAW0lqG', NULL, '{\"locale\":\"fr\"}', '2022-06-05 18:30:29', '2022-06-05 18:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2),
(3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analyse_chimiques`
--
ALTER TABLE `analyse_chimiques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analyse_chimiques_essai_laboratoire_id_index` (`essai_laboratoire_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `compagne_reconnaissance_geotechniques`
--
ALTER TABLE `compagne_reconnaissance_geotechniques`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `echantillons`
--
ALTER TABLE `echantillons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `echantillons_code_sondage_index` (`code_sondage`);

--
-- Indexes for table `essai_in_situs`
--
ALTER TABLE `essai_in_situs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essai_in_situs_compage_id_index` (`compage_id`);

--
-- Indexes for table `essai_laboratoires`
--
ALTER TABLE `essai_laboratoires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essai_mecaniques`
--
ALTER TABLE `essai_mecaniques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essai_mecaniques_code_essai_laboratoire_index` (`code_essai_laboratoire`);

--
-- Indexes for table `essai_physiques`
--
ALTER TABLE `essai_physiques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essai_spts`
--
ALTER TABLE `essai_spts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essai_spts_essai_in_situ_id_index` (`essai_in_situ_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `laboratoires`
--
ALTER TABLE `laboratoires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laboratoires_compagne_id_index` (`compagne_id`);

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
-- Indexes for table `permeabilites`
--
ALTER TABLE `permeabilites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permeabilites_sondage_id_index` (`sondage_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `piezometries`
--
ALTER TABLE `piezometries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `pressiometres`
--
ALTER TABLE `pressiometres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pressiometres_sondage_id_index` (`sondage_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_situation_id_index` (`situation_id`);

--
-- Indexes for table `resultat_bleue_mytilenes`
--
ALTER TABLE `resultat_bleue_mytilenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultat_bleue_mytilenes_essai_physique_id_index` (`essai_physique_id`);

--
-- Indexes for table `resultat_equivalent_sables`
--
ALTER TABLE `resultat_equivalent_sables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultat_equivalent_sable_essai_physique_id_index` (`essai_physique_id`);

--
-- Indexes for table `resultat_essai_spts`
--
ALTER TABLE `resultat_essai_spts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultat_essai_spts_essai_spt_id_index` (`essai_spt_id`);

--
-- Indexes for table `resultat_permeabilites`
--
ALTER TABLE `resultat_permeabilites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultat_permeabilite_lefrancs_permeabilite_id_index` (`permeabilite_id`);

--
-- Indexes for table `resultat_piezometries`
--
ALTER TABLE `resultat_piezometries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultat_piezometries_piezometrie_id_index` (`piezometrie_id`);

--
-- Indexes for table `resultat_pressiometres`
--
ALTER TABLE `resultat_pressiometres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resultat_pressiometres_pressiometre_id_index` (`pressiometre_id`);

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
-- Indexes for table `situations`
--
ALTER TABLE `situations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sondages`
--
ALTER TABLE `sondages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sondages_essai_in_situ_id_index` (`essai_in_situ_id`);

--
-- Indexes for table `sondage_resultats`
--
ALTER TABLE `sondage_resultats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sondage_resultats_sondage_id_index` (`sondage_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analyse_chimiques`
--
ALTER TABLE `analyse_chimiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `compagne_reconnaissance_geotechniques`
--
ALTER TABLE `compagne_reconnaissance_geotechniques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `echantillons`
--
ALTER TABLE `echantillons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `essai_in_situs`
--
ALTER TABLE `essai_in_situs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `essai_laboratoires`
--
ALTER TABLE `essai_laboratoires`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `essai_mecaniques`
--
ALTER TABLE `essai_mecaniques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `essai_physiques`
--
ALTER TABLE `essai_physiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essai_spts`
--
ALTER TABLE `essai_spts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratoires`
--
ALTER TABLE `laboratoires`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permeabilites`
--
ALTER TABLE `permeabilites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piezometries`
--
ALTER TABLE `piezometries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pressiometres`
--
ALTER TABLE `pressiometres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resultat_bleue_mytilenes`
--
ALTER TABLE `resultat_bleue_mytilenes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resultat_equivalent_sables`
--
ALTER TABLE `resultat_equivalent_sables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resultat_essai_spts`
--
ALTER TABLE `resultat_essai_spts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resultat_permeabilites`
--
ALTER TABLE `resultat_permeabilites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resultat_piezometries`
--
ALTER TABLE `resultat_piezometries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resultat_pressiometres`
--
ALTER TABLE `resultat_pressiometres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `situations`
--
ALTER TABLE `situations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sondages`
--
ALTER TABLE `sondages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sondage_resultats`
--
ALTER TABLE `sondage_resultats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
