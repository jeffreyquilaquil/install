-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2017 at 10:12 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handa_db_v4`
--

-- --------------------------------------------------------

--
-- Table structure for table `h_bulletins`
--

CREATE TABLE `h_bulletins` (
  `bl_id` int(10) UNSIGNED NOT NULL,
  `bt_id` int(10) UNSIGNED NOT NULL,
  `bl_message` text COLLATE utf8_unicode_ci NOT NULL,
  `bl_type` enum('Auto','Manual') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_bulletin_recipients`
--

CREATE TABLE `h_bulletin_recipients` (
  `blr_id` int(10) UNSIGNED NOT NULL,
  `bl_id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `blr_status` enum('SENT','FAILED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_bulletin_types`
--

CREATE TABLE `h_bulletin_types` (
  `bt_id` int(10) UNSIGNED NOT NULL,
  `bt_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `h_bulletin_types`
--

INSERT INTO `h_bulletin_types` (`bt_id`, `bt_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Earthquake Information', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(2, 'Volcano Update', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(3, 'Weather Bulletin', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(4, 'Severe Weather Bulletin', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(5, 'Tropical Cyclone Update', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(6, 'Rainfall Warning', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(7, 'Weather Advisory', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(8, 'Thunderstorm Advisory', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(9, 'General Flood Advisory', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(10, 'Flood Advisory', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(11, 'Tsunami', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(12, 'System Announcement', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(13, 'Twitter Feed', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(14, 'System Test', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(15, '24-Hour Weather Forecast', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(16, 'Regional Weather Forecast for NCR-PRSD', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(17, 'From NCR-PRSD', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(18, 'Starbooks Advisory', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `h_contacts`
--

CREATE TABLE `h_contacts` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `c_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_agency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_contact_groups`
--

CREATE TABLE `h_contact_groups` (
  `cg_id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `g_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_data`
--

CREATE TABLE `h_data` (
  `d_id` mediumint(8) UNSIGNED NOT NULL,
  `ss_id` int(10) UNSIGNED NOT NULL,
  `d_date_time_read` datetime NOT NULL,
  `d_rain_value` double(8,2) NOT NULL,
  `d_rain_intensity` double(8,2) NOT NULL,
  `d_rain_duration` double(8,2) NOT NULL,
  `d_air_temperature` double(8,2) NOT NULL,
  `d_air_pressure` double(8,2) NOT NULL,
  `d_wind_speed` double(8,2) NOT NULL,
  `d_wind_direction` double(8,2) NOT NULL,
  `d_air_humidity` double(8,2) NOT NULL,
  `d_waterlevel` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_groups`
--

CREATE TABLE `h_groups` (
  `g_id` int(10) UNSIGNED NOT NULL,
  `g_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `h_groups`
--

INSERT INTO `h_groups` (`g_id`, `g_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Batangas', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(2, 'Cavite', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(3, 'Laguna', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(4, 'Quezon', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(5, 'Rizal', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(6, 'RDRRMC4A', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(7, 'DOST4A', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(8, 'Regional Directors', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(9, 'Guest', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(10, 'DOST ROs', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(11, 'Media', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(12, 'First Send', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(13, 'NCR', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14'),
(14, 'TestGroup', 1, '2017-08-07 16:12:14', '2017-08-07 16:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `h_maps`
--

CREATE TABLE `h_maps` (
  `m_id` int(10) UNSIGNED NOT NULL,
  `m_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `m_type` tinyint(4) NOT NULL,
  `m_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_sensors`
--

CREATE TABLE `h_sensors` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `ss_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_elevation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ss_type` int(11) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_settings`
--

CREATE TABLE `h_settings` (
  `st_id` int(10) UNSIGNED NOT NULL,
  `st_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_footer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_about` text COLLATE utf8_unicode_ci NOT NULL,
  `st_globe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_smart` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_google` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_extra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_earthquake` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_weather` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_volcano` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_cyclone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `st_latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `st_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `h_settings`
--

INSERT INTO `h_settings` (`st_id`, `st_name`, `st_alias`, `st_footer`, `st_about`, `st_globe`, `st_smart`, `st_facebook`, `st_twitter`, `st_google`, `st_address`, `st_extra`, `st_earthquake`, `st_weather`, `st_volcano`, `st_cyclone`, `created_at`, `updated_at`, `st_latitude`, `st_longitude`, `st_api_key`, `st_username`, `st_password`) VALUES
(1, 'Hazard Notification, Dissemination and Awareness (HaNDA)', 'Project HaNDA', '-SENT via HaNDA', '', '639178162822', '', 'https://www.facebook.com/dost4a.handa/', 'https://twitter.com/DRRMRegion4a', '', '', '', 'http://www.phivolcs.dost.gov.ph/html/update_SOEPD/EQLatest.html', 'http://www1.pagasa.dost.gov.ph/index.php/general-weather/daily-weather-forecast', '', '', '2017-08-07 16:18:31', '2017-08-07 17:13:34', '14.1250273', '121.5933434', 'AIzaSyCDzewCy_3XM_SKe4IaGDeb087N9wn7CMc', 'dostregion4a', 'd0st4a1116');

-- --------------------------------------------------------

--
-- Table structure for table `h_sms_logs`
--

CREATE TABLE `h_sms_logs` (
  `sl_id` int(10) UNSIGNED NOT NULL,
  `sl_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sl_message` text COLLATE utf8_unicode_ci NOT NULL,
  `sl_status` enum('SENT','RECEIVED','FAILED','QUEUED') COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `sl_timestamp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h_sms_timestamp`
--

CREATE TABLE `h_sms_timestamp` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `h_sms_timestamp`
--

INSERT INTO `h_sms_timestamp` (`id`, `last_msg`, `created_at`, `updated_at`) VALUES
(1, '1502093535', '2017-08-07 16:12:15', '2017-08-07 16:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `h_users`
--

CREATE TABLE `h_users` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `u_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_updated` tinyint(4) NOT NULL,
  `is_admin` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `h_users`
--

INSERT INTO `h_users` (`u_id`, `u_username`, `u_password`, `u_fname`, `u_mname`, `u_lname`, `u_number`, `is_updated`, `is_admin`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'handa', '$2y$10$6.EfDmf4C86CXopJ1QsChOm1KjbyYWK/z1CKqAmLxq.Dlh42fqqEm', 'DOST', '..', 'HANDA', '639275784018', 1, 1, 1, 'b0LJMsieaadeQSy1D4TiMS4XMJPY76GkHdQtoJqw0CoKLl5HnjxpVYNNJUJN', '2017-08-07 18:12:16', '2017-08-07 18:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `h_user_logs`
--

CREATE TABLE `h_user_logs` (
  `ul_id` int(10) UNSIGNED NOT NULL,
  `u_id` int(10) UNSIGNED NOT NULL,
  `ul_logs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ul_login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `h_user_logs`
--

INSERT INTO `h_user_logs` (`ul_id`, `u_id`, `ul_logs`, `ul_login_time`) VALUES
(4, 11, '10.10.10.1', '2017-08-07 18:12:24');

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
('2017_01_31_075534_create_sensors_table', 1),
('2017_01_31_080014_create_handa_data', 1),
('2017_02_03_080448_create_bulletin_types', 1),
('2017_02_03_080640_create_bulletin_table', 1),
('2017_02_17_142446_create_users_table', 1),
('2017_02_17_143339_create_user_logs', 1),
('2017_02_23_162423_create_groups_table', 1),
('2017_02_23_163222_create_contacts_table', 1),
('2017_02_23_164730_create_contact_groups_table', 1),
('2017_02_27_152404_create_map_table', 1),
('2017_02_28_102213_create_bulletin_recipients', 1),
('2017_03_02_084301_create_settings_table', 1),
('2017_03_09_144037_create_sms_logs', 1),
('2017_04_11_145433_create_sms_timestamp', 1),
('2017_08_07_160542_alter_settings_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `h_bulletins`
--
ALTER TABLE `h_bulletins`
  ADD PRIMARY KEY (`bl_id`),
  ADD KEY `h_bulletins_bt_id_foreign` (`bt_id`);

--
-- Indexes for table `h_bulletin_recipients`
--
ALTER TABLE `h_bulletin_recipients`
  ADD PRIMARY KEY (`blr_id`),
  ADD KEY `h_bulletin_recipients_bl_id_foreign` (`bl_id`),
  ADD KEY `h_bulletin_recipients_c_id_foreign` (`c_id`);

--
-- Indexes for table `h_bulletin_types`
--
ALTER TABLE `h_bulletin_types`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `h_contacts`
--
ALTER TABLE `h_contacts`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `h_contact_groups`
--
ALTER TABLE `h_contact_groups`
  ADD PRIMARY KEY (`cg_id`),
  ADD KEY `h_contact_groups_c_id_foreign` (`c_id`),
  ADD KEY `h_contact_groups_g_id_foreign` (`g_id`);

--
-- Indexes for table `h_data`
--
ALTER TABLE `h_data`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `h_data_ss_id_d_date_time_read_index` (`ss_id`,`d_date_time_read`);

--
-- Indexes for table `h_groups`
--
ALTER TABLE `h_groups`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `h_maps`
--
ALTER TABLE `h_maps`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `h_sensors`
--
ALTER TABLE `h_sensors`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `h_settings`
--
ALTER TABLE `h_settings`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `h_sms_logs`
--
ALTER TABLE `h_sms_logs`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `h_sms_timestamp`
--
ALTER TABLE `h_sms_timestamp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h_users`
--
ALTER TABLE `h_users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `h_user_logs`
--
ALTER TABLE `h_user_logs`
  ADD PRIMARY KEY (`ul_id`),
  ADD KEY `h_user_logs_u_id_foreign` (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `h_bulletins`
--
ALTER TABLE `h_bulletins`
  MODIFY `bl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_bulletin_recipients`
--
ALTER TABLE `h_bulletin_recipients`
  MODIFY `blr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_bulletin_types`
--
ALTER TABLE `h_bulletin_types`
  MODIFY `bt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `h_contacts`
--
ALTER TABLE `h_contacts`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_contact_groups`
--
ALTER TABLE `h_contact_groups`
  MODIFY `cg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_data`
--
ALTER TABLE `h_data`
  MODIFY `d_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_groups`
--
ALTER TABLE `h_groups`
  MODIFY `g_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `h_maps`
--
ALTER TABLE `h_maps`
  MODIFY `m_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_sensors`
--
ALTER TABLE `h_sensors`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_settings`
--
ALTER TABLE `h_settings`
  MODIFY `st_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `h_sms_logs`
--
ALTER TABLE `h_sms_logs`
  MODIFY `sl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `h_sms_timestamp`
--
ALTER TABLE `h_sms_timestamp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `h_users`
--
ALTER TABLE `h_users`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `h_user_logs`
--
ALTER TABLE `h_user_logs`
  MODIFY `ul_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `h_bulletins`
--
ALTER TABLE `h_bulletins`
  ADD CONSTRAINT `h_bulletins_bt_id_foreign` FOREIGN KEY (`bt_id`) REFERENCES `h_bulletin_types` (`bt_id`) ON DELETE CASCADE;

--
-- Constraints for table `h_bulletin_recipients`
--
ALTER TABLE `h_bulletin_recipients`
  ADD CONSTRAINT `h_bulletin_recipients_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `h_contacts` (`c_id`),
  ADD CONSTRAINT `h_bulletin_recipients_bl_id_foreign` FOREIGN KEY (`bl_id`) REFERENCES `h_bulletins` (`bl_id`);

--
-- Constraints for table `h_contact_groups`
--
ALTER TABLE `h_contact_groups`
  ADD CONSTRAINT `h_contact_groups_g_id_foreign` FOREIGN KEY (`g_id`) REFERENCES `h_groups` (`g_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `h_contact_groups_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `h_contacts` (`c_id`) ON UPDATE CASCADE;

--
-- Constraints for table `h_data`
--
ALTER TABLE `h_data`
  ADD CONSTRAINT `h_data_ss_id_foreign` FOREIGN KEY (`ss_id`) REFERENCES `h_sensors` (`ss_id`) ON UPDATE CASCADE;

--
-- Constraints for table `h_user_logs`
--
ALTER TABLE `h_user_logs`
  ADD CONSTRAINT `h_user_logs_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `h_users` (`u_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
