-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: toms_db
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2017_05_01_034756_create_division_table',1),('2017_05_02_053535_create_roles_table',1),('2017_05_02_054234_create_groups_table',1),('2017_05_02_054235_create_users_table',1),('2017_05_10_015900_create_modes_table',1),('2017_05_10_015951_create_travels_table',1),('2017_05_10_053953_create_travel_passengers_table',1),('2017_05_12_020539_create_travel_comments',1),('2017_05_17_013017_create_settings_table',1),('2017_07_12_021906_create_travel_documents',1),('2017_07_12_022701_create_funds_table',1),('2017_07_12_022736_create_expenses_table',1),('2017_07_12_023316_create_travel_funds_expense',1),('2017_07_20_082650_create_travel_officials',1),('2017_07_25_015746_create_travel_signatures',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_divisions`
--

DROP TABLE IF EXISTS `to_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_divisions` (
  `d_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_divisions`
--

LOCK TABLES `to_divisions` WRITE;
/*!40000 ALTER TABLE `to_divisions` DISABLE KEYS */;
INSERT INTO `to_divisions` VALUES (1,'Regional Office',1,'2017-08-07 18:09:20','2017-08-07 18:09:20'),(2,'Provincial Office',1,'2017-08-07 18:09:20','2017-08-07 18:09:20'),(3,'Finance and Administrative Services',1,'2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_expenses`
--

DROP TABLE IF EXISTS `to_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_expenses` (
  `e_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_expenses`
--

LOCK TABLES `to_expenses` WRITE;
/*!40000 ALTER TABLE `to_expenses` DISABLE KEYS */;
INSERT INTO `to_expenses` VALUES (1,'Accomodation','2017-08-07 18:09:20','2017-08-07 18:09:20'),(2,'Meals/Food','2017-08-07 18:09:20','2017-08-07 18:09:20'),(3,'Incidental expenses','2017-08-07 18:09:20','2017-08-07 18:09:20'),(4,'Accomodation','2017-08-07 18:09:20','2017-08-07 18:09:20'),(5,'Subsistence','2017-08-07 18:09:20','2017-08-07 18:09:20'),(6,'Incidental expenses','2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_funds`
--

DROP TABLE IF EXISTS `to_funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_funds` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_funds`
--

LOCK TABLES `to_funds` WRITE;
/*!40000 ALTER TABLE `to_funds` DISABLE KEYS */;
INSERT INTO `to_funds` VALUES (1,'General Funds','2017-08-07 18:09:20','2017-08-07 18:09:20'),(2,'Project Funds','2017-08-07 18:09:20','2017-08-07 18:09:20'),(3,'Others','2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_groups`
--

DROP TABLE IF EXISTS `to_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_groups` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `d_id` int(10) unsigned NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`g_id`),
  KEY `to_groups_d_id_foreign` (`d_id`),
  CONSTRAINT `to_groups_d_id_foreign` FOREIGN KEY (`d_id`) REFERENCES `to_divisions` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_groups`
--

LOCK TABLES `to_groups` WRITE;
/*!40000 ALTER TABLE `to_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_modes`
--

DROP TABLE IF EXISTS `to_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_modes` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_modes`
--

LOCK TABLES `to_modes` WRITE;
/*!40000 ALTER TABLE `to_modes` DISABLE KEYS */;
INSERT INTO `to_modes` VALUES (1,'DOST Vehicle',1,'2017-08-07 18:09:20','2017-08-07 18:09:20'),(2,'Public Conveyance',1,'2017-08-07 18:09:20','2017-08-07 18:09:20'),(3,'Van Rental',1,'2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_officials`
--

DROP TABLE IF EXISTS `to_officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_officials` (
  `to_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(10) unsigned NOT NULL,
  `g_id` int(10) unsigned NOT NULL,
  `r_id` int(10) unsigned NOT NULL,
  `to_approval` int(10) unsigned NOT NULL,
  `oic` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`to_id`),
  KEY `to_officials_u_id_foreign` (`u_id`),
  KEY `to_officials_g_id_foreign` (`g_id`),
  KEY `to_officials_r_id_foreign` (`r_id`),
  CONSTRAINT `to_officials_g_id_foreign` FOREIGN KEY (`g_id`) REFERENCES `to_groups` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_officials_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `to_roles` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_officials_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `to_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_officials`
--

LOCK TABLES `to_officials` WRITE;
/*!40000 ALTER TABLE `to_officials` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_roles`
--

DROP TABLE IF EXISTS `to_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_roles` (
  `r_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_roles`
--

LOCK TABLES `to_roles` WRITE;
/*!40000 ALTER TABLE `to_roles` DISABLE KEYS */;
INSERT INTO `to_roles` VALUES (1,'Superuser','2017-08-07 18:09:20','2017-08-07 18:09:20'),(2,'Administrator','2017-08-07 18:09:20','2017-08-07 18:09:20'),(3,'Regional Director','2017-08-07 18:09:20','2017-08-07 18:09:20'),(4,'Assistant Regional Director - TO','2017-08-07 18:09:20','2017-08-07 18:09:20'),(5,'Assistant Regional Director - FAS','2017-08-07 18:09:20','2017-08-07 18:09:20'),(6,'Provincial Director','2017-08-07 18:09:20','2017-08-07 18:09:20'),(7,'Staff','2017-08-07 18:09:20','2017-08-07 18:09:20'),(8,'FAS-Admin','2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_settings`
--

DROP TABLE IF EXISTS `to_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_settings` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_region_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_region_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_settings`
--

LOCK TABLES `to_settings` WRITE;
/*!40000 ALTER TABLE `to_settings` DISABLE KEYS */;
INSERT INTO `to_settings` VALUES (1,'Region IV-A','Timugan, Los Baños Laguna','2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_travel_comments`
--

DROP TABLE IF EXISTS `to_travel_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_travel_comments` (
  `tc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(10) unsigned NOT NULL,
  `u_id` int(10) unsigned NOT NULL,
  `tc_comment` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tc_id`),
  KEY `to_travel_comments_t_id_foreign` (`t_id`),
  KEY `to_travel_comments_u_id_foreign` (`u_id`),
  CONSTRAINT `to_travel_comments_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `to_travels` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_travel_comments_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `to_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_travel_comments`
--

LOCK TABLES `to_travel_comments` WRITE;
/*!40000 ALTER TABLE `to_travel_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_travel_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_travel_documents`
--

DROP TABLE IF EXISTS `to_travel_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_travel_documents` (
  `td_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(10) unsigned NOT NULL,
  `td_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`td_id`),
  KEY `to_travel_documents_t_id_foreign` (`t_id`),
  CONSTRAINT `to_travel_documents_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `to_travels` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_travel_documents`
--

LOCK TABLES `to_travel_documents` WRITE;
/*!40000 ALTER TABLE `to_travel_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_travel_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_travel_funds_expenses`
--

DROP TABLE IF EXISTS `to_travel_funds_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_travel_funds_expenses` (
  `tfe_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(10) unsigned NOT NULL,
  `f_id` int(10) unsigned NOT NULL,
  `e_id` int(10) unsigned NOT NULL,
  `tfe_others` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tfe_id`),
  KEY `to_travel_funds_expenses_t_id_foreign` (`t_id`),
  KEY `to_travel_funds_expenses_f_id_foreign` (`f_id`),
  KEY `to_travel_funds_expenses_e_id_foreign` (`e_id`),
  CONSTRAINT `to_travel_funds_expenses_e_id_foreign` FOREIGN KEY (`e_id`) REFERENCES `to_expenses` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_travel_funds_expenses_f_id_foreign` FOREIGN KEY (`f_id`) REFERENCES `to_funds` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_travel_funds_expenses_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `to_travels` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_travel_funds_expenses`
--

LOCK TABLES `to_travel_funds_expenses` WRITE;
/*!40000 ALTER TABLE `to_travel_funds_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_travel_funds_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_travel_passengers`
--

DROP TABLE IF EXISTS `to_travel_passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_travel_passengers` (
  `tp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(10) unsigned NOT NULL,
  `u_id` int(10) unsigned NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tp_id`),
  KEY `to_travel_passengers_t_id_foreign` (`t_id`),
  KEY `to_travel_passengers_u_id_foreign` (`u_id`),
  CONSTRAINT `to_travel_passengers_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `to_travels` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_travel_passengers_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `to_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_travel_passengers`
--

LOCK TABLES `to_travel_passengers` WRITE;
/*!40000 ALTER TABLE `to_travel_passengers` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_travel_passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_travel_signatures`
--

DROP TABLE IF EXISTS `to_travel_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_travel_signatures` (
  `ts_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_id` int(10) unsigned NOT NULL,
  `u_id` int(10) unsigned NOT NULL,
  `ts_role` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ts_id`),
  KEY `to_travel_signatures_t_id_foreign` (`t_id`),
  CONSTRAINT `to_travel_signatures_t_id_foreign` FOREIGN KEY (`t_id`) REFERENCES `to_travels` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_travel_signatures`
--

LOCK TABLES `to_travel_signatures` WRITE;
/*!40000 ALTER TABLE `to_travel_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_travel_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_travels`
--

DROP TABLE IF EXISTS `to_travels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_travels` (
  `t_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_purpose` text COLLATE utf8_unicode_ci NOT NULL,
  `t_destination` text COLLATE utf8_unicode_ci NOT NULL,
  `t_start_date` date NOT NULL,
  `t_end_date` date NOT NULL,
  `t_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t_remarks` text COLLATE utf8_unicode_ci,
  `u_id` int(10) unsigned NOT NULL,
  `m_id` int(10) unsigned NOT NULL,
  `to_recommending` tinyint(3) unsigned NOT NULL,
  `to_approval` tinyint(3) unsigned NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`t_id`),
  KEY `to_travels_u_id_foreign` (`u_id`),
  KEY `to_travels_m_id_foreign` (`m_id`),
  CONSTRAINT `to_travels_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `to_modes` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_travels_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `to_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_travels`
--

LOCK TABLES `to_travels` WRITE;
/*!40000 ALTER TABLE `to_travels` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_travels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_users`
--

DROP TABLE IF EXISTS `to_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_users` (
  `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_suffix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_id` int(10) unsigned DEFAULT NULL,
  `g_id` int(10) unsigned DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`u_id`),
  KEY `to_users_r_id_foreign` (`r_id`),
  KEY `to_users_g_id_foreign` (`g_id`),
  CONSTRAINT `to_users_g_id_foreign` FOREIGN KEY (`g_id`) REFERENCES `to_groups` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `to_users_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `to_roles` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_users`
--

LOCK TABLES `to_users` WRITE;
/*!40000 ALTER TABLE `to_users` DISABLE KEYS */;
INSERT INTO `to_users` VALUES (1,'admin','$2y$10$gKKzad7KVOzcVmHWPdDtTepdTkVPnDXjfhwECM2zW9/9t/xrrDnpG','DOST','..','ADMIN','',NULL,NULL,NULL,2,NULL,1,NULL,'2017-08-07 18:09:20','2017-08-07 18:09:20');
/*!40000 ALTER TABLE `to_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-08 11:38:19
