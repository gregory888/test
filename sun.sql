-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2017 at 08:34 AM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sun`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add Планета', 7, 'add_planet'),
(20, 'Can change Планета', 7, 'change_planet'),
(21, 'Can delete Планета', 7, 'delete_planet'),
(22, 'Can add Джедай', 8, 'add_jedi'),
(23, 'Can change Джедай', 8, 'change_jedi'),
(24, 'Can delete Джедай', 8, 'delete_jedi'),
(25, 'Can add Результат теста', 9, 'add_testresult'),
(26, 'Can change Результат теста', 9, 'change_testresult'),
(27, 'Can delete Результат теста', 9, 'delete_testresult'),
(28, 'Can add Тест', 10, 'add_test'),
(29, 'Can change Тест', 10, 'change_test'),
(30, 'Can delete Тест', 10, 'delete_test'),
(31, 'Can add Кандидат', 11, 'add_candidate'),
(32, 'Can change Кандидат', 11, 'change_candidate'),
(33, 'Can delete Кандидат', 11, 'delete_candidate'),
(34, 'Can add Орден', 12, 'add_knighthood'),
(35, 'Can change Орден', 12, 'change_knighthood'),
(36, 'Can delete Орден', 12, 'delete_knighthood');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$vXVqO193VjjR$a530C7N+dO++sadA0vgquc5H7Tqc5wY9lYfpg6WB+dM=', '2017-05-01 17:12:21.666209', 1, 'admin', '', '', 'go@sh.aa', 1, 1, '2017-05-01 17:08:10.001272');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `knighthood_id` int(11) DEFAULT NULL,
  `planet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `age`, `email`, `knighthood_id`, `planet_id`) VALUES
(1, 'One', 99, 'dd@dd.dd', 3, 2),
(2, 'Second', 33, 'qq@qq.qq', NULL, 2),
(3, 'Third', 50, 'dd@dd.dd', NULL, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-05-01 17:14:01.927142', '1', 'Mars', 1, '[{\"added\": {}}]', 7, 1),
(2, '2017-05-01 17:14:21.244624', '2', 'Earth', 1, '[{\"added\": {}}]', 7, 1),
(3, '2017-05-01 17:15:18.920933', '1', 'Alpha', 1, '[{\"added\": {}}]', 12, 1),
(4, '2017-05-01 17:15:36.737736', '2', 'Betta', 1, '[{\"added\": {}}]', 12, 1),
(5, '2017-05-01 17:16:01.487113', '3', 'Gamma', 1, '[{\"added\": {}}]', 12, 1),
(6, '2017-05-01 17:18:24.045035', '1', 'Roggozin', 1, '[{\"added\": {}}]', 8, 1),
(7, '2017-05-01 17:19:03.713767', '2', 'Bad Chubbaika', 1, '[{\"added\": {}}]', 8, 1),
(8, '2017-05-01 17:19:23.228149', '1', 'Roggozin', 2, '[{\"changed\": {\"fields\": [\"planet\"]}}]', 8, 1),
(9, '2017-05-01 17:23:41.588611', '1', 'Swift simple', 1, '[{\"added\": {}}]', 10, 1),
(10, '2017-05-01 17:24:22.451029', '1', 'Swift simple', 2, '[{\"changed\": {\"fields\": [\"knighthood\"]}}]', 10, 1),
(11, '2017-05-02 17:15:26.179477', '1', 'Swift simple', 2, '[{\"changed\": {\"fields\": [\"question4\", \"question5\"]}}]', 10, 1),
(12, '2017-05-02 17:16:42.897516', '1', 'Swift simple', 2, '[{\"changed\": {\"fields\": [\"question2\"]}}]', 10, 1),
(13, '2017-05-02 18:34:22.944492', '1', 'One, возраст: 99', 2, '[{\"changed\": {\"fields\": [\"planet\"]}}]', 11, 1),
(14, '2017-05-02 18:47:38.124472', '1', 'Тест: Swift simple, кандидат: Second, возраст: 33', 3, '', 9, 1),
(15, '2017-05-03 05:21:53.444522', '3', 'Third, возраст: 50', 2, '[{\"changed\": {\"fields\": [\"planet\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'earth', 'candidate'),
(8, 'earth', 'jedi'),
(12, 'earth', 'knighthood'),
(7, 'earth', 'planet'),
(10, 'earth', 'test'),
(9, 'earth', 'testresult'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-05-01 17:07:40.288926'),
(2, 'auth', '0001_initial', '2017-05-01 17:07:42.034729'),
(3, 'admin', '0001_initial', '2017-05-01 17:07:42.551139'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-05-01 17:07:42.642332'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-05-01 17:07:42.966160'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-05-01 17:07:43.171235'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-05-01 17:07:43.369357'),
(8, 'auth', '0004_alter_user_username_opts', '2017-05-01 17:07:43.424674'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-05-01 17:07:43.606925'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-05-01 17:07:43.619941'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-05-01 17:07:43.681640'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-05-01 17:07:43.917058'),
(13, 'earth', '0001_initial', '2017-05-01 17:07:45.908687'),
(14, 'sessions', '0001_initial', '2017-05-01 17:07:46.026095'),
(15, 'earth', '0002_auto_20170501_1722', '2017-05-01 17:22:15.651206'),
(16, 'earth', '0003_auto_20170502_1622', '2017-05-02 16:22:52.578570'),
(17, 'earth', '0004_auto_20170502_1847', '2017-05-02 18:48:01.916575');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('sfeefav4ku7hzfiidt1vp3is6w0g5qba', 'ZmFkOThhODkzN2Q0NjBlZWQzYmFiZDAzMjk2OWRhYzkzM2E0Mzc2Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwOTYyYmQxNTY5MWZkM2Y1YjFhMmY1ZjA0YmEzNDY2MGQ0MDE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-05-15 17:12:21.682475');

-- --------------------------------------------------------

--
-- Table structure for table `jedi`
--

CREATE TABLE `jedi` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `knighthood_id` int(11) NOT NULL,
  `planet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jedi`
--

INSERT INTO `jedi` (`id`, `name`, `knighthood_id`, `planet_id`) VALUES
(1, 'Roggozin', 3, 2),
(2, 'Bad Chubbaika', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `knighthood`
--

CREATE TABLE `knighthood` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `knighthood`
--

INSERT INTO `knighthood` (`id`, `name`) VALUES
(1, 'Alpha'),
(2, 'Betta'),
(3, 'Gamma');

-- --------------------------------------------------------

--
-- Table structure for table `planet`
--

CREATE TABLE `planet` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `planet`
--

INSERT INTO `planet` (`id`, `name`) VALUES
(1, 'Mars'),
(2, 'Earth');

-- --------------------------------------------------------

--
-- Table structure for table `testQuestions`
--

CREATE TABLE `testQuestions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `question1` varchar(100) NOT NULL,
  `answer1` tinyint(1) NOT NULL,
  `question2` varchar(100) NOT NULL,
  `answer2` tinyint(1) NOT NULL,
  `question3` varchar(100) NOT NULL,
  `answer3` tinyint(1) NOT NULL,
  `knighthood_id` int(11) NOT NULL,
  `answer4` tinyint(1) NOT NULL,
  `answer5` tinyint(1) NOT NULL,
  `question4` varchar(100) NOT NULL,
  `question5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testQuestions`
--

INSERT INTO `testQuestions` (`id`, `name`, `question1`, `answer1`, `question2`, `answer2`, `question3`, `answer3`, `knighthood_id`, `answer4`, `answer5`, `question4`, `question5`) VALUES
(1, 'Swift simple', 'Swift не требует точек с запятой', 1, 'Swift предназначен для программирования микроконтроллеров', 0, 'Swift позволяет взаимодействовать с библиотеками Objective C', 1, 2, 0, 0, 'Swift создан в 2010 году', 'Компания Apple это филиал Майкрософт');

-- --------------------------------------------------------

--
-- Table structure for table `testResult`
--

CREATE TABLE `testResult` (
  `id` int(11) NOT NULL,
  `answer1` tinyint(1) NOT NULL,
  `answer2` tinyint(1) NOT NULL,
  `answer3` tinyint(1) NOT NULL,
  `answer4` tinyint(1) NOT NULL,
  `answer5` tinyint(1) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testResult`
--

INSERT INTO `testResult` (`id`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `candidate_id`, `test_id`) VALUES
(2, 1, 0, 1, 0, 0, 1, 1),
(3, 0, 0, 0, 0, 0, 2, 1);

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_planet_id_64659640_fk_planet_id` (`planet_id`),
  ADD KEY `candidate_knighthood_id_ffbd5135_fk_knighthood_id` (`knighthood_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `jedi`
--
ALTER TABLE `jedi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jedi_knighthood_id_a4b7b824_fk_knighthood_id` (`knighthood_id`),
  ADD KEY `jedi_planet_id_f8aec547_fk_planet_id` (`planet_id`);

--
-- Indexes for table `knighthood`
--
ALTER TABLE `knighthood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planet`
--
ALTER TABLE `planet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testQuestions`
--
ALTER TABLE `testQuestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testQuestions_knighthood_id_c4d293e7_fk_knighthood_id` (`knighthood_id`);

--
-- Indexes for table `testResult`
--
ALTER TABLE `testResult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testResult_candidate_id_805b215a_fk_candidate_id` (`candidate_id`),
  ADD KEY `testResult_test_id_3cd7cec4_fk_testQuestions_id` (`test_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `jedi`
--
ALTER TABLE `jedi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `knighthood`
--
ALTER TABLE `knighthood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `planet`
--
ALTER TABLE `planet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testQuestions`
--
ALTER TABLE `testQuestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `testResult`
--
ALTER TABLE `testResult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_knighthood_id_ffbd5135_fk_knighthood_id` FOREIGN KEY (`knighthood_id`) REFERENCES `knighthood` (`id`),
  ADD CONSTRAINT `candidate_planet_id_64659640_fk_planet_id` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jedi`
--
ALTER TABLE `jedi`
  ADD CONSTRAINT `jedi_knighthood_id_a4b7b824_fk_knighthood_id` FOREIGN KEY (`knighthood_id`) REFERENCES `knighthood` (`id`),
  ADD CONSTRAINT `jedi_planet_id_f8aec547_fk_planet_id` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`id`);

--
-- Constraints for table `testQuestions`
--
ALTER TABLE `testQuestions`
  ADD CONSTRAINT `testQuestions_knighthood_id_c4d293e7_fk_knighthood_id` FOREIGN KEY (`knighthood_id`) REFERENCES `knighthood` (`id`);

--
-- Constraints for table `testResult`
--
ALTER TABLE `testResult`
  ADD CONSTRAINT `testResult_candidate_id_805b215a_fk_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  ADD CONSTRAINT `testResult_test_id_3cd7cec4_fk_testQuestions_id` FOREIGN KEY (`test_id`) REFERENCES `testQuestions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
