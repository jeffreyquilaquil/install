-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: trace_db
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
INSERT INTO `migrations` VALUES ('2014_05_02_020615_create_user_groups_table',1),('2017_05_01_015107_create_groups_table',1),('2017_05_02_000000_create_users_table',1),('2017_05_02_020810_create_user_rights_table',1),('2017_05_02_020912_create_user_group_rights_table',1),('2017_05_02_022015_create_settings_table',1),('2017_05_02_052657_create_user_logs_table',1),('2017_05_03_050415_create_group_members_table',2),('2017_05_03_071011_create_companies_table',3),('2017_05_03_075416_create_events_table',4),('2017_05_03_102248_create_document_types_table',5),('2017_05_03_112343_create_event_attachments_table',6),('2017_05_03_115050_create_event_invitations_table',7),('2017_05_04_065130_create_documents_table',8),('2017_05_04_075743_create_document_routings_table',8),('2017_05_08_015455_create_comments_table',9),('2017_05_08_033025_create_actions_table',10),('2017_05_08_064420_create_document_attachments_table',11),('2017_05_09_013921_create_event_seens_table',12),('2017_05_09_032050_create_d_comment_seens_table',13),('2017_05_09_032308_create_e_comment_seens_table',13),('2017_05_10_031604_create_meetings_table',14),('2017_05_10_035954_create_participants_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_action_done`
--

DROP TABLE IF EXISTS `t_action_done`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_action_done` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comm_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `ad_seen` tinyint(4) NOT NULL DEFAULT '0',
  `ad_rd` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_action_done`
--

LOCK TABLES `t_action_done` WRITE;
/*!40000 ALTER TABLE `t_action_done` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_action_done` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_actions`
--

DROP TABLE IF EXISTS `t_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_actions` (
  `a_id` int(10) unsigned NOT NULL,
  `a_action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_actions`
--

LOCK TABLES `t_actions` WRITE;
/*!40000 ALTER TABLE `t_actions` DISABLE KEYS */;
INSERT INTO `t_actions` VALUES (1,'Please RUSH','2016-08-24 02:00:00','0000-00-00 00:00:00'),(2,'Please Attend','2016-08-24 02:00:00','0000-00-00 00:00:00'),(3,'Please draft reply/memo/letter','2016-08-24 02:00:00','0000-00-00 00:00:00'),(4,'Please acknowledge receipt','2016-08-24 02:00:00','0000-00-00 00:00:00'),(5,'Please see me immediately','2016-08-24 02:00:00','0000-00-00 00:00:00'),(6,'For your information/study','2016-08-24 02:00:00','0000-00-00 00:00:00'),(7,'For your comments','2016-08-24 02:00:00','0000-00-00 00:00:00'),(8,'For your initial/signature','2016-08-24 02:00:00','0000-00-00 00:00:00'),(9,'Please file','2016-08-24 02:00:00','0000-00-00 00:00:00'),(10,'Please follow up','2016-08-24 02:00:00','0000-00-00 00:00:00'),(11,'Please act on this','2016-08-24 02:00:00','0000-00-00 00:00:00'),(12,'Please give me feedback','2016-08-24 02:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comments`
--

DROP TABLE IF EXISTS `t_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comments` (
  `comm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comm_document` tinyint(4) NOT NULL DEFAULT '0',
  `comm_event` tinyint(4) NOT NULL DEFAULT '0',
  `comm_reference` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `comm_text` text COLLATE utf8_unicode_ci,
  `comm_rd` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comments`
--

LOCK TABLES `t_comments` WRITE;
/*!40000 ALTER TABLE `t_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_companies`
--

DROP TABLE IF EXISTS `t_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_companies` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_acronym` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_companies`
--

LOCK TABLES `t_companies` WRITE;
/*!40000 ALTER TABLE `t_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dcomment_seen`
--

DROP TABLE IF EXISTS `t_dcomment_seen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dcomment_seen` (
  `dcs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `comm_id` int(10) unsigned NOT NULL,
  `u_id` int(11) NOT NULL,
  `dcs_seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dcs_id`),
  KEY `t_dcomment_seen_comm_id_foreign` (`comm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dcomment_seen`
--

LOCK TABLES `t_dcomment_seen` WRITE;
/*!40000 ALTER TABLE `t_dcomment_seen` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_dcomment_seen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_document_attachments`
--

DROP TABLE IF EXISTS `t_document_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_document_attachments` (
  `da_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `d_id` int(10) unsigned NOT NULL,
  `da_file` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`da_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_document_attachments`
--

LOCK TABLES `t_document_attachments` WRITE;
/*!40000 ALTER TABLE `t_document_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_document_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_document_routings`
--

DROP TABLE IF EXISTS `t_document_routings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_document_routings` (
  `dr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `d_id` int(10) unsigned NOT NULL,
  `u_id` int(11) NOT NULL,
  `dr_seen` tinyint(4) NOT NULL DEFAULT '0',
  `dr_completed` tinyint(4) NOT NULL DEFAULT '0',
  `dr_date` date NOT NULL DEFAULT '0000-00-00',
  `dr_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_document_routings`
--

LOCK TABLES `t_document_routings` WRITE;
/*!40000 ALTER TABLE `t_document_routings` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_document_routings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_documents`
--

DROP TABLE IF EXISTS `t_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_documents` (
  `d_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `d_status` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `d_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt_id` int(10) unsigned NOT NULL,
  `d_documentdate` date NOT NULL,
  `d_datereceived` date NOT NULL DEFAULT '0000-00-00',
  `d_datesent` date NOT NULL DEFAULT '0000-00-00',
  `d_sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `d_addressee` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `c_id` int(11) NOT NULL,
  `d_keywords` text COLLATE utf8_unicode_ci,
  `d_remarks` text COLLATE utf8_unicode_ci,
  `d_routingslip` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `d_incomingreference` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_routingthru` int(11) NOT NULL DEFAULT '0',
  `d_routingfrom` int(11) NOT NULL DEFAULT '0',
  `d_actions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_datetimerouted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `d_istrack` tinyint(4) NOT NULL DEFAULT '0',
  `d_iscompleted` tinyint(4) NOT NULL DEFAULT '0',
  `d_datecompleted` date NOT NULL DEFAULT '0000-00-00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`d_id`),
  KEY `t_documents_dt_id_foreign` (`dt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_documents`
--

LOCK TABLES `t_documents` WRITE;
/*!40000 ALTER TABLE `t_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_documenttypes`
--

DROP TABLE IF EXISTS `t_documenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_documenttypes` (
  `dt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_documenttypes`
--

LOCK TABLES `t_documenttypes` WRITE;
/*!40000 ALTER TABLE `t_documenttypes` DISABLE KEYS */;
INSERT INTO `t_documenttypes` VALUES (1,'Letter','2016-08-16 00:00:00','0000-00-00 00:00:00'),(2,'Announcement','2016-08-16 00:00:00','0000-00-00 00:00:00'),(3,'Notice of Meeting','2016-08-16 00:00:00','0000-00-00 00:00:00'),(4,'Memorandum','2016-08-16 00:00:00','0000-00-00 00:00:00'),(5,'MOA','2016-08-16 00:00:00','0000-00-00 00:00:00'),(6,'Administrative Order','2016-08-16 00:00:00','0000-00-00 00:00:00'),(7,'Special Order','2016-08-16 00:00:00','0000-00-00 00:00:00'),(8,'Minutes of Meeting','2016-08-16 00:00:00','0000-00-00 00:00:00'),(9,'Publication','2016-08-16 00:00:00','0000-00-00 00:00:00'),(10,'Resolution','2016-08-16 00:00:00','0000-00-00 00:00:00'),(11,'Schedule','2016-08-16 00:00:00','0000-00-00 00:00:00'),(12,'Fax Message','2016-08-16 00:00:00','0000-00-00 00:00:00'),(13,'E-mail Message','2016-08-16 00:00:00','0000-00-00 00:00:00'),(14,'Receipt','2016-08-16 00:00:00','0000-00-00 00:00:00'),(15,'Executive Order','2016-08-16 00:00:00','0000-00-00 00:00:00'),(16,'Primer','2016-08-16 00:00:00','0000-00-00 00:00:00'),(17,'Form','2016-08-16 00:00:00','0000-00-00 00:00:00'),(18,'Evaluation Form','2016-08-16 00:00:00','0000-00-00 00:00:00'),(19,'Speech','2016-08-16 00:00:00','0000-00-00 00:00:00'),(20,'Solicitation','2016-08-16 00:00:00','0000-00-00 00:00:00'),(21,'Report','2016-08-16 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_documenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ecomment_seen`
--

DROP TABLE IF EXISTS `t_ecomment_seen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ecomment_seen` (
  `ecs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_id` int(11) NOT NULL,
  `comm_id` int(10) unsigned NOT NULL,
  `u_id` int(11) NOT NULL,
  `ecs_seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ecs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ecomment_seen`
--

LOCK TABLES `t_ecomment_seen` WRITE;
/*!40000 ALTER TABLE `t_ecomment_seen` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ecomment_seen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_event_attachments`
--

DROP TABLE IF EXISTS `t_event_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_event_attachments` (
  `ea_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_id` int(10) unsigned NOT NULL,
  `ea_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_event_attachments`
--

LOCK TABLES `t_event_attachments` WRITE;
/*!40000 ALTER TABLE `t_event_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_event_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_event_invitations`
--

DROP TABLE IF EXISTS `t_event_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_event_invitations` (
  `ei_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_id` int(10) unsigned NOT NULL,
  `u_id` int(11) NOT NULL,
  `ei_seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ei_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_event_invitations`
--

LOCK TABLES `t_event_invitations` WRITE;
/*!40000 ALTER TABLE `t_event_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_event_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_event_seen`
--

DROP TABLE IF EXISTS `t_event_seen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_event_seen` (
  `es_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_id` int(10) unsigned NOT NULL,
  `u_id` int(11) NOT NULL,
  `es_seen` tinyint(4) NOT NULL DEFAULT '0',
  `es_invited` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`es_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_event_seen`
--

LOCK TABLES `t_event_seen` WRITE;
/*!40000 ALTER TABLE `t_event_seen` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_event_seen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_events`
--

DROP TABLE IF EXISTS `t_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_events` (
  `e_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_startdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_starttime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_enddate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_endtime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e_staff` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e_venue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_live` tinyint(4) NOT NULL DEFAULT '0',
  `u_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_events`
--

LOCK TABLES `t_events` WRITE;
/*!40000 ALTER TABLE `t_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_groupmembers`
--

DROP TABLE IF EXISTS `t_groupmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_groupmembers` (
  `gm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `u_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_groupmembers`
--

LOCK TABLES `t_groupmembers` WRITE;
/*!40000 ALTER TABLE `t_groupmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_groupmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_groups`
--

DROP TABLE IF EXISTS `t_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_groups`
--

LOCK TABLES `t_groups` WRITE;
/*!40000 ALTER TABLE `t_groups` DISABLE KEYS */;
INSERT INTO `t_groups` VALUES (1,'Office of the Regional Director','2017-08-08 02:00:00','2017-08-08 02:00:00');
/*!40000 ALTER TABLE `t_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_meetings`
--

DROP TABLE IF EXISTS `t_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_meetings` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_startdate` date NOT NULL,
  `m_enddate` date NOT NULL,
  `m_starttime` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `m_endtime` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `m_tstartdate` date NOT NULL,
  `m_tenddate` date NOT NULL,
  `m_tstarttime` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_tendtime` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_purpose` text COLLATE utf8_unicode_ci NOT NULL,
  `m_destination` text COLLATE utf8_unicode_ci,
  `m_others` text COLLATE utf8_unicode_ci,
  `m_encodedby` int(11) NOT NULL,
  `m_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `m_reason` text COLLATE utf8_unicode_ci,
  `m_datechecked` date NOT NULL DEFAULT '0000-00-00',
  `m_postponedby` int(11) DEFAULT '0',
  `m_stat` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_meetings`
--

LOCK TABLES `t_meetings` WRITE;
/*!40000 ALTER TABLE `t_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_participants`
--

DROP TABLE IF EXISTS `t_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_participants` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_ord` tinyint(4) NOT NULL DEFAULT '0',
  `p_seen` tinyint(4) NOT NULL DEFAULT '0',
  `p_notif` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_participants`
--

LOCK TABLES `t_participants` WRITE;
/*!40000 ALTER TABLE `t_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_settings`
--

DROP TABLE IF EXISTS `t_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_settings` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_sysname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_abbr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_pendingdays` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `s_background` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_settings`
--

LOCK TABLES `t_settings` WRITE;
/*!40000 ALTER TABLE `t_settings` DISABLE KEYS */;
INSERT INTO `t_settings` VALUES (1,'Tracking, Retrieval, Archiving of Communications for Efficiency (TRACE)','TRACE',9,1,'images/system/background.jpg','2017-05-02 17:00:18','2017-05-09 22:33:24');
/*!40000 ALTER TABLE `t_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ugrights`
--

DROP TABLE IF EXISTS `t_ugrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ugrights` (
  `ugr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ug_id` int(10) unsigned NOT NULL,
  `ur_id` int(10) unsigned NOT NULL,
  `ugr_view` tinyint(4) NOT NULL,
  `ugr_add` tinyint(4) NOT NULL,
  `ugr_edit` tinyint(4) NOT NULL,
  `ugr_delete` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ugr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ugrights`
--

LOCK TABLES `t_ugrights` WRITE;
/*!40000 ALTER TABLE `t_ugrights` DISABLE KEYS */;
INSERT INTO `t_ugrights` VALUES (1,1,1,1,1,0,0,'2017-05-03 01:00:00','2017-05-08 00:52:00'),(2,1,2,1,1,1,0,'2017-05-03 01:00:00','2017-05-02 18:28:56'),(3,1,3,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(4,1,4,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(5,1,5,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(6,1,6,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:29:05'),(7,1,7,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:29:10'),(8,1,8,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:29:16'),(9,1,9,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(10,1,10,1,1,1,0,'2017-05-03 01:00:00','2017-05-02 18:29:48'),(11,1,11,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:29:53'),(12,1,12,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:29:58'),(13,1,13,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:30:01'),(14,2,1,1,0,0,0,'0000-00-00 00:00:00','2017-05-02 18:30:12'),(15,2,2,1,1,1,0,'2017-05-03 01:00:00','2017-05-02 18:30:16'),(16,2,3,1,0,0,0,'2017-05-03 01:00:00','2017-05-09 22:45:43'),(17,2,4,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(18,2,5,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(19,2,6,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:30:24'),(20,2,7,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:30:28'),(21,2,8,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:30:31'),(22,2,9,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(23,2,10,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(24,2,11,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:31:37'),(25,2,12,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:31:33'),(26,2,13,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:31:17'),(27,3,1,1,1,1,0,'2017-05-03 01:00:00','2017-05-02 18:31:49'),(28,3,2,1,1,1,0,'2017-05-03 01:00:00','2017-05-02 18:31:54'),(29,3,3,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(30,3,4,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(31,3,5,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(32,3,6,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:31:59'),(33,3,7,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:04'),(34,3,8,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:08'),(35,3,9,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(36,3,10,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:15'),(37,3,11,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:19'),(38,3,12,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:22'),(39,3,13,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:25'),(40,4,1,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:32'),(41,4,2,1,1,1,0,'2017-05-03 01:00:00','2017-05-02 18:32:37'),(42,4,3,1,0,0,0,'2017-05-03 01:00:00','2017-05-09 22:45:55'),(43,4,4,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(44,4,5,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(45,4,6,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:43'),(46,4,7,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:49'),(47,4,8,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:52'),(48,4,9,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(49,4,10,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:32:57'),(50,4,11,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:33:01'),(51,4,12,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:33:05'),(52,4,13,1,0,0,0,'2017-05-03 01:00:00','2017-05-02 18:33:12'),(53,5,1,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(54,5,2,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(55,5,3,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(56,5,4,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(57,5,5,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(58,5,6,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(59,5,7,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(60,5,8,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(61,5,9,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(62,5,10,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(63,5,11,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(64,5,12,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00'),(65,5,13,1,1,1,1,'2017-05-03 01:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_ugrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usergroups`
--

DROP TABLE IF EXISTS `t_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usergroups` (
  `ug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ug_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usergroups`
--

LOCK TABLES `t_usergroups` WRITE;
/*!40000 ALTER TABLE `t_usergroups` DISABLE KEYS */;
INSERT INTO `t_usergroups` VALUES (1,'Regional Director','2017-05-02 17:00:18','2017-05-08 00:52:00'),(2,'Division Head / Unit Chief','2017-05-02 17:00:18','2017-05-09 22:45:43'),(3,'Document Controller','2017-05-02 17:00:18','2017-05-02 18:32:25'),(4,'Ordinary User','2017-05-02 17:00:18','2017-05-09 22:45:55'),(5,'Super Administrator','2017-05-02 17:00:18','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_userlogs`
--

DROP TABLE IF EXISTS `t_userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_userlogs` (
  `ul_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(10) unsigned NOT NULL,
  `ul_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ul_session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_userlogs`
--

LOCK TABLES `t_userlogs` WRITE;
/*!40000 ALTER TABLE `t_userlogs` DISABLE KEYS */;
INSERT INTO `t_userlogs` VALUES (1,1,'192.168.2.160','855c2981c5f42dd50a91112dc8db40db20787aa9','2017-08-08 04:45:46','2017-08-08 04:46:10'),(2,1,'192.168.2.160','8f791a8ccc2b721adb198335a9afa3cd089d364a','2017-08-08 04:53:25','2017-08-08 04:53:27');
/*!40000 ALTER TABLE `t_userlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_userrights`
--

DROP TABLE IF EXISTS `t_userrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_userrights` (
  `ur_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ur_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_userrights`
--

LOCK TABLES `t_userrights` WRITE;
/*!40000 ALTER TABLE `t_userrights` DISABLE KEYS */;
INSERT INTO `t_userrights` VALUES (1,'Incoming Documents','2017-05-03 01:00:00','0000-00-00 00:00:00'),(2,'Outgoing Documents','2017-05-03 01:00:00','0000-00-00 00:00:00'),(3,'RD\'s Calendar','2017-05-03 01:00:00','0000-00-00 00:00:00'),(4,'Meetings','2017-05-03 01:00:00','0000-00-00 00:00:00'),(5,'Events','2017-05-03 01:00:00','0000-00-00 00:00:00'),(6,'Document Statistics','2017-05-03 01:00:00','0000-00-00 00:00:00'),(7,'User Statistics','2017-05-03 01:00:00','0000-00-00 00:00:00'),(8,'Unit Statistics','2017-05-03 01:00:00','0000-00-00 00:00:00'),(9,'Company Information','2017-05-03 01:00:00','0000-00-00 00:00:00'),(10,'Groups','2017-05-03 01:00:00','0000-00-00 00:00:00'),(11,'Accounts','2017-05-03 01:00:00','0000-00-00 00:00:00'),(12,'System Settings','2017-05-03 01:00:00','0000-00-00 00:00:00'),(13,'User Groups','2017-05-03 01:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_userrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_mname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ug_id` int(11) NOT NULL DEFAULT '5',
  `group_id` int(11) NOT NULL,
  `u_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `u_active` tinyint(4) NOT NULL DEFAULT '0',
  `u_administrator` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES (1,'admin','admin@gmail.com','$2y$10$0qZHJUVBEAruPfXz88REjO.ZyZyaj4L2VPouzJj0KFTzh0bnYU0WG','Admin','Is','Trator','639103216547',4,1,'Sr. SRS','upload/profile/no-user-photo.png',1,1,NULL,'2017-08-08 00:00:00','2017-08-08 04:46:08');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-08 14:53:34
