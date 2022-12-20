-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 05:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `best_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app5_cart_tb`
--

CREATE TABLE `app5_cart_tb` (
  `id` bigint(20) NOT NULL,
  `totalamount` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pid_id` bigint(20) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_cart_tb`
--

INSERT INTO `app5_cart_tb` (`id`, `totalamount`, `quantity`, `status`, `pid_id`, `uid_id`) VALUES
(6, '715.0', '1', 'paid', 17, 5),
(7, '1320.0', '1', 'paid', 18, 5),
(8, '2170.0', '3', 'paid', 21, 5),
(9, '1375.0', '1', 'paid', 19, 5),
(11, '550.0', '1', 'paid', 16, 5),
(12, '1320.0', '1', 'pending', 18, 5),
(13, '550.0', '1', 'paid', 16, 1),
(14, '715.0', '1', 'paid', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app5_paymnt_tb`
--

CREATE TABLE `app5_paymnt_tb` (
  `id` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `total` varchar(255) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_paymnt_tb`
--

INSERT INTO `app5_paymnt_tb` (`id`, `status`, `date`, `time`, `total`, `uid_id`) VALUES
(1, 'paid', '2022-11-28', '09:57:09.605703', '6130.0', 5),
(2, 'paid', '2022-11-29', '09:30:15.084516', '1265.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app5_pay_tb`
--

CREATE TABLE `app5_pay_tb` (
  `id` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `total` varchar(255) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app5_pro_tb`
--

CREATE TABLE `app5_pro_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_pro_tb`
--

INSERT INTO `app5_pro_tb` (`id`, `name`, `price`, `desc`, `image`, `gender`, `category`) VALUES
(14, 'bangles', '130', 'Vel illum qui dolorem.', 'product/bangles_l8Ltx3e.jpg', 'Kids', 'accesseries'),
(15, 'chocker', '250', ' Vel illum qui dolorem eum fugiat. ', 'product/chocker.jpg', 'Female', 'accesseries'),
(16, 'shirt', '500', 'Vel illum qui dolorem.', 'product/shirt.jpg', 'Male', 'clothing'),
(17, ' Shoes', '650', 'Casual men\'s shoes', 'product/shoes.jpg', 'Male', 'shoes'),
(18, 'Wallets', '1200', 'stylish wallets', 'product/wallets.jpg', 'Male', 'Wallets'),
(19, 'watch', '1250', 'men\'s watch', 'product/watch.jpg', 'Male', 'watch'),
(20, 'Bag', '800', 'side bags ', 'product/bag.jpg', 'Female', 'bag'),
(21, 'BLAZER ', '700', 'stylish men\'s blazer', 'product/coat.jpg', 'Male', 'clothing');

-- --------------------------------------------------------

--
-- Table structure for table `app5_register_tb`
--

CREATE TABLE `app5_register_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `hashpass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_register_tb`
--

INSERT INTO `app5_register_tb` (`id`, `name`, `password`, `email`, `phone`, `hashpass`) VALUES
(1, 'anusha', 'ab', 'ab@F', '123456', '0'),
(2, 'DFGH', 'fhju', 'dfgh@b', '76543', '0'),
(3, 'ghnjmkl', 'dfg', 'asdf@df', '7654', '0'),
(4, 'anusha', 'an', 'anu@s', '456789', '0'),
(5, 'anusha', 'an', 'anu@s', '456789', '0'),
(6, 'annn', 'a123', 'an@nn', '2345678', '0'),
(7, 'annn', 'a123', 'an@nn', '2345678', '0'),
(8, 'ann', 'a123', 'an@nn', '123456', '0'),
(9, 'a1', 'a11', 'a1@2', '12345', '0'),
(10, 'a1', 'a11', 'a1@2', '0987654', '0'),
(11, 'an', '12', 'an@1', '12345', '0'),
(12, 'an', '12', 'an@1', '12345', '0'),
(13, 'an', '12', 'an@1', '12345', '0'),
(14, 'anu', 'aa', '12@1', '12345', '0'),
(15, 'akshay', '123', 'akshaymanoj87@gmail.com', '7736460740', '0'),
(17, 'Akshay Manoj', '123', 'akshay_manoj@btrac.in', '7736460740', '0'),
(18, 'arshi', '123', 'arshi@1', '9876', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `app5_signup_tb`
--

CREATE TABLE `app5_signup_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_signup_tb`
--

INSERT INTO `app5_signup_tb` (`id`, `name`, `password`, `email`, `phone`) VALUES
(1, 'ann', '12', 'a@1', '12345'),
(2, 'test', 'pa', 'an@1', '23456'),
(3, 'test', '123', 'test@1', '22345'),
(4, 'ann', 'ann1', 'ann@1', '12345'),
(5, 'vish', 'v11', 'vi@', '12345'),
(6, 'roo', 'rj', 'ro@o', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add register_tb', 7, 'add_register_tb'),
(26, 'Can change register_tb', 7, 'change_register_tb'),
(27, 'Can delete register_tb', 7, 'delete_register_tb'),
(28, 'Can view register_tb', 7, 'view_register_tb'),
(29, 'Can add login_tb', 8, 'add_login_tb'),
(30, 'Can change login_tb', 8, 'change_login_tb'),
(31, 'Can delete login_tb', 8, 'delete_login_tb'),
(32, 'Can view login_tb', 8, 'view_login_tb'),
(33, 'Can add signup_tb', 9, 'add_signup_tb'),
(34, 'Can change signup_tb', 9, 'change_signup_tb'),
(35, 'Can delete signup_tb', 9, 'delete_signup_tb'),
(36, 'Can view signup_tb', 9, 'view_signup_tb'),
(37, 'Can add pro_tb', 10, 'add_pro_tb'),
(38, 'Can change pro_tb', 10, 'change_pro_tb'),
(39, 'Can delete pro_tb', 10, 'delete_pro_tb'),
(40, 'Can view pro_tb', 10, 'view_pro_tb'),
(41, 'Can add cart_tb', 11, 'add_cart_tb'),
(42, 'Can change cart_tb', 11, 'change_cart_tb'),
(43, 'Can delete cart_tb', 11, 'delete_cart_tb'),
(44, 'Can view cart_tb', 11, 'view_cart_tb'),
(45, 'Can add pay_tb', 12, 'add_pay_tb'),
(46, 'Can change pay_tb', 12, 'change_pay_tb'),
(47, 'Can delete pay_tb', 12, 'delete_pay_tb'),
(48, 'Can view pay_tb', 12, 'view_pay_tb'),
(49, 'Can add paymnt_tb', 13, 'add_paymnt_tb'),
(50, 'Can change paymnt_tb', 13, 'change_paymnt_tb'),
(51, 'Can delete paymnt_tb', 13, 'delete_paymnt_tb'),
(52, 'Can view paymnt_tb', 13, 'view_paymnt_tb'),
(53, 'Can add order_tb', 14, 'add_order_tb'),
(54, 'Can change order_tb', 14, 'change_order_tb'),
(55, 'Can delete order_tb', 14, 'delete_order_tb'),
(56, 'Can view order_tb', 14, 'view_order_tb');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'app5', 'cart_tb'),
(8, 'app5', 'login_tb'),
(14, 'app5', 'order_tb'),
(13, 'app5', 'paymnt_tb'),
(12, 'app5', 'pay_tb'),
(10, 'app5', 'pro_tb'),
(7, 'app5', 'register_tb'),
(9, 'app5', 'signup_tb'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-10 04:27:15.068021'),
(2, 'auth', '0001_initial', '2022-11-10 04:27:22.516080'),
(3, 'admin', '0001_initial', '2022-11-10 04:27:24.000434'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-10 04:27:24.062968'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-10 04:27:24.203613'),
(6, 'app5', '0001_initial', '2022-11-10 04:27:24.531935'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-11-10 04:27:25.503073'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-11-10 04:27:26.161428'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-11-10 04:27:26.348757'),
(10, 'auth', '0004_alter_user_username_opts', '2022-11-10 04:27:26.395665'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-11-10 04:27:26.973933'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-11-10 04:27:27.029650'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-10 04:27:27.076562'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-11-10 04:27:27.154902'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-10 04:27:27.279860'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-11-10 04:27:27.420550'),
(17, 'auth', '0011_update_proxy_permissions', '2022-11-10 04:27:27.623473'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-10 04:27:28.108196'),
(19, 'sessions', '0001_initial', '2022-11-10 04:27:28.670791'),
(20, 'app5', '0002_login_tb_signup_tb', '2022-11-11 06:26:38.133645'),
(21, 'app5', '0003_pro_tb', '2022-11-15 05:00:28.217260'),
(22, 'app5', '0004_pro_tb_category_alter_pro_tb_image', '2022-11-21 04:44:01.585947'),
(23, 'app5', '0005_cart_tb', '2022-11-22 05:16:41.856929'),
(24, 'app5', '0006_pay_tb_delete_login_tb_alter_cart_tb_quantity', '2022-11-25 05:29:25.914752'),
(25, 'app5', '0002_order_tb', '2022-11-28 04:46:31.517176'),
(26, 'app5', '0003_delete_order_tb_register_tb_hashpass', '2022-11-29 04:52:32.423028');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8ow4anjs5z38lbocgq2t0mq6ajr8xh11', 'eyJpZDEiOjYsIm5hbWUxIjoicm9vIiwibXlpZCI6NSwibXluYW1lIjoiYW51c2hhIn0:1oy3jw:EwcUC4AhCZgq5waPFaXO77B3kCQFzDp3u04pfhztX3c', '2022-12-08 04:21:32.604465'),
('d9gh50cw4vrj7fdj60pdax6xxfas1se7', 'eyJpZDEiOjYsIm5hbWUxIjoicm9vIiwibXlpZCI6MTgsIm15bmFtZSI6ImFyc2hpIn0:1ozsvY:vymcZyfLYdijZcJgo3wrb4MAOXbRXutftgbYIss4swk', '2022-12-13 05:13:04.510054');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app5_cart_tb`
--
ALTER TABLE `app5_cart_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app5_cart_tb_pid_id_f13ea751_fk_app5_pro_tb_id` (`pid_id`),
  ADD KEY `app5_cart_tb_uid_id_0188df19_fk_app5_register_tb_id` (`uid_id`);

--
-- Indexes for table `app5_paymnt_tb`
--
ALTER TABLE `app5_paymnt_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app5_pay_tb`
--
ALTER TABLE `app5_pay_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app5_pay_tb_uid_id_fa5558ed_fk_app5_register_tb_id` (`uid_id`);

--
-- Indexes for table `app5_pro_tb`
--
ALTER TABLE `app5_pro_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app5_register_tb`
--
ALTER TABLE `app5_register_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app5_signup_tb`
--
ALTER TABLE `app5_signup_tb`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app5_cart_tb`
--
ALTER TABLE `app5_cart_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `app5_paymnt_tb`
--
ALTER TABLE `app5_paymnt_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app5_pay_tb`
--
ALTER TABLE `app5_pay_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app5_pro_tb`
--
ALTER TABLE `app5_pro_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `app5_register_tb`
--
ALTER TABLE `app5_register_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `app5_signup_tb`
--
ALTER TABLE `app5_signup_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app5_cart_tb`
--
ALTER TABLE `app5_cart_tb`
  ADD CONSTRAINT `app5_cart_tb_pid_id_f13ea751_fk_app5_pro_tb_id` FOREIGN KEY (`pid_id`) REFERENCES `app5_pro_tb` (`id`),
  ADD CONSTRAINT `app5_cart_tb_uid_id_0188df19_fk_app5_register_tb_id` FOREIGN KEY (`uid_id`) REFERENCES `app5_register_tb` (`id`);

--
-- Constraints for table `app5_pay_tb`
--
ALTER TABLE `app5_pay_tb`
  ADD CONSTRAINT `app5_pay_tb_uid_id_fa5558ed_fk_app5_register_tb_id` FOREIGN KEY (`uid_id`) REFERENCES `app5_register_tb` (`id`);

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
