-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2022 at 02:57 AM
-- Server version: 5.7.37-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shrijibaba`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add blog', 7, 'add_blog'),
(26, 'Can change blog', 7, 'change_blog'),
(27, 'Can delete blog', 7, 'delete_blog'),
(28, 'Can view blog', 7, 'view_blog'),
(29, 'Can add brand', 8, 'add_brand'),
(30, 'Can change brand', 8, 'change_brand'),
(31, 'Can delete brand', 8, 'delete_brand'),
(32, 'Can view brand', 8, 'view_brand'),
(33, 'Can add photo_gallery', 9, 'add_photo_gallery'),
(34, 'Can change photo_gallery', 9, 'change_photo_gallery'),
(35, 'Can delete photo_gallery', 9, 'delete_photo_gallery'),
(36, 'Can view photo_gallery', 9, 'view_photo_gallery'),
(37, 'Can add service', 10, 'add_service'),
(38, 'Can change service', 10, 'change_service'),
(39, 'Can delete service', 10, 'delete_service'),
(40, 'Can view service', 10, 'view_service'),
(41, 'Can add shrishyam event', 11, 'add_shrishyamevent'),
(42, 'Can change shrishyam event', 11, 'change_shrishyamevent'),
(43, 'Can delete shrishyam event', 11, 'delete_shrishyamevent'),
(44, 'Can view shrishyam event', 11, 'view_shrishyamevent'),
(45, 'Can add video_gallery', 12, 'add_video_gallery'),
(46, 'Can change video_gallery', 12, 'change_video_gallery'),
(47, 'Can delete video_gallery', 12, 'delete_video_gallery'),
(48, 'Can view video_gallery', 12, 'view_video_gallery'),
(49, 'Can add subscriber newsletter', 13, 'add_subscribernewsletter'),
(50, 'Can change subscriber newsletter', 13, 'change_subscribernewsletter'),
(51, 'Can delete subscriber newsletter', 13, 'delete_subscribernewsletter'),
(52, 'Can view subscriber newsletter', 13, 'view_subscribernewsletter'),
(53, 'Can add post', 14, 'add_post'),
(54, 'Can change post', 14, 'change_post'),
(55, 'Can delete post', 14, 'delete_post'),
(56, 'Can view post', 14, 'view_post');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$M6CPUgEgdEBIm4FC17oq07$UuzhGz3MQ5r9aQ++nBixcvs39p5W8D6QfTf0Mg9mxuY=', '2022-06-16 13:14:51.721661', 1, 'shrishyam-admin', '', '', 'jmbliss63@gmail.com', 1, 1, '2022-06-11 11:51:54.469149');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-13 05:47:30.277891', '1', 'SHRI SHYAM BABA', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-06-13 05:57:05.990496', '1', 'Devotee Care', 1, '[{\"added\": {}}]', 10, 1),
(3, '2022-06-13 05:57:48.612676', '2', 'Goshala', 1, '[{\"added\": {}}]', 10, 1),
(4, '2022-06-13 05:58:24.260507', '3', 'Deity Department', 1, '[{\"added\": {}}]', 10, 1),
(5, '2022-06-13 05:58:55.439297', '4', '24 hours bhajan/kirtan', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-06-13 06:03:09.440442', '1', 'v1', 1, '[{\"added\": {}}]', 12, 1),
(7, '2022-06-13 06:04:07.622277', '2', 'v2', 1, '[{\"added\": {}}]', 12, 1),
(8, '2022-06-13 06:06:51.247277', '3', 'v3', 1, '[{\"added\": {}}]', 12, 1),
(9, '2022-06-13 06:08:00.710092', '4', 'v4', 1, '[{\"added\": {}}]', 12, 1),
(10, '2022-06-13 06:22:44.579783', '1', 'Shri Shyam Baba', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-06-13 06:23:20.530770', '2', 'Shri Shyam Baba', 1, '[{\"added\": {}}]', 7, 1),
(12, '2022-06-13 06:23:46.161104', '3', 'Shri Shyam Baba', 1, '[{\"added\": {}}]', 7, 1),
(13, '2022-06-13 06:38:02.348413', '4', 'Shri Shyam Baba', 1, '[{\"added\": {}}]', 7, 1),
(14, '2022-06-13 06:39:02.179698', '5', 'Shri Shyam Baba', 1, '[{\"added\": {}}]', 7, 1),
(15, '2022-06-13 06:39:48.502300', '6', 'Shri Shyam Baba', 1, '[{\"added\": {}}]', 7, 1),
(16, '2022-06-13 06:41:55.267209', '1', 'p1', 1, '[{\"added\": {}}]', 9, 1),
(17, '2022-06-13 06:42:33.053292', '2', 'p2', 1, '[{\"added\": {}}]', 9, 1),
(18, '2022-06-13 06:43:02.174032', '3', 'p3', 1, '[{\"added\": {}}]', 9, 1),
(19, '2022-06-13 06:43:37.190692', '4', 'p4', 1, '[{\"added\": {}}]', 9, 1),
(20, '2022-06-13 06:45:22.714712', '5', 'p5', 1, '[{\"added\": {}}]', 9, 1),
(21, '2022-06-13 06:45:49.211299', '6', 'p6', 1, '[{\"added\": {}}]', 9, 1),
(22, '2022-06-13 07:21:52.896667', '4', 'v4', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 12, 1),
(23, '2022-06-13 07:22:09.838247', '3', 'v3', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 12, 1),
(24, '2022-06-13 07:22:21.516846', '2', 'v2', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 12, 1),
(25, '2022-06-13 07:23:44.705628', '1', 'v1', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 12, 1),
(26, '2022-06-13 07:26:51.446255', '1', 'v1', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 12, 1),
(27, '2022-06-13 07:27:03.027854', '3', 'v3', 2, '[{\"changed\": {\"fields\": [\"Poster\"]}}]', 12, 1),
(28, '2022-06-13 07:43:33.050758', '1', 'Shri Shyam Baba', 2, '[{\"changed\": {\"fields\": [\"Blog content\"]}}]', 7, 1),
(29, '2022-06-13 07:49:04.225944', '2', 'SHRI JI BABA', 1, '[{\"added\": {}}]', 8, 1),
(30, '2022-06-13 07:57:44.630182', '2', 'SHRI JI BABA', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(31, '2022-06-13 08:12:54.701012', '1', 'SHRI SHYAM BABA', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(32, '2022-06-13 08:20:00.081703', '2', 'SHRI JI BABA', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(33, '2022-06-13 08:23:23.273008', '2', 'SHRI JI BABA', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(34, '2022-06-13 09:17:47.977481', '2', 'SHRI JI BABA', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(35, '2022-06-13 10:00:17.092549', '2', 'SHRI JI BABA', 2, '[]', 8, 1),
(36, '2022-06-15 13:10:32.647614', '6', 'Shri Shyam Baba', 2, '[{\"changed\": {\"fields\": [\"Blogg slug\"]}}]', 7, 1),
(37, '2022-06-15 13:12:26.516997', '2', 'SHRI JI BABA', 2, '[{\"changed\": {\"fields\": [\"Para\"]}}]', 8, 1),
(38, '2022-06-15 13:12:38.507606', '1', 'SHRI SHYAM BABA', 2, '[{\"changed\": {\"fields\": [\"Para\"]}}]', 8, 1),
(39, '2022-06-16 06:31:32.773742', '6', 'Shri Shyam Baba', 2, '[{\"changed\": {\"fields\": [\"Blog status\"]}}]', 7, 1),
(40, '2022-06-16 06:32:13.226559', '5', 'Shri Shyam Baba', 2, '[{\"changed\": {\"fields\": [\"Blogg slug\", \"Blog status\"]}}]', 7, 1),
(41, '2022-06-16 06:32:30.373273', '4', 'Shri Shyam Baba', 2, '[{\"changed\": {\"fields\": [\"Blogg slug\", \"Blog status\"]}}]', 7, 1),
(42, '2022-06-16 06:32:42.047379', '3', 'Shri Shyam Baba', 2, '[{\"changed\": {\"fields\": [\"Blogg slug\", \"Blog status\"]}}]', 7, 1),
(43, '2022-06-16 13:35:03.232159', '6', 'Shri Shyam Baba', 2, '[]', 7, 1),
(44, '2022-06-16 13:35:06.501163', '5', 'Shri Shyam Baba', 2, '[]', 7, 1),
(45, '2022-06-16 13:35:09.768905', '4', 'Shri Shyam Baba', 2, '[]', 7, 1),
(46, '2022-06-16 13:35:12.831510', '3', 'Shri Shyam Baba', 2, '[]', 7, 1),
(47, '2022-06-16 13:36:44.569667', '7', 'blog-16', 1, '[{\"added\": {}}]', 7, 1),
(48, '2022-06-16 13:47:35.970718', '7', 'blog-16', 2, '[]', 7, 1),
(49, '2022-06-16 13:47:39.634167', '6', 'Shri Shyam Baba', 2, '[]', 7, 1),
(50, '2022-06-16 13:49:27.906954', '7', 'blog-16', 2, '[]', 7, 1),
(51, '2022-06-16 13:49:28.098418', '7', 'blog-16', 2, '[]', 7, 1),
(52, '2022-06-16 13:57:56.534545', '7', 'blog-16', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'shrishyam', 'blog'),
(8, 'shrishyam', 'brand'),
(9, 'shrishyam', 'photo_gallery'),
(14, 'shrishyam', 'post'),
(10, 'shrishyam', 'service'),
(11, 'shrishyam', 'shrishyamevent'),
(13, 'shrishyam', 'subscribernewsletter'),
(12, 'shrishyam', 'video_gallery');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-11 11:29:11.338049'),
(2, 'auth', '0001_initial', '2022-06-11 11:29:12.937745'),
(3, 'admin', '0001_initial', '2022-06-11 11:29:13.418475'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-11 11:29:13.428137'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-11 11:29:13.436897'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-11 11:29:13.529143'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-11 11:29:13.546084'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-11 11:29:13.563287'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-11 11:29:13.574028'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-11 11:29:13.614732'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-11 11:29:13.616417'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-11 11:29:13.626687'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-11 11:29:13.642951'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-11 11:29:13.656728'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-11 11:29:13.672197'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-11 11:29:13.681632'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-11 11:29:13.698718'),
(18, 'sessions', '0001_initial', '2022-06-11 11:29:13.910325'),
(19, 'shrishyam', '0001_initial', '2022-06-11 11:29:15.063843'),
(20, 'shrishyam', '0002_alter_brand_para', '2022-06-11 11:29:15.093271'),
(21, 'shrishyam', '0003_brand_slider_button', '2022-06-11 11:29:15.168245'),
(22, 'shrishyam', '0004_brand_slider_button_url', '2022-06-11 11:29:15.235312'),
(23, 'shrishyam', '0005_subscribernewsletter', '2022-06-11 11:29:15.395939'),
(24, 'shrishyam', '0006_photo_gallery_photo_second', '2022-06-11 11:29:15.477282'),
(25, 'shrishyam', '0007_service_publish_date_service_ser_para', '2022-06-11 11:29:15.624757'),
(26, 'shrishyam', '0008_contactform_blog_published_date', '2022-06-11 11:29:15.952413'),
(27, 'shrishyam', '0009_delete_contactform_video_gallery_poster', '2022-06-11 11:29:16.046082'),
(28, 'shrishyam', '0010_video_gallery_dataid', '2022-06-11 11:29:16.117823'),
(29, 'shrishyam', '0011_auto_20220615_1220', '2022-06-15 13:05:41.980922'),
(30, 'shrishyam', '0012_auto_20220615_1232', '2022-06-15 13:05:42.174211'),
(31, 'shrishyam', '0013_rename_blogslug_blog_blogg_slug', '2022-06-15 13:05:42.182240'),
(32, 'shrishyam', '0014_auto_20220615_1343', '2022-06-15 13:43:14.692686'),
(33, 'shrishyam', '0015_rename_slug_blog_blogg_slug', '2022-06-15 13:51:46.025710'),
(34, 'shrishyam', '0016_rename_blogg_slug_blog_slug', '2022-06-16 08:01:45.310498'),
(35, 'shrishyam', '0017_rename_slug_blog_blogg_slug', '2022-06-16 09:16:34.330237'),
(36, 'shrishyam', '0018_alter_blog_blogg_slug', '2022-06-16 11:13:00.836312'),
(37, 'shrishyam', '0019_auto_20220616_1118', '2022-06-16 11:19:05.158204'),
(38, 'shrishyam', '0020_auto_20220616_1152', '2022-06-16 11:52:36.727610'),
(39, 'shrishyam', '0021_post', '2022-06-16 12:34:50.344131'),
(40, 'shrishyam', '0022_alter_post_slug', '2022-06-16 12:50:26.619756'),
(41, 'shrishyam', '0023_delete_post', '2022-06-16 13:06:57.982796'),
(42, 'shrishyam', '0024_post', '2022-06-16 13:09:07.751289'),
(43, 'shrishyam', '0025_auto_20220616_1332', '2022-06-16 13:32:48.732019');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1bsov0orxk4deid0nh19k1r3jxzzj2cz', '.eJxVjMsOwiAQRf-FtSHAIGVcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQovT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_fmpB5ACyonTGO0LJP1kRbvMoMJjp0ylsFnODMHpMuDjUZABxIMxbx_gDSMzdQ:1o1kib:7A5dUWx3JBHQFKBZ-fidj9wmsCcFBufjwuMsrXzkYbA', '2022-06-30 08:19:09.380802'),
('66wvhf7iqid00ux78urvq4erd6bllifl', '.eJxVjMsOwiAQRf-FtSHAIGVcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQovT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_fmpB5ACyonTGO0LJP1kRbvMoMJjp0ylsFnODMHpMuDjUZABxIMxbx_gDSMzdQ:1o1pKl:QMnvY6Fe83dqAlmKT14411KFUkoymyBWnqqlgL43nt8', '2022-06-30 13:14:51.724344'),
('6b4rkfmokxh460ltucfcgb3cnbpm620k', '.eJxVjMEOwiAQRP-FsyELZQv16L3fQJYFpGpoUtqT8d9tkx70OPPezFt42tbit5YWP0VxFUpcfrtA_Ez1APFB9T5Lnuu6TEEeijxpk-Mc0-t2un8HhVrZ1w5csgnJWiTuFSnXse47TtoC054RnTEmM2oVQ8ScAViDYxgGIKXF5wvT2DdV:1o0gZf:zhtv_8UQALrVzhfAK8PM1O_IrT8DFSz0_se3dxew9Fg', '2022-06-27 09:41:31.026239'),
('bupoko9ojxxsf0wklt8jzh1v4bclz8zg', '.eJxVjMsOwiAQRf-FtSHAIGVcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQovT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_fmpB5ACyonTGO0LJP1kRbvMoMJjp0ylsFnODMHpMuDjUZABxIMxbx_gDSMzdQ:1o1Sm3:-0RKlz6LTWoY--ggPR8r3Lr-dl2DecIH7TJCcA-dIy8', '2022-06-29 13:09:31.071692'),
('i5s2w6micoekxit4u5co64acpl9q5h5y', '.eJxVjMEOwiAQRP-FsyELZQv16L3fQJYFpGpoUtqT8d9tkx70OPPezFt42tbit5YWP0VxFUpcfrtA_Ez1APFB9T5Lnuu6TEEeijxpk-Mc0-t2un8HhVrZ1w5csgnJWiTuFSnXse47TtoC054RnTEmM2oVQ8ScAViDYxgGIKXF5wvT2DdV:1o01Ua:qMa_90R-A1omyUV96k9epueoRXgZsFhTK5VzFElrSew', '2022-06-25 13:49:32.400865'),
('lpiaqop0fffhot3tasyu60cj6srwsq3v', '.eJxVjMsOwiAQRf-FtSHAIGVcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQovT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_fmpB5ACyonTGO0LJP1kRbvMoMJjp0ylsFnODMHpMuDjUZABxIMxbx_gDSMzdQ:1o1j25:_f8yOTAmTgbbbrXAf4d9gITmw41ZNeyqckoPcfxnga0', '2022-06-30 06:31:09.764844'),
('tcwn02uszfv0hlvzkxhj9lct1pl8sbz0', '.eJxVjMsOwiAQRf-FtSHAIGVcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQovT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_fmpB5ACyonTGO0LJP1kRbvMoMJjp0ylsFnODMHpMuDjUZABxIMxbx_gDSMzdQ:1o1nT5:dHhk9QrOfRuqu_-I06oGoBXFMDVxXOX0QKFeRWRtQdo', '2022-06-30 11:15:19.458073'),
('vcsm1kl7qw7e745z5qpa79ug0ll7ht55', '.eJxVjMEOwiAQRP-FsyELZQv16L3fQJYFpGpoUtqT8d9tkx70OPPezFt42tbit5YWP0VxFUpcfrtA_Ez1APFB9T5Lnuu6TEEeijxpk-Mc0-t2un8HhVrZ1w5csgnJWiTuFSnXse47TtoC054RnTEmM2oVQ8ScAViDYxgGIKXF5wvT2DdV:1o0ckM:UeXzVut3wUDlnhi571KHtlvfLEVLGkUXCV26mv59O_g', '2022-06-27 05:36:18.872490');

-- --------------------------------------------------------

--
-- Table structure for table `newsform`
--

CREATE TABLE `newsform` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsform`
--

INSERT INTO `newsform` (`id`, `name`, `email`) VALUES
(1, 'Hello', 'Hello@milo.com');

-- --------------------------------------------------------

--
-- Table structure for table `shrishyam_blog`
--

CREATE TABLE `shrishyam_blog` (
  `id` bigint(20) NOT NULL,
  `blog_img` varchar(100) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_content` longtext NOT NULL,
  `published_date` date NOT NULL,
  `blogg_slug` varchar(50) DEFAULT NULL,
  `blog_btn_url` varchar(100) DEFAULT NULL,
  `blog_status` varchar(50) NOT NULL,
  `blog_autoslug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shrishyam_blog`
--

INSERT INTO `shrishyam_blog` (`id`, `blog_img`, `blog_title`, `blog_content`, `published_date`, `blogg_slug`, `blog_btn_url`, `blog_status`, `blog_autoslug`) VALUES
(1, 'blog_img/bs4_N8G71O3.jpg', 'Shri Shyam Baba', 'There is another, only slightly different version of this legend. Roopsingh Chauhan was the ruler of Khatu. His wife, Narmada Kanwar, once had a dream in which the deity instructed her to take his image out of the earth.', '2022-06-13', NULL, NULL, 'draft', NULL),
(2, 'blog_img/Khatu-Shyam-Ji-Wallpaper-Hd-Quality_fTulijg.jpg', 'Shri Shyam Baba', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.', '2022-06-13', NULL, NULL, 'draft', NULL),
(3, 'blog_img/shrishyam_ji_photo_-_3_gwP52y7.jpg', 'Shri Shyam Baba', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.', '2022-06-16', 'shri-shyam-baba-3', NULL, 'draft', NULL),
(4, 'blog_img/shrishyam_ji_photo_-_4_hcN1rck.jpg', 'Shri Shyam Baba', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.', '2022-06-16', 'shri-shyam-baba-2', NULL, 'draft', NULL),
(5, 'blog_img/vd-poster2_V1VEInU.jpg', 'Shri Shyam Baba', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.', '2022-06-16', 'shri-shyam-baba-1', NULL, 'draft', NULL),
(6, 'blog_img/bs4_0JDUUT2.jpg', 'Shri Shyam Baba', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.', '2022-06-16', 'shri-shyam-baba', NULL, 'draft', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shrishyam_brand`
--

CREATE TABLE `shrishyam_brand` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `para` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `slider_button` varchar(50) DEFAULT NULL,
  `slider_button_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shrishyam_brand`
--

INSERT INTO `shrishyam_brand` (`id`, `title`, `para`, `image`, `slider_button`, `slider_button_url`) VALUES
(1, 'SHRI SHYAM BABA', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India.', 'brand_imgs/s1.png', 'Live Darshan', 'http://www.shrishyambaba.com'),
(2, 'SHRI JI BABA', 'There is another, only slightly different version of this legend. Roopsingh Chauhan was the ruler of Khatu.', 'brand_imgs/s4.jpg', 'Live Darshan', 'http://www.shrishyambaba.com');

-- --------------------------------------------------------

--
-- Table structure for table `shrishyam_photo_gallery`
--

CREATE TABLE `shrishyam_photo_gallery` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `photo_second` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shrishyam_photo_gallery`
--

INSERT INTO `shrishyam_photo_gallery` (`id`, `photo`, `photo_name`, `photo_second`) VALUES
(1, 'photos/Khatu-Shyam-Ji-Wallpaper-Hd-Quality_UYBAsOg.jpg', 'p1', 'second_row_image/shrishyam_ji_photo_-2_V3Gl8Tq.jpg'),
(2, 'photos/shrishyam_ji_photo_-_3_UfTHo8m.jpg', 'p2', 'second_row_image/shrishyam_ji_photo_-_5_VVmuhx6.jpg'),
(3, 'photos/shrishyam_ji_photo_-_4_7tgNrgZ.jpg', 'p3', 'second_row_image/shrishyam_ji_photo_-_4_mfGzOHl.jpg'),
(4, 'photos/shrishyam_ji_photo_-_5_xUfRY4U.jpg', 'p4', 'second_row_image/shrishyam_ji_photo_-_3_8x2JXZx_TulJ52r.jpg'),
(5, 'photos/shrishyam_ji_photo_-2_Y934gnX.jpg', 'p5', 'second_row_image/Khatu-Shyam-Ji-Wallpaper-Hd-Quality_V23lm96.jpg'),
(6, 'photos/shrishyam_ji_photo_-_6_1678Vhg.jpg', 'p6', 'second_row_image/shrishyam_ji_photo_-_3_ahdykNK.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shrishyam_service`
--

CREATE TABLE `shrishyam_service` (
  `id` bigint(20) NOT NULL,
  `ser_img` varchar(100) NOT NULL,
  `ser_title` varchar(100) NOT NULL,
  `ser_btn_txt` varchar(20) NOT NULL,
  `ser_btn_url` varchar(100) NOT NULL,
  `publish_date` date NOT NULL,
  `ser_para` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shrishyam_service`
--

INSERT INTO `shrishyam_service` (`id`, `ser_img`, `ser_title`, `ser_btn_txt`, `ser_btn_url`, `publish_date`, `ser_para`) VALUES
(1, 'service_imgs/Khatu-Shyam-Ji-Wallpaper-Hd-Quality_MgkrgvB.jpg', 'Devotee Care', 'View more', 'https://shrishyambaba.com/', '2022-06-13', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.'),
(2, 'service_imgs/shrishyam_ji_photo_-_3_sz2J10O.jpg', 'Goshala', 'View more', 'https://shrishyambaba.com/', '2022-06-13', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.'),
(3, 'service_imgs/shrishyam_ji_photo_-_4_FF95uJ6.jpg', 'Deity Department', 'View more', 'https://shrishyambaba.com/', '2022-06-13', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.'),
(4, 'service_imgs/shrishyam_ji_photo_-2_z1pQOIz.jpg', '24 hours bhajan/kirtan', 'View more', 'https://shrishyambaba.com/', '2022-06-13', 'The Khatushyam Temple is a Hindu temple in the village of Khatushyamji, Rajasthan, India. It is a pilgrimage site for worshipping the deity Krishna and Barbarika who is often venerated as a Kuladevata.');

-- --------------------------------------------------------

--
-- Table structure for table `shrishyam_shrishyamevent`
--

CREATE TABLE `shrishyam_shrishyamevent` (
  `id` bigint(20) NOT NULL,
  `ev_title` varchar(100) NOT NULL,
  `ev_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shrishyam_video_gallery`
--

CREATE TABLE `shrishyam_video_gallery` (
  `id` bigint(20) NOT NULL,
  `video` varchar(100) NOT NULL,
  `video_name` varchar(100) NOT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `dataid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shrishyam_video_gallery`
--

INSERT INTO `shrishyam_video_gallery` (`id`, `video`, `video_name`, `poster`, `dataid`) VALUES
(1, 'videos/y2matecom-jai-shree-shyam-hare-2021-shri-shyam-aarti-new-aarti_G092q4K8_oAnMQTw.mp4', 'v1', 'poster/shrishyam_ji_photo_-_4.jpg', 1),
(2, 'videos/y2matecom-jai-shree-shyam-hare-2021-shri-shyam-aarti-new-aarti_G092q4K8_G9POI8u.mp4', 'v2', 'poster/vd-poster3_rP53HlD.jpg', 2),
(3, 'videos/y2matecom-jai-shree-shyam-hare-2021-shri-shyam-aarti-new-aarti_G092q4K8_DeuQ6Ut.mp4', 'v3', 'poster/shrishyam_ji_photo_-_3.jpg', 3),
(4, 'videos/y2matecom-jai-shree-shyam-hare-2021-shri-shyam-aarti-new-aarti_G092q4K8_xsF2fjQ.mp4', 'v4', 'poster/vd-poster_WoKLQ4Z.jpg', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `newsform`
--
ALTER TABLE `newsform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrishyam_blog`
--
ALTER TABLE `shrishyam_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shrishyam_blog_blogg_slug_f0b19785_uniq` (`blogg_slug`),
  ADD UNIQUE KEY `blog_autoslug` (`blog_autoslug`);

--
-- Indexes for table `shrishyam_brand`
--
ALTER TABLE `shrishyam_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrishyam_photo_gallery`
--
ALTER TABLE `shrishyam_photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrishyam_service`
--
ALTER TABLE `shrishyam_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrishyam_shrishyamevent`
--
ALTER TABLE `shrishyam_shrishyamevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shrishyam_video_gallery`
--
ALTER TABLE `shrishyam_video_gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `newsform`
--
ALTER TABLE `newsform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shrishyam_blog`
--
ALTER TABLE `shrishyam_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shrishyam_brand`
--
ALTER TABLE `shrishyam_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shrishyam_photo_gallery`
--
ALTER TABLE `shrishyam_photo_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shrishyam_service`
--
ALTER TABLE `shrishyam_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shrishyam_shrishyamevent`
--
ALTER TABLE `shrishyam_shrishyamevent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shrishyam_video_gallery`
--
ALTER TABLE `shrishyam_video_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
