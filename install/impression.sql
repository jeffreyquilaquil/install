-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: impression
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
-- Table structure for table `pis_footprints`
--

DROP TABLE IF EXISTS `pis_footprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pis_footprints` (
  `foot_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `foot_host` varchar(255) DEFAULT '',
  `foot_url` text,
  `foot_date` datetime DEFAULT NULL,
  `foot_action` varchar(255) DEFAULT '',
  `u_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`foot_id`),
  UNIQUE KEY `foot_id_UNIQUE` (`foot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pis_footprints`
--

LOCK TABLES `pis_footprints` WRITE;
/*!40000 ALTER TABLE `pis_footprints` DISABLE KEYS */;
/*!40000 ALTER TABLE `pis_footprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pis_sites`
--

DROP TABLE IF EXISTS `pis_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pis_sites` (
  `site_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `site_longitude` double unsigned DEFAULT '0',
  `site_latitude` double unsigned DEFAULT '0',
  `site_elevation` double unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `city_id` bigint(20) unsigned DEFAULT '0',
  `barangay_id` bigint(20) unsigned DEFAULT '0',
  `site-date` date DEFAULT NULL,
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `site_id_UNIQUE` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pis_sites`
--

LOCK TABLES `pis_sites` WRITE;
/*!40000 ALTER TABLE `pis_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `pis_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_activities`
--

DROP TABLE IF EXISTS `psi_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_activities` (
  `activity_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `activity_type_id` bigint(20) unsigned DEFAULT '0',
  `activity_title` varchar(255) DEFAULT '',
  `activity_address` text,
  `activity_target_date` date DEFAULT NULL,
  `activity_date_accomplished` date DEFAULT NULL,
  `activity_csf` double unsigned DEFAULT '0',
  `activity_remarks` text,
  `activity_no_participants` int(10) unsigned DEFAULT '0',
  `activity_no_male` int(10) unsigned DEFAULT '0',
  `activity_no_female` int(10) unsigned DEFAULT '0',
  `activity_no_pwd` int(10) unsigned DEFAULT '0',
  `activity_no_senior` int(10) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `activity_no_articles` bigint(20) unsigned DEFAULT '1',
  `region_id` bigint(20) unsigned DEFAULT '6',
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_activities`
--

LOCK TABLES `psi_activities` WRITE;
/*!40000 ALTER TABLE `psi_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_activity_types`
--

DROP TABLE IF EXISTS `psi_activity_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_activity_types` (
  `activity_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `activity_type_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`activity_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_activity_types`
--

LOCK TABLES `psi_activity_types` WRITE;
/*!40000 ALTER TABLE `psi_activity_types` DISABLE KEYS */;
INSERT INTO `psi_activity_types` VALUES (1,'Exhibits 	'),(2,'Media Releases (Radio) 	'),(3,'Media Releases (Print) 	'),(4,'Media Releases (Television) 	'),(5,'Media Releases (Web Blogs) 	'),(6,'Press Conferences 	'),(7,'Radio Plugs 	'),(8,'S&amp;T Fair');
/*!40000 ALTER TABLE `psi_activity_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_agencies`
--

DROP TABLE IF EXISTS `psi_agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_agencies` (
  `agency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) DEFAULT '',
  `agency_acronym` varchar(255) DEFAULT '',
  `agency_filename` varchar(255) DEFAULT '',
  `agency_file` varchar(255) DEFAULT '',
  `agency_address` text,
  `agency_contact` varchar(255) DEFAULT '',
  `agency_email` varchar(255) DEFAULT '',
  `agency_phone` varchar(255) DEFAULT '',
  `agency_website` varchar(255) DEFAULT '',
  `agency_mobile` varchar(255) DEFAULT '',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` date DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_agencies`
--

LOCK TABLES `psi_agencies` WRITE;
/*!40000 ALTER TABLE `psi_agencies` DISABLE KEYS */;
INSERT INTO `psi_agencies` VALUES (1,'Department of Science &amp; Technology Region 4-A CALABARZON','DOST 4A','PROGRAMS-and-SERVICES-nf','PROGRAMS-and-SERVICES-nf-ufddecg-20170808_155301.png','Jamboree Road, Timugan, Los BaÃ±os, Laguna','2','','3','5','4','Admin Is Traytor','2015-04-26','Admin Is Treytor','2017-08-08');
/*!40000 ALTER TABLE `psi_agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_barangays`
--

DROP TABLE IF EXISTS `psi_barangays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_barangays` (
  `barangay_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` bigint(20) unsigned DEFAULT '0',
  `district_id` bigint(20) DEFAULT '0',
  `barangay_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`barangay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_barangays`
--

LOCK TABLES `psi_barangays` WRITE;
/*!40000 ALTER TABLE `psi_barangays` DISABLE KEYS */;
INSERT INTO `psi_barangays` VALUES (1,1,1,'Ayala'),(2,1,1,'Baliwasan'),(3,1,1,'Baluno'),(4,1,1,'Cabatangan'),(5,1,1,'Calarian'),(6,1,1,'Camino Nuevo'),(7,1,1,'Campo Islam'),(8,1,1,'Canelar'),(9,1,1,'Capisan'),(10,1,1,'Cawit'),(11,1,1,'Dulian (Upper Pasonanca)'),(12,1,1,'La Paz'),(13,1,1,'Labuan'),(14,1,1,'Limpapa'),(15,1,1,'Maasin'),(16,1,1,'Malagutay'),(17,1,1,'Mariki'),(18,1,1,'Pamucutan'),(19,1,1,'Pasonanca'),(20,1,1,'Patalon'),(21,1,1,'Recodo'),(22,1,1,'Rio Hondo'),(23,1,1,'San Jose Cawa-cawa'),(24,1,1,'San Jose Gusu'),(25,1,1,'San Roque'),(26,1,1,'Sta. Barbara'),(27,1,1,'Sta. Maria'),(28,1,1,'Sto. Niño'),(29,1,1,'Sinubung'),(30,1,1,'Sinunuc'),(31,1,1,'Talisayan'),(32,1,1,'Tulungatung'),(33,1,1,'Tumaga'),(34,1,1,'Zone 1'),(35,1,1,'Zone 2'),(36,1,1,'Zone 3'),(37,1,1,'Zone 4'),(38,1,2,'Arena Blanco'),(39,1,2,'Boalan'),(40,1,2,'Bolong'),(41,1,2,'Buenavista'),(42,1,2,'Bunguiao'),(43,1,2,'Busay'),(44,1,2,'Cabaluay'),(45,1,2,'Cacao'),(46,1,2,'Calabasa'),(47,1,2,'Culianan'),(48,1,2,'Curuan'),(49,1,2,'Dita'),(50,1,2,'Divisoria'),(51,1,2,'Dulian (Upper Bunguiao)'),(52,1,2,'Guisao'),(53,1,2,'Guiwan'),(54,1,2,'Kasanyangan'),(55,1,2,'Lamisahan'),(56,1,2,'Landang Gua'),(57,1,2,'Landang Laum'),(58,1,2,'Lanzones'),(59,1,2,'Lapakan'),(60,1,2,'Latuan'),(61,1,2,'Licomo'),(62,1,2,'Limaong'),(63,1,2,'Lubigan'),(64,1,2,'Lumayang'),(65,1,2,'Lumbangan'),(66,1,2,'Lunzuran'),(67,1,2,'Mampang'),(68,1,2,'Manalipa'),(69,1,2,'Mangusu'),(70,1,2,'Manicahan'),(71,1,2,'Mercedes'),(72,1,2,'Muti'),(73,1,2,'Pangapuyan'),(74,1,2,'Panubigan'),(75,1,2,'Pasilmanta'),(76,1,2,'Pasobolong'),(77,1,2,'Putik'),(78,1,2,'Quiniput'),(79,1,2,'Salaan'),(80,1,2,'Sangali'),(81,1,2,'Sta. Catalina'),(82,1,2,'Sibulao'),(83,1,2,'Tagasilay'),(84,1,2,'Taguiti'),(85,1,2,'Talabaan'),(86,1,2,'Talon-talon'),(87,1,2,'Taluksangay'),(88,1,2,'Tetuan'),(89,1,2,'Tictapul'),(90,1,2,'Tigbalabag'),(91,1,2,'Tictabon'),(92,1,2,'Tolosa'),(93,1,2,'Tugbungan'),(94,1,2,'Tumalutap'),(95,1,2,'Tumitus'),(96,1,2,'Victoria'),(97,1,2,'Vitali'),(98,1,2,'Zambowood'),(341,513,2,'Bambang'),(340,513,2,'Batong Malake'),(101,506,3,'Santa Rosa'),(102,506,3,'San Roque'),(103,506,3,'San Miguel'),(104,506,3,'San Miguel'),(105,506,3,'San Juan'),(106,506,3,'Ildefonso'),(107,506,3,'San Benito'),(108,506,3,'San Andres'),(109,506,3,'Del Carmen'),(110,506,3,'Palma'),(111,506,3,'San Gregorio'),(112,506,3,'Barangay  Iv (Pob.)'),(113,506,3,'San Agustin'),(114,506,3,'Barangay Iii (Pob.)'),(115,506,3,'Barangay Ii (Pob.)'),(116,506,3,'Barangay I (Pob.)'),(117,507,2,'Tranca'),(118,507,2,'Tagumpay'),(119,507,2,'Santa Cruz'),(120,507,2,'San Agustin ( Pob. )'),(121,507,2,'Puypuy'),(122,507,2,'Santo Domingo'),(123,507,2,'San Nicolas (Pob.)'),(124,507,2,'San Isidro'),(125,507,2,'San Antonio'),(126,507,2,'Paciano Rizal'),(127,507,2,'Masaya'),(128,507,2,'Dila'),(129,507,2,'Calo'),(130,507,2,'Maitim'),(131,507,2,'Bitin'),(132,501,2,'San Isidro'),(133,501,2,'Sala'),(134,501,2,'Pulo'),(135,501,2,'Barangay Tres (Pob.)'),(136,501,2,'Barangay Dos (Pob.)'),(137,501,2,'Barangay Uno (Pob.)'),(138,501,2,'Pittland'),(139,501,2,'Niugan'),(140,501,2,'Marinig'),(141,501,2,'Mamatid'),(142,501,2,'Gulod'),(143,501,2,'Diezmo'),(144,501,2,'Casile'),(145,501,2,'Butong'),(146,501,2,'Bigaa'),(147,501,2,'Banlic'),(148,501,2,'Banaybanay'),(149,501,2,'Baclaran'),(150,508,3,'Silangan (Pob.)'),(151,508,3,'Santo Tomas'),(152,508,3,'San Isidro'),(153,508,3,'Prinza'),(154,508,3,'Perez'),(155,508,3,'Paliparan'),(156,508,3,'Masiit'),(157,508,2,'Mabacan'),(158,508,3,'Limao'),(159,508,3,'Lamot  2'),(160,508,3,'Lamot 1'),(161,508,3,'Kanluran (Pob.)'),(162,508,3,'Imok'),(163,508,3,'Hanggan'),(164,508,3,'Dayap'),(165,508,3,'Bangyas'),(166,508,3,'Balayhangin'),(167,509,4,'Udia'),(168,509,4,'Tibatib'),(169,509,4,'Sumucab'),(170,509,4,'Sisilmin'),(171,509,4,'Silangan Talaongan'),(172,509,4,'Poblacion'),(173,509,4,'Paowin'),(174,509,4,'Mahipon'),(175,509,4,'Layug'),(176,509,4,'Layasin'),(177,509,4,'Labayo'),(178,509,4,'Kanluran Talaongan'),(179,509,4,'Inao-awan'),(180,509,4,'Duhat'),(181,509,4,'Cansuso'),(182,509,4,'Bulajo'),(183,509,4,'Bukal'),(184,509,4,'Bangco'),(185,509,4,'Anglas'),(186,500,1,'Zapote'),(187,500,1,'Tubigan'),(188,500,1,'Timbao'),(189,500,1,'Soro-soro'),(190,500,1,'Santo Toma (Calabuso)'),(191,500,1,'Santo Nino'),(192,500,1,'Santo Domingo'),(193,500,1,'San Vicente'),(194,500,1,'San Jose'),(195,500,1,'San Francisco'),(196,500,1,'San Antonio'),(197,500,1,'Poblacion'),(198,500,1,'Platero'),(199,500,1,'Mamplasan'),(200,500,1,'Malamig'),(201,500,1,'Malaban'),(202,500,1,'Loma'),(203,500,1,'Langkiwa'),(204,500,1,'Ganado'),(205,500,1,'De La Paz'),(206,500,1,'Casile'),(207,500,1,'Canlalay'),(208,500,1,'Bungahan'),(209,500,1,'Binan (Poblacion)'),(211,502,2,'Mabato'),(212,502,2,'Canlubang'),(213,502,2,'Halang'),(214,502,2,'Hornalan'),(215,502,2,'Puting Lupa'),(216,502,2,'Kay-anlog'),(217,502,2,'Turbina'),(218,502,2,'Ulango'),(219,502,2,'Sucol'),(220,502,2,'Bagong Kalsada'),(221,502,2,'Sirang Lupa'),(222,502,2,'Barangay 1 (Pob.)'),(223,502,2,'Barangay 2 (Pob.)'),(224,502,2,'San Juan'),(225,502,2,'Banlic'),(226,502,2,'San Cristobal'),(227,502,2,'Barangay 3 (Pob.)'),(228,502,2,'Barangay 4 (Pob.)'),(229,502,2,'Saimsim'),(230,502,2,'Barangay 5 (Pob.)'),(231,502,2,'Sampiruhan'),(232,502,2,'Barangay 6 (Pob.)'),(233,502,2,'Real'),(234,502,2,'Barangay 7 (Pob.)'),(235,502,2,'Banadero'),(236,502,2,'Barandal'),(237,502,2,'Punta'),(238,502,2,'Batino'),(239,502,2,'Pansol'),(240,502,2,'Bunggo'),(241,502,2,'Bubuyan'),(242,502,2,'Parian'),(243,502,2,'Prinza'),(244,502,2,'San Jose'),(245,502,2,'Uwisan'),(246,502,2,'Palo-alto'),(247,502,2,'Palingon'),(248,502,2,'Masili'),(249,502,2,'Paciano Rizal'),(250,502,2,'Milagrosa (Tulo)'),(251,502,2,'Mayapa'),(252,502,2,'Maunong'),(253,502,2,'Mapagong'),(254,502,2,'Makiling'),(255,502,2,'Majada Labas'),(256,502,2,'Camaligan'),(257,502,2,'Laguerta'),(258,502,2,'Burol'),(259,502,2,'Bucal'),(260,502,2,'Looc'),(261,502,2,'Lingga'),(262,502,2,'Lecheria'),(263,502,2,'Lawa'),(264,502,2,'La Mesa'),(265,505,1,'Tagapo'),(266,505,1,'Santo Domingo'),(267,505,1,'Sinalhan'),(268,505,1,'Pulong Santa Cruz'),(269,505,1,'Pook'),(270,505,1,'Market Area (Pob.)'),(271,505,1,'Malusak'),(272,505,1,'Malitlit'),(273,505,1,'Macabling'),(274,505,1,'Labas'),(275,505,1,'Kanluran (Pob.)'),(276,505,1,'Ibaba'),(277,505,1,'Don Jose'),(278,505,1,'Dita'),(279,505,1,'Dila'),(280,505,1,'Caingin'),(281,505,1,'Balibago'),(282,505,1,'Aplaya'),(283,510,4,'Kataypuanan'),(284,510,4,'Tunhac'),(285,510,4,'Salangbato'),(286,510,4,'Minayutan'),(287,510,4,'Mayatba'),(288,510,4,'Magdalo (Pob.)'),(289,510,4,'Maate'),(290,510,4,'Liyang'),(291,510,4,'Kapatalan'),(292,510,4,'Damayan'),(293,510,4,'Cuebang Bato'),(294,510,4,'Calumpang (Pob.)'),(295,510,4,'Caballero (Pob.)'),(296,510,4,'Bulihan'),(297,510,4,'Batuhan'),(298,510,4,'Banaba (Pob.)'),(299,510,4,'Balitoc'),(300,510,4,'Bagong Pag-asa (Pob.)'),(301,510,4,'Bacong-sigsigan'),(302,510,4,'Asana (Pob.)'),(303,511,4,'San Juan (Pob.)'),(304,511,4,'San Antonio'),(305,511,4,'San Juan (Pob.)'),(306,511,4,'Longos'),(307,512,3,'Ilayang Palina'),(308,512,3,'Ibabang Taykin'),(309,512,3,'Ibabang Sungi'),(310,512,3,'Tuy-baanan'),(311,512,3,'Silangang Bukal'),(312,512,3,'San Isidro'),(313,512,3,'Rizal (Pob.)'),(314,512,3,'Palayan'),(315,512,3,'Pag-asa (Pob.)'),(316,512,3,'Oples'),(317,512,3,'Novaliches'),(318,512,3,'Mojon'),(319,512,3,'Maslun (Pob.)'),(320,512,3,'Masikap (Pob.)'),(321,512,3,'Malabo-kalantukan'),(322,512,3,'Luquin'),(323,512,3,'Laguan'),(324,512,3,'Kanlurang Bukal'),(325,512,3,'Ilayang Taykin'),(326,512,3,'Ilayang Sungi'),(327,512,3,'Ilayang San Roque'),(328,512,3,'Ibabang San Roque'),(329,512,3,'Ibabang Palina'),(330,512,3,'Dita'),(331,512,3,'Daniw (Danliw)'),(332,512,3,'Dagatan'),(333,512,3,'Culoy'),(334,512,3,'Calumpang'),(335,512,3,'Cabuyao'),(336,512,3,'Bubukal'),(337,512,3,'Bongkol'),(338,512,3,'Bayate'),(339,512,3,'Bagong Anyo (Pob.)'),(342,513,2,'Maahas'),(343,514,4,'San Diego'),(344,514,4,'Barangay Zone 1 (Pob.)'),(345,514,4,'San Isidro'),(346,514,4,'San Jose'),(347,514,4,'San Juan'),(348,514,4,'Barangay Zone Viii ( Pob. )'),(349,514,4,'De La Paz'),(350,514,4,'Barangay Zone Vii (Pob. )'),(351,514,4,'Barangay Zone V (Pob.)'),(352,514,4,'Barangay Zone Vi (Pob.)'),(353,514,4,'San Antonio'),(354,514,4,'Barangay Zone Iii (Pob.)'),(355,514,4,'Barangay Zone Ii (Pob.)'),(356,514,4,'San Buenaventura'),(357,514,4,'Barangay Zone Iv (Pob.)'),(358,514,4,'San Luis'),(359,514,4,'San Pablo'),(360,514,4,'San Pedro'),(361,514,4,'San Rafael'),(362,514,4,'San Roque'),(363,514,4,'San Salvador'),(364,514,4,'Santo Tomas'),(365,514,4,'Santo Domingo'),(366,515,4,'Lewin'),(367,515,4,'Concepcion'),(368,515,4,'Caliraya'),(369,515,4,'Balubad'),(370,515,4,'Balimbingan (Pob.)'),(371,515,4,'Santo Nino (Pob.)'),(372,515,4,'Wawa'),(373,515,4,'Segunda Pulo (Pob.)'),(374,515,4,'Segunda Parang (Pob.)'),(375,515,4,'Salac (Pob.)'),(376,515,4,'Primera Pulo (Pob.)'),(377,515,4,'Primera Parang (Pob.)'),(378,515,4,'Maytalang Ii'),(379,515,4,'Maytalang I'),(380,515,4,'Maracta (Pob.)'),(381,515,4,'Bagong Silang'),(382,516,4,'Sinagtala (Pob.)'),(383,516,4,'San Miguel'),(384,516,4,'San Antonio'),(385,516,4,'Pag-asa (Pob.)'),(386,516,4,'Paagahan'),(387,516,4,'Numero'),(388,516,4,'Nanguma'),(389,516,4,'Matalatala'),(390,516,4,'Masikap (Pob.)'),(391,516,4,'Maligaya (Pob.)'),(392,516,4,'Lucong'),(393,516,4,'Libis Ng Nayon (Pob.)'),(394,516,4,'Lambac (Pob.)'),(395,516,4,'Bayanihan (Pob.)'),(396,516,4,'Amuyong'),(397,517,4,'Tipunan'),(398,517,4,'Tanawan'),(399,517,4,'Salasad'),(400,517,4,'Sabang'),(401,517,4,'Poblacion'),(402,517,4,'Munting Ambling'),(403,517,4,'Maravilla'),(404,517,4,'Malinao'),(405,517,4,'Malaking Ambling'),(406,517,4,'Ilog'),(407,517,4,'Ilayang Butnong'),(408,517,4,'Ilayang Atingay'),(409,517,4,'Ibabang Butnong'),(410,517,4,'Ibabang Atingay'),(411,517,4,'Halayhayin'),(412,517,4,'Cigaras'),(413,517,4,'Burlungan'),(414,517,4,'Buo'),(415,517,4,'Bungkol'),(416,517,4,'Buenavista'),(417,517,4,'Bucal'),(418,517,4,'Balanac'),(419,517,4,'Baanan'),(420,517,4,'Alipit'),(421,518,4,'Amonoy'),(422,518,4,'Taytay'),(423,518,4,'Villa Nogales'),(424,518,4,'San Miguel (Pob.)'),(425,518,4,'San Roque'),(426,518,4,'San Isidro'),(427,518,4,'Suba'),(428,518,4,'San Francisco (Pob.)'),(429,518,4,'Talortor'),(430,518,4,'Tanawan'),(431,518,4,'Rizal'),(432,518,4,'Santa  Catalina (Pob.)'),(433,518,4,'Pook'),(434,518,4,'Piit'),(435,518,4,'Panglan'),(436,518,4,'Pangil'),(437,518,4,'Panalaban'),(438,518,4,'Origuel (Pob.)'),(439,518,4,'Oobi'),(440,518,4,'Olla'),(441,518,4,'Munting Kawayan'),(442,518,4,'May-it'),(443,518,4,'Malinao'),(444,518,4,'Isabang'),(445,518,4,'Ilayang Bayucain'),(446,518,4,'Ibabang Banga'),(447,518,4,'Ilayang Banga'),(448,518,4,'Ibabang Bayucain'),(449,518,4,'Gagalot'),(450,518,4,'Coralao'),(451,518,4,'Burol'),(452,518,4,'Burgos'),(453,518,4,'Bukal'),(454,518,4,'Botocan'),(455,518,4,'Bitaoy'),(456,516,4,'Banti'),(457,518,4,'Banilad'),(458,518,4,'Balayong'),(459,518,4,'Balanac'),(460,518,4,'Bakia'),(461,519,3,'Alumbrado'),(462,519,3,'Nagcalbang'),(463,519,3,'Balayong'),(464,519,3,'Balinacon'),(465,519,3,'Bambang'),(466,519,3,'Banago'),(467,519,3,'Banca-banca'),(468,519,3,'Bancuro'),(469,519,3,'Bayaquitos'),(470,519,3,'Buboy'),(471,519,3,'Buenavista'),(472,519,3,'Buhanginan'),(473,519,3,'Alibungbungan'),(474,519,3,'Abo'),(475,519,3,'Bukal'),(476,519,3,'Banilad'),(477,519,3,'Balimbing'),(478,519,3,'Yukos'),(479,519,3,'Bunga'),(480,519,3,'Cabuyew'),(481,519,3,'Calumpang'),(482,519,3,'Kanlurang Lazaan'),(483,519,3,'Labangan'),(484,519,3,'Kanlurang Kabubuhayan'),(485,519,3,'Maravilla'),(486,519,3,'Manaol'),(487,519,3,'Lagulo'),(488,519,3,'Lawaguin'),(489,519,3,'Maiit'),(490,519,3,'Poblacion Iii (Pob.)'),(491,519,3,'Poblacion Ii (Pob.)'),(492,519,3,'Poblacion I (Pob.)'),(493,519,3,'Palina'),(494,519,3,'Oples'),(495,519,3,'Malaya'),(496,519,3,'Palayan'),(497,519,3,'Wakat'),(498,519,3,'Tipacan'),(499,519,3,'Taytay'),(500,519,3,'Talangan'),(501,519,3,'Talahib'),(502,519,3,'Sabang'),(503,519,3,'San Francisco'),(504,519,3,'Silangan Napapatid'),(505,519,3,'Sinipian'),(506,519,3,'Sibulan'),(507,519,3,'Santa Lucia'),(508,519,3,'Silangan Kabubuhayan'),(509,519,3,'Silangan  Ilaya'),(510,519,3,'Silangan Lazaan'),(511,519,3,'Sulsuguin'),(512,519,3,'Malinao'),(513,520,4,'Quinale'),(514,520,4,'Maytoong (Pob.)'),(515,520,4,'Ilaya Del Sur (Pob.)'),(516,520,4,'Ilaya Del Norte'),(517,520,4,'Ibaba Del Sur (Pob.)'),(518,520,4,'Ibaba Del Norte (Pob.)'),(519,520,4,'Ermita (Pob.)'),(520,520,4,'Bangkusay (Pob.)'),(521,520,4,'Bagumbayan (Pob.)'),(522,513,2,'Malinta'),(523,513,2,'Bayog'),(524,513,2,'Lalakay'),(525,513,2,'Baybayin (Pob.)'),(526,513,2,'Timugan (Pob.)'),(527,513,2,'Tadlak'),(528,513,2,'San Antonio'),(529,513,2,'Putho Tuntungin'),(530,513,2,'Mayondon'),(531,513,2,'Malinta'),(532,513,2,'Bagong Silang'),(533,513,2,'Anos'),(534,513,2,'Tadlak'),(535,521,4,'Binan'),(536,521,4,'Maulawin'),(537,521,4,'San Isidro'),(538,521,4,'Sampaloc'),(539,521,4,'Sabang'),(540,521,4,'Barangay Ii (Pob.)'),(541,521,4,'Barangay 1 (Pob.)'),(542,521,4,'Pinagsanjan'),(543,521,4,'Magdapio'),(544,521,4,'Layugan'),(545,521,4,'Lambac'),(546,521,4,'Dingin'),(547,521,4,'Calusiche'),(548,521,4,'Anibong'),(549,521,2,'Anibong'),(550,521,2,'Buboy'),(551,521,4,'Cabanbanan'),(552,522,4,'Matikiw'),(553,522,4,'Tavera (Pob.)'),(554,522,4,'Taft (Pob.)'),(555,522,4,'Saray'),(556,522,4,'Rizal (Pob.)'),(557,522,4,'Kabulusan'),(558,522,4,'Gonzales (Pob.)'),(559,522,4,'Dorado'),(560,522,4,'Casinsisn'),(561,522,4,'Casa Real'),(562,522,4,'Burgos (Pob.)'),(563,522,4,'Banilan'),(564,522,4,'Bano (Pob.)'),(565,523,4,'Sulib'),(566,523,4,'Mabato-azufre'),(567,523,4,'Isla (Pob.)'),(568,523,4,'Galalan'),(569,523,4,'Dambo'),(570,523,4,'Balian'),(571,523,4,'San Jose (Pob.)'),(572,523,4,'Natividad (Pob.)'),(573,524,4,'Santa Clara Norte (Pob.)'),(574,524,4,'Masico'),(575,524,4,'Bulilan Norte (Pob.)'),(576,524,4,'Santa Clara Sur (Pob.)'),(577,524,4,'San Antonio'),(578,524,4,'Bukal'),(579,524,4,'Labuin'),(580,524,4,'Aplaya'),(581,524,4,'Bulilan Sur (Pob.)'),(582,524,4,'Concepcion'),(583,524,4,'Tubuan'),(584,524,4,'Pinagbayanan'),(585,524,4,'Bagong Pook'),(586,524,4,'Linga'),(587,524,4,'Mojon'),(588,524,4,'San Miguel'),(589,524,4,'Pansol'),(590,525,3,'West Poblacion'),(591,525,3,'Tuy'),(592,525,3,'Talaga'),(593,525,3,'Tala'),(594,525,3,'Paule 2'),(595,525,3,'Paule 1'),(596,525,3,'Pook'),(597,525,3,'Laguan'),(598,525,3,'Entablado'),(599,525,3,'East Poblacion'),(600,525,3,'Antipolo'),(601,503,3,'Barangay 1-a (Pob.)'),(602,503,3,'Santiago I'),(603,503,3,'Barangay Ii-c (Pob.)'),(604,503,3,'Barangay Iv-b (Pob.)'),(605,503,3,'Barangay Iv- (Pob)'),(606,503,3,'Barangay V- (Pob.)'),(607,503,3,'Barangay V- (Pob.)'),(608,503,3,'Barangay V-c (Pob.)'),(609,503,3,'Barangay V-d (Pob.)'),(610,503,3,'Barangay Vi-a (Pob.)'),(611,503,3,'Barangay Vi-b (Pob.)'),(612,503,3,'Barangay Vi- (Pob.)'),(613,503,3,'Barangay Vi- (Pob.)'),(614,503,3,'Barangay Vii- (Pob.)'),(615,503,3,'Barangay Vii- (Pob.)'),(616,503,3,'Barangay Vii- (Pob.)'),(617,503,3,'Barangay Vii- (Pob.)'),(618,503,3,'Barangay Vii- (Pob.)'),(619,503,3,'Soledad'),(620,503,3,'Santo Nino'),(621,503,3,'Santo Cristo'),(622,503,3,'Santo Angel'),(623,503,3,'Santisimo Rosario'),(624,503,3,'Santa Veronica'),(625,503,3,'Santa Maria'),(626,503,3,'Santa Felomina'),(627,503,3,'Santa Elena'),(628,503,3,'Santa Cruz'),(629,503,3,'Santa Catalina'),(630,503,3,'Santa Ana'),(631,503,3,'San Vicente'),(632,503,3,'Santiago Ii'),(633,503,3,'San Roque'),(634,503,3,'San Rafael'),(635,503,3,'San Pedro'),(636,503,3,'San Nicolas'),(637,503,3,'Santa Monica'),(638,503,3,'San Miguel'),(639,503,3,'Santa Maria Magdalena'),(640,503,3,'San Mateo'),(641,503,3,'San Marcos'),(642,503,3,'San Lucas 2'),(643,503,3,'Santa Isabela'),(644,503,3,'San Lucas 1'),(645,503,3,'San Lorenzo'),(646,503,3,'San Juan'),(647,503,3,'Barangay Iv- (Pob.)'),(648,503,3,'San Jose'),(649,503,3,'Barangay Iii- (Pob.)'),(650,503,3,'San Joaquin'),(651,503,3,'Barangay Iii- (Pob.)'),(652,503,3,'San Isidro'),(653,503,3,'San Ignacio'),(654,503,3,'Barangay Iii-d'),(655,503,3,'San Gregorio'),(656,503,3,'Barangay Iii- (Pob.)'),(657,503,3,'San Gabriel'),(658,503,3,'San Francisco'),(659,503,3,'Barangay Iii- (Pob.)'),(660,503,3,'San Diego'),(661,503,3,'Barangay Iii- (Pob.)'),(662,503,3,'San Cristobal'),(663,503,3,'Barangay Ii- (Pob.)'),(664,503,3,'San Crispin'),(665,503,3,'Barangay Ii- (Pob.)'),(666,503,3,'San Buenavenrtura'),(667,503,3,'Barangay Ii- (Pob.)'),(668,503,3,'San Bartoleme'),(669,503,3,'San Antonio 2'),(670,503,3,'Barangay Ii- (Pob.)'),(671,503,3,'San Antonio 1'),(672,503,3,'Barangay Ii- (Pob.)'),(673,503,3,'Dolores'),(674,503,3,'Del Remedio'),(675,503,3,'Barangay I- (Pob.)'),(676,503,3,'Concepcion'),(677,503,3,'Bautista'),(678,503,3,'Bagong Pook Vi- (Pob.)'),(679,503,3,'Bagong Bayan Ii- (Pob.)'),(680,503,3,'Barangay 1- (Pob.)'),(681,503,3,'Atisan'),(682,504,1,'United Better Living'),(683,504,1,'United Bayanihan'),(684,504,1,'Santo Nino'),(685,504,1,'San Vicente'),(686,504,1,'San Roque'),(687,504,1,'San Antonio'),(688,504,1,'Sampaguita Village'),(689,504,1,'Riverside'),(690,504,1,'Poblacion'),(691,504,1,'Nueva'),(692,504,1,'Narra'),(693,504,1,'Magsaysay'),(694,504,1,'Laram'),(695,504,1,'Langgam'),(696,504,1,'Landayan'),(697,504,1,'G.s.i.s'),(698,504,1,'Estrella'),(699,504,1,'Cuyab'),(700,504,1,'Calendola'),(701,504,1,'Bagong Silang'),(702,526,4,'Santo Angel Sur'),(703,526,4,'Santo Angel Norte'),(704,526,4,'Santisima Cruz'),(705,526,4,'Santo Angel Central'),(706,526,4,'San Pablo Sur'),(707,526,4,'San Pablo Norte'),(708,526,4,'San Juan'),(709,526,4,'San Jose'),(710,526,4,'Baragay V (Pob.)'),(711,526,4,'Barangay I (Pob.)'),(712,526,4,'Barangay Iii (Pob.)'),(713,526,4,'Barangay I (Pob)'),(714,526,4,'Barangay  (Pob.)'),(715,526,4,'Patimbao'),(716,526,4,'Patimbao'),(717,526,4,'Palasan'),(718,526,4,'Pagsawitan'),(719,526,4,'Oogong'),(720,526,4,'Malinao'),(721,526,4,'Labuin'),(722,526,4,'Jasaan'),(723,526,4,'Gatid'),(724,526,4,'Duhat'),(725,5264,4,'Calios'),(726,526,4,'Bagumbayan'),(727,526,4,'Bubukal'),(728,526,4,'Alipit'),(729,527,4,'Tungkod'),(730,527,4,'Talangka'),(731,527,4,'Santiago'),(732,527,4,'Jose Rizal'),(733,527,4,'Barangay Iv (Pob.)'),(734,527,4,'Barangay Iii (Pob.)'),(735,527,4,'Baragay I (Pob)'),(736,527,4,'Mataling-ting'),(737,527,4,'Masinao'),(738,527,4,'Macasipac'),(739,527,4,'Kayhakat'),(740,527,4,'Jose Laurel Sr.'),(741,527,4,'Inayapan'),(742,527,4,'Cueva'),(743,527,4,'Barangay I (Pob)'),(744,527,4,'Coralan'),(745,527,4,'Cambuja'),(746,527,4,'Parang Ng Buho'),(747,527,4,'Calangay'),(748,527,4,'Cabooan'),(749,527,4,'Pao-o'),(750,527,4,'Adia'),(751,527,4,'Bubukal'),(752,527,4,'Bagumbayan'),(753,527,4,'Bagong Pook'),(754,528,4,'Wawa'),(755,528,4,'Salubungan'),(756,528,4,'Pandeno'),(757,528,4,'P.burgos'),(758,528,4,'Mendiola'),(759,528,4,'Magsaysay'),(760,528,4,'Macatad'),(761,528,4,'Mayatba'),(762,528,4,'Llavac'),(763,528,4,'Liyang'),(764,528,4,'Laguio'),(765,528,4,'Kapatalan'),(766,528,4,'J. Rizal (Pob.)'),(767,528,4,'Halayhayin'),(768,528,4,'Gen. Luna'),(769,528,4,'G. Redor (Pob)'),(770,528,4,'Buhay'),(771,528,4,'Bagumbarangay (Pob.)'),(772,528,4,'Bagong Pag-asa (Pob.)'),(773,528,4,'Acevida'),(774,529,3,'Daniw'),(775,529,3,'Masapang'),(776,529,3,'Banca-banca'),(777,529,3,'Nanhay (Pob.)'),(778,529,3,'Pagalangan'),(779,529,3,'San Benito'),(780,529,3,'San Felix'),(781,529,3,'San Francisco'),(782,529,3,'San Roque (Pob.)'),(783,483,7,'Sinaliw Malaki'),(784,483,7,'Kaytitinga'),(785,483,7,'Taywanak Ibaba'),(786,483,7,'Matagbak Ii'),(787,483,7,'Matagbak Ii'),(788,483,7,'Marahan Ii'),(789,483,7,'Marahan I'),(790,483,7,'Mangas Ii'),(791,483,7,'Kaytitinga Iii'),(792,483,7,'Barangay I'),(793,483,7,'Upli'),(794,483,7,'Taywanak Ilaya'),(795,483,7,'Sulsugin'),(796,483,7,'Santa Teresa'),(797,483,7,'Sinaliw Na Munti'),(798,483,7,'Sinaliw Malaki'),(799,483,7,'Sikat'),(800,483,7,'Barangay V'),(801,483,7,'Barangay Iv'),(802,483,7,'Barangay Iii'),(803,48,7,'Barangay Ii'),(804,483,7,'Palumlum'),(805,483,7,'Pajo'),(806,483,7,'Matagbak I'),(807,483,7,'Mangas I'),(808,483,7,'Luksuhin Ilaya'),(809,483,7,'Luksuhin'),(810,483,7,'Kaytitinga Ii'),(811,483,7,'Kaytitinga I'),(812,483,7,'Kaysuyo'),(813,483,7,'Esperanza Ilaya'),(814,483,7,'Esperanza Ibaba'),(815,483,7,'Buck Estate'),(816,483,7,'Bilog'),(817,483,7,'Amuyong'),(818,484,6,'Barangay X'),(819,484,6,'Maymangga'),(820,484,6,'Maitim'),(821,484,6,'Loma'),(822,484,6,'Halang'),(823,484,6,'Barangay Viii'),(824,484,6,'Minantok Silangan'),(825,484,6,'Talon'),(826,484,6,'Pangil'),(827,484,6,'Salaban'),(828,484,6,'Tamacan'),(829,484,6,'Minantok Kanluran'),(830,484,6,'Barangay V'),(831,484,6,'Barangay Ix'),(832,484,6,'Barangay Iv'),(833,484,6,'Banaybanay'),(834,484,6,'Bucal'),(835,484,6,'Buho'),(836,484,6,'Dagatan'),(837,484,6,'Barangay I'),(838,484,6,'Barangay Vii'),(839,484,6,'Barangay Vi'),(840,484,6,'Barangay V'),(841,484,6,'Barangay Xii'),(842,484,6,'Barangay Xi'),(843,484,6,'Barangay Iii'),(844,484,6,'Barangay Ii'),(845,477,2,'Talaba Iv'),(846,477,2,'San Nicolas I'),(847,477,2,'Zapote V'),(848,477,2,'Zapote Iv'),(849,477,2,'Zapote Iii'),(850,477,2,'Zapote Ii'),(851,477,2,'Zapote I'),(852,477,2,'Talaba Vii'),(853,477,2,'Talaba Vi'),(854,477,2,'Talaba V'),(855,477,2,'Talaba Iv'),(856,477,2,'Talaba Iii'),(857,477,2,'Talaba Ii'),(858,477,2,'Talaba I'),(859,477,2,'Tabing Dagat'),(860,477,2,'Sineguelasan'),(861,477,2,'San Nicolas Iii'),(862,477,2,'San Nicolas Ii'),(863,477,2,'Salinas Iv'),(864,477,2,'Salinas Iii'),(865,477,2,'Salinas I'),(866,477,2,'Real Ii'),(867,477,2,'Real I'),(868,477,2,'Queens Row West'),(869,477,2,'Queens Row Central'),(870,477,2,'P.f. Espiritu Viii'),(871,477,2,'P.f. Espiritu Vii'),(872,477,2,'P.f. Espiritu Vi'),(873,477,2,'P.f. Espiritu V'),(874,477,2,'P.f. Espiritu Iv'),(875,477,2,'Niog Iii'),(876,477,2,'Niog Ii'),(877,477,2,'Niog I'),(878,477,2,'Molino Vii'),(879,477,2,'Molino Vi'),(880,477,2,'Molino V'),(881,477,2,'Molino Iv'),(882,477,2,'Molino Iii'),(883,477,2,'Molino Ii'),(884,477,2,'Molino I'),(885,477,2,'Mambog V'),(886,477,2,'Mambog Iv'),(887,477,2,'Mambog Iii'),(888,477,2,'Mambog Ii'),(889,477,2,'Mambog I'),(890,477,2,'Maliksi Iii'),(891,477,2,'Maliksi Ii'),(892,477,2,'Maliksi I'),(893,477,2,'Mabolo Iii'),(894,477,2,'Mabolo Ii'),(895,477,2,'Mabolo Iii'),(896,477,2,'Mabolo I'),(897,477,2,'Ligas Iii'),(898,477,2,'Ligas Ii'),(899,477,2,'Ligas I'),(900,477,2,'Kaingin'),(901,477,2,'Habay Ii'),(902,477,2,'Habay I'),(903,477,2,'Dulong Bayan'),(904,477,2,'Digman'),(905,477,2,'Daang Bukid'),(906,477,2,'Campo Santo'),(907,477,2,'Bayanan'),(908,477,2,'Banalo'),(909,477,2,'Aniban V'),(910,477,2,'Aniban Iv'),(911,477,2,'Aniban Iii'),(912,477,2,'Aniban Ii'),(913,477,2,'Aniban I'),(914,477,2,'Alima'),(915,485,5,'Bancal'),(916,485,5,'Milagrosa'),(917,485,5,'Maduya'),(918,485,5,'Mabuhay'),(919,485,5,'Lantic'),(920,485,5,'Cabilang Baybay'),(921,485,5,'Barangay 8'),(922,485,5,'Barangay 7'),(923,485,5,'Barangay 6'),(924,485,5,'Barangay 5'),(925,485,5,'Barangay 4'),(926,485,5,'Barangay 3'),(927,485,5,'Barangay 1'),(928,478,1,'Barangay 53-b (Yakal B)'),(929,478,1,'Barangay 52 (Ipil)'),(930,478,1,'Barangay 9 (Kanaway)'),(931,478,1,'Barangay 9 (Kanaway)'),(932,478,1,'Barangay 8 (Manuel S. Rojas)'),(933,478,1,'Barangay 7 (Kapitan Kong)'),(934,478,1,'Barangay 62-b (Kangkong B)'),(935,478,1,'Barangay 62-a (Kangkong A)'),(936,478,1,'Barangay 62 (Kangkong)'),(937,478,1,'Barangay 61-a (Talong A)'),(938,478,1,'Barangay 61 (Talong)'),(939,478,1,'Barangay 60 (Letsugas)'),(940,478,1,'Barangay 6 (Diego Silang)'),(941,478,1,'Barangay 59 (Sitaw)'),(942,478,1,'Barangay 58-a (Patola A)'),(943,478,1,'Barangay 57 (Repolyo)'),(944,478,1,'Barangay 56 (Labanos)'),(945,478,1,'Barangay 55 (Ampalaya)'),(946,478,1,'Barangay 54-a (Pechay A)'),(947,478,1,'Barangay 54 (Pechay)'),(948,478,1,'Barangay 53-a (Yakal A)'),(949,478,1,'Barangay 53 (Yakal)'),(950,478,1,'Barangay 51 (Kamagong)'),(951,478,1,'Barangay 50 (Kabalyero)'),(952,478,1,'Barangay 5 (Hen. E. Evangelista)'),(953,478,1,'Barangay 49-a (Akasya A)'),(954,478,1,'Barangay 49 (Akasya)'),(955,478,1,'Barangay 48-a (Narra A)'),(956,478,1,'Barangay 48 (Narra)'),(957,478,1,'Barangay 47-b (Pagkakaisa B)'),(958,478,1,'Barangay 47-a (Pagkakaisa A)'),(959,478,1,'Barangay 47 (Pagkakaisa)'),(960,478,1,'Barangay 46 (Sinagtala)'),(961,478,1,'Barangay 45-a (Kaunlaran A)'),(962,478,1,'Barangay 45 (Kaunlaran)'),(963,478,1,'Barangay 44 (Maligaya)'),(964,478,1,'Barangay 43 (Pinagpala)'),(965,478,1,'Barangay 42-c (Pinagbuklod C)'),(966,478,1,'Barangay 42-b (Pinagbuklod B)'),(967,478,1,'Barangay 42-a (Pinagbuklod A)'),(968,478,1,'Barangay 42 (Pinagbuklod)'),(969,478,1,'Barangay 41 (Rosal)'),(970,478,1,'Barangay 40 (Gumamela)'),(971,478,1,'Barangay 4 (Hen. M. Trias)'),(972,478,1,'Barangay 39 (Jasmin)'),(973,478,1,'Barangay 38-a (Sampaguita A)'),(974,478,1,'Barangay 38 (Sampaguita)'),(975,478,1,'Barangay 37-a (Cadena De Amor A)'),(976,478,1,'Barangay 37 (Cadena De Amor)'),(977,478,1,'Barangay 36-a (Sap-sap A)'),(978,478,1,'Barangay 36 (Sap-sap)'),(979,478,1,'Barangay 35 (Hasa-hasa)'),(980,478,1,'Barangay 34 (Lapu-lapu)'),(981,478,1,'Barangay 33 (Buwan-buwan)'),(982,478,1,'Barangay 32 (Salay-salay)'),(983,478,1,'Barangay 31 (Maya-maya)'),(984,478,1,'Barangay 30 (Bid-bid)'),(985,478,1,'Barangay 3 (Hen. E. Aguinaldo)'),(986,478,1,'Barangay 29-a (Lao-lao A)'),(987,478,1,'Barangay 28 (Taurus)'),(988,478,1,'Barangay 27 (Sagitarius)'),(989,478,1,'Barangay 26 (Cancer)'),(990,478,1,'Barangay 25 (Capricorn)'),(991,478,1,'Barangay 24 (Libra)'),(992,478,1,'Barangay 23 (Aquarius)'),(993,478,1,'Barangay 22-a (Leo A)'),(994,478,1,'Barangay 22 (Leo)'),(995,478,1,'Barangay 21 (Scorpio)'),(996,478,1,'Barangay 20 (Virgo)'),(997,478,1,'Barangay 2 (C. Tirona)'),(998,478,1,'Barangay 19 (Gemini)'),(999,478,1,'Barangay 18 (Maya)'),(1000,478,1,'Barangay 17 (Kalapati)'),(1001,478,1,'Barangay 16 (Martines)'),(1002,478,1,'Barangay 15 (Kilyawan)'),(1003,478,1,'Barangay 14 (Loro)'),(1004,478,1,'Barangay 13 (Aguila)'),(1005,478,1,'Barangay 12 (Love Bird)'),(1006,478,1,'Barangay 11 (Lawin)'),(1007,478,1,'Barangay 10-b (Kingfisher-b)'),(1008,478,1,'Barangay 10-a (Kingfisher-a)'),(1009,478,1,'Barangay 10 (Kingfisher)'),(1010,478,1,'Barangay 1 (Hen. M. Alvarez)'),(1011,479,4,'Zone Iv (Pob.)'),(1012,479,4,'Sampaloc Iii'),(1013,479,4,'San Roque (Sta. Cristina Ii)'),(1014,479,4,'San Simon (Barangay 7)'),(1015,479,4,'Emmanuel Bergado I'),(1016,479,4,'San Dionisio (Barangay 1)'),(1017,479,4,'Santa Cristina I'),(1018,479,4,'San Juan (San Juan I)'),(1019,479,4,'San Nicolas Ii'),(1020,479,4,'Salitran Ii'),(1021,479,4,'Salitran I'),(1022,479,4,'Zone Ii (Pob.)'),(1023,479,4,'Saint Peter Ii'),(1024,479,4,'Zone Iii (Pob.)'),(1025,479,4,'Zone I-b'),(1026,479,4,'San Jose'),(1027,479,4,'San Isidro Labrador Ii'),(1028,479,4,'San Francisco Ii'),(1029,479,4,'Sabang'),(1030,479,4,'San Francisco I'),(1031,479,4,'San Lorenzo Ruiz I'),(1032,479,4,'Zone I (Pob.)'),(1033,479,4,'San Antonio De Padua Ii'),(1034,479,4,'Fatima Ii'),(1035,479,4,'San Lorenzo Ruiz Ii'),(1036,479,4,'Victoria Reyes'),(1037,479,4,'Santo Nino Ii'),(1038,479,4,'Santa Cruz I'),(1039,479,4,'Santo Nino I'),(1040,479,4,'Santo Cristo (Barangay 3)'),(1041,479,4,'San Luis I'),(1042,479,4,'Santa Maria (Barangay 20)'),(1043,479,4,'San Manuel I'),(1044,479,4,'Santa Lucia (San Juan Ii)'),(1045,479,4,'Santa Fe'),(1046,479,4,'San Manuel Ii'),(1047,479,4,'Santa Cruz Ii'),(1048,479,4,'San Mateo'),(1049,479,4,'San Miguel'),(1050,479,4,'Santa Cristina Ii'),(1051,479,4,'Paliparan Ii'),(1052,479,4,'Paliparan I'),(1053,479,4,'Luzviminda I'),(1054,479,4,'Langkaan I'),(1055,479,4,'H-2'),(1056,479,4,'Fatima Iii'),(1057,479,4,'Langkaan Ii'),(1058,479,4,'Luzviminda Ii'),(1059,479,4,'Fatima I'),(1060,479,4,'San Miguel Ii'),(1061,479,4,'San Nicolas I'),(1062,479,4,'Emmanuel Bergado Ii'),(1063,479,4,'Saint Peter I'),(1064,479,4,'Paliparan Iii'),(1065,479,4,'Datu Esmael (Bago-a-ingud)'),(1066,479,4,'San Esteban (Barangay 4)'),(1067,479,4,'Burol Iii'),(1068,479,4,'Burol Ii'),(1069,479,4,'San Antonio De Padua I'),(1070,479,4,'San Andres Ii'),(1071,479,4,'San Andres I'),(1072,479,4,'Sampaloc Ii'),(1073,479,4,'San Agustin Iii'),(1074,479,4,'Sampaloc I'),(1075,479,4,'San Agustin Ii'),(1076,479,4,'Salitran Iv'),(1077,479,4,'Salitran Iv'),(1078,479,4,'San Agustin I'),(1079,479,4,'Sampaloc V'),(1080,479,4,'Sampaloc Iv'),(1081,479,4,'Salitran Iii'),(1082,479,4,'Salawag'),(1083,479,4,'Burol I'),(1084,479,4,'Burol'),(1085,479,4,'San Isidro Labrador I'),(1086,487,5,'Macario Dacon'),(1087,487,5,'Koronel Jose P. Elises (Area E)'),(1088,487,5,'Inocencio Salud'),(1089,487,5,'Kapitan Kua (Area F)'),(1090,487,5,'Francisco De Castro (Sunshine Vill.)'),(1091,487,5,'Francisco Reyes'),(1092,487,5,'Fiorello Carimag (Area C)'),(1093,487,5,'Bernardo Pulido (Area H)'),(1094,487,5,'Benjamin Tirona (Area D)'),(1095,487,5,'Barangay 5 Poblacion'),(1096,487,5,'Barangay 4 Poblacion'),(1097,487,5,'Aldiano Olaes'),(1098,487,5,'Nicolasa Virata (San Jose)'),(1099,487,5,'Barangay 1 Poblacion (Area I)'),(1100,487,5,'Severino De Las Alas'),(1101,487,5,'Jacinto Lumbreras'),(1102,487,5,'Epifanio Malia'),(1103,487,5,'Marcelino Memije'),(1104,487,5,'Tiniente Tiago'),(1105,487,5,'Barangay 2 Poblacion'),(1106,487,5,'San Jose'),(1107,487,5,'Barangay 3 Poblacion'),(1108,487,5,'Pantaleon Granados (Area G)'),(1109,487,5,'San Gabriel (Area K)'),(1110,487,5,'Gavino Maderan'),(1111,487,5,'Ramon Cruz (Area J)'),(1112,487,5,'Gregoria De Jesus'),(1113,486,7,'A. Dalusag'),(1114,486,7,'Tabora'),(1115,486,7,'Poblacion Iv'),(1116,487,7,'Poblacion Iii'),(1117,486,7,'Poblacion Ii'),(1118,486,7,'Poblacion I'),(1119,486,7,'Lumipa'),(1120,486,7,'Kaypaaba'),(1121,486,7,'Kaymisas'),(1122,486,7,'Kabulusan'),(1123,486,7,'Castanos Lejos'),(1124,486,7,'Castanos Cerca'),(1125,486,7,'Batas Dao'),(1126,486,7,'A. Dalusag'),(1127,486,7,'Narvaez'),(1128,488,6,'Dulong Bayan Pob. (Bgy. 3)'),(1129,488,6,'Manggahan'),(1130,488,6,'Vibora Pob. (Bgy. 6)'),(1131,488,6,'Tejero'),(1132,488,6,'Tapia'),(1133,488,6,'Santiago'),(1134,488,6,'Santa Clara'),(1135,488,6,'San Juan Ii'),(1136,488,6,'San Juan I'),(1137,488,6,'San Gabriel Pob. (Bgy. 4)'),(1138,488,6,'San Francisco'),(1139,488,6,'Sampalucan Pob. (Bgy. 2)'),(1140,488,6,'Prinza Pob. (Bgy. 9)'),(1141,488,6,'Pinagtipunan'),(1142,488,6,'Pasong Kawayan Ii'),(1143,488,6,'Pasong Kawayan I'),(1144,488,6,'Pasong Camachile Ii'),(1145,488,6,'Pasong Camachile I'),(1146,488,6,'Panungyanan'),(1147,488,6,'Ninety Sixth Pob. (Bgy. 8)'),(1148,488,6,'Navarro'),(1149,488,6,'Manggahan'),(1150,488,6,'Javalera'),(1151,488,6,'Gov. Ferrer Pob. (Bgy. 1)'),(1152,488,6,'Dulong Bayan Pob. (Bgy. 3)'),(1153,488,6,'Corregidor Pob. (Bgy. 10)'),(1154,488,6,'Buenavista Iii'),(1155,488,6,'Buenavista Ii'),(1156,488,6,'Buenavista I'),(1157,488,6,'Biclatan'),(1158,488,6,'Bagumbayan Pob. (Bgy. 5)'),(1159,488,6,'Bacao Ii'),(1160,488,6,'Bacao I'),(1161,488,6,'Arnaldo Pob. (Bgy. 7)'),(1162,488,6,'Alingaro'),(1163,480,3,'Poblacion Iv-a (Pob.)'),(1164,480,3,'Poblacion Ii-a (Pob.)'),(1165,480,3,'Poblacion Iv-d'),(1166,480,3,'Carsadang Bago I'),(1167,480,3,'Poblacion Iv-c'),(1168,480,3,'Poblacion Iv-b'),(1169,480,3,'Tanzang Luma V'),(1170,480,3,'Poblacion Ii-b'),(1171,480,3,'Malagasang Ii-a'),(1172,480,3,'Tanzang Luma Vi'),(1173,480,3,'Malagasang I-a'),(1174,480,3,'Poblacion I-b'),(1175,480,3,'Bucandala Ii'),(1176,480,3,'Toclong I-a'),(1177,480,3,'Pinagbuklod'),(1178,480,3,'Mariano Espeleta Iii'),(1179,480,3,'Mariano Espeleta Ii'),(1180,480,3,'Tanzang Luma Iii'),(1181,480,3,'Mariano Espeleta I'),(1182,480,3,'Tanzang Luma I'),(1183,480,3,'Anabu Ii-b'),(1184,480,3,'Pasong Buaya Ii'),(1185,480,3,'Poblacion I-a (Pob.)'),(1186,480,3,'Pasong Buaya I'),(1187,480,3,'Malagasang Ii-b'),(1188,480,3,'Pag-asa Iii'),(1189,480,3,'Pag-asa Ii'),(1190,480,3,'Pag-asa I'),(1191,480,3,'Medicion Ii-b'),(1192,480,3,'Anabu Ii-a'),(1193,480,3,'Bucandala I'),(1194,480,3,'Toclong I-b'),(1195,480,3,'Alapan Ii-b'),(1196,480,3,'Anabu I-b'),(1197,480,3,'Malagasang I-c'),(1198,480,3,'Alapan I-c'),(1199,480,3,'Anabu Ii-c'),(1200,480,3,'Bagong Silang (Bahayang Pag-asa)'),(1201,480,3,'Malagasang I-b'),(1202,480,3,'Toclong Ii-a'),(1203,480,3,'Toclong Ii-b'),(1204,480,3,'Bayan Luma Iv'),(1205,480,3,'Buhay Na Tubig'),(1206,480,3,'Palico I'),(1207,480,3,'Palico Ii'),(1208,480,3,'Bayan Luma Vii'),(1209,480,3,'Palico Iii'),(1210,480,3,'Bayan Luma Viii'),(1211,480,3,'Bayan Luma Ii'),(1212,480,3,'Palico Iv'),(1213,480,3,'Bayan Luma Ix'),(1214,480,3,'Malagasang Ii-g'),(1215,480,3,'Malagasang Ii-f'),(1216,480,3,'Malagasang Ii-e'),(1217,480,3,'Poblacion I-c'),(1218,480,3,'Malagasang Ii-d'),(1219,480,3,'Medicion Ii-c'),(1220,480,3,'Bayan Luma Ix'),(1221,480,3,'Bayan Luma Viii'),(1222,480,3,'Bayan Luma Vi'),(1223,480,3,'Bayan Luma V'),(1224,480,3,'Malagasang Ii-c'),(1225,480,3,'Bayan Luma Iv'),(1226,480,3,'Malagasang I-g'),(1227,480,3,'Bayan Luma Iii'),(1228,480,3,'Malagasang I-d'),(1229,480,3,'Malagasang I-e'),(1230,480,3,'Bayan Luma Ii'),(1231,480,3,'Toclong Ii-a'),(1232,480,3,'Toclong I-c'),(1233,480,3,'Bayan Luma I'),(1234,480,3,'Tanzang Luma Iv (Southern City)'),(1235,480,3,'Anabu Ii-f'),(1236,480,3,'Anabu Ii-e'),(1237,480,3,'Palico Iv'),(1238,480,3,'Anabu Ii-d'),(1239,480,3,'Magdalo'),(1240,480,3,'Maharlika'),(1241,480,3,'Medicion I-c'),(1242,480,3,'Anabu I-g'),(1243,480,3,'Medicion Ii-a'),(1244,480,3,'Anabu I-f'),(1245,480,3,'Medicion I-a'),(1246,480,3,'Anabu I-e'),(1247,480,3,'Anabu I-d'),(1248,480,3,'Anabu I-c'),(1249,480,3,'Anabu I-a'),(1250,480,3,'Medicion Ii-f'),(1251,480,3,'Medicion Ii-e'),(1252,480,3,'Medicion Ii-d'),(1253,480,3,'Bucandala Iv'),(1254,480,3,'Malagasang I-f'),(1255,480,3,'Poblacion Iii-b'),(1256,480,3,'Medicion I-d'),(1257,480,3,'Medicion I-b'),(1258,480,3,'Carsadang Bago Ii'),(1259,480,3,'Carsadang Bago I'),(1260,480,3,'Bucandala V'),(1261,480,3,'Bucandala Iii'),(1262,480,3,'Alapan Ii-a'),(1263,480,3,'Alapan I-b'),(1264,480,3,'Alapan I-a'),(1265,489,7,'Kayquit Iii'),(1266,489,7,'Tambo Malaki'),(1267,489,7,'Tambo Kulit'),(1268,489,7,'Tambo Ilaya'),(1269,489,7,'Tambo Balagbag'),(1270,489,7,'Pulo'),(1271,489,7,'Mataas Na Lupa (Checkpoint)'),(1272,489,7,'Mahabangkahoy Lejos'),(1273,489,7,'Mahabangkahoy Cerca'),(1274,489,7,'Lumampong Halayhay'),(1275,489,7,'Lumampong Balagbag'),(1276,489,7,'Limbon'),(1277,489,7,'Kaytapos'),(1278,489,7,'Kaytambog'),(1279,489,7,'Kayquit Iii'),(1280,489,7,'Kayquit Ii'),(1281,489,7,'Kayquit I'),(1282,489,7,'Harasan'),(1283,489,7,'Guyam Munti, 042110014'),(1284,489,7,'Guyam Malaki'),(1285,489,7,'Daine Ii'),(1286,489,7,'Daine I'),(1287,489,7,'Carasuchi'),(1288,489,7,'Calumpang Lejos I'),(1289,489,7,'Calumpang Cerca'),(1290,489,7,'Buna Lejos Ii'),(1291,489,7,'Buna Lejos I'),(1292,489,7,'Buna Cerca'),(1293,489,7,'Barangay 4 (Pob.)'),(1294,489,7,'Barangay 3 (Pob.)'),(1295,489,7,'Barangay 2 (Pob.)'),(1296,489,7,'Barangay 1 (Pob.)'),(1297,489,7,'Bancod'),(1298,489,7,'Banaba Lejos'),(1299,489,7,'Banaba Cerca'),(1300,489,7,'Alulod'),(1301,489,7,'Agus-us'),(1302,490,1,'Samala-marquez'),(1303,490,1,'Pulvorista'),(1304,490,1,'Pulvorista'),(1305,490,1,'Tabon Iii'),(1306,490,1,'Tramo-bantayan'),(1307,490,1,'Balsahan-bisita'),(1308,490,1,'Wakas Ii'),(1309,490,1,'San Sebastian'),(1310,490,1,'Wakas I'),(1311,490,1,'Wakas Ii'),(1312,490,1,'Tramo-bantayan'),(1313,490,1,'Toclong'),(1314,490,1,'Tabon Ii'),(1315,490,1,'Tabon I'),(1316,490,1,'Santa Isabel'),(1317,490,1,'San Sebastian'),(1318,490,1,'Poblacion'),(1319,490,1,'Panamitan'),(1320,490,1,'Marulas'),(1321,490,1,'Manggahan-lawin'),(1322,490,1,'Binakayan-kanluran'),(1323,490,1,'Magdalo (Putol)'),(1324,490,1,'Kaingen'),(1325,490,1,'Gahak'),(1326,490,1,'Binakayan-aplaya'),(1327,490,1,'Batong Dalig'),(1328,491,7,'Ramirez'),(1329,491,7,'Urdaneta'),(1330,491,7,'Tua'),(1331,491,7,'San Agustin'),(1332,491,7,'Pacheco'),(1333,491,7,'Medina'),(1334,491,7,'Kabulusan'),(1335,491,7,'Caluangan'),(1336,491,7,'Bendita Ii'),(1337,491,7,'Bendita I'),(1338,491,7,'Barangay 5 (Pob.)'),(1339,491,7,'Barangay 4 (Pob.)'),(1340,491,7,'Barangay 3 (Pob.)'),(1341,491,7,'Barangay 2 (Pob.)'),(1342,491,7,'Barangay 1 (Pob.)'),(1343,491,7,'Baliwag'),(1344,492,7,'Garita I B'),(1345,492,7,'Garita I A'),(1346,492,7,'Caingin Pob. (Barangay 3)'),(1347,492,7,'Bucal Iv B'),(1348,492,7,'Bucal Iv A'),(1349,492,7,'Bucal Iii B'),(1350,492,7,'Bucal Iii A'),(1351,492,7,'Tulay Silangan'),(1352,492,7,'Tulay Kanluran'),(1353,492,7,'Talipusngo'),(1354,492,7,'Patungan'),(1355,492,7,'San Miguel I B'),(1356,492,7,'San Miguel I A (Caputatan)'),(1357,492,7,'Poblacion Ii B'),(1358,492,7,'Poblacion Ii A'),(1359,492,7,'Poblacion I B'),(1360,492,7,'Poblacion I A'),(1361,492,7,'Pinagsanhan I B'),(1362,492,7,'Pinagsanhan I A'),(1363,492,7,'Pantihan Iv (Pook Ni Sara)'),(1364,492,7,'Pantihan Iii (Pook Na Munti)'),(1365,492,7,'Pantihan I (Balayungan)'),(1366,492,7,'Pantihan Ii (Sagbat)'),(1367,492,7,'Mabato'),(1368,492,7,'Layong Mabilog'),(1369,492,7,'Bucal Ii'),(1370,492,7,'Bucal I'),(1371,493,7,'Poblacion V (Barangay V)'),(1372,493,7,'Banayad'),(1373,493,7,'Asis I'),(1374,493,7,'Anuling Cerca Ii'),(1375,493,7,'Anuling Cerca I'),(1376,493,7,'Anuling Lejos Ii'),(1377,493,7,'Poblacion I (Barangay I)'),(1378,493,7,'Poblacion Vi (Barangay Vi)'),(1379,493,7,'Poblacion Iv (Barangay Iv)'),(1380,493,7,'Poblacion Iii (Barangay Iii)'),(1381,493,7,'Poblacion Ii (Barangay Ii)'),(1382,493,7,'Palocpoc I'),(1383,493,7,'Asis Iii'),(1384,493,7,'Asis Ii'),(1385,493,7,'Galicia Iii'),(1386,493,7,'Galicia Ii'),(1387,493,7,'Galicia I'),(1388,493,7,'Poblacion Vii (Barangay Vii)'),(1389,493,7,'Panungyan I'),(1390,493,7,'Miguel Mojica'),(1391,493,7,'Bukal'),(1392,493,7,'Panungyan Ii'),(1393,493,7,'Palocpoc Ii'),(1394,493,7,'Anuling Lejos I (Anuling)'),(1395,494,6,'Palangue 2 & 3'),(1396,494,6,'Timalan Concepcion'),(1397,494,6,'Timalan Balsahan'),(1398,494,6,'Sapa'),(1399,494,6,'Santulan'),(1400,494,6,'San Roque'),(1401,494,7,'Sabang'),(1402,494,6,'Palangue 1'),(1403,494,6,'Muzon'),(1404,494,6,'Munting Mapino'),(1405,494,6,'Molino'),(1406,494,6,'Malainen Luma'),(1407,494,6,'Malainen Bago'),(1408,494,6,'Makina'),(1409,494,6,'Mabolo'),(1410,494,6,'Calubcob'),(1411,494,7,'Capt. C. Nazareno (Pob.)'),(1412,494,7,'Bancaan'),(1413,494,6,'Latoria'),(1414,494,6,'Labac'),(1415,494,6,'Kanluran'),(1416,494,6,'Ibayo Silangan'),(1417,494,6,'Ibayo Estacion'),(1418,494,6,'Humbac'),(1419,494,6,'Halang'),(1420,494,6,'Gomez-zamora (Pob.)'),(1421,494,6,'Bucana Sasahan'),(1422,494,6,'Bucana Malaki'),(1423,494,6,'Balsahan'),(1424,494,6,'Bagong Karsada'),(1425,495,1,'San Juan I'),(1426,495,1,'San Rafael Ii'),(1427,495,1,'Santa Rosa Ii'),(1428,495,1,'Santa Rosa I'),(1429,495,1,'San Rafael Iv'),(1430,495,1,'San Rafael Iii'),(1431,495,1,'San Rafael I'),(1432,495,1,'San Juan Ii'),(1433,495,1,'San Jose Ii'),(1434,495,1,'San Jose I'),(1435,495,1,'San Antonio Ii'),(1436,495,1,'Salcedo Ii'),(1437,495,1,'San Antonio I'),(1438,495,1,'Salcedo I'),(1439,495,1,'Poblacion'),(1440,495,1,'Magdiwang'),(1441,496,1,'Ligtong Iv'),(1442,496,1,'Ligtong Iii'),(1443,496,1,'Wawa Iii'),(1444,496,1,'Wawa Ii'),(1445,496,1,'Wawa I'),(1446,496,1,'Tejeros Convention'),(1447,496,1,'Silangan Ii'),(1448,496,1,'Silangan I'),(1449,496,1,'Sapa Iv'),(1450,496,1,'Sapa Iii'),(1451,496,1,'Sapa Ii'),(1452,496,1,'Sapa I'),(1453,496,1,'Poblacion'),(1454,496,1,'Muzon Ii'),(1455,496,1,'Muzon I'),(1456,496,1,'Ligtong Ii'),(1457,496,1,'Ligtong I'),(1458,496,1,'Kanluran'),(1459,496,1,'Bagbag Ii'),(1460,496,1,'Bagbag I'),(1461,497,5,'Yakal'),(1462,497,5,'Ulat'),(1463,497,5,'Ipil Ii'),(1464,497,5,'Lumil'),(1465,497,5,'Lucsuhin'),(1466,497,5,'Litlit'),(1467,497,5,'Kaong'),(1468,497,5,'Kalubkob'),(1469,497,5,'Narra I'),(1470,497,5,'Ipil I'),(1471,497,5,'Munting Ilog'),(1472,497,5,'Toledo'),(1473,497,5,'Tubuan I'),(1474,497,5,'Tubuan Iii'),(1475,497,5,'San Vicente I'),(1476,497,5,'San Vicente Ii'),(1477,497,5,'Santol'),(1478,497,5,'San Miguel I'),(1479,497,5,'San Miguel Ii'),(1480,497,5,'Mataas Na Burol'),(1481,497,5,'Narra Ii'),(1482,497,5,'Pulong Saging'),(1483,497,5,'Puting Kahoy'),(1484,497,5,'Pooc I'),(1485,497,5,'Pooc Ii'),(1486,497,5,'Paligawan'),(1487,497,5,'Narra Iii'),(1488,497,5,'Maguyam'),(1489,497,5,'Malaking Tatyao'),(1490,497,5,'Kalubkob'),(1491,497,5,'Iba'),(1492,497,5,'Hoyo'),(1493,497,5,'Carmen'),(1494,497,5,'Cabangaan'),(1495,497,5,'Buho'),(1496,497,5,'Biluso'),(1497,497,5,'Biga Ii'),(1498,497,5,'Batas'),(1499,497,5,'Barangay Iv (Pob.)'),(1500,497,5,'Barangay Iii (Pob.)'),(1501,497,5,'Barangay I (Pob.)'),(1502,497,5,'Banaba'),(1503,497,5,'Balubad'),(1504,497,5,'Balite Ii'),(1505,497,5,'Balite I'),(1506,497,5,'Anahaw I'),(1507,497,5,'Adlas'),(1508,497,5,'Yakal'),(1509,497,5,'Tubuan Ii'),(1510,497,5,'Tibig'),(1511,497,5,'Tartaria'),(1512,497,5,'Sabutan'),(1513,497,5,'Pulong Bunga'),(1514,497,5,'Pasong Langka'),(1515,497,5,'Malabag'),(1516,497,5,'Lalaan Ii'),(1517,497,5,'Lalaan I'),(1518,497,5,'Hukay'),(1519,497,5,'Bulihan'),(1520,497,5,'Bucal'),(1521,497,5,'Biga I'),(1522,497,5,'Barangay V (Pob.)'),(1523,497,5,'Barangay Ii (Pob.)'),(1524,497,5,'Anahaw Ii'),(1525,497,5,'Acacia'),(1526,481,5,'Zambal'),(1527,481,5,'Tolentino West'),(1528,481,5,'Tolentino East'),(1529,481,5,'Sungay South'),(1530,481,5,'Sungay North'),(1531,481,5,'Silang Junction South'),(1532,481,5,'Silang Junction North'),(1533,481,5,'San Jose'),(1534,481,5,'Sambong'),(1535,481,5,'Patutong Malaki South'),(1536,481,5,'Patutong Malaki North'),(1537,481,5,'Patutong Malaki South'),(1538,481,5,'Patutong Malaki North'),(1539,481,5,'Neogan'),(1540,481,5,'Mendez Crossing West'),(1541,481,5,'Mendez Crossing East'),(1542,481,5,'Maitim 2nd West'),(1543,481,5,'Maitim 2nd East'),(1544,481,5,'Maitim 2nd Central'),(1545,481,5,'Maharlika West'),(1546,481,5,'Maharlika East'),(1547,481,5,'Mag-asawang Ilat'),(1548,481,5,'Kaybagal North'),(1549,481,5,'Kaybagal South (Pob.)'),(1550,481,5,'Kaybagal East'),(1551,481,5,'Iruhin West'),(1552,481,5,'Iruhin South'),(1553,481,5,'Iruhin East'),(1554,481,5,'Guinhawa South'),(1555,481,5,'Francisco (San Francisco)'),(1556,481,5,'Guinhawa North'),(1557,481,5,'Dapdap West'),(1558,481,5,'Dapdap East'),(1559,481,5,'Calabuso (Calabuso South & North)'),(1560,481,5,'Bagong Tubig'),(1561,481,5,'Asisan'),(1562,498,6,'Sanja Mayor'),(1563,498,6,'Julugan Iv'),(1564,498,6,'Calibuyo'),(1565,498,6,'Daang Amaya I'),(1566,498,6,'Amaya V'),(1567,498,6,'Daang Amaya Ii'),(1568,498,6,'Capipisa'),(1569,498,6,'Daang Amaya Iii'),(1570,498,6,'Tanauan'),(1571,498,6,'Barangay Iii (Pob.)'),(1572,498,6,'Halayhay'),(1573,498,6,'Tres Cruses'),(1574,498,6,'Barangay Ii (Pob.)'),(1575,498,6,'Sahud Ulan'),(1576,498,6,'Barangay I (Pob.)'),(1577,498,6,'Barangay Iv (Pob.)'),(1578,498,6,'Barangay I (Pob.)'),(1579,498,6,'Punta I'),(1580,498,6,'Santol'),(1581,498,6,'Punta Ii'),(1582,498,6,'Bunga'),(1583,498,6,'Paradahan Ii'),(1584,498,6,'Bucal'),(1585,498,6,'Paradahan I'),(1586,498,6,'Biwas'),(1587,498,6,'Mulawin'),(1588,498,6,'Biga'),(1589,498,6,'Lambingan'),(1590,498,6,'Bagtas'),(1591,498,6,'Julugan Viii'),(1592,498,6,'Amaya Vii'),(1593,498,6,'Amaya Vi'),(1594,498,6,'Julugan Vii'),(1595,498,6,'Julugan Vi'),(1596,498,6,'Amaya V'),(1597,498,6,'Julugan V'),(1598,498,6,'Amaya Iv'),(1599,498,6,'Julugan Iii'),(1600,498,6,'Amaya Iii'),(1601,498,6,'Julugan Ii'),(1602,498,6,'Julugan I'),(1603,498,6,'Amaya Ii'),(1604,498,6,'Amaya I'),(1605,499,7,'Bucana'),(1606,499,7,'Sapang Ii'),(1607,499,7,'Sapang I'),(1608,499,7,'San Juan Ii'),(1609,499,7,'San Juan I'),(1610,499,7,'San Jose'),(1611,499,7,'Poblacion Iii (Barangay Iii)'),(1612,499,7,'Poblacion I A'),(1613,499,7,'Poblacion Ii (Barangay Ii)'),(1614,499,7,'Poblacion I (Barangay )'),(1615,499,7,'Poblacion I (Barangay I)'),(1616,482,6,'San Agustin (Pob.)'),(1617,482,6,'Osorio'),(1618,482,6,'Lapidario (Bayog)'),(1619,482,6,'Luciano (Bitangan)'),(1620,482,6,'Lallana'),(1621,482,6,'Inocencio (B. Pook)'),(1622,482,6,'Perez (Lucbanan)'),(1623,482,6,'Gregorio (Aliang)'),(1624,482,6,'De Ocampo'),(1625,482,6,'Conchu (Lagundian)'),(1626,482,6,'Cabuco'),(1627,482,6,'Cabezas'),(1628,482,6,'Aguado (Piscal Mundo)'),(1629,464,4,'Calantas'),(1630,464,4,'Timbugan'),(1631,464,4,'Barangay B (Pob.)'),(1632,464,4,'Maligaya'),(1650,464,4,'San Jose'),(1642,464,4,'Santa Cruz'),(1641,464,4,'Tiquiwan'),(1640,464,4,'Leviste (Tubahan)'),(1639,464,4,'Tulos'),(1638,464,4,'Natu'),(1637,464,4,'Palakpak'),(1636,464,4,'Pinagsibaan'),(1635,464,4,'Barangay C (Pob.)'),(1634,464,4,'Bayawang'),(1633,464,4,'Barangay A (Pob.)'),(1651,464,4,'San Roque'),(1652,464,4,'San Isidro'),(1653,464,4,'San Ignacio'),(1654,464,4,'San Carlos'),(1655,464,4,'Salao'),(1656,464,4,'Nasi'),(1657,464,4,'Namunga'),(1658,464,4,'Quilib'),(1659,464,4,'Namuco'),(1660,464,4,'Mayuro'),(1661,464,4,'Putingkahoy'),(1662,464,4,'Barangay E (Pob.)'),(1663,464,4,'Mavalor'),(1664,464,4,'Barangay D (Pob.)'),(1665,464,4,'Matamis'),(1666,464,4,'Masaya'),(1667,464,4,'Marilag'),(1668,464,4,'Malaya'),(1669,464,4,'Macalamcam B'),(1670,464,4,'Macalamcam A'),(1671,464,4,'Mabunga'),(1672,464,4,'Mabato'),(1673,464,4,'Maalas-as'),(1674,464,4,'Itlugan'),(1675,464,4,'Colongan'),(1676,464,4,'Cahigam'),(1677,464,4,'Bulihan'),(1678,464,4,'Baybayin'),(1679,464,4,'Balibago'),(1680,464,4,'Bagong Pook'),(1681,464,4,'Antipolo'),(1682,464,4,'Alupay'),(1683,446,3,'Subic Ilaya'),(1684,446,3,'Subic Ibaba'),(1685,446,3,'Santo Tomas'),(1686,446,3,'Santa Cruz'),(1687,446,3,'San Teodoro'),(1688,446,3,'San Jacinto'),(1689,446,3,'Pook'),(1690,446,3,'Poblacion'),(1691,446,3,'Pansipit'),(1692,446,3,'Panhulan'),(1693,446,3,'Pamiga'),(1694,446,3,'Mabini'),(1695,446,3,'Guitna'),(1696,446,3,'Coral Na Munti'),(1697,446,3,'Bilibinwang'),(1698,446,3,'Barigon'),(1699,446,3,'Banyaga'),(1700,446,3,'Bangin'),(1701,446,3,'Balangon'),(1702,446,3,'Bagong Sikat'),(1703,446,3,'Adia'),(1704,447,3,'Tadlac'),(1705,447,3,'Santa Cruz'),(1706,447,3,'San Juan'),(1707,447,3,'San Jose'),(1708,447,3,'Munlawin Sur'),(1709,447,3,'Munlawin Norte'),(1710,447,3,'Poblacion West'),(1711,447,3,'Poblacion East'),(1712,447,3,'Ping-as'),(1713,447,3,'Pinagkurusan'),(1714,447,3,'Muzon Segundo'),(1715,447,3,'Muzon Primero'),(1716,447,3,'Dominador West'),(1717,447,3,'Dominador East'),(1718,447,3,'Dalipit West'),(1719,447,3,'Dalipit East'),(1720,447,3,'Concordia'),(1721,447,3,'Concepcion'),(1722,447,3,'Balagbag'),(1723,447,3,'Concordia'),(1724,448,1,'Barangay 8'),(1725,448,1,'Canda'),(1726,448,1,'Carenahan'),(1727,448,1,'Lanatan'),(1728,448,1,'Calan'),(1729,448,1,'Calzada'),(1730,448,1,'Caloocan'),(1731,448,1,'Caybunga'),(1732,448,1,'Cayponce'),(1733,448,1,'Dalig'),(1734,448,1,'Dao'),(1735,448,1,'Dilao'),(1736,448,1,'Duhatan'),(1737,448,1,'Durungao'),(1738,448,1,'Gumamela'),(1739,448,1,'Gimalas'),(1740,448,1,'Lagnas'),(1741,448,1,'Langgangan'),(1742,448,1,'Lucban Putol'),(1743,448,1,'Lucban Pook'),(1744,448,1,'Magabe'),(1745,448,1,'Malalay'),(1746,448,1,'Navotas'),(1747,448,1,'Munting Tubig'),(1748,448,1,'Palikpikan'),(1749,448,1,'Patugo'),(1750,448,1,'Pooc'),(1751,448,1,'Sambat'),(1752,448,1,'Sampaga'),(1753,448,1,'San Juan'),(1754,448,1,'Sukol'),(1755,448,1,'San Piro'),(1756,448,1,'Santol'),(1757,448,1,'Tactac'),(1758,448,1,'Taludtud'),(1759,448,1,'Tanggoy'),(1760,448,1,'Baclaran'),(1761,448,1,'Barangay 12 (Pob.)'),(1762,448,1,'Barangay 11 (Pob.)'),(1763,448,1,'Barangay 10 (Pob.)'),(1764,448,1,'Barangay 9 (Pob.)'),(1765,448,1,'Barangay 7 (Pob.)'),(1766,448,1,'Barangay 6 (Pob.)'),(1767,448,1,'Barangay 5 (Pob.)'),(1768,448,1,'Barangay 4 (Pob.)'),(1769,448,1,'Barangay 3 (Pob.)'),(1770,448,1,'Barangay 1 (Pob.)'),(1771,448,1,'Barangay 2 (Pob.)'),(1772,449,3,'Solis'),(1773,449,3,'San Sebastian'),(1774,449,3,'Sampalocan'),(1775,449,3,'Sala'),(1776,449,3,'Poblacion'),(1777,449,3,'Palsara'),(1778,449,3,'Paligawan'),(1779,449,3,'Malabanan'),(1780,449,3,'Makina'),(1781,449,3,'Looc'),(1782,449,3,'Calawit'),(1783,449,3,'Alangilan'),(1784,443,2,'Kumintang Ilaya,'),(1785,443,2,'Tinga Itaas'),(1786,443,2,'Talahib Payapa'),(1787,443,2,'San Antonio, Isla Verde'),(1788,443,2,'Tabangao Dao'),(1789,443,2,'Tabangao Aplaya (Tabangao Proper)'),(1790,443,2,'Dela Paz'),(1791,443,2,'Santo Domingo'),(1792,443,2,'Banaba Silangan'),(1793,443,2,'Kumba'),(1794,443,2,'Libjo'),(1795,443,2,'Tabangao Ambulong'),(1796,443,2,'San Miguel'),(1797,443,2,'Pagkilatan'),(1798,443,2,'Barangay 4 (Pob.)'),(1799,443,2,'Pinamucan'),(1800,443,2,'Pinamucan Ibaba'),(1801,443,2,'Barangay 22 (Pob.)'),(1802,443,2,'Pinamucan Silangan'),(1803,443,2,'Mahacot Silangan'),(1804,443,2,'Conde Labak'),(1805,443,2,'Mahacot Kanluran'),(1806,443,2,'Liponpon, Isla Verde'),(1807,443,2,'Mahabang Dahilig'),(1808,443,2,'Pallocan Kanluran'),(1809,443,2,'Gulod Labak'),(1810,443,2,'San Andres, Isla Verde'),(1811,443,2,'Pallocan Silangan'),(1812,443,2,'Barangay 23 (Pob.)'),(1813,443,2,'Mahabang Parang'),(1814,443,2,'Concepcion'),(1815,443,2,'Santo Nino'),(1816,443,2,'Barangay 7 (Pob.)'),(1817,443,2,'Barangay 21 (Pob.)'),(1818,443,2,'Tabangao Dao'),(1819,443,2,'Dumantay'),(1820,443,2,'San Agustin Silangan, Isla Verde'),(1821,443,2,'San Isidro'),(1822,443,2,'Sirang Lupa'),(1823,443,2,'Ilihan'),(1824,443,2,'Malalim'),(1825,443,2,'Malibayo'),(1826,443,2,'Barangay 24 (Pob.)'),(1827,443,2,'San Pedro'),(1828,443,2,'Tinga Labak'),(1829,443,2,'Gulod Itaas'),(1830,443,2,'San Agustin Kanluran, Isla Verde'),(1831,443,2,'Simlong'),(1832,443,2,'San Agapito, Isla Verde'),(1833,443,2,'Talahib Pandayan'),(1834,443,2,'Sampaga'),(1835,443,2,'Talahib Payapa'),(1836,443,2,'Cuta'),(1837,443,2,'Talumpok Kanluran'),(1838,443,2,'Dela Paz Pulot Aplaya'),(1839,443,2,'Dela Paz Pulot Itaas'),(1840,443,2,'Talumpok Silangan'),(1841,443,2,'Dalig'),(1842,443,2,'Tabangao Aplaya (Tabangao Proper)'),(1843,443,2,'Balete'),(1844,443,2,'Barangay 18 (Pob.)'),(1845,443,2,'Barangay 19 (Pob.)'),(1846,443,2,'Sorosoro Ilaya'),(1847,443,2,'Conde Itaas'),(1848,443,2,'Barangay 8 (Pob.)'),(1849,443,2,'Barangay 6 (Pob.)'),(1850,443,2,'Barangay 3 (Pob.)'),(1851,443,2,'Wawa'),(1852,443,2,'Barangay 10 (Pob.)'),(1853,443,2,'Santa Clara'),(1854,443,2,'Sorosoro Karsada'),(1855,443,2,'Barangay 20 (Pob.)'),(1856,443,2,'Calicanto'),(1857,443,2,'Barangay 11 (Pob.)'),(1858,443,2,'Mabacong (Matoco)'),(1859,443,2,'Barangay 12 (Pob.)'),(1860,443,2,'Barangay 13 (Pob.)'),(1861,443,2,'Barangay 15 (Pob.)'),(1862,443,2,'San Jose Sico'),(1863,443,2,'Barangay 14 (Pob.)'),(1864,443,2,'Barangay 16 (Pob.)'),(1865,443,2,'Balagtas'),(1866,443,2,'Bukal'),(1867,443,2,'Maruclap'),(1868,443,2,'Paharang Kanluran'),(1869,443,2,'Banaba Center'),(1870,443,2,'Alangilan'),(1871,443,2,'Malitam'),(1872,443,2,'Bilogo'),(1873,443,2,'Bolbok'),(1874,443,2,'Barangay 5 (Pob.)'),(1875,443,2,'Barangay 9 (Pob.)'),(1876,443,2,'Barangay 1 (Pob.)'),(1877,443,2,'Haligue Kanluran'),(1878,443,2,'Domoclay'),(1879,443,2,'Tulo'),(1880,443,2,'Banaba Kanluran'),(1881,443,2,'Haligue Silangan'),(1882,443,2,'Barangay 2 (Pob.)'),(1883,443,2,'Santa Rita Karsada'),(1884,443,2,'Santa Rita Aplaya'),(1885,443,2,'Catandala'),(1886,443,2,'Tinga Itaas'),(1887,443,2,'Banaba Ibaba'),(1888,443,2,'Barangay 17 (Pob.)'),(1889,443,2,'Maapas'),(1890,443,2,'Maapas'),(1891,443,2,'Kumintang Ibaba'),(1892,443,2,'Sorosoro Ibaba'),(1893,443,2,'Tinga Itaas'),(1894,443,2,'Santa Rita Karsada'),(1895,450,2,'Sinala'),(1896,450,2,'Santo Domingo'),(1897,450,2,'Santa Maria'),(1898,450,2,'San Vicente'),(1899,450,2,'San Teodoro'),(1900,450,2,'San Roque'),(1901,450,2,'San Pedro'),(1902,450,2,'San Pablo'),(1903,450,2,'San Miguel'),(1904,450,2,'San Diego'),(1905,450,2,'San Andres Uno'),(1906,450,2,'San Andres Proper'),(1907,450,2,'San Agustin'),(1908,450,2,'Sampaguita'),(1909,450,2,'Rizal'),(1910,450,2,'Pitugo'),(1911,450,2,'Orense'),(1912,450,2,'New Danglayan'),(1913,450,2,'Manghinao Uno'),(1914,450,2,'Manghinao Proper'),(1915,450,2,'Manalupong'),(1916,450,2,'Malindig'),(1917,450,2,'Magalang-galang'),(1918,450,2,'Locloc'),(1919,450,2,'Inicbulan'),(1920,450,2,'Gulibay'),(1921,450,2,'Durungao'),(1922,450,2,'Cupang'),(1923,450,2,'Colvo'),(1924,450,2,'Bolo'),(1925,450,2,'Barangay Iv (Pob.)'),(1926,450,2,'Barangay Iii (Pob.)'),(1927,450,2,'Barangay Ii (Pob.)'),(1928,450,2,'Barangay I (Pob.)'),(1929,450,2,'Balayong'),(1930,450,2,'Baguilawa'),(1931,450,2,'Bagong Silang'),(1932,450,2,'As-is'),(1933,450,2,'Aplaya'),(1934,450,2,'Alagao'),(1935,451,1,'Timbain'),(1936,451,1,'Tamayo'),(1937,451,1,'Talisay'),(1938,451,1,'Taklang Anak'),(1939,451,1,'Sinisian'),(1940,451,1,'San Rafael'),(1941,451,1,'Salong'),(1942,451,1,'Quisumbing'),(1943,451,1,'Puting Kahoy'),(1944,451,1,'Puting Bato West'),(1945,451,1,'Puting Bato East'),(1946,451,1,'Pantay'),(1947,451,1,'Niyugan'),(1948,451,1,'Munting Coral'),(1949,451,1,'Matipok'),(1950,451,1,'Makina'),(1951,451,1,'Madalunot'),(1952,451,1,'Lumbang Na Matanda'),(1953,451,1,'Lumbang Na Bata'),(1954,451,1,'Lumbang Calzada'),(1955,451,1,'Loma'),(1956,451,1,'Dila'),(1957,451,1,'Dacanlao'),(1958,451,1,'Coral Ni Lopez (Sugod)'),(1959,451,1,'Coral Ni Bacal'),(1960,451,1,'Camastilisan'),(1961,451,1,'Caluangan'),(1962,451,1,'Calantas, 041007015'),(1963,451,1,'Cahil'),(1964,451,1,'Bisaya'),(1965,451,1,'Bambang'),(1966,451,1,'Balimbing'),(1967,451,1,'Baclas'),(1968,451,1,'Barangay 6 (Pob.)'),(1969,451,1,'Barangay 5 (Pob.)'),(1970,451,1,'Barangay 4 (Pob.)'),(1971,451,1,'Barangay 3 (Pob.)'),(1972,451,1,'Barangay 2 (Pob.)'),(1973,451,1,'Barangay 1 (Pob.)'),(1974,451,1,'Bagong Tubig'),(1975,452,1,'Bucal'),(1976,452,1,'Balitoc'),(1977,452,1,'Paraiso'),(1978,452,1,'Talibayog'),(1979,452,1,'Barangay 4 (Pob.)'),(1980,452,1,'Barangay 3 (Pob.)'),(1981,452,1,'Barangay 2 (Pob.)'),(1982,452,1,'Barangay 1 (Pob.)'),(1983,452,1,'Tanagan'),(1984,452,1,'Talisay'),(1985,452,1,'Santa Ana'),(1986,452,1,'Sambungan'),(1987,452,1,'Real'),(1988,452,1,'Luya'),(1989,452,1,'Quilitisan'),(1990,452,1,'Lucsuhin'),(1991,452,1,'Gulod'),(1992,452,1,'Hukay'),(1993,452,1,'Encarnacion'),(1994,452,1,'Carretunan'),(1995,452,1,'Biga'),(1996,452,1,'Carlosa'),(1997,452,1,'Balibago'),(1998,452,1,'Baha'),(1999,452,1,'Bagong Silang'),(2000,445,3,'Gonzales'),(2001,445,3,'Wawa'),(2002,445,3,'Ulango'),(2003,445,3,'Trapiche'),(2004,445,3,'Trapiche'),(2005,445,3,'Tinurik'),(2006,445,3,'Talaga'),(2007,445,3,'Suplang'),(2008,445,3,'Sulpoc'),(2009,445,3,'Santor'),(2010,445,3,'Santol (Dona Jacoba Garcia)'),(2011,445,3,'San Jose'),(2012,445,3,'Sambat'),(2013,445,3,'Sala'),(2014,445,3,'Poblacion Barangay 7'),(2015,445,3,'Poblacion Barangay 6,'),(2016,445,3,'Poblacion Barangay 5'),(2017,445,3,'Poblacion Barangay 4'),(2018,445,3,'Poblacion Barangay 3'),(2019,445,3,'Poblacion Barangay 2'),(2020,445,3,'Poblacion Barangay 1'),(2021,445,3,'Pantay Matanda'),(2022,445,3,'Pantay Bata'),(2023,445,3,'Pagaspas'),(2024,445,3,'Natatas'),(2025,445,3,'Montana (Ik-ik)'),(2026,445,3,'Maugat'),(2027,445,3,'Maria Paz'),(2028,445,3,'Malaking Pulo'),(2029,445,3,'Mabini'),(2030,445,3,'Luyos'),(2031,445,3,'Laurel'),(2032,445,3,'Janopol Oriental'),(2033,445,3,'Janopol'),(2034,445,3,'Hidalgo'),(2035,445,3,'Darasa'),(2036,445,3,'Cale'),(2037,445,3,'Boot'),(2038,445,3,'Bilog-bilog'),(2039,445,3,'Banjo Laurel (Banjo West)'),(2040,445,3,'Banjo East'),(2041,445,3,'Banadero'),(2042,445,3,'Balele'),(2043,445,3,'Bagumbayan'),(2044,445,3,'Bagbag'),(2045,445,3,'Ambulong'),(2046,445,3,'Altura-south'),(2047,445,3,'Altura Matanda'),(2048,445,3,'Altura Bata'),(2049,453,3,'Barangay 4 (Pob.)'),(2050,453,3,'Ibabao'),(2051,453,3,'San Isidro'),(2052,453,3,'San Felipe'),(2053,453,3,'Barangay 8 (Pob.)'),(2054,453,3,'Barangay 7 (Pob.)'),(2055,453,3,'Barangay 6 (Pob.)'),(2056,453,3,'Barangay 5 (Pob.)'),(2057,453,3,'Barangay 2 (Pob.)'),(2058,453,3,'Barangay 1 (Pob.)'),(2059,453,3,'Pinagkaisahan'),(2060,453,3,'Labac'),(2061,453,3,'Emmanuel'),(2062,453,3,'Don Juan'),(2063,453,3,'Dita'),(2064,453,3,'Dalipit West'),(2065,453,3,'Dalipit East'),(2066,453,3,'Calumayin'),(2067,453,3,'Bungahan'),(2068,453,3,'Balagbag'),(2069,454,4,'Lucsuhin'),(2070,454,4,'Tulay Na Patpat'),(2071,454,4,'Talaibon'),(2072,454,4,'Santo Nino'),(2073,454,4,'Sandalan'),(2074,454,4,'San Agustin'),(2075,454,4,'Salaban Ii'),(2076,454,4,'Salaban I'),(2077,454,4,'Sabang'),(2078,454,4,'Quilo'),(2079,454,4,'Poblacion'),(2080,454,4,'Panghayaan'),(2081,454,4,'Pangao'),(2082,454,4,'Palindan'),(2083,454,4,'Munting-tubig'),(2084,454,4,'Matala'),(2085,454,4,'Malainin'),(2086,454,4,'Lapu-lapu'),(2087,454,4,'Dayapan'),(2088,454,4,'Coliat'),(2089,454,4,'Catandala'),(2090,454,4,'Calamias'),(2091,454,4,'Bungahan'),(2092,454,4,'Balanga'),(2093,454,4,'Bago'),(2094,454,4,'Mabalor'),(2095,455,3,'Ticub'),(2096,455,3,'Santa Maria'),(2097,455,3,'San Gabriel'),(2098,455,3,'Buso-buso'),(2099,455,3,'Niyugan'),(2100,455,3,'J. Leviste'),(2101,455,3,'Gulod'),(2102,455,3,'Bugaan East'),(2103,455,3,'Molinete'),(2104,455,3,'Barangay 4 (Pob.)'),(2105,455,3,'San Gregorio'),(2106,455,3,'As-is'),(2107,455,3,'Paliparan'),(2108,455,3,'Barangay 5 (Pob.)'),(2109,455,3,'Barangay 2 (Pob.)'),(2110,455,3,'Barangay 1 (Pob.)'),(2111,455,3,'Berinayan'),(2112,455,3,'Balakilong'),(2113,455,3,'Barangay 3 (Pob.)'),(2114,455,3,'Dayap Itaas'),(2115,456,1,'Wawa Ilaya'),(2116,456,1,'Wawa Ibaba'),(2117,456,1,'Tubuan'),(2118,456,1,'Tubigan'),(2119,456,1,'Talaga'),(2120,456,1,'Sinisian West'),(2121,456,1,'Sinisian East'),(2122,456,1,'Sangalang'),(2123,456,1,'San Isidro Itaas'),(2124,456,1,'San Isidro Ibaba'),(2125,456,1,'Sambal Ilaya'),(2126,456,1,'Sambal Ibaba'),(2127,456,1,'Rizal'),(2128,456,1,'Payapa Ilaya'),(2129,456,1,'Payapa Ibaba'),(2130,456,1,'Palanas'),(2131,456,1,'Nonong Casto'),(2132,456,1,'Niugan'),(2133,456,1,'Mayasang'),(2134,456,1,'Matingain Ii'),(2135,456,1,'Matingain I'),(2136,456,1,'Mataas Na Bayan'),(2137,456,1,'Masalisi'),(2138,456,1,'Malinis'),(2139,456,1,'Maligaya,'),(2140,456,1,'Maigsing Dahilig'),(2141,456,1,'Mahayahay'),(2142,456,1,'Mahabang Dahilig'),(2143,456,1,'Maguihan'),(2144,456,1,'Lucky'),(2145,456,1,'Gulod'),(2146,456,1,'Dita'),(2147,456,1,'District Iv (Pob.)'),(2148,456,1,'District Iii (Pob.)'),(2149,456,1,'District Ii (Pob.)'),(2150,456,1,'District I (Pob.)'),(2151,456,1,'Dayapan'),(2152,456,1,'Cahilan Ii'),(2153,456,1,'Cahilan I'),(2154,456,1,'Bukal'),(2155,456,1,'Balanga'),(2156,456,1,'Bagong Sikat'),(2157,456,1,'Bagong Pook'),(2158,456,1,'Ayao-iyao'),(2159,456,1,'Arumahan'),(2160,456,1,'Anak-dagat'),(2161,457,1,'San Diego'),(2162,457,1,'Puting-kahoy'),(2163,457,1,'Prenza'),(2164,457,1,'Barangay 5 (Pob.)'),(2165,457,1,'Barangay 4 (Pob.)'),(2166,457,1,'Barangay 3 (Pob.)'),(2167,457,1,'Barangay 2 (Pob.)'),(2168,457,1,'Barangay 1 (Pob.)'),(2169,457,1,'Matabungkay'),(2170,457,1,'Malaruhatan'),(2171,457,1,'Luyahan'),(2172,457,1,'Lumaniag'),(2173,457,1,'Kapito'),(2174,457,1,'Humayingan'),(2175,457,1,'Cumba'),(2176,457,1,'Bungahan'),(2177,457,1,'Balibago'),(2178,457,1,'Bagong Pook'),(2179,457,1,'Binubusan'),(2180,444,4,'Calamias'),(2181,444,4,'Tibig'),(2182,444,4,'Tipacan'),(2183,444,4,'Tanguay'),(2184,444,4,'Tambo'),(2185,444,4,'Tangob'),(2186,444,4,'Poblacion Barangay 1'),(2187,444,4,'Talisay'),(2188,444,4,'Santo Toribio'),(2189,444,4,'Barangay 12 (Pob.)'),(2190,444,4,'Santo Nino'),(2191,444,4,'Poblacion Barangay 11'),(2192,444,4,'Sico'),(2193,444,4,'Poblacion Barangay 10'),(2194,444,4,'San Salvador'),(2195,444,4,'Poblacion Barangay 9-a'),(2196,444,4,'San Lucas'),(2197,444,4,'San Jose'),(2198,444,4,'Poblacion Barangay 9'),(2199,444,4,'Sapac'),(2200,444,4,'Poblacion Barangay 8'),(2201,444,4,'Poblacion Barangay 7'),(2202,444,4,'Poblacion Barangay 6'),(2203,444,4,'San Guillermo'),(2204,444,4,'San Francisco'),(2205,444,4,'Poblacion Barangay 5'),(2206,444,4,'San Celestino'),(2207,444,4,'Poblacion Barangay 4'),(2208,444,4,'San Carlos'),(2209,444,4,'Poblacion Barangay 3'),(2210,444,4,'San Benito'),(2211,444,4,'Poblacion Barangay 2'),(2212,444,4,'Sampaguita'),(2213,444,4,'Sabang'),(2214,444,4,'Rizal'),(2215,444,4,'Quezon'),(2216,444,4,'Pusil'),(2217,444,4,'Plaridel'),(2218,444,4,'Pinagtongulan'),(2219,444,4,'Pinagkawitan'),(2220,444,4,'Pangao'),(2221,444,4,'Pagolingin West'),(2222,444,4,'Pagolingin East'),(2223,444,4,'Pagolingin Bata'),(2224,444,4,'Munting Pulo'),(2225,444,4,'Mataas Na Lupa'),(2226,444,4,'Marauoy'),(2227,444,4,'Malitlit'),(2228,444,4,'Malagonlong'),(2229,444,4,'Mabini'),(2230,444,4,'Lumbang'),(2231,444,4,'Lodlod'),(2232,444,4,'Latag'),(2233,444,4,'Kayumanggi'),(2234,444,4,'Inosloban'),(2235,444,4,'Halang'),(2236,444,4,'Duhatan'),(2237,444,4,'Dagatan'),(2238,444,4,'Cumba'),(2239,444,4,'Bulaklakan'),(2240,444,4,'Bulacnin'),(2241,444,4,'Bugtong Na Pulo'),(2242,444,4,'Bolbok'),(2243,444,4,'Banaybanay'),(2244,444,4,'Balintawak'),(2245,444,4,'San Sebastian (Balagbag)'),(2246,444,4,'Bagong Pook'),(2247,444,4,'Antipolo Del Sur'),(2248,444,4,'Antipolo Del Norte'),(2249,444,4,'Anilao'),(2250,444,4,'Anilao-labac'),(2251,444,4,'Adya'),(2252,458,2,'Balibago'),(2253,458,2,'Tayuman'),(2254,458,2,'Soloc'),(2255,458,2,'San Nicolas'),(2256,458,2,'San Miguel'),(2257,458,2,'Sawang'),(2258,458,2,'Poblacion'),(2259,458,2,'Pinaghawanan'),(2260,458,2,'Olo-olo'),(2261,458,2,'Nagtoctoc'),(2262,458,2,'Masaguitsit'),(2263,458,2,'Nagtalongtong'),(2264,458,2,'Malapad Na Parang'),(2265,458,2,'Malalim Na Sanog'),(2266,458,2,'Malabrigo'),(2267,458,2,'Mabilog Na Bundok'),(2268,458,2,'Lagadlarin'),(2269,458,2,'Jaybanga'),(2270,458,2,'Fabrica'),(2271,458,2,'Calumpit'),(2272,458,2,'Calo'),(2273,458,2,'Bignay'),(2274,458,2,'Biga'),(2275,458,2,'Banalo'),(2276,458,2,'Balatbat'),(2277,458,2,'Apar'),(2278,459,2,'Pilahan'),(2279,459,2,'Calamias'),(2280,459,2,'Talaga East'),(2281,459,2,'Saguing'),(2282,459,2,'Nag-iba'),(2283,459,2,'Malimatoc Ii'),(2284,459,2,'Malimatoc I'),(2285,459,2,'Majuben'),(2286,459,2,'Mainit'),(2287,459,2,'Mainaga'),(2288,459,2,'Ligaya'),(2289,459,2,'Laurel'),(2290,459,2,'Gasang'),(2291,459,2,'Estrella'),(2292,459,2,'Bulacan'),(2293,459,2,'Bagalangit'),(2294,459,2,'Anilao Proper'),(2295,459,2,'Anilao East'),(2296,459,2,'Talaga Proper'),(2297,459,2,'Solo'),(2298,459,2,'Santo Tomas'),(2299,459,2,'Santo Nino'),(2300,459,2,'Santa Mesa'),(2301,459,2,'Santa Ana'),(2302,459,2,'San Teodoro'),(2303,459,2,'San Juan'),(2304,459,2,'San Jose'),(2305,459,2,'San Francisco'),(2306,459,2,'Sampaguita'),(2307,459,2,'Pulong Niogan'),(2308,459,2,'Pulong Balibaguhan'),(2309,459,2,'Pulong Anahao'),(2310,459,2,'Pulang Lupa'),(2311,459,2,'Poblacion'),(2312,459,2,'Anilao East'),(2313,460,3,'Santiago'),(2314,460,3,'San Pioquinto'),(2315,460,3,'San Pedro Ii (Western)'),(2316,460,3,'San Pedro I (Eastern)'),(2317,460,3,'San Juan'),(2318,460,3,'San Isidro East'),(2319,460,3,'San Gregorio'),(2320,460,3,'San Fernando'),(2321,460,3,'San Andres'),(2322,460,3,'Poblacion'),(2323,460,3,'Luta Del Sur'),(2324,460,3,'Luta Del Norte'),(2325,460,3,'Bulihan'),(2326,460,3,'Bilucao (San Isidro Western)'),(2327,460,3,'Bagong Pook'),(2328,461,3,'District Iv (Pob.)'),(2329,461,3,'Bayorbor'),(2330,461,3,'District Iii (Pob.)'),(2331,461,3,'Upa'),(2332,461,3,'Santol'),(2333,461,3,'San Sebastian'),(2334,461,3,'Nangkaan'),(2335,461,3,'Manggahan'),(2336,461,3,'Lumang Lipa'),(2337,461,3,'Loob'),(2338,461,3,'Kinalaglagan'),(2339,461,3,'Calingatan'),(2340,461,3,'Bubuyan'),(2341,461,3,'Barangay Ii-a (Pob.)'),(2342,461,3,'District Ii (Pob.)'),(2343,461,3,'District I (Pob.)'),(2344,462,1,'Tumalim'),(2345,462,1,'Natipuan'),(2346,462,1,'Barangay 4 (Pob.)'),(2347,462,1,'Talangan'),(2348,462,1,'Barangay 4 (Pob.)'),(2349,462,1,'Wawa'),(2350,462,1,'Utod'),(2351,462,1,'Reparo'),(2352,462,1,'Putat'),(2353,462,1,'Papaya'),(2354,462,1,'Pantalan'),(2355,462,1,'Munting Indan'),(2356,462,1,'Maugat'),(2357,462,1,'Mataas Na Pulo'),(2358,462,1,'Malapad Na Bato'),(2359,462,1,'Lumbangan'),(2360,462,1,'Looc'),(2361,462,1,'Latag'),(2362,462,1,'Kayrilaw'),(2363,462,1,'Kaylaway'),(2364,462,1,'Dayap'),(2365,462,1,'Cogunan'),(2366,462,1,'Catandaan'),(2367,462,1,'Calayo'),(2368,462,1,'Butucan'),(2369,462,1,'Bunducan'),(2370,462,1,'Bulihan'),(2371,462,1,'Bucana'),(2372,462,1,'Bilaran'),(2373,462,1,'Banilad'),(2374,462,1,'Balaytigui'),(2375,462,1,'Aga'),(2376,462,1,'Barangay 12 (Pob.)'),(2377,462,1,'Barangay 11 (Pob.)'),(2378,462,1,'Barangay 10 (Pob.)'),(2379,462,1,'Barangay 9 (Pob.)'),(2380,462,1,'Barangay 8 (Pob.)'),(2381,462,1,'Barangay 7 (Pob.)'),(2382,462,1,'Barangay 6 (Pob.)'),(2383,462,1,'Barangay 5 (Pob.)'),(2384,462,1,'Barangay 4 (Pob.)'),(2385,462,1,'Barangay 3 (Pob.)'),(2386,462,1,'Barangay 2 (Pob.)'),(2387,462,1,'Barangay 1 (Pob.)'),(2388,463,4,'Tangob'),(2389,463,4,'San Miguel'),(2390,463,4,'San Felipe'),(2391,463,4,'Quilo-quilo South'),(2392,463,4,'Poblacion'),(2393,463,4,'Payapa'),(2394,463,4,'Maugat East'),(2395,463,4,'Manggas'),(2396,463,4,'Cawongan'),(2397,463,4,'Castillo'),(2398,463,4,'Bukal'),(2399,463,4,'Bawi'),(2400,463,4,'Banaybanay'),(2401,463,4,'Banaba'),(2402,463,4,'Maugat West'),(2403,463,4,'Tamak'),(2404,463,4,'Pansol'),(2405,465,4,'Lapolapo I'),(2406,465,4,'Mojon-tampoy'),(2407,465,4,'Bagong Pook'),(2408,465,4,'Balagtasin'),(2409,465,4,'Banaybanay I'),(2410,465,4,'Banaybanay Ii'),(2411,465,4,'Bigain I'),(2412,465,4,'Bigain Ii'),(2413,465,4,'Bigain South'),(2414,465,4,'Don Luis'),(2415,465,4,'Dagatan'),(2416,465,4,'Calansayan'),(2417,465,4,'Galamay-amo'),(2418,465,4,'Lalayat'),(2419,465,4,'Lapolapo Ii'),(2420,465,4,'Lepute'),(2421,465,4,'Natunuan'),(2422,465,4,'Palanca'),(2423,465,4,'Pinagtung-ulan'),(2424,465,4,'Poblacion Barangay I'),(2425,465,4,'Poblacion Barangay Ii'),(2426,465,4,'Balagtasin I'),(2427,465,4,'Poblacion Barangay Iv'),(2428,465,4,'Sabang'),(2429,465,4,'Salaban'),(2430,465,4,'Taysan'),(2431,465,4,'Tugtug'),(2432,465,4,'Santo Cristo'),(2433,465,4,'Poblacion Barangay Iii'),(2434,465,4,'Lumil'),(2435,465,4,'Aya'),(2436,465,4,'Anus'),(2437,465,4,'Aguila'),(2438,466,4,'Mabalanoy'),(2439,466,4,'Tipaz'),(2440,466,4,'Ticalan'),(2441,466,4,'Talahiban Ii'),(2442,466,4,'Talahiban I'),(2443,466,4,'Subukin'),(2444,466,4,'Sico Ii'),(2445,466,4,'Sico I'),(2446,466,4,'Sapangan'),(2447,466,4,'Sampiro'),(2448,466,4,'Quipot'),(2449,466,4,'Putingbuhangin'),(2450,466,4,'Pulangbato'),(2451,466,4,'Poctol'),(2452,466,4,'Poblacion'),(2453,466,4,'Pinagbayanan'),(2454,466,4,'Palingowak'),(2455,466,4,'Palahanan Ii'),(2456,466,4,'Palahanan I'),(2457,466,4,'Nagsaulay'),(2458,466,4,'Muzon'),(2459,466,4,'Maraykit'),(2460,466,4,'Libato'),(2461,466,4,'Lipahan'),(2462,466,4,'Laiya-ibabao'),(2463,466,4,'Laiya-aplaya'),(2464,466,4,'Janaojanao'),(2465,466,4,'Imelda (Tubog)'),(2466,466,4,'Hugom'),(2467,466,4,'Escribano'),(2468,466,4,'Coloconto'),(2469,466,4,'Catmon'),(2470,466,4,'Calubcub Ii'),(2471,466,4,'Calubcub I'),(2472,466,4,'Calitcalit'),(2473,466,4,'Calicanto'),(2474,466,4,'Bulsa'),(2475,466,4,'Buhay Na Sapa'),(2476,466,4,'Bataan'),(2477,466,4,'Barualte'),(2478,466,4,'Balagbag'),(2479,466,4,'Abung'),(2480,467,2,'Tejero'),(2481,467,2,'Talon'),(2482,467,2,'Taliba'),(2483,467,2,'Santa Monica'),(2484,467,2,'San Martin'),(2485,467,2,'San Jose'),(2486,467,2,'San Isidro'),(2487,467,2,'San Antonio'),(2488,467,2,'Luya'),(2489,467,2,'Tungal'),(2490,467,2,'Poblacion'),(2491,467,2,'Muzon'),(2492,467,2,'Manggahan'),(2493,467,2,'Mahabang Parang'),(2494,467,2,'Locloc'),(2495,467,2,'Durungao'),(2496,467,2,'Dulangan'),(2497,467,2,'Calumpang West'),(2498,467,2,'Calumpang East'),(2499,467,2,'Bonliw'),(2500,467,2,'Boboy'),(2501,467,2,'Banoyo'),(2502,467,2,'Balite'),(2503,467,2,'Balagtasin'),(2504,467,2,'Bagong Tubig'),(2505,467,2,'Abiacao'),(2506,468,3,'Maabud North'),(2507,468,3,'Alas-as'),(2508,468,3,'Baluk-baluk'),(2509,468,3,'Bancoro'),(2510,468,3,'Balete'),(2511,468,3,'Bangin'),(2512,468,3,'Talang'),(2513,468,3,'Tagudtod'),(2514,468,3,'Sinturisan'),(2515,468,3,'Santo Nino'),(2516,468,3,'Pulang-bato'),(2517,468,3,'Poblacion'),(2518,468,3,'Pansipit'),(2519,468,3,'Munlawin'),(2520,468,3,'Maabud South'),(2521,468,3,'Hipit'),(2522,468,3,'Calangay'),(2523,468,3,'Abelo'),(2524,469,2,'Santo Nino'),(2525,469,2,'Santa Elena'),(2526,469,2,'San Mateo'),(2527,469,2,'San Mariano'),(2528,469,2,'San Antonio'),(2529,469,2,'Sambat'),(2530,469,2,'Resplandor'),(2531,469,2,'Pook Ni Kapitan'),(2532,469,2,'Pook Ni Banal'),(2533,469,2,'Padre Castillo'),(2534,469,2,'Poblacion'),(2535,469,2,'Pila'),(2536,469,2,'Palsahingin'),(2537,469,2,'Natunuan South'),(2538,469,2,'Natunuan North'),(2539,469,2,'Mataas Na Lupa'),(2540,469,2,'Malaking Pook'),(2541,469,2,'Laurel'),(2542,469,2,'Kaingin'),(2543,469,2,'Ilat South'),(2544,469,2,'Ilat North'),(2545,469,2,'Gelerang Kawayan'),(2546,469,2,'Del Pilar'),(2547,469,2,'Danglayan'),(2548,469,2,'Bayanan'),(2549,469,2,'Banaba'),(2550,469,2,'Balimbing'),(2551,469,2,'Antipolo'),(2552,469,2,'Alalum'),(2553,470,3,'Tambo Ilaya'),(2554,470,3,'Tambo Ibaba'),(2555,470,3,'Sampa'),(2556,470,3,'Saimsim'),(2557,470,3,'Sinipian'),(2558,470,3,'Poblacion Iii'),(2559,470,3,'Poblacion Ii A'),(2560,470,3,'Poblacion I'),(2561,470,3,'Pacifico'),(2562,470,3,'Irukan'),(2563,470,3,'Cutang Cawayan'),(2564,470,3,'Cuta East'),(2565,470,3,'Calayaan'),(2566,470,3,'Calumala'),(2567,470,3,'Burol'),(2568,470,3,'Bihis'),(2569,470,3,'Antipolo'),(2570,471,3,'San Luis'),(2571,471,3,'San Pedro'),(2572,471,3,'Santa Cruz'),(2573,471,3,'Santiago'),(2574,471,3,'Santa Teresita'),(2575,471,3,'Santa Maria'),(2576,471,3,'Santa Elena'),(2577,471,3,'Santa Clara'),(2578,471,3,'Santa Anastacia'),(2579,471,3,'Santa Ana'),(2580,471,3,'San Vicente'),(2581,471,3,'San Roque'),(2582,471,3,'San Rafael'),(2583,471,3,'San Pedro'),(2584,471,3,'San Pablo'),(2585,471,3,'San Miguel'),(2586,471,3,'San Luis'),(2587,471,3,'San Juan'),(2588,471,3,'San Jose'),(2589,471,3,'San Joaquin'),(2590,471,3,'San Isidro Sur'),(2591,471,3,'San Isidro Norte'),(2592,471,3,'San Francisco'),(2593,471,3,'San Fernando'),(2594,471,3,'San Felix'),(2595,471,3,'San Bartolome'),(2596,471,3,'San Antonio I'),(2597,471,3,'San Agustin'),(2598,471,3,'Barangay Iv (Pob.)'),(2599,471,3,'Barangay Iii (Pob.)'),(2600,471,3,'Barangay Ii (Pob.)'),(2601,471,3,'Aya'),(2602,472,1,'Poblacion 8'),(2603,472,1,'Tulo'),(2604,472,1,'Tierra Alta'),(2605,472,1,'Tatlong Maria'),(2606,472,1,'Seiran'),(2607,472,1,'Pook'),(2608,472,1,'Poblacion 9'),(2609,472,1,'Poblacion 7'),(2610,472,1,'Poblacion 6'),(2611,472,1,'Poblacion 5'),(2612,472,1,'Poblacion 4'),(2613,472,1,'Poblacion 3'),(2614,472,1,'Poblacion 2'),(2615,472,1,'Poblacion 14'),(2616,472,1,'Poblacion 13'),(2617,472,1,'Poblacion 12'),(2618,472,1,'Poblacion 11'),(2619,472,1,'Poblacion 10'),(2620,472,1,'Poblacion 1'),(2621,472,1,'Pansol'),(2622,472,1,'Niogan'),(2623,472,1,'Mahabang Lodlod'),(2624,472,1,'Luntal'),(2625,472,1,'Latag'),(2626,472,1,'Laguile'),(2627,472,1,'Ipil'),(2628,472,1,'Imamawo'),(2629,472,1,'Ilog'),(2630,472,1,'Iba'),(2631,472,1,'Halang,'),(2632,472,1,'Gahol'),(2633,472,1,'Cultihan'),(2634,472,1,'Cubamba'),(2635,472,1,'Caysasay'),(2636,472,1,'Cawit'),(2637,472,1,'Carasuche'),(2638,472,1,'Butong,'),(2639,472,1,'Buli'),(2640,472,1,'Bolbok'),(2641,472,1,'Bihis'),(2642,472,1,'Balisong'),(2643,472,1,'Apacay'),(2644,473,3,'Tumaway'),(2645,473,3,'Poblacion Barangay 6'),(2646,473,3,'Poblacion Barangay 3'),(2647,473,3,'Buco'),(2648,473,3,'Balas'),(2649,473,3,'Aya'),(2650,473,3,'Tumaway'),(2651,473,3,'Tranca'),(2652,473,3,'Santa Maria'),(2653,473,3,'San Guillermo'),(2654,473,3,'Sampaloc'),(2655,473,3,'Quiling'),(2656,473,3,'Poblacion Barangay 8'),(2657,473,3,'Poblacion Barangay 7'),(2658,473,3,'Poblacion Barangay 6'),(2659,473,3,'Poblacion Barangay 5'),(2660,473,3,'Poblacion Barangay 4'),(2661,473,3,'Poblacion Barangay 3'),(2662,473,3,'Poblacion Barangay 2'),(2663,473,3,'Poblacion Barangay 1'),(2664,473,3,'Miranda'),(2665,473,3,'Leynes'),(2666,473,3,'Caloocan'),(2667,473,3,'Buco'),(2668,473,3,'Banga'),(2669,473,3,'Aya'),(2670,474,4,'Tilambo'),(2671,474,4,'Santo Nino'),(2672,474,4,'San Marcelino'),(2673,474,4,'San Isidro'),(2674,474,4,'Poblacion West'),(2675,474,4,'Poblacion East'),(2676,474,4,'Pinagbayanan'),(2677,474,4,'Pina'),(2678,474,4,'Panghayaan'),(2679,474,4,'Pag-asa'),(2680,474,4,'Mataas Na Lupa'),(2681,474,4,'Mapulo'),(2682,474,4,'Mahanadiong'),(2683,474,4,'Mabayabas'),(2684,474,4,'Laurel'),(2685,474,4,'Guinhawa'),(2686,474,4,'Dagatan'),(2687,474,4,'Bukal'),(2688,474,4,'Bilogo'),(2689,474,4,'Bacao'),(2690,475,2,'Papaya'),(2691,475,2,'San Jose'),(2692,475,2,'San Pedro'),(2693,475,2,'Santo Tomas'),(2694,475,2,'Barangay 14 (Poblacion 2)'),(2695,475,2,'Gamao'),(2696,475,2,'Pisa'),(2697,475,2,'Makawayan'),(2698,475,2,'Barangay 13 (Poblacion 1)'),(2699,475,2,'Barangay 15 (Poblacion 3)'),(2700,475,2,'Corona'),(2701,475,2,'Talahib'),(2702,475,2,'Marikaban'),(2703,475,2,'San Juan'),(2704,475,2,'San Isidro'),(2705,476,1,'Malibu'),(2706,476,1,'Lumbangan'),(2707,476,1,'Tuyon-tuyon'),(2708,476,1,'Toong'),(2709,476,1,'Talon'),(2710,476,1,'San Jose'),(2711,476,1,'Sabang'),(2712,476,1,'Rizal (Pob.)'),(2713,476,1,'Rillo (Pob.)'),(2714,476,1,'Putol'),(2715,476,1,'Palincaro'),(2716,476,1,'Mataywanac'),(2717,476,1,'Magahis'),(2718,476,1,'Luntal'),(2719,476,1,'Burgos (Pob.)'),(2720,476,1,'Luna (Pob.)'),(2721,476,1,'Lumbangan'),(2722,476,1,'Guinhawa'),(2723,476,1,'Dao'),(2724,476,1,'Dalima'),(2725,476,1,'Bolboc'),(2726,476,1,'Bayudbud'),(2727,476,1,'Acle'),(2728,571,1,'San Vicente'),(2729,571,1,'San Isidro Labrador I'),(2730,571,1,'San Pedro'),(2731,571,1,'Poblacion Itaas'),(2732,571,1,'Bagumbayan'),(2733,571,1,'Poblacion Ibaba'),(2734,571,1,'Mahabang Parang'),(2735,571,1,'Kalayaan'),(2736,571,1,'San Vicente'),(2737,571,1,'Santo Nino'),(2738,573,2,'San Jose'),(2739,573,2,'Santiago'),(2740,573,2,'San Salvador'),(2741,573,2,'Rizal (Pob.)'),(2742,573,2,'Pinugay'),(2743,573,2,'San Miguel'),(2744,573,2,'Concepcion'),(2745,573,2,'San Juan'),(2746,573,2,'Mabini'),(2747,573,2,'Evangelista'),(2748,574,1,'Tabon'),(2749,574,1,'Habagatan'),(2750,574,1,'Kinagatan'),(2751,574,1,'Libid (Pob.)'),(2752,574,1,'Layunan (Pob.)'),(2753,574,1,'Malakaban'),(2754,574,1,'Kaytome'),(2755,574,1,'Pila Pila'),(2756,574,1,'Batingan'),(2757,574,1,'Janosa'),(2758,574,1,'Kalawaan'),(2759,574,1,'San Carlos'),(2760,574,1,'Lunsad'),(2761,574,1,'Limbon-limbon'),(2762,574,1,'Binitagan'),(2763,574,1,'Mahabang Parang'),(2764,574,1,'Macamot'),(2765,574,1,'Sapang,'),(2766,574,1,'Buhangin'),(2767,574,1,'Tatala'),(2768,574,1,'Libis (Pob.)'),(2769,574,1,'Tagpos'),(2770,574,1,'Kinaboogan'),(2771,574,1,'Tayuman'),(2772,574,1,'Kalinawan'),(2773,574,1,'Pag-asa'),(2774,574,1,'Kasile'),(2775,574,1,'Ithan'),(2776,574,1,'Pipindan'),(2777,574,1,'Gulod'),(2778,574,1,'Pinagdilawan'),(2779,574,1,'Ginoong Sanay'),(2780,574,1,'Pantok'),(2781,574,1,'Calumpang'),(2782,574,1,'Mambog'),(2783,574,1,'Bombong'),(2784,574,1,'Bilibiran'),(2785,574,1,'Palangoy'),(2786,574,1,'Bangad'),(2787,574,1,'Rayap'),(2788,575,1,'Santo Domingo'),(2789,575,1,'Santo Nino'),(2790,575,1,'Santa Rosa'),(2791,575,1,'San Roque'),(2792,575,1,'San Juan I'),(2793,575,1,'San Isidro'),(2794,575,1,'San Andres (Pob.)'),(2795,576,2,'San Roque (Pob.)'),(2796,576,2,'Tuna'),(2797,576,2,'Ticulio'),(2798,576,2,'Sampad'),(2799,576,2,'Navotas'),(2800,576,2,'Nagsulo'),(2801,576,2,'Malanggam-calubacan'),(2802,576,2,'Patunhay'),(2803,576,2,'Real (Pob.)'),(2804,576,2,'Del Remedio (Pob.)'),(2805,576,2,'Looc'),(2806,576,2,'Lambac'),(2807,576,2,'Dalig'),(2808,576,2,'Iglesia (Pob.)'),(2809,576,2,'Calahan'),(2810,576,2,'Balibago'),(2811,576,2,'Boor'),(2812,572,1,'Inarawan'),(2813,572,1,'Mambugan'),(2814,572,1,'San Luis'),(2815,572,1,'San Juan'),(2816,572,1,'Santa Cruz'),(2817,572,1,'Dela Paz (Pob.)'),(2818,572,1,'Dalig'),(2819,572,1,'San Isidro (Pob.)'),(2820,572,1,'Bagong Nayon'),(2821,572,1,'San Roque (Pob.)'),(2822,572,1,'Muntingdilaw'),(2823,572,1,'Cupang'),(2824,572,1,'Calawis'),(2825,572,1,'Beverly Hills'),(2826,572,1,'Mayamot'),(2827,572,1,'San Jose (Pob.)'),(2828,577,2,'Second District (Pob.)'),(2829,577,2,'Bayugo'),(2830,577,2,'Bagumbong'),(2831,577,2,'Lubo'),(2832,577,2,'Sipsipin'),(2833,577,2,'Paalaman'),(2834,577,2,'Palaypalay'),(2835,577,2,'Special District (Pob.)'),(2836,577,2,'Third District (Pob.)'),(2837,577,2,'Pagkalinawan'),(2838,577,2,'Punta'),(2839,578,2,'San Pedro (Pob.)'),(2840,578,2,'San Jose (Pob.)'),(2841,578,2,'San Juan (Pob.)'),(2842,578,2,'San Guillermo'),(2843,578,2,'San Guillermo'),(2844,578,2,'Maybancal'),(2845,578,2,'Lagundi'),(2846,578,2,'Can-cal-lan (Caniogan-calero-lanang)'),(2847,578,2,'Bombongan'),(2848,579,2,'Takungan (Pob.)'),(2849,579,2,'Wawa (Pob.)'),(2850,579,2,'Niogan'),(2851,579,2,'Bagumbayan (Pob.)'),(2852,579,2,'Imatong (Pob.)'),(2853,579,2,'Halayhayin'),(2854,579,2,'Hulo (Pob.)'),(2855,579,2,'Malaya'),(2856,579,2,'Quisao'),(2857,580,2,'San Isidro'),(2858,580,2,'San Rafael'),(2859,580,2,'San Jose'),(2860,580,2,'Macabud'),(2861,580,2,'San Jose'),(2862,580,2,'Rosario'),(2863,580,2,'Puray'),(2864,580,2,'Mascap'),(2865,580,2,'Manggahan'),(2866,580,2,'Burgos'),(2867,580,2,'Balite (Pob.)'),(2868,581,2,'Maly'),(2869,581,2,'Silangan'),(2870,581,2,'Dulong Bayan 1'),(2871,581,2,'Santa Ana'),(2872,581,2,'Guitnang Bayan Ii (Pob.)'),(2873,581,2,'Pintong Bocawe'),(2874,581,2,'Santo Nino'),(2875,581,2,'Ampid Ii'),(2876,581,2,'Ampid I'),(2877,581,2,'Malanday'),(2878,581,2,'Gulod Malaya'),(2879,581,2,'Guinayang'),(2880,581,2,'Guitnang Bayan I (Pob.)'),(2881,581,2,'Dulong Bayan 2'),(2882,581,2,'Banaba'),(2883,582,2,'Cuyambay'),(2884,582,2,'Tinucan'),(2885,582,2,'Wawa (Pob.)'),(2886,582,2,'Tabing Ilog (Pob.)'),(2887,582,2,'Tandang Kutyo (Pob.)'),(2888,582,2,'Santa Inez'),(2889,582,2,'San Andres'),(2890,582,2,'Santo Nino'),(2891,582,2,'San Isidro (Pob.)'),(2892,582,2,'Plaza Aldea (Pob.)'),(2893,582,2,'Sampaloc'),(2894,582,2,'Laiban'),(2895,582,2,'Pinagkamaligan (Pob.)'),(2896,582,2,'Mamuyao'),(2897,582,2,'Cayabu'),(2898,582,2,'Kaybuto (Pob.)'),(2899,582,2,'Daraitan'),(2900,582,2,'Katipunan-bayan (Pob.)'),(2901,582,2,'Mag-ampon (Pob.)'),(2902,583,1,'San Juan'),(2903,583,1,'Santa Ana'),(2904,583,1,'San Isidro'),(2905,583,1,'Muzon'),(2906,583,1,'Dolores (Pob.)'),(2907,584,2,'San Roque'),(2908,584,2,'Poblacion'),(2909,584,2,'San Gabriel'),(2910,584,2,'Prinza'),(2911,584,2,'Dulumbayan'),(2912,584,2,'May-iba'),(2913,584,2,'Dalig'),(2914,584,2,'Calumpang Santo Cristo'),(2915,584,2,'Bagumbayan'),(2916,549,3,'Kanlurang Calutan'),(2917,549,3,'Salvacion'),(2918,549,3,'Ibabang Kinagunan'),(2919,549,3,'Silangang Calutan'),(2920,549,3,'Ilayang Kinagunan'),(2921,549,3,'Sildora'),(2922,549,3,'Kanlurang Maligaya'),(2923,549,3,'Poblacion I'),(2924,549,3,'Silangang Maligaya'),(2925,549,3,'Poblacion Ii'),(2926,549,3,'Dayap'),(2927,549,3,'Binagbag'),(2928,561,4,'Caglate'),(2929,561,4,'Villa Esperanza'),(2930,561,4,'Villa Jesus Este'),(2931,561,4,'Pambilan Sur'),(2932,561,4,'Barangay 3 (Pob.)'),(2933,561,4,'Gordon'),(2934,561,4,'Villa Jesus Weste'),(2935,561,4,'Barangay 2 (Pob.)'),(2936,561,4,'Villa Norte'),(2937,561,4,'Barangay 4 (Pob.)'),(2938,561,4,'Barangay 5 (Pob.)'),(2939,561,4,'Balungay'),(2940,561,4,'Pambilan Norte'),(2941,561,4,'Villa Victoria'),(2942,561,4,'Camagong'),(2943,561,4,'Buenavista'),(2944,561,4,'Barangay 1 (Pob.)'),(2945,561,4,'Bacong'),(2946,561,4,'Angeles'),(2947,562,4,'Malinao Ilaya'),(2948,562,4,'Barangay Zone 4 (Pob.)'),(2949,562,4,'Barangay Zone 3 (Pob.)'),(2950,562,4,'Barangay Zone 2 (Pob.)'),(2951,562,4,'Barangay Zone 1 (Pob.)'),(2952,562,4,'Villa Ilaya'),(2953,562,4,'Villa Ibaba'),(2954,562,4,'Tinandog'),(2955,562,2,'Talaba'),(2956,562,2,'Tagbakin'),(2957,562,4,'Sokol'),(2958,562,4,'Santa Catalina'),(2959,562,4,'Sapaan'),(2960,562,4,'San Rafael'),(2961,562,4,'San Jose Balatok'),(2962,562,4,'San Isidro'),(2963,562,4,'San Andres Labak'),(2964,562,4,'San Andres Bundok'),(2965,562,4,'Rizal'),(2966,562,4,'Ponon'),(2967,562,4,'Montes Kallagan'),(2968,562,4,'Montes Balaon'),(2969,562,4,'Matanag'),(2970,562,4,'Manggalayan Labak'),(2971,562,4,'Manggalayan Bundok'),(2972,562,4,'Malusak'),(2973,562,4,'Malinao Ibaba'),(2974,562,4,'Magsaysay'),(2975,562,4,'Lumutan'),(2976,562,4,'Lubi'),(2977,562,4,'Lakip'),(2978,562,4,'Kulawit'),(2979,562,4,'Kilait'),(2980,562,4,'Inalig'),(2981,562,4,'Inaclagan'),(2982,562,4,'Habingan'),(2983,562,4,'Caridad Ilaya'),(2984,562,4,'Caridad Ibaba'),(2985,562,4,'Buhangin'),(2986,562,4,'Balugohin'),(2987,562,4,'Balubad'),(2988,562,4,'Angeles'),(2989,550,3,'San Pablo'),(2990,550,3,'Manlana'),(2991,550,3,'San Diego'),(2992,550,3,'San Isidro Ibaba'),(2993,550,3,'San Isidro Ilaya'),(2994,550,3,'San Pedro (Villa Rodrigo)'),(2995,550,3,'San Vicente'),(2996,550,3,'Siain'),(2997,550,3,'Villa Aurora'),(2998,550,3,'Villa Batabat'),(2999,550,3,'Villa Magsaysay'),(3000,550,3,'Villa Veronica'),(3001,550,3,'Sabang Piris'),(3002,550,3,'Sabang Pinamasagan'),(3003,550,3,'Rizal'),(3004,550,3,'Poblacion'),(3005,550,3,'Masaya'),(3006,550,3,'Maligaya (Esperanza)'),(3007,550,3,'Mabutag'),(3008,550,3,'Mabini'),(3009,550,3,'Lilukin'),(3010,550,3,'Ilayang Wasay'),(3011,550,3,'Ibabang Wasay'),(3012,550,3,'Hagonghong'),(3013,550,3,'Del Rosario'),(3014,550,3,'De La Paz'),(3015,550,3,'Cawa'),(3016,550,3,'Catulin'),(3017,550,3,'Cadlit'),(3018,550,3,'Cabong'),(3019,550,3,'Bulo'),(3020,550,3,'Bukal'),(3021,550,3,'Buenavista'),(3022,550,3,'Batabat Sur'),(3023,550,3,'Batabat Norte'),(3024,550,3,'Bagong Silang'),(3025,530,1,'Mabini'),(3026,530,1,'Calutcot'),(3027,530,1,'Cabugao'),(3028,530,1,'San Rafael'),(3029,530,1,'Rizal'),(3030,530,1,'Poblacion'),(3031,530,1,'Palasan'),(3032,530,1,'Carlagan'),(3033,530,1,'Cabungalunan'),(3034,530,1,'Caniwan'),(3035,530,1,'Amot'),(3036,530,1,'Anibawan'),(3037,530,1,'Bonifacio'),(3038,530,1,'Aluyon'),(3039,563,4,'Santa Milagrosa'),(3040,563,4,'Manhulugin'),(3041,563,4,'Rizal Ibaba'),(3042,563,4,'Maglipad (Rosario)'),(3043,563,4,'Barangay V (Pob.)'),(3044,563,4,'San Roque Ibaba'),(3045,563,4,'Rizal Ilaya'),(3046,563,4,'Anahawan'),(3047,563,4,'Santo Domingo'),(3048,563,4,'Pandanan'),(3049,563,4,'Tiniguiban'),(3050,563,4,'Mabini'),(3051,563,4,'Kinalin Ilaya'),(3052,563,4,'Anas'),(3053,563,4,'Balibago'),(3054,563,4,'Marilag (Punaya)'),(3055,563,4,'Maligaya'),(3056,563,4,'Ipil'),(3057,563,4,'Apad Quezon'),(3058,563,4,'Lungib'),(3059,563,4,'San Roque Ilaya'),(3060,563,4,'Dapdap'),(3061,563,4,'Vinas'),(3062,563,4,'Dona Aurora'),(3063,563,4,'Biyan'),(3064,563,4,'Sabang Ii'),(3065,563,4,'Tikiwan'),(3066,563,4,'Guinosayan'),(3067,563,4,'Tabansak'),(3068,563,4,'Baclaran'),(3069,563,4,'Bantolinao'),(3070,563,4,'Villa Magsino'),(3071,563,4,'San Quintin'),(3072,563,4,'Pinagkamaligan'),(3073,563,4,'Atulayan'),(3074,563,4,'Lagay'),(3075,563,4,'Kapaluhan'),(3076,563,4,'Buli'),(3077,563,4,'Santa Maria'),(3078,563,4,'Pinagtalleran'),(3079,563,4,'Kumaludkud'),(3080,563,4,'Sabang I'),(3081,563,4,'Patihan'),(3082,563,4,'Santa Cecilia'),(3083,563,4,'Bukal'),(3084,563,4,'Lainglaingan'),(3085,563,4,'Barangay I (Pob.)'),(3086,563,4,'Mambaling'),(3087,563,4,'Kinalin Ibaba'),(3088,563,4,'Sumilang'),(3089,563,4,'Madlangdungan'),(3090,563,4,'Kigtan'),(3091,563,4,'Barangay Iii (Pob.)'),(3092,563,4,'Kunalum'),(3093,563,4,'Apad Lutao'),(3094,563,4,'Barangay Ii (Pob.)'),(3095,563,4,'Kinamaligan'),(3096,563,4,'Bagong Silang'),(3097,563,4,'Binutas'),(3098,563,4,'Agoho'),(3099,563,4,'Talingting'),(3100,563,4,'Pansol'),(3101,563,4,'Santo Angel (Pangahoy)'),(3102,563,4,'Pinagsakahan'),(3103,563,4,'Apad Taisan'),(3104,563,4,'Villa San Isidro'),(3105,563,4,'Yaganak'),(3106,563,4,'Salvacion'),(3107,563,4,'Mulay'),(3108,563,4,'Tamis'),(3109,563,4,'Kuyaoyao'),(3110,563,4,'Sinag'),(3111,563,4,'Sumulong'),(3112,563,4,'Kalibo'),(3113,563,4,'Katangtang'),(3114,563,4,'Santa Rosa'),(3115,563,4,'Pinagbayanan'),(3116,563,4,'Bangkuruhan'),(3117,563,4,'Dominlog'),(3118,563,4,'Barangay Iv (Pob.)'),(3119,563,4,'Bigaan'),(3120,543,2,'Pahinga Norte'),(3121,543,2,'Masalukot I'),(3122,543,2,'Buenavista East'),(3123,543,2,'Santa Catalina Sur'),(3124,543,2,'Santa Catalina Norte'),(3125,543,2,'San Isidro'),(3126,543,2,'San Andres'),(3127,543,2,'Poblacion'),(3128,543,2,'Pahinga Sur'),(3129,543,2,'Mayabobo'),(3130,543,2,'Masin Sur'),(3131,543,2,'Masin Norte'),(3132,543,2,'Masalukot V'),(3133,543,2,'Masalukot Iv'),(3134,543,2,'Masalukot Iii'),(3135,543,2,'Masalukot Ii'),(3136,543,2,'Mangilag Sur'),(3137,543,2,'Mangilag Norte'),(3138,543,2,'Malabanban Sur'),(3139,543,2,'Malabanban Norte'),(3140,543,2,'Kinatihan Ii'),(3141,543,2,'Kinatihan I'),(3142,543,2,'Bukal Sur'),(3143,543,2,'Bukal Norte'),(3144,543,2,'Buenavista West'),(3145,551,3,'San Antonio Pala'),(3146,551,3,'San Antonio Magkupa'),(3147,551,3,'Pacabit'),(3148,551,3,'Navitas'),(3149,551,3,'Milagrosa'),(3150,551,3,'Matandang Sabang Silangan'),(3151,551,3,'Madulao'),(3152,551,3,'Macpac'),(3153,551,3,'Gatasan'),(3154,551,3,'Doongan Ilaya'),(3155,551,3,'Doongan Ibaba'),(3156,551,3,'Dahican'),(3157,551,3,'Cutcutan'),(3158,551,3,'Cawayanin Ilaya'),(3159,551,3,'Cawayanin Ibaba'),(3160,551,3,'Catumbo'),(3161,551,3,'Canculajao'),(3162,551,3,'Barangay 8 (Pob.)'),(3163,551,3,'Tuhian'),(3164,551,3,'Tagbacan Silangan'),(3165,551,3,'Tagbacan Ibaba'),(3166,551,3,'Tagbacan Ilaya'),(3167,551,3,'Tagabas Ilaya'),(3168,551,3,'Tagabas Ibaba'),(3169,551,3,'Santa Maria (Dao)'),(3170,551,3,'San Roque (Doyon)'),(3171,551,3,'San Vicente Silangan'),(3172,551,3,'San Vicente Kanluran'),(3173,551,3,'San Pablo (Suha)'),(3174,551,3,'Matandang Sabang Kanluran'),(3175,551,3,'San Jose (Anyao)'),(3176,551,3,'San Isidro'),(3177,551,3,'Camandiison'),(3178,551,3,'Bulagsong'),(3179,551,3,'Bolo'),(3180,551,3,'Barangay 9 (Pob.)'),(3181,551,3,'Barangay 7 (Pob.)'),(3182,551,3,'Barangay 6 (Pob.)'),(3183,551,3,'Barangay 5 (Pob.)'),(3184,551,3,'Barangay 4 (Pob.)'),(3185,551,3,'Barangay 3 (Pob.)'),(3186,551,3,'Barangay 10 (Pob.)'),(3187,551,3,'Barangay 2 (Pob.)'),(3188,551,3,'Barangay 1 (Pob.)'),(3189,551,3,'Anusan'),(3190,551,3,'Ajos'),(3191,544,2,'Santa Lucia'),(3192,544,2,'Silanganan (Pob.)'),(3193,544,2,'San Mateo'),(3194,544,2,'Pinagdanlayan'),(3195,544,2,'Kinabuhayan'),(3196,544,2,'Antonino (Ayusan)'),(3197,544,2,'Putol'),(3198,544,2,'Dagatan'),(3199,544,2,'Cabatang'),(3200,544,2,'Manggahan'),(3201,544,2,'Bayanihan (Pob.)'),(3202,544,2,'Bungoy'),(3203,544,2,'Bagong Anyo (Pob.)'),(3204,544,2,'Bulakin Ii'),(3205,544,2,'Bulakin I'),(3206,544,2,'Maligaya (Pob.)'),(3207,552,3,'Malaya'),(3208,552,3,'Barangay 4 (Pob.)'),(3209,552,3,'Lavides'),(3210,552,3,'San Ignacio Ilaya'),(3211,552,3,'San Ignacio Ibaba'),(3212,552,3,'Villarica,'),(3213,552,3,'Santa Maria Ilaya'),(3214,552,3,'Santa Maria Ibaba'),(3215,552,3,'San Vicente'),(3216,552,3,'San Nicolas'),(3217,552,3,'San Jose'),(3218,552,3,'San Isidro Ilaya'),(3219,552,3,'Recto'),(3220,552,3,'Magsaysay'),(3221,552,3,'Bacong Ilaya'),(3222,552,3,'San Isidro Ibaba'),(3223,552,3,'Barangay 7 (Pob.)'),(3224,552,3,'Barangay 2 (Pob.)'),(3225,552,3,'Barangay 3 (Pob.)'),(3226,552,3,'Barangay 5 (Pob.)'),(3227,552,3,'Barangay 6 (Pob.)'),(3228,552,3,'Barangay 8 (Pob.)'),(3229,552,3,'Barangay 9 (Pob.)'),(3230,552,3,'Barangay 1 (Pob.)'),(3231,552,3,'Bacong Ibaba'),(3232,552,3,'Nieva'),(3233,531,1,'Sablang'),(3234,531,1,'Umiray'),(3235,531,1,'San Marcelino'),(3236,531,1,'Poblacion'),(3237,531,1,'Pisa'),(3238,531,1,'Pamplona'),(3239,531,1,'Pagsangahan'),(3240,531,1,'Minahan Sur'),(3241,531,1,'Minahan Norte'),(3242,531,1,'Maligaya'),(3243,531,1,'Maigang'),(3244,531,1,'Mahabang Lalim'),(3245,531,1,'Magsikap'),(3246,531,1,'Lumutan'),(3247,531,1,'Catablingan'),(3248,531,1,'Canaway'),(3249,531,1,'Batangan'),(3250,531,1,'Banglos'),(3251,531,1,'Anoling'),(3252,564,4,'Lubigan'),(3253,564,4,'Ermita'),(3254,564,4,'Del Rosario'),(3255,564,4,'Dancalan Central'),(3256,564,4,'Villa Hiwasayan'),(3257,564,4,'Triumpo'),(3258,564,4,'Tikay'),(3259,564,4,'Sisi'),(3260,564,4,'Sintones'),(3261,564,4,'Santa Teresita'),(3262,564,4,'Santa Maria'),(3263,564,4,'Santa Cruz'),(3264,564,4,'San Roque'),(3265,564,4,'San Pedro Ii'),(3266,564,4,'San Pedro I'),(3267,564,4,'San Miguel'),(3268,564,4,'San Luis Ii'),(3269,564,4,'San Luis I'),(3270,564,4,'San Lorenzo'),(3271,564,4,'San Jose'),(3272,564,4,'San Isidro'),(3273,564,4,'San Antonio'),(3274,564,4,'Salakan'),(3275,564,4,'Poblacion'),(3276,564,4,'Manlayo'),(3277,564,4,'Manggalang'),(3278,564,4,'Manggagawa'),(3279,564,4,'Magsaysay'),(3280,564,4,'Magallanes'),(3281,564,4,'Ligpit Bantayan'),(3282,564,4,'Hinabaan'),(3283,564,4,'Himbubulo Weste'),(3284,564,4,'Himbubulo Este'),(3285,564,4,'Gapas'),(3286,564,4,'Dungawan Pantay'),(3287,564,4,'Dungawan Paalyunan'),(3288,564,4,'Dungawan Central'),(3289,564,4,'Danlagan Reserva'),(3290,564,4,'Danlagan Central'),(3291,564,4,'Danlagan Cabayao'),(3292,564,4,'Danlagan Batis'),(3293,564,4,'Dancalan Caimawan'),(3294,564,4,'Capuluan Tulon'),(3295,564,4,'Capuluan Central'),(3296,564,4,'Calimpak'),(3297,564,4,'Cabong Sur'),(3298,564,4,'Cabong Norte'),(3299,564,4,'Cabibihan'),(3300,564,4,'Bukal Maligaya'),(3301,564,4,'Balinarin'),(3302,564,4,'Bagong Silang'),(3303,564,4,'Arbismen'),(3304,564,4,'Aloneros'),(3305,564,4,'A. Mabini'),(3306,565,4,'Villa Victoria'),(3307,565,4,'Villa Tanada'),(3308,565,4,'Villa M. Principe'),(3309,565,4,'Villa Perez'),(3310,565,4,'Villa Padua'),(3311,565,4,'Villa Nava'),(3312,565,4,'Villa Bota'),(3313,565,4,'Villa Arcaya'),(3314,565,4,'Tumayan'),(3315,565,4,'Tabing Dagat (Pob.)'),(3316,565,4,'Sastre'),(3317,565,4,'San Vicente'),(3318,565,4,'San Juan De Jesus'),(3319,565,4,'San Isidro Silangan'),(3320,565,4,'San Isidro Kanluran'),(3321,565,4,'San Diego Poblacion'),(3322,565,4,'San Agustin'),(3323,565,4,'Rosario'),(3324,565,4,'Rizal (Pob.)'),(3325,565,4,'Progreso'),(3326,565,4,'Pipisik (Pob.)'),(3327,565,4,'Penafrancia (Pob.)'),(3328,565,4,'Panikihan'),(3329,565,4,'Pagsabangan'),(3330,565,4,'Marcelo H. Del Pilar'),(3331,565,4,'Maunlad (Pob.)'),(3332,565,4,'Villa Mendoza'),(3333,565,4,'Manlayaan'),(3334,565,4,'Malabtog'),(3335,565,4,'Mabunga'),(3336,565,4,'Mabini (Pob.)'),(3337,565,4,'Laguna'),(3338,565,4,'Labnig'),(3339,565,4,'Inagbuhan Ilaya'),(3340,565,4,'Inaclagan'),(3341,565,4,'Hardinan'),(3342,565,4,'Gitnang Barrio'),(3343,565,4,'Gayagayaan'),(3344,565,4,'Cawayan'),(3345,565,4,'Casasahan Ilaya'),(3346,565,4,'Casasahan Ibaba'),(3347,565,4,'Camohaguin'),(3348,565,4,'Calumangin'),(3349,565,4,'Butaguin'),(3350,565,4,'Bungahan'),(3351,565,4,'Buensuceso'),(3352,565,4,'Binambang'),(3353,565,4,'Biga'),(3354,565,4,'Batong Dalig'),(3355,565,4,'Bantad'),(3356,565,4,'Bamban'),(3357,565,4,'Bagong Buhay (Pob.)'),(3358,565,4,'Anonangin'),(3359,565,4,'Adia Bitaog'),(3360,565,4,'Villa Fuerte'),(3361,565,4,'San Diego'),(3362,565,4,'Mataas Na Bundok'),(3363,565,4,'Hagakhakin'),(3364,565,4,'Lagyo'),(3365,532,1,'Tudturan'),(3366,532,1,'Tongohin'),(3367,532,1,'Silangan'),(3368,532,1,'Pulo'),(3369,532,1,'Bantilan'),(3370,532,1,'Poblacion 39 (Poblacion Barangay 3)'),(3371,532,1,'Poblacion 38 (Poblacion Barangay 2)'),(3372,532,1,'Poblacion 1 (Barangay 1)'),(3373,532,1,'Pilaway'),(3374,532,1,'Miswa'),(3375,532,1,'Bacong'),(3376,532,1,'Maypulot'),(3377,532,1,'Magsaysay'),(3378,532,1,'Lual'),(3379,532,1,'Libjo'),(3380,532,1,'Langgas'),(3381,532,1,'Ingas'),(3382,532,1,'Ilog'),(3383,532,1,'Gumian'),(3384,532,1,'Dinahican'),(3385,532,1,'Comon'),(3386,532,1,'Cawaynin'),(3387,532,1,'Catambungan'),(3388,532,1,'Boboin'),(3389,532,1,'Binulasan'),(3390,532,1,'Binonoan'),(3391,532,1,'Batican'),(3392,532,1,'Banugao'),(3393,532,1,'Balobo'),(3394,532,1,'Antikin'),(3395,532,1,'Anibong'),(3396,532,1,'Amolongin'),(3397,532,1,'Alitas'),(3398,532,1,'Agos-agos'),(3399,532,1,'Abiawin'),(3400,533,1,'Apad'),(3401,533,1,'Bukal'),(3402,533,1,'Gango'),(3403,533,1,'Talisoy (Pob.)'),(3404,566,4,'Silang'),(3405,566,4,'Santo Nino Ibaba,'),(3406,566,4,'Santa Rosa'),(3407,566,4,'Santa Maria'),(3408,566,4,'Santa Lucia'),(3409,566,4,'Santa Jacobe'),(3410,566,4,'Santa Elena'),(3411,566,4,'Santa Catalina'),(3412,566,4,'San Roque'),(3413,566,4,'San Rafael'),(3414,566,4,'San Pedro'),(3415,566,4,'San Miguel (Dao)'),(3416,566,4,'San Jose'),(3417,566,4,'San Isidro'),(3418,566,4,'San Francisco B'),(3419,566,4,'San Francisco A'),(3420,566,4,'San Antonio'),(3421,566,4,'San Andres'),(3422,566,4,'Roma'),(3423,566,4,'Rizal (Rural)'),(3424,566,4,'Pisipis'),(3425,566,4,'Penafrancia'),(3426,566,4,'Pansol'),(3427,566,4,'Pamampangin'),(3428,566,4,'Monteclaro'),(3429,566,4,'Matinik'),(3430,566,4,'Mandoog'),(3431,566,4,'Mal-ay'),(3432,566,4,'Mahayod-hayod'),(3433,566,4,'Maguilayan'),(3434,566,4,'Magsaysay (Pob.)'),(3435,566,4,'Magallanes'),(3436,566,4,'Gomez (Pob.)'),(3437,566,4,'Mabini'),(3438,566,4,'Mabanban'),(3439,566,4,'Lourdes'),(3440,566,4,'Lalaguna'),(3441,566,4,'Guites'),(3442,566,4,'Hondagua'),(3443,566,4,'Ilayang Ilog A'),(3444,566,4,'Inalusan'),(3445,566,4,'Ilayang Ilog B'),(3446,566,4,'Banabahin Ibaba,'),(3447,566,4,'Bebito'),(3448,566,4,'Banabahin Ilaya'),(3449,566,4,'Bayabas'),(3450,566,4,'Binahian A'),(3451,566,4,'Binahian B'),(3452,566,4,'Buenavista'),(3453,566,4,'Canda Ilaya'),(3454,566,4,'Burgos (Pob.)'),(3455,566,4,'Jongo'),(3456,566,4,'Cagacag'),(3457,566,4,'Calantipayan'),(3458,566,4,'Canda Ibaba'),(3459,566,4,'Rosario'),(3460,566,4,'Bacungan'),(3461,566,4,'Bagacay'),(3462,566,4,'Santo Nino Ilaya'),(3463,566,4,'Guinuangan'),(3464,566,4,'Guihay'),(3465,566,4,'Esperanza Ilaya,'),(3466,566,4,'Esperanza Ibaba,'),(3467,566,4,'Del Rosario'),(3468,566,4,'Del Pilar'),(3469,566,4,'De La Paz'),(3470,566,4,'Danlagan'),(3471,566,4,'Concepcion'),(3472,566,4,'Cogorin Ilaya'),(3473,566,4,'Cogorin Ibaba'),(3474,566,4,'Cawayanin'),(3475,566,4,'Cawayan'),(3476,534,1,'Kabatete'),(3477,534,1,'Barangay 3 (Pob.)'),(3478,534,1,'Tinamnan'),(3479,534,1,'Tiawe'),(3480,534,1,'Samil'),(3481,534,1,'Piis'),(3482,534,1,'Palola'),(3483,534,1,'Nalunao'),(3484,534,1,'Nagsinamo'),(3485,534,1,'Nagsinamo'),(3486,534,1,'May-it'),(3487,534,1,'Manasa'),(3488,534,1,'Malupak'),(3489,534,1,'Mahabang Parang'),(3490,534,1,'Igang'),(3491,534,1,'Kulapi'),(3492,534,1,'Kilib'),(3493,534,1,'Kalyaat'),(3494,534,1,'Kalangay'),(3495,534,1,'Kakawit'),(3496,534,1,'Abang'),(3497,534,1,'Ayuti'),(3498,534,1,'Atulinao'),(3499,534,1,'Aliliw'),(3500,534,1,'Barangay 10 (Pob.)'),(3501,534,1,'Barangay 9 (Pob.)'),(3502,534,1,'Barangay 8 (Pob.)'),(3503,534,1,'Barangay 7 (Pob.)'),(3504,534,1,'Barangay 6 (Pob.)'),(3505,534,1,'Barangay 5 (Pob.)'),(3506,534,1,'Barangay 4 (Pob.)'),(3507,534,1,'Barangay 2 (Pob.)'),(3508,534,1,'Barangay 1 (Pob.)'),(3509,545,2,'Salinas'),(3510,545,2,'Isabang'),(3511,545,2,'Talao-talao'),(3512,545,2,'Ransohan'),(3513,545,2,'Mayao Silangan'),(3514,545,2,'Mayao Parada'),(3515,545,2,'Mayao Kanluran'),(3516,545,2,'Mayao Crossing'),(3517,545,2,'Mayao Castillo'),(3518,545,2,'Market View'),(3519,545,2,'Ilayang Talim'),(3520,545,2,'Ilayang Iyam'),(3521,545,2,'Ilayang Dupay'),(3522,545,2,'Ibabang Talim'),(3523,545,2,'Ibabang Iyam'),(3524,545,2,'Ibabang Dupay'),(3525,545,2,'Gulang-gulang'),(3526,545,2,'Domoit'),(3527,545,2,'Dalahican'),(3528,545,2,'Cotta'),(3529,545,2,'Bocohan'),(3530,545,2,'Barra'),(3531,545,2,'Barangay 11 (Pob.)'),(3532,545,2,'Barangay 10 (Pob.)'),(3533,545,2,'Barangay 9 (Pob.)'),(3534,545,2,'Barangay 8 (Pob.)'),(3535,545,2,'Barangay 7 (Pob.)'),(3536,545,2,'Barangay 6 (Pob.)'),(3537,545,2,'Barangay 5 (Pob.)'),(3538,545,2,'Barangay 4 (Pob.)'),(3539,545,2,'Barangay 3 (Pob.)'),(3540,545,2,'Barangay 2 (Pob.)'),(3541,545,2,'Barangay 1 (Pob.)'),(3542,553,3,'Candangal'),(3543,553,3,'Tubigan Ibaba'),(3544,553,3,'Taguin'),(3545,533,3,'San Nicolas'),(3546,553,3,'Vista Hermosa'),(3547,553,3,'Rizal (Pob.)'),(3548,553,3,'Padre Herrera'),(3549,533,3,'Olongtao Ilaya'),(3550,553,3,'Olongtao Ibaba'),(3551,553,3,'Mambog'),(3552,553,3,'Malabahay'),(3553,553,3,'Mabini Ibaba'),(3554,553,3,'Luctob'),(3555,553,3,'Calantas'),(3556,553,3,'Tubigan Ilaya'),(3557,553,3,'San Vicente'),(3558,553,3,'San Jose'),(3559,553,3,'San Isidro'),(3560,553,3,'Rodriquez (Pob.)'),(3561,553,3,'Pinagbayanan'),(3562,553,3,'Pajarillo'),(3563,553,3,'Pag-asa (Pob.)'),(3564,553,3,'Masipag (Pob.)'),(3565,553,3,'Mabini Ilaya'),(3566,553,3,'Lahing'),(3567,553,3,'Damayan (Pob.)'),(3568,553,3,'Castillo (Pob.)'),(3569,553,3,'Buyao'),(3570,553,3,'Anos'),(3571,553,3,'Amontay'),(3572,535,1,'Remedios I'),(3573,535,1,'Liwayway'),(3574,535,1,'Lucutan'),(3575,535,1,'Cagbalete I'),(3576,535,1,'Cagbalete Ii'),(3577,535,1,'Bagong Bayan (Pob.)'),(3578,535,1,'Baao'),(3579,535,1,'Santo Angel'),(3580,535,1,'San Vicente'),(3581,535,1,'San Rafael'),(3582,535,1,'San Isidro'),(3583,535,1,'Cagsiay I'),(3584,535,1,'Tapucan'),(3585,535,1,'Santo Nino'),(3586,535,1,'Santa Lucia'),(3587,535,1,'Soledad'),(3588,535,1,'Santol'),(3589,535,1,'San Roque'),(3590,535,1,'San Miguel'),(3591,535,1,'San Lorenzo'),(3592,535,1,'San Jose'),(3593,535,1,'San Gabriel'),(3594,535,1,'Sadsaran (Pob.)'),(3595,535,1,'Rosario'),(3596,535,1,'Rizaliana (Pob.)'),(3597,535,1,'Remedios Ii'),(3598,535,1,'Polo'),(3599,535,1,'Macasin'),(3600,535,1,'Mabato (Pob.)'),(3601,535,1,'Luya-luya'),(3602,535,1,'Lual (Pob.)'),(3603,535,1,'Lual Rural'),(3604,535,1,'Daungan (Pob.)'),(3605,535,1,'Concepcion'),(3606,535,1,'Cagsiay Iii'),(3607,535,1,'Cagsiay Ii'),(3608,535,1,'Bato'),(3609,535,1,'Balaybalay'),(3610,535,1,'Alitap'),(3611,535,1,'Abo-abo'),(3612,554,3,'Santa Rosa'),(3613,554,3,'San Pedro'),(3614,554,3,'Sagongon'),(3615,554,3,'Patabog'),(3616,554,3,'Pakiing'),(3617,554,3,'Matataja'),(3618,554,3,'Magsaysay'),(3619,554,3,'Latangan'),(3620,554,3,'Ilayang Yuni'),(3621,554,3,'Ilayang Cambuga (Mabini)'),(3622,554,3,'Ibabang Yuni'),(3623,554,3,'Ibabang Cambuga'),(3624,554,3,'F. Nanadiego'),(3625,554,3,'Canuyep'),(3626,554,3,'Butanyog'),(3627,554,3,'Burgos'),(3628,554,3,'Buenavista'),(3629,554,3,'Bolo'),(3630,554,3,'Barangay 4 (Pob.)'),(3631,554,3,'Barangay 3 (Pob.)'),(3632,554,3,'Anonang'),(3633,554,3,'Amuguis'),(3634,554,3,'Bagupaye'),(3635,554,3,'Bagong Silang'),(3636,554,3,'Ajos'),(3637,554,3,'Barangay 1 (Pob.)'),(3638,554,3,'Barangay 2 (Pob.)'),(3639,555,3,'Basiao (Pob.)'),(3640,555,3,'Yawe'),(3641,555,3,'Walay'),(3642,555,3,'Villapaz,'),(3643,555,3,'Tulay Buhangin'),(3644,555,3,'Sipa'),(3645,555,3,'San Vicente'),(3646,555,3,'San Isidro'),(3647,555,3,'Rizal'),(3648,555,3,'Punta (Pob.)'),(3649,555,3,'Marquez'),(3650,555,3,'Marao'),(3651,555,3,'Lipata'),(3652,555,3,'Kinagunan Ilaya'),(3653,555,3,'Kinagunan Ibaba'),(3654,555,3,'Hinguiwin'),(3655,555,4,'Duhat'),(3656,555,4,'Danlagan'),(3657,555,3,'Campo (Pob.)'),(3658,555,3,'Cabuyao Sur'),(3659,555,3,'Cabuyao Norte'),(3660,555,3,'Burgos (Pob.)'),(3661,536,1,'Pinagbayanan'),(3662,536,1,'Tukalan'),(3663,536,1,'Talipan'),(3664,536,1,'Silangan Malicboy'),(3665,536,1,'Barangay 5 Santa Catalina (Pob.)'),(3666,536,1,'Barangay 4 Parang (Pob.)'),(3667,536,1,'Barangay 3 Del Carmen (Pob.)'),(3668,536,1,'Barangay 2 Daungan (Pob.)'),(3669,536,1,'Barangay 1 Castillo (Pob.)'),(3670,536,1,'Mayhay'),(3671,536,1,'Mapagong'),(3672,536,1,'Kanluran Malicboy'),(3673,536,1,'Ilayang Polo'),(3674,536,1,'Ilayang Palsabangon'),(3675,536,1,'Ilayang Bagumbungan'),(3676,536,1,'Ikirin'),(3677,536,1,'Ibabang Polo'),(3678,536,1,'Ibabang Palsabangon'),(3679,536,1,'Ibabang Bagumbungan'),(3680,536,1,'Bukal'),(3681,536,1,'Binahaan'),(3682,536,1,'Bigo'),(3683,536,1,'Bantigue'),(3684,536,1,'Antipolo'),(3685,536,1,'Anato'),(3686,536,1,'Alupaye'),(3687,537,1,'San Juan (Pob.)'),(3688,537,1,'Pandan'),(3689,537,1,'Pagitan'),(3690,537,1,'Milawid'),(3691,537,1,'Matangkap'),(3692,537,1,'Lipata'),(3693,537,1,'Libo'),(3694,537,1,'Kinalagti'),(3695,537,1,'Calasumanga,'),(3696,537,1,'Bonbon'),(3697,537,1,'Bato'),(3698,537,1,'Balungay'),(3699,538,1,'Patnanungan Sur (Pob.)'),(3700,538,1,'Kilogan'),(3701,538,1,'Patnanungan Norte'),(3702,538,1,'Luod'),(3703,538,1,'Busdak'),(3704,538,1,'Amaga'),(3705,567,4,'Bagong Pag-asa Pob. (Barangay 3)'),(3706,567,4,'Rizal'),(3707,567,4,'Villamanzano Sur'),(3708,567,4,'Pambuhan'),(3709,567,4,'Mainit Sur'),(3710,567,4,'Mapagmahal Pob. (Barangay 2)'),(3711,567,4,'Mainit Norte'),(3712,567,4,'Bagong Silang Pob. (Barangay 4)'),(3713,567,4,'Pagkakaisa Pob. (Barangay 1)'),(3714,567,4,'Pinagtubigan Este'),(3715,567,4,'Villamanzano Norte'),(3716,567,4,'Pinagtubigan Weste'),(3717,567,4,'Maabot'),(3718,567,4,'Sangirin'),(3719,556,3,'Ilayang Pina'),(3720,556,3,'Ibabang Pina'),(3721,556,3,'Sumag Norte'),(3722,556,3,'Sumag Weste'),(3723,556,3,'Sumag Este'),(3724,556,3,'Ilayang Soliyao'),(3725,556,3,'Ibabang Soliyao'),(3726,556,3,'Sisirin'),(3727,556,3,'San Roque'),(3728,556,3,'Sampaloc'),(3729,556,3,'Saguinsinan'),(3730,556,3,'Rizalino'),(3731,556,3,'Quinagasan'),(3732,556,3,'Quezon'),(3733,556,3,'Poctol'),(3734,556,3,'Pag-asa (Pob.)'),(3735,556,3,'Pinagbayanan'),(3736,556,3,'Payte'),(3737,556,3,'Pamilihan (Pob.)'),(3738,556,3,'Ilayang Pacatin'),(3739,556,3,'Ibabang Pacatin'),(3740,556,3,'Osmena,'),(3741,556,3,'Nag-cruz'),(3742,556,3,'Masaya (Pob.)'),(3743,556,3,'Manggahan (Pob.)'),(3744,556,3,'Mayubok (Pob.)'),(3745,556,3,'Maaliw (Pob.)'),(3746,556,3,'Gangahin'),(3747,556,3,'Dulong Bayan (Pob.)'),(3748,556,3,'Dalampasigan (Pob.)'),(3749,556,3,'Cometa'),(3750,556,3,'Cawayanin'),(3751,556,3,'Castillo (Pob.)'),(3752,556,3,'Cabulihan'),(3753,556,3,'Ilayang Burgos'),(3754,556,3,'Ibabang Burgos'),(3755,556,3,'Bilucao'),(3756,556,3,'Biga'),(3757,556,3,'Amontay'),(3758,556,3,'Amontay'),(3759,568,4,'Central (Pob.)'),(3760,568,4,'Pampaaralan (Pob.)'),(3761,568,4,'Paang Bundok (Pob.)'),(3762,568,4,'M. L. Tumagay Pob. (Remas Mabuton)'),(3763,568,4,'Ilosong, 045635005'),(3764,568,4,'Tanauan'),(3765,568,4,'Ilaya'),(3766,568,4,'Duhat'),(3767,568,4,'Concepcion'),(3768,539,1,'Tamulaya-anitong'),(3769,539,1,'Taluong'),(3770,539,1,'Sibulan'),(3771,539,1,'Salipsip'),(3772,539,1,'Sabang'),(3773,539,1,'Poblacion'),(3774,539,1,'Pilion'),(3775,539,1,'Pinaglubayan'),(3776,539,1,'Pamatdan'),(3777,539,1,'Languyin'),(3778,539,1,'Libjo'),(3779,539,1,'Kalubakis'),(3780,539,1,'Canicanian'),(3781,539,1,'Bucao'),(3782,539,1,'Bislian'),(3783,539,1,'Binibitinan'),(3784,539,1,'Balesin'),(3785,539,1,'Atulayan'),(3786,539,1,'Anawan'),(3787,569,4,'Guinhawa'),(3788,569,4,'Mascarina'),(3789,569,4,'Barangay Iv (Pob.)'),(3790,569,4,'Barangay V (Pob.)'),(3791,569,4,'Barangay Vi (Pob.)'),(3792,569,4,'Barangay Iv (Pob.)'),(3793,569,4,'Barangay Iii (Pob.)'),(3794,569,4,'Barangay I (Pob.)'),(3795,569,4,'Montana'),(3796,569,4,'Argosino'),(3797,569,4,'Gumubat'),(3798,569,4,'Del Pilar'),(3799,569,4,'Barangay Ii (Pob.)'),(3800,569,4,'Cagbalogo'),(3801,569,4,'Magsino'),(3802,569,4,'Mascarina'),(3803,569,4,'Cometa,'),(3804,569,4,'Apad'),(3805,569,4,'Caridad'),(3806,569,4,'Barangay Ii (Pob.)'),(3807,569,4,'Sabang'),(3808,569,4,'Silangan'),(3809,569,4,'Tagkawa'),(3810,569,4,'Villa Belen'),(3811,569,4,'Villa Francia'),(3812,569,4,'Villa Gomez'),(3813,569,4,'Villa Mercedes'),(3814,540,1,'Tagumpay'),(3815,540,1,'Masikap'),(3816,540,1,'Bagong Silang'),(3817,540,1,'Maunlad'),(3818,540,1,'Poblacion 61 (Barangay 2)'),(3819,540,1,'Ungos'),(3820,540,1,'Tignoan'),(3821,540,1,'Tanauan'),(3822,540,1,'Pandan'),(3823,540,1,'Maragondon'),(3824,540,1,'Malapad'),(3825,540,1,'Lubayat'),(3826,540,1,'Llavac'),(3827,540,1,'Kiloloran'),(3828,540,1,'Cawayan'),(3829,540,1,'Capalong'),(3830,540,1,'Poblacion I (Barangay 1)'),(3831,541,1,'Alupay'),(3832,541,1,'Mamala'),(3833,541,1,'Bayongon'),(3834,541,1,'Ilayang Owain'),(3835,541,1,'Banot'),(3836,541,1,'Bataan'),(3837,541,1,'Taquico'),(3838,541,1,'Ibabang Owain'),(3839,541,1,'San Isidro (Pob.)'),(3840,541,1,'San Bueno'),(3841,541,1,'Caldong'),(3842,541,1,'Apasan'),(3843,541,1,'San Roque (Pob.)'),(3844,541,1,'Bilucao'),(3845,557,3,'Talisay'),(3846,557,3,'Tala'),(3847,557,3,'Poblacion'),(3848,557,3,'Pansoy'),(3849,557,3,'Mangero'),(3850,557,3,'Camflora'),(3851,557,3,'Alibihaban'),(3852,546,2,'Poblacion'),(3853,546,2,'Sinturisan'),(3854,546,2,'San Jose'),(3855,546,2,'Sampaguita'),(3856,546,2,'Sampaga'),(3857,546,2,'Pury'),(3858,546,2,'Pulo'),(3859,546,2,'Niing'),(3860,546,2,'Matipunso'),(3861,546,2,'Magsaysay'),(3862,546,2,'Loob'),(3863,546,2,'Manuel Del Valle, Sr'),(3864,546,2,'Corazon'),(3865,546,2,'Callejon'),(3866,546,2,'Bulihan'),(3867,546,2,'Buliran'),(3868,546,2,'Briones'),(3869,546,2,'Balat Atis'),(3870,546,2,'Bagong Niing'),(3871,546,2,'Arawan'),(3872,558,3,'Silongin'),(3873,558,3,'Santo Nino'),(3874,558,3,'Pugon'),(3875,558,3,'Poblacion'),(3876,558,3,'Pagsangahan'),(3877,558,3,'Nasalaan'),(3878,558,3,'Mabunga'),(3879,558,3,'Inabuan'),(3880,558,3,'Ilayang Tayuman'),(3881,558,3,'Ibabang Tayuman'),(3882,558,3,'Huyon-uyon'),(3883,558,3,'Don Juan Vercelos'),(3884,558,3,'Cawayan Ii'),(3885,558,3,'Cawayan I'),(3886,558,3,'Casay'),(3887,558,3,'Butanguiad'),(3888,559,3,'White Cliff'),(3889,559,3,'Villa Aurin (Pinagsama)'),(3890,559,3,'Villa Reyes'),(3891,559,3,'Vigo Central'),(3892,559,3,'San Vicente'),(3893,559,3,'San Juan'),(3894,559,3,'San Isidro'),(3895,559,3,'Rizal'),(3896,559,3,'Punta'),(3897,559,3,'Pagdadamayan (Pob.)'),(3898,559,3,'Maligaya (Pob.)'),(3899,559,3,'Pagkakaisa (Pob.)'),(3900,559,3,'Manlampong'),(3901,559,3,'Maguiting'),(3902,559,3,'Lacdayan'),(3903,559,3,'Guinhalinan'),(3904,559,3,'Calwit'),(3905,559,3,'Busokbusokan'),(3906,559,3,'Buenavista'),(3907,559,3,'Bayanihan (Pob.)'),(3908,559,3,'Bani'),(3909,559,3,'Binay'),(3910,559,3,'Andres Bonifacio'),(3911,559,3,'Abuyon'),(3912,547,2,'Tumbaga 2'),(3913,547,2,'Tumbaga 1'),(3914,547,2,'Talaanpantoc'),(3915,547,2,'Talaan Aplaya'),(3916,547,2,'Sampaloc Santo Cristo'),(3917,547,2,'Sampaloc Bogon'),(3918,547,2,'Sampaloc 2'),(3919,547,2,'Sampaloc 1'),(3920,547,2,'Pili'),(3921,547,2,'Morong'),(3922,547,2,'Montecillo'),(3923,547,2,'Manggalang Tulo-tulo'),(3924,547,2,'Manggalang-kiling'),(3925,547,2,'Manggalang-bantilan'),(3926,547,2,'Manggalang 1'),(3927,547,2,'Mamala Ii'),(3928,547,2,'Lutucan Malabag'),(3929,547,2,'Lutucan Bata'),(3930,547,2,'Lutucan 1'),(3931,547,2,'Limbon'),(3932,547,2,'Janagdong 2'),(3933,547,2,'Janagdong 1'),(3934,547,2,'Guisguis-talon'),(3935,547,2,'Guisguis-san Roque'),(3936,547,2,'Gibanga'),(3937,547,2,'Concepcion Pinagbakuran'),(3938,547,2,'Concepcion Palasan'),(3939,547,2,'Concepcion Banahaw'),(3940,547,2,'Concepcion No. 1'),(3941,547,2,'Castanas'),(3942,547,2,'Canda'),(3943,547,2,'Bucal'),(3944,547,2,'Bignay 2'),(3945,547,2,'Bignay 1'),(3946,547,2,'Balubal'),(3947,547,2,'Antipolo'),(3948,547,2,'Barangay 6 (Pob.)'),(3949,547,2,'Barangay 5 (Pob.)'),(3950,547,2,'Barangay 4 (Pob.)'),(3951,547,2,'Barangay 3 (Pob.)'),(3952,547,2,'Barangay 2 (Pob.)'),(3953,547,2,'Barangay 1 (Pob.)'),(3954,570,4,'Malbog'),(3955,570,4,'Bamban'),(3956,570,4,'San Diego'),(3957,570,4,'Santo Nino Ii'),(3958,570,4,'Casispalan'),(3959,570,4,'Bukal'),(3960,570,4,'Rizal'),(3961,570,4,'Santa Cecilia'),(3962,570,4,'San Francisco'),(3963,570,4,'Bagong Silang'),(3964,570,4,'Cabibihan'),(3965,570,4,'Landing'),(3966,570,4,'Payapa'),(3967,570,4,'Manato Station'),(3968,570,4,'Santa Monica'),(3969,570,4,'Candalapdap'),(3970,570,4,'Kinatakutan'),(3971,570,4,'Laurel'),(3972,570,4,'Mapulot'),(3973,570,4,'San Isidro'),(3974,570,4,'Del Rosario'),(3975,570,4,'Santo Tomas'),(3976,570,4,'Munting Parang'),(3977,570,4,'Aliji'),(3978,570,4,'Aldavoc'),(3979,570,4,'Victoria'),(3980,570,4,'Seguiwan'),(3981,570,4,'Tunton'),(3982,570,4,'Maguibuay'),(3983,570,4,'Mahinta'),(3984,570,4,'Magsaysay'),(3985,570,4,'San Vicente'),(3986,570,4,'Cagascas'),(3987,570,4,'Bosigon'),(3988,570,4,'Sabang'),(3989,570,4,'Cabugwang'),(3990,570,4,'Santo Nino I'),(3991,570,4,'Katimo'),(3992,570,4,'Tabason'),(3993,570,4,'Manato Central'),(3994,570,4,'Mangayao'),(3995,570,4,'Colong-colong'),(3996,542,1,'San Isidro Zone Ii'),(3997,542,1,'Baguio'),(3998,542,1,'San Diego Zone Iii'),(3999,542,1,'San Diego Zone Iv'),(4000,542,1,'San Roque Zone I (Pob.)'),(4001,542,1,'Tamlong'),(4002,542,1,'San Isidro Zone Iii'),(4003,542,1,'San Isidro Zone Iv'),(4004,542,1,'Pook'),(4005,542,1,'Domoit Silangan'),(4006,542,1,'Palale Kanluran'),(4007,542,1,'Katigan Kanluran'),(4008,542,1,'Lalo'),(4009,542,1,'Masin'),(4010,542,1,'Mate'),(4011,542,1,'Bukal Ibaba'),(4012,542,1,'Mayowe'),(4013,542,1,'Ilasan Ibaba'),(4014,542,1,'Nangka Ilaya'),(4015,542,1,'Palale Ibaba'),(4016,542,1,'Alupay'),(4017,542,1,'Isabang'),(4018,542,1,'Ipilan'),(4019,542,1,'Bukal Ilaya'),(4020,542,1,'Palale Ilaya'),(4021,542,1,'Calumpang'),(4022,542,1,'Domoit Kanluran'),(4023,542,1,'Angustias Zone Iv'),(4024,542,1,'Ilasan Ilaya'),(4025,542,1,'Anos'),(4026,542,1,'Calantas'),(4027,542,1,'Angeles Zone Iv'),(4028,542,1,'Camaysa'),(4029,542,1,'Alsam Ilaya'),(4030,542,1,'Dapdap'),(4031,542,1,'Angustias Zone I (Pob.)'),(4032,542,1,'Gibanga'),(4033,542,1,'Angustias Zone Ii'),(4034,542,1,'Angustias Zone Iii'),(4035,542,1,'Talolong'),(4036,542,1,'Tongko'),(4037,542,1,'Valencia'),(4038,542,1,'Wakas'),(4039,542,1,'Alitao'),(4040,542,1,'Angeles Zone Iii'),(4041,542,1,'Ayaas'),(4042,542,1,'Banilad'),(4043,542,1,'Alsam Ibaba'),(4044,542,1,'Angeles Zone Ii'),(4045,542,1,'Angeles Zone Ii'),(4046,542,1,'Angeles Zone I (Pob.)'),(4047,542,1,'Nangka Ibaba'),(4048,542,1,'Ibas'),(4049,542,1,'Lakawan'),(4050,542,1,'Lawigue'),(4051,542,1,'Lita (Pob.)'),(4052,542,1,'Pandakaki'),(4053,542,1,'Malaoa'),(4054,542,1,'Mateuna'),(4055,542,1,'Opias'),(4056,542,1,'Potol'),(4057,542,1,'San Diego Zone I (Pob.)'),(4058,542,1,'San Diego Zone Ii'),(4059,542,1,'San Isidro Zone I (Pob.)'),(4060,542,1,'Palale Silangan'),(4061,542,1,'San Roque Zone Ii'),(4062,542,1,'Katigan Silangan'),(4063,548,2,'Aquino'),(4064,548,2,'Lusacan'),(4065,548,2,'Ayusan Ii'),(4066,548,2,'Tamisian'),(4067,548,2,'San Francisco'),(4068,548,2,'Ayusan I'),(4069,548,2,'Barangay Iv (Pob.)'),(4070,548,2,'Behia'),(4071,548,2,'Bulakin'),(4072,548,2,'Cabatang'),(4073,548,2,'Del Rosario'),(4074,548,2,'Lumingon'),(4075,548,2,'Paiisa'),(4076,548,2,'Palagaran'),(4077,548,2,'Quipot'),(4078,548,2,'San Isidro'),(4079,548,2,'Talisay'),(4080,548,2,'Barangay Ii (Pob.)'),(4081,548,2,'San Pedro'),(4082,548,2,'Barangay I (Pob.)'),(4083,548,2,'San Agustin'),(4084,548,2,'Lagalag'),(4085,548,2,'Cabay'),(4086,548,2,'Barangay Iii (Pob.)'),(4087,548,2,'Bula'),(4088,548,2,'Bukal'),(4089,548,2,'Tagbakin'),(4090,548,2,'Lalig'),(4091,548,2,'San Juan'),(4092,548,2,'San Jose'),(4093,548,2,'Anastacia (Tagbak)'),(4094,560,3,'F. De Jesus (Pob.)'),(4095,560,3,'Tubigan'),(4096,560,3,'Tubas'),(4097,560,3,'Tagumpay'),(4098,560,3,'Socorro'),(4099,560,3,'San Roque'),(4100,560,3,'Rizal Ilaya'),(4101,560,3,'Rizal Ibaba'),(4102,560,3,'Punta'),(4103,560,3,'Poctol'),(4104,560,3,'R. Magsaysay (Pob.)'),(4105,560,3,'Raja Soliman (Pob.)'),(4106,560,3,'R. Lapu-lapu (Pob.)'),(4107,560,3,'Plaridel'),(4108,560,3,'Panaon Ilaya'),(4109,560,3,'Panaon Ibaba'),(4110,560,3,'Pagaguasan'),(4111,560,3,'Muliguin'),(4112,560,3,'Maputat'),(4113,560,3,'Malvar'),(4114,560,3,'Mairok Ilaya'),(4115,560,3,'Mabini'),(4116,560,3,'Cabulihan Ilaya'),(4117,560,3,'Mairok Ibaba'),(4118,560,3,'Cabulihan Ibaba'),(4119,560,3,'Kalilayan Ilaya'),(4120,560,3,'Kalilayan Ibaba'),(4121,560,3,'General Luna'),(4122,560,3,'Caigdal'),(4123,560,3,'Burgos'),(4124,560,3,'Bonifacio'),(4125,560,3,'Bulo Ilaya'),(4126,560,3,'Bulo Ibaba'),(4127,560,3,'Balanacan'),(4128,560,3,'Balagtas'),(4129,560,3,'Almacen');
/*!40000 ALTER TABLE `psi_barangays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_business_activities`
--

DROP TABLE IF EXISTS `psi_business_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_business_activities` (
  `ba_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ba_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`ba_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_business_activities`
--

LOCK TABLES `psi_business_activities` WRITE;
/*!40000 ALTER TABLE `psi_business_activities` DISABLE KEYS */;
INSERT INTO `psi_business_activities` VALUES (1,'Food Processing'),(2,'Furniture'),(3,'Natural Fibers, GHD & Fashion Accessories'),(4,'Metals & Engineering'),(5,'Aquatic & Marine'),(6,'Horticulture & Agriculture'),(7,'Health Products/Services/Pharmaceuticals'),(8,'Electronics & ICT'),(9,'Others');
/*!40000 ALTER TABLE `psi_business_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_calibrations`
--

DROP TABLE IF EXISTS `psi_calibrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_calibrations` (
  `cal_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cal_month` int(10) unsigned DEFAULT '0',
  `cal_year` int(10) unsigned DEFAULT '0',
  `cal_no_tests` int(10) unsigned DEFAULT '0',
  `cal_no_calibrations` int(10) unsigned DEFAULT '0',
  `cal_no_clients` int(10) unsigned DEFAULT '0',
  `cal_no_firms` int(10) unsigned DEFAULT '0',
  `cal_income` decimal(65,3) unsigned DEFAULT '0.000',
  `cal_value_service` decimal(65,3) unsigned DEFAULT '0.000',
  `lab_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `cal_income_gross` decimal(65,3) unsigned DEFAULT '0.000',
  `region_id` bigint(20) unsigned DEFAULT '6',
  PRIMARY KEY (`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_calibrations`
--

LOCK TABLES `psi_calibrations` WRITE;
/*!40000 ALTER TABLE `psi_calibrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_calibrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_cities`
--

DROP TABLE IF EXISTS `psi_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_cities` (
  `city_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `region_id` bigint(20) unsigned DEFAULT '0',
  `province_id` bigint(20) unsigned DEFAULT '0',
  `city_name` varchar(255) DEFAULT '',
  `district_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1630 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_cities`
--

LOCK TABLES `psi_cities` WRITE;
/*!40000 ALTER TABLE `psi_cities` DISABLE KEYS */;
INSERT INTO `psi_cities` VALUES (1,1,1,'Manila',9),(2,1,2,'Mandaluyong',9),(3,1,2,'Marikina',9),(4,1,2,'Pasig',9),(5,1,2,'Quezon City',9),(6,1,2,'San Juan',9),(7,1,3,'Caloocan',9),(8,1,3,'Malabon',9),(9,1,3,'Navotas',9),(10,1,3,'Valenzuela',9),(11,1,4,'Las Piñas',9),(12,1,4,'Makati',9),(13,1,4,'Muntinlupa',9),(14,1,4,'Parañaque',9),(15,1,4,'Pasay',9),(16,1,4,'Pateros',9),(17,1,4,'Taguig',9),(18,2,5,'Bangued',1),(19,2,5,'Boliney',1),(20,2,5,'Bucay',1),(21,2,5,'Bucloc',1),(22,2,5,'Daguioman',1),(23,2,5,'Danglas',1),(24,2,5,'Dolores',1),(25,2,5,'La Paz',1),(26,2,5,'Lacub',1),(27,2,5,'Lagangilang',1),(28,2,5,'Lagayan',1),(29,2,5,'Langiden',1),(30,2,5,'Licuan-Baay (Licuan)',1),(31,2,5,'Luba',1),(32,2,5,'Malibcong',1),(33,2,5,'Manabo',1),(34,2,5,'Peñarrubia',1),(35,2,5,'Pidigan',1),(36,2,5,'Pilar',1),(37,2,5,'Sallapadan',1),(38,2,5,'San Isidro',1),(39,2,5,'San Juan',1),(40,2,5,'San Quintin',1),(41,2,5,'Tayum',1),(42,2,5,'Tineg',1),(43,2,5,'Tubo',1),(44,2,5,'Villaviciosa',1),(45,2,6,'Calanasan (Bayag)',1),(46,2,6,'Conner',1),(47,2,6,'Flora',1),(48,2,6,'Kabugao',1),(49,2,6,'Luna (Macatel[3])',1),(50,2,6,'Pudtol',1),(51,2,6,'Santa Marcela',1),(52,2,7,'Baguio City',1),(53,2,7,'Atok',1),(54,2,7,'Bakun',1),(55,2,7,'Bokod',1),(56,2,7,'Buguias',1),(57,2,7,'Itogon',1),(58,2,7,'Kabayan',1),(59,2,7,'Kapangan',1),(60,2,7,'Kibungan',1),(61,2,7,'La Trinidad',1),(62,2,7,'Mankayan',1),(63,2,7,'Sablan',1),(64,2,7,'Tuba',1),(65,2,7,'Tublay',1),(66,2,8,'Aguinaldo',1),(67,2,8,'Alfonso Lista (Potia)',1),(68,2,8,'Asipulo',1),(69,2,8,'Banaue',1),(70,2,8,'Hingyon',1),(71,2,8,'Hungduan',1),(72,2,8,'Kiangan',1),(73,2,8,'Lagawe',1),(74,2,8,'Lamut',1),(75,2,8,'Mayoyao',1),(76,2,8,'Tinoc',1),(77,2,9,'Tabuk',1),(78,2,9,'Balbalan',1),(79,2,9,'Lubuagan',1),(80,2,9,'Pasil',1),(81,2,9,'Pinukpuk',1),(82,2,9,'Rizal (Liwan)',1),(83,2,9,'Tanudan',1),(84,2,9,'Tinglayan',1),(85,2,10,'Barlig',1),(86,2,10,'Bauko',1),(87,2,10,'Besao',1),(88,2,10,'Bontoc',1),(89,2,10,'Natonin',1),(90,2,10,'Paracelis',1),(91,2,10,'Sabangan',1),(92,2,10,'Sadanga',1),(93,2,10,'Sagada',1),(94,2,10,'Tadian',1),(95,3,11,'Adams',1),(96,3,11,'Bacarra',1),(97,3,11,'Badoc',2),(98,3,11,'Bangui',1),(99,3,11,'Banna (Espiritu)',2),(100,3,11,'Batac City',2),(101,3,11,'Burgos',1),(102,3,11,'Carasi',1),(103,3,11,'Currimao',2),(104,3,11,'Dingras',2),(105,3,11,'Dumalneg',1),(106,3,11,'Laoag City',1),(107,3,11,'Marcos',2),(108,3,11,'Nueva Era',2),(109,3,11,'Pagudpud',1),(110,3,11,'Paoay',2),(111,3,11,'Pasuquin',1),(112,3,11,'Piddig',1),(113,3,11,'Pinili',2),(114,3,11,'San Nicolas',2),(115,3,11,'Sarrat',1),(116,3,11,'Solsona',2),(117,3,11,'Vintar',1),(118,3,12,'Vigan City',1),(119,3,12,'Candon City',2),(120,3,12,'Alilem',2),(121,3,12,'Banayoyo',2),(122,3,12,'Bantay',1),(123,3,12,'Burgos',2),(124,3,12,'Cabugao',1),(125,3,12,'Caoayan',1),(126,3,12,'Cervantes',2),(127,3,12,'Galimuyod',2),(128,3,12,'Gregorio del Pilar (Concepcion)',2),(129,3,12,'Lidlidda',2),(130,3,12,'Magsingal',1),(131,3,12,'Nagbukel',2),(132,3,12,'Narvacan',2),(133,3,12,'Quirino (Angaki)',2),(134,3,12,'Salcedo (Baugen)',2),(135,3,12,'San Emilio',2),(136,3,12,'San Esteban',2),(137,3,12,'San Ildefonso',1),(138,3,12,'San Juan (Lapog)',1),(139,3,12,'San Vicente',1),(140,3,12,'Santa',2),(141,3,12,'Santa Catalina',1),(142,3,12,'Santa Cruz',2),(143,3,12,'Santa Lucia',2),(144,3,12,'Santa Maria',2),(145,3,12,'Santiago',2),(146,3,12,'Santo Domingo',1),(147,3,12,'Sigay',2),(148,3,12,'Sinait',1),(149,3,12,'Sugpon',2),(150,3,12,'Suyo',2),(151,3,12,'Tagudin',2),(152,3,13,'San Fernando City, La Union',1),(153,3,13,'Agoo',2),(154,3,13,'Aringay',2),(155,3,13,'Bacnotan',1),(156,3,13,'Bagulin',2),(157,3,13,'Balaoan',1),(158,3,13,'Bangar',1),(159,3,13,'Bauang',2),(160,3,13,'Burgos',2),(161,3,13,'Caba',2),(162,3,13,'Luna',1),(163,3,13,'Naguilian',2),(164,3,13,'Pugo',2),(165,3,13,'Rosario',2),(166,3,13,'San Gabriel',1),(167,3,13,'San Juan',1),(168,3,13,'Sto. Tomas',2),(169,3,13,'Santol',1),(170,3,13,'Sudipen',1),(171,3,13,'Tubao',2),(172,3,14,'Alaminos',1),(173,3,14,'Dagupan',4),(174,3,14,'San Carlos',3),(175,3,14,'Urdaneta City',5),(176,3,14,'Agno',1),(177,3,14,'Aguilar',2),(178,3,14,'Alcala',5),(179,3,14,'Anda',1),(180,3,14,'Asingan',6),(181,3,14,'Balungao',6),(182,3,14,'Bani',1),(183,3,14,'Basista',2),(184,3,14,'Bautista',5),(185,3,14,'Bayambang',3),(186,3,14,'Binalonan',5),(187,3,14,'Binmaley',2),(188,3,14,'Bolinao',1),(189,3,14,'Bugallon',2),(190,3,14,'Burgos',1),(191,3,14,'Calasiao',3),(192,3,14,'Dasol',1),(193,3,14,'Infanta',1),(194,3,14,'Labrador',2),(195,3,14,'Laoac',5),(196,3,14,'Lingayen',2),(197,3,14,'Mabini',1),(198,3,14,'Malasiqui',3),(199,3,14,'Manaoag',4),(200,3,14,'Mangaldan',4),(201,3,14,'Mangatarem',2),(202,3,14,'Mapandan',3),(203,3,14,'Natividad',6),(204,3,14,'Pozorrubio',5),(205,3,14,'Rosales',6),(206,3,14,'San Fabian',4),(207,3,14,'San Jacinto',4),(208,3,14,'San Manuel',6),(209,3,14,'San Nicolas',6),(210,3,14,'San Quintin',6),(211,3,14,'Santa Barbara',3),(212,3,14,'Santa Maria',6),(213,3,14,'Santo Tomas',5),(214,3,14,'Sison',5),(215,3,14,'Sual',1),(216,3,14,'Tayug',6),(217,3,14,'Umingan',6),(218,3,14,'Urbiztondo',2),(219,3,14,'Villasis',5),(220,4,15,'Basco',1),(221,4,15,'Itbayat',1),(222,4,15,'Ivana',1),(223,4,15,'Mahatao',1),(224,4,15,'Sabtang',1),(225,4,15,'Uyugan',1),(226,4,16,'Tuguegarao City',3),(227,4,16,'Abulug',2),(228,4,16,'Alcala',1),(229,4,16,'Allacapan',2),(230,4,16,'Amulung',3),(231,4,16,'Aparri',1),(232,4,16,'Baggao',1),(233,4,16,'Ballesteros',2),(234,4,16,'Buguey',1),(235,4,16,'Calayan',2),(236,4,16,'Camalaniugan',1),(237,4,16,'Claveria',2),(238,4,16,'Enrile',3),(239,4,16,'Gattaran',1),(240,4,16,'Gonzaga',1),(241,4,16,'Iguig',3),(242,4,16,'Lal-Lo',1),(243,4,16,'Lasam',2),(244,4,16,'Pamplona',2),(245,4,16,'Peñablanca',3),(246,4,16,'Piat',2),(247,4,16,'Rizal',2),(248,4,16,'Sanchez-Mira',2),(249,4,16,'Santa Ana',1),(250,4,16,'Santa Praxedes',2),(251,4,16,'Santa Teresita',1),(252,4,16,'Santo Niño (Faire)',2),(253,4,16,'Solana',3),(254,4,16,'Tuao',3),(255,4,17,'Cauayan City',3),(256,4,17,'Ilagan City',1),(257,4,17,'Santiago City',4),(258,4,17,'Alicia',3),(259,4,17,'Angadanan',3),(260,4,17,'Aurora',2),(261,4,17,'Benito Soliven',2),(262,4,17,'Burgos',2),(263,4,17,'Cabagan',1),(264,4,17,'Cabatuan',3),(265,4,17,'Cordon',4),(266,4,17,'Delfin Albano',1),(267,4,17,'Dinapigue',4),(268,4,17,'Divilican',1),(269,4,17,'Echague',4),(270,4,17,'Gamu',2),(271,4,17,'Jones',4),(272,4,17,'Luna',3),(273,4,17,'Maconacon',1),(274,4,17,'Mallig',2),(275,4,17,'Naguilian',2),(276,4,17,'Palanan',1),(277,4,17,'Quezon',2),(278,4,17,'Quirino',2),(279,4,17,'Ramon',4),(280,4,17,'Reina Mercedes',3),(281,4,17,'Roxas',2),(282,4,17,'San Agustin',4),(283,4,17,'San Guillermo',3),(284,4,17,'San Isidro',4),(285,4,17,'San Manuel',2),(286,4,17,'San Mariano',2),(287,4,17,'San Mateo',3),(288,4,17,'San Pablo',1),(289,4,17,'Santa Maria',1),(290,4,17,'Santo Tomas',1),(291,4,17,'Tumauini',1),(292,4,18,'Alfonso Castañeda',1),(293,4,18,'Ambaguio',1),(294,4,18,'Aritao',1),(295,4,18,'Bagabag',1),(296,4,18,'Bambang',1),(297,4,18,'Bayombong',1),(298,4,18,'Diadi',1),(299,4,18,'Dupax del Norte',1),(300,4,18,'Dupax del Sur',1),(301,4,18,'Kasibu',1),(302,4,18,'Kayapa',1),(303,4,18,'Quezon',1),(304,4,18,'Santa Fe',1),(305,4,18,'Solano',1),(306,4,18,'Villaverde',1),(307,5,19,'Aglipay',1),(308,5,19,'Cabarroguis (capital)',1),(309,5,19,'Diffun',1),(310,5,19,'Maddela',1),(311,5,19,'Nagtipunan',1),(312,5,19,'Saguday',1),(313,5,20,'Baler',1),(314,5,20,'Casiguran',1),(315,5,20,'Dilasag',1),(316,5,20,'Dinalungan',1),(317,5,20,'Dingalan',1),(318,5,20,'Dipaculao',1),(319,5,20,'Maria Aurora',1),(320,5,20,'San Luis',1),(321,5,21,'Balanga City',2),(322,5,21,'Abucay',1),(323,5,21,'Bagac',2),(324,5,21,'Dinalupihan',1),(325,5,21,'Hermosa',1),(326,5,21,'Limay',2),(327,5,21,'Mariveles',2),(328,5,21,'Morong',1),(329,5,21,'Orani',1),(330,5,21,'Orion',2),(331,5,21,'Pilar',2),(332,5,21,'Samal',1),(333,5,22,'Angat',3),(334,5,22,'Balagtas (Bigaa)',2),(335,5,22,'Baliuag',2),(336,5,22,'Bocaue',2),(337,5,22,'Bulakan',1),(338,5,22,'Bustos',2),(339,5,22,'Calumpit',1),(340,5,22,'Doña Remedios Trinidad',3),(341,5,22,'Guiguinto',2),(342,5,22,'Hagonoy',1),(343,5,22,'Malolos City',1),(344,5,22,'Marilao',4),(345,5,22,'Meycauayan City',4),(346,5,22,'Norzagaray',3),(347,5,22,'Obando',4),(348,5,22,'Pandi',2),(349,5,22,'Paombong',1),(350,5,22,'Plaridel',2),(351,5,22,'Pulilan',1),(352,5,22,'San Ildefonso',3),(353,5,22,'San Jose del Monte',1),(354,5,22,'San Miguel',3),(355,5,22,'San Rafael',3),(356,5,22,'Santa Maria',4),(357,5,23,'Cabanatuan City',3),(358,5,23,'Gapan City',4),(359,5,23,'Palayan City',3),(360,5,23,'San Jose City',2),(361,5,23,'Muñoz City',2),(362,5,23,'Aliaga',1),(363,5,23,'Bongabon',3),(364,5,23,'Cabiao',4),(365,5,23,'Carranglan',2),(366,5,23,'Cuyapo',1),(367,5,23,'Gabaldon',3),(368,5,23,'Gen. Mamerto Natividad',3),(369,5,23,'Guimba',1),(370,5,23,'General Tinio',4),(371,5,23,'Jaén',4),(372,5,23,'Laur',3),(373,5,23,'Licab',1),(374,5,23,'Llanera',2),(375,5,23,'Lupao',2),(376,5,23,'Nampicuan',1),(377,5,23,'Pantabangan',2),(378,5,23,'Peñaranda',4),(379,5,23,'Quezon',1),(380,5,23,'Rizal',2),(381,5,23,'San Antonio',4),(382,5,23,'San Isidro',4),(383,5,23,'San Leonardo',4),(384,5,23,'Santa Rosa',3),(385,5,23,'Santo Domingo',1),(386,5,23,'Talavera',1),(387,5,23,'Talugtug',2),(388,5,23,'Zaragoza',1),(389,5,24,'Angeles City',1),(390,5,24,'San Fernando City',3),(391,5,24,'Mabalacat City',1),(392,5,24,'Apalit',4),(393,5,24,'Arayat',3),(394,5,24,'Bacolor',3),(395,5,24,'Candaba',4),(396,5,24,'Floridablanca',2),(397,5,24,'Guagua',2),(398,5,24,'Lubao',2),(399,5,24,'Macabebe',4),(400,5,24,'Magalang',1),(401,5,24,'Masantol',4),(402,5,24,'Mexico',3),(403,5,24,'Minalin',4),(404,5,24,'Porac',2),(405,5,24,'San Luis',4),(406,5,24,'San Simon',4),(407,5,24,'Santa Ana',3),(408,5,24,'Santa Rita',2),(409,5,24,'Santo Tomas',4),(410,5,24,'Sasmuan',2),(411,5,25,'Tarlac City',2),(412,5,25,'Concepcion',3),(413,5,25,'Capas',3),(414,5,25,'Paniqui',1),(415,5,25,'Gerona',2),(416,5,25,'Camiling',1),(417,5,25,'Bamban',3),(418,5,25,'La Paz',3),(419,5,25,'Victoria',2),(420,5,25,'Moncada',1),(421,5,25,'Santa Ignacia',1),(422,5,25,'San Jose',2),(423,5,25,'Mayantoc',1),(424,5,25,'San Manuel',1),(425,5,25,'Pura',1),(426,5,25,'Ramos',1),(427,5,25,'San Clemente',1),(428,5,25,'Anao',1),(429,5,26,'Olongapo City',1),(430,5,26,'Subic',1),(431,5,26,'Castillejos',1),(432,5,26,'San Marcelino',1),(433,5,26,'San Antonio',2),(434,5,26,'San Narciso',2),(435,5,26,'San Felipe',2),(436,5,26,'Cabangan',2),(437,5,26,'Botolan',2),(438,5,26,'Iba',2),(439,5,26,'Palauig',2),(440,5,26,'Masinloc',2),(441,5,26,'Candelaria',2),(442,5,26,'Santa Cruz',2),(443,6,27,'Batangas City',2),(444,6,27,'Lipa City',4),(445,6,27,'Tanauan City',3),(446,6,27,'Agoncillo',3),(447,6,27,'Alitagtag',3),(448,6,27,'Balayan',1),(449,6,27,'Balete',3),(450,6,27,'Bauan',2),(451,6,27,'Calaca',1),(452,6,27,'Calatagan',1),(453,6,27,'Cuenca',3),(454,6,27,'Ibaan',4),(455,6,27,'Laurel',3),(456,6,27,'Lemery',1),(457,6,27,'Lian',1),(458,6,27,'Lobo',2),(459,6,27,'Mabini',2),(460,6,27,'Malvar',3),(461,6,27,'Mataasnakahoy',3),(462,6,27,'Nasugbu',1),(463,6,27,'Padre Garcia',4),(464,6,27,'Rosario',4),(465,6,27,'San Jose',4),(466,6,27,'San Juan',4),(467,6,27,'San Luis',2),(468,6,27,'San Nicolas',3),(469,6,27,'San Pascual',2),(470,6,27,'Santa Teresita',3),(471,6,27,'Santo Tomas',3),(472,6,27,'Taal',1),(473,6,27,'Talisay',3),(474,6,27,'Taysan',4),(475,6,27,'Tingloy',2),(476,6,27,'Tuy',1),(477,6,28,'Bacoor',2),(478,6,28,'Cavite City',1),(479,6,28,'Dasmarinas',4),(480,6,28,'Imus',3),(481,6,28,'Tagaytay',5),(482,6,28,'Trece Martires',6),(483,6,28,'Alfonso',7),(484,6,28,'Amadeo',6),(485,6,28,'Carmona',5),(486,6,28,'General Emilio Aguinaldo',7),(487,6,28,'General Mariano Alvarez',5),(488,6,28,'General Trias',6),(489,6,28,'Indang',7),(490,6,28,'Kawit',1),(491,6,28,'Magallanes',7),(492,6,28,'Maragondon',7),(493,6,28,'Mendez',7),(494,6,28,'Naic',6),(495,6,28,'Noveleta',1),(496,6,28,'Rosario',1),(497,6,28,'Silang',5),(498,6,28,'Tanza',6),(499,6,28,'Ternate',7),(500,6,29,'Binan',1),(501,6,29,'Cabuyao',2),(502,6,29,'Calamba',2),(503,6,29,'San Pablo',3),(504,6,29,'San Pedro',1),(505,6,29,'Santa Rosa',1),(506,6,29,'Alaminos',3),(507,6,29,'Bay',2),(508,6,29,'Calauan',3),(509,6,29,'Cavinti',4),(510,6,29,'Famy',4),(511,6,29,'Kalayaan',4),(512,6,29,'Liliw',3),(513,6,29,'Los Banos',2),(514,6,29,'Luisiana',4),(515,6,29,'Lumban',4),(516,6,29,'Mabitac',4),(517,6,29,'Magdalena',4),(518,6,29,'Majayjay',4),(519,6,29,'Nagcarlan',3),(520,6,29,'Paete',4),(521,6,29,'Pagsanjan',4),(522,6,29,'Pakil',4),(523,6,29,'Pangil',4),(524,6,29,'Pila',4),(525,6,29,'Rizal',3),(526,6,29,'Santa Cruz',4),(527,6,29,'Santa Maria',4),(528,6,29,'Siniloan',4),(529,6,29,'Victoria',3),(530,6,30,'Burdeos',1),(531,6,30,'General Nakar',1),(532,6,30,'Infanta',1),(533,6,30,'Jomalig',1),(534,6,30,'Lucban',1),(535,6,30,'Mauban',1),(536,6,30,'Pagbilao',1),(537,6,30,'Panukulan',1),(538,6,30,'Patnanungan',1),(539,6,30,'Polillo',1),(540,6,30,'Real',1),(541,6,30,'Sampaloc',1),(542,6,30,'Tayabas City',1),(543,6,30,'Candelaria',2),(544,6,30,'Dolores',2),(545,6,30,'Lucena City',2),(546,6,30,'San Antonio',2),(547,6,30,'Sariaya',2),(548,6,30,'Tiaong',2),(549,6,30,'Agdangan',3),(550,6,30,'Buenavista',3),(551,6,30,'Catanauan',3),(552,6,30,'General Luna',3),(553,6,30,'Macalelon',3),(554,6,30,'Mulanay',3),(555,6,30,'Padre Burgos',3),(556,6,30,'Pitogo',3),(557,6,30,'San Andres',3),(558,6,30,'San Francisco',3),(559,6,30,'San Narciso',3),(560,6,30,'Unisan',3),(561,6,30,'Alabat',4),(562,6,30,'Atimonan',4),(563,6,30,'Calauag',4),(564,6,30,'Guinayangan',4),(565,6,30,'Gumaca',4),(566,6,30,'Lopez',4),(567,6,30,'Perez',4),(568,6,30,'Plaridel',4),(569,6,30,'Quezon',4),(570,6,30,'Tagkawayan',4),(571,6,31,'Angono',1),(572,6,31,'Antipolo City',1),(573,6,31,'Baras',2),(574,6,31,'Binangonan',1),(575,6,31,'Cainta',1),(576,6,31,'Cardona',2),(577,6,31,'Jalajala',2),(578,6,31,'Morong',2),(579,6,31,'Pililla',2),(580,6,31,'Rodriguez (Montalban)',2),(581,6,31,'San Mateo',2),(582,6,31,'Tanay',2),(583,6,31,'Taytay',1),(584,6,31,'Teresa',2),(585,7,32,'Boac',1),(586,7,32,'Buenavista',1),(587,7,32,'Gasan',1),(588,7,32,'Mogpog',1),(589,7,32,'Santa Cruz',1),(590,7,32,'Torrijos',1),(591,7,33,'Abra de Ilog',1),(592,7,33,'Calintaan',1),(593,7,33,'Looc',1),(594,7,33,'Lubang',1),(595,7,33,'Magsaysay',1),(596,7,33,'Mamburao',1),(597,7,33,'Paluan',1),(598,7,33,'Rizal',1),(599,7,33,'Sablayan',1),(600,7,33,'San Jose',1),(601,7,33,'Santa Cruz',1),(602,7,34,'Calapan City',1),(603,7,34,'Baco',1),(604,7,34,'Bansud',2),(605,7,34,'Bongabong',2),(606,7,34,'Bulalacao',2),(607,7,34,'Gloria',2),(608,7,34,'Mansalay',2),(609,7,34,'Naujan',1),(610,7,34,'Pinamalayan',2),(611,7,34,'Pola',1),(612,7,34,'Puerto Galera',1),(613,7,34,'Roxas',2),(614,7,34,'San Teodoro',1),(615,7,34,'Socorro',1),(616,7,34,'Victoria',1),(617,7,35,'Aborlan',2),(618,7,35,'Agutaya',1),(619,7,35,'Araceli',1),(620,7,35,'Balabac',2),(621,7,35,'Bataraza',2),(622,7,35,'Brooke\'s Point',2),(623,7,35,'Busuanga',1),(624,7,35,'Cagayancillo',1),(625,7,35,'Coron',1),(626,7,35,'Culion',1),(627,7,35,'Cuyo',1),(628,7,35,'Dumaran',1),(629,7,35,'El Nido',1),(630,7,35,'Kalayaan',1),(631,7,35,'Linapacan',1),(632,7,35,'Magsaysay',1),(633,7,35,'Narra',1),(634,7,35,'Puerto Princesa',3),(635,7,35,'Quezon',2),(636,7,35,'Rizal',2),(637,7,35,'Roxas',1),(638,7,35,'San Vicente',1),(639,7,35,'Sofronio Española',2),(640,7,35,'Taytay',1),(641,7,36,'Alcantara',1),(642,7,36,'Banton',1),(643,7,36,'Cajidiocan',1),(644,7,36,'Calatrava',1),(645,7,36,'Concepcion',1),(646,7,36,'Corcuera',1),(647,7,36,'Ferrol',1),(648,7,36,'Looc',1),(649,7,36,'Magdiwang',1),(650,7,36,'Odiongan',1),(651,7,36,'Romblon',1),(652,7,36,'San Agustin',1),(653,7,36,'San Andres',1),(654,7,36,'San Fernando',1),(655,7,36,'San Jose',1),(656,7,36,'Santa Fe',1),(657,7,36,'Santa Maria',1),(658,8,37,'Bacacay',1),(659,8,37,'Camalig',2),(660,8,37,'Daraga',2),(661,8,37,'Guinobatan',3),(662,8,37,'Jovellar',3),(663,8,37,'Legazpi City',2),(664,8,37,'Libon',3),(665,8,37,'Ligao City',3),(666,8,37,'Malilipot',1),(667,8,37,'Malinao',1),(668,8,37,'Manito',2),(669,8,37,'Oas',3),(670,8,37,'Pio Duran',3),(671,8,37,'Polangui',3),(672,8,37,'Rapu-Rapu',2),(673,8,37,'Santo Domingo',1),(674,8,37,'Tabaco City',1),(675,8,37,'Tiwi',1),(676,8,38,'Basud',2),(677,8,38,'Capalonga',1),(678,8,38,'Daet',2),(679,8,38,'Jose Panganiban',1),(680,8,38,'Labo',1),(681,8,38,'Mercedes',2),(682,8,38,'Paracale',1),(683,8,38,'San Lorenzo Ruiz',2),(684,8,38,'San Vicente',2),(685,8,38,'Santa Elena',1),(686,8,38,'Talisay',2),(687,8,38,'Vinzons',2),(688,8,39,'Baao',5),(689,8,39,'Balatan',5),(690,8,39,'Bato',4),(691,8,39,'Bombon',2),(692,8,39,'Buhi',4),(693,8,39,'Bula',5),(694,8,39,'Cabusao',1),(695,8,39,'Calabanga',3),(696,8,39,'Camaligan',3),(697,8,39,'Canaman',2),(698,8,39,'Caramoan',3),(699,8,39,'Del Gallego',1),(700,8,39,'Gainza',2),(701,8,39,'Garchitorena',3),(702,8,39,'Goa',4),(703,8,39,'Iriga City',4),(704,8,39,'Lagonoy',3),(705,8,39,'Libmanan',2),(706,8,39,'Lupi',1),(707,8,39,'Magarao',2),(708,8,39,'Milaor',2),(709,8,39,'Minalabac',2),(710,8,39,'Nabua',4),(711,8,39,'Naga City',3),(712,8,39,'Ocampo',3),(713,8,39,'Pamplona',2),(714,8,39,'Pasacao',2),(715,8,39,'Pili',3),(716,8,39,'Presentacion',3),(717,8,39,'Ragay',1),(718,8,39,'Sagñay',3),(719,8,39,'San Fernando',1),(720,8,39,'San Jose',4),(721,8,39,'Sipocot',1),(722,8,39,'Siruma',3),(723,8,39,'Tigaon',3),(724,8,39,'Tinambac',3),(725,8,40,'Bagamanoc',1),(726,8,40,'Baras',1),(727,8,40,'Bato',1),(728,8,40,'Caramoran',1),(729,8,40,'Gigmoto',1),(730,8,40,'Pandan',1),(731,8,40,'Panganiban ',1),(732,8,40,'San Andres ',1),(733,8,40,'San Miguel',1),(734,8,40,'Viga',1),(735,8,40,'Virac',1),(736,8,41,'Aroroy',2),(737,8,41,'Baleno',2),(738,8,41,'Balud',2),(739,8,41,'Batuan',1),(740,8,41,'Cataingan',3),(741,8,41,'Cawayan',3),(742,8,41,'Claveria',1),(743,8,41,'Dimasalang',3),(744,8,41,'Esperanza',3),(745,8,41,'Mandaon',2),(746,8,41,'Masbate City',2),(747,8,41,'Milagros',2),(748,8,41,'Mobo',2),(749,8,41,'Monreal',1),(750,8,41,'Palanas',3),(751,8,41,'Pio V. Corpuz',3),(752,8,41,'Placer',3),(753,8,41,'San Fernando',1),(754,8,41,'San Jacinto',1),(755,8,41,'San Pascual',1),(756,8,41,'Uson',3),(757,8,42,'Barcelona',2),(758,8,42,'Bulan',2),(759,8,42,'Bulusan',2),(760,8,42,'Casiguran',1),(761,8,42,'Castilla',1),(762,8,42,'Donsol',1),(763,8,42,'Gubat',2),(764,8,42,'Irosin',2),(765,8,42,'Juban',2),(766,8,42,'Magallanes',1),(767,8,42,'Matnog',2),(768,8,42,'Pilar',1),(769,8,42,'Prieto Diaz',2),(770,8,42,'Santa Magdalena',2),(771,8,42,'Sorsogon City',1),(772,9,43,'Altavas',1),(773,9,43,'Balete',1),(774,9,43,'Banga',1),(775,9,43,'Batan',1),(776,9,43,'Buruanga',1),(777,9,43,'Ibajay',1),(778,9,43,'Kalibo',1),(779,9,43,'Lezo',1),(780,9,43,'Libacao',1),(781,9,43,'Madalag',1),(782,9,43,'Makato',1),(783,9,43,'Malay',1),(784,9,43,'Malinao',1),(785,9,43,'Nabas',1),(786,9,43,'New Washington',1),(787,9,43,'Numancia',1),(788,9,43,'Tangalan',1),(789,9,44,'Anini-y',1),(790,9,44,'Barbaza',1),(791,9,44,'Belison',1),(792,9,44,'Bugasong',1),(793,9,44,'Caluya',1),(794,9,44,'Culasi',1),(795,9,44,'Hamtic',1),(796,9,44,'Laua-an',1),(797,9,44,'Libertad',1),(798,9,44,'Pandan',1),(799,9,44,'Patnongon',1),(800,9,44,'San Jose de Buenavista',1),(801,9,44,'San Remigio',1),(802,9,44,'Sebaste',1),(803,9,44,'Sibalom',1),(804,9,44,'Tibiao',1),(805,9,44,'Tobias Fornier',1),(806,9,44,'Valderrama',1),(807,9,45,'Roxas City',1),(808,9,45,'Cuartero',2),(809,9,45,'Dao',2),(810,9,45,'Dumalag',2),(811,9,45,'Dumarao',2),(812,9,45,'Ivisan',2),(813,9,45,'Jamindan',2),(814,9,45,'Maayon',1),(815,9,45,'Mambusao',2),(816,9,45,'Panay',1),(817,9,45,'Panitan',1),(818,9,45,'Pilar',1),(819,9,45,'Pontevedra',1),(820,9,45,'President Roxas',1),(821,9,45,'Sapian',2),(822,9,45,'Sigma',2),(823,9,45,'Tapaz',2),(824,9,46,'Buenavista',1),(825,9,46,'Jordan',1),(826,9,46,'Nueva Valencia',1),(827,9,46,'San Lorenzo',1),(828,9,46,'Sibunag',1),(829,9,47,'Iloilo City',1),(830,9,47,'Passi City',4),(831,9,47,'Ajuy',5),(832,9,47,'Alimodian',2),(833,9,47,'Anilao',4),(834,9,47,'Badiangan',3),(835,9,47,'Balasan',5),(836,9,47,'Banate',4),(837,9,47,'Barotac Nuevo',4),(838,9,47,'Barotac Viejo',5),(839,9,47,'Batad',5),(840,9,47,'Bingawan',3),(841,9,47,'Cabatuan',3),(842,9,47,'Calinog',3),(843,9,47,'Carles',5),(844,9,47,'Concepcion',5),(845,9,47,'Dingle',4),(846,9,47,'Dueñas',4),(847,9,47,'Dumangas',4),(848,9,47,'Estancia',5),(849,9,47,'Guimbal',1),(850,9,47,'Igbaras',1),(851,9,47,'Janiuay',3),(852,9,47,'Lambunao',3),(853,9,47,'Leganes',2),(854,9,47,'Lemery',5),(855,9,47,'Leon',2),(856,9,47,'Maasin',3),(857,9,47,'Miagao',1),(858,9,47,'Mina',3),(859,9,47,'New Lucena',2),(860,9,47,'Oton',1),(861,9,47,'Pavia',2),(862,9,47,'Pototan',3),(863,9,47,'San Dionisio',5),(864,9,47,'San Enrique',4),(865,9,47,'San Joaquin',1),(866,9,47,'San Miguel',2),(867,9,47,'San Rafael',5),(868,9,47,'Santa Barbara',2),(869,9,47,'Sara',5),(870,9,47,'Tigbauan',1),(871,9,47,'Tubungan',1),(872,9,47,'Zarraga',2),(873,9,48,'Bacolod',1),(874,9,48,'Bago',4),(875,9,48,'Cadiz',2),(876,9,48,'Escalante',1),(877,9,48,'Himamaylan',5),(878,9,48,'Kabankalan',6),(879,9,48,'La Carlota',4),(880,9,48,'Sagay',2),(881,9,48,'San Carlos',1),(882,9,48,'Silay',3),(883,9,48,'Sipalay',6),(884,9,48,'Talisay',3),(885,9,48,'Victorias',3),(886,9,48,'Binalbagan',5),(887,9,48,'Calatrava',1),(888,9,48,'Candoni',6),(889,9,48,'Cauayan',6),(890,9,48,'Enrique B. Magalona',3),(891,9,48,'Hinigaran',5),(892,9,48,'Hinoba-an',6),(893,9,48,'Ilog',6),(894,9,48,'Isabela',5),(895,9,48,'La Castellana',5),(896,9,48,'Manapla',2),(897,9,48,'Moises Padilla',5),(898,9,48,'Murcia',3),(899,9,48,'Pontevedra',4),(900,9,48,'Pulupandan',4),(901,9,48,'Salvador Benedicto',1),(902,9,48,'San Enrique',4),(903,9,48,'Toboso',1),(904,9,48,'Valladolid',4),(905,10,49,'Tagbilaran City',1),(906,10,49,'Alburquerque',1),(907,10,49,'Antequera',1),(908,10,49,' Baclayon',1),(909,10,49,' Balilihan',1),(910,10,49,'Calape',1),(911,10,49,' Catigbian',1),(912,10,49,' Corella',1),(913,10,49,'Cortes',1),(914,10,49,'Dauis',1),(915,10,49,' Loon',1),(916,10,49,'Maribojoc',1),(917,10,49,'Panglao',1),(918,10,49,'Sikatuna',1),(919,10,49,'Tubigon',1),(920,10,49,'Bien Unido',2),(921,10,49,' Buenavista',2),(922,10,49,' Clarin',2),(923,10,49,' Dagohoy',2),(924,10,49,'Danao',2),(925,10,49,' Getafe',2),(926,10,49,'Inabanga',2),(927,10,49,' Pres. Carlos P. Garcia',2),(928,10,49,' Sagbayan',2),(929,10,49,' San Isidro',2),(930,10,49,'San Miguel',2),(931,10,49,' Talibon',2),(932,10,49,' Trinidad',2),(933,10,49,'Ubay',2),(934,10,49,'Alicia',3),(935,10,49,' Anda',3),(936,10,49,'Batuan',3),(937,10,49,'Bilar',3),(938,10,49,'Candijay',3),(939,10,49,' Carmen',3),(940,10,49,'Dimiao',3),(941,10,49,' Duero',3),(942,10,49,' Garcia Hernandez',3),(943,10,49,' Guindulman',3),(944,10,49,' Jagna',3),(945,10,49,'Lila',3),(946,10,49,' Loay',3),(947,10,49,'Loboc',3),(948,10,49,'Mabini, Pilar',3),(949,10,49,'Sevilla',3),(950,10,49,' Sierra Bullones',3),(951,10,49,'Valencia',3),(952,10,50,'Danao City',5),(953,10,50,'Talisay City',1),(954,10,50,'Toledo City',3),(955,10,50,'Bogo City',4),(956,10,50,'Carcar City',1),(957,10,50,'Naga City',1),(958,10,50,'Alcantara',2),(959,10,50,'Alcoy',2),(960,10,50,'Alegria',2),(961,10,50,'Aloguinsan',3),(962,10,50,'Argao',2),(963,10,50,'Asturias',3),(964,10,50,'Badian',2),(965,10,50,'Balamban',3),(966,10,50,'Bantayan',4),(967,10,50,'Barili',3),(968,10,50,'Boljoon',2),(969,10,50,'Borbon',5),(970,10,50,'Carmen',5),(971,10,50,'Catmon',5),(972,10,50,'Compostela',5),(973,10,50,'Consolacion',6),(974,10,50,'Cordova',6),(975,10,50,'Daanbantayan',4),(976,10,50,'Dalaguete',2),(977,10,50,'Dumanjug',2),(978,10,50,'Ginatilan',2),(979,10,50,'Liloan',5),(980,10,50,'Madridejos',4),(981,10,50,'Malabuyoc',2),(982,10,50,'Medellin',4),(983,10,50,'Minglanilla',1),(984,10,50,'Moalboal',2),(985,10,50,'Oslob',2),(986,10,50,'Pilar',5),(987,10,50,'Pinamungajan',3),(988,10,50,'Poro',5),(989,10,50,'Ronda',2),(990,10,50,'Samboan',2),(991,10,50,'San Fernando',1),(992,10,50,'San Francisco',5),(993,10,50,'San Remigio',4),(994,10,50,'Santa Fe',4),(995,10,50,'Santander',2),(996,10,50,'Sibonga',1),(997,10,50,'Sogod',5),(998,10,50,'Tabogon',4),(999,10,50,'Tabuelan',4),(1000,10,50,'Tuburan',3),(1001,10,50,'Tudela',5),(1002,10,50,'Lapu-Lapu City',1),(1003,10,50,'Mandaue City',6),(1004,10,51,'Bais City',2),(1005,10,51,'Bayawan City',2),(1006,10,51,'Canlaon City',1),(1007,10,51,'Dumaguete City',2),(1008,10,51,'Guihulngan City',1),(1009,10,51,'Tanjay City',2),(1010,10,51,'Amlan',2),(1011,10,51,'Ayungon',1),(1012,10,51,'Bacong',3),(1013,10,51,'Basay',3),(1014,10,51,'Bindoy',1),(1015,10,51,'Dauin',3),(1016,10,51,'Jimalalud',1),(1017,10,51,'La Libertad',1),(1018,10,51,'Mabinay',2),(1019,10,51,'Manjuyod',1),(1020,10,51,'Pamplona',2),(1021,10,51,'San Jose',2),(1022,10,51,'Santa Catalina',3),(1023,10,51,'Siaton',3),(1024,10,51,'Sibulan',2),(1025,10,51,'Tayasan',1),(1026,10,51,'Valencia',3),(1027,10,51,'Vallehermoso',1),(1028,10,51,'Zamboanguita',3),(1029,10,52,'Enrique Villanueva',1),(1030,10,52,'Larena',1),(1031,10,52,'Lazi',1),(1032,10,52,'Maria',1),(1033,10,52,'San Juan',1),(1034,10,52,'Siquijor',1),(1035,11,53,'Almeria',1),(1036,11,53,'Biliran',1),(1037,11,53,'Cabucgayan',1),(1038,11,53,'Caibiran',1),(1039,11,53,'Culaba',1),(1040,11,53,'Kawayan',1),(1041,11,53,'Maripipi',1),(1042,11,53,'Naval',1),(1043,11,54,'Borongan City',1),(1044,11,54,'Arteche',1),(1045,11,54,'Balangiga',1),(1046,11,54,'Balangkayan',1),(1047,11,54,'Can-avid',1),(1048,11,54,'Dolores',1),(1049,11,54,'General MacArthur',1),(1050,11,54,'Giporlos',1),(1051,11,54,'Guiuan',1),(1052,11,54,'Hernani',1),(1053,11,54,'Jipapad',1),(1054,11,54,'Lawaan',1),(1055,11,54,'Llorente',1),(1056,11,54,'Maslog',1),(1057,11,54,'Maydolong',1),(1058,11,54,'Mercedes',1),(1059,11,54,'Oras',1),(1060,11,54,'Quinapondan',1),(1061,11,54,'Salcedo',1),(1062,11,54,'San Julian',1),(1063,11,54,'San Policarpo',1),(1064,11,54,'Sulat',1),(1065,11,54,'Taft',1),(1066,11,55,'Tacloban',1),(1067,11,55,'Baybay',5),(1068,11,55,'Ormoc',4),(1069,11,55,'Abuyog',5),(1070,11,55,'Alangalang',1),(1071,11,55,'Albuera',4),(1072,11,55,'Babatngon',1),(1073,11,55,'Barugo',2),(1074,11,55,'Bato',5),(1075,11,55,'Burauen',2),(1076,11,55,'Calubian',3),(1077,11,55,'Capoocan',2),(1078,11,55,'Carigara',2),(1079,11,55,'Dagami',2),(1080,11,55,'Dulag',2),(1081,11,55,'Hilongos',5),(1082,11,55,'Hindang',5),(1083,11,55,'Inopacan',5),(1084,11,55,'Isabel',4),(1085,11,55,'Jaro',2),(1086,11,55,'Javier',5),(1087,11,55,'Julita',2),(1088,11,55,'Kananga',4),(1089,11,55,'La Paz',2),(1090,11,55,'Leyte',3),(1091,11,55,'MacArthur',2),(1092,11,55,'Mahaplag',5),(1093,11,55,'Matag-ob',4),(1094,11,55,'Matalom',5),(1095,11,55,'Mayorga',2),(1096,11,55,'Merida',4),(1097,11,55,'Palo',1),(1098,11,55,'Palompon',4),(1099,11,55,'Pastrana',2),(1100,11,55,'San Isidro',3),(1101,11,55,'San Miguel',1),(1102,11,55,'Santa Fe',1),(1103,11,55,'Tabango',3),(1104,11,55,'Tabontabon',2),(1105,11,55,'Tanauan',1),(1106,11,55,'Tolosa',1),(1107,11,55,'Tunga',2),(1108,11,55,'Villaba',3),(1109,11,56,'Allen',1),(1110,11,56,'Biri',1),(1111,11,56,'Bobon',1),(1112,11,56,'Capul',1),(1113,11,56,'Catarman',1),(1114,11,56,'Catubig',2),(1115,11,56,'Gamay',2),(1116,11,56,'Laoang',2),(1117,11,56,'Lapinig',2),(1118,11,56,'Las Navas',2),(1119,11,56,'Lavezares',1),(1120,11,56,'Lope de Vega',1),(1121,11,56,'Mapanas',2),(1122,11,56,'Mondragon',1),(1123,11,56,'Palapag',2),(1124,11,56,'Pambujan',2),(1125,11,56,'Rosario',1),(1126,11,56,'San Antonio',1),(1127,11,56,'San Isidro',1),(1128,11,56,'San Jose',1),(1129,11,56,'San Roque',2),(1130,11,56,'San Vicente',1),(1131,11,56,'Silvino Lobos',2),(1132,11,56,'Victoria',1),(1133,11,57,'Calbayog',1),(1134,11,57,'Catbalogan',2),(1135,11,57,'Almagro',1),(1136,11,57,'Basey',2),(1137,11,57,'Calbiga',2),(1138,11,57,'Daram',2),(1139,11,57,'Gandara',1),(1140,11,57,'Hinabangan',2),(1141,11,57,'Jiabong',2),(1142,11,57,'Marabut',2),(1143,11,57,'Matuguinao',1),(1144,11,57,'Motiong',2),(1145,11,57,'Pagsanghan',1),(1146,11,57,'Paranas',2),(1147,11,57,'Pinabacdao',2),(1148,11,57,'San Jorge',1),(1149,11,57,'San Jose de Buan',2),(1150,11,57,'San Sebastian',2),(1151,11,57,'Santa Margarita',1),(1152,11,57,'Santa Rita',2),(1153,11,57,'Santo Niño',1),(1154,11,57,'Tagapul-an',1),(1155,11,57,'Talalora',2),(1156,11,57,'Tarangnan',1),(1157,11,57,'Villareal',2),(1158,11,57,'Zumarraga',2),(1159,11,58,'Anahawan',1),(1160,11,58,'Bontoc',1),(1161,11,58,'Hinunangan',1),(1162,11,58,'Hinundayan',1),(1163,11,58,'Libagon',1),(1164,11,58,'Liloan',1),(1165,11,58,'Limasawa',1),(1166,11,58,'Maasin City',1),(1167,11,58,'Macrohon',1),(1168,11,58,'Malitbog',1),(1169,11,58,'Padre Burgos',1),(1170,11,58,'Pintuyan',1),(1171,11,58,'Saint Bernard',1),(1172,11,58,'San Francisco',1),(1173,11,58,'San Juan',1),(1174,11,58,'San Ricardo',1),(1175,11,58,'Silago',1),(1176,11,58,'Sogod',1),(1177,11,58,'Tomas Oppus',1),(1178,12,59,'Dapitan City',1),(1179,12,59,'Dipolog City',2),(1180,12,59,'Baliguian',3),(1181,12,59,'Godod',3),(1182,12,59,'Gutalac',3),(1183,12,59,'Jose Dalman (Ponot)',2),(1184,12,59,'Kalawit',3),(1185,12,59,'Katipunan',2),(1186,12,59,'La Libertad',1),(1187,12,59,'Labason',3),(1188,12,59,'Leon B. Postigo (Bacungan)',3),(1189,12,59,'Liloy',3),(1190,12,59,'Manukan',2),(1191,12,59,'Mutia',1),(1192,12,59,'Piñan',1),(1193,12,59,'Polanco',1),(1194,12,59,'Pres. Manuel A. Roxas',2),(1195,12,59,'Rizal',1),(1196,12,59,'Salug',3),(1197,12,59,'Sergio Osmeña Sr.',1),(1198,12,59,'Siayan',2),(1199,12,59,'Sibuco',3),(1200,12,59,'Sibutad',1),(1201,12,59,'Sindangan',2),(1202,12,59,'Siocon',3),(1203,12,59,'Sirawai',3),(1204,12,59,'Tampilisan',3),(1205,12,60,'Zamboanga City',9),(1206,12,60,'Pagadian City',1),(1207,12,60,'Aurora',1),(1208,12,60,'Bayog',2),(1209,12,60,'Dimataling',2),(1210,12,60,'Dinas',2),(1211,12,60,'Dumalinao',2),(1212,12,60,'Dumingag',1),(1213,12,60,'Guipos',2),(1214,12,60,'Josefina',1),(1215,12,60,'Kumalarang',2),(1216,12,60,'Labangan',1),(1217,12,60,'Lakewood',2),(1218,12,60,'Lapuyan',2),(1219,12,60,'Mahayag',1),(1220,12,60,'Margosatubig',2),(1221,12,60,'Midsalip',1),(1222,12,60,'Molave',1),(1223,12,60,'Pitogo',2),(1224,12,60,'Ramon Magsaysay (Liargo)',1),(1225,12,60,'San Miguel',2),(1226,12,60,'San Pablo',2),(1227,12,60,'Sominot (Don Mariano Marcos)',1),(1228,12,60,'Tabina',2),(1229,12,60,'Tambulig',1),(1230,12,60,'Tigbao',2),(1231,12,60,'Tukuran',1),(1232,12,60,'Vincenzo A. Sagun',2),(1233,12,61,'Alicia',1),(1234,12,61,'Buug',1),(1235,12,61,'Diplahan',1),(1236,12,61,'Imelda',1),(1237,12,61,'Ipil',2),(1238,12,61,'Kabasalan',2),(1239,12,61,'Mabuhay',1),(1240,12,61,'Malangas',1),(1241,12,61,'Naga',2),(1242,12,61,'Olutanga',1),(1243,12,61,'Payao',1),(1244,12,61,'Roseller T. Lim',2),(1245,12,61,'Siay',2),(1246,12,61,'Talusan',1),(1247,12,61,'Titay',2),(1248,12,61,'Tungawan',2),(1249,13,62,'Baungon',1),(1250,13,62,'Cabanglasan',2),(1251,13,62,'Damulog',3),(1252,13,62,'Dangcagan',3),(1253,13,62,'Don Carlos',3),(1254,13,62,'Impasugong',2),(1255,13,62,'Kadingilan',3),(1256,13,62,'Kalilangan',4),(1257,13,62,'Kibawe',3),(1258,13,62,'Kitaotao',3),(1259,13,62,'Lantapan',2),(1260,13,62,'Libona',1),(1261,13,62,'Malaybalay City',2),(1262,13,62,'Malitbog',1),(1263,13,62,'Manolo Fortich',1),(1264,13,62,'Maramag',3),(1265,13,62,'Pangantucan',4),(1266,13,62,'Quezon',3),(1267,13,62,'San Fernando',2),(1268,13,62,'Sumilao',1),(1269,13,62,'Talakag',1),(1270,13,62,'Valencia City',2),(1271,13,63,'Catarman',1),(1272,13,63,'Guinsiliban',1),(1273,13,63,'Mahinog',1),(1274,13,63,'Mambajao',1),(1275,13,63,'Sagay',1),(1276,13,64,'Bacolod',1),(1277,13,64,'Baloi',1),(1278,13,64,'Baroy',1),(1279,13,64,'Kapatagan',2),(1280,13,64,'Kauswagan',1),(1281,13,64,'Kolambugan',1),(1282,13,64,'Lala',2),(1283,13,64,'Linamon',1),(1284,13,64,'Magsaysay',2),(1285,13,64,'Maigo',1),(1286,13,64,'Matungao',1),(1287,13,64,'Munai',2),(1288,13,64,'Nunungan',2),(1289,13,64,'Pantao Ragat',2),(1290,13,64,'Pantar',1),(1291,13,64,'Poona Piagapo',2),(1292,13,64,'Salvador',2),(1293,13,64,'Sapad',2),(1294,13,64,'Sultan Naga Dimaporo ',2),(1295,13,64,'Tagoloan',1),(1296,13,64,'Tangcal',2),(1297,13,64,'Tubod ',1),(1298,13,65,'Oroquieta City',1),(1299,13,65,'Ozamiz City',2),(1300,13,65,'Tangub City',2),(1301,13,65,'Aloran',1),(1302,13,65,'Baliangao',1),(1303,13,65,'Bonifacio',2),(1304,13,65,'Calamba',1),(1305,13,65,'Clarin',2),(1306,13,65,'Concepcion',1),(1307,13,65,'Don Victoriano Chiongbian',2),(1308,13,65,'Jimenez',1),(1309,13,65,'Lopez Jaena',1),(1310,13,65,'Panaon',1),(1311,13,65,'Plaridel',1),(1312,13,65,'Sapang Dalaga',1),(1313,13,65,'Sinacaban',2),(1314,13,65,'Tudela',2),(1315,13,66,'El Salvador City',2),(1316,13,66,'Gingoog City',1),(1317,13,66,'Alubijid',2),(1318,13,66,'Balingasag',1),(1319,13,66,'Balingoan',1),(1320,13,66,'Binuangan',1),(1321,13,66,'Claveria',2),(1322,13,66,'Gitagum',2),(1323,13,66,'Initao',2),(1324,13,66,'Jasaan',2),(1325,13,66,'Kinoguitan',1),(1326,13,66,'Lagonglong',1),(1327,13,66,'Laguindingan',2),(1328,13,66,'Libertad',2),(1329,13,66,'Lugait',2),(1330,13,66,'Magsaysay',1),(1331,13,66,'Manticao',2),(1332,13,66,'Medina',1),(1333,13,66,'Naawan',2),(1334,13,66,'Opol',2),(1335,13,66,'Salay',1),(1336,13,66,'Sugbongcogon',1),(1337,13,66,'Tagoloan',2),(1338,13,66,'Talisayan',1),(1339,13,66,'Villanueva',2),(1340,14,67,'Compostela',1),(1341,14,67,'Laak',2),(1342,14,67,'Mabini',2),(1343,14,67,'Maco',2),(1344,14,67,'Maragusan',1),(1345,14,67,'Mawab',2),(1346,14,67,'Monkayo',1),(1347,14,67,'Montevista',1),(1348,14,67,'Nabunturan',2),(1349,14,67,'New Bataan',1),(1350,14,67,'Pantukan',2),(1351,14,68,'Asuncion',1),(1352,14,68,'Braulio E. Dujali',2),(1353,14,68,'Carmen',2),(1354,14,68,'Kapalong',1),(1355,14,68,'New Corella',1),(1356,14,68,'Panabo City',2),(1357,14,68,'Samal City',2),(1358,14,68,'San Isidro',1),(1359,14,68,'Santo Tomas',2),(1360,14,68,'Tagum City',1),(1361,14,68,'Talaingod',1),(1362,14,69,'Davao City',1),(1363,14,69,'Digos City',1),(1364,14,69,'Bansalan',1),(1365,14,69,'Hagonoy',1),(1366,14,69,'Kiblawan',1),(1367,14,69,'Magsaysay',1),(1368,14,69,'Malalag',1),(1369,14,69,'Matanao',1),(1370,14,69,'Padada',1),(1371,14,69,'Santa Cruz',1),(1372,14,69,'Sulop',1),(1373,14,70,'Mati City',2),(1374,14,70,'Baganga',1),(1375,14,70,'Banaybanay',2),(1376,14,70,'Boston',1),(1377,14,70,'Caraga',1),(1378,14,70,'Cateel',1),(1379,14,70,'Governor Generoso',2),(1380,14,70,'Lupon',2),(1381,14,70,'Manay',1),(1382,14,70,'San Isidro',2),(1383,14,70,'Tarragona',1),(1384,14,71,'Don Marcelino',1),(1385,14,71,'Jose Abad Santos',1),(1386,14,71,'Malita',1),(1387,14,71,'Santa Maria',1),(1388,14,71,'Sarangani',1),(1389,15,72,'Alamada',1),(1390,15,72,'Aleosan',1),(1391,15,72,'Antipas',2),(1392,15,72,'Arakan',2),(1393,15,72,'Banisilan',3),(1394,15,72,'Carmen',3),(1395,15,72,'Kabacan',3),(1396,15,72,'Kidapawan City',2),(1397,15,72,'Libungan',1),(1398,15,72,'Magpet',2),(1399,15,72,'Makilala',2),(1400,15,72,'Matalam',3),(1401,15,72,'Midsayap',1),(1402,15,72,'M\'lang',3),(1403,15,72,'Pigcawayan',1),(1404,15,72,'Pikit',1),(1405,15,72,'President Roxas',2),(1406,15,72,'Tulunan',3),(1407,15,73,'Alabel',1),(1408,15,73,'Glan',1),(1409,15,73,'Kiamba',1),(1410,15,73,'Maasim',1),(1411,15,73,'Maitum',1),(1412,15,73,'Malapatan',1),(1413,15,73,'Malungon',1),(1414,15,74,'General Santos',1),(1415,15,74,'Banga',1),(1416,15,74,'Koronadal',2),(1417,15,74,'Lake Sebu',2),(1418,15,74,'Norala',2),(1419,15,74,'Polomolok',1),(1420,15,74,'Sto. Niño',2),(1421,15,74,'Surallah',2),(1422,15,74,'Tampakan',1),(1423,15,74,'Tantangan',2),(1424,15,74,'T\'Boli',2),(1425,15,74,'Tupi',1),(1426,15,75,'Tacurong',1),(1427,15,75,'Bagumbayan',2),(1428,15,75,'Columbio',1),(1429,15,75,'Esperanza',2),(1430,15,75,'Isulan',1),(1431,15,75,'Kalamansig',2),(1432,15,75,'Lambayong ',1),(1433,15,75,'Lebak',2),(1434,15,75,'Lutayan',1),(1435,15,75,'Palimbang',2),(1436,15,75,'President Quirino',1),(1437,15,75,'Sen. Ninoy Aquino',2),(1438,16,76,'Butuan City',1),(1439,16,76,'Cabadbaran City',2),(1440,16,76,'Buenavista',2),(1441,16,76,'Carmen',2),(1442,16,76,'Jabonga',2),(1443,16,76,'Kitcharao',2),(1444,16,76,'Las Nieves',1),(1445,16,76,'Magallanes',2),(1446,16,76,'Nasipit',2),(1447,16,76,'Remedios T. Romualdez',2),(1448,16,76,'Santiago',2),(1449,16,76,'Tubay',2),(1450,16,77,'Bayugan City',1),(1451,16,77,'Bunawan',2),(1452,16,77,'Esperanza',1),(1453,16,77,'La Paz',2),(1454,16,77,'Loreto',2),(1455,16,77,'Prosperidad',1),(1456,16,77,'Rosario',2),(1457,16,77,'San Francisco',2),(1458,16,77,'San Luis',1),(1459,16,77,'Santa Josefa',2),(1460,16,77,'Sibagat',1),(1461,16,77,'Talacogon',1),(1462,16,77,'Trento',2),(1463,16,77,'Veruela',2),(1464,16,78,'Basilisa',1),(1465,16,78,'Cagdianao',1),(1466,16,78,'Dinagat',1),(1467,16,78,'Libjo ',1),(1468,16,78,'Loreto',1),(1469,16,78,'Tubajon',1),(1470,16,78,'San Jose',1),(1471,16,79,'Surigao City',2),(1472,16,79,'Alegria',2),(1473,16,79,'Bacuag',2),(1474,16,79,'Burgos',1),(1475,16,79,'Claver',2),(1476,16,79,'Dapa',1),(1477,16,79,'Del Carmen',1),(1478,16,79,'General Luna',1),(1479,16,79,'Gigaquit',2),(1480,16,79,'Mainit',2),(1481,16,79,'Malimono',2),(1482,16,79,'Pilar',1),(1483,16,79,'Placer',2),(1484,16,79,'San Benito',1),(1485,16,79,'San Francisco ',2),(1486,16,79,'San Isidro',1),(1487,16,79,'Santa Monica ',1),(1488,16,79,'Sison',2),(1489,16,79,'Socorro',1),(1490,16,79,'Tagana-an',2),(1491,16,79,'Tubod',2),(1492,16,80,'Tandag City',1),(1493,16,80,'Bislig City',2),(1494,16,80,'Barobo',2),(1495,16,80,'Bayabas',1),(1496,16,80,'Cagwait',1),(1497,16,80,'Cantilan',1),(1498,16,80,'Carmen',1),(1499,16,80,'Carrascal',1),(1500,16,80,'Cortes',1),(1501,16,80,'Hinatuan',2),(1502,16,80,'Lanuza',1),(1503,16,80,'Lianga',1),(1504,16,80,'Lingig',2),(1505,16,80,'Madrid',1),(1506,16,80,'Marihatag',1),(1507,16,80,'San Agustin',1),(1508,16,80,'San Miguel',1),(1509,16,80,'Tagbina',2),(1510,16,80,'Tago',1),(1511,17,81,'Marawi City',1),(1512,17,81,'Bacolod-Kalawi ',2),(1513,17,81,'Balabagan',2),(1514,17,81,'Balindong ',2),(1515,17,81,'Bayang',2),(1516,17,81,'Binidayan',2),(1517,17,81,'Buadiposo-Buntong',1),(1518,17,81,'Bubong',1),(1519,17,81,'Bumbaran',1),(1520,17,81,'Butig',2),(1521,17,81,'Calanogas',2),(1522,17,81,'Ditsaan-Ramain',1),(1523,17,81,'Ganassi',2),(1524,17,81,'Kapai',1),(1525,17,81,'Kapatagan',2),(1526,17,81,'Lumba-Bayabao',1),(1527,17,81,'Lumbaca-Unayan',2),(1528,17,81,'Lumbatan',2),(1529,17,81,'Lumbayanague ',2),(1530,17,81,'Madalum',2),(1531,17,81,'Madamba ',2),(1532,17,81,'Maguing',1),(1533,17,81,'Malabang',2),(1534,17,81,'Marantao ',1),(1535,17,81,'Marogong',2),(1536,17,81,'Masiu',1),(1537,17,81,'Mulondo',1),(1538,17,81,'Pagayawan',2),(1539,17,81,'Piagapo',1),(1540,17,81,'Picong',2),(1541,17,81,'Poona Bayabao',1),(1542,17,81,'Pualas',2),(1543,17,81,'Saguiaran',1),(1544,17,81,'Sultan Dumalondong',2),(1545,17,81,'Tagoloan II',1),(1546,17,81,'Tamparan',1),(1547,17,81,'Taraka',1),(1548,17,81,'Tubaran',2),(1549,17,81,'Tugaya',2),(1550,17,81,'Wao',1),(1551,17,82,'Ampatuan',2),(1552,17,82,'Barira',1),(1553,17,82,'Buldon',1),(1554,17,82,'Buluan',2),(1555,17,82,'Datu Abdullah Sangki',2),(1556,17,82,'Datu Anggal Midtimbang',2),(1557,17,82,'Datu Blah T. Sinsuat',1),(1558,17,82,'Datu Hoffer Ampatuan',2),(1559,17,82,'Datu Odin Sinsuat',1),(1560,17,82,'Datu Paglas',2),(1561,17,82,'Datu Piang',2),(1562,17,82,'Datu Salibo',2),(1563,17,82,'Datu Saudi-Ampatuan',2),(1564,17,82,'Datu Unsay',2),(1565,17,82,'Gen. S. K. Pendatun',2),(1566,17,82,'Guindulungan',2),(1567,17,82,'Kabuntalan',1),(1568,17,82,'Mamasapano',2),(1569,17,82,'Mangudadatu',2),(1570,17,82,'Matanog',1),(1571,17,82,'Northern Kabuntalan',1),(1572,17,82,'Pagagawan',2),(1573,17,82,'Pagalungan',2),(1574,17,82,'Paglat',2),(1575,17,82,'Pandag',2),(1576,17,82,'Parang',1),(1577,17,82,'Rajah Buayan',2),(1578,17,82,'Shariff Aguak (Maganoy)',2),(1579,17,82,'Shariff Saydona Mustapha',2),(1580,17,82,'South Upi',2),(1581,17,82,'Sultan Kudarat ',1),(1582,17,82,'Sultan Mastura',1),(1583,17,82,'Sultan sa Barongis (Lambayong)',2),(1584,17,82,'Sultan Sumagka (Talitay)',2),(1585,17,82,'Talayan',2),(1586,17,82,'Upi',1),(1587,17,83,'Banguingui',2),(1588,17,83,'Hadji Panglima Tahil (Marunggas)',1),(1589,17,83,'Indanan',1),(1590,17,83,'Jolo',1),(1591,17,83,'Kalingalan Caluang',2),(1592,17,83,'Lugus',2),(1593,17,83,'Luuk',2),(1594,17,83,'Maimbung',1),(1595,17,83,'Old Panamao',2),(1596,17,83,'Omar',2),(1597,17,83,'Pandami',2),(1598,17,83,'Panglima Estino (New Panamao)',2),(1599,17,83,'Pangutaran',1),(1600,17,83,'Parang',1),(1601,17,83,'Pata',2),(1602,17,83,'Patikul',1),(1603,17,83,'Siasi',2),(1604,17,83,'Talipao',1),(1605,17,83,'Tapul',2),(1606,17,84,'Bongao',1),(1607,17,84,'Languyan',1),(1608,17,84,'Mapun ',1),(1609,17,84,'Panglima Sugala',1),(1610,17,84,'Sapa-Sapa',1),(1611,17,84,'Sibutu',1),(1612,17,84,'Simunul ',1),(1613,17,84,'Sitangkai',1),(1614,17,84,'South Ubian',1),(1615,17,84,'Tandubas',1),(1616,17,84,'Turtle Islands',1),(1617,17,85,'Akbar',1),(1618,17,85,'Al-Barka',1),(1619,17,85,'Hadji Mohammad Ajul',1),(1620,17,85,'Hadji Muhtamad',1),(1621,17,85,'Isabela City',1),(1622,17,85,'Lamitan City',1),(1623,17,85,'Lantawan',1),(1624,17,85,'Maluso',1),(1625,17,85,'Sumisip',1),(1626,17,85,'Tabuan-Lasa',1),(1627,17,85,'Tipo-Tipo',1),(1628,17,85,'Tuburan',1),(1629,17,85,'Ungkaya Pukan',1);
/*!40000 ALTER TABLE `psi_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_collaborators`
--

DROP TABLE IF EXISTS `psi_collaborators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_collaborators` (
  `col_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `col_name` varchar(255) DEFAULT '',
  `col_abbr` varchar(255) DEFAULT '',
  `ot_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`col_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_collaborators`
--

LOCK TABLES `psi_collaborators` WRITE;
/*!40000 ALTER TABLE `psi_collaborators` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_collaborators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_consultancies`
--

DROP TABLE IF EXISTS `psi_consultancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_consultancies` (
  `con_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `con_start` date DEFAULT NULL,
  `con_end` date DEFAULT NULL,
  `con_type_id` bigint(20) unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `coop_id` bigint(20) unsigned DEFAULT '0',
  `sp_id` bigint(20) unsigned DEFAULT '0',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `region_id` bigint(20) unsigned DEFAULT '6',
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_consultancies`
--

LOCK TABLES `psi_consultancies` WRITE;
/*!40000 ALTER TABLE `psi_consultancies` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_consultancies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_consultancy_documents`
--

DROP TABLE IF EXISTS `psi_consultancy_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_consultancy_documents` (
  `condoc_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `con_id` bigint(20) unsigned DEFAULT '0',
  `condoc_file` varchar(255) DEFAULT '',
  `condoc_filename` varchar(255) DEFAULT '',
  `condoc_remarks` text,
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`condoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_consultancy_documents`
--

LOCK TABLES `psi_consultancy_documents` WRITE;
/*!40000 ALTER TABLE `psi_consultancy_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_consultancy_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_consultancy_types`
--

DROP TABLE IF EXISTS `psi_consultancy_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_consultancy_types` (
  `con_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `con_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`con_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_consultancy_types`
--

LOCK TABLES `psi_consultancy_types` WRITE;
/*!40000 ALTER TABLE `psi_consultancy_types` DISABLE KEYS */;
INSERT INTO `psi_consultancy_types` VALUES (1,'MPEX'),(2,'CAPE'),(3,'CPT'),(4,'Energy Audit'),(5,'FST'),(6,'Biogas');
/*!40000 ALTER TABLE `psi_consultancy_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_coop_sectors`
--

DROP TABLE IF EXISTS `psi_coop_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_coop_sectors` (
  `coopsec_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coop_id` bigint(20) unsigned DEFAULT '0',
  `sector_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`coopsec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_coop_sectors`
--

LOCK TABLES `psi_coop_sectors` WRITE;
/*!40000 ALTER TABLE `psi_coop_sectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_coop_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_cooperators`
--

DROP TABLE IF EXISTS `psi_cooperators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_cooperators` (
  `coop_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coop_name` varchar(255) DEFAULT '',
  `coop_p_fname` varchar(255) DEFAULT '',
  `coop_p_mname` varchar(255) DEFAULT '',
  `coop_p_lname` varchar(255) DEFAULT '',
  `coop_address` text,
  `coop_phone` varchar(255) DEFAULT '',
  `coop_fax` varchar(255) DEFAULT '',
  `coop_mobile` varchar(255) DEFAULT '',
  `coop_email` varchar(255) DEFAULT '',
  `coop_website` varchar(255) DEFAULT '',
  `coop_year_established` int(10) unsigned DEFAULT '0',
  `ot_id` bigint(20) DEFAULT '0',
  `loc_id` bigint(20) DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `coop_reg_dti` varchar(255) DEFAULT '',
  `coop_reg_sec` varchar(255) DEFAULT '',
  `coop_reg_cda` varchar(255) DEFAULT '',
  `coop_reg_others` text,
  `coop_reg_dti_date` date DEFAULT NULL,
  `coop_reg_sec_date` date DEFAULT NULL,
  `coop_reg_cda_date` date DEFAULT NULL,
  `coop_products` text,
  `coop_brief` text,
  `ot_cat1_id` bigint(20) unsigned DEFAULT '0',
  `ot_cat2_id` bigint(20) unsigned DEFAULT '0',
  `ot_cat3_id` bigint(20) unsigned DEFAULT '0',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`coop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_cooperators`
--

LOCK TABLES `psi_cooperators` WRITE;
/*!40000 ALTER TABLE `psi_cooperators` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_cooperators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_course_categories`
--

DROP TABLE IF EXISTS `psi_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_course_categories` (
  `course_cat_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_cat_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`course_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_course_categories`
--

LOCK TABLES `psi_course_categories` WRITE;
/*!40000 ALTER TABLE `psi_course_categories` DISABLE KEYS */;
INSERT INTO `psi_course_categories` VALUES (1,'Bachelor of Science'),(2,'Technician'),(3,'Technical');
/*!40000 ALTER TABLE `psi_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_courses`
--

DROP TABLE IF EXISTS `psi_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_courses` (
  `course_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_cat_id` bigint(20) unsigned DEFAULT '0',
  `course_name` varchar(255) CHARACTER SET latin1 DEFAULT '',
  `course_yearcount` int(11) unsigned DEFAULT '4',
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_courses`
--

LOCK TABLES `psi_courses` WRITE;
/*!40000 ALTER TABLE `psi_courses` DISABLE KEYS */;
INSERT INTO `psi_courses` VALUES (1,1,'Veterinary Medicine',6),(2,1,'Agricultural and Biosystems Engineering',5),(3,1,'Agricultural Chemistry',5),(4,1,'Agricultural Engineering',5),(5,1,'Chemical Engineering',5),(6,1,'Civil Engineering',5),(7,1,'Computer Engineering',5),(8,1,'Electornics and Communication Engineering',5),(9,1,'Electrical Engineering',5),(10,1,'Electronics and Communications Engineering',5),(11,1,'Food Engineering',5),(12,1,'Forest Product Engineering',5),(13,1,'Industrial Engineering',5),(14,1,'Mechanical Engineering',5),(15,1,'Petroleum Engineering',5),(16,1,'Agricultural Biotechnology',4),(17,1,'Agriculture',4),(18,1,'Applied Mathematics',4),(19,1,'Applied Physics',4),(20,1,'Biology',4),(21,1,'Chemistry',4),(22,1,'Computer Science',4),(23,1,'Environmental Science',4),(24,1,'Fisheries',4),(25,1,'Food & Nutrition & Diedetics',4),(26,1,'Food and Beverage Technology',4),(27,1,'Food Technology',4),(28,1,'Forestry',4),(29,1,'Information Technology',4),(30,1,'Marine Biology',4),(31,1,'Mathematics',4),(32,1,'Mathematics & Science Teaching - Chemistry',4),(33,1,'Mathematics & Science Teaching - Mathematics',4),(34,1,'Mathematics & Science Teaching - Physics',4),(35,1,'Mathematics Teaching',4),(36,1,'Nutrition',4),(37,1,'Nutrition & Dietetics',4),(38,1,'Physics',4),(39,1,'Physics Teaching',4),(40,1,'Secondary Education major in Biological Science',4),(41,1,'Secondary Education major in Biology',4),(42,1,'Secondary Education major in Chemistry',4),(43,1,'Secondary Education major in Mathematics',4),(44,1,'Secondary Education major in Physical Science',4),(45,1,'Secondary Education major in Physics',4),(46,1,'Statistics',4),(47,1,'Technical Education major in Electronics Techonolo',4),(48,2,'Agricultural Technology',3),(49,2,'Associate in Computer Science',3),(50,2,'Associate in Computer Technology',3),(51,2,'Automotive Engieering Technology',3),(52,2,'Automotive Technology',3),(53,2,'Certificate in Forestry',3),(54,2,'Civil Technology',3),(55,2,'Computer Engineering Technology',3),(56,2,'Computer Information Technology',3),(57,2,'Computer System & Programming',3),(58,2,'Computer Technology',3),(59,2,'Diploma in Agricultural Technology',3),(60,2,'Electrical Engineering Technology',3),(61,2,'Electrical Technology',3),(62,2,'Electronics and Communication Engineering Technolo',3),(63,2,'Electronics Engineering Technology',3),(64,2,'Electronics Service Engineering Technology',3),(65,2,'Electronics Technology',3),(66,2,'Fish Technology',3),(67,2,'Food and Beverage Engineering Technology',3),(68,2,'Food and Beverage Technology',3),(69,2,'Food Technology',3),(70,2,'Industrial Design Technology',3),(71,2,'Industrial Engineering Technology',3),(72,2,'Industrial Technology',3),(73,2,'Information & Communication Engineering Technology',3),(74,2,'Information & Communication Technology',3),(75,2,'Information Technology',3),(76,2,'Instrumentation and Control Engineering Technology',3),(77,2,'Mechanical and Production Engineering Technology',3),(78,2,'Mechanical Engineering Technology',3),(79,2,'Mechanical Technology',3),(80,3,'Agricultural Engineering Technology',2),(81,3,'Agricultural Technology',2),(82,3,'Associate in Computer Science',2),(83,3,'Associate in Computer Technology',2),(84,3,'Associate in Information Technology',2),(85,3,'Associate in System Technology',2),(86,3,'Automotive Technology',2),(87,3,'Certificate in Forestry',2),(88,3,'Certificate in Information Management',2),(89,3,'Computer Engineering Technology',2),(90,3,'Computer Information Management',2),(91,3,'Computer Information Technology',2),(92,3,'Computer Operation Programming',2),(93,3,'Computer Programming ',2),(94,3,'Computer Programming and Operation',2),(95,3,'Computer System Design & Programming',2),(96,3,'Computer System Technology',2),(97,3,'Computer Technology',2),(98,3,'Diploma in Agricultural Technology',2),(99,3,'Diploma in Electrical Technology',2),(100,3,'Electrical Engineering Technology',2),(101,3,'Electrical System Technician',2),(102,3,'Electrical Technology',2),(103,3,'Electromechanics',2),(104,3,'Electronics and Communication Engineering Technolo',2),(105,3,'Electronics Communication Technology',2),(106,3,'Electronics Engineering Technology',2),(107,3,'Electronics Technology',2),(108,3,'Food and Beverage Technology',2),(109,3,'Food Technology',2),(110,3,'Forest Ranger',2),(111,3,'Forest Technology',2),(112,3,'Information Technology',2),(113,3,'Mechanical Technology',2);
/*!40000 ALTER TABLE `psi_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_distributions`
--

DROP TABLE IF EXISTS `psi_distributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_distributions` (
  `dist_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dist_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`dist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_distributions`
--

LOCK TABLES `psi_distributions` WRITE;
/*!40000 ALTER TABLE `psi_distributions` DISABLE KEYS */;
INSERT INTO `psi_distributions` VALUES (1,'Nationwide'),(2,'Local Province/Region'),(3,'Export');
/*!40000 ALTER TABLE `psi_distributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_districts`
--

DROP TABLE IF EXISTS `psi_districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_districts` (
  `district_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `district_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_districts`
--

LOCK TABLES `psi_districts` WRITE;
/*!40000 ALTER TABLE `psi_districts` DISABLE KEYS */;
INSERT INTO `psi_districts` VALUES (1,'1st'),(2,'2nd'),(3,'3rd'),(4,'4th'),(5,'5th'),(6,'6th'),(7,'7th'),(8,'Lone'),(9,'None');
/*!40000 ALTER TABLE `psi_districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_draftlevels`
--

DROP TABLE IF EXISTS `psi_draftlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_draftlevels` (
  `draftlevel_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `draftlevel_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`draftlevel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_draftlevels`
--

LOCK TABLES `psi_draftlevels` WRITE;
/*!40000 ALTER TABLE `psi_draftlevels` DISABLE KEYS */;
INSERT INTO `psi_draftlevels` VALUES (1,'1st Draft'),(2,'2nd Draft'),(3,'Final Draft');
/*!40000 ALTER TABLE `psi_draftlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_equipment`
--

DROP TABLE IF EXISTS `psi_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_equipment` (
  `eqp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eqp_specs` text,
  `eqp_qty` int(10) unsigned DEFAULT '0',
  `eqp_amount_approved` decimal(65,3) unsigned DEFAULT '0.000',
  `eqp_amount_acquired` decimal(65,3) unsigned DEFAULT '0.000',
  `eqp_property_no` varchar(255) DEFAULT '',
  `eqp_date_acquired` date DEFAULT NULL,
  `eqp_receipt_no` varchar(255) DEFAULT '',
  `eqp_receipt_date` date DEFAULT NULL,
  `eqp_warranty` varchar(255) DEFAULT '',
  `eqp_date_tagged` date DEFAULT NULL,
  `eqp_remarks` text,
  `brand_id` bigint(20) unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `sp_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`eqp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_equipment`
--

LOCK TABLES `psi_equipment` WRITE;
/*!40000 ALTER TABLE `psi_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_equipment_brands`
--

DROP TABLE IF EXISTS `psi_equipment_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_equipment_brands` (
  `brand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_equipment_brands`
--

LOCK TABLES `psi_equipment_brands` WRITE;
/*!40000 ALTER TABLE `psi_equipment_brands` DISABLE KEYS */;
INSERT INTO `psi_equipment_brands` VALUES (1,'Machine'),(3,'Band Sealer'),(5,'CNC Machine'),(6,'Others'),(7,'Hydraulic Press Brake'),(8,'Shearing Machine'),(9,'Planetary Mixer'),(10,'Three Deck Oven'),(11,'Milking Machine'),(12,'Milk Analyzer'),(13,'Vertical Form-Fill Seal Machine'),(14,'Cookie Depositor/ Molder'),(15,'Spiral Mixer'),(16,'Gas Oven'),(17,'Chipper/Slicer Machine (Banana Slicer)'),(18,'Grass Chopper'),(19,'Grass Chopper'),(20,'Vertical Band Sealer'),(21,'Stainless Steel Working Table'),(22,'SS Kitchen Sink (Three Bowl)'),(23,'SS Potwash Rack 4-Layers'),(24,'Grease Trap, 15 GPM'),(25,'SS Double Overshelves'),(26,'SS Worktable w/ BTM Shelf &amp; Double Overshelves'),(27,'SS Worktable w/ BTM Shelf'),(28,'SS Utility Rack 4-Layers (Plain Shelves)'),(29,'SS Utility Rack 4-Layers (Perforated Shelves)'),(30,'SS Equipment Stand (Mixer)'),(31,'SS Sinktable'),(32,'SS Grease Trap, 10 GPM'),(33,'SS Mobile Cooling Rack (10-Layers)'),(34,'2-Open Top Burner (H.P) with Slotted Shelf'),(35,'2-Open Top Burner (L.P) with Slotted Shelf'),(36,'Griller with Stand'),(37,'4-Open Top Range'),(38,'SS Grease Trap, 5 GPM'),(39,'SS Worktable w/ MID &amp; BTM Shelves'),(40,'6 Planchas Capacity Stationary Gas Oven'),(41,'Four Door Stainless Steel Freezer/Chiller (Static Type)'),(42,'Four Door Stainless Steel Freezer (Static Type)'),(43,'Ice Maker Machine'),(44,'Automatic Pulburon Molding Machine'),(45,'Single deck Oven'),(46,'Meat Mixer'),(47,'Meat Grinder'),(48,'Vacuum sealer'),(49,'Upright Freezer'),(50,'Upright Chiller'),(51,'Stainless Steel Table'),(52,'Sausage Filler'),(53,'Meat Slicer'),(54,'Meat Tenderizer'),(55,'Bone Saw Cutter'),(56,'Labelling Scale With Barcode Printer');
/*!40000 ALTER TABLE `psi_equipment_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_expertise`
--

DROP TABLE IF EXISTS `psi_expertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_expertise` (
  `expertise_id` int(11) NOT NULL AUTO_INCREMENT,
  `expertise_type` varchar(30) NOT NULL,
  PRIMARY KEY (`expertise_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_expertise`
--

LOCK TABLES `psi_expertise` WRITE;
/*!40000 ALTER TABLE `psi_expertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_expertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_fora`
--

DROP TABLE IF EXISTS `psi_fora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_fora` (
  `fr_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fr_requesting_party` text,
  `fr_title` text,
  `fr_sectors` text,
  `fr_start` datetime DEFAULT NULL,
  `fr_end` datetime DEFAULT NULL,
  `fr_duration` double unsigned DEFAULT '0',
  `fr_location` text,
  `fr_longitude` double unsigned DEFAULT '0',
  `fr_latitude` double unsigned DEFAULT '0',
  `fr_elevation` double unsigned DEFAULT '0',
  `fr_cost` double unsigned DEFAULT '0',
  `fr_csf` double unsigned DEFAULT '0',
  `fr_no_feminine` int(10) unsigned DEFAULT '0',
  `fr_no_masculine` int(10) unsigned DEFAULT '0',
  `fr_no_pwd` int(10) unsigned DEFAULT '0',
  `fr_no_seniors` int(10) unsigned DEFAULT '0',
  `fr_no_firms` int(10) unsigned DEFAULT '0',
  `fr_no_participants` int(10) unsigned DEFAULT '0',
  `fr_type_id` bigint(20) unsigned DEFAULT '0',
  `fr_remarks` text,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `region_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`fr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_fora`
--

LOCK TABLES `psi_fora` WRITE;
/*!40000 ALTER TABLE `psi_fora` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_fora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_fora_collaborators`
--

DROP TABLE IF EXISTS `psi_fora_collaborators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_fora_collaborators` (
  `fcol_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fr_id` bigint(20) unsigned DEFAULT '0',
  `col_id` bigint(20) unsigned DEFAULT '0',
  `fcol_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fcol_id`),
  UNIQUE KEY `fcol_id_UNIQUE` (`fcol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_fora_collaborators`
--

LOCK TABLES `psi_fora_collaborators` WRITE;
/*!40000 ALTER TABLE `psi_fora_collaborators` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_fora_collaborators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_fora_document_types`
--

DROP TABLE IF EXISTS `psi_fora_document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_fora_document_types` (
  `fdoctype_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fdoctype_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`fdoctype_id`),
  UNIQUE KEY `adoctype_id_UNIQUE` (`fdoctype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_fora_document_types`
--

LOCK TABLES `psi_fora_document_types` WRITE;
/*!40000 ALTER TABLE `psi_fora_document_types` DISABLE KEYS */;
INSERT INTO `psi_fora_document_types` VALUES (1,'Proposal'),(2,'Activity Report'),(3,'Attendance');
/*!40000 ALTER TABLE `psi_fora_document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_fora_documents`
--

DROP TABLE IF EXISTS `psi_fora_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_fora_documents` (
  `frdoc_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `frdoc_file` varchar(255) DEFAULT '',
  `frdoc_filename` varchar(255) DEFAULT '',
  `frdoc_remarks` text,
  `fdoctype_id` bigint(20) unsigned DEFAULT '0',
  `fr_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT NULL,
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`frdoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_fora_documents`
--

LOCK TABLES `psi_fora_documents` WRITE;
/*!40000 ALTER TABLE `psi_fora_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_fora_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_fora_types`
--

DROP TABLE IF EXISTS `psi_fora_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_fora_types` (
  `fr_type_id` bigint(20) unsigned NOT NULL,
  `fr_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`fr_type_id`),
  UNIQUE KEY `fatype_id_UNIQUE` (`fr_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_fora_types`
--

LOCK TABLES `psi_fora_types` WRITE;
/*!40000 ALTER TABLE `psi_fora_types` DISABLE KEYS */;
INSERT INTO `psi_fora_types` VALUES (1,'Forum'),(2,'Seminar'),(3,'Training');
/*!40000 ALTER TABLE `psi_fora_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_fundingsources`
--

DROP TABLE IF EXISTS `psi_fundingsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_fundingsources` (
  `fs_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fs_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`fs_id`),
  UNIQUE KEY `psi_fs_id_UNIQUE` (`fs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_fundingsources`
--

LOCK TABLES `psi_fundingsources` WRITE;
/*!40000 ALTER TABLE `psi_fundingsources` DISABLE KEYS */;
INSERT INTO `psi_fundingsources` VALUES (1,'Locally Funded'),(2,'Externally Funded');
/*!40000 ALTER TABLE `psi_fundingsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_interven_type`
--

DROP TABLE IF EXISTS `psi_interven_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_interven_type` (
  `interven_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `interven_type` varchar(50) NOT NULL,
  PRIMARY KEY (`interven_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_interven_type`
--

LOCK TABLES `psi_interven_type` WRITE;
/*!40000 ALTER TABLE `psi_interven_type` DISABLE KEYS */;
INSERT INTO `psi_interven_type` VALUES (4,'Provision of Equipment'),(5,'Technology Needs Assessment');
/*!40000 ALTER TABLE `psi_interven_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_intervention`
--

DROP TABLE IF EXISTS `psi_intervention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_intervention` (
  `interven_id` int(11) NOT NULL AUTO_INCREMENT,
  `proj_id` int(11) NOT NULL,
  `interven_type_id` int(11) NOT NULL,
  `start_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `conducted_by` text NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `consult_id` int(11) NOT NULL,
  `work_done` text NOT NULL,
  `interven_amt` float NOT NULL,
  `receipt_no` varchar(50) NOT NULL,
  `date_receipt` varchar(15) NOT NULL,
  `remarks` text NOT NULL,
  `encoder` varchar(50) NOT NULL,
  `date_encoded` datetime NOT NULL,
  `updater` varchar(50) NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`interven_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_intervention`
--

LOCK TABLES `psi_intervention` WRITE;
/*!40000 ALTER TABLE `psi_intervention` DISABLE KEYS */;
INSERT INTO `psi_intervention` VALUES (1,4,4,'03/04/2014','03/04/2015','Rackie',0,0,0,0,'Testing456789',9000,'GH78978','0000-00-00','testing','Solejaena Herrera','2014-03-23 22:08:05','Solejaena Herrera','2014-03-24 00:40:03');
/*!40000 ALTER TABLE `psi_intervention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_labeling`
--

DROP TABLE IF EXISTS `psi_labeling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_labeling` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_type_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `proj_id` int(11) NOT NULL,
  `coop_id` int(11) NOT NULL,
  `label_folder_path` text NOT NULL,
  `market_pene` text NOT NULL,
  `no_label` int(11) NOT NULL,
  `date_endorsed` date NOT NULL,
  `date_first` date NOT NULL,
  `date_second` date NOT NULL,
  `date_final` date NOT NULL,
  `resp_unit` varchar(50) NOT NULL,
  `encoder` varchar(50) NOT NULL,
  `date_encoded` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_labeling`
--

LOCK TABLES `psi_labeling` WRITE;
/*!40000 ALTER TABLE `psi_labeling` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_labeling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_laboratories`
--

DROP TABLE IF EXISTS `psi_laboratories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_laboratories` (
  `lab_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lab_name` varchar(255) DEFAULT '',
  `lab_abbr` varchar(255) DEFAULT '',
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_laboratories`
--

LOCK TABLES `psi_laboratories` WRITE;
/*!40000 ALTER TABLE `psi_laboratories` DISABLE KEYS */;
INSERT INTO `psi_laboratories` VALUES (1,'Regional Services &amp; Testing Laboratory','RSTL'),(2,'Regional Metrology Laboratory','RML'),(3,'Regional Volumetric Calibration Laboratory','RVCL'),(4,'Cavite Water &amp; Wastewater Testing Laboratory','CWWTL');
/*!40000 ALTER TABLE `psi_laboratories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_library`
--

DROP TABLE IF EXISTS `psi_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_library` (
  `lib_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lib_month` int(11) DEFAULT NULL,
  `lib_year` int(11) DEFAULT NULL,
  `lib_user_count` bigint(20) DEFAULT NULL,
  `lib_remarks` text,
  `encoder` varchar(255) DEFAULT NULL,
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`lib_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_library`
--

LOCK TABLES `psi_library` WRITE;
/*!40000 ALTER TABLE `psi_library` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_loc`
--

DROP TABLE IF EXISTS `psi_loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_loc` (
  `loc_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL DEFAULT '',
  `province_name` varchar(255) NOT NULL DEFAULT '',
  `district_name` varchar(255) NOT NULL DEFAULT '',
  `city_name` varchar(255) NOT NULL DEFAULT '',
  `loc_type` varchar(255) NOT NULL DEFAULT '',
  `region_id` bigint(20) unsigned DEFAULT '0',
  `province_id` bigint(20) unsigned DEFAULT '0',
  `city_id` bigint(20) unsigned DEFAULT '0',
  `district_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_loc`
--

LOCK TABLES `psi_loc` WRITE;
/*!40000 ALTER TABLE `psi_loc` DISABLE KEYS */;
INSERT INTO `psi_loc` VALUES (1,'4A','Batangas','1st','Balayan','town',6,42,3,1),(2,'4A','Batangas','1st','Calaca','town',6,42,7,1),(3,'4A','Batangas','1st','Calatagan','town',6,42,8,1),(4,'4A','Batangas','1st','Lemery','town',6,42,12,1),(5,'4A','Batangas','1st','Lian','town',6,42,13,1),(6,'4A','Batangas','1st','Nasugbu','town',6,42,19,1),(7,'4A','Batangas','1st','Taal','town',6,42,29,1),(8,'4A','Batangas','1st','Tuy','town',6,42,34,1),(9,'4A','Batangas','2nd','Batangas City','city',6,42,5,2),(10,'4A','Batangas','2nd','Bauan','town',6,42,6,2),(11,'4A','Batangas','2nd','Lobo','town',6,42,15,2),(12,'4A','Batangas','2nd','Mabini','town',6,42,16,2),(13,'4A','Batangas','2nd','San Luis','town',6,42,24,2),(14,'4A','Batangas','2nd','San Pascual','town',6,42,26,2),(15,'4A','Batangas','2nd','Tingloy','town',6,42,33,2),(16,'4A','Batangas','3rd','Tanauan City','city',6,42,31,3),(17,'4A','Batangas','3rd','Agoncillo','town',6,42,1,3),(18,'4A','Batangas','3rd','Alitagtag','town',6,42,2,3),(19,'4A','Batangas','3rd','Balete','town',6,42,4,3),(20,'4A','Batangas','3rd','Cuenca','town',6,42,9,3),(21,'4A','Batangas','3rd','Laurel','town',6,42,11,3),(22,'4A','Batangas','3rd','Malvar','town',6,42,17,3),(23,'4A','Batangas','3rd','Mataas na Kahoy','town',6,42,0,3),(24,'4A','Batangas','3rd','San Nicolas','town',6,42,25,3),(25,'4A','Batangas','3rd','Sta. Teresita','town',6,42,0,3),(26,'4A','Batangas','3rd','Sto. Tomas','town',6,42,0,3),(27,'4A','Batangas','3rd','Talisay','town',6,42,30,3),(28,'4A','Batangas','4th','Lipa City','city',6,42,14,4),(29,'4A','Batangas','4th','Ibaan','town',6,42,10,4),(30,'4A','Batangas','4th','Padre Garcia','town',6,42,20,4),(31,'4A','Batangas','4th','Rosario','town',6,42,45,4),(32,'4A','Batangas','4th','San Jose','town',6,42,22,4),(33,'4A','Batangas','4th','San Juan','town',6,42,23,4),(34,'4A','Batangas','4th','Taysan','town',6,42,32,4),(35,'4A','Cavite','1st','Cavite City','city',6,43,38,1),(36,'4A','Cavite','1st','Bacoor','town',6,43,41,1),(37,'4A','Cavite','1st','Kawit','town',6,43,44,1),(38,'4A','Cavite','1st','Noveleta','town',6,43,46,1),(39,'4A','Cavite','1st','Rosario','town',6,43,45,1),(40,'4A','Cavite','2nd','Trece martires City','city',6,43,35,2),(41,'4A','Cavite','2nd','Carmona','town',6,43,49,2),(42,'4A','Cavite','2nd','Damari?as','town',6,43,0,2),(43,'4A','Cavite','2nd','Imus','town',6,43,0,2),(44,'4A','Cavite','2nd','Gen. Mariano Alvarez','town',6,43,0,2),(45,'4A','Cavite','2nd','Gen. Trias','town',6,43,0,2),(46,'4A','Cavite','2nd','Tanza','town',6,43,39,2),(47,'4A','Cavite','3rd','Tagaytay City','city',6,43,37,3),(48,'4A','Cavite','3rd','Alfonso','town',6,43,52,3),(49,'4A','Cavite','3rd','Amadeo','town',6,43,51,3),(50,'4A','Cavite','3rd','Gen. Emilio Aguinaldo','town',6,43,0,3),(51,'4A','Cavite','3rd','Indang','town',6,43,57,3),(52,'4A','Cavite','3rd','Magallanes','town',6,43,55,3),(53,'4A','Cavite','3rd','Maragondon','town',6,43,53,3),(54,'4A','Cavite','3rd','Mendez','town',6,43,50,3),(55,'4A','Cavite','3rd','Naic','town',6,43,40,3),(56,'4A','Cavite','3rd','Silang','town',6,43,43,3),(57,'4A','Cavite','3rd','Ternate','town',6,43,54,3),(58,'4A','Laguna','1st','Sta. Rosa City','city',6,46,0,1),(59,'4A','Laguna','1st','Bi?an','town',6,46,0,1),(60,'4A','Laguna','1st','San Pedro','town',6,46,0,1),(61,'4A','Laguna','2nd','Calamba City','city',6,46,114,2),(62,'4A','Laguna','2nd','Bay','town',6,46,119,2),(63,'4A','Laguna','2nd','Cabuyao','town',6,46,0,2),(64,'4A','Laguna','2nd','Los Ba?os','town',6,46,0,2),(65,'4A','Laguna','3rd','San Pablo City','city',6,46,115,3),(66,'4A','Laguna','3rd','Alaminos','town',6,46,118,3),(67,'4A','Laguna','3rd','Calauan','town',6,46,121,3),(68,'4A','Laguna','3rd','Liliw','town',6,46,125,3),(69,'4A','Laguna','3rd','Nagcarlan','town',6,46,131,3),(70,'4A','Laguna','3rd','Rizal','town',6,46,137,3),(71,'4A','Laguna','3rd','Victoria','town',6,46,142,3),(72,'4A','Laguna','4th','Cavinti','town',6,46,122,4),(73,'4A','Laguna','4th','Famy','town',6,46,123,4),(74,'4A','Laguna','4th','Kalayaan','town',6,46,124,4),(75,'4A','Laguna','4th','Luisiana','town',6,46,126,4),(76,'4A','Laguna','4th','Lumban','town',6,46,127,4),(77,'4A','Laguna','4th','Mabitac','town',6,46,128,4),(78,'4A','Laguna','4th','Magdalena','town',6,46,129,4),(79,'4A','Laguna','4th','Majayjay','town',6,46,130,4),(80,'4A','Laguna','4th','Paete','town',6,46,132,4),(81,'4A','Laguna','4th','Pagsanjan','town',6,46,133,4),(82,'4A','Laguna','4th','Pakil','town',6,46,134,4),(83,'4A','Laguna','4th','Pangil','town',6,46,135,4),(84,'4A','Laguna','4th','Pila','town',6,46,136,4),(85,'4A','Laguna','4th','Sta. Cruz','town',6,46,0,4),(86,'4A','Laguna','4th','Sta. Maria','town',6,46,0,4),(87,'4A','Laguna','4th','Siniloan','town',6,46,141,4),(88,'4B','Marinduque','Lone','Boac','town',7,47,0,5),(89,'4B','Marinduque','Lone','Buenavista','town',7,47,61,5),(90,'4B','Marinduque','Lone','Gasan','town',7,47,0,5),(91,'4B','Marinduque','Lone','Mogpog','town',7,47,0,5),(92,'4B','Marinduque','Lone','Sta. Cruz','town',7,47,0,5),(93,'4B','Marinduque','Lone','Torrijos','town',7,47,0,5),(94,'4B','Occidental Mindoro','Lone','Abra de Ilog','town',7,48,0,5),(95,'4B','Occidental Mindoro','Lone','Calintaan','town',7,48,0,5),(96,'4B','Occidental Mindoro','Lone','Looc','town',7,48,0,5),(97,'4B','Occidental Mindoro','Lone','Lubang','town',7,48,0,5),(98,'4B','Occidental Mindoro','Lone','Magsaysay','town',7,48,0,5),(99,'4B','Occidental Mindoro','Lone','Mamburao','town',7,48,0,5),(100,'4B','Occidental Mindoro','Lone','Paluan','town',7,48,0,5),(101,'4B','Occidental Mindoro','Lone','Rizal','town',7,48,137,5),(102,'4B','Occidental Mindoro','Lone','Sablayan','town',7,48,0,5),(103,'4B','Occidental Mindoro','Lone','San Jose','town',7,48,22,5),(104,'4B','Occidental Mindoro','Lone','Sta. Cruz','town',7,48,0,5),(105,'4B','Oriental Mindoro','1st','Calapan City','city',7,49,0,1),(106,'4B','Oriental Mindoro','1st','Naujan','town',7,49,0,1),(107,'4B','Oriental Mindoro','1st','Pola','town',7,49,0,1),(108,'4B','Oriental Mindoro','1st','Puerto Galera','town',7,49,0,1),(109,'4B','Oriental Mindoro','1st','San Teodoro','town',7,49,0,1),(110,'4B','Oriental Mindoro','1st','Socorro','town',7,49,0,1),(111,'4B','Oriental Mindoro','1st','Victoria','town',7,49,142,1),(112,'4B','Oriental Mindoro','1st','Baco','town',7,49,0,1),(113,'4B','Oriental Mindoro','2nd','Bansud','town',7,49,0,2),(114,'4B','Oriental Mindoro','2nd','Bongabon','town',7,49,0,2),(115,'4B','Oriental Mindoro','2nd','Bulalacao','town',7,49,0,2),(116,'4B','Oriental Mindoro','2nd','Gloria','town',7,49,0,2),(117,'4B','Oriental Mindoro','2nd','Mansalay','town',7,49,0,2),(118,'4B','Oriental Mindoro','2nd','Pinamalayan','town',7,49,0,2),(119,'4B','Oriental Mindoro','2nd','Roxas','town',7,49,0,2),(120,'4B','Oriental Mindoro','2nd','Wasig','town',7,49,0,2),(121,'4B','Palawan','1st','Aracelli','town',7,50,0,1),(122,'4B','Palawan','1st','Agutaya','town',7,50,0,1),(123,'4B','Palawan','1st','Busanga','town',7,50,0,1),(124,'4B','Palawan','1st','Cagayancillo','town',7,50,0,1),(125,'4B','Palawan','1st','Coron','town',7,50,0,1),(126,'4B','Palawan','1st','Cuyo','town',7,50,0,1),(127,'4B','Palawan','1st','Dumaran','town',7,50,0,1),(128,'4B','Palawan','1st','El Nido (Bacuit)','town',7,50,0,1),(129,'4B','Palawan','1st','Kalayaan','town',7,50,124,1),(130,'4B','Palawan','1st','Linapacan','town',7,50,0,1),(131,'4B','Palawan','1st','Magsaysay','town',7,50,0,1),(132,'4B','Palawan','1st','Roxas','town',7,50,0,1),(133,'4B','Palawan','1st','San Vicente','town',7,50,0,1),(134,'4B','Palawan','1st','Taytay','town',7,50,111,1),(135,'4B','Palawan','2nd','Puerto Princesa City','city',7,50,0,2),(136,'4B','Palawan','2nd','Aborlan','town',7,50,0,2),(137,'4B','Palawan','2nd','Balabac','town',7,50,0,2),(138,'4B','Palawan','2nd','Batarasa','town',7,50,0,2),(139,'4B','Palawan','2nd','Brooke\'s Point','town',7,50,0,2),(140,'4B','Palawan','2nd','Narra','town',7,50,0,2),(141,'4B','Palawan','2nd','Quezon','town',7,50,87,2),(142,'4B','Palawan','2nd','Marcos','town',7,50,0,2),(143,'4A','Quezon','1st','Burdeos','town',6,44,62,1),(144,'4A','Quezon','1st','Gen. Nakar','town',6,44,0,1),(145,'4A','Quezon','1st','Infanta','town',6,44,71,1),(146,'4A','Quezon','1st','Jomalig','town',6,44,72,1),(147,'4A','Quezon','1st','Lucban','town',6,44,75,1),(148,'4A','Quezon','1st','Mauban','town',6,44,77,1),(149,'4A','Quezon','1st','Pagbilao','town',6,44,80,1),(150,'4A','Quezon','1st','Panukulan','town',6,44,81,1),(151,'4A','Quezon','1st','Patnanungan','town',6,44,82,1),(152,'4A','Quezon','1st','Polillo','town',6,44,86,1),(153,'4A','Quezon','1st','Real','town',6,44,88,1),(154,'4A','Quezon','1st','Sampaloc','town',6,44,89,1),(155,'4A','Quezon','1st','Tayabas','town',6,44,96,1),(156,'4A','Quezon','2nd','Lucena City','city',6,44,74,2),(157,'4A','Quezon','2nd','Candelaria','town',6,44,64,2),(158,'4A','Quezon','2nd','Dolores','town',6,44,66,2),(159,'4A','Quezon','2nd','San Antonio','town',6,44,91,2),(160,'4A','Quezon','2nd','Sariaya','town',6,44,94,2),(161,'4A','Quezon','2nd','Tiaong','town',6,44,97,2),(162,'4A','Quezon','3rd','Agdangan','town',6,44,58,3),(163,'4A','Quezon','3rd','Buenavista','town',6,44,61,3),(164,'4A','Quezon','3rd','Catanauan','town',6,44,65,3),(165,'4A','Quezon','3rd','Gen. Luna','town',6,44,0,3),(166,'4A','Quezon','3rd','Macalelon','town',6,44,76,3),(167,'4A','Quezon','3rd','Mulanay','town',6,44,78,3),(168,'4A','Quezon','3rd','Padre Burgos','town',6,44,79,3),(169,'4A','Quezon','3rd','Pitogo','town',6,44,84,3),(170,'4A','Quezon','3rd','San Andres','town',6,44,90,3),(171,'4A','Quezon','3rd','San Francisco','town',6,44,92,3),(172,'4A','Quezon','3rd','San Narciso','town',6,44,93,3),(173,'4A','Quezon','3rd','Unisan','town',6,44,98,3),(174,'4A','Quezon','4th','Alabat','town',6,44,59,4),(175,'4A','Quezon','4th','Atimonan','town',6,44,60,4),(176,'4A','Quezon','4th','Calauag','town',6,44,63,4),(177,'4A','Quezon','4th','Guinayangan','town',6,44,69,4),(178,'4A','Quezon','4th','Gumaca','town',6,44,70,4),(179,'4A','Quezon','4th','Lopez','town',6,44,73,4),(180,'4A','Quezon','4th','Perez','town',6,44,83,4),(181,'4A','Quezon','4th','Plaridel','town',6,44,85,4),(182,'4A','Quezon','4th','Quezon','town',6,44,87,4),(183,'4A','Quezon','4th','Tagkawayan','town',6,44,95,4),(184,'4A','Rizal','1st','Angono','town',6,45,99,1),(185,'4A','Rizal','1st','Binangonan','town',6,45,102,1),(186,'4A','Rizal','1st','Cainta','town',6,45,103,1),(187,'4A','Rizal','1st','Taytay','town',6,45,111,1),(188,'4A','Rizal','2nd','Baras','town',6,45,101,2),(189,'4A','Rizal','2nd','Cardona','town',6,45,104,2),(190,'4A','Rizal','2nd','Jala-jala','town',6,45,0,2),(191,'4A','Rizal','2nd','Morong','town',6,45,106,2),(192,'4A','Rizal','2nd','Pililia','town',6,45,0,2),(193,'4A','Rizal','2nd','Rodriguez','town',6,45,108,2),(194,'4A','Rizal','2nd','San Mateo','town',6,45,109,2),(195,'4A','Rizal','2nd','Tanay','town',6,45,110,2),(196,'4A','Rizal','2nd','Teresa','town',6,45,112,2),(197,'4B','Romblon','Lone','Alcantara','town',7,51,0,5),(198,'4B','Romblon','Lone','Banton (Jones)','town',7,51,0,5),(199,'4B','Romblon','Lone','Cajidiocan','town',7,51,0,5),(200,'4B','Romblon','Lone','Calatrava','town',7,51,0,5),(201,'4B','Romblon','Lone','Conception','town',7,51,0,5),(202,'4B','Romblon','Lone','Corcuerra','town',7,51,0,5),(203,'4B','Romblon','Lone','Ferrol','town',7,51,0,5),(204,'4B','Romblon','Lone','Looc','town',7,51,0,5),(205,'4B','Romblon','Lone','Magdiwang','town',7,51,0,5),(206,'4B','Romblon','Lone','Odiongan','town',7,51,0,5),(207,'4B','Romblon','Lone','Romblon','town',7,51,0,5),(208,'4B','Romblon','Lone','San Agustin','town',7,51,0,5),(209,'4B','Romblon','Lone','San Andres','town',7,51,90,5),(210,'4B','Romblon','Lone','San Fernando','town',7,51,0,5),(211,'4B','Romblon','Lone','San Jose','town',7,51,22,5),(212,'4B','Romblon','Lone','Sta. Fe','town',7,51,0,5),(213,'4B','Romblon','Lone','Sta. Maria (Imelda)','town',7,51,0,5);
/*!40000 ALTER TABLE `psi_loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_mfo`
--

DROP TABLE IF EXISTS `psi_mfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_mfo` (
  `mfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `mfo_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_mfo`
--

LOCK TABLES `psi_mfo` WRITE;
/*!40000 ALTER TABLE `psi_mfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_mfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_mfo_tar`
--

DROP TABLE IF EXISTS `psi_mfo_tar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_mfo_tar` (
  `tar_id` int(11) NOT NULL AUTO_INCREMENT,
  `tar_name` int(11) DEFAULT NULL,
  `tar_cav` int(11) DEFAULT NULL,
  `tar_lag` int(11) DEFAULT NULL,
  `tar_bat` int(11) DEFAULT NULL,
  `tar_riz` int(11) DEFAULT NULL,
  `tar_que` int(11) DEFAULT NULL,
  `tar_cav_nc` int(11) DEFAULT NULL,
  `tar_lag_nc` int(11) DEFAULT NULL,
  `tar_bat_nc` int(11) DEFAULT NULL,
  `tar_riz_nc` int(11) DEFAULT NULL,
  `tar_que_nc` int(11) DEFAULT NULL,
  `mfo_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_mfo_tar`
--

LOCK TABLES `psi_mfo_tar` WRITE;
/*!40000 ALTER TABLE `psi_mfo_tar` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_mfo_tar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_non_profit`
--

DROP TABLE IF EXISTS `psi_non_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_non_profit` (
  `nonp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nonp_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`nonp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_non_profit`
--

LOCK TABLES `psi_non_profit` WRITE;
/*!40000 ALTER TABLE `psi_non_profit` DISABLE KEYS */;
INSERT INTO `psi_non_profit` VALUES (1,'Profit'),(2,'Non-Profit');
/*!40000 ALTER TABLE `psi_non_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_organization_types`
--

DROP TABLE IF EXISTS `psi_organization_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_organization_types` (
  `ot_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ot_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`ot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_organization_types`
--

LOCK TABLES `psi_organization_types` WRITE;
/*!40000 ALTER TABLE `psi_organization_types` DISABLE KEYS */;
INSERT INTO `psi_organization_types` VALUES (1,'Non-Government Organization'),(2,'Government'),(3,'Academe'),(4,'Private Sector'),(5,'Funding Agency'),(6,'LGU');
/*!40000 ALTER TABLE `psi_organization_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_organization_types_cat1`
--

DROP TABLE IF EXISTS `psi_organization_types_cat1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_organization_types_cat1` (
  `ot_cat1_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ot_cat1_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`ot_cat1_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_organization_types_cat1`
--

LOCK TABLES `psi_organization_types_cat1` WRITE;
/*!40000 ALTER TABLE `psi_organization_types_cat1` DISABLE KEYS */;
INSERT INTO `psi_organization_types_cat1` VALUES (1,'Single Proprietor'),(2,'Partnership'),(3,'Cooperator'),(4,'Corporation'),(5,'NGA'),(6,'LGU'),(7,'NGO'),(8,'Academe');
/*!40000 ALTER TABLE `psi_organization_types_cat1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_organization_types_cat2`
--

DROP TABLE IF EXISTS `psi_organization_types_cat2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_organization_types_cat2` (
  `ot_cat2_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ot_cat2_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`ot_cat2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_organization_types_cat2`
--

LOCK TABLES `psi_organization_types_cat2` WRITE;
/*!40000 ALTER TABLE `psi_organization_types_cat2` DISABLE KEYS */;
INSERT INTO `psi_organization_types_cat2` VALUES (1,'Profit'),(2,'Non-Profit'),(3,'N/A');
/*!40000 ALTER TABLE `psi_organization_types_cat2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_organization_types_cat3`
--

DROP TABLE IF EXISTS `psi_organization_types_cat3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_organization_types_cat3` (
  `ot_cat3_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ot_cat3_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ot_cat3_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_organization_types_cat3`
--

LOCK TABLES `psi_organization_types_cat3` WRITE;
/*!40000 ALTER TABLE `psi_organization_types_cat3` DISABLE KEYS */;
INSERT INTO `psi_organization_types_cat3` VALUES (1,'Micro (P3M TAV or less)'),(2,'Small (PHP 3,000.001 - PHP 15M TAV)'),(3,'Medium (PHP 15,000.001 - PHP 100M TAV)'),(4,'N/A');
/*!40000 ALTER TABLE `psi_organization_types_cat3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_package_types`
--

DROP TABLE IF EXISTS `psi_package_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_package_types` (
  `pkg_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pkg_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`pkg_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_package_types`
--

LOCK TABLES `psi_package_types` WRITE;
/*!40000 ALTER TABLE `psi_package_types` DISABLE KEYS */;
INSERT INTO `psi_package_types` VALUES (1,'Testing');
/*!40000 ALTER TABLE `psi_package_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_packaging`
--

DROP TABLE IF EXISTS `psi_packaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_packaging` (
  `pkg_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pkg_date` datetime DEFAULT NULL,
  `pkg_remarks` text,
  `pkg_product_name` varchar(255) DEFAULT '',
  `pkg_brand_name` varchar(255) DEFAULT '',
  `pkg_product_description` text,
  `pkg_competitors` text,
  `pkg_competitor_1` varchar(255) DEFAULT '',
  `pkg_competitor_2` varchar(255) DEFAULT '',
  `pkg_competitor_3` varchar(255) DEFAULT '',
  `pkg_competitor_4` varchar(255) DEFAULT '',
  `pkg_competitor_5` varchar(255) DEFAULT '',
  `pkg_competitor_6` varchar(255) DEFAULT '',
  `pkg_selling_point` tinyint(1) unsigned DEFAULT '0',
  `pkg_selling_point_others` text,
  `pkg_performance` text,
  `pkg_distribution` tinyint(1) unsigned DEFAULT '0',
  `pkg_ingredients` text,
  `pkg_volume` varchar(255) DEFAULT '',
  `pkg_packaging_material` varchar(255) DEFAULT '',
  `pkg_label_size` varchar(255) DEFAULT '',
  `pkg_preferred_colors` varchar(255) DEFAULT '',
  `pkg_other_details` text,
  `pkg_market_location` text,
  `pkg_market_products_sold` bigint(20) unsigned DEFAULT '0',
  `pkg_market_date_established` date DEFAULT NULL,
  `pkg_sales_before_intervention` double unsigned DEFAULT '0',
  `pkg_sales_after_intervention` double unsigned DEFAULT '0',
  `pkg_employment_after_direct` bigint(20) unsigned DEFAULT '0',
  `pkg_employment_after_indirect` bigint(20) unsigned DEFAULT '0',
  `pkg_employment_after_months_employed` bigint(20) unsigned DEFAULT '0',
  `pkg_avg_productivity_improvement` double unsigned DEFAULT '0',
  `coop_id` bigint(20) unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `pkg_file` varchar(255) DEFAULT '',
  `pkg_filename` varchar(255) DEFAULT '',
  PRIMARY KEY (`pkg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_packaging`
--

LOCK TABLES `psi_packaging` WRITE;
/*!40000 ALTER TABLE `psi_packaging` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_packaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_packaging_designs`
--

DROP TABLE IF EXISTS `psi_packaging_designs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_packaging_designs` (
  `design_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `design_date` datetime DEFAULT NULL,
  `design_description` text,
  `draftlevel_id` bigint(20) unsigned DEFAULT '1',
  `pkg_id` bigint(20) unsigned DEFAULT '0',
  `design_image1` varchar(255) DEFAULT '',
  `design_image2` varchar(255) DEFAULT '',
  `design_filename1` varchar(255) DEFAULT '',
  `design_filename2` varchar(255) DEFAULT '',
  PRIMARY KEY (`design_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_packaging_designs`
--

LOCK TABLES `psi_packaging_designs` WRITE;
/*!40000 ALTER TABLE `psi_packaging_designs` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_packaging_designs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_packagings`
--

DROP TABLE IF EXISTS `psi_packagings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_packagings` (
  `pack_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `proj_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_packagings`
--

LOCK TABLES `psi_packagings` WRITE;
/*!40000 ALTER TABLE `psi_packagings` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_packagings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_album_photos`
--

DROP TABLE IF EXISTS `psi_project_album_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_album_photos` (
  `photo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo_file` varchar(255) DEFAULT '',
  `photo_filename` varchar(255) DEFAULT '',
  `photo_desc` text,
  `album_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_album_photos`
--

LOCK TABLES `psi_project_album_photos` WRITE;
/*!40000 ALTER TABLE `psi_project_album_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_album_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_albums`
--

DROP TABLE IF EXISTS `psi_project_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_albums` (
  `album_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_name` varchar(255) DEFAULT '',
  `album_desc` text,
  `album_event_date` date DEFAULT NULL,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `date_encoded` datetime DEFAULT NULL,
  `encoder` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_albums`
--

LOCK TABLES `psi_project_albums` WRITE;
/*!40000 ALTER TABLE `psi_project_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_beneficiaries`
--

DROP TABLE IF EXISTS `psi_project_beneficiaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_beneficiaries` (
  `prj_ben_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `coop_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`prj_ben_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_beneficiaries`
--

LOCK TABLES `psi_project_beneficiaries` WRITE;
/*!40000 ALTER TABLE `psi_project_beneficiaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_beneficiaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_collaborators`
--

DROP TABLE IF EXISTS `psi_project_collaborators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_collaborators` (
  `prj_col_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `col_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`prj_col_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_collaborators`
--

LOCK TABLES `psi_project_collaborators` WRITE;
/*!40000 ALTER TABLE `psi_project_collaborators` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_collaborators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_document_types`
--

DROP TABLE IF EXISTS `psi_project_document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_document_types` (
  `doctype_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctype_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`doctype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_document_types`
--

LOCK TABLES `psi_project_document_types` WRITE;
/*!40000 ALTER TABLE `psi_project_document_types` DISABLE KEYS */;
INSERT INTO `psi_project_document_types` VALUES (41,'Status Report'),(31,'Memorandum Of Agreement'),(32,'Technology Needs Assessment Form 01'),(33,'Technology Needs Assessment Form 04'),(34,'Project Proposal'),(35,'Board Resolution'),(36,'Project Information Sheet'),(37,'Pre-Implementation Project Information Sheet'),(38,'Project Proposal RTEC Compliance'),(39,'Review and Technical Evaluation Committee (RTEC) Executive Report on the Project Proposal'),(40,'Supplemental Memorandum of Agreement');
/*!40000 ALTER TABLE `psi_project_document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_documents`
--

DROP TABLE IF EXISTS `psi_project_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_documents` (
  `doc_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doc_file` varchar(255) DEFAULT '',
  `doc_filename` varchar(255) DEFAULT '',
  `doc_remarks` text,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `doctype_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_documents`
--

LOCK TABLES `psi_project_documents` WRITE;
/*!40000 ALTER TABLE `psi_project_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_forms`
--

DROP TABLE IF EXISTS `psi_project_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_forms` (
  `prjform_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prjform_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`prjform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_forms`
--

LOCK TABLES `psi_project_forms` WRITE;
/*!40000 ALTER TABLE `psi_project_forms` DISABLE KEYS */;
INSERT INTO `psi_project_forms` VALUES (1,'PIS'),(2,'Status Report'),(3,'Terminal Report');
/*!40000 ALTER TABLE `psi_project_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_monitoring`
--

DROP TABLE IF EXISTS `psi_project_monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_monitoring` (
  `prjmon_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `prjmon_year` int(10) unsigned DEFAULT '2015',
  `quarter_id` int(10) unsigned DEFAULT '1',
  `sem_id` bigint(20) unsigned DEFAULT '1',
  `prjmon_total_assets_land` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_total_assets_building` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_total_assets_equipment` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_total_assets_working_capital` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_total_employment` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_regular_male` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_regular_female` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_regular_pwd` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_regular_senior` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_part_time_male` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_part_time_female` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_part_time_pwd` int(10) unsigned DEFAULT '0',
  `prjmon_dir_ch_part_time_senior` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_regular_male` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_regular_female` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_regular_pwd` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_regular_senior` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_part_time_male` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_part_time_female` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_part_time_pwd` int(10) unsigned DEFAULT '0',
  `prjmon_dir_sh_part_time_senior` int(10) unsigned DEFAULT '0',
  `prjmon_indir_backward_male` int(10) unsigned DEFAULT '0',
  `prjmon_indir_backward_female` int(10) unsigned DEFAULT '0',
  `prjmon_indir_backward_pwd` int(10) unsigned DEFAULT '0',
  `prjmon_indir_backward_senior` int(10) unsigned DEFAULT '0',
  `prjmon_indir_forward_male` int(10) unsigned DEFAULT '0',
  `prjmon_indir_forward_female` int(10) unsigned DEFAULT '0',
  `prjmon_indir_forward_pwd` int(10) unsigned DEFAULT '0',
  `prjmon_indir_forward_senior` int(10) unsigned DEFAULT '0',
  `prjmon_volume_production_local` decimal(65,3) DEFAULT '0.000',
  `prjmon_volume_production_export` decimal(65,3) DEFAULT '0.000',
  `prjmon_gross_sales_local` decimal(65,3) DEFAULT '0.000',
  `prjmon_gross_sales_export` decimal(65,3) DEFAULT '0.000',
  `prjmon_countries_of_destination` text,
  `prjmon_assistance_process` tinyint(1) unsigned DEFAULT '0',
  `prjmon_assistance_equipment` tinyint(1) unsigned DEFAULT '0',
  `prjmon_assistance_quality_control` tinyint(1) unsigned DEFAULT '0',
  `prjmon_assistance_packaging_labeling` tinyint(1) unsigned DEFAULT '0',
  `prjmon_assistance_post_harvest` tinyint(1) unsigned DEFAULT '0',
  `prjmon_assistance_marketing` tinyint(1) unsigned DEFAULT '0',
  `prjmon_assistance_training` text,
  `prjmon_assistance_consultancy` text,
  `prjmon_assistance_others` text,
  `prjmon_problems_met` text,
  `prjmon_actions_taken` text,
  `prjmon_improvement_action_plan` text,
  `prjmon_status_of_funds` text,
  `prjmon_reasons_for_termination` text,
  `prjmon_final_obligation` text,
  `prjmon_impact_of_intervention` text,
  `prjmon_final_recommendation` text,
  `prjmon_expected_output` text,
  `prjmon_actual_accomplishment` text,
  `prjmon_output_remarks` text,
  `prjmon_liquidation_cost` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_liquidation_used` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_liquidation_date` date DEFAULT NULL,
  `prjmon_liquidation_remarks` text,
  `prjmon_refund_amount` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_refund_schedule_from` date DEFAULT NULL,
  `prjmon_refund_schedule_to` date DEFAULT NULL,
  `prjmon_refund_amount_due` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_refund_date` date DEFAULT NULL,
  `prjmon_refund_refunded` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_refund_unsettled` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_refund_delay_date` date DEFAULT NULL,
  `prjmon_setup_amount` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_funds_release_date` date DEFAULT NULL,
  `prjmon_refund_period_from` date DEFAULT NULL,
  `prjmon_refund_period_to` date DEFAULT NULL,
  `prjmon_termination_date` date DEFAULT NULL,
  `prjmon_remarks` text,
  `prjmon_effectivity` date DEFAULT NULL,
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `prjform_id` bigint(20) unsigned DEFAULT '0',
  `prjmon_volume_product_name` varchar(255) DEFAULT '',
  `prjmon_volume_of_production` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_volume_gross_sales` decimal(65,3) unsigned DEFAULT '0.000',
  `prjmon_emp_total` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_male` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_female` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_pwd` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_indirect_forward_male` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_indirect_forward_female` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_indirect_backward_male` bigint(20) unsigned DEFAULT '0',
  `prjmon_emp_indirect_backward_female` bigint(20) unsigned DEFAULT '0',
  `prjmon_market_existing` text,
  `prjmon_market_new` text,
  `prjmon_improvement_production_efficiency` text CHARACTER SET utf8,
  PRIMARY KEY (`prjmon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_monitoring`
--

LOCK TABLES `psi_project_monitoring` WRITE;
/*!40000 ALTER TABLE `psi_project_monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_pis`
--

DROP TABLE IF EXISTS `psi_project_pis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_pis` (
  `prjpis_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `prjpis_year` int(10) unsigned DEFAULT '2017',
  `quarter_id` int(10) unsigned DEFAULT '1',
  `sem_id` bigint(20) unsigned DEFAULT '1',
  `prjpis_total_assets_land` decimal(65,3) unsigned DEFAULT '0.000',
  `prjpis_total_assets_building` decimal(65,3) unsigned DEFAULT '0.000',
  `prjpis_total_assets_equipment` decimal(65,3) unsigned DEFAULT '0.000',
  `prjpis_total_assets_working_capital` decimal(65,3) unsigned DEFAULT '0.000',
  `prjpis_total_employment` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_regular_male` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_regular_female` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_regular_pwd` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_regular_senior` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_part_time_male` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_part_time_female` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_part_time_pwd` int(10) unsigned DEFAULT '0',
  `prjpis_dir_ch_part_time_senior` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_regular_male` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_regular_female` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_regular_pwd` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_regular_senior` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_part_time_male` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_part_time_female` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_part_time_pwd` int(10) unsigned DEFAULT '0',
  `prjpis_dir_sh_part_time_senior` int(10) unsigned DEFAULT '0',
  `prjpis_indir_backward_male` int(10) unsigned DEFAULT '0',
  `prjpis_indir_backward_female` int(10) unsigned DEFAULT '0',
  `prjpis_indir_backward_pwd` int(10) unsigned DEFAULT '0',
  `prjpis_indir_backward_senior` int(10) unsigned DEFAULT '0',
  `prjpis_indir_forward_male` int(10) unsigned DEFAULT '0',
  `prjpis_indir_forward_female` int(10) unsigned DEFAULT '0',
  `prjpis_indir_forward_pwd` int(10) unsigned DEFAULT '0',
  `prjpis_indir_forward_senior` int(10) unsigned DEFAULT '0',
  `prjpis_volume_production_local` decimal(65,3) DEFAULT '0.000',
  `prjpis_volume_production_export` decimal(65,3) DEFAULT '0.000',
  `prjpis_gross_sales_local` decimal(65,3) DEFAULT '0.000',
  `prjpis_gross_sales_export` decimal(65,3) DEFAULT '0.000',
  `prjpis_countries_of_destination` text,
  `prjpis_assistance_process` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_equipment` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_quality_control` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_packaging_labeling` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_post_harvest` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_marketing` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_training_text` text,
  `prjpis_assistance_consultancy_text` text,
  `prjpis_assistance_others_text` text,
  `prjpis_remarks` text,
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `prjform_id` bigint(20) unsigned DEFAULT '0',
  `prjpis_assistance_training` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_consultancy` tinyint(1) unsigned DEFAULT '0',
  `prjpis_assistance_process_text` text,
  `prjpis_assistance_quality_control_text` text,
  `prjpis_assistance_post_harvest_text` text,
  `prjpis_assistance_marketing_text` text,
  `prjpis_assistance_others` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`prjpis_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_pis`
--

LOCK TABLES `psi_project_pis` WRITE;
/*!40000 ALTER TABLE `psi_project_pis` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_pis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_sectors`
--

DROP TABLE IF EXISTS `psi_project_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_sectors` (
  `prjsect_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `sector_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`prjsect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_sectors`
--

LOCK TABLES `psi_project_sectors` WRITE;
/*!40000 ALTER TABLE `psi_project_sectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_sites`
--

DROP TABLE IF EXISTS `psi_project_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_sites` (
  `prj_site_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_site_date` date DEFAULT NULL,
  `prj_site_remarks` text,
  `prj_site_address` text,
  `prj_site_longitude` double DEFAULT '0',
  `prj_site_latitude` double DEFAULT '0',
  `prj_site_elevation` double DEFAULT '0',
  `brand_id` bigint(20) unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `province_id` bigint(20) unsigned DEFAULT '0',
  `city_id` bigint(20) unsigned DEFAULT '0',
  `barangay_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`prj_site_id`),
  UNIQUE KEY `prj_site_id_UNIQUE` (`prj_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_sites`
--

LOCK TABLES `psi_project_sites` WRITE;
/*!40000 ALTER TABLE `psi_project_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_status`
--

DROP TABLE IF EXISTS `psi_project_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_status` (
  `prj_status_id` bigint(20) unsigned NOT NULL,
  `prj_status_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`prj_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_status`
--

LOCK TABLES `psi_project_status` WRITE;
/*!40000 ALTER TABLE `psi_project_status` DISABLE KEYS */;
INSERT INTO `psi_project_status` VALUES (1,'On-going'),(3,'New'),(4,'Graduated'),(5,'Deferred'),(6,'Terminated'),(7,'Widthdrawn');
/*!40000 ALTER TABLE `psi_project_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_status_history`
--

DROP TABLE IF EXISTS `psi_project_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_status_history` (
  `psh_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `psh_date` datetime DEFAULT NULL,
  `prj_status_id` bigint(20) unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`psh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_status_history`
--

LOCK TABLES `psi_project_status_history` WRITE;
/*!40000 ALTER TABLE `psi_project_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_project_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_project_types`
--

DROP TABLE IF EXISTS `psi_project_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_project_types` (
  `prj_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`prj_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_project_types`
--

LOCK TABLES `psi_project_types` WRITE;
/*!40000 ALTER TABLE `psi_project_types` DISABLE KEYS */;
INSERT INTO `psi_project_types` VALUES (8,'Roll-out'),(6,'SETUP'),(9,'TAPI-assisted'),(12,'GIA (Community Based)'),(13,'GIA (Region-initiated Projects)');
/*!40000 ALTER TABLE `psi_project_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_projects`
--

DROP TABLE IF EXISTS `psi_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_projects` (
  `prj_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prj_title` varchar(255) DEFAULT '',
  `prj_code` varchar(255) DEFAULT NULL,
  `prj_year_approved` int(10) unsigned DEFAULT '2015',
  `prj_objective` text,
  `prj_expected_output` text,
  `prj_product_line` text,
  `prj_cost_setup` double unsigned DEFAULT '0',
  `prj_cost_gia` double unsigned DEFAULT '0',
  `prj_cost_rollout` double unsigned DEFAULT '0',
  `prj_cost_benefactor` double unsigned DEFAULT '0',
  `prj_cost_other` double unsigned DEFAULT '0',
  `prj_fund_release_date` date DEFAULT NULL,
  `prj_intervention` varchar(255) DEFAULT '',
  `prj_longitude` double unsigned DEFAULT '0',
  `prj_latitude` double unsigned DEFAULT '0',
  `prj_elevation` double unsigned DEFAULT '0',
  `prj_type_id` bigint(20) unsigned DEFAULT '0',
  `prj_status_id` bigint(20) unsigned DEFAULT '0',
  `prj_remarks` text,
  `ru_id` bigint(20) unsigned DEFAULT '0',
  `province_id` bigint(20) unsigned DEFAULT '0',
  `city_id` bigint(20) unsigned DEFAULT '0',
  `barangay_id` bigint(20) unsigned DEFAULT '0',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `prj_refund_period_from` date DEFAULT NULL,
  `prj_refund_period_to` date DEFAULT NULL,
  `prj_province` varchar(255) DEFAULT '',
  `prj_city` varchar(255) DEFAULT '',
  `prj_barangay` varchar(255) DEFAULT '',
  `prj_address` text CHARACTER SET utf8,
  `sector_id` bigint(20) unsigned DEFAULT '0',
  `prj_pis_total_assets_land` decimal(65,3) unsigned DEFAULT '0.000',
  `prj_pis_total_assets_building` decimal(65,3) unsigned DEFAULT '0.000',
  `prj_pis_total_assets_equipment` decimal(65,3) unsigned DEFAULT '0.000',
  `prj_pis_total_assets_working_capital` decimal(65,3) unsigned DEFAULT '0.000',
  `prj_pis_total_employment` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_regular_male` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_regular_female` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_regular_pwd` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_regular_senior` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_part_time_male` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_part_time_female` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_part_time_pwd` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_ch_part_time_senior` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_regular_male` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_regular_female` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_regular_pwd` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_regular_senior` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_part_time_male` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_part_time_female` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_part_time_pwd` int(10) unsigned DEFAULT '0',
  `prj_pis_dir_sh_part_time_senior` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_backward_male` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_backward_female` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_backward_pwd` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_backward_senior` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_forward_male` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_forward_female` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_forward_pwd` int(10) unsigned DEFAULT '0',
  `prj_pis_indir_forward_senior` int(10) unsigned DEFAULT '0',
  `prj_pis_volume_production_local` decimal(65,3) DEFAULT '0.000',
  `prj_pis_volume_production_export` decimal(65,3) DEFAULT '0.000',
  `prj_pis_gross_sales_local` decimal(65,3) DEFAULT '0.000',
  `prj_pis_gross_sales_export` decimal(65,3) DEFAULT '0.000',
  `prj_pis_countries_of_destination` text,
  `prj_pis_assistance_process` text,
  `prj_pis_assistance_equipment` text,
  `prj_pis_assistance_quality_control` text,
  `prj_pis_assistance_packaging_labeling` text,
  `prj_pis_assistance_post_harvest` text,
  `prj_pis_assistance_marketing` text,
  `prj_pis_assistance_training` text,
  `prj_pis_assistance_consultancy` text,
  `prj_pis_assistance_others` text,
  `prj_pis_remarks` text,
  `prj_pis_assistance_conceptualization` text,
  `prj_pis_assistance_proposal_preparation` text,
  `prj_cost_benefactor_desc` text,
  `prj_fundingsource_local` tinyint(1) unsigned DEFAULT '0',
  `prj_fundingsource_external` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`prj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_projects`
--

LOCK TABLES `psi_projects` WRITE;
/*!40000 ALTER TABLE `psi_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_provinces`
--

DROP TABLE IF EXISTS `psi_provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_provinces` (
  `province_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `region_id` bigint(20) unsigned DEFAULT '0',
  `province_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_provinces`
--

LOCK TABLES `psi_provinces` WRITE;
/*!40000 ALTER TABLE `psi_provinces` DISABLE KEYS */;
INSERT INTO `psi_provinces` VALUES (1,1,'NCR - Capital District'),(2,1,'NCR - Eastern Manila District'),(3,1,'NCR - Northern Manila District (CAMANAVA)'),(4,1,'NCR - Southern Manila District'),(5,2,'Abra'),(6,2,'Apayao'),(7,2,'Benguet'),(8,2,'Ifugao'),(9,2,'Kalinga'),(10,2,'Mountain Province'),(11,3,'Ilocos Norte'),(12,3,'Ilocos Sur'),(13,3,'La Union'),(14,3,'Pangasinan'),(15,4,'Batanes'),(16,4,'Cagayan'),(17,4,'Isabela'),(18,4,'Nueva Vizcaya'),(19,4,'Quirino'),(20,5,'Aurora'),(21,5,'Bataan'),(22,5,'Bulacan'),(23,5,'Nueva Ecija'),(24,5,'Pampanga'),(25,5,'Tarlac'),(26,5,'Zambales'),(27,6,'Batangas'),(28,6,'Cavite'),(29,6,'Laguna'),(30,6,'Quezon'),(31,6,'Rizal'),(32,7,'Marinduque'),(33,7,'Occidental Mindoro'),(34,7,'Oriental Mindoro'),(35,7,'Palawan'),(36,7,'Romblon'),(37,8,'Albay'),(38,8,'Camarines Norte'),(39,8,'Camarines Sur'),(40,8,'Catanduanes'),(41,8,'Masbate'),(42,8,'Sorsogon'),(43,9,'Aklan'),(44,9,'Antique'),(45,9,'Capiz'),(46,9,'Guimaras'),(47,9,'Iloilo'),(48,9,'Negros Occidental'),(49,10,'Bohol'),(50,10,'Cebu'),(51,10,'Negros Oriental'),(52,10,'Siquijor'),(53,11,'Biliran'),(54,11,'Eastern Samar'),(55,11,'Leyte'),(56,11,'Northern Samar'),(57,11,'Samar'),(58,11,'Southern Leyte'),(59,12,'Zamboanga del Norte'),(60,12,'Zamboanga del Sur'),(61,12,'Zamboanga Sibugay'),(62,13,'Bukidnon'),(63,13,'Camiguin'),(64,13,'Lanao del Norte'),(65,13,'Misamis Occidental'),(66,13,'Misamis Oriental'),(67,14,'Compostela Valley'),(68,14,'Davao del Norte'),(69,14,'Davao del Sur'),(70,14,'Davao Oriental'),(71,14,'Davao Occidental'),(72,15,'Cotabato'),(73,15,'Sarangani'),(74,15,'South Cotabato'),(75,15,'Sultan Kudarat'),(76,16,'Agusan del Norte'),(77,16,'Agusan del Sur'),(78,16,'Dinagat Islands'),(79,16,'Surigao del Norte'),(80,16,'Surigao del Sur'),(81,17,'Lanao del Sur'),(82,17,'Maguindanao'),(83,17,'Sulu'),(84,17,'Tawi-Tawi'),(85,17,'Basilan');
/*!40000 ALTER TABLE `psi_provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_quarters`
--

DROP TABLE IF EXISTS `psi_quarters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_quarters` (
  `quarter_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quarter_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`quarter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_quarters`
--

LOCK TABLES `psi_quarters` WRITE;
/*!40000 ALTER TABLE `psi_quarters` DISABLE KEYS */;
INSERT INTO `psi_quarters` VALUES (1,'1st Quarter'),(2,'2nd Quarter'),(3,'3rd Quarter'),(4,'4th Quarter');
/*!40000 ALTER TABLE `psi_quarters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_regions`
--

DROP TABLE IF EXISTS `psi_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_code` varchar(255) DEFAULT '',
  `region_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_regions`
--

LOCK TABLES `psi_regions` WRITE;
/*!40000 ALTER TABLE `psi_regions` DISABLE KEYS */;
INSERT INTO `psi_regions` VALUES (1,'NCR','National Capital Region'),(2,'CAR','Cordillera Administrative Region'),(3,'Region I','Ilocos Region'),(4,'Region II','Cagayan Valley'),(5,'Region III','Central Luzon'),(6,'Region IV-A','CALABARZON'),(7,'Region IV-B','MIMAROPA'),(8,'Region V','Bicol Region'),(9,'Region VI','Western Visayas'),(10,'Region VII','Central Visayas'),(11,'Region VIII','Eastern Visayas'),(12,'Region IX','Zamboanga Peninsula'),(13,'Region X','Northern Mindanao'),(14,'Region XI','Davao Region'),(15,'Region XII','SOCCSKSARGEN'),(16,'CARAGA','Caraga Region'),(17,'ARMM','Autonomous Region in Muslim Mindanao');
/*!40000 ALTER TABLE `psi_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_repayment_checks`
--

DROP TABLE IF EXISTS `psi_repayment_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_repayment_checks` (
  `rep_check_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rep_check_no` varchar(255) DEFAULT '',
  `rep_check_date` date DEFAULT NULL,
  `rep_check_amount` decimal(63,3) unsigned DEFAULT '0.000',
  `rep_check_used` tinyint(1) unsigned DEFAULT '0',
  `rep_check_remarks` text,
  `rep_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` date DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`rep_check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_repayment_checks`
--

LOCK TABLES `psi_repayment_checks` WRITE;
/*!40000 ALTER TABLE `psi_repayment_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_repayment_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_repayments`
--

DROP TABLE IF EXISTS `psi_repayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_repayments` (
  `rep_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rep_start_year` int(10) unsigned DEFAULT '0',
  `rep_start_month` int(10) unsigned DEFAULT '1',
  `rep_amount` decimal(65,3) unsigned DEFAULT '0.000',
  `rep_month_count` int(10) unsigned DEFAULT '36',
  `rep_otb_paid` tinyint(1) unsigned DEFAULT '0',
  `rep_monthly_payment` decimal(65,3) unsigned DEFAULT '0.000',
  `rep_ub_amount` decimal(65,3) unsigned DEFAULT '0.000',
  `rep_ub_receipt_no` varchar(255) DEFAULT '',
  `rep_ub_check_no` varchar(255) DEFAULT '',
  `rep_ub_check_date` date DEFAULT NULL,
  `rep_add_amount` decimal(65,3) unsigned DEFAULT '0.000',
  `rep_add_check_no` varchar(255) DEFAULT '',
  `rep_add_check_date` date DEFAULT NULL,
  `rep_remarks` text,
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  `rep_otb` decimal(65,3) unsigned DEFAULT '0.000',
  PRIMARY KEY (`rep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_repayments`
--

LOCK TABLES `psi_repayments` WRITE;
/*!40000 ALTER TABLE `psi_repayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_repayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_repayments_payment_types`
--

DROP TABLE IF EXISTS `psi_repayments_payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_repayments_payment_types` (
  `pay_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pay_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`pay_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_repayments_payment_types`
--

LOCK TABLES `psi_repayments_payment_types` WRITE;
/*!40000 ALTER TABLE `psi_repayments_payment_types` DISABLE KEYS */;
INSERT INTO `psi_repayments_payment_types` VALUES (1,'Cash'),(2,'Check');
/*!40000 ALTER TABLE `psi_repayments_payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_repayments_payments`
--

DROP TABLE IF EXISTS `psi_repayments_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_repayments_payments` (
  `pay_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pay_year` int(10) unsigned DEFAULT '2015',
  `pay_month` int(10) unsigned DEFAULT '1',
  `pay_count` int(10) unsigned DEFAULT '1',
  `pay_level` int(10) unsigned DEFAULT '1',
  `pay_amount_due` decimal(65,3) DEFAULT '0.000',
  `pay_amount_paid` decimal(65,3) unsigned DEFAULT '0.000',
  `pay_amount_date_paid` date DEFAULT NULL,
  `pay_check_no` varchar(255) DEFAULT '',
  `pay_check_date` date DEFAULT NULL,
  `pay_receipt_no` varchar(255) DEFAULT '',
  `pay_type_id` bigint(20) unsigned DEFAULT '0',
  `pay_otb` tinyint(1) unsigned DEFAULT '0',
  `pay_penalty_amount_due` decimal(65,3) unsigned DEFAULT '0.000',
  `pay_penalty_amount_paid` decimal(65,3) unsigned DEFAULT '0.000',
  `pay_penalty_date_paid` date DEFAULT NULL,
  `pay_remarks` text,
  `pay_overdue_amount_due` decimal(65,3) unsigned DEFAULT '0.000',
  `pay_overdue_amount_paid` decimal(65,3) unsigned DEFAULT '0.000',
  `pay_overdue_date_paid` date DEFAULT NULL,
  `rep_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_repayments_payments`
--

LOCK TABLES `psi_repayments_payments` WRITE;
/*!40000 ALTER TABLE `psi_repayments_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_repayments_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_responsible_units`
--

DROP TABLE IF EXISTS `psi_responsible_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_responsible_units` (
  `ru_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ru_name` varchar(255) DEFAULT '',
  `ru_abbr` varchar(255) DEFAULT '',
  PRIMARY KEY (`ru_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_responsible_units`
--

LOCK TABLES `psi_responsible_units` WRITE;
/*!40000 ALTER TABLE `psi_responsible_units` DISABLE KEYS */;
INSERT INTO `psi_responsible_units` VALUES (1,'Provincial Science and Technology Center - Laguna','PSTC-Laguna');
/*!40000 ALTER TABLE `psi_responsible_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_scholarship_monitoring`
--

DROP TABLE IF EXISTS `psi_scholarship_monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_scholarship_monitoring` (
  `scholar_mon_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scholar_mon_year_from` int(10) unsigned DEFAULT '0',
  `scholar_mon_year_to` int(10) unsigned DEFAULT '0',
  `scholar_mon_no_examinees` int(10) unsigned DEFAULT '0',
  `scholar_mon_no_qualifiers` int(10) unsigned DEFAULT '0',
  `scholar_mon_no_ongoing` int(10) unsigned DEFAULT '0',
  `scholar_mon_no_graduates` int(10) unsigned DEFAULT '0',
  `scholar_mon_remarks` text,
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`scholar_mon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_scholarship_monitoring`
--

LOCK TABLES `psi_scholarship_monitoring` WRITE;
/*!40000 ALTER TABLE `psi_scholarship_monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_scholarship_monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_scholarship_programs`
--

DROP TABLE IF EXISTS `psi_scholarship_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_scholarship_programs` (
  `scholar_prog_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scholar_prog_name` varchar(255) DEFAULT '',
  `scholar_prog_desc` text,
  PRIMARY KEY (`scholar_prog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_scholarship_programs`
--

LOCK TABLES `psi_scholarship_programs` WRITE;
/*!40000 ALTER TABLE `psi_scholarship_programs` DISABLE KEYS */;
INSERT INTO `psi_scholarship_programs` VALUES (1,'Proj. 5801','Project 5801'),(2,'R.A. 7687','Republic Act No. 7687'),(3,'Merit','Merit'),(4,'JLAP - RA 7687','Junior Level Assistance Program - RA'),(5,'JLAP - Merit','Junior Level Assistance Program - Merit'),(6,'JLSS - Project GIFTS','Junior Level Science Scholarship - Project GIFTS for the Disadvantaged'),(7,'JLSS - Merit','Junior Level Science Scholarship - Merit'),(8,'S&TSSCS - RA 7687','S&T Scholarhsips for Sophomore College Students - RA'),(9,'S&TSSCS - Merit','S&T Scholarhsips for Sophomore College Students - Merit');
/*!40000 ALTER TABLE `psi_scholarship_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_scholarship_status`
--

DROP TABLE IF EXISTS `psi_scholarship_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_scholarship_status` (
  `scholar_stat_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scholar_stat_name` varchar(255) DEFAULT '',
  `scholar_stat_abbr` varchar(255) DEFAULT '',
  PRIMARY KEY (`scholar_stat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_scholarship_status`
--

LOCK TABLES `psi_scholarship_status` WRITE;
/*!40000 ALTER TABLE `psi_scholarship_status` DISABLE KEYS */;
INSERT INTO `psi_scholarship_status` VALUES (1,'Good Standing','GS'),(2,'Suspended','SUS'),(3,'Leave of Absence','LOA'),(4,'No Report','NR'),(5,'Continue with Warning','CW'),(6,'Withdrew','W'),(7,'Terminated','TERM'),(8,'Graduated','GRAD'),(10,'Non-Compliance','NC');
/*!40000 ALTER TABLE `psi_scholarship_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_scholarship_status_history`
--

DROP TABLE IF EXISTS `psi_scholarship_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_scholarship_status_history` (
  `schst_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `schst_date` datetime DEFAULT NULL,
  `scholar_stat_id` bigint(20) unsigned DEFAULT '0',
  `scholar_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` date DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`schst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_scholarship_status_history`
--

LOCK TABLES `psi_scholarship_status_history` WRITE;
/*!40000 ALTER TABLE `psi_scholarship_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_scholarship_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_scholarships`
--

DROP TABLE IF EXISTS `psi_scholarships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_scholarships` (
  `scholar_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scholar_fname` varchar(255) DEFAULT '',
  `scholar_mname` varchar(255) DEFAULT '',
  `scholar_lname` varchar(255) DEFAULT '',
  `scholar_suffix` varchar(255) DEFAULT '',
  `scholar_mobile` varchar(255) DEFAULT '',
  `scholar_email` varchar(255) DEFAULT '',
  `scholar_address` text,
  `scholar_year_award` int(10) unsigned DEFAULT '0',
  `scholar_remarks` text,
  `scholar_stat_id` bigint(20) unsigned DEFAULT '0',
  `scholar_prog_id` bigint(20) unsigned DEFAULT '0',
  `school_id` bigint(20) unsigned DEFAULT '0',
  `course_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`scholar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_scholarships`
--

LOCK TABLES `psi_scholarships` WRITE;
/*!40000 ALTER TABLE `psi_scholarships` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_scholarships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_schools`
--

DROP TABLE IF EXISTS `psi_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_schools` (
  `school_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) DEFAULT '',
  `school_acronym` varchar(255) DEFAULT '',
  `school_address` text,
  `school_coordinator` varchar(255) DEFAULT '',
  `school_email` varchar(255) DEFAULT '',
  `school_phone` varchar(255) DEFAULT '',
  `school_mobile` varchar(255) DEFAULT '',
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_schools`
--

LOCK TABLES `psi_schools` WRITE;
/*!40000 ALTER TABLE `psi_schools` DISABLE KEYS */;
INSERT INTO `psi_schools` VALUES (1,'ACTS Computer College - Sta. Cruz Campus','ACTSCC - SCC','P. Guevarra Ave. cor. A. Bonifacio St., Sta. Cruz, Laguna, 4009','','actscc@digitelone.com\r','(049) 808-1484 / (049) 808-1863',''),(2,'Adventist University of the Philippines - Silang Campus','AUP - SC','Puting Kahoy, Silang, Cavite, 4118','','president@aup.edu.ph\r','(049) 541-1211 / (049) 541-1229',''),(3,'Aguinaldo State College - Dasmari¤as Campus','ASC - DC','Dasmari¤as City, Cavite','','\r','',''),(4,'AMA Computer College - East Rizal Campus','ACS -ERC','AMA Bldg., Brgy. Mayamot Marcus Hi-way, Antipolo City, Rizal, 1870','','feedback@amauniversity.net\r','(02) 677-6559 / (02) 682-2522',''),(5,'AMA Computer College - Batangas City Campus','ACS - BCC','AMA Bldg., Caedo Commercial Center, Bolbok, Batangas City, Batangas, 4200','','mdcaseda@ames.edu.ph\r','(043) 980-5578 / (043) 723-8348',''),(6,'AMA Computer College - Bi¤an Campus','ACS - BC','Kilometer 32, National Highway, Canlalay, Bi¤an, Laguna, 4024','','gvbeltran@amaes.edu.ph\r','(02) 698-6312 / (02) 694-3049',''),(7,'AMA Computer College - Calamba City Campus','ACS - CCC','F.P. Perez Building National Highway Parian, Calamba City, Laguna, 4027','','amacc.calamba@amaes.edu.ph\r','(049) 545-5415 / (049) 545-5418',''),(8,'AMA Computer College - Dasmari¤as Campus','ACS - DC','Heritage Bldg., Congressional, East Ave., Barrio Burol, Dasmari¤as, Cavite','','amacc_cavite@yahoo.com\r','(046)850-2250 / (049)416-1669',''),(9,'AMA Computer College - Lipa City Campus','ACS - LBCC','Dimaano Bldg. Ayala Highway, Lipa City, Batangas, 4217','','amacc.LIPA@amares.edu.ph\r','(043) 981-3034 / (043)312-0159',''),(10,'AMA Computer College - Lucena City Campus','ACS - LQCC','Tantuco Bldg., 160 ML Tagarao St. Brgy. Iyam, Lucena City','','amacc.lucena@amaes.edu.ph\r','(042) 373-7133 / (042) 373-7130',''),(11,'AMA Computer College - Sta Cruz Campus','ACS - SCC','NG Cha Bldg., P. Guevarra St., Sta. Cruz, Laguna','','leda@scl.amacc.edu.ph\r','(049) 808-2974 / (049) 808-2977',''),(12,'AMA Computer Learning Center - Antipolo City Campus','ACLC - ACC','4F Femar Bldg., ML Quezon Avenue, Antipolo City','','\r','',''),(13,'AMA Computer Learning Center - Bacoor Campus','ACLC - BC','3/F Bacoor Business Center, Aguinaldo Hi-way, Bacoor Cavite','','\r','(046) 970-3203',''),(14,'AMA Computer Learning Center - Batangas City Campus','ACLC - BCC','MBC Bldg., P. Burgos St., Batangas City','','\r','(043) 300-6909',''),(15,'AMA Computer Learning Center - Calamba City Campus','ACLC - CCC','Calamba City, Laguna','','\r','',''),(16,'AMA Computer Learning Center - Dasmarinas Campus','ACLC - DC','L4 B3 Hernandez Bldg.,  Pasong Tala, Dasmari¤as Cavite','','amadasma@yahoo.com \r','(046) 973-0394',''),(17,'AMA Computer Learning Center - Lipa City Campus','ACLC - LBCC','Guadalupe Plaza, Lina St., cor. Recto St., Lipa City, Batangas','','\r','(043) 312-0082',''),(18,'AMA Computer Learning Center - Lucena City Campus','ACLC - LQCC','Lucena City, Quezon','','\r','',''),(19,'AMA Computer Learning Center - Rosario Campus','ACLC - RC','Rosario, Batangas','','\r','',''),(20,'AMA Computer Learning Center - Bacoor Campus','ACLC - BC','3rd Floor Bacoor Business Center Aguinaldo Hi-way, Bacoor, Cavite','','aclcbacoor@yahoo.com\r','(046) 471-3401 / 970-2243',''),(21,'AMA Computer Learning Center - San Pablo City Campus','ACLC - SPCC','Jamora Bldg., Lopez Jaena St. San Pablo City, Laguna, 4000','','amylou.cruz@ama.edu.ph\r','(049) 562-4142',''),(22,'AMA Computer Learning Center - San Pedro Campus','ACLC - SPC','33 A. Mabini Street, San Pedro, Laguna','','\r','(02) 868-8541 / 869-0441',''),(23,'AMA Computer Learning Center - Silang Campus','ACLC - SC','Kapial Sayos St., San Vicente II, Silang, Cavite','','\r','(046) 4141132 / \n(046) 4141136',''),(24,'AMA Computer Learning Center - Sta. Cruz Campus','ACLC - SCC','2F EM Bldg., 1656 P. Burgos St., Sta. Cruz, Laguna','','\r','(049) 808-5383 / 2',''),(25,'AMA Computer Learning Center - Tanay Campus','ACLC - TC','Tanay, Rizal','','\r','',''),(26,'AMA Telecommunications & Electronics Learning Center - Oriental Mindoro Campus','ATELC - OMC','JP Rizal San Vicente Calapan City, Calapan, Oriental Mindoro, Philippines 5200','','dr_acula@dr.com\r','(043) 288-3574 / (043) 288-3576',''),(27,'Aurora State College of Technology','ASCOT','Sitio Dicaloyungan, Brgy. Zabali, 3200 Baler, Aurora','','ascotbaler@hotmail.com\r','(02) 373-5318',''),(28,'Batangas State University - Alangilan Campus (Main II)','BSU - AC','Gov. Pablo Borbon Campus II, \n\nGolden Country Homes, Alangilan, Batangas City\n\nPhilippines 4200\n','','\r','(043) 300-4404 local 107',''),(29,'Batangas State University - Balayan Campus','BSU - BC','Balayan, Batangas','','\r','(043) 921-3013',''),(30,'Batangas State University - Batangas City Campus (Main I)','BSU - BCC','Gov. Pablo Borbon Campus I, \n\nRizal Avenue Extension, Batangas City\n\nPhilippines 4200\n','Mrs. Jonelyn B. Sandoval','\r','(043) 300-2202 local 126 / 115',''),(31,'Batangas State University - Lemery Campus','BSU - LC','Raja Matanda St., Bagong Sikat Lemery, Batangas','','\r','(043) 411-0660',''),(32,'Batangas State University - Lipa City Campus','BSU - LCC','Don Claro M. Recto Campus Lipa City, Marawoy, Lipa City, Batangas 4217','','\r','(043) 756-7901 / (043) 312-2822',''),(33,'Batangas State University - JLPC Malvar Campus','BSU - MC','G. Leviste St., Brgy. Poblacion, Malvar, Batangas','','batstateu_malvar@yahoo.com\r','(043) 778-2170 / (043) 778-5461',''),(34,'Batangas State University - ARASOF Nasugbu Campus','BSU - NC','Barangay Bucana, Nasugbu Batangas, 4231','','bsu.arasof_cte@yahoo.com\r','(043) 931-1343ÿ/ (043) 931-3822',''),(35,'Batangas State University - Rosario Campus','BSU - RC','Namunga, Rosario, Batangas 4225 ','','\r','(043) 321-0861',''),(36,'Cavite State University - Don Severino (Main Campus)','CvSU - DSC','Bancod, Indang, Cavite 4122','','\r','(046) 415-0012 / (046) 415-0014 to 18 local 215',''),(37,'Cavite State University - Rosario Campus (College of Arts and Trade)','CvSU - RC','Brgy. Tejeros Convention, Rosario, Cavite','','\r','(046) 437-7776',''),(38,'Cavite State University - Naic Campus (College of Fisheries)','CvSU - NC','Bucana, Naic, Cavite','','\r','(046) 856-0942',''),(39,'Cavite State University - Imus Campus (College of Business and Entrepreneurship)','CvSU - IC','Aguinaldo Highway, Palico 4, Imus, Cavite','','\r','(046) 471-6770',''),(40,'Cavite State University - Cavite City Campus','CvSU - CCC','Pulo II, Cavite City, Cavite, 4100','','\r','(046) 431-3580',''),(41,'Cavite State University - Carmona Campus','CvSU - CC','J.M. Loyola, Carmona, Cavite','','\r','(046) 430-3002',''),(42,'Cavite State University - Bacoor Campus','CvSU - BC','Queensrow-Central, Molino III Bacoor, Cavite','','\r','(046) 872-5308',''),(43,'Cavite State University - Trece Martires Campus','CvSU - TMC','Brgy. Osorio, Trece Martires City, Cavite','','\r','(046) 415-0010 / 0920-463-1442',''),(44,'Cavite State University - Tanza Campus','CvSU - TC','Tanza, Cavite','','\r','0918-8124796',''),(45,'Cavite State University - Silang Campus','CvSU - SC','J Rizal, Biga 1, Silang, Cavite 4118','','\r','(046) 865 0079 / (046) 414-2325',''),(46,'Colegio de San Juan de Letran de Calamba','CSJLC','Ipil-ipil St., Bo. Bucal, Calamba City, Laguna, 4027','','Rector@Letran-Calamba.net\r','(049) 545-1829 / 545-5453',''),(47,'Colegio de San Pedro','CSP','Phase IA, Pacita Complex I, San Pedro, Laguna 4023','','cdsp@ambitec.com.ph\r','(02) 529-3905 / (02) 847-5535',''),(48,'Computer Learning Center of Calapan','CLCC','J.P. Rizal Street, Lalud, Calapan City, Oriental Mindoro 5200','','rtm_ph@yahoo.com\r','(043) 286-7289 / (043) 288-2084',''),(49,'De La Salle University - Dasmarinas Campus','DLSU - DC','DBB-B City of Dasmari¤as, Bagong Bayan, Dasmarinas, Cavite 4115','','\r','(046) 416-4531 / (046) 481-1900 / 0922-287-5207',''),(50,'De La Salle University - Lipa City Campus','DLSU - LCC','J.P. Laurel Nat\'l. H-way, Lipa City, Batangas 4217','','info@lasalipa.edu.ph\r','(043) 756-2391/756-1887/9813118',''),(51,'Divine Word College of Calapan','DWCC','Infantado St., Sta. Marica Village, Calapan City, Oriental Mindoro 5200','','divine@dwcc.edu.ph\r','(043) 288-5586 / 441-0545',''),(52,'Don Bosco - Canlubang Campus','DB - CC','Jose Yulo Sr. Blvd., Canlubang, Laguna 4028','','db_col@laguna.net\r','(049) 549-3404/549-2307',''),(53,'Don Severino Agricultural College','DSAC','Bancod, Indang, Cavite 4122','','\r','(046) 415-0012 / (046) 415-0014 to 18 local 215',''),(54,'Dualtech Training Center Foundation Inc. - Canlubang Campus','DTCFI - CC','Don Ramon A. Yulo Campus, Productivity Drive, Carmelray Industrial Park 1, Canlubang, Calamba City, 4028 Laguna','','\r','(049) 549-1701 / 0917 801 2652',''),(55,'Education Science & Technology Institute - Marinduque Campus','ESTI - MC','Gov. D. Reyes St. Brgy. Murallon, Boac, Marinduque','','\r','(042) 475 1302',''),(56,'Education Science & Technology Institute - Romblon Campus','ESTI - RC','Odiongan, Romblon','','\r','',''),(57,'Emilio Aguinaldo College - Dasmarinas Campus','EAC - DC','Congressional East Ave., Burol Main, City of Dasmari¤as, Cavite 4114','','\r','(046) 416-4341 to 42',''),(58,'Filipino Academy of Science & Technology - Batangas City Campus','FAST - BCC','De Joya Compound Extension, Kumintang Ilaya, Batangas City','','\r','(043) 300-0188/300-0191',''),(59,'Filipino Academy of Science & Technology - Oriental Mindoro Campus','FAST - OMC','Salong, Calapan, Oriental Mindoro','','\r','(043) 288-8103',''),(60,'First Asia Institute of Technology and Humanities','FAITH','2 Pres. Laurel Highway, Tanauan City, Batangs','','Inquiries@firstasia.edu.ph\r','(043) 778-0656 / 4136',''),(61,'Fullbright College - Puerto Princesa City Campus','FC - PPCC','Km. 5 National Highway cor. Mangga St., Brg. San Jose, Puerto Princesa City, Palawan 5300','','fulbrightpalawan@hotmail.com\r','(048) 434-3095 / (048) 434-3096/97',''),(62,'Granby College of Science & Technology - Cavite Campus','GCST - CC','265-A Ibayo Silangan, Naic, Cavite','','\r','(046) 421-0437 / (046) 507-0989',''),(63,'Institute of Creative Computer Technology - Cainta Campus','ICCT - CC','V.V. Soliven Ave., II Bgy. San Isidro, Cainta, Rizal 1900','','admin@icct.edu.ph\r','(02) 249-1050 / (02) 249-1049',''),(64,'Institute of Electronics Technology Inc - Cainta Campus','IETI - CC','Cainta, Rizal','','\r','',''),(65,'Institute of Electronics Technology Inc - San Pedro Campus','IETI - SPC','161 Purok 2 Magsaysay Ave., Brgy. Magsaysay, San Pedro, Laguna 4028','','ieti-spl@mozcom.com\r','868-1502 / 868-1505 / 868-1506',''),(66,'International Electronics & Technological Institute - Bi¤an Campus','IETI - BC','C. Mendoza Business Center, National Highway, Bi¤an, Laguna','','\r','(049) 511-9386',''),(67,'International Electronics & Technological Institute - Imus Campus','IETI - IC','SC Realty Bldg. E. Aguinaldo Highway Tanzang Luma III, Imus City, Cavite','','\r','(046) 471-9337 / 474-0356',''),(68,'Jacobo Z. Gonzales Memorial School of Arts and Trades','JZGMSAT','San Antonio, City of Bi¤an, Laguna 4024','','jzg_msat@yahoo.com\r','(049) 511-6133 / (049) 511-9409',''),(69,'Laguna College','LC','Paseo de Escudero at Zulueta ST, Paseo de Escudero, San Pablo City, Laguna 4000','','lcpride@skyinet.net\r','(049) 562-8077',''),(70,'Laguna College of Arts and Trade','LCAT','Bubukal, Sta. Cruz, Laguna 4009','','\r','(049) 810-4212 / (049) 810-4112',''),(71,'Laguna College of Business and Arts - Calamba City Campus','LCBA - CCC','Burgos Street, Calamba City, Laguna 4027','','lcba_registrar@yahoo.com\r','(049) 545-4769 loc. 102/114 / (049) 545-3309',''),(72,'Laguna College of Business and Arts - San Pedro Campus','LCBA - SPC','San Pedro, Laguna','','\r','',''),(73,'Laguna State Polytechnic College - Cabuyao Campus','LSPC - CC','Cabuyao, Laguna','','\r','',''),(74,'Laguna State Polytechnic College - Los Banos Campus','LSPC - LBC','Brgy. Mayondon-Malinta, Los Ba¤os, Laguna','','\r','(049) 827-0421 / 0909-7870032',''),(75,'Laguna State Polytechnic College - San Pablo City Campus','LSPC - SPCC','Barangay Del Remedios, San Pablo City, Laguna 4000','','ccs@lspuspcc.edu.ph\r','(049) 562-8130 / (049) 562-4389',''),(76,'Laguna State Polytechnic College - Siniloan Campus','LSPC - SC','L. de Leon St. Brgy. Acevida, Siniloan, Laguna','','\r','(049) 813-0577 / (049) 813-0273',''),(77,'Laguna State Polytechnic College - Sta. Cruz Campus','LSPC - SCC','Bubukal, Sta. Cruz, Laguna 4009','','\r','(049) 810-4212 / (049) 810-4112',''),(78,'Laguna State Polytechnic University - Los Ba¤os Campus','LSPU - LBC','Brgy. Mayondon-Malinta, Los Ba¤os, Laguna','','\r','(049) 827-0421 / 0909-7870032',''),(79,'Laguna State Polytechnic University - San Pablo City Campus','LSPU - SPCC','Barangay Del Remedios, San Pablo City, Laguna 4000','','ccs@lspuspcc.edu.ph\r','(049) 562-8130 / (049) 562-4389',''),(80,'Laguna State Polytechnic University - Siniloan Campus','LSPU - SC','L. de Leon St. Brgy. Acevida, Siniloan, Laguna','','\r','(049) 813-0577 / (049) 813-0273',''),(81,'Laguna State Polytechnic University - Sta. Cruz Campus','LSPU - SCC','Bubukal, Sta. Cruz, Laguna 4009','Mrs. Nimfa G. Dimaculangan','\r','(049) 810-4212 / (049) 810-4112',''),(82,'Laguna Technological Institute - San Pedro Campus','LTI - SPC','# 12 Sto. Ni¤o, San Pedro, Laguna 4023','','lti@stream.net.ph\r','(02) 868-1347',''),(83,'Lyceum of Batangas - Batangas City Campus','LB - BCC','Capitol Site, Batangas City, Batangas 4200','','vpregistrar@lyceumbat.edu.ph / lyceum_bat@yahoo.co','(043) 723-2038 / (043) 723-3549',''),(84,'Manuel S. Enverga University Foundation Inc. - Lucena City Campus','MSEUFI - LCC','University Site, Lucena City, Quezon 4301','','\r','(042) 710-2541 / (042) 373-6065',''),(85,'Marinduque State College - Boac Campus','MSC - BC','Tanza, Boac, Marinduque 4900','','registrar@mscollege.net / msc@digitelone.com\r','(042) 332-2028 / (042) 332-2027',''),(86,'Marinduque State University - Boac Campus','MSU - BC','Boac, Marinduque','','\r','',''),(87,'Mindoro State College of Arts and Trades - Calapan City Campus','MSCAT - CCC','Masipit, Calapan City, Oriental Mindoro 5200','','\r','(043) 286-7371 / (043) 286-2368',''),(88,'National College of Science and Technology - Dasmari¤as Campus','NCST - DC','Amafel Bldg., Aguinaldo Highway, Dasmarinas, Cavite 4114','','Registrar@NCST.ph.com\r','(046) 416-4779 / (046) 416-0166',''),(89,'Occidental Mindoro National College - San Jose Campus','OMNC - SJC','Rizal St., San Jose, Occidental Mindoro 5100','','\r','(043) 491-1460',''),(90,'Palawan State University - Puerto Princesa City Campus','PSU - PPCC','Tiniguiban Heights, Puerto Princesa City, Palawan 5300','','psu@pal-onl.com\r','(048) 433-2379 / (048) 433-5303',''),(91,'Palawan Technological College Inc. - Puerto Princesa Campus','PTCI - PPC','245 Malvar St., Puerto Princesa City, Palawan 5300','','\r','(048) 434-4518 / (048) 434-4518',''),(92,'Philippine Science and Technology Center - Calamba City Campus','PSTC - CCC','Halang, Calamba City, Laguna','','\r','',''),(93,'Philippine Software Services & Education Center - Imus Campus','PhilSSEC - IC','Imus, Cavite','','\r','',''),(94,'Polytechnic College of Calapan','PCC','Masipit, Calapan City, Oriental Mindoro 5200','','\r','(043) 286-7371 / (043) 286-2368',''),(95,'Polytechnic University of the Philippines - Bi¤an Campus','PUP - BC','Bi¤an, Laguna','','\r','(049) 513-5034',''),(96,'Polytechnic University of the Philippines - Maragondon Campus','PUP - MC','Balitaw St., Brgy Garita A, Poblacion 1A, Maragondon, Cavite','','maragondon@pup.edu.ph\r','(046) 412-1909 / (046) 412-1931',''),(97,'Polytechnic University of the Philippines - Lopez Campus','PUP - LC','Don Gregorio C. Yumul Sr. Street, Lopez, Quezon 4316','','lopez@pup.edu.ph\r','(042) 841-1890 / (042) 302-5249',''),(98,'Polytechnic University of the Philippines - San Pedro Campus','PUP - SPC','Main Road, Brgy United Bayanihan, San Pedro, Laguna','','sanpedro@pup.edu.ph\r','(043) 869-9800 / (043) 869-0059',''),(99,'Polytechnic University of the Philippines - Sta. Rosa Campus','PUP - SRC','Tiongco Subdivision, Santa Rosa City, Laguna','','starosa@pup.edu.ph\r','(049) 534-3590',''),(100,'Polytechnic University of the Philippines - Sto. Tomas Campus','PUP - STC','A. Bonifacio St. Poblacion II, Sto. Tomas, Batangas','','stotomas@pup.edu.ph\r','(043) 778-3586 / (043) 778-3584',''),(101,'Rogationist Academy - Silang Campus','RA - SC','Lalaan II, Silang, Cavite 4118','','infodesk@rog.edu.ph\r','(046) 414-0448 / (046) 414-2039',''),(102,'Romblon State College - Odiongan Campus','RSC - OC','Bgy. Liwanag, Odiongan, Romblon 5505','','admin@rsu.edu.ph\r','(049) 567-5270 / 567-5580',''),(103,'San Jose National Agricultural & Technological School','SJNATS','Murtha, San Jose, Occidental Mindoro','','\r','',''),(104,'San Pablo Colleges','SPC','Hermanos Belen St. San Pablo City, Laguna, Philippines 4000','','qcej@laguna.net\r','(049) 562-4041 / (049) 562-0957',''),(105,'San Pedro College of Business and Arts','SPCBA','National Highway, San Pedro, Laguna 4023','','\r','(02) 808-2258',''),(106,'San Sebastian College - Recoletos de Cavite','SSC - RDC','Manila Boulevard, Sta. Cruz, Cavite City 4100, Cavite','','admin@sscr.edu\r','(046) 431-0861',''),(107,'Southern Luzon College - Dasmari¤as Campus','SLC - DC','Congressional East Ave., Dasmarinas, Cavite 4114','','\r','(046) 416-4166 / (046) 416-4168',''),(108,'Southern Luzon Polytechnic College - Lucban Campus','SLPC - LC','Brgy. Kulapi, Lucban, Quezon 4328','','slpc-cc@mozcom.com\r','(042) 540-4763 / (042) 911-1252',''),(109,'Southern Luzon State University - Lucban Campus','SLSU - LC','Brgy. Kulapi, Lucban, Quezon 4328','Engr. Maria Rossana C. De Leon','slpc-cc@mozcom.com\r','(042) 540-4763 / (042) 911-1252',''),(110,'Systems Technology Institute - Antipolo Campus','STI - AC','Antipolo City, Rizal 1870','','\r','',''),(111,'Systems Technology Institute - Cainta Campus','STI - CC','G/F Rublou Business Center Ortigas Ave. Ext., Cainta, Rizal 1900','','stiorca@axti.com\r','(02) 240-2016 / (02) 240-2069',''),(112,'Systems Technology Institute - Calamba City Campus','STI - CCC','National Highway, Parian, Calamba City, Laguna 4027','','sti-cal@mozcom.com\r','(049) 545-2945',''),(113,'Systems Technology Institute - Lipa City Campus','STI - LCC','C. M. Recto Avenue, Lipa City, Batangas 4217','','stilipa@lipa-inext.net\r','(043) 756-5379/312-2407',''),(114,'Systems Technology Institute - San Jose Campus','STI - SJC','San Jose, Occidental Mindoro','','\r','',''),(115,'Systems Technology Institute - Rosario Campus','STI - RC','Gen Trias Drive, Rosario, Cavite 4106','','sticollegerosario@yahoo.com\r','(046) 971-1672/971-1674',''),(116,'Systems Technology Institute - San Pablo City Campus','STI - SPC','Lopez Jaena St., San Pablo City, Laguna 4000','','stispc@mozcom.com\r','(049) 562-0935',''),(117,'Systems Technology Institute - Southwoods Campus','STI - SC','Maduya, Carmona, Cavite 4116','','southwoods@sti.edu.ph\r','(046) 430-1661 / (046) 430-1669',''),(118,'Systems Technology Institute - Sta. Cruz Campus','STI - STC','1522 P. Guevarra Ave., Sta. Cruz, Laguna','','patrick.obsuna@stacruz.sti.edu.ph / rhydel.garcia@','(049) 501-3446',''),(119,'Systems Technology Institute - Tanauan City Campus','STI - TCC','#5 Mabini Ave., Tanauan, Batangas','','admission.officer@tanauan.sti.edu.ph / career.advi','(043) 778-4682 (Telefax) 784-3895 / 778-4781',''),(120,'Technological University of the Philippines - Dasmari¤as Campus','TUP - DC','C.Q.T. Ave., Dasmarinas, Cavite 4114','','ehilario@tup.edu.ph\r','(046) 416-2122 / (046) 416-4920',''),(121,'Tomas Claudio Memorial College - Morong Campus','TCMC - MC','T. Claudio Street, Morong, Rizal 1960','','\r','(02) 691-5592 / (02) 691-5595',''),(122,'University of Batangas - Batangas Campus','UB - BC','Hilltop, Batangas City, Batangas 4200','','info@ub.edu.ph\r','(043) 723-0693 / (043) 723-0695',''),(123,'University of Perpetual Help System - Binan City Campus','UPHS - BCC','Sto. Ni¤o, Bi¤an, Laguna 4024','','karentamayo@perpetualhelp.net\r','(049) 511-8634/511-9550',''),(124,'University of Perpetual Help System - Calamba City Campus','UPHS - CCC','Paciano Rizal, Calamba City, Laguna 4027','','\r','(049) 531-4775',''),(125,'University of Rizal System - Binangonan Campus','URS - Bc','Binangonan, Rizal','','\r','(02) 652-1693 / 652-1018',''),(126,'University of Rizal System - Cainta Campus','URS - CC','Cainta, Rizal','','\r','(02) 248-0860 / 359-8776',''),(127,'University of Rizal System - Morong Campus','URS - MC','Sumulong Street, Morong, Rizal 1960','','\r','(02) 653-1082 / 653-2924',''),(128,'University of Rizal System - Tanay Campus','URS - TC','J.P. Rizal St., Sampaloc, Tanay, Rizal 1980','','\r','(02) 401-4900 / 401-4910 / 401-4911',''),(129,'University of the Philippines - Los Ba¤os Campus','UPLB','Los Banos, Laguna','','\r','(049) 536-2553 / (049) 536-3673','');
/*!40000 ALTER TABLE `psi_schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_science_promotion_types`
--

DROP TABLE IF EXISTS `psi_science_promotion_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_science_promotion_types` (
  `promo_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promo_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`promo_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_science_promotion_types`
--

LOCK TABLES `psi_science_promotion_types` WRITE;
/*!40000 ALTER TABLE `psi_science_promotion_types` DISABLE KEYS */;
INSERT INTO `psi_science_promotion_types` VALUES (1,'Testing');
/*!40000 ALTER TABLE `psi_science_promotion_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_science_promotions`
--

DROP TABLE IF EXISTS `psi_science_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_science_promotions` (
  `promo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promo_month` int(10) unsigned DEFAULT '1',
  `promo_year` int(10) unsigned DEFAULT '0',
  `promo_count` bigint(20) unsigned DEFAULT '0',
  `promo_remarks` text,
  `promo_type_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`promo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_science_promotions`
--

LOCK TABLES `psi_science_promotions` WRITE;
/*!40000 ALTER TABLE `psi_science_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_science_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_sectors`
--

DROP TABLE IF EXISTS `psi_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_sectors` (
  `sector_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`sector_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_sectors`
--

LOCK TABLES `psi_sectors` WRITE;
/*!40000 ALTER TABLE `psi_sectors` DISABLE KEYS */;
INSERT INTO `psi_sectors` VALUES (1,'Food Processing'),(2,'Furniture'),(3,'Natural Fibers, GHD &amp; Fashion Accessories'),(4,'Metals &amp; Engineering'),(5,'Aquatic &amp; Marine'),(6,'Horticulture &amp; Agriculture'),(7,'Health Products / Services / Pharmaceuticals'),(8,'Electronics &amp; ICT'),(22,'Soap making'),(20,'Livelihood'),(21,'Service'),(16,'Manufacturing'),(18,'Others'),(24,'Footwear');
/*!40000 ALTER TABLE `psi_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_sellingpoints`
--

DROP TABLE IF EXISTS `psi_sellingpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_sellingpoints` (
  `sp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sp_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`sp_id`),
  UNIQUE KEY `sp_id_UNIQUE` (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_sellingpoints`
--

LOCK TABLES `psi_sellingpoints` WRITE;
/*!40000 ALTER TABLE `psi_sellingpoints` DISABLE KEYS */;
INSERT INTO `psi_sellingpoints` VALUES (1,'High Overall Quality'),(2,'Health / Safety Factor'),(3,'High Value'),(4,'Convenience'),(5,'Unique (No Competition)'),(6,'Others');
/*!40000 ALTER TABLE `psi_sellingpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_semesters`
--

DROP TABLE IF EXISTS `psi_semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_semesters` (
  `sem_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sem_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`sem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_semesters`
--

LOCK TABLES `psi_semesters` WRITE;
/*!40000 ALTER TABLE `psi_semesters` DISABLE KEYS */;
INSERT INTO `psi_semesters` VALUES (1,'1st Semester'),(2,'2nd Semester');
/*!40000 ALTER TABLE `psi_semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_service_provider_services`
--

DROP TABLE IF EXISTS `psi_service_provider_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_service_provider_services` (
  `sps_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sp_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`sps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_service_provider_services`
--

LOCK TABLES `psi_service_provider_services` WRITE;
/*!40000 ALTER TABLE `psi_service_provider_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_service_provider_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_service_providers`
--

DROP TABLE IF EXISTS `psi_service_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_service_providers` (
  `sp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sp_name` varchar(255) DEFAULT '',
  `sp_other_service` varchar(255) DEFAULT '',
  `sp_designation` varchar(255) DEFAULT '',
  `sp_fname` varchar(255) DEFAULT '',
  `sp_mname` varchar(255) DEFAULT '',
  `sp_lname` varchar(255) DEFAULT '',
  `sp_address` text,
  `sp_expertise` text,
  `sp_product_line` varchar(255) DEFAULT '',
  `sp_phone` varchar(255) DEFAULT '',
  `sp_mobile` varchar(255) DEFAULT '',
  `sp_email` varchar(255) DEFAULT '',
  `sp_website` varchar(255) DEFAULT '',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_service_providers`
--

LOCK TABLES `psi_service_providers` WRITE;
/*!40000 ALTER TABLE `psi_service_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_service_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_services`
--

DROP TABLE IF EXISTS `psi_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_services` (
  `service_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_services`
--

LOCK TABLES `psi_services` WRITE;
/*!40000 ALTER TABLE `psi_services` DISABLE KEYS */;
INSERT INTO `psi_services` VALUES (1,'Supplier'),(2,'Fabricator'),(3,'Trainor'),(4,'Other');
/*!40000 ALTER TABLE `psi_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_training_documents`
--

DROP TABLE IF EXISTS `psi_training_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_training_documents` (
  `trdoc_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trdoc_file` varchar(255) DEFAULT '',
  `trdoc_filename` varchar(255) DEFAULT '',
  `trdoc_remarks` text,
  `tr_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT NULL,
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`trdoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_training_documents`
--

LOCK TABLES `psi_training_documents` WRITE;
/*!40000 ALTER TABLE `psi_training_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_training_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_training_types`
--

DROP TABLE IF EXISTS `psi_training_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_training_types` (
  `tr_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tr_type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`tr_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_training_types`
--

LOCK TABLES `psi_training_types` WRITE;
/*!40000 ALTER TABLE `psi_training_types` DISABLE KEYS */;
INSERT INTO `psi_training_types` VALUES (1,'Testing');
/*!40000 ALTER TABLE `psi_training_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_trainings`
--

DROP TABLE IF EXISTS `psi_trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_trainings` (
  `tr_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tr_title` text,
  `tr_start` date DEFAULT NULL,
  `tr_end` date DEFAULT NULL,
  `tr_duration` double unsigned DEFAULT '0',
  `tr_location` text,
  `tr_longitude` double unsigned DEFAULT '0',
  `tr_latitude` double unsigned DEFAULT '0',
  `tr_elevation` double unsigned DEFAULT '0',
  `tr_cost` double unsigned DEFAULT '0',
  `tr_csf` double unsigned DEFAULT '0',
  `tr_no_feminine` int(10) unsigned DEFAULT '0',
  `tr_no_musculine` int(10) unsigned DEFAULT '0',
  `tr_no_pwd` int(10) unsigned DEFAULT '0',
  `tr_no_seniors` int(10) unsigned DEFAULT '0',
  `tr_no_firms` int(10) unsigned DEFAULT '0',
  `tr_no_participants` int(10) unsigned DEFAULT '0',
  `tr_type_id` bigint(20) unsigned DEFAULT '0',
  `prj_id` bigint(20) unsigned DEFAULT '0',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `sp_id` bigint(20) unsigned DEFAULT '0',
  `encoder` varchar(255) DEFAULT '',
  `date_encoded` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT '',
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_trainings`
--

LOCK TABLES `psi_trainings` WRITE;
/*!40000 ALTER TABLE `psi_trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `psi_trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_user_rights`
--

DROP TABLE IF EXISTS `psi_user_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_user_rights` (
  `ur_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ur_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`ur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_user_rights`
--

LOCK TABLES `psi_user_rights` WRITE;
/*!40000 ALTER TABLE `psi_user_rights` DISABLE KEYS */;
INSERT INTO `psi_user_rights` VALUES (1,'Projects'),(2,'Cooperators'),(3,'Service Providers'),(4,'Planning'),(5,'Consultancies'),(6,'Packaging & Labeling'),(7,'Packaging & Labeling Designs'),(8,'Training'),(9,'Training Documents'),(10,'Testings & Calibrations'),(11,'Scholarships'),(12,'Scholarship Monitoring'),(13,'Media Activities'),(14,'Library Monitoring'),(15,'Media Activity Categories'),(16,'Collaborating Agencies'),(17,'Consultancy Categories'),(18,'Document Categories'),(19,'Equipment Brands'),(20,'Organization Categories'),(21,'Project Categories'),(22,'Course Categories'),(23,'Courses'),(24,'Scholarship Programs'),(25,'Schools'),(26,'Agency Profile'),(27,'Project Monitoring'),(28,'Project Documentation'),(29,'Project Photos'),(30,'Project Consultancies'),(31,'Project Fora'),(32,'Project Fora Documents'),(33,'Project Equipment'),(34,'Project Repayment'),(35,'Users'),(36,'UserGroups'),(37,'Project PIS'),(38,'Project Packaging & Labeling'),(39,'Fora'),(40,'Fora Documents'),(41,'Consultancy Documents'),(42,'Project Consultancy Documents'),(43,'Project Packaging & Labeling Designs'),(44,'Sectors'),(45,'Project Sites');
/*!40000 ALTER TABLE `psi_user_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_usergroup_rights`
--

DROP TABLE IF EXISTS `psi_usergroup_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_usergroup_rights` (
  `ugr_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `ur_id` bigint(20) unsigned DEFAULT '0',
  `ugr_view` tinyint(1) unsigned DEFAULT '1',
  `ugr_add` tinyint(1) unsigned DEFAULT '1',
  `ugr_edit` tinyint(1) unsigned DEFAULT '1',
  `ugr_delete` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`ugr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2919 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_usergroup_rights`
--

LOCK TABLES `psi_usergroup_rights` WRITE;
/*!40000 ALTER TABLE `psi_usergroup_rights` DISABLE KEYS */;
INSERT INTO `psi_usergroup_rights` VALUES (1018,4,22,1,1,1,0),(1019,4,23,1,1,1,0),(1020,4,12,1,1,1,0),(1021,4,24,1,1,1,0),(1022,4,11,1,1,1,0),(1023,4,25,1,1,1,0),(1043,5,10,1,1,1,0),(1047,11,26,1,1,1,0),(1048,11,16,1,1,1,0),(1049,11,5,1,1,1,0),(1050,11,17,1,1,1,0),(1051,11,41,1,1,1,0),(1052,11,2,1,1,1,0),(1053,11,22,1,1,1,0),(1054,11,23,1,1,1,0),(1055,11,18,1,1,1,0),(1056,11,19,1,1,1,0),(1057,11,39,1,1,1,0),(1058,11,40,1,1,1,0),(1059,11,14,1,1,1,0),(1060,11,20,1,1,1,0),(1061,11,6,1,1,1,0),(1062,11,7,1,1,1,0),(1063,11,13,1,1,1,0),(1064,11,15,1,1,1,0),(1065,11,4,1,1,1,0),(1066,11,21,1,1,1,0),(1067,11,30,1,1,1,0),(1068,11,42,1,1,1,0),(1069,11,28,1,1,1,0),(1070,11,33,1,1,1,0),(1071,11,27,1,1,1,0),(1072,11,38,1,1,1,0),(1073,11,43,1,1,1,0),(1074,11,29,1,1,1,0),(1075,11,37,1,1,1,0),(1076,11,34,1,1,1,0),(1077,11,32,1,1,1,0),(1078,11,31,1,1,1,0),(1079,11,1,1,1,1,0),(1080,11,12,1,1,1,0),(1081,11,24,1,1,1,0),(1082,11,11,1,1,1,0),(1083,11,25,1,1,1,0),(1084,11,3,1,1,1,0),(1085,11,10,1,1,1,0),(1086,11,9,1,1,1,0),(1087,11,8,1,1,1,0),(1088,11,36,1,1,1,0),(1089,11,35,1,1,1,0),(1581,20,26,1,0,0,0),(1582,20,16,1,0,0,0),(1583,20,5,1,0,0,0),(1584,20,17,1,0,0,0),(1585,20,41,1,0,0,0),(1586,20,2,1,0,0,0),(1587,20,22,1,0,0,0),(1588,20,23,1,0,0,0),(1589,20,18,1,0,0,0),(1590,20,19,1,0,0,0),(1591,20,39,1,0,0,0),(1592,20,40,1,0,0,0),(1593,20,14,1,0,0,0),(1594,20,20,1,0,0,0),(1595,20,6,1,0,0,0),(1596,20,7,1,0,0,0),(1597,20,13,1,0,0,0),(1598,20,15,1,0,0,0),(1599,20,4,1,0,0,0),(1600,20,21,1,0,0,0),(1601,20,30,1,0,0,0),(1602,20,42,1,0,0,0),(1603,20,28,1,0,0,0),(1604,20,33,1,0,0,0),(1605,20,27,1,0,0,0),(1606,20,38,1,0,0,0),(1607,20,43,1,0,0,0),(1608,20,29,1,0,0,0),(1609,20,37,1,0,0,0),(1610,20,34,1,0,0,0),(1611,20,32,1,0,0,0),(1612,20,31,1,0,0,0),(1613,20,1,1,0,0,0),(1614,20,12,1,0,0,0),(1615,20,24,1,0,0,0),(1616,20,11,1,0,0,0),(1617,20,25,1,0,0,0),(1618,20,3,1,0,0,0),(1619,20,10,1,0,0,0),(1620,20,9,1,0,0,0),(1621,20,8,1,0,0,0),(1622,20,36,1,0,0,0),(1623,20,35,1,0,0,0),(1727,10,26,1,0,0,0),(1728,10,16,1,0,0,0),(1729,10,2,1,1,1,0),(1730,10,6,1,1,1,0),(1731,10,7,1,1,1,1),(1732,10,38,1,1,1,0),(1733,10,43,1,1,1,1),(1734,10,1,1,0,0,0),(1735,10,3,1,0,0,0),(1810,12,26,1,0,0,0),(1811,12,16,1,1,1,0),(1812,12,2,1,1,1,0),(1813,12,19,1,1,1,0),(1814,12,30,1,1,1,0),(1815,12,42,1,1,1,0),(1816,12,28,1,1,1,0),(1817,12,33,1,1,1,0),(1818,12,27,1,1,1,0),(1819,12,38,1,1,1,0),(1820,12,43,1,1,1,0),(1821,12,29,1,1,1,0),(1822,12,37,1,1,1,0),(1823,12,34,1,0,0,0),(1824,12,32,1,1,1,0),(1825,12,31,1,1,1,0),(1826,12,1,1,1,1,0),(1827,12,3,1,1,1,0),(1828,13,26,1,0,0,0),(1829,13,16,1,1,1,0),(1830,13,2,1,1,1,0),(1831,13,19,1,1,1,0),(1832,13,30,1,1,1,0),(1833,13,42,1,1,1,0),(1834,13,28,1,1,1,0),(1835,13,33,1,1,1,0),(1836,13,27,1,1,1,0),(1837,13,38,1,1,1,0),(1838,13,43,1,1,1,0),(1839,13,29,1,1,1,0),(1840,13,37,1,1,1,0),(1841,13,34,1,0,0,0),(1842,13,32,1,1,1,0),(1843,13,31,1,1,1,0),(1844,13,1,1,1,1,0),(1845,13,3,1,1,1,0),(1846,14,26,1,0,0,0),(1847,14,16,1,1,1,0),(1848,14,2,1,1,1,0),(1849,14,19,1,1,1,0),(1850,14,30,1,1,1,0),(1851,14,42,1,1,1,0),(1852,14,28,1,1,1,0),(1853,14,33,1,1,1,0),(1854,14,27,1,1,1,0),(1855,14,38,1,1,1,0),(1856,14,43,1,1,1,0),(1857,14,29,1,1,1,0),(1858,14,37,1,1,1,0),(1859,14,34,1,0,0,0),(1860,14,32,1,1,1,0),(1861,14,31,1,1,1,0),(1862,14,1,1,1,1,0),(1863,14,3,1,1,1,0),(1864,15,26,1,0,0,0),(1865,15,16,1,1,1,0),(1866,15,2,1,1,1,0),(1867,15,19,1,1,1,0),(1868,15,30,1,1,1,0),(1869,15,42,1,1,1,0),(1870,15,28,1,1,1,0),(1871,15,33,1,1,1,0),(1872,15,27,1,1,1,0),(1873,15,38,1,1,1,0),(1874,15,43,1,1,1,0),(1875,15,29,1,1,1,0),(1876,15,37,1,1,1,0),(1877,15,34,1,0,0,0),(1878,15,32,1,1,1,0),(1879,15,31,1,1,1,0),(1880,15,1,1,1,1,0),(1881,15,3,1,1,1,0),(2168,9,26,1,0,0,0),(2169,9,16,1,0,0,0),(2170,9,5,1,0,0,0),(2171,9,17,1,0,0,0),(2172,9,41,1,0,0,0),(2173,9,2,1,0,0,0),(2174,9,22,1,0,0,0),(2175,9,23,1,0,0,0),(2176,9,18,1,0,0,0),(2177,9,19,1,0,0,0),(2178,9,39,1,1,1,0),(2179,9,40,1,1,1,0),(2180,9,14,1,0,0,0),(2181,9,13,1,1,1,0),(2182,9,15,1,1,1,0),(2183,9,20,1,0,0,0),(2184,9,7,1,0,0,0),(2185,9,4,1,0,0,0),(2186,9,21,1,0,0,0),(2187,9,30,1,0,0,0),(2188,9,42,1,0,0,0),(2189,9,28,1,0,0,0),(2190,9,33,1,0,0,0),(2191,9,27,1,0,0,0),(2192,9,38,1,0,0,0),(2193,9,43,1,0,0,0),(2194,9,29,1,0,0,0),(2195,9,37,1,0,0,0),(2196,9,32,1,0,0,0),(2197,9,31,1,0,0,0),(2198,9,1,1,0,0,0),(2199,9,12,1,0,0,0),(2200,9,24,1,0,0,0),(2201,9,11,1,0,0,0),(2202,9,25,1,0,0,0),(2203,9,44,1,0,0,0),(2204,9,3,1,0,0,0),(2205,9,10,1,0,0,0),(2206,9,9,1,1,1,0),(2207,9,8,1,1,1,0),(2208,9,36,1,0,0,0),(2209,9,35,1,0,0,0),(2210,17,26,1,1,1,0),(2211,17,16,1,1,1,0),(2212,17,5,1,1,1,0),(2213,17,17,1,1,1,0),(2214,17,41,1,1,1,0),(2215,17,2,1,1,1,0),(2216,17,22,1,1,1,0),(2217,17,23,1,1,1,0),(2218,17,18,1,1,1,0),(2219,17,19,1,1,1,0),(2220,17,39,1,1,1,0),(2221,17,40,1,1,1,0),(2222,17,14,1,1,1,0),(2223,17,13,1,1,1,0),(2224,17,15,1,1,1,0),(2225,17,20,1,1,1,0),(2226,17,6,1,1,1,0),(2227,17,7,1,1,1,0),(2228,17,4,1,1,1,0),(2229,17,21,1,1,1,0),(2230,17,30,1,1,1,0),(2231,17,42,1,1,1,0),(2232,17,28,1,1,1,0),(2233,17,33,1,1,1,0),(2234,17,31,1,1,1,0),(2235,17,32,1,1,1,0),(2236,17,27,1,1,1,0),(2237,17,38,1,1,1,0),(2238,17,43,1,1,1,0),(2239,17,29,1,1,1,0),(2240,17,37,1,1,1,0),(2241,17,34,1,1,1,0),(2242,17,1,1,1,1,0),(2243,17,12,1,1,1,0),(2244,17,24,1,1,1,0),(2245,17,11,1,1,1,0),(2246,17,25,1,1,1,0),(2247,17,44,1,1,1,0),(2248,17,3,1,1,1,0),(2249,17,10,1,1,1,0),(2250,17,8,1,1,1,0),(2251,17,9,1,1,1,0),(2252,17,36,1,0,0,0),(2253,17,35,1,0,0,0),(2254,21,26,1,0,0,0),(2255,21,16,1,0,0,0),(2256,21,5,1,0,0,0),(2257,21,17,1,0,0,0),(2258,21,41,1,0,0,0),(2259,21,2,1,0,0,0),(2260,21,22,1,0,0,0),(2261,21,23,1,0,0,0),(2262,21,18,1,0,0,0),(2263,21,19,1,0,0,0),(2264,21,39,1,0,0,0),(2265,21,40,1,0,0,0),(2266,21,14,1,0,0,0),(2267,21,13,1,0,0,0),(2268,21,15,1,0,0,0),(2269,21,20,1,0,0,0),(2270,21,6,1,0,0,0),(2271,21,7,1,0,0,0),(2272,21,4,1,0,0,0),(2273,21,21,1,0,0,0),(2274,21,30,1,0,0,0),(2275,21,42,1,0,0,0),(2276,21,28,1,0,0,0),(2277,21,33,1,0,0,0),(2278,21,31,1,0,0,0),(2279,21,32,1,0,0,0),(2280,21,27,1,0,0,0),(2281,21,38,1,0,0,0),(2282,21,43,1,0,0,0),(2283,21,29,1,0,0,0),(2284,21,37,1,0,0,0),(2285,21,34,1,0,0,0),(2286,21,1,1,0,0,0),(2287,21,12,1,0,0,0),(2288,21,24,1,0,0,0),(2289,21,11,1,0,0,0),(2290,21,25,1,0,0,0),(2291,21,44,1,0,0,0),(2292,21,3,1,0,0,0),(2293,21,10,1,0,0,0),(2294,21,8,1,0,0,0),(2295,21,9,1,0,0,0),(2296,21,36,1,0,0,0),(2297,21,35,1,0,0,0),(2298,0,26,1,1,1,0),(2299,0,16,1,1,1,0),(2300,0,5,1,1,1,0),(2301,0,17,1,1,1,0),(2302,0,41,1,1,1,0),(2303,0,2,1,1,1,0),(2304,0,22,1,1,1,0),(2305,0,23,1,1,1,0),(2306,0,18,1,1,1,0),(2307,0,19,1,1,1,0),(2308,0,39,1,1,1,0),(2309,0,40,1,1,1,0),(2310,0,14,1,1,1,0),(2311,0,13,1,1,1,0),(2312,0,15,1,1,1,0),(2313,0,20,1,1,1,0),(2314,0,6,1,1,1,0),(2315,0,7,1,1,1,0),(2316,0,4,1,1,1,0),(2317,0,21,1,1,1,0),(2318,0,30,1,1,1,0),(2319,0,42,1,1,1,0),(2320,0,28,1,1,1,0),(2321,0,33,1,1,1,0),(2322,0,31,1,1,1,0),(2323,0,32,1,1,1,0),(2324,0,27,1,1,1,0),(2325,0,38,1,1,1,0),(2326,0,43,1,1,1,0),(2327,0,29,1,1,1,0),(2328,0,37,1,1,1,0),(2329,0,34,1,1,1,0),(2330,0,1,1,1,1,0),(2331,0,12,1,1,1,0),(2332,0,24,1,1,1,0),(2333,0,11,1,1,1,0),(2334,0,25,1,1,1,0),(2335,0,44,1,1,1,0),(2336,0,3,1,1,1,0),(2337,0,10,1,1,1,0),(2338,0,8,1,1,1,0),(2339,0,9,1,1,1,0),(2340,0,36,1,0,0,0),(2341,0,35,1,0,0,0),(2342,22,26,1,1,1,0),(2343,22,16,1,1,1,0),(2344,22,5,1,1,1,0),(2345,22,17,1,1,1,0),(2346,22,41,1,1,1,0),(2347,22,2,1,1,1,0),(2348,22,22,1,1,1,0),(2349,22,23,1,1,1,0),(2350,22,18,1,1,1,0),(2351,22,19,1,1,1,0),(2352,22,39,1,1,1,0),(2353,22,40,1,1,1,0),(2354,22,14,1,1,1,0),(2355,22,13,1,1,1,0),(2356,22,15,1,1,1,0),(2357,22,20,1,1,1,0),(2358,22,6,1,1,1,0),(2359,22,7,1,1,1,0),(2360,22,4,1,1,1,0),(2361,22,21,1,1,1,0),(2362,22,30,1,1,1,0),(2363,22,42,1,1,1,0),(2364,22,28,1,1,1,0),(2365,22,33,1,1,1,0),(2366,22,31,1,1,1,0),(2367,22,32,1,1,1,0),(2368,22,27,1,1,1,0),(2369,22,38,1,1,1,0),(2370,22,43,1,1,1,0),(2371,22,29,1,1,1,0),(2372,22,37,1,1,1,0),(2373,22,34,1,1,1,0),(2374,22,1,1,1,1,0),(2375,22,12,1,1,1,0),(2376,22,24,1,1,1,0),(2377,22,11,1,1,1,0),(2378,22,25,1,1,1,0),(2379,22,44,1,1,1,0),(2380,22,3,1,1,1,0),(2381,22,10,1,1,1,0),(2382,22,8,1,1,1,0),(2383,22,9,1,1,1,0),(2384,22,36,1,0,0,0),(2385,22,35,1,0,0,0),(2474,18,26,1,0,0,0),(2475,18,16,1,1,1,0),(2476,18,5,1,1,1,0),(2477,18,17,1,1,1,0),(2478,18,41,1,1,1,0),(2479,18,2,1,1,1,0),(2480,18,22,1,0,0,0),(2481,18,23,1,0,0,0),(2482,18,18,1,1,1,0),(2483,18,19,1,1,1,0),(2484,18,39,1,1,1,0),(2485,18,40,1,1,1,0),(2486,18,14,1,0,0,0),(2487,18,13,1,1,1,0),(2488,18,15,1,1,1,0),(2489,18,20,1,1,1,0),(2490,18,6,1,1,1,0),(2491,18,7,1,1,1,0),(2492,18,4,1,0,0,0),(2493,18,21,1,1,1,0),(2494,18,30,1,1,1,0),(2495,18,42,1,1,1,0),(2496,18,28,1,1,1,0),(2497,18,33,1,1,1,0),(2498,18,31,1,1,1,0),(2499,18,32,1,1,1,0),(2500,18,27,1,1,1,0),(2501,18,38,1,1,1,0),(2502,18,43,1,1,1,0),(2503,18,29,1,1,1,0),(2504,18,37,1,1,1,0),(2505,18,34,1,1,1,0),(2506,18,1,1,1,1,0),(2507,18,12,1,0,0,0),(2508,18,24,1,0,0,0),(2509,18,11,1,0,0,0),(2510,18,25,1,0,0,0),(2511,18,44,1,1,1,0),(2512,18,3,1,1,1,0),(2513,18,10,1,1,1,0),(2514,18,8,1,1,1,0),(2515,18,9,1,1,1,0),(2516,18,36,1,0,0,0),(2517,18,35,1,0,0,0),(2518,3,26,1,0,0,0),(2519,3,16,1,1,1,0),(2520,3,5,1,1,1,0),(2521,3,17,1,1,1,0),(2522,3,41,1,1,1,0),(2523,3,2,1,1,1,0),(2524,3,22,1,0,0,0),(2525,3,23,1,0,0,0),(2526,3,18,1,1,1,0),(2527,3,19,1,1,1,0),(2528,3,39,1,1,1,0),(2529,3,40,1,1,1,0),(2530,3,14,1,0,0,0),(2531,3,13,1,1,1,0),(2532,3,15,1,1,1,0),(2533,3,20,1,0,0,0),(2534,3,6,1,1,1,0),(2535,3,7,1,1,1,0),(2536,3,4,1,0,0,0),(2537,3,21,1,0,0,0),(2538,3,30,1,1,1,0),(2539,3,42,1,1,1,0),(2540,3,28,1,1,1,0),(2541,3,33,1,1,1,0),(2542,3,31,1,1,1,0),(2543,3,32,1,1,1,0),(2544,3,27,1,1,1,0),(2545,3,38,1,1,1,0),(2546,3,43,1,1,1,0),(2547,3,29,1,1,1,0),(2548,3,37,1,1,1,0),(2549,3,34,1,1,1,0),(2550,3,1,1,1,1,0),(2551,3,12,1,0,0,0),(2552,3,24,1,0,0,0),(2553,3,11,1,0,0,0),(2554,3,25,1,0,0,0),(2555,3,44,1,1,1,0),(2556,3,3,1,1,1,0),(2557,3,10,1,1,1,0),(2558,3,8,1,1,1,0),(2559,3,9,1,1,1,0),(2560,3,36,1,0,0,0),(2561,3,35,1,0,0,0),(2606,16,26,1,0,0,0),(2607,16,16,1,1,1,0),(2608,16,5,1,1,1,0),(2609,16,17,1,0,0,0),(2610,16,41,1,1,1,0),(2611,16,2,1,1,1,0),(2612,16,22,1,0,0,0),(2613,16,23,1,0,0,0),(2614,16,18,1,1,1,0),(2615,16,19,1,1,1,0),(2616,16,39,1,1,1,0),(2617,16,40,1,1,1,0),(2618,16,14,1,0,0,0),(2619,16,13,1,0,0,0),(2620,16,15,1,0,0,0),(2621,16,20,1,0,0,0),(2622,16,6,1,1,1,0),(2623,16,7,1,1,1,0),(2624,16,4,1,0,0,0),(2625,16,21,1,1,1,0),(2626,16,30,1,1,1,0),(2627,16,42,1,1,1,0),(2628,16,28,1,1,1,0),(2629,16,33,1,1,1,0),(2630,16,31,1,1,1,0),(2631,16,32,1,1,1,0),(2632,16,27,1,1,1,0),(2633,16,38,1,1,1,0),(2634,16,43,1,1,1,0),(2635,16,29,1,1,1,0),(2636,16,37,1,1,1,0),(2637,16,34,1,0,0,0),(2638,16,1,1,1,1,0),(2639,16,12,1,0,0,0),(2640,16,24,1,0,0,0),(2641,16,11,1,0,0,0),(2642,16,25,1,0,0,0),(2643,16,44,1,0,0,0),(2644,16,3,1,1,1,0),(2645,16,10,1,1,1,0),(2646,16,8,1,1,1,0),(2647,16,9,1,1,1,0),(2648,16,36,1,0,0,0),(2649,16,35,1,0,0,0),(2650,2,26,1,0,0,0),(2651,2,16,1,1,1,0),(2652,2,5,1,1,1,0),(2653,2,17,1,1,1,0),(2654,2,41,1,1,1,0),(2655,2,2,1,1,1,0),(2656,2,22,1,0,0,0),(2657,2,23,1,0,0,0),(2658,2,18,1,1,1,0),(2659,2,19,1,1,1,0),(2660,2,39,1,1,1,0),(2661,2,40,1,1,1,0),(2662,2,14,1,0,0,0),(2663,2,13,1,1,1,0),(2664,2,15,1,1,1,0),(2665,2,20,1,1,1,0),(2666,2,6,1,1,1,0),(2667,2,7,1,1,1,0),(2668,2,4,1,0,0,0),(2669,2,21,1,1,1,0),(2670,2,30,1,1,1,1),(2671,2,42,1,1,1,1),(2672,2,28,1,1,1,1),(2673,2,33,1,1,1,1),(2674,2,31,1,1,1,1),(2675,2,32,1,1,1,1),(2676,2,27,1,1,1,1),(2677,2,38,1,1,1,1),(2678,2,43,1,1,1,1),(2679,2,29,1,1,1,1),(2680,2,37,1,1,1,1),(2681,2,34,1,1,1,1),(2682,2,1,1,1,1,1),(2683,2,12,1,0,0,0),(2684,2,24,1,0,0,0),(2685,2,11,1,0,0,0),(2686,2,25,1,0,0,0),(2687,2,44,1,1,1,0),(2688,2,3,1,1,1,0),(2689,2,10,1,1,1,0),(2690,2,8,1,1,1,0),(2691,2,9,1,1,1,0),(2692,2,36,1,0,0,0),(2693,2,35,1,0,0,0),(2694,1,26,1,1,1,1),(2695,1,16,1,1,1,1),(2696,1,5,1,1,1,1),(2697,1,17,1,1,1,1),(2698,1,41,1,1,1,1),(2699,1,2,1,1,1,1),(2700,1,22,1,1,1,1),(2701,1,23,1,1,1,1),(2702,1,18,1,1,1,1),(2703,1,19,1,1,1,1),(2704,1,39,1,1,1,1),(2705,1,40,1,1,1,1),(2706,1,14,1,1,1,1),(2707,1,13,1,1,1,1),(2708,1,15,1,1,1,1),(2709,1,20,1,1,1,1),(2710,1,6,1,1,1,1),(2711,1,7,1,1,1,1),(2712,1,4,1,1,1,1),(2713,1,21,1,1,1,1),(2714,1,30,1,1,1,1),(2715,1,42,1,1,1,1),(2716,1,28,1,1,1,1),(2717,1,33,1,1,1,1),(2718,1,31,1,1,1,1),(2719,1,32,1,1,1,1),(2720,1,27,1,1,1,1),(2721,1,38,1,1,1,1),(2722,1,43,1,1,1,1),(2723,1,29,1,1,1,1),(2724,1,37,1,1,1,1),(2725,1,34,1,1,1,1),(2726,1,45,1,1,1,1),(2727,1,1,1,1,1,1),(2728,1,12,1,1,1,1),(2729,1,24,1,1,1,1),(2730,1,11,1,1,1,1),(2731,1,25,1,1,1,1),(2732,1,44,1,1,1,1),(2733,1,3,1,1,1,1),(2734,1,10,1,1,1,1),(2735,1,8,1,1,1,1),(2736,1,9,1,1,1,1),(2737,1,36,1,1,1,1),(2738,1,35,1,1,1,1),(2739,19,26,1,0,0,0),(2740,19,16,1,0,0,0),(2741,19,5,1,0,0,0),(2742,19,17,1,0,0,0),(2743,19,41,1,0,0,0),(2744,19,2,1,0,0,0),(2745,19,22,1,0,0,0),(2746,19,23,1,0,0,0),(2747,19,18,1,0,0,0),(2748,19,19,1,0,0,0),(2749,19,39,1,0,0,0),(2750,19,40,1,0,0,0),(2751,19,14,1,0,0,0),(2752,19,13,1,0,0,0),(2753,19,15,1,0,0,0),(2754,19,20,1,0,0,0),(2755,19,6,1,0,0,0),(2756,19,7,1,0,0,0),(2757,19,4,1,0,0,0),(2758,19,21,1,0,0,0),(2759,19,30,1,0,0,0),(2760,19,42,1,0,0,0),(2761,19,28,1,0,0,0),(2762,19,33,1,0,0,0),(2763,19,31,1,0,0,0),(2764,19,32,1,0,0,0),(2765,19,27,1,0,0,0),(2766,19,38,1,0,0,0),(2767,19,43,1,0,0,0),(2768,19,29,1,0,0,0),(2769,19,37,1,0,0,0),(2770,19,34,1,0,0,0),(2771,19,45,1,0,0,0),(2772,19,1,1,0,0,0),(2773,19,12,1,0,0,0),(2774,19,24,1,0,0,0),(2775,19,11,1,0,0,0),(2776,19,25,1,0,0,0),(2777,19,44,1,0,0,0),(2778,19,3,1,0,0,0),(2779,19,10,1,0,0,0),(2780,19,8,1,0,0,0),(2781,19,9,1,0,0,0),(2782,19,36,1,0,0,0),(2783,19,35,1,0,0,0),(2784,8,26,1,0,0,0),(2785,8,16,1,0,0,0),(2786,8,5,1,0,0,0),(2787,8,17,1,0,0,0),(2788,8,41,1,0,0,0),(2789,8,2,1,0,0,0),(2790,8,22,1,0,0,0),(2791,8,23,1,0,0,0),(2792,8,18,1,0,0,0),(2793,8,19,1,0,0,0),(2794,8,39,1,0,0,0),(2795,8,40,1,0,0,0),(2796,8,14,1,0,0,0),(2797,8,13,1,0,0,0),(2798,8,15,1,0,0,0),(2799,8,20,1,0,0,0),(2800,8,6,1,0,0,0),(2801,8,7,1,0,0,0),(2802,8,4,1,0,0,0),(2803,8,21,1,0,0,0),(2804,8,30,1,0,0,0),(2805,8,42,1,0,0,0),(2806,8,28,1,0,0,0),(2807,8,33,1,0,0,0),(2808,8,31,1,0,0,0),(2809,8,32,1,0,0,0),(2810,8,27,1,0,0,0),(2811,8,38,1,0,0,0),(2812,8,43,1,0,0,0),(2813,8,29,1,0,0,0),(2814,8,37,1,0,0,0),(2815,8,34,1,0,0,0),(2816,8,45,1,0,0,0),(2817,8,1,1,0,0,0),(2818,8,12,1,0,0,0),(2819,8,24,1,0,0,0),(2820,8,11,1,0,0,0),(2821,8,25,1,0,0,0),(2822,8,44,1,0,0,0),(2823,8,3,1,0,0,0),(2824,8,10,1,1,1,0),(2825,8,8,1,0,0,0),(2826,8,9,1,0,0,0),(2827,8,36,1,0,0,0),(2828,8,35,1,0,0,0),(2829,6,26,1,0,0,0),(2830,6,16,1,0,0,0),(2831,6,5,1,0,0,0),(2832,6,17,1,0,0,0),(2833,6,41,1,0,0,0),(2834,6,2,1,0,0,0),(2835,6,22,1,0,0,0),(2836,6,23,1,0,0,0),(2837,6,18,1,0,0,0),(2838,6,19,1,0,0,0),(2839,6,39,1,0,0,0),(2840,6,40,1,0,0,0),(2841,6,14,1,0,0,0),(2842,6,13,1,0,0,0),(2843,6,15,1,0,0,0),(2844,6,20,1,0,0,0),(2845,6,6,1,0,0,0),(2846,6,7,1,0,0,0),(2847,6,4,1,0,0,0),(2848,6,21,1,0,0,0),(2849,6,30,1,0,0,0),(2850,6,42,1,0,0,0),(2851,6,28,1,0,0,0),(2852,6,33,1,0,0,0),(2853,6,31,1,0,0,0),(2854,6,32,1,0,0,0),(2855,6,27,1,0,0,0),(2856,6,38,1,0,0,0),(2857,6,43,1,0,0,0),(2858,6,29,1,0,0,0),(2859,6,37,1,0,0,0),(2860,6,34,1,0,0,0),(2861,6,45,1,0,0,0),(2862,6,1,1,0,0,0),(2863,6,12,1,0,0,0),(2864,6,24,1,0,0,0),(2865,6,11,1,0,0,0),(2866,6,25,1,0,0,0),(2867,6,44,1,0,0,0),(2868,6,3,1,0,0,0),(2869,6,10,1,1,1,0),(2870,6,8,1,0,0,0),(2871,6,9,1,0,0,0),(2872,6,36,1,0,0,0),(2873,6,35,1,0,0,0),(2874,7,26,1,0,0,0),(2875,7,16,1,0,0,0),(2876,7,5,1,0,0,0),(2877,7,17,1,0,0,0),(2878,7,41,1,0,0,0),(2879,7,2,1,0,0,0),(2880,7,22,1,0,0,0),(2881,7,23,1,0,0,0),(2882,7,18,1,0,0,0),(2883,7,19,1,0,0,0),(2884,7,39,1,0,0,0),(2885,7,40,1,0,0,0),(2886,7,14,1,0,0,0),(2887,7,13,1,0,0,0),(2888,7,15,1,0,0,0),(2889,7,20,1,0,0,0),(2890,7,6,1,0,0,0),(2891,7,7,1,0,0,0),(2892,7,4,1,0,0,0),(2893,7,21,1,0,0,0),(2894,7,30,1,0,0,0),(2895,7,42,1,0,0,0),(2896,7,28,1,0,0,0),(2897,7,33,1,0,0,0),(2898,7,31,1,0,0,0),(2899,7,32,1,0,0,0),(2900,7,27,1,0,0,0),(2901,7,38,1,0,0,0),(2902,7,43,1,0,0,0),(2903,7,29,1,0,0,0),(2904,7,37,1,0,0,0),(2905,7,34,1,0,0,0),(2906,7,45,1,0,0,0),(2907,7,1,1,0,0,0),(2908,7,12,1,0,0,0),(2909,7,24,1,0,0,0),(2910,7,11,1,0,0,0),(2911,7,25,1,0,0,0),(2912,7,44,1,0,0,0),(2913,7,3,1,0,0,0),(2914,7,10,1,1,1,0),(2915,7,8,1,0,0,0),(2916,7,9,1,0,0,0),(2917,7,36,1,0,0,0),(2918,7,35,1,0,0,0);
/*!40000 ALTER TABLE `psi_usergroup_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_usergroups`
--

DROP TABLE IF EXISTS `psi_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_usergroups` (
  `ug_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ug_name` varchar(255) DEFAULT '',
  `ug_is_admin` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`ug_id`),
  UNIQUE KEY `ug_id_UNIQUE` (`ug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_usergroups`
--

LOCK TABLES `psi_usergroups` WRITE;
/*!40000 ALTER TABLE `psi_usergroups` DISABLE KEYS */;
INSERT INTO `psi_usergroups` VALUES (1,'Administrators',1),(2,'RO-SETUP',0),(3,'RO-GIA',0),(4,'Scholarship',0),(5,'Laboratory-RSTL',0),(6,'Laboratory-RML',0),(7,'Laboratory-RVCL',0),(8,'Laboratory-CWWTL',0),(9,'Media Group',0),(10,'Packaging &amp; Labeling',0),(11,'Planning',0),(12,'PSTC-BATANGAS',0),(13,'PSTC-CAVITE',0),(14,'PSTC-LAGUNA',0),(15,'PSTC-QUEZON',0),(16,'PSTC-RIZAL',0),(17,'RO-Activity Coordinators',0),(18,'RO-GIA-CBP',0),(19,'Director',0),(20,'ARD',0),(21,'Guests',0),(22,'Testers',0);
/*!40000 ALTER TABLE `psi_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi_users`
--

DROP TABLE IF EXISTS `psi_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi_users` (
  `u_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `u_username` varchar(255) DEFAULT '',
  `u_password` varchar(255) DEFAULT '',
  `u_lname` varchar(255) DEFAULT '',
  `u_fname` varchar(255) DEFAULT '',
  `u_mname` varchar(255) DEFAULT '',
  `u_mobile` varchar(255) DEFAULT '',
  `u_email` varchar(255) DEFAULT '',
  `u_access_type` bigint(20) DEFAULT '0',
  `u_enabled` tinyint(1) unsigned DEFAULT '1',
  `ug_id` bigint(20) unsigned DEFAULT '0',
  `u_uhash` varchar(255) DEFAULT '',
  `u_phash` varchar(255) DEFAULT '',
  `region_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi_users`
--

LOCK TABLES `psi_users` WRITE;
/*!40000 ALTER TABLE `psi_users` DISABLE KEYS */;
INSERT INTO `psi_users` VALUES (17,'admin','admin','Treytor','Admin','Is','639871234567','admin@admin.com',0,1,1,'','',6);
/*!40000 ALTER TABLE `psi_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vwpsi_activities`
--

DROP TABLE IF EXISTS `vwpsi_activities`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_activities`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_activities` AS SELECT 
 1 AS `activity_id`,
 1 AS `activity_type_id`,
 1 AS `activity_title`,
 1 AS `activity_target_date`,
 1 AS `activity_date_accomplished`,
 1 AS `activity_date_accomplished_yr`,
 1 AS `activity_date_accomplished_mo`,
 1 AS `activity_no_articles`,
 1 AS `activity_csf`,
 1 AS `activity_address`,
 1 AS `activity_remarks`,
 1 AS `activity_no_participants`,
 1 AS `activity_no_male`,
 1 AS `activity_no_female`,
 1 AS `activity_no_pwd`,
 1 AS `activity_no_senior`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `region_id`,
 1 AS `activity_type_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_calibrations`
--

DROP TABLE IF EXISTS `vwpsi_calibrations`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_calibrations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_calibrations` AS SELECT 
 1 AS `cal_id`,
 1 AS `cal_month`,
 1 AS `cal_year`,
 1 AS `cal_no_tests`,
 1 AS `cal_no_calibrations`,
 1 AS `cal_no_clients`,
 1 AS `cal_no_firms`,
 1 AS `cal_income`,
 1 AS `cal_income_gross`,
 1 AS `cal_value_service`,
 1 AS `lab_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `region_id`,
 1 AS `lab_name`,
 1 AS `lab_abbr`,
 1 AS `ug_id`,
 1 AS `ug_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_cities`
--

DROP TABLE IF EXISTS `vwpsi_cities`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_cities`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_cities` AS SELECT 
 1 AS `city_id`,
 1 AS `province_id`,
 1 AS `city_name`,
 1 AS `district_id`,
 1 AS `district_name`,
 1 AS `province_name`,
 1 AS `region_id`,
 1 AS `region_code`,
 1 AS `region_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_collaborators`
--

DROP TABLE IF EXISTS `vwpsi_collaborators`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_collaborators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_collaborators` AS SELECT 
 1 AS `col_id`,
 1 AS `col_name`,
 1 AS `col_abbr`,
 1 AS `ot_id`,
 1 AS `ot_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_consultancies`
--

DROP TABLE IF EXISTS `vwpsi_consultancies`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_consultancies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_consultancies` AS SELECT 
 1 AS `con_id`,
 1 AS `con_start`,
 1 AS `con_end`,
 1 AS `con_start_yr`,
 1 AS `con_start_mo`,
 1 AS `con_end_yr`,
 1 AS `con_end_mo`,
 1 AS `con_type_id`,
 1 AS `prj_id`,
 1 AS `coop_id`,
 1 AS `sp_id`,
 1 AS `ug_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `con_type_name`,
 1 AS `region_id`,
 1 AS `coop_name`,
 1 AS `coop_p_fname`,
 1 AS `coop_p_mname`,
 1 AS `coop_p_lname`,
 1 AS `coop_p_name`,
 1 AS `coop_address`,
 1 AS `coop_phone`,
 1 AS `coop_fax`,
 1 AS `coop_mobile`,
 1 AS `coop_email`,
 1 AS `coop_website`,
 1 AS `coop_year_established`,
 1 AS `sp_name`,
 1 AS `sp_other_service`,
 1 AS `sp_designation`,
 1 AS `sp_fname`,
 1 AS `sp_mname`,
 1 AS `sp_lname`,
 1 AS `sp_contact_name`,
 1 AS `sp_address`,
 1 AS `sp_expertise`,
 1 AS `sp_product_line`,
 1 AS `sp_phone`,
 1 AS `sp_mobile`,
 1 AS `sp_email`,
 1 AS `sp_website`,
 1 AS `ug_name`,
 1 AS `coop_reg_dti`,
 1 AS `coop_reg_sec`,
 1 AS `coop_reg_others`,
 1 AS `coop_reg_cda`,
 1 AS `coop_reg_dti_date`,
 1 AS `coop_reg_sec_date`,
 1 AS `coop_reg_cda_date`,
 1 AS `coop_products`,
 1 AS `coop_brief`,
 1 AS `ot_cat1_id`,
 1 AS `ot_cat3_id`,
 1 AS `ot_cat2_id`,
 1 AS `ot_cat1_name`,
 1 AS `ot_cat2_name`,
 1 AS `ot_cat3_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_coop_sector_list`
--

DROP TABLE IF EXISTS `vwpsi_coop_sector_list`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_coop_sector_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_coop_sector_list` AS SELECT 
 1 AS `coop_id`,
 1 AS `sector_list`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_cooperator_project_counts`
--

DROP TABLE IF EXISTS `vwpsi_cooperator_project_counts`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_cooperator_project_counts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_cooperator_project_counts` AS SELECT 
 1 AS `coop_count`,
 1 AS `coop_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_cooperator_projects`
--

DROP TABLE IF EXISTS `vwpsi_cooperator_projects`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_cooperator_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_cooperator_projects` AS SELECT 
 1 AS `prj_ben_id`,
 1 AS `prj_id`,
 1 AS `coop_id`,
 1 AS `prj_title`,
 1 AS `prj_code`,
 1 AS `prj_year_approved`,
 1 AS `prj_objective`,
 1 AS `prj_expected_output`,
 1 AS `prj_product_line`,
 1 AS `prj_cost_setup`,
 1 AS `prj_cost_gia`,
 1 AS `prj_cost_rollout`,
 1 AS `prj_cost_benefactor`,
 1 AS `prj_cost_other`,
 1 AS `prj_intervention`,
 1 AS `prj_longitude`,
 1 AS `prj_latitude`,
 1 AS `prj_elevation`,
 1 AS `prj_type_id`,
 1 AS `prj_status_id`,
 1 AS `province_id`,
 1 AS `city_id`,
 1 AS `barangay_id`,
 1 AS `ug_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `prj_type_name`,
 1 AS `prj_status_name`,
 1 AS `prj_sector_list`,
 1 AS `province_name`,
 1 AS `region_name`,
 1 AS `city_name`,
 1 AS `barangay_name`,
 1 AS `ug_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_cooperators`
--

DROP TABLE IF EXISTS `vwpsi_cooperators`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_cooperators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_cooperators` AS SELECT 
 1 AS `coop_id`,
 1 AS `coop_name`,
 1 AS `coop_p_fname`,
 1 AS `coop_p_mname`,
 1 AS `coop_p_lname`,
 1 AS `coop_p_name`,
 1 AS `coop_address`,
 1 AS `coop_phone`,
 1 AS `coop_fax`,
 1 AS `coop_mobile`,
 1 AS `coop_email`,
 1 AS `coop_website`,
 1 AS `coop_year_established`,
 1 AS `ot_id`,
 1 AS `loc_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `coop_reg_dti`,
 1 AS `coop_reg_sec`,
 1 AS `coop_reg_cda`,
 1 AS `coop_reg_others`,
 1 AS `coop_reg_dti_date`,
 1 AS `coop_reg_sec_date`,
 1 AS `coop_reg_cda_date`,
 1 AS `coop_products`,
 1 AS `coop_brief`,
 1 AS `ot_cat1_id`,
 1 AS `ot_cat2_id`,
 1 AS `ot_cat3_id`,
 1 AS `ot_cat1_name`,
 1 AS `ot_cat2_name`,
 1 AS `ot_cat3_name`,
 1 AS `coop_sector_list`,
 1 AS `ug_id`,
 1 AS `ug_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_courses`
--

DROP TABLE IF EXISTS `vwpsi_courses`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_courses`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_courses` AS SELECT 
 1 AS `course_id`,
 1 AS `course_cat_id`,
 1 AS `course_name`,
 1 AS `course_yearcount`,
 1 AS `course_cat_name`,
 1 AS `course_label`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_deferment_monthcounts`
--

DROP TABLE IF EXISTS `vwpsi_deferment_monthcounts`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_deferment_monthcounts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_deferment_monthcounts` AS SELECT 
 1 AS `rep_deferment_monthcount`,
 1 AS `rep_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_equipment`
--

DROP TABLE IF EXISTS `vwpsi_equipment`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_equipment`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_equipment` AS SELECT 
 1 AS `eqp_id`,
 1 AS `eqp_specs`,
 1 AS `eqp_qty`,
 1 AS `eqp_amount_acquired`,
 1 AS `eqp_amount_approved`,
 1 AS `eqp_property_no`,
 1 AS `eqp_receipt_no`,
 1 AS `eqp_receipt_date`,
 1 AS `eqp_warranty`,
 1 AS `eqp_date_acquired`,
 1 AS `eqp_date_tagged`,
 1 AS `eqp_remarks`,
 1 AS `brand_id`,
 1 AS `prj_id`,
 1 AS `sp_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `brand_name`,
 1 AS `sp_name`,
 1 AS `sp_other_service`,
 1 AS `sp_designation`,
 1 AS `sp_fname`,
 1 AS `sp_mname`,
 1 AS `sp_lname`,
 1 AS `sp_contact_name`,
 1 AS `sp_address`,
 1 AS `sp_expertise`,
 1 AS `sp_product_line`,
 1 AS `sp_phone`,
 1 AS `sp_mobile`,
 1 AS `sp_email`,
 1 AS `sp_website`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_fora`
--

DROP TABLE IF EXISTS `vwpsi_fora`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_fora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_fora` AS SELECT 
 1 AS `fr_id`,
 1 AS `fr_requesting_party`,
 1 AS `fr_title`,
 1 AS `fr_sectors`,
 1 AS `fr_start`,
 1 AS `fr_end`,
 1 AS `fr_start_yr`,
 1 AS `fr_start_mo`,
 1 AS `fr_end_yr`,
 1 AS `fr_end_mo`,
 1 AS `fr_duration`,
 1 AS `fr_location`,
 1 AS `fr_longitude`,
 1 AS `fr_latitude`,
 1 AS `fr_elevation`,
 1 AS `fr_cost`,
 1 AS `fr_csf`,
 1 AS `fr_no_feminine`,
 1 AS `fr_no_masculine`,
 1 AS `fr_no_pwd`,
 1 AS `fr_no_seniors`,
 1 AS `fr_no_firms`,
 1 AS `fr_no_participants`,
 1 AS `fr_type_id`,
 1 AS `fr_remarks`,
 1 AS `prj_id`,
 1 AS `ug_id`,
 1 AS `region_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `fr_type_name`,
 1 AS `region_code`,
 1 AS `region_name`,
 1 AS `prj_title`,
 1 AS `prj_year_approved`,
 1 AS `prj_code`,
 1 AS `ug_name`,
 1 AS `collaborator_names`,
 1 AS `ug_name1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_fora_collaborators`
--

DROP TABLE IF EXISTS `vwpsi_fora_collaborators`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_fora_collaborators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_fora_collaborators` AS SELECT 
 1 AS `fr_id`,
 1 AS `collaborator_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_fora_documents`
--

DROP TABLE IF EXISTS `vwpsi_fora_documents`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_fora_documents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_fora_documents` AS SELECT 
 1 AS `frdoc_id`,
 1 AS `frdoc_file`,
 1 AS `frdoc_filename`,
 1 AS `frdoc_remarks`,
 1 AS `fdoctype_id`,
 1 AS `fr_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `fdoctype_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_otb_payments`
--

DROP TABLE IF EXISTS `vwpsi_otb_payments`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_otb_payments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_otb_payments` AS SELECT 
 1 AS `rep_otb_amount_paid`,
 1 AS `rep_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_packaging`
--

DROP TABLE IF EXISTS `vwpsi_packaging`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_packaging`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_packaging` AS SELECT 
 1 AS `pkg_id`,
 1 AS `coop_id`,
 1 AS `pkg_date`,
 1 AS `pkg_remarks`,
 1 AS `pkg_product_name`,
 1 AS `pkg_brand_name`,
 1 AS `pkg_product_description`,
 1 AS `pkg_competitors`,
 1 AS `pkg_competitor_1`,
 1 AS `pkg_competitor_2`,
 1 AS `pkg_competitor_3`,
 1 AS `pkg_competitor_4`,
 1 AS `pkg_competitor_5`,
 1 AS `pkg_competitor_6`,
 1 AS `pkg_selling_point`,
 1 AS `pkg_selling_point_others`,
 1 AS `pkg_performance`,
 1 AS `pkg_distribution`,
 1 AS `pkg_ingredients`,
 1 AS `pkg_volume`,
 1 AS `pkg_packaging_material`,
 1 AS `pkg_label_size`,
 1 AS `pkg_preferred_colors`,
 1 AS `pkg_other_details`,
 1 AS `pkg_market_location`,
 1 AS `pkg_market_products_sold`,
 1 AS `pkg_market_date_established`,
 1 AS `pkg_sales_before_intervention`,
 1 AS `pkg_sales_after_intervention`,
 1 AS `pkg_employment_after_direct`,
 1 AS `pkg_employment_after_indirect`,
 1 AS `pkg_employment_after_months_employed`,
 1 AS `pkg_avg_productivity_improvement`,
 1 AS `pkg_file`,
 1 AS `pkg_filename`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `coop_name`,
 1 AS `sp_label`,
 1 AS `dist_label`,
 1 AS `prj_id`,
 1 AS `ug_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_prjcount_per_projecttype`
--

DROP TABLE IF EXISTS `vwpsi_prjcount_per_projecttype`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_projecttype`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_prjcount_per_projecttype` AS SELECT 
 1 AS `prj_count`,
 1 AS `prj_type_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_prjcount_per_province`
--

DROP TABLE IF EXISTS `vwpsi_prjcount_per_province`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_province`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_prjcount_per_province` AS SELECT 
 1 AS `prj_count`,
 1 AS `province_id`,
 1 AS `province_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_prjcount_per_sector`
--

DROP TABLE IF EXISTS `vwpsi_prjcount_per_sector`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_sector`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_prjcount_per_sector` AS SELECT 
 1 AS `prj_count`,
 1 AS `sector_id`,
 1 AS `sector_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_prjcount_per_status`
--

DROP TABLE IF EXISTS `vwpsi_prjcount_per_status`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_prjcount_per_status` AS SELECT 
 1 AS `prj_count`,
 1 AS `prj_status_id`,
 1 AS `prj_status_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_prjcount_per_year_approved`
--

DROP TABLE IF EXISTS `vwpsi_prjcount_per_year_approved`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_year_approved`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_prjcount_per_year_approved` AS SELECT 
 1 AS `prj_count`,
 1 AS `prj_year_approved`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_beneficiaries`
--

DROP TABLE IF EXISTS `vwpsi_project_beneficiaries`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_beneficiaries`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_beneficiaries` AS SELECT 
 1 AS `prj_ben_id`,
 1 AS `prj_id`,
 1 AS `coop_id`,
 1 AS `coop_name`,
 1 AS `coop_p_fname`,
 1 AS `coop_p_mname`,
 1 AS `coop_p_lname`,
 1 AS `coop_p_name`,
 1 AS `coop_address`,
 1 AS `coop_phone`,
 1 AS `coop_fax`,
 1 AS `coop_mobile`,
 1 AS `coop_email`,
 1 AS `coop_website`,
 1 AS `coop_year_established`,
 1 AS `coop_reg_dti`,
 1 AS `coop_reg_sec`,
 1 AS `coop_reg_cda`,
 1 AS `coop_reg_others`,
 1 AS `coop_reg_dti_date`,
 1 AS `coop_reg_sec_date`,
 1 AS `coop_reg_cda_date`,
 1 AS `coop_products`,
 1 AS `coop_brief`,
 1 AS `ot_cat1_id`,
 1 AS `ot_cat2_id`,
 1 AS `ot_cat3_id`,
 1 AS `ot_cat1_name`,
 1 AS `ot_cat2_name`,
 1 AS `ot_cat3_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_beneficiaries_list`
--

DROP TABLE IF EXISTS `vwpsi_project_beneficiaries_list`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_beneficiaries_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_beneficiaries_list` AS SELECT 
 1 AS `prj_id`,
 1 AS `coop_names`,
 1 AS `coop_p_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_collaborators`
--

DROP TABLE IF EXISTS `vwpsi_project_collaborators`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_collaborators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_collaborators` AS SELECT 
 1 AS `prj_col_id`,
 1 AS `prj_id`,
 1 AS `col_id`,
 1 AS `col_name`,
 1 AS `col_abbr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_collaborators_list`
--

DROP TABLE IF EXISTS `vwpsi_project_collaborators_list`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_collaborators_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_collaborators_list` AS SELECT 
 1 AS `prj_id`,
 1 AS `collaborator_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_documents`
--

DROP TABLE IF EXISTS `vwpsi_project_documents`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_documents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_documents` AS SELECT 
 1 AS `doc_id`,
 1 AS `doc_file`,
 1 AS `doc_filename`,
 1 AS `doc_remarks`,
 1 AS `prj_id`,
 1 AS `doctype_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `doctype_name`,
 1 AS `ug_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_equipments`
--

DROP TABLE IF EXISTS `vwpsi_project_equipments`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_equipments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_equipments` AS SELECT 
 1 AS `prj_id`,
 1 AS `brand_id`,
 1 AS `brand_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_monitoring`
--

DROP TABLE IF EXISTS `vwpsi_project_monitoring`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_monitoring`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_monitoring` AS SELECT 
 1 AS `prjmon_id`,
 1 AS `prj_id`,
 1 AS `prjmon_year`,
 1 AS `quarter_id`,
 1 AS `prjmon_total_assets_land`,
 1 AS `prjmon_total_assets_building`,
 1 AS `prjmon_total_assets_equipment`,
 1 AS `prjmon_total_assets_working_capital`,
 1 AS `prjmon_total_employment`,
 1 AS `prjmon_dir_ch_regular_male`,
 1 AS `prjmon_dir_ch_regular_female`,
 1 AS `prjmon_dir_ch_regular_pwd`,
 1 AS `prjmon_dir_ch_regular_senior`,
 1 AS `prjmon_dir_ch_part_time_male`,
 1 AS `prjmon_dir_ch_part_time_female`,
 1 AS `prjmon_dir_ch_part_time_pwd`,
 1 AS `prjmon_dir_ch_part_time_senior`,
 1 AS `prjmon_dir_sh_regular_male`,
 1 AS `prjmon_dir_sh_regular_female`,
 1 AS `prjmon_dir_sh_regular_pwd`,
 1 AS `prjmon_dir_sh_regular_senior`,
 1 AS `prjmon_dir_sh_part_time_male`,
 1 AS `prjmon_dir_sh_part_time_female`,
 1 AS `prjmon_dir_sh_part_time_pwd`,
 1 AS `prjmon_dir_sh_part_time_senior`,
 1 AS `prjmon_indir_backward_male`,
 1 AS `prjmon_indir_backward_female`,
 1 AS `prjmon_indir_backward_pwd`,
 1 AS `prjmon_indir_backward_senior`,
 1 AS `prjmon_indir_forward_male`,
 1 AS `prjmon_indir_forward_female`,
 1 AS `prjmon_indir_forward_pwd`,
 1 AS `prjmon_indir_forward_senior`,
 1 AS `prjmon_volume_production_local`,
 1 AS `prjmon_volume_production_export`,
 1 AS `prjmon_gross_sales_local`,
 1 AS `prjmon_gross_sales_export`,
 1 AS `prjmon_countries_of_destination`,
 1 AS `prjmon_assistance_process`,
 1 AS `prjmon_assistance_equipment`,
 1 AS `prjmon_assistance_quality_control`,
 1 AS `prjmon_assistance_packaging_labeling`,
 1 AS `prjmon_assistance_post_harvest`,
 1 AS `prjmon_assistance_marketing`,
 1 AS `prjmon_assistance_training`,
 1 AS `prjmon_assistance_consultancy`,
 1 AS `prjmon_assistance_others`,
 1 AS `prjmon_problems_met`,
 1 AS `prjmon_actions_taken`,
 1 AS `prjmon_improvement_action_plan`,
 1 AS `prjmon_status_of_funds`,
 1 AS `prjmon_reasons_for_termination`,
 1 AS `prjmon_final_obligation`,
 1 AS `prjmon_impact_of_intervention`,
 1 AS `prjmon_final_recommendation`,
 1 AS `prjmon_expected_output`,
 1 AS `prjmon_actual_accomplishment`,
 1 AS `prjmon_output_remarks`,
 1 AS `prjmon_liquidation_cost`,
 1 AS `prjmon_liquidation_used`,
 1 AS `prjmon_liquidation_date`,
 1 AS `prjmon_liquidation_remarks`,
 1 AS `prjmon_refund_amount`,
 1 AS `prjmon_refund_schedule_from`,
 1 AS `prjmon_refund_schedule_to`,
 1 AS `prjmon_refund_amount_due`,
 1 AS `prjmon_refund_date`,
 1 AS `prjmon_refund_refunded`,
 1 AS `prjmon_refund_unsettled`,
 1 AS `prjmon_refund_delay_date`,
 1 AS `prjmon_setup_amount`,
 1 AS `prjmon_funds_release_date`,
 1 AS `prjmon_refund_period_from`,
 1 AS `prjmon_refund_period_to`,
 1 AS `prjmon_termination_date`,
 1 AS `prjmon_remarks`,
 1 AS `prjmon_effectivity`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `prjform_id`,
 1 AS `prjmon_volume_product_name`,
 1 AS `prjmon_volume_of_production`,
 1 AS `prjmon_volume_gross_sales`,
 1 AS `prjmon_emp_total`,
 1 AS `prjmon_emp_male`,
 1 AS `prjmon_emp_female`,
 1 AS `prjmon_emp_pwd`,
 1 AS `prjmon_emp_indirect_forward_male`,
 1 AS `prjmon_emp_indirect_forward_female`,
 1 AS `prjmon_emp_indirect_backward_male`,
 1 AS `prjmon_emp_indirect_backward_female`,
 1 AS `prjmon_market_existing`,
 1 AS `prjmon_market_new`,
 1 AS `prjmon_improvement_production_efficiency`,
 1 AS `quarter_name`,
 1 AS `prjform_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_monitoring_summary`
--

DROP TABLE IF EXISTS `vwpsi_project_monitoring_summary`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_monitoring_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_monitoring_summary` AS SELECT 
 1 AS `prjmon_id`,
 1 AS `prj_id`,
 1 AS `prjmon_year`,
 1 AS `quarter_id`,
 1 AS `prjmon_total_assets_land`,
 1 AS `prjmon_total_assets_building`,
 1 AS `prjmon_total_assets_equipment`,
 1 AS `prjmon_total_assets_working_capital`,
 1 AS `prjmon_total_employment`,
 1 AS `prjmon_dir_ch_regular_male`,
 1 AS `prjmon_dir_ch_regular_female`,
 1 AS `prjmon_dir_ch_regular_pwd`,
 1 AS `prjmon_dir_ch_regular_senior`,
 1 AS `prjmon_dir_ch_part_time_male`,
 1 AS `prjmon_dir_ch_part_time_female`,
 1 AS `prjmon_dir_ch_part_time_pwd`,
 1 AS `prjmon_dir_ch_part_time_senior`,
 1 AS `prjmon_dir_sh_regular_male`,
 1 AS `prjmon_dir_sh_regular_female`,
 1 AS `prjmon_dir_sh_regular_pwd`,
 1 AS `prjmon_dir_sh_regular_senior`,
 1 AS `prjmon_dir_sh_part_time_male`,
 1 AS `prjmon_dir_sh_part_time_female`,
 1 AS `prjmon_dir_sh_part_time_pwd`,
 1 AS `prjmon_dir_sh_part_time_senior`,
 1 AS `prjmon_indir_backward_male`,
 1 AS `prjmon_indir_backward_female`,
 1 AS `prjmon_indir_backward_pwd`,
 1 AS `prjmon_indir_backward_senior`,
 1 AS `prjmon_indir_forward_male`,
 1 AS `prjmon_indir_forward_female`,
 1 AS `prjmon_indir_forward_pwd`,
 1 AS `prjmon_indir_forward_senior`,
 1 AS `prjmon_volume_production_local`,
 1 AS `prjmon_volume_production_export`,
 1 AS `prjmon_gross_sales_local`,
 1 AS `prjmon_gross_sales_export`,
 1 AS `prjmon_countries_of_destination`,
 1 AS `prjmon_assistance_process`,
 1 AS `prjmon_assistance_equipment`,
 1 AS `prjmon_assistance_quality_control`,
 1 AS `prjmon_assistance_packaging_labeling`,
 1 AS `prjmon_assistance_post_harvest`,
 1 AS `prjmon_assistance_marketing`,
 1 AS `prjmon_assistance_training`,
 1 AS `prjmon_assistance_consultancy`,
 1 AS `prjmon_assistance_others`,
 1 AS `prjmon_problems_met`,
 1 AS `prjmon_actions_taken`,
 1 AS `prjmon_improvement_action_plan`,
 1 AS `prjmon_status_of_funds`,
 1 AS `prjmon_reasons_for_termination`,
 1 AS `prjmon_final_obligation`,
 1 AS `prjmon_impact_of_intervention`,
 1 AS `prjmon_final_recommendation`,
 1 AS `prjmon_expected_output`,
 1 AS `prjmon_actual_accomplishment`,
 1 AS `prjmon_output_remarks`,
 1 AS `prjmon_liquidation_cost`,
 1 AS `prjmon_liquidation_used`,
 1 AS `prjmon_liquidation_date`,
 1 AS `prjmon_liquidation_remarks`,
 1 AS `prjmon_refund_amount`,
 1 AS `prjmon_refund_schedule_from`,
 1 AS `prjmon_refund_schedule_to`,
 1 AS `prjmon_refund_amount_due`,
 1 AS `prjmon_refund_date`,
 1 AS `prjmon_refund_refunded`,
 1 AS `prjmon_refund_unsettled`,
 1 AS `prjmon_refund_delay_date`,
 1 AS `prjmon_setup_amount`,
 1 AS `prjmon_funds_release_date`,
 1 AS `prjmon_refund_period_from`,
 1 AS `prjmon_refund_period_to`,
 1 AS `prjmon_termination_date`,
 1 AS `prjmon_remarks`,
 1 AS `prjmon_effectivity`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `prjform_id`,
 1 AS `prjmon_volume_product_name`,
 1 AS `prjmon_volume_of_production`,
 1 AS `prjmon_volume_gross_sales`,
 1 AS `prjmon_emp_total`,
 1 AS `prjmon_emp_male`,
 1 AS `prjmon_emp_female`,
 1 AS `prjmon_emp_pwd`,
 1 AS `prjmon_emp_indirect_forward_male`,
 1 AS `prjmon_emp_indirect_forward_female`,
 1 AS `prjmon_emp_indirect_backward_male`,
 1 AS `prjmon_emp_indirect_backward_female`,
 1 AS `prjmon_market_existing`,
 1 AS `prjmon_market_new`,
 1 AS `prjmon_improvement_production_efficiency`,
 1 AS `quarter_name`,
 1 AS `prjform_name`,
 1 AS `prj_title`,
 1 AS `prj_code`,
 1 AS `prj_year_approved`,
 1 AS `prj_objective`,
 1 AS `prj_expected_output`,
 1 AS `prj_product_line`,
 1 AS `prj_cost_setup`,
 1 AS `prj_cost_gia`,
 1 AS `prj_cost_rollout`,
 1 AS `prj_cost_benefactor`,
 1 AS `prj_cost_other`,
 1 AS `prj_intervention`,
 1 AS `prj_longitude`,
 1 AS `prj_latitude`,
 1 AS `prj_elevation`,
 1 AS `prj_type_id`,
 1 AS `prj_status_id`,
 1 AS `prj_remarks`,
 1 AS `ru_id`,
 1 AS `prj_address`,
 1 AS `province_id`,
 1 AS `city_id`,
 1 AS `barangay_id`,
 1 AS `ug_id`,
 1 AS `prj_fund_release_date`,
 1 AS `prj_refund_period_from`,
 1 AS `prj_refund_period_to`,
 1 AS `prj_province`,
 1 AS `prj_city`,
 1 AS `prj_barangay`,
 1 AS `sector_id`,
 1 AS `sector_name`,
 1 AS `prj_pis_total_assets_land`,
 1 AS `prj_pis_total_assets_building`,
 1 AS `prj_pis_total_assets_equipment`,
 1 AS `prj_pis_total_assets_working_capital`,
 1 AS `prj_pis_total_employment`,
 1 AS `prj_pis_dir_ch_regular_male`,
 1 AS `prj_pis_dir_ch_regular_female`,
 1 AS `prj_pis_dir_ch_regular_pwd`,
 1 AS `prj_pis_dir_ch_regular_senior`,
 1 AS `prj_pis_dir_ch_part_time_male`,
 1 AS `prj_pis_dir_ch_part_time_female`,
 1 AS `prj_pis_dir_ch_part_time_pwd`,
 1 AS `prj_pis_dir_ch_part_time_senior`,
 1 AS `prj_pis_dir_sh_regular_male`,
 1 AS `prj_pis_dir_sh_regular_female`,
 1 AS `prj_pis_dir_sh_regular_pwd`,
 1 AS `prj_pis_dir_sh_regular_senior`,
 1 AS `prj_pis_dir_sh_part_time_male`,
 1 AS `prj_pis_dir_sh_part_time_female`,
 1 AS `prj_pis_dir_sh_part_time_pwd`,
 1 AS `prj_pis_dir_sh_part_time_senior`,
 1 AS `prj_pis_indir_backward_male`,
 1 AS `prj_pis_indir_backward_female`,
 1 AS `prj_pis_indir_backward_pwd`,
 1 AS `prj_pis_indir_backward_senior`,
 1 AS `prj_pis_indir_forward_male`,
 1 AS `prj_pis_indir_forward_female`,
 1 AS `prj_pis_indir_forward_pwd`,
 1 AS `prj_pis_indir_forward_senior`,
 1 AS `prj_pis_volume_production_local`,
 1 AS `prj_pis_volume_production_export`,
 1 AS `prj_pis_gross_sales_local`,
 1 AS `prj_pis_gross_sales_export`,
 1 AS `prj_pis_countries_of_destination`,
 1 AS `prj_pis_assistance_conceptualization`,
 1 AS `prj_pis_assistance_proposal_preparation`,
 1 AS `prj_pis_assistance_process`,
 1 AS `prj_pis_assistance_equipment`,
 1 AS `prj_pis_assistance_quality_control`,
 1 AS `prj_pis_assistance_packaging_labeling`,
 1 AS `prj_pis_assistance_post_harvest`,
 1 AS `prj_pis_assistance_marketing`,
 1 AS `prj_pis_assistance_training`,
 1 AS `prj_pis_assistance_consultancy`,
 1 AS `prj_pis_assistance_others`,
 1 AS `prj_pis_remarks`,
 1 AS `province_name`,
 1 AS `region_id`,
 1 AS `region_name`,
 1 AS `city_name`,
 1 AS `district_id`,
 1 AS `district_name`,
 1 AS `barangay_name`,
 1 AS `prj_type_name`,
 1 AS `prj_status_name`,
 1 AS `ug_name`,
 1 AS `rep_total_amount`,
 1 AS `rep_refund_rate`,
 1 AS `rep_total_due`,
 1 AS `rep_total_paid`,
 1 AS `sector_list`,
 1 AS `prj_sector_list`,
 1 AS `coop_names`,
 1 AS `coop_p_names`,
 1 AS `collaborator_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_pis`
--

DROP TABLE IF EXISTS `vwpsi_project_pis`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_pis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_pis` AS SELECT 
 1 AS `prjpis_id`,
 1 AS `prj_id`,
 1 AS `prjpis_year`,
 1 AS `sem_id`,
 1 AS `prjpis_total_assets_land`,
 1 AS `prjpis_total_assets_building`,
 1 AS `prjpis_total_assets_equipment`,
 1 AS `prjpis_total_assets_working_capital`,
 1 AS `prjpis_total_employment`,
 1 AS `prjpis_dir_ch_regular_male`,
 1 AS `prjpis_dir_ch_regular_female`,
 1 AS `prjpis_dir_ch_regular_pwd`,
 1 AS `prjpis_dir_ch_regular_senior`,
 1 AS `prjpis_dir_ch_part_time_male`,
 1 AS `prjpis_dir_ch_part_time_female`,
 1 AS `prjpis_dir_ch_part_time_pwd`,
 1 AS `prjpis_dir_ch_part_time_senior`,
 1 AS `prjpis_dir_sh_regular_male`,
 1 AS `prjpis_dir_sh_regular_female`,
 1 AS `prjpis_dir_sh_regular_pwd`,
 1 AS `prjpis_dir_sh_regular_senior`,
 1 AS `prjpis_dir_sh_part_time_male`,
 1 AS `prjpis_dir_sh_part_time_female`,
 1 AS `prjpis_dir_sh_part_time_pwd`,
 1 AS `prjpis_dir_sh_part_time_senior`,
 1 AS `prjpis_indir_backward_male`,
 1 AS `prjpis_indir_backward_female`,
 1 AS `prjpis_indir_backward_pwd`,
 1 AS `prjpis_indir_backward_senior`,
 1 AS `prjpis_indir_forward_male`,
 1 AS `prjpis_indir_forward_female`,
 1 AS `prjpis_indir_forward_pwd`,
 1 AS `prjpis_indir_forward_senior`,
 1 AS `prjpis_volume_production_local`,
 1 AS `prjpis_volume_production_export`,
 1 AS `prjpis_gross_sales_local`,
 1 AS `prjpis_gross_sales_export`,
 1 AS `prjpis_countries_of_destination`,
 1 AS `prjpis_assistance_process`,
 1 AS `prjpis_assistance_equipment`,
 1 AS `prjpis_assistance_quality_control`,
 1 AS `prjpis_assistance_packaging_labeling`,
 1 AS `prjpis_assistance_post_harvest`,
 1 AS `prjpis_assistance_marketing`,
 1 AS `prjpis_assistance_training_text`,
 1 AS `prjpis_assistance_consultancy_text`,
 1 AS `prjpis_assistance_others_text`,
 1 AS `prjpis_remarks`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `prjpis_assistance_training`,
 1 AS `prjpis_assistance_consultancy`,
 1 AS `prjpis_assistance_process_text`,
 1 AS `prjpis_assistance_quality_control_text`,
 1 AS `prjpis_assistance_post_harvest_text`,
 1 AS `prjpis_assistance_marketing_text`,
 1 AS `prjpis_assistance_others`,
 1 AS `sem_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_sector_list`
--

DROP TABLE IF EXISTS `vwpsi_project_sector_list`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_sector_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_sector_list` AS SELECT 
 1 AS `prj_id`,
 1 AS `sector_list`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_sectors`
--

DROP TABLE IF EXISTS `vwpsi_project_sectors`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_sectors`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_sectors` AS SELECT 
 1 AS `prjsect_id`,
 1 AS `prj_id`,
 1 AS `sector_id`,
 1 AS `sector_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_project_sites`
--

DROP TABLE IF EXISTS `vwpsi_project_sites`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_project_sites`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_project_sites` AS SELECT 
 1 AS `prj_site_id`,
 1 AS `prj_site_date`,
 1 AS `prj_site_yr`,
 1 AS `prj_site_mo`,
 1 AS `prj_site_remarks`,
 1 AS `prj_site_longitude`,
 1 AS `prj_site_latitude`,
 1 AS `prj_site_elevation`,
 1 AS `prj_site_address`,
 1 AS `province_id`,
 1 AS `city_id`,
 1 AS `barangay_id`,
 1 AS `brand_id`,
 1 AS `prj_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `brand_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_projects`
--

DROP TABLE IF EXISTS `vwpsi_projects`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_projects` AS SELECT 
 1 AS `prj_id`,
 1 AS `prj_title`,
 1 AS `prj_code`,
 1 AS `prj_year_approved`,
 1 AS `prj_objective`,
 1 AS `prj_expected_output`,
 1 AS `prj_product_line`,
 1 AS `prj_cost_setup`,
 1 AS `prj_cost_gia`,
 1 AS `prj_cost_rollout`,
 1 AS `prj_cost_benefactor`,
 1 AS `prj_cost_other`,
 1 AS `prj_intervention`,
 1 AS `prj_longitude`,
 1 AS `prj_latitude`,
 1 AS `prj_elevation`,
 1 AS `prj_type_id`,
 1 AS `prj_status_id`,
 1 AS `prj_remarks`,
 1 AS `ru_id`,
 1 AS `prj_address`,
 1 AS `province_id`,
 1 AS `city_id`,
 1 AS `barangay_id`,
 1 AS `ug_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `prj_fund_release_date`,
 1 AS `prj_refund_period_from`,
 1 AS `prj_refund_period_to`,
 1 AS `prj_province`,
 1 AS `prj_city`,
 1 AS `prj_barangay`,
 1 AS `sector_id`,
 1 AS `sector_name`,
 1 AS `prj_pis_total_assets_land`,
 1 AS `prj_pis_total_assets_building`,
 1 AS `prj_pis_total_assets_equipment`,
 1 AS `prj_pis_total_assets_working_capital`,
 1 AS `prj_pis_total_employment`,
 1 AS `prj_pis_dir_ch_regular_male`,
 1 AS `prj_pis_dir_ch_regular_female`,
 1 AS `prj_pis_dir_ch_regular_pwd`,
 1 AS `prj_pis_dir_ch_regular_senior`,
 1 AS `prj_pis_dir_ch_part_time_male`,
 1 AS `prj_pis_dir_ch_part_time_female`,
 1 AS `prj_pis_dir_ch_part_time_pwd`,
 1 AS `prj_pis_dir_ch_part_time_senior`,
 1 AS `prj_pis_dir_sh_regular_male`,
 1 AS `prj_pis_dir_sh_regular_female`,
 1 AS `prj_pis_dir_sh_regular_pwd`,
 1 AS `prj_pis_dir_sh_regular_senior`,
 1 AS `prj_pis_dir_sh_part_time_male`,
 1 AS `prj_pis_dir_sh_part_time_female`,
 1 AS `prj_pis_dir_sh_part_time_pwd`,
 1 AS `prj_pis_dir_sh_part_time_senior`,
 1 AS `prj_pis_indir_backward_male`,
 1 AS `prj_pis_indir_backward_female`,
 1 AS `prj_pis_indir_backward_pwd`,
 1 AS `prj_pis_indir_backward_senior`,
 1 AS `prj_pis_indir_forward_male`,
 1 AS `prj_pis_indir_forward_female`,
 1 AS `prj_pis_indir_forward_pwd`,
 1 AS `prj_pis_indir_forward_senior`,
 1 AS `prj_pis_volume_production_local`,
 1 AS `prj_pis_volume_production_export`,
 1 AS `prj_pis_gross_sales_local`,
 1 AS `prj_pis_gross_sales_export`,
 1 AS `prj_pis_countries_of_destination`,
 1 AS `prj_pis_assistance_conceptualization`,
 1 AS `prj_pis_assistance_proposal_preparation`,
 1 AS `prj_pis_assistance_process`,
 1 AS `prj_pis_assistance_equipment`,
 1 AS `prj_pis_assistance_quality_control`,
 1 AS `prj_pis_assistance_packaging_labeling`,
 1 AS `prj_pis_assistance_post_harvest`,
 1 AS `prj_pis_assistance_marketing`,
 1 AS `prj_pis_assistance_training`,
 1 AS `prj_pis_assistance_consultancy`,
 1 AS `prj_pis_assistance_others`,
 1 AS `prj_pis_remarks`,
 1 AS `prj_cost_benefactor_desc`,
 1 AS `prj_fundingsource_local`,
 1 AS `prj_fundingsource_external`,
 1 AS `province_name`,
 1 AS `region_id`,
 1 AS `region_name`,
 1 AS `city_name`,
 1 AS `district_id`,
 1 AS `district_name`,
 1 AS `barangay_name`,
 1 AS `prj_type_name`,
 1 AS `prj_status_name`,
 1 AS `ug_name`,
 1 AS `rep_total_amount`,
 1 AS `rep_refund_rate`,
 1 AS `rep_total_due`,
 1 AS `rep_total_paid`,
 1 AS `sector_list`,
 1 AS `prj_sector_list`,
 1 AS `coop_names`,
 1 AS `coop_p_names`,
 1 AS `collaborator_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_provinces`
--

DROP TABLE IF EXISTS `vwpsi_provinces`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_provinces`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_provinces` AS SELECT 
 1 AS `province_id`,
 1 AS `province_name`,
 1 AS `region_name`,
 1 AS `region_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_regions`
--

DROP TABLE IF EXISTS `vwpsi_regions`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_regions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_regions` AS SELECT 
 1 AS `region_id`,
 1 AS `region_code`,
 1 AS `region_name`,
 1 AS `region_text`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_repayments`
--

DROP TABLE IF EXISTS `vwpsi_repayments`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_repayments` AS SELECT 
 1 AS `rep_id`,
 1 AS `rep_start_year`,
 1 AS `rep_start_month`,
 1 AS `rep_amount`,
 1 AS `rep_month_count`,
 1 AS `rep_otb_paid`,
 1 AS `rep_remarks`,
 1 AS `rep_add_amount`,
 1 AS `rep_add_check_date`,
 1 AS `rep_add_check_no`,
 1 AS `rep_ub_amount`,
 1 AS `rep_ub_check_date`,
 1 AS `rep_ub_check_no`,
 1 AS `rep_monthly_payment`,
 1 AS `rep_total_amount`,
 1 AS `prj_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `rep_otb`,
 1 AS `rep_total_due`,
 1 AS `rep_total_paid`,
 1 AS `rep_payment_count`,
 1 AS `rep_deferment_monthcount`,
 1 AS `rep_total_penalty_amount_due`,
 1 AS `rep_total_penalty_amount_paid`,
 1 AS `rep_balance`,
 1 AS `rep_otb_amount_paid`,
 1 AS `rep_otb_amount`,
 1 AS `rep_amount_with_otb`,
 1 AS `rep_ub_receipt_no`,
 1 AS `rep_refund_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_repayments_all`
--

DROP TABLE IF EXISTS `vwpsi_repayments_all`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_all`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_repayments_all` AS SELECT 
 1 AS `rep_all_due`,
 1 AS `rep_all_paid`,
 1 AS `rep_all_balance`,
 1 AS `rep_all_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_repayments_payments`
--

DROP TABLE IF EXISTS `vwpsi_repayments_payments`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_payments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_repayments_payments` AS SELECT 
 1 AS `pay_id`,
 1 AS `pay_year`,
 1 AS `pay_month`,
 1 AS `pay_count`,
 1 AS `pay_level`,
 1 AS `pay_amount_due`,
 1 AS `pay_amount_paid`,
 1 AS `pay_amount_date_paid`,
 1 AS `pay_check_no`,
 1 AS `pay_check_date`,
 1 AS `pay_receipt_no`,
 1 AS `pay_type_id`,
 1 AS `pay_otb`,
 1 AS `pay_penalty_amount_due`,
 1 AS `pay_penalty_amount_paid`,
 1 AS `pay_penalty_date_paid`,
 1 AS `pay_remarks`,
 1 AS `rep_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `pay_type_name`,
 1 AS `pay_overdue_amount_due`,
 1 AS `pay_overdue_amount_paid`,
 1 AS `pay_overdue_date_paid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_repayments_totals`
--

DROP TABLE IF EXISTS `vwpsi_repayments_totals`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_totals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_repayments_totals` AS SELECT 
 1 AS `rep_total_due`,
 1 AS `rep_total_paid`,
 1 AS `rep_payment_count`,
 1 AS `rep_total_penalty_amount_due`,
 1 AS `rep_total_penalty_amount_paid`,
 1 AS `rep_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_repayments_totals_per_province`
--

DROP TABLE IF EXISTS `vwpsi_repayments_totals_per_province`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_totals_per_province`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_repayments_totals_per_province` AS SELECT 
 1 AS `rep_total_due`,
 1 AS `rep_total_paid`,
 1 AS `rep_payment_count`,
 1 AS `rep_total_penalty_amount_due`,
 1 AS `rep_total_penalty_amount_paid`,
 1 AS `province_id`,
 1 AS `province_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_repayments_with_projects`
--

DROP TABLE IF EXISTS `vwpsi_repayments_with_projects`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_with_projects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_repayments_with_projects` AS SELECT 
 1 AS `rep_id`,
 1 AS `rep_start_year`,
 1 AS `rep_start_month`,
 1 AS `rep_amount`,
 1 AS `rep_month_count`,
 1 AS `rep_otb_paid`,
 1 AS `rep_remarks`,
 1 AS `rep_add_amount`,
 1 AS `rep_add_check_date`,
 1 AS `rep_add_check_no`,
 1 AS `rep_ub_amount`,
 1 AS `rep_ub_check_date`,
 1 AS `rep_ub_check_no`,
 1 AS `rep_monthly_payment`,
 1 AS `rep_total_amount`,
 1 AS `prj_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `rep_otb`,
 1 AS `rep_total_paid`,
 1 AS `rep_payment_count`,
 1 AS `rep_deferment_monthcount`,
 1 AS `rep_total_penalty_amount_due`,
 1 AS `rep_total_penalty_amount_paid`,
 1 AS `rep_balance`,
 1 AS `rep_otb_amount_paid`,
 1 AS `rep_otb_amount`,
 1 AS `rep_amount_with_otb`,
 1 AS `rep_ub_receipt_no`,
 1 AS `rep_refund_rate`,
 1 AS `prj_title`,
 1 AS `prj_code`,
 1 AS `prj_year_approved`,
 1 AS `prj_objective`,
 1 AS `prj_expected_output`,
 1 AS `prj_product_line`,
 1 AS `prj_cost_setup`,
 1 AS `prj_cost_gia`,
 1 AS `prj_cost_rollout`,
 1 AS `prj_cost_benefactor`,
 1 AS `prj_cost_other`,
 1 AS `prj_intervention`,
 1 AS `prj_longitude`,
 1 AS `prj_latitude`,
 1 AS `prj_elevation`,
 1 AS `prj_type_id`,
 1 AS `prj_status_id`,
 1 AS `prj_remarks`,
 1 AS `province_id`,
 1 AS `city_id`,
 1 AS `barangay_id`,
 1 AS `ug_id`,
 1 AS `prj_type_name`,
 1 AS `prj_status_name`,
 1 AS `province_name`,
 1 AS `region_name`,
 1 AS `city_name`,
 1 AS `barangay_name`,
 1 AS `ug_name`,
 1 AS `prj_fund_release_date`,
 1 AS `prj_refund_period_from`,
 1 AS `prj_refund_period_to`,
 1 AS `prj_province`,
 1 AS `prj_city`,
 1 AS `prj_barangay`,
 1 AS `prj_sector_list`,
 1 AS `coop_names`,
 1 AS `collaborator_names`,
 1 AS `prj_address`,
 1 AS `coop_p_names`,
 1 AS `sector_name`,
 1 AS `district_name`,
 1 AS `district_id`,
 1 AS `region_id`,
 1 AS `sector_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_scholarships`
--

DROP TABLE IF EXISTS `vwpsi_scholarships`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_scholarships`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_scholarships` AS SELECT 
 1 AS `scholar_id`,
 1 AS `scholar_fname`,
 1 AS `scholar_mname`,
 1 AS `scholar_lname`,
 1 AS `scholar_name`,
 1 AS `scholar_suffix`,
 1 AS `scholar_mobile`,
 1 AS `scholar_email`,
 1 AS `scholar_address`,
 1 AS `scholar_year_award`,
 1 AS `scholar_remarks`,
 1 AS `scholar_stat_id`,
 1 AS `scholar_prog_id`,
 1 AS `school_id`,
 1 AS `course_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `scholar_prog_name`,
 1 AS `scholar_prog_desc`,
 1 AS `school_name`,
 1 AS `school_acronym`,
 1 AS `school_address`,
 1 AS `school_coordinator`,
 1 AS `school_email`,
 1 AS `school_phone`,
 1 AS `school_mobile`,
 1 AS `course_name`,
 1 AS `course_cat_id`,
 1 AS `course_yearcount`,
 1 AS `course_cat_name`,
 1 AS `course_label`,
 1 AS `scholar_stat_name`,
 1 AS `scholar_stat_abbr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_service_provider_services`
--

DROP TABLE IF EXISTS `vwpsi_service_provider_services`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_service_provider_services`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_service_provider_services` AS SELECT 
 1 AS `sps_id`,
 1 AS `sp_id`,
 1 AS `service_id`,
 1 AS `service_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_service_providers`
--

DROP TABLE IF EXISTS `vwpsi_service_providers`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_service_providers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_service_providers` AS SELECT 
 1 AS `sp_id`,
 1 AS `sp_name`,
 1 AS `sp_other_service`,
 1 AS `sp_designation`,
 1 AS `sp_fname`,
 1 AS `sp_mname`,
 1 AS `sp_lname`,
 1 AS `sp_contact_name`,
 1 AS `sp_address`,
 1 AS `sp_expertise`,
 1 AS `sp_product_line`,
 1 AS `sp_phone`,
 1 AS `sp_mobile`,
 1 AS `sp_email`,
 1 AS `sp_website`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_trainings`
--

DROP TABLE IF EXISTS `vwpsi_trainings`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_trainings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_trainings` AS SELECT 
 1 AS `tr_id`,
 1 AS `tr_title`,
 1 AS `tr_start`,
 1 AS `tr_end`,
 1 AS `tr_duration`,
 1 AS `tr_location`,
 1 AS `tr_longitude`,
 1 AS `tr_latitude`,
 1 AS `tr_elevation`,
 1 AS `tr_cost`,
 1 AS `tr_csf`,
 1 AS `tr_no_feminine`,
 1 AS `tr_no_musculine`,
 1 AS `tr_no_pwd`,
 1 AS `tr_no_seniors`,
 1 AS `tr_no_firms`,
 1 AS `tr_no_participants`,
 1 AS `tr_type_id`,
 1 AS `prj_id`,
 1 AS `ug_id`,
 1 AS `sp_id`,
 1 AS `encoder`,
 1 AS `date_encoded`,
 1 AS `updater`,
 1 AS `last_updated`,
 1 AS `tr_type_name`,
 1 AS `sp_name`,
 1 AS `sp_other_service`,
 1 AS `sp_designation`,
 1 AS `sp_fname`,
 1 AS `sp_mname`,
 1 AS `sp_lname`,
 1 AS `sp_address`,
 1 AS `sp_expertise`,
 1 AS `sp_product_line`,
 1 AS `sp_phone`,
 1 AS `sp_mobile`,
 1 AS `sp_email`,
 1 AS `sp_website`,
 1 AS `ug_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_usergroup_rights`
--

DROP TABLE IF EXISTS `vwpsi_usergroup_rights`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_usergroup_rights`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_usergroup_rights` AS SELECT 
 1 AS `ugr_id`,
 1 AS `ug_id`,
 1 AS `ur_id`,
 1 AS `ugr_view`,
 1 AS `ugr_add`,
 1 AS `ugr_edit`,
 1 AS `ugr_delete`,
 1 AS `ug_name`,
 1 AS `ur_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwpsi_users`
--

DROP TABLE IF EXISTS `vwpsi_users`;
/*!50001 DROP VIEW IF EXISTS `vwpsi_users`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwpsi_users` AS SELECT 
 1 AS `u_id`,
 1 AS `u_username`,
 1 AS `u_password`,
 1 AS `u_name`,
 1 AS `u_name_rev`,
 1 AS `u_lname`,
 1 AS `u_fname`,
 1 AS `u_mname`,
 1 AS `u_mobile`,
 1 AS `u_email`,
 1 AS `ug_id`,
 1 AS `u_enabled`,
 1 AS `ug_name`,
 1 AS `ug_is_admin`,
 1 AS `region_id`,
 1 AS `region_code`,
 1 AS `region_name`,
 1 AS `u_region_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vwpsi_activities`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_activities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_activities` AS select `psi_activities`.`activity_id` AS `activity_id`,`psi_activities`.`activity_type_id` AS `activity_type_id`,`psi_activities`.`activity_title` AS `activity_title`,`psi_activities`.`activity_target_date` AS `activity_target_date`,`psi_activities`.`activity_date_accomplished` AS `activity_date_accomplished`,year(`psi_activities`.`activity_date_accomplished`) AS `activity_date_accomplished_yr`,month(`psi_activities`.`activity_date_accomplished`) AS `activity_date_accomplished_mo`,`psi_activities`.`activity_no_articles` AS `activity_no_articles`,`psi_activities`.`activity_csf` AS `activity_csf`,`psi_activities`.`activity_address` AS `activity_address`,`psi_activities`.`activity_remarks` AS `activity_remarks`,`psi_activities`.`activity_no_participants` AS `activity_no_participants`,`psi_activities`.`activity_no_male` AS `activity_no_male`,`psi_activities`.`activity_no_female` AS `activity_no_female`,`psi_activities`.`activity_no_pwd` AS `activity_no_pwd`,`psi_activities`.`activity_no_senior` AS `activity_no_senior`,`psi_activities`.`encoder` AS `encoder`,`psi_activities`.`date_encoded` AS `date_encoded`,`psi_activities`.`updater` AS `updater`,`psi_activities`.`last_updated` AS `last_updated`,`psi_activities`.`region_id` AS `region_id`,`psi_activity_types`.`activity_type_name` AS `activity_type_name` from (`psi_activities` left join `psi_activity_types` on((`psi_activities`.`activity_type_id` = `psi_activity_types`.`activity_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_calibrations`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_calibrations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_calibrations` AS select `psi_calibrations`.`cal_id` AS `cal_id`,`psi_calibrations`.`cal_month` AS `cal_month`,`psi_calibrations`.`cal_year` AS `cal_year`,`psi_calibrations`.`cal_no_tests` AS `cal_no_tests`,`psi_calibrations`.`cal_no_calibrations` AS `cal_no_calibrations`,`psi_calibrations`.`cal_no_clients` AS `cal_no_clients`,`psi_calibrations`.`cal_no_firms` AS `cal_no_firms`,`psi_calibrations`.`cal_income` AS `cal_income`,`psi_calibrations`.`cal_income_gross` AS `cal_income_gross`,`psi_calibrations`.`cal_value_service` AS `cal_value_service`,`psi_calibrations`.`lab_id` AS `lab_id`,`psi_calibrations`.`encoder` AS `encoder`,`psi_calibrations`.`date_encoded` AS `date_encoded`,`psi_calibrations`.`updater` AS `updater`,`psi_calibrations`.`last_updated` AS `last_updated`,`psi_calibrations`.`region_id` AS `region_id`,`psi_laboratories`.`lab_name` AS `lab_name`,`psi_laboratories`.`lab_abbr` AS `lab_abbr`,`psi_calibrations`.`ug_id` AS `ug_id`,`psi_usergroups`.`ug_name` AS `ug_name` from ((`psi_calibrations` left join `psi_laboratories` on((`psi_calibrations`.`lab_id` = `psi_laboratories`.`lab_id`))) left join `psi_usergroups` on((`psi_calibrations`.`ug_id` = `psi_usergroups`.`ug_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_cities`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_cities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_cities` AS select `psi_cities`.`city_id` AS `city_id`,`psi_cities`.`province_id` AS `province_id`,`psi_cities`.`city_name` AS `city_name`,`psi_cities`.`district_id` AS `district_id`,`psi_districts`.`district_name` AS `district_name`,`psi_provinces`.`province_name` AS `province_name`,`psi_provinces`.`region_id` AS `region_id`,`psi_regions`.`region_code` AS `region_code`,`psi_regions`.`region_name` AS `region_name` from (((`psi_cities` left join `psi_districts` on((`psi_districts`.`district_id` = `psi_cities`.`district_id`))) left join `psi_provinces` on((`psi_provinces`.`province_id` = `psi_cities`.`province_id`))) left join `psi_regions` on((`psi_regions`.`region_id` = `psi_provinces`.`region_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_collaborators`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_collaborators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_collaborators` AS select `psi_collaborators`.`col_id` AS `col_id`,`psi_collaborators`.`col_name` AS `col_name`,`psi_collaborators`.`col_abbr` AS `col_abbr`,`psi_collaborators`.`ot_id` AS `ot_id`,`psi_organization_types`.`ot_name` AS `ot_name` from (`psi_collaborators` left join `psi_organization_types` on((`psi_collaborators`.`ot_id` = `psi_organization_types`.`ot_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_consultancies`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_consultancies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_consultancies` AS select `psi_consultancies`.`con_id` AS `con_id`,`psi_consultancies`.`con_start` AS `con_start`,`psi_consultancies`.`con_end` AS `con_end`,year(`psi_consultancies`.`con_start`) AS `con_start_yr`,month(`psi_consultancies`.`con_start`) AS `con_start_mo`,year(`psi_consultancies`.`con_end`) AS `con_end_yr`,month(`psi_consultancies`.`con_end`) AS `con_end_mo`,`psi_consultancies`.`con_type_id` AS `con_type_id`,`psi_consultancies`.`prj_id` AS `prj_id`,`psi_consultancies`.`coop_id` AS `coop_id`,`psi_consultancies`.`sp_id` AS `sp_id`,`psi_consultancies`.`ug_id` AS `ug_id`,`psi_consultancies`.`encoder` AS `encoder`,`psi_consultancies`.`date_encoded` AS `date_encoded`,`psi_consultancies`.`updater` AS `updater`,`psi_consultancies`.`last_updated` AS `last_updated`,`psi_consultancy_types`.`con_type_name` AS `con_type_name`,`psi_consultancies`.`region_id` AS `region_id`,`vwpsi_cooperators`.`coop_name` AS `coop_name`,`vwpsi_cooperators`.`coop_p_fname` AS `coop_p_fname`,`vwpsi_cooperators`.`coop_p_mname` AS `coop_p_mname`,`vwpsi_cooperators`.`coop_p_lname` AS `coop_p_lname`,`vwpsi_cooperators`.`coop_p_name` AS `coop_p_name`,`vwpsi_cooperators`.`coop_address` AS `coop_address`,`vwpsi_cooperators`.`coop_phone` AS `coop_phone`,`vwpsi_cooperators`.`coop_fax` AS `coop_fax`,`vwpsi_cooperators`.`coop_mobile` AS `coop_mobile`,`vwpsi_cooperators`.`coop_email` AS `coop_email`,`vwpsi_cooperators`.`coop_website` AS `coop_website`,`vwpsi_cooperators`.`coop_year_established` AS `coop_year_established`,`vwpsi_service_providers`.`sp_name` AS `sp_name`,`vwpsi_service_providers`.`sp_other_service` AS `sp_other_service`,`vwpsi_service_providers`.`sp_designation` AS `sp_designation`,`vwpsi_service_providers`.`sp_fname` AS `sp_fname`,`vwpsi_service_providers`.`sp_mname` AS `sp_mname`,`vwpsi_service_providers`.`sp_lname` AS `sp_lname`,`vwpsi_service_providers`.`sp_contact_name` AS `sp_contact_name`,`vwpsi_service_providers`.`sp_address` AS `sp_address`,`vwpsi_service_providers`.`sp_expertise` AS `sp_expertise`,`vwpsi_service_providers`.`sp_product_line` AS `sp_product_line`,`vwpsi_service_providers`.`sp_phone` AS `sp_phone`,`vwpsi_service_providers`.`sp_mobile` AS `sp_mobile`,`vwpsi_service_providers`.`sp_email` AS `sp_email`,`vwpsi_service_providers`.`sp_website` AS `sp_website`,`psi_usergroups`.`ug_name` AS `ug_name`,`vwpsi_cooperators`.`coop_reg_dti` AS `coop_reg_dti`,`vwpsi_cooperators`.`coop_reg_sec` AS `coop_reg_sec`,`vwpsi_cooperators`.`coop_reg_others` AS `coop_reg_others`,`vwpsi_cooperators`.`coop_reg_cda` AS `coop_reg_cda`,`vwpsi_cooperators`.`coop_reg_dti_date` AS `coop_reg_dti_date`,`vwpsi_cooperators`.`coop_reg_sec_date` AS `coop_reg_sec_date`,`vwpsi_cooperators`.`coop_reg_cda_date` AS `coop_reg_cda_date`,`vwpsi_cooperators`.`coop_products` AS `coop_products`,`vwpsi_cooperators`.`coop_brief` AS `coop_brief`,`vwpsi_cooperators`.`ot_cat1_id` AS `ot_cat1_id`,`vwpsi_cooperators`.`ot_cat3_id` AS `ot_cat3_id`,`vwpsi_cooperators`.`ot_cat2_id` AS `ot_cat2_id`,`vwpsi_cooperators`.`ot_cat1_name` AS `ot_cat1_name`,`vwpsi_cooperators`.`ot_cat2_name` AS `ot_cat2_name`,`vwpsi_cooperators`.`ot_cat3_name` AS `ot_cat3_name` from ((((`psi_consultancies` left join `psi_consultancy_types` on((`psi_consultancies`.`con_type_id` = `psi_consultancy_types`.`con_type_id`))) left join `vwpsi_cooperators` on((`psi_consultancies`.`coop_id` = `vwpsi_cooperators`.`coop_id`))) left join `vwpsi_service_providers` on((`psi_consultancies`.`sp_id` = `vwpsi_service_providers`.`sp_id`))) left join `psi_usergroups` on((`psi_consultancies`.`ug_id` = `psi_usergroups`.`ug_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_coop_sector_list`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_coop_sector_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_coop_sector_list` AS select `psi_coop_sectors`.`coop_id` AS `coop_id`,group_concat(`psi_sectors`.`sector_name` separator ', ') AS `sector_list` from (`psi_coop_sectors` left join `psi_sectors` on((`psi_coop_sectors`.`sector_id` = `psi_sectors`.`sector_id`))) group by `psi_coop_sectors`.`coop_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_cooperator_project_counts`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_cooperator_project_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_cooperator_project_counts` AS select count(`psi_project_beneficiaries`.`prj_ben_id`) AS `coop_count`,`psi_project_beneficiaries`.`coop_id` AS `coop_id` from `psi_project_beneficiaries` group by `psi_project_beneficiaries`.`coop_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_cooperator_projects`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_cooperator_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_cooperator_projects` AS select `psi_project_beneficiaries`.`prj_ben_id` AS `prj_ben_id`,`psi_project_beneficiaries`.`prj_id` AS `prj_id`,`psi_project_beneficiaries`.`coop_id` AS `coop_id`,`vwpsi_projects`.`prj_title` AS `prj_title`,`vwpsi_projects`.`prj_code` AS `prj_code`,`vwpsi_projects`.`prj_year_approved` AS `prj_year_approved`,`vwpsi_projects`.`prj_objective` AS `prj_objective`,`vwpsi_projects`.`prj_expected_output` AS `prj_expected_output`,`vwpsi_projects`.`prj_product_line` AS `prj_product_line`,`vwpsi_projects`.`prj_cost_setup` AS `prj_cost_setup`,`vwpsi_projects`.`prj_cost_gia` AS `prj_cost_gia`,`vwpsi_projects`.`prj_cost_rollout` AS `prj_cost_rollout`,`vwpsi_projects`.`prj_cost_benefactor` AS `prj_cost_benefactor`,`vwpsi_projects`.`prj_cost_other` AS `prj_cost_other`,`vwpsi_projects`.`prj_intervention` AS `prj_intervention`,`vwpsi_projects`.`prj_longitude` AS `prj_longitude`,`vwpsi_projects`.`prj_latitude` AS `prj_latitude`,`vwpsi_projects`.`prj_elevation` AS `prj_elevation`,`vwpsi_projects`.`prj_type_id` AS `prj_type_id`,`vwpsi_projects`.`prj_status_id` AS `prj_status_id`,`vwpsi_projects`.`province_id` AS `province_id`,`vwpsi_projects`.`city_id` AS `city_id`,`vwpsi_projects`.`barangay_id` AS `barangay_id`,`vwpsi_projects`.`ug_id` AS `ug_id`,`vwpsi_projects`.`encoder` AS `encoder`,`vwpsi_projects`.`date_encoded` AS `date_encoded`,`vwpsi_projects`.`updater` AS `updater`,`vwpsi_projects`.`last_updated` AS `last_updated`,`vwpsi_projects`.`prj_type_name` AS `prj_type_name`,`vwpsi_projects`.`prj_status_name` AS `prj_status_name`,`vwpsi_projects`.`prj_sector_list` AS `prj_sector_list`,`vwpsi_projects`.`province_name` AS `province_name`,`vwpsi_projects`.`region_name` AS `region_name`,`vwpsi_projects`.`city_name` AS `city_name`,`vwpsi_projects`.`barangay_name` AS `barangay_name`,`vwpsi_projects`.`ug_name` AS `ug_name` from (`psi_project_beneficiaries` left join `vwpsi_projects` on((`psi_project_beneficiaries`.`prj_id` = `vwpsi_projects`.`prj_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_cooperators`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_cooperators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_cooperators` AS select `psi_cooperators`.`coop_id` AS `coop_id`,`psi_cooperators`.`coop_name` AS `coop_name`,`psi_cooperators`.`coop_p_fname` AS `coop_p_fname`,`psi_cooperators`.`coop_p_mname` AS `coop_p_mname`,`psi_cooperators`.`coop_p_lname` AS `coop_p_lname`,concat(`psi_cooperators`.`coop_p_fname`,convert(if((char_length(`psi_cooperators`.`coop_p_fname`) > 0),' ','') using latin1),`psi_cooperators`.`coop_p_mname`,convert(if((char_length(`psi_cooperators`.`coop_p_mname`) > 0),' ','') using latin1),`psi_cooperators`.`coop_p_lname`) AS `coop_p_name`,`psi_cooperators`.`coop_address` AS `coop_address`,`psi_cooperators`.`coop_phone` AS `coop_phone`,`psi_cooperators`.`coop_fax` AS `coop_fax`,`psi_cooperators`.`coop_mobile` AS `coop_mobile`,`psi_cooperators`.`coop_email` AS `coop_email`,`psi_cooperators`.`coop_website` AS `coop_website`,`psi_cooperators`.`coop_year_established` AS `coop_year_established`,`psi_cooperators`.`ot_id` AS `ot_id`,`psi_cooperators`.`loc_id` AS `loc_id`,`psi_cooperators`.`encoder` AS `encoder`,`psi_cooperators`.`date_encoded` AS `date_encoded`,`psi_cooperators`.`updater` AS `updater`,`psi_cooperators`.`last_updated` AS `last_updated`,`psi_cooperators`.`coop_reg_dti` AS `coop_reg_dti`,`psi_cooperators`.`coop_reg_sec` AS `coop_reg_sec`,`psi_cooperators`.`coop_reg_cda` AS `coop_reg_cda`,`psi_cooperators`.`coop_reg_others` AS `coop_reg_others`,`psi_cooperators`.`coop_reg_dti_date` AS `coop_reg_dti_date`,`psi_cooperators`.`coop_reg_sec_date` AS `coop_reg_sec_date`,`psi_cooperators`.`coop_reg_cda_date` AS `coop_reg_cda_date`,`psi_cooperators`.`coop_products` AS `coop_products`,`psi_cooperators`.`coop_brief` AS `coop_brief`,`psi_cooperators`.`ot_cat1_id` AS `ot_cat1_id`,`psi_cooperators`.`ot_cat2_id` AS `ot_cat2_id`,`psi_cooperators`.`ot_cat3_id` AS `ot_cat3_id`,`psi_organization_types_cat1`.`ot_cat1_name` AS `ot_cat1_name`,`psi_organization_types_cat2`.`ot_cat2_name` AS `ot_cat2_name`,`psi_organization_types_cat3`.`ot_cat3_name` AS `ot_cat3_name`,ifnull(`vwpsi_coop_sector_list`.`sector_list`,'') AS `coop_sector_list`,`psi_cooperators`.`ug_id` AS `ug_id`,`psi_usergroups`.`ug_name` AS `ug_name` from (((((`psi_cooperators` left join `psi_organization_types_cat1` on((`psi_cooperators`.`ot_cat1_id` = `psi_organization_types_cat1`.`ot_cat1_id`))) left join `psi_organization_types_cat2` on((`psi_cooperators`.`ot_cat2_id` = `psi_organization_types_cat2`.`ot_cat2_id`))) left join `psi_organization_types_cat3` on((`psi_cooperators`.`ot_cat3_id` = `psi_organization_types_cat3`.`ot_cat3_id`))) left join `vwpsi_coop_sector_list` on((`psi_cooperators`.`coop_id` = `vwpsi_coop_sector_list`.`coop_id`))) left join `psi_usergroups` on((`psi_cooperators`.`ug_id` = `psi_usergroups`.`ug_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_courses`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_courses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_courses` AS select `psi_courses`.`course_id` AS `course_id`,`psi_courses`.`course_cat_id` AS `course_cat_id`,`psi_courses`.`course_name` AS `course_name`,`psi_courses`.`course_yearcount` AS `course_yearcount`,`psi_course_categories`.`course_cat_name` AS `course_cat_name`,concat(`psi_course_categories`.`course_cat_name`,' - ',`psi_courses`.`course_name`) AS `course_label` from (`psi_courses` left join `psi_course_categories` on((`psi_courses`.`course_cat_id` = `psi_course_categories`.`course_cat_id`))) order by `psi_course_categories`.`course_cat_name`,`psi_courses`.`course_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_deferment_monthcounts`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_deferment_monthcounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_deferment_monthcounts` AS select sum(`psi_repayments_payments`.`pay_count`) AS `rep_deferment_monthcount`,`psi_repayments_payments`.`rep_id` AS `rep_id` from `psi_repayments_payments` where (`psi_repayments_payments`.`pay_otb` = 2) group by `psi_repayments_payments`.`rep_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_equipment`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_equipment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_equipment` AS select `psi_equipment`.`eqp_id` AS `eqp_id`,`psi_equipment`.`eqp_specs` AS `eqp_specs`,`psi_equipment`.`eqp_qty` AS `eqp_qty`,`psi_equipment`.`eqp_amount_acquired` AS `eqp_amount_acquired`,`psi_equipment`.`eqp_amount_approved` AS `eqp_amount_approved`,`psi_equipment`.`eqp_property_no` AS `eqp_property_no`,`psi_equipment`.`eqp_receipt_no` AS `eqp_receipt_no`,`psi_equipment`.`eqp_receipt_date` AS `eqp_receipt_date`,`psi_equipment`.`eqp_warranty` AS `eqp_warranty`,`psi_equipment`.`eqp_date_acquired` AS `eqp_date_acquired`,`psi_equipment`.`eqp_date_tagged` AS `eqp_date_tagged`,`psi_equipment`.`eqp_remarks` AS `eqp_remarks`,`psi_equipment`.`brand_id` AS `brand_id`,`psi_equipment`.`prj_id` AS `prj_id`,`psi_equipment`.`sp_id` AS `sp_id`,`psi_equipment`.`encoder` AS `encoder`,`psi_equipment`.`date_encoded` AS `date_encoded`,`psi_equipment`.`updater` AS `updater`,`psi_equipment`.`last_updated` AS `last_updated`,`psi_equipment_brands`.`brand_name` AS `brand_name`,`psi_service_providers`.`sp_name` AS `sp_name`,`psi_service_providers`.`sp_other_service` AS `sp_other_service`,`psi_service_providers`.`sp_designation` AS `sp_designation`,`psi_service_providers`.`sp_fname` AS `sp_fname`,`psi_service_providers`.`sp_mname` AS `sp_mname`,`psi_service_providers`.`sp_lname` AS `sp_lname`,concat(`psi_service_providers`.`sp_fname`,convert(if((char_length(`psi_service_providers`.`sp_fname`) > 0),' ','') using latin1),`psi_service_providers`.`sp_mname`,convert(if((char_length(`psi_service_providers`.`sp_mname`) > 0),' ','') using latin1),`psi_service_providers`.`sp_lname`) AS `sp_contact_name`,`psi_service_providers`.`sp_address` AS `sp_address`,`psi_service_providers`.`sp_expertise` AS `sp_expertise`,`psi_service_providers`.`sp_product_line` AS `sp_product_line`,`psi_service_providers`.`sp_phone` AS `sp_phone`,`psi_service_providers`.`sp_mobile` AS `sp_mobile`,`psi_service_providers`.`sp_email` AS `sp_email`,`psi_service_providers`.`sp_website` AS `sp_website` from ((`psi_equipment` left join `psi_equipment_brands` on((`psi_equipment`.`brand_id` = `psi_equipment_brands`.`brand_id`))) left join `psi_service_providers` on((`psi_equipment`.`sp_id` = `psi_service_providers`.`sp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_fora`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_fora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_fora` AS select `psi_fora`.`fr_id` AS `fr_id`,`psi_fora`.`fr_requesting_party` AS `fr_requesting_party`,`psi_fora`.`fr_title` AS `fr_title`,`psi_fora`.`fr_sectors` AS `fr_sectors`,`psi_fora`.`fr_start` AS `fr_start`,`psi_fora`.`fr_end` AS `fr_end`,year(`psi_fora`.`fr_start`) AS `fr_start_yr`,month(`psi_fora`.`fr_start`) AS `fr_start_mo`,year(`psi_fora`.`fr_end`) AS `fr_end_yr`,month(`psi_fora`.`fr_end`) AS `fr_end_mo`,`psi_fora`.`fr_duration` AS `fr_duration`,`psi_fora`.`fr_location` AS `fr_location`,`psi_fora`.`fr_longitude` AS `fr_longitude`,`psi_fora`.`fr_latitude` AS `fr_latitude`,`psi_fora`.`fr_elevation` AS `fr_elevation`,`psi_fora`.`fr_cost` AS `fr_cost`,`psi_fora`.`fr_csf` AS `fr_csf`,`psi_fora`.`fr_no_feminine` AS `fr_no_feminine`,`psi_fora`.`fr_no_masculine` AS `fr_no_masculine`,`psi_fora`.`fr_no_pwd` AS `fr_no_pwd`,`psi_fora`.`fr_no_seniors` AS `fr_no_seniors`,`psi_fora`.`fr_no_firms` AS `fr_no_firms`,`psi_fora`.`fr_no_participants` AS `fr_no_participants`,`psi_fora`.`fr_type_id` AS `fr_type_id`,`psi_fora`.`fr_remarks` AS `fr_remarks`,`psi_fora`.`prj_id` AS `prj_id`,`psi_fora`.`ug_id` AS `ug_id`,`psi_fora`.`region_id` AS `region_id`,`psi_fora`.`encoder` AS `encoder`,`psi_fora`.`date_encoded` AS `date_encoded`,`psi_fora`.`updater` AS `updater`,`psi_fora`.`last_updated` AS `last_updated`,`psi_fora_types`.`fr_type_name` AS `fr_type_name`,`psi_regions`.`region_code` AS `region_code`,`psi_regions`.`region_name` AS `region_name`,`psi_projects`.`prj_title` AS `prj_title`,`psi_projects`.`prj_year_approved` AS `prj_year_approved`,`psi_projects`.`prj_code` AS `prj_code`,`psi_usergroups`.`ug_name` AS `ug_name`,`vwpsi_fora_collaborators`.`collaborator_names` AS `collaborator_names`,`psi_usergroups1`.`ug_name` AS `ug_name1` from ((((((`psi_fora` left join `psi_fora_types` on((`psi_fora`.`fr_type_id` = `psi_fora_types`.`fr_type_id`))) left join `psi_regions` on((`psi_fora`.`region_id` = `psi_regions`.`region_id`))) left join `psi_projects` on((`psi_fora`.`prj_id` = `psi_projects`.`prj_id`))) left join `psi_usergroups` on((`psi_fora`.`ug_id` = `psi_usergroups`.`ug_id`))) left join `vwpsi_fora_collaborators` on((`psi_fora`.`fr_id` = `vwpsi_fora_collaborators`.`fr_id`))) left join `psi_usergroups` `psi_usergroups1` on((`psi_fora`.`ug_id` = `psi_usergroups1`.`ug_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_fora_collaborators`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_fora_collaborators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_fora_collaborators` AS select `psi_fora_collaborators`.`fr_id` AS `fr_id`,group_concat(`vwpsi_collaborators`.`col_name` separator ', ') AS `collaborator_names` from (`psi_fora_collaborators` left join `vwpsi_collaborators` on((`psi_fora_collaborators`.`col_id` = `vwpsi_collaborators`.`col_id`))) group by `psi_fora_collaborators`.`fr_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_fora_documents`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_fora_documents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_fora_documents` AS select `psi_fora_documents`.`frdoc_id` AS `frdoc_id`,`psi_fora_documents`.`frdoc_file` AS `frdoc_file`,`psi_fora_documents`.`frdoc_filename` AS `frdoc_filename`,`psi_fora_documents`.`frdoc_remarks` AS `frdoc_remarks`,`psi_fora_documents`.`fdoctype_id` AS `fdoctype_id`,`psi_fora_documents`.`fr_id` AS `fr_id`,`psi_fora_documents`.`encoder` AS `encoder`,`psi_fora_documents`.`date_encoded` AS `date_encoded`,`psi_fora_documents`.`updater` AS `updater`,`psi_fora_documents`.`last_updated` AS `last_updated`,`psi_fora_document_types`.`fdoctype_name` AS `fdoctype_name` from (`psi_fora_documents` left join `psi_fora_document_types` on((`psi_fora_documents`.`fdoctype_id` = `psi_fora_document_types`.`fdoctype_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_otb_payments`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_otb_payments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_otb_payments` AS select sum(`psi_repayments_payments`.`pay_amount_paid`) AS `rep_otb_amount_paid`,`psi_repayments_payments`.`rep_id` AS `rep_id` from `psi_repayments_payments` where (`psi_repayments_payments`.`pay_otb` = 1) group by `psi_repayments_payments`.`rep_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_packaging`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_packaging`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_packaging` AS select `psi_packaging`.`pkg_id` AS `pkg_id`,`psi_packaging`.`coop_id` AS `coop_id`,`psi_packaging`.`pkg_date` AS `pkg_date`,`psi_packaging`.`pkg_remarks` AS `pkg_remarks`,`psi_packaging`.`pkg_product_name` AS `pkg_product_name`,`psi_packaging`.`pkg_brand_name` AS `pkg_brand_name`,`psi_packaging`.`pkg_product_description` AS `pkg_product_description`,`psi_packaging`.`pkg_competitors` AS `pkg_competitors`,`psi_packaging`.`pkg_competitor_1` AS `pkg_competitor_1`,`psi_packaging`.`pkg_competitor_2` AS `pkg_competitor_2`,`psi_packaging`.`pkg_competitor_3` AS `pkg_competitor_3`,`psi_packaging`.`pkg_competitor_4` AS `pkg_competitor_4`,`psi_packaging`.`pkg_competitor_5` AS `pkg_competitor_5`,`psi_packaging`.`pkg_competitor_6` AS `pkg_competitor_6`,`psi_packaging`.`pkg_selling_point` AS `pkg_selling_point`,`psi_packaging`.`pkg_selling_point_others` AS `pkg_selling_point_others`,`psi_packaging`.`pkg_performance` AS `pkg_performance`,`psi_packaging`.`pkg_distribution` AS `pkg_distribution`,`psi_packaging`.`pkg_ingredients` AS `pkg_ingredients`,`psi_packaging`.`pkg_volume` AS `pkg_volume`,`psi_packaging`.`pkg_packaging_material` AS `pkg_packaging_material`,`psi_packaging`.`pkg_label_size` AS `pkg_label_size`,`psi_packaging`.`pkg_preferred_colors` AS `pkg_preferred_colors`,`psi_packaging`.`pkg_other_details` AS `pkg_other_details`,`psi_packaging`.`pkg_market_location` AS `pkg_market_location`,`psi_packaging`.`pkg_market_products_sold` AS `pkg_market_products_sold`,`psi_packaging`.`pkg_market_date_established` AS `pkg_market_date_established`,`psi_packaging`.`pkg_sales_before_intervention` AS `pkg_sales_before_intervention`,`psi_packaging`.`pkg_sales_after_intervention` AS `pkg_sales_after_intervention`,`psi_packaging`.`pkg_employment_after_direct` AS `pkg_employment_after_direct`,`psi_packaging`.`pkg_employment_after_indirect` AS `pkg_employment_after_indirect`,`psi_packaging`.`pkg_employment_after_months_employed` AS `pkg_employment_after_months_employed`,`psi_packaging`.`pkg_avg_productivity_improvement` AS `pkg_avg_productivity_improvement`,`psi_packaging`.`pkg_file` AS `pkg_file`,`psi_packaging`.`pkg_filename` AS `pkg_filename`,`psi_packaging`.`encoder` AS `encoder`,`psi_packaging`.`date_encoded` AS `date_encoded`,`psi_packaging`.`updater` AS `updater`,`psi_packaging`.`last_updated` AS `last_updated`,`psi_cooperators`.`coop_name` AS `coop_name`,`psi_sellingpoints`.`sp_label` AS `sp_label`,`psi_distributions`.`dist_label` AS `dist_label`,`psi_packaging`.`prj_id` AS `prj_id`,`psi_packaging`.`ug_id` AS `ug_id` from (((`psi_packaging` left join `psi_cooperators` on((`psi_packaging`.`coop_id` = `psi_cooperators`.`coop_id`))) left join `psi_sellingpoints` on((`psi_packaging`.`pkg_selling_point` = `psi_sellingpoints`.`sp_id`))) left join `psi_distributions` on((`psi_packaging`.`pkg_distribution` = `psi_distributions`.`dist_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_prjcount_per_projecttype`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_projecttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_prjcount_per_projecttype` AS select count(`vwpsi_projects`.`prj_id`) AS `prj_count`,`vwpsi_projects`.`prj_type_name` AS `prj_type_name` from `vwpsi_projects` group by `vwpsi_projects`.`prj_type_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_prjcount_per_province`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_province`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_prjcount_per_province` AS select count(`vwpsi_projects`.`prj_id`) AS `prj_count`,`vwpsi_projects`.`province_id` AS `province_id`,`vwpsi_projects`.`province_name` AS `province_name` from `vwpsi_projects` group by `vwpsi_projects`.`province_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_prjcount_per_sector`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_sector`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_prjcount_per_sector` AS select count(`psi_projects`.`prj_id`) AS `prj_count`,`psi_sectors`.`sector_id` AS `sector_id`,`psi_sectors`.`sector_name` AS `sector_name` from (`psi_projects` left join `psi_sectors` on((`psi_projects`.`sector_id` = `psi_sectors`.`sector_id`))) group by `psi_projects`.`sector_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_prjcount_per_status`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_prjcount_per_status` AS select count(`vwpsi_projects`.`prj_id`) AS `prj_count`,`vwpsi_projects`.`prj_status_id` AS `prj_status_id`,`vwpsi_projects`.`prj_status_name` AS `prj_status_name` from `vwpsi_projects` group by `vwpsi_projects`.`prj_status_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_prjcount_per_year_approved`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_prjcount_per_year_approved`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_prjcount_per_year_approved` AS select count(`vwpsi_projects`.`prj_id`) AS `prj_count`,`vwpsi_projects`.`prj_year_approved` AS `prj_year_approved` from `vwpsi_projects` group by `vwpsi_projects`.`prj_year_approved` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_beneficiaries`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_beneficiaries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_beneficiaries` AS select `psi_project_beneficiaries`.`prj_ben_id` AS `prj_ben_id`,`psi_project_beneficiaries`.`prj_id` AS `prj_id`,`psi_project_beneficiaries`.`coop_id` AS `coop_id`,`vwpsi_cooperators`.`coop_name` AS `coop_name`,`vwpsi_cooperators`.`coop_p_fname` AS `coop_p_fname`,`vwpsi_cooperators`.`coop_p_mname` AS `coop_p_mname`,`vwpsi_cooperators`.`coop_p_lname` AS `coop_p_lname`,`vwpsi_cooperators`.`coop_p_name` AS `coop_p_name`,`vwpsi_cooperators`.`coop_address` AS `coop_address`,`vwpsi_cooperators`.`coop_phone` AS `coop_phone`,`vwpsi_cooperators`.`coop_fax` AS `coop_fax`,`vwpsi_cooperators`.`coop_mobile` AS `coop_mobile`,`vwpsi_cooperators`.`coop_email` AS `coop_email`,`vwpsi_cooperators`.`coop_website` AS `coop_website`,`vwpsi_cooperators`.`coop_year_established` AS `coop_year_established`,`vwpsi_cooperators`.`coop_reg_dti` AS `coop_reg_dti`,`vwpsi_cooperators`.`coop_reg_sec` AS `coop_reg_sec`,`vwpsi_cooperators`.`coop_reg_cda` AS `coop_reg_cda`,`vwpsi_cooperators`.`coop_reg_others` AS `coop_reg_others`,`vwpsi_cooperators`.`coop_reg_dti_date` AS `coop_reg_dti_date`,`vwpsi_cooperators`.`coop_reg_sec_date` AS `coop_reg_sec_date`,`vwpsi_cooperators`.`coop_reg_cda_date` AS `coop_reg_cda_date`,`vwpsi_cooperators`.`coop_products` AS `coop_products`,`vwpsi_cooperators`.`coop_brief` AS `coop_brief`,`vwpsi_cooperators`.`ot_cat1_id` AS `ot_cat1_id`,`vwpsi_cooperators`.`ot_cat2_id` AS `ot_cat2_id`,`vwpsi_cooperators`.`ot_cat3_id` AS `ot_cat3_id`,`vwpsi_cooperators`.`ot_cat1_name` AS `ot_cat1_name`,`vwpsi_cooperators`.`ot_cat2_name` AS `ot_cat2_name`,`vwpsi_cooperators`.`ot_cat3_name` AS `ot_cat3_name` from (`psi_project_beneficiaries` left join `vwpsi_cooperators` on((`psi_project_beneficiaries`.`coop_id` = `vwpsi_cooperators`.`coop_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_beneficiaries_list`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_beneficiaries_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_beneficiaries_list` AS select `psi_project_beneficiaries`.`prj_id` AS `prj_id`,group_concat(`vwpsi_cooperators`.`coop_name` separator ', ') AS `coop_names`,group_concat(`vwpsi_cooperators`.`coop_p_name` separator ', ') AS `coop_p_names` from (`psi_project_beneficiaries` left join `vwpsi_cooperators` on((`psi_project_beneficiaries`.`coop_id` = `vwpsi_cooperators`.`coop_id`))) group by `psi_project_beneficiaries`.`prj_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_collaborators`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_collaborators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_collaborators` AS select `psi_project_collaborators`.`prj_col_id` AS `prj_col_id`,`psi_project_collaborators`.`prj_id` AS `prj_id`,`psi_project_collaborators`.`col_id` AS `col_id`,`psi_collaborators`.`col_name` AS `col_name`,`psi_collaborators`.`col_abbr` AS `col_abbr` from (`psi_project_collaborators` left join `psi_collaborators` on((`psi_project_collaborators`.`col_id` = `psi_collaborators`.`col_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_collaborators_list`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_collaborators_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_collaborators_list` AS select `psi_project_collaborators`.`prj_id` AS `prj_id`,group_concat(`vwpsi_collaborators`.`col_name` separator ', ') AS `collaborator_names` from (`psi_project_collaborators` left join `vwpsi_collaborators` on((`psi_project_collaborators`.`col_id` = `vwpsi_collaborators`.`col_id`))) group by `psi_project_collaborators`.`prj_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_documents`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_documents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_documents` AS select `psi_project_documents`.`doc_id` AS `doc_id`,`psi_project_documents`.`doc_file` AS `doc_file`,`psi_project_documents`.`doc_filename` AS `doc_filename`,`psi_project_documents`.`doc_remarks` AS `doc_remarks`,`psi_project_documents`.`prj_id` AS `prj_id`,`psi_project_documents`.`doctype_id` AS `doctype_id`,`psi_project_documents`.`encoder` AS `encoder`,`psi_project_documents`.`date_encoded` AS `date_encoded`,`psi_project_documents`.`updater` AS `updater`,`psi_project_documents`.`last_updated` AS `last_updated`,`psi_project_document_types`.`doctype_name` AS `doctype_name`,`psi_projects`.`ug_id` AS `ug_id` from ((`psi_project_documents` left join `psi_project_document_types` on((`psi_project_documents`.`doctype_id` = `psi_project_document_types`.`doctype_id`))) left join `psi_projects` on((`psi_project_documents`.`prj_id` = `psi_projects`.`prj_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_equipments`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_equipments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_equipments` AS select `psi_equipment`.`prj_id` AS `prj_id`,`psi_equipment`.`brand_id` AS `brand_id`,`psi_equipment_brands`.`brand_name` AS `brand_name` from (`psi_equipment` left join `psi_equipment_brands` on((`psi_equipment`.`brand_id` = `psi_equipment_brands`.`brand_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_monitoring`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_monitoring`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_monitoring` AS select `psi_project_monitoring`.`prjmon_id` AS `prjmon_id`,`psi_project_monitoring`.`prj_id` AS `prj_id`,`psi_project_monitoring`.`prjmon_year` AS `prjmon_year`,`psi_project_monitoring`.`quarter_id` AS `quarter_id`,`psi_project_monitoring`.`prjmon_total_assets_land` AS `prjmon_total_assets_land`,`psi_project_monitoring`.`prjmon_total_assets_building` AS `prjmon_total_assets_building`,`psi_project_monitoring`.`prjmon_total_assets_equipment` AS `prjmon_total_assets_equipment`,`psi_project_monitoring`.`prjmon_total_assets_working_capital` AS `prjmon_total_assets_working_capital`,`psi_project_monitoring`.`prjmon_total_employment` AS `prjmon_total_employment`,`psi_project_monitoring`.`prjmon_dir_ch_regular_male` AS `prjmon_dir_ch_regular_male`,`psi_project_monitoring`.`prjmon_dir_ch_regular_female` AS `prjmon_dir_ch_regular_female`,`psi_project_monitoring`.`prjmon_dir_ch_regular_pwd` AS `prjmon_dir_ch_regular_pwd`,`psi_project_monitoring`.`prjmon_dir_ch_regular_senior` AS `prjmon_dir_ch_regular_senior`,`psi_project_monitoring`.`prjmon_dir_ch_part_time_male` AS `prjmon_dir_ch_part_time_male`,`psi_project_monitoring`.`prjmon_dir_ch_part_time_female` AS `prjmon_dir_ch_part_time_female`,`psi_project_monitoring`.`prjmon_dir_ch_part_time_pwd` AS `prjmon_dir_ch_part_time_pwd`,`psi_project_monitoring`.`prjmon_dir_ch_part_time_senior` AS `prjmon_dir_ch_part_time_senior`,`psi_project_monitoring`.`prjmon_dir_sh_regular_male` AS `prjmon_dir_sh_regular_male`,`psi_project_monitoring`.`prjmon_dir_sh_regular_female` AS `prjmon_dir_sh_regular_female`,`psi_project_monitoring`.`prjmon_dir_sh_regular_pwd` AS `prjmon_dir_sh_regular_pwd`,`psi_project_monitoring`.`prjmon_dir_sh_regular_senior` AS `prjmon_dir_sh_regular_senior`,`psi_project_monitoring`.`prjmon_dir_sh_part_time_male` AS `prjmon_dir_sh_part_time_male`,`psi_project_monitoring`.`prjmon_dir_sh_part_time_female` AS `prjmon_dir_sh_part_time_female`,`psi_project_monitoring`.`prjmon_dir_sh_part_time_pwd` AS `prjmon_dir_sh_part_time_pwd`,`psi_project_monitoring`.`prjmon_dir_sh_part_time_senior` AS `prjmon_dir_sh_part_time_senior`,`psi_project_monitoring`.`prjmon_indir_backward_male` AS `prjmon_indir_backward_male`,`psi_project_monitoring`.`prjmon_indir_backward_female` AS `prjmon_indir_backward_female`,`psi_project_monitoring`.`prjmon_indir_backward_pwd` AS `prjmon_indir_backward_pwd`,`psi_project_monitoring`.`prjmon_indir_backward_senior` AS `prjmon_indir_backward_senior`,`psi_project_monitoring`.`prjmon_indir_forward_male` AS `prjmon_indir_forward_male`,`psi_project_monitoring`.`prjmon_indir_forward_female` AS `prjmon_indir_forward_female`,`psi_project_monitoring`.`prjmon_indir_forward_pwd` AS `prjmon_indir_forward_pwd`,`psi_project_monitoring`.`prjmon_indir_forward_senior` AS `prjmon_indir_forward_senior`,`psi_project_monitoring`.`prjmon_volume_production_local` AS `prjmon_volume_production_local`,`psi_project_monitoring`.`prjmon_volume_production_export` AS `prjmon_volume_production_export`,`psi_project_monitoring`.`prjmon_gross_sales_local` AS `prjmon_gross_sales_local`,`psi_project_monitoring`.`prjmon_gross_sales_export` AS `prjmon_gross_sales_export`,`psi_project_monitoring`.`prjmon_countries_of_destination` AS `prjmon_countries_of_destination`,`psi_project_monitoring`.`prjmon_assistance_process` AS `prjmon_assistance_process`,`psi_project_monitoring`.`prjmon_assistance_equipment` AS `prjmon_assistance_equipment`,`psi_project_monitoring`.`prjmon_assistance_quality_control` AS `prjmon_assistance_quality_control`,`psi_project_monitoring`.`prjmon_assistance_packaging_labeling` AS `prjmon_assistance_packaging_labeling`,`psi_project_monitoring`.`prjmon_assistance_post_harvest` AS `prjmon_assistance_post_harvest`,`psi_project_monitoring`.`prjmon_assistance_marketing` AS `prjmon_assistance_marketing`,`psi_project_monitoring`.`prjmon_assistance_training` AS `prjmon_assistance_training`,`psi_project_monitoring`.`prjmon_assistance_consultancy` AS `prjmon_assistance_consultancy`,`psi_project_monitoring`.`prjmon_assistance_others` AS `prjmon_assistance_others`,`psi_project_monitoring`.`prjmon_problems_met` AS `prjmon_problems_met`,`psi_project_monitoring`.`prjmon_actions_taken` AS `prjmon_actions_taken`,`psi_project_monitoring`.`prjmon_improvement_action_plan` AS `prjmon_improvement_action_plan`,`psi_project_monitoring`.`prjmon_status_of_funds` AS `prjmon_status_of_funds`,`psi_project_monitoring`.`prjmon_reasons_for_termination` AS `prjmon_reasons_for_termination`,`psi_project_monitoring`.`prjmon_final_obligation` AS `prjmon_final_obligation`,`psi_project_monitoring`.`prjmon_impact_of_intervention` AS `prjmon_impact_of_intervention`,`psi_project_monitoring`.`prjmon_final_recommendation` AS `prjmon_final_recommendation`,`psi_project_monitoring`.`prjmon_expected_output` AS `prjmon_expected_output`,`psi_project_monitoring`.`prjmon_actual_accomplishment` AS `prjmon_actual_accomplishment`,`psi_project_monitoring`.`prjmon_output_remarks` AS `prjmon_output_remarks`,`psi_project_monitoring`.`prjmon_liquidation_cost` AS `prjmon_liquidation_cost`,`psi_project_monitoring`.`prjmon_liquidation_used` AS `prjmon_liquidation_used`,`psi_project_monitoring`.`prjmon_liquidation_date` AS `prjmon_liquidation_date`,`psi_project_monitoring`.`prjmon_liquidation_remarks` AS `prjmon_liquidation_remarks`,`psi_project_monitoring`.`prjmon_refund_amount` AS `prjmon_refund_amount`,`psi_project_monitoring`.`prjmon_refund_schedule_from` AS `prjmon_refund_schedule_from`,`psi_project_monitoring`.`prjmon_refund_schedule_to` AS `prjmon_refund_schedule_to`,`psi_project_monitoring`.`prjmon_refund_amount_due` AS `prjmon_refund_amount_due`,`psi_project_monitoring`.`prjmon_refund_date` AS `prjmon_refund_date`,`psi_project_monitoring`.`prjmon_refund_refunded` AS `prjmon_refund_refunded`,`psi_project_monitoring`.`prjmon_refund_unsettled` AS `prjmon_refund_unsettled`,`psi_project_monitoring`.`prjmon_refund_delay_date` AS `prjmon_refund_delay_date`,`psi_project_monitoring`.`prjmon_setup_amount` AS `prjmon_setup_amount`,`psi_project_monitoring`.`prjmon_funds_release_date` AS `prjmon_funds_release_date`,`psi_project_monitoring`.`prjmon_refund_period_from` AS `prjmon_refund_period_from`,`psi_project_monitoring`.`prjmon_refund_period_to` AS `prjmon_refund_period_to`,`psi_project_monitoring`.`prjmon_termination_date` AS `prjmon_termination_date`,`psi_project_monitoring`.`prjmon_remarks` AS `prjmon_remarks`,`psi_project_monitoring`.`prjmon_effectivity` AS `prjmon_effectivity`,`psi_project_monitoring`.`encoder` AS `encoder`,`psi_project_monitoring`.`date_encoded` AS `date_encoded`,`psi_project_monitoring`.`updater` AS `updater`,`psi_project_monitoring`.`last_updated` AS `last_updated`,`psi_project_monitoring`.`prjform_id` AS `prjform_id`,`psi_project_monitoring`.`prjmon_volume_product_name` AS `prjmon_volume_product_name`,`psi_project_monitoring`.`prjmon_volume_of_production` AS `prjmon_volume_of_production`,`psi_project_monitoring`.`prjmon_volume_gross_sales` AS `prjmon_volume_gross_sales`,`psi_project_monitoring`.`prjmon_emp_total` AS `prjmon_emp_total`,`psi_project_monitoring`.`prjmon_emp_male` AS `prjmon_emp_male`,`psi_project_monitoring`.`prjmon_emp_female` AS `prjmon_emp_female`,`psi_project_monitoring`.`prjmon_emp_pwd` AS `prjmon_emp_pwd`,`psi_project_monitoring`.`prjmon_emp_indirect_forward_male` AS `prjmon_emp_indirect_forward_male`,`psi_project_monitoring`.`prjmon_emp_indirect_forward_female` AS `prjmon_emp_indirect_forward_female`,`psi_project_monitoring`.`prjmon_emp_indirect_backward_male` AS `prjmon_emp_indirect_backward_male`,`psi_project_monitoring`.`prjmon_emp_indirect_backward_female` AS `prjmon_emp_indirect_backward_female`,`psi_project_monitoring`.`prjmon_market_existing` AS `prjmon_market_existing`,`psi_project_monitoring`.`prjmon_market_new` AS `prjmon_market_new`,`psi_project_monitoring`.`prjmon_improvement_production_efficiency` AS `prjmon_improvement_production_efficiency`,`psi_quarters`.`quarter_name` AS `quarter_name`,`psi_project_forms`.`prjform_name` AS `prjform_name` from ((`psi_project_monitoring` left join `psi_quarters` on((`psi_project_monitoring`.`quarter_id` = `psi_quarters`.`quarter_id`))) left join `psi_project_forms` on((`psi_project_monitoring`.`prjform_id` = `psi_project_forms`.`prjform_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_monitoring_summary`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_monitoring_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_monitoring_summary` AS select `vwpsi_project_monitoring`.`prjmon_id` AS `prjmon_id`,`vwpsi_project_monitoring`.`prj_id` AS `prj_id`,`vwpsi_project_monitoring`.`prjmon_year` AS `prjmon_year`,`vwpsi_project_monitoring`.`quarter_id` AS `quarter_id`,`vwpsi_project_monitoring`.`prjmon_total_assets_land` AS `prjmon_total_assets_land`,`vwpsi_project_monitoring`.`prjmon_total_assets_building` AS `prjmon_total_assets_building`,`vwpsi_project_monitoring`.`prjmon_total_assets_equipment` AS `prjmon_total_assets_equipment`,`vwpsi_project_monitoring`.`prjmon_total_assets_working_capital` AS `prjmon_total_assets_working_capital`,`vwpsi_project_monitoring`.`prjmon_total_employment` AS `prjmon_total_employment`,`vwpsi_project_monitoring`.`prjmon_dir_ch_regular_male` AS `prjmon_dir_ch_regular_male`,`vwpsi_project_monitoring`.`prjmon_dir_ch_regular_female` AS `prjmon_dir_ch_regular_female`,`vwpsi_project_monitoring`.`prjmon_dir_ch_regular_pwd` AS `prjmon_dir_ch_regular_pwd`,`vwpsi_project_monitoring`.`prjmon_dir_ch_regular_senior` AS `prjmon_dir_ch_regular_senior`,`vwpsi_project_monitoring`.`prjmon_dir_ch_part_time_male` AS `prjmon_dir_ch_part_time_male`,`vwpsi_project_monitoring`.`prjmon_dir_ch_part_time_female` AS `prjmon_dir_ch_part_time_female`,`vwpsi_project_monitoring`.`prjmon_dir_ch_part_time_pwd` AS `prjmon_dir_ch_part_time_pwd`,`vwpsi_project_monitoring`.`prjmon_dir_ch_part_time_senior` AS `prjmon_dir_ch_part_time_senior`,`vwpsi_project_monitoring`.`prjmon_dir_sh_regular_male` AS `prjmon_dir_sh_regular_male`,`vwpsi_project_monitoring`.`prjmon_dir_sh_regular_female` AS `prjmon_dir_sh_regular_female`,`vwpsi_project_monitoring`.`prjmon_dir_sh_regular_pwd` AS `prjmon_dir_sh_regular_pwd`,`vwpsi_project_monitoring`.`prjmon_dir_sh_regular_senior` AS `prjmon_dir_sh_regular_senior`,`vwpsi_project_monitoring`.`prjmon_dir_sh_part_time_male` AS `prjmon_dir_sh_part_time_male`,`vwpsi_project_monitoring`.`prjmon_dir_sh_part_time_female` AS `prjmon_dir_sh_part_time_female`,`vwpsi_project_monitoring`.`prjmon_dir_sh_part_time_pwd` AS `prjmon_dir_sh_part_time_pwd`,`vwpsi_project_monitoring`.`prjmon_dir_sh_part_time_senior` AS `prjmon_dir_sh_part_time_senior`,`vwpsi_project_monitoring`.`prjmon_indir_backward_male` AS `prjmon_indir_backward_male`,`vwpsi_project_monitoring`.`prjmon_indir_backward_female` AS `prjmon_indir_backward_female`,`vwpsi_project_monitoring`.`prjmon_indir_backward_pwd` AS `prjmon_indir_backward_pwd`,`vwpsi_project_monitoring`.`prjmon_indir_backward_senior` AS `prjmon_indir_backward_senior`,`vwpsi_project_monitoring`.`prjmon_indir_forward_male` AS `prjmon_indir_forward_male`,`vwpsi_project_monitoring`.`prjmon_indir_forward_female` AS `prjmon_indir_forward_female`,`vwpsi_project_monitoring`.`prjmon_indir_forward_pwd` AS `prjmon_indir_forward_pwd`,`vwpsi_project_monitoring`.`prjmon_indir_forward_senior` AS `prjmon_indir_forward_senior`,`vwpsi_project_monitoring`.`prjmon_volume_production_local` AS `prjmon_volume_production_local`,`vwpsi_project_monitoring`.`prjmon_volume_production_export` AS `prjmon_volume_production_export`,`vwpsi_project_monitoring`.`prjmon_gross_sales_local` AS `prjmon_gross_sales_local`,`vwpsi_project_monitoring`.`prjmon_gross_sales_export` AS `prjmon_gross_sales_export`,`vwpsi_project_monitoring`.`prjmon_countries_of_destination` AS `prjmon_countries_of_destination`,`vwpsi_project_monitoring`.`prjmon_assistance_process` AS `prjmon_assistance_process`,`vwpsi_project_monitoring`.`prjmon_assistance_equipment` AS `prjmon_assistance_equipment`,`vwpsi_project_monitoring`.`prjmon_assistance_quality_control` AS `prjmon_assistance_quality_control`,`vwpsi_project_monitoring`.`prjmon_assistance_packaging_labeling` AS `prjmon_assistance_packaging_labeling`,`vwpsi_project_monitoring`.`prjmon_assistance_post_harvest` AS `prjmon_assistance_post_harvest`,`vwpsi_project_monitoring`.`prjmon_assistance_marketing` AS `prjmon_assistance_marketing`,`vwpsi_project_monitoring`.`prjmon_assistance_training` AS `prjmon_assistance_training`,`vwpsi_project_monitoring`.`prjmon_assistance_consultancy` AS `prjmon_assistance_consultancy`,`vwpsi_project_monitoring`.`prjmon_assistance_others` AS `prjmon_assistance_others`,`vwpsi_project_monitoring`.`prjmon_problems_met` AS `prjmon_problems_met`,`vwpsi_project_monitoring`.`prjmon_actions_taken` AS `prjmon_actions_taken`,`vwpsi_project_monitoring`.`prjmon_improvement_action_plan` AS `prjmon_improvement_action_plan`,`vwpsi_project_monitoring`.`prjmon_status_of_funds` AS `prjmon_status_of_funds`,`vwpsi_project_monitoring`.`prjmon_reasons_for_termination` AS `prjmon_reasons_for_termination`,`vwpsi_project_monitoring`.`prjmon_final_obligation` AS `prjmon_final_obligation`,`vwpsi_project_monitoring`.`prjmon_impact_of_intervention` AS `prjmon_impact_of_intervention`,`vwpsi_project_monitoring`.`prjmon_final_recommendation` AS `prjmon_final_recommendation`,`vwpsi_project_monitoring`.`prjmon_expected_output` AS `prjmon_expected_output`,`vwpsi_project_monitoring`.`prjmon_actual_accomplishment` AS `prjmon_actual_accomplishment`,`vwpsi_project_monitoring`.`prjmon_output_remarks` AS `prjmon_output_remarks`,`vwpsi_project_monitoring`.`prjmon_liquidation_cost` AS `prjmon_liquidation_cost`,`vwpsi_project_monitoring`.`prjmon_liquidation_used` AS `prjmon_liquidation_used`,`vwpsi_project_monitoring`.`prjmon_liquidation_date` AS `prjmon_liquidation_date`,`vwpsi_project_monitoring`.`prjmon_liquidation_remarks` AS `prjmon_liquidation_remarks`,`vwpsi_project_monitoring`.`prjmon_refund_amount` AS `prjmon_refund_amount`,`vwpsi_project_monitoring`.`prjmon_refund_schedule_from` AS `prjmon_refund_schedule_from`,`vwpsi_project_monitoring`.`prjmon_refund_schedule_to` AS `prjmon_refund_schedule_to`,`vwpsi_project_monitoring`.`prjmon_refund_amount_due` AS `prjmon_refund_amount_due`,`vwpsi_project_monitoring`.`prjmon_refund_date` AS `prjmon_refund_date`,`vwpsi_project_monitoring`.`prjmon_refund_refunded` AS `prjmon_refund_refunded`,`vwpsi_project_monitoring`.`prjmon_refund_unsettled` AS `prjmon_refund_unsettled`,`vwpsi_project_monitoring`.`prjmon_refund_delay_date` AS `prjmon_refund_delay_date`,`vwpsi_project_monitoring`.`prjmon_setup_amount` AS `prjmon_setup_amount`,`vwpsi_project_monitoring`.`prjmon_funds_release_date` AS `prjmon_funds_release_date`,`vwpsi_project_monitoring`.`prjmon_refund_period_from` AS `prjmon_refund_period_from`,`vwpsi_project_monitoring`.`prjmon_refund_period_to` AS `prjmon_refund_period_to`,`vwpsi_project_monitoring`.`prjmon_termination_date` AS `prjmon_termination_date`,`vwpsi_project_monitoring`.`prjmon_remarks` AS `prjmon_remarks`,`vwpsi_project_monitoring`.`prjmon_effectivity` AS `prjmon_effectivity`,`vwpsi_project_monitoring`.`encoder` AS `encoder`,`vwpsi_project_monitoring`.`date_encoded` AS `date_encoded`,`vwpsi_project_monitoring`.`updater` AS `updater`,`vwpsi_project_monitoring`.`last_updated` AS `last_updated`,`vwpsi_project_monitoring`.`prjform_id` AS `prjform_id`,`vwpsi_project_monitoring`.`prjmon_volume_product_name` AS `prjmon_volume_product_name`,`vwpsi_project_monitoring`.`prjmon_volume_of_production` AS `prjmon_volume_of_production`,`vwpsi_project_monitoring`.`prjmon_volume_gross_sales` AS `prjmon_volume_gross_sales`,`vwpsi_project_monitoring`.`prjmon_emp_total` AS `prjmon_emp_total`,`vwpsi_project_monitoring`.`prjmon_emp_male` AS `prjmon_emp_male`,`vwpsi_project_monitoring`.`prjmon_emp_female` AS `prjmon_emp_female`,`vwpsi_project_monitoring`.`prjmon_emp_pwd` AS `prjmon_emp_pwd`,`vwpsi_project_monitoring`.`prjmon_emp_indirect_forward_male` AS `prjmon_emp_indirect_forward_male`,`vwpsi_project_monitoring`.`prjmon_emp_indirect_forward_female` AS `prjmon_emp_indirect_forward_female`,`vwpsi_project_monitoring`.`prjmon_emp_indirect_backward_male` AS `prjmon_emp_indirect_backward_male`,`vwpsi_project_monitoring`.`prjmon_emp_indirect_backward_female` AS `prjmon_emp_indirect_backward_female`,`vwpsi_project_monitoring`.`prjmon_market_existing` AS `prjmon_market_existing`,`vwpsi_project_monitoring`.`prjmon_market_new` AS `prjmon_market_new`,`vwpsi_project_monitoring`.`prjmon_improvement_production_efficiency` AS `prjmon_improvement_production_efficiency`,`vwpsi_project_monitoring`.`quarter_name` AS `quarter_name`,`vwpsi_project_monitoring`.`prjform_name` AS `prjform_name`,`vwpsi_projects`.`prj_title` AS `prj_title`,`vwpsi_projects`.`prj_code` AS `prj_code`,`vwpsi_projects`.`prj_year_approved` AS `prj_year_approved`,`vwpsi_projects`.`prj_objective` AS `prj_objective`,`vwpsi_projects`.`prj_expected_output` AS `prj_expected_output`,`vwpsi_projects`.`prj_product_line` AS `prj_product_line`,`vwpsi_projects`.`prj_cost_setup` AS `prj_cost_setup`,`vwpsi_projects`.`prj_cost_gia` AS `prj_cost_gia`,`vwpsi_projects`.`prj_cost_rollout` AS `prj_cost_rollout`,`vwpsi_projects`.`prj_cost_benefactor` AS `prj_cost_benefactor`,`vwpsi_projects`.`prj_cost_other` AS `prj_cost_other`,`vwpsi_projects`.`prj_intervention` AS `prj_intervention`,`vwpsi_projects`.`prj_longitude` AS `prj_longitude`,`vwpsi_projects`.`prj_latitude` AS `prj_latitude`,`vwpsi_projects`.`prj_elevation` AS `prj_elevation`,`vwpsi_projects`.`prj_type_id` AS `prj_type_id`,`vwpsi_projects`.`prj_status_id` AS `prj_status_id`,`vwpsi_projects`.`prj_remarks` AS `prj_remarks`,`vwpsi_projects`.`ru_id` AS `ru_id`,`vwpsi_projects`.`prj_address` AS `prj_address`,`vwpsi_projects`.`province_id` AS `province_id`,`vwpsi_projects`.`city_id` AS `city_id`,`vwpsi_projects`.`barangay_id` AS `barangay_id`,`vwpsi_projects`.`ug_id` AS `ug_id`,`vwpsi_projects`.`prj_fund_release_date` AS `prj_fund_release_date`,`vwpsi_projects`.`prj_refund_period_from` AS `prj_refund_period_from`,`vwpsi_projects`.`prj_refund_period_to` AS `prj_refund_period_to`,`vwpsi_projects`.`prj_province` AS `prj_province`,`vwpsi_projects`.`prj_city` AS `prj_city`,`vwpsi_projects`.`prj_barangay` AS `prj_barangay`,`vwpsi_projects`.`sector_id` AS `sector_id`,`vwpsi_projects`.`sector_name` AS `sector_name`,`vwpsi_projects`.`prj_pis_total_assets_land` AS `prj_pis_total_assets_land`,`vwpsi_projects`.`prj_pis_total_assets_building` AS `prj_pis_total_assets_building`,`vwpsi_projects`.`prj_pis_total_assets_equipment` AS `prj_pis_total_assets_equipment`,`vwpsi_projects`.`prj_pis_total_assets_working_capital` AS `prj_pis_total_assets_working_capital`,`vwpsi_projects`.`prj_pis_total_employment` AS `prj_pis_total_employment`,`vwpsi_projects`.`prj_pis_dir_ch_regular_male` AS `prj_pis_dir_ch_regular_male`,`vwpsi_projects`.`prj_pis_dir_ch_regular_female` AS `prj_pis_dir_ch_regular_female`,`vwpsi_projects`.`prj_pis_dir_ch_regular_pwd` AS `prj_pis_dir_ch_regular_pwd`,`vwpsi_projects`.`prj_pis_dir_ch_regular_senior` AS `prj_pis_dir_ch_regular_senior`,`vwpsi_projects`.`prj_pis_dir_ch_part_time_male` AS `prj_pis_dir_ch_part_time_male`,`vwpsi_projects`.`prj_pis_dir_ch_part_time_female` AS `prj_pis_dir_ch_part_time_female`,`vwpsi_projects`.`prj_pis_dir_ch_part_time_pwd` AS `prj_pis_dir_ch_part_time_pwd`,`vwpsi_projects`.`prj_pis_dir_ch_part_time_senior` AS `prj_pis_dir_ch_part_time_senior`,`vwpsi_projects`.`prj_pis_dir_sh_regular_male` AS `prj_pis_dir_sh_regular_male`,`vwpsi_projects`.`prj_pis_dir_sh_regular_female` AS `prj_pis_dir_sh_regular_female`,`vwpsi_projects`.`prj_pis_dir_sh_regular_pwd` AS `prj_pis_dir_sh_regular_pwd`,`vwpsi_projects`.`prj_pis_dir_sh_regular_senior` AS `prj_pis_dir_sh_regular_senior`,`vwpsi_projects`.`prj_pis_dir_sh_part_time_male` AS `prj_pis_dir_sh_part_time_male`,`vwpsi_projects`.`prj_pis_dir_sh_part_time_female` AS `prj_pis_dir_sh_part_time_female`,`vwpsi_projects`.`prj_pis_dir_sh_part_time_pwd` AS `prj_pis_dir_sh_part_time_pwd`,`vwpsi_projects`.`prj_pis_dir_sh_part_time_senior` AS `prj_pis_dir_sh_part_time_senior`,`vwpsi_projects`.`prj_pis_indir_backward_male` AS `prj_pis_indir_backward_male`,`vwpsi_projects`.`prj_pis_indir_backward_female` AS `prj_pis_indir_backward_female`,`vwpsi_projects`.`prj_pis_indir_backward_pwd` AS `prj_pis_indir_backward_pwd`,`vwpsi_projects`.`prj_pis_indir_backward_senior` AS `prj_pis_indir_backward_senior`,`vwpsi_projects`.`prj_pis_indir_forward_male` AS `prj_pis_indir_forward_male`,`vwpsi_projects`.`prj_pis_indir_forward_female` AS `prj_pis_indir_forward_female`,`vwpsi_projects`.`prj_pis_indir_forward_pwd` AS `prj_pis_indir_forward_pwd`,`vwpsi_projects`.`prj_pis_indir_forward_senior` AS `prj_pis_indir_forward_senior`,`vwpsi_projects`.`prj_pis_volume_production_local` AS `prj_pis_volume_production_local`,`vwpsi_projects`.`prj_pis_volume_production_export` AS `prj_pis_volume_production_export`,`vwpsi_projects`.`prj_pis_gross_sales_local` AS `prj_pis_gross_sales_local`,`vwpsi_projects`.`prj_pis_gross_sales_export` AS `prj_pis_gross_sales_export`,`vwpsi_projects`.`prj_pis_countries_of_destination` AS `prj_pis_countries_of_destination`,`vwpsi_projects`.`prj_pis_assistance_conceptualization` AS `prj_pis_assistance_conceptualization`,`vwpsi_projects`.`prj_pis_assistance_proposal_preparation` AS `prj_pis_assistance_proposal_preparation`,`vwpsi_projects`.`prj_pis_assistance_process` AS `prj_pis_assistance_process`,`vwpsi_projects`.`prj_pis_assistance_equipment` AS `prj_pis_assistance_equipment`,`vwpsi_projects`.`prj_pis_assistance_quality_control` AS `prj_pis_assistance_quality_control`,`vwpsi_projects`.`prj_pis_assistance_packaging_labeling` AS `prj_pis_assistance_packaging_labeling`,`vwpsi_projects`.`prj_pis_assistance_post_harvest` AS `prj_pis_assistance_post_harvest`,`vwpsi_projects`.`prj_pis_assistance_marketing` AS `prj_pis_assistance_marketing`,`vwpsi_projects`.`prj_pis_assistance_training` AS `prj_pis_assistance_training`,`vwpsi_projects`.`prj_pis_assistance_consultancy` AS `prj_pis_assistance_consultancy`,`vwpsi_projects`.`prj_pis_assistance_others` AS `prj_pis_assistance_others`,`vwpsi_projects`.`prj_pis_remarks` AS `prj_pis_remarks`,`vwpsi_projects`.`province_name` AS `province_name`,`vwpsi_projects`.`region_id` AS `region_id`,`vwpsi_projects`.`region_name` AS `region_name`,`vwpsi_projects`.`city_name` AS `city_name`,`vwpsi_projects`.`district_id` AS `district_id`,`vwpsi_projects`.`district_name` AS `district_name`,`vwpsi_projects`.`barangay_name` AS `barangay_name`,`vwpsi_projects`.`prj_type_name` AS `prj_type_name`,`vwpsi_projects`.`prj_status_name` AS `prj_status_name`,`vwpsi_projects`.`ug_name` AS `ug_name`,`vwpsi_projects`.`rep_total_amount` AS `rep_total_amount`,`vwpsi_projects`.`rep_refund_rate` AS `rep_refund_rate`,`vwpsi_projects`.`rep_total_due` AS `rep_total_due`,`vwpsi_projects`.`rep_total_paid` AS `rep_total_paid`,`vwpsi_projects`.`sector_list` AS `sector_list`,`vwpsi_projects`.`prj_sector_list` AS `prj_sector_list`,`vwpsi_projects`.`coop_names` AS `coop_names`,`vwpsi_projects`.`coop_p_names` AS `coop_p_names`,`vwpsi_projects`.`collaborator_names` AS `collaborator_names` from (`vwpsi_project_monitoring` left join `vwpsi_projects` on((`vwpsi_project_monitoring`.`prj_id` = `vwpsi_projects`.`prj_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_pis`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_pis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_pis` AS select `psi_project_pis`.`prjpis_id` AS `prjpis_id`,`psi_project_pis`.`prj_id` AS `prj_id`,`psi_project_pis`.`prjpis_year` AS `prjpis_year`,`psi_project_pis`.`sem_id` AS `sem_id`,`psi_project_pis`.`prjpis_total_assets_land` AS `prjpis_total_assets_land`,`psi_project_pis`.`prjpis_total_assets_building` AS `prjpis_total_assets_building`,`psi_project_pis`.`prjpis_total_assets_equipment` AS `prjpis_total_assets_equipment`,`psi_project_pis`.`prjpis_total_assets_working_capital` AS `prjpis_total_assets_working_capital`,`psi_project_pis`.`prjpis_total_employment` AS `prjpis_total_employment`,`psi_project_pis`.`prjpis_dir_ch_regular_male` AS `prjpis_dir_ch_regular_male`,`psi_project_pis`.`prjpis_dir_ch_regular_female` AS `prjpis_dir_ch_regular_female`,`psi_project_pis`.`prjpis_dir_ch_regular_pwd` AS `prjpis_dir_ch_regular_pwd`,`psi_project_pis`.`prjpis_dir_ch_regular_senior` AS `prjpis_dir_ch_regular_senior`,`psi_project_pis`.`prjpis_dir_ch_part_time_male` AS `prjpis_dir_ch_part_time_male`,`psi_project_pis`.`prjpis_dir_ch_part_time_female` AS `prjpis_dir_ch_part_time_female`,`psi_project_pis`.`prjpis_dir_ch_part_time_pwd` AS `prjpis_dir_ch_part_time_pwd`,`psi_project_pis`.`prjpis_dir_ch_part_time_senior` AS `prjpis_dir_ch_part_time_senior`,`psi_project_pis`.`prjpis_dir_sh_regular_male` AS `prjpis_dir_sh_regular_male`,`psi_project_pis`.`prjpis_dir_sh_regular_female` AS `prjpis_dir_sh_regular_female`,`psi_project_pis`.`prjpis_dir_sh_regular_pwd` AS `prjpis_dir_sh_regular_pwd`,`psi_project_pis`.`prjpis_dir_sh_regular_senior` AS `prjpis_dir_sh_regular_senior`,`psi_project_pis`.`prjpis_dir_sh_part_time_male` AS `prjpis_dir_sh_part_time_male`,`psi_project_pis`.`prjpis_dir_sh_part_time_female` AS `prjpis_dir_sh_part_time_female`,`psi_project_pis`.`prjpis_dir_sh_part_time_pwd` AS `prjpis_dir_sh_part_time_pwd`,`psi_project_pis`.`prjpis_dir_sh_part_time_senior` AS `prjpis_dir_sh_part_time_senior`,`psi_project_pis`.`prjpis_indir_backward_male` AS `prjpis_indir_backward_male`,`psi_project_pis`.`prjpis_indir_backward_female` AS `prjpis_indir_backward_female`,`psi_project_pis`.`prjpis_indir_backward_pwd` AS `prjpis_indir_backward_pwd`,`psi_project_pis`.`prjpis_indir_backward_senior` AS `prjpis_indir_backward_senior`,`psi_project_pis`.`prjpis_indir_forward_male` AS `prjpis_indir_forward_male`,`psi_project_pis`.`prjpis_indir_forward_female` AS `prjpis_indir_forward_female`,`psi_project_pis`.`prjpis_indir_forward_pwd` AS `prjpis_indir_forward_pwd`,`psi_project_pis`.`prjpis_indir_forward_senior` AS `prjpis_indir_forward_senior`,`psi_project_pis`.`prjpis_volume_production_local` AS `prjpis_volume_production_local`,`psi_project_pis`.`prjpis_volume_production_export` AS `prjpis_volume_production_export`,`psi_project_pis`.`prjpis_gross_sales_local` AS `prjpis_gross_sales_local`,`psi_project_pis`.`prjpis_gross_sales_export` AS `prjpis_gross_sales_export`,`psi_project_pis`.`prjpis_countries_of_destination` AS `prjpis_countries_of_destination`,`psi_project_pis`.`prjpis_assistance_process` AS `prjpis_assistance_process`,`psi_project_pis`.`prjpis_assistance_equipment` AS `prjpis_assistance_equipment`,`psi_project_pis`.`prjpis_assistance_quality_control` AS `prjpis_assistance_quality_control`,`psi_project_pis`.`prjpis_assistance_packaging_labeling` AS `prjpis_assistance_packaging_labeling`,`psi_project_pis`.`prjpis_assistance_post_harvest` AS `prjpis_assistance_post_harvest`,`psi_project_pis`.`prjpis_assistance_marketing` AS `prjpis_assistance_marketing`,`psi_project_pis`.`prjpis_assistance_training_text` AS `prjpis_assistance_training_text`,`psi_project_pis`.`prjpis_assistance_consultancy_text` AS `prjpis_assistance_consultancy_text`,`psi_project_pis`.`prjpis_assistance_others_text` AS `prjpis_assistance_others_text`,`psi_project_pis`.`prjpis_remarks` AS `prjpis_remarks`,`psi_project_pis`.`encoder` AS `encoder`,`psi_project_pis`.`date_encoded` AS `date_encoded`,`psi_project_pis`.`updater` AS `updater`,`psi_project_pis`.`last_updated` AS `last_updated`,`psi_project_pis`.`prjpis_assistance_training` AS `prjpis_assistance_training`,`psi_project_pis`.`prjpis_assistance_consultancy` AS `prjpis_assistance_consultancy`,`psi_project_pis`.`prjpis_assistance_process_text` AS `prjpis_assistance_process_text`,`psi_project_pis`.`prjpis_assistance_quality_control_text` AS `prjpis_assistance_quality_control_text`,`psi_project_pis`.`prjpis_assistance_post_harvest_text` AS `prjpis_assistance_post_harvest_text`,`psi_project_pis`.`prjpis_assistance_marketing_text` AS `prjpis_assistance_marketing_text`,`psi_project_pis`.`prjpis_assistance_others` AS `prjpis_assistance_others`,`psi_semesters`.`sem_name` AS `sem_name` from (`psi_project_pis` left join `psi_semesters` on((`psi_project_pis`.`sem_id` = `psi_semesters`.`sem_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_sector_list`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_sector_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_sector_list` AS select `psi_project_sectors`.`prj_id` AS `prj_id`,group_concat(`psi_sectors`.`sector_name` separator ', ') AS `sector_list` from (`psi_project_sectors` left join `psi_sectors` on((`psi_project_sectors`.`sector_id` = `psi_sectors`.`sector_id`))) group by `psi_project_sectors`.`prj_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_sectors`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_sectors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_sectors` AS select `psi_project_sectors`.`prjsect_id` AS `prjsect_id`,`psi_project_sectors`.`prj_id` AS `prj_id`,`psi_project_sectors`.`sector_id` AS `sector_id`,`psi_sectors`.`sector_name` AS `sector_name` from (`psi_project_sectors` left join `psi_sectors` on((`psi_project_sectors`.`sector_id` = `psi_sectors`.`sector_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_project_sites`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_project_sites`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_project_sites` AS select `psi_project_sites`.`prj_site_id` AS `prj_site_id`,`psi_project_sites`.`prj_site_date` AS `prj_site_date`,year(`psi_project_sites`.`prj_site_date`) AS `prj_site_yr`,month(`psi_project_sites`.`prj_site_date`) AS `prj_site_mo`,`psi_project_sites`.`prj_site_remarks` AS `prj_site_remarks`,`psi_project_sites`.`prj_site_longitude` AS `prj_site_longitude`,`psi_project_sites`.`prj_site_latitude` AS `prj_site_latitude`,`psi_project_sites`.`prj_site_elevation` AS `prj_site_elevation`,`psi_project_sites`.`prj_site_address` AS `prj_site_address`,`psi_project_sites`.`province_id` AS `province_id`,`psi_project_sites`.`city_id` AS `city_id`,`psi_project_sites`.`barangay_id` AS `barangay_id`,`psi_project_sites`.`brand_id` AS `brand_id`,`psi_project_sites`.`prj_id` AS `prj_id`,`psi_project_sites`.`encoder` AS `encoder`,`psi_project_sites`.`date_encoded` AS `date_encoded`,`psi_project_sites`.`updater` AS `updater`,`psi_project_sites`.`last_updated` AS `last_updated`,`psi_equipment_brands`.`brand_name` AS `brand_name` from (`psi_project_sites` left join `psi_equipment_brands` on((`psi_project_sites`.`brand_id` = `psi_equipment_brands`.`brand_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_projects`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_projects` AS select `psi_projects`.`prj_id` AS `prj_id`,`psi_projects`.`prj_title` AS `prj_title`,`psi_projects`.`prj_code` AS `prj_code`,`psi_projects`.`prj_year_approved` AS `prj_year_approved`,`psi_projects`.`prj_objective` AS `prj_objective`,`psi_projects`.`prj_expected_output` AS `prj_expected_output`,`psi_projects`.`prj_product_line` AS `prj_product_line`,`psi_projects`.`prj_cost_setup` AS `prj_cost_setup`,`psi_projects`.`prj_cost_gia` AS `prj_cost_gia`,`psi_projects`.`prj_cost_rollout` AS `prj_cost_rollout`,`psi_projects`.`prj_cost_benefactor` AS `prj_cost_benefactor`,`psi_projects`.`prj_cost_other` AS `prj_cost_other`,`psi_projects`.`prj_intervention` AS `prj_intervention`,`psi_projects`.`prj_longitude` AS `prj_longitude`,`psi_projects`.`prj_latitude` AS `prj_latitude`,`psi_projects`.`prj_elevation` AS `prj_elevation`,`psi_projects`.`prj_type_id` AS `prj_type_id`,`psi_projects`.`prj_status_id` AS `prj_status_id`,`psi_projects`.`prj_remarks` AS `prj_remarks`,`psi_projects`.`ru_id` AS `ru_id`,`psi_projects`.`prj_address` AS `prj_address`,`psi_projects`.`province_id` AS `province_id`,`psi_projects`.`city_id` AS `city_id`,`psi_projects`.`barangay_id` AS `barangay_id`,`psi_projects`.`ug_id` AS `ug_id`,`psi_projects`.`encoder` AS `encoder`,`psi_projects`.`date_encoded` AS `date_encoded`,`psi_projects`.`updater` AS `updater`,`psi_projects`.`last_updated` AS `last_updated`,`psi_projects`.`prj_fund_release_date` AS `prj_fund_release_date`,`psi_projects`.`prj_refund_period_from` AS `prj_refund_period_from`,`psi_projects`.`prj_refund_period_to` AS `prj_refund_period_to`,`psi_projects`.`prj_province` AS `prj_province`,`psi_projects`.`prj_city` AS `prj_city`,`psi_projects`.`prj_barangay` AS `prj_barangay`,`psi_projects`.`sector_id` AS `sector_id`,`psi_sectors`.`sector_name` AS `sector_name`,`psi_projects`.`prj_pis_total_assets_land` AS `prj_pis_total_assets_land`,`psi_projects`.`prj_pis_total_assets_building` AS `prj_pis_total_assets_building`,`psi_projects`.`prj_pis_total_assets_equipment` AS `prj_pis_total_assets_equipment`,`psi_projects`.`prj_pis_total_assets_working_capital` AS `prj_pis_total_assets_working_capital`,`psi_projects`.`prj_pis_total_employment` AS `prj_pis_total_employment`,`psi_projects`.`prj_pis_dir_ch_regular_male` AS `prj_pis_dir_ch_regular_male`,`psi_projects`.`prj_pis_dir_ch_regular_female` AS `prj_pis_dir_ch_regular_female`,`psi_projects`.`prj_pis_dir_ch_regular_pwd` AS `prj_pis_dir_ch_regular_pwd`,`psi_projects`.`prj_pis_dir_ch_regular_senior` AS `prj_pis_dir_ch_regular_senior`,`psi_projects`.`prj_pis_dir_ch_part_time_male` AS `prj_pis_dir_ch_part_time_male`,`psi_projects`.`prj_pis_dir_ch_part_time_female` AS `prj_pis_dir_ch_part_time_female`,`psi_projects`.`prj_pis_dir_ch_part_time_pwd` AS `prj_pis_dir_ch_part_time_pwd`,`psi_projects`.`prj_pis_dir_ch_part_time_senior` AS `prj_pis_dir_ch_part_time_senior`,`psi_projects`.`prj_pis_dir_sh_regular_male` AS `prj_pis_dir_sh_regular_male`,`psi_projects`.`prj_pis_dir_sh_regular_female` AS `prj_pis_dir_sh_regular_female`,`psi_projects`.`prj_pis_dir_sh_regular_pwd` AS `prj_pis_dir_sh_regular_pwd`,`psi_projects`.`prj_pis_dir_sh_regular_senior` AS `prj_pis_dir_sh_regular_senior`,`psi_projects`.`prj_pis_dir_sh_part_time_male` AS `prj_pis_dir_sh_part_time_male`,`psi_projects`.`prj_pis_dir_sh_part_time_female` AS `prj_pis_dir_sh_part_time_female`,`psi_projects`.`prj_pis_dir_sh_part_time_pwd` AS `prj_pis_dir_sh_part_time_pwd`,`psi_projects`.`prj_pis_dir_sh_part_time_senior` AS `prj_pis_dir_sh_part_time_senior`,`psi_projects`.`prj_pis_indir_backward_male` AS `prj_pis_indir_backward_male`,`psi_projects`.`prj_pis_indir_backward_female` AS `prj_pis_indir_backward_female`,`psi_projects`.`prj_pis_indir_backward_pwd` AS `prj_pis_indir_backward_pwd`,`psi_projects`.`prj_pis_indir_backward_senior` AS `prj_pis_indir_backward_senior`,`psi_projects`.`prj_pis_indir_forward_male` AS `prj_pis_indir_forward_male`,`psi_projects`.`prj_pis_indir_forward_female` AS `prj_pis_indir_forward_female`,`psi_projects`.`prj_pis_indir_forward_pwd` AS `prj_pis_indir_forward_pwd`,`psi_projects`.`prj_pis_indir_forward_senior` AS `prj_pis_indir_forward_senior`,`psi_projects`.`prj_pis_volume_production_local` AS `prj_pis_volume_production_local`,`psi_projects`.`prj_pis_volume_production_export` AS `prj_pis_volume_production_export`,`psi_projects`.`prj_pis_gross_sales_local` AS `prj_pis_gross_sales_local`,`psi_projects`.`prj_pis_gross_sales_export` AS `prj_pis_gross_sales_export`,`psi_projects`.`prj_pis_countries_of_destination` AS `prj_pis_countries_of_destination`,`psi_projects`.`prj_pis_assistance_conceptualization` AS `prj_pis_assistance_conceptualization`,`psi_projects`.`prj_pis_assistance_proposal_preparation` AS `prj_pis_assistance_proposal_preparation`,`psi_projects`.`prj_pis_assistance_process` AS `prj_pis_assistance_process`,`psi_projects`.`prj_pis_assistance_equipment` AS `prj_pis_assistance_equipment`,`psi_projects`.`prj_pis_assistance_quality_control` AS `prj_pis_assistance_quality_control`,`psi_projects`.`prj_pis_assistance_packaging_labeling` AS `prj_pis_assistance_packaging_labeling`,`psi_projects`.`prj_pis_assistance_post_harvest` AS `prj_pis_assistance_post_harvest`,`psi_projects`.`prj_pis_assistance_marketing` AS `prj_pis_assistance_marketing`,`psi_projects`.`prj_pis_assistance_training` AS `prj_pis_assistance_training`,`psi_projects`.`prj_pis_assistance_consultancy` AS `prj_pis_assistance_consultancy`,`psi_projects`.`prj_pis_assistance_others` AS `prj_pis_assistance_others`,`psi_projects`.`prj_pis_remarks` AS `prj_pis_remarks`,`psi_projects`.`prj_cost_benefactor_desc` AS `prj_cost_benefactor_desc`,`psi_projects`.`prj_fundingsource_local` AS `prj_fundingsource_local`,`psi_projects`.`prj_fundingsource_external` AS `prj_fundingsource_external`,`vwpsi_provinces`.`province_name` AS `province_name`,`vwpsi_provinces`.`region_id` AS `region_id`,`vwpsi_provinces`.`region_name` AS `region_name`,`vwpsi_cities`.`city_name` AS `city_name`,`vwpsi_cities`.`district_id` AS `district_id`,`vwpsi_cities`.`district_name` AS `district_name`,`psi_barangays`.`barangay_name` AS `barangay_name`,`psi_project_types`.`prj_type_name` AS `prj_type_name`,`psi_project_status`.`prj_status_name` AS `prj_status_name`,`psi_usergroups`.`ug_name` AS `ug_name`,`vwpsi_repayments`.`rep_total_amount` AS `rep_total_amount`,`vwpsi_repayments`.`rep_refund_rate` AS `rep_refund_rate`,`vwpsi_repayments`.`rep_total_due` AS `rep_total_due`,`vwpsi_repayments`.`rep_total_paid` AS `rep_total_paid`,`vwpsi_project_sector_list`.`sector_list` AS `sector_list`,ifnull(`vwpsi_project_sector_list`.`sector_list`,'') AS `prj_sector_list`,`vwpsi_project_beneficiaries_list`.`coop_names` AS `coop_names`,`vwpsi_project_beneficiaries_list`.`coop_p_names` AS `coop_p_names`,`vwpsi_project_collaborators_list`.`collaborator_names` AS `collaborator_names` from (((((((((((`psi_projects` left join `psi_sectors` on((`psi_projects`.`sector_id` = `psi_sectors`.`sector_id`))) left join `psi_project_types` on((`psi_projects`.`prj_type_id` = `psi_project_types`.`prj_type_id`))) left join `psi_project_status` on((`psi_projects`.`prj_status_id` = `psi_project_status`.`prj_status_id`))) left join `vwpsi_provinces` on((`psi_projects`.`province_id` = `vwpsi_provinces`.`province_id`))) left join `vwpsi_cities` on((`psi_projects`.`city_id` = `vwpsi_cities`.`city_id`))) left join `psi_barangays` on((`psi_projects`.`barangay_id` = `psi_barangays`.`barangay_id`))) left join `psi_usergroups` on((`psi_projects`.`ug_id` = `psi_usergroups`.`ug_id`))) left join `vwpsi_project_sector_list` on((`psi_projects`.`prj_id` = `vwpsi_project_sector_list`.`prj_id`))) left join `vwpsi_repayments` on((`psi_projects`.`prj_id` = `vwpsi_repayments`.`prj_id`))) left join `vwpsi_project_beneficiaries_list` on((`psi_projects`.`prj_id` = `vwpsi_project_beneficiaries_list`.`prj_id`))) left join `vwpsi_project_collaborators_list` on((`psi_projects`.`prj_id` = `vwpsi_project_collaborators_list`.`prj_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_provinces`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_provinces`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_provinces` AS select `psi_provinces`.`province_id` AS `province_id`,`psi_provinces`.`province_name` AS `province_name`,`psi_regions`.`region_name` AS `region_name`,`psi_provinces`.`region_id` AS `region_id` from (`psi_provinces` left join `psi_regions` on((`psi_provinces`.`region_id` = `psi_regions`.`region_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_regions`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_regions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_regions` AS select `psi_regions`.`region_id` AS `region_id`,`psi_regions`.`region_code` AS `region_code`,`psi_regions`.`region_name` AS `region_name`,concat(`psi_regions`.`region_code`,' (',`psi_regions`.`region_name`,')') AS `region_text` from `psi_regions` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_repayments`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_repayments` AS select `psi_repayments`.`rep_id` AS `rep_id`,`psi_repayments`.`rep_start_year` AS `rep_start_year`,`psi_repayments`.`rep_start_month` AS `rep_start_month`,`psi_repayments`.`rep_amount` AS `rep_amount`,`psi_repayments`.`rep_month_count` AS `rep_month_count`,`psi_repayments`.`rep_otb_paid` AS `rep_otb_paid`,`psi_repayments`.`rep_remarks` AS `rep_remarks`,`psi_repayments`.`rep_add_amount` AS `rep_add_amount`,`psi_repayments`.`rep_add_check_date` AS `rep_add_check_date`,`psi_repayments`.`rep_add_check_no` AS `rep_add_check_no`,`psi_repayments`.`rep_ub_amount` AS `rep_ub_amount`,`psi_repayments`.`rep_ub_check_date` AS `rep_ub_check_date`,`psi_repayments`.`rep_ub_check_no` AS `rep_ub_check_no`,`psi_repayments`.`rep_monthly_payment` AS `rep_monthly_payment`,((`psi_repayments`.`rep_amount` + `psi_repayments`.`rep_add_amount`) - `psi_repayments`.`rep_ub_amount`) AS `rep_total_amount`,`psi_repayments`.`prj_id` AS `prj_id`,`psi_repayments`.`encoder` AS `encoder`,`psi_repayments`.`date_encoded` AS `date_encoded`,`psi_repayments`.`updater` AS `updater`,`psi_repayments`.`last_updated` AS `last_updated`,`psi_repayments`.`rep_otb` AS `rep_otb`,ifnull(`vwpsi_repayments_totals`.`rep_total_due`,0) AS `rep_total_due`,ifnull(`vwpsi_repayments_totals`.`rep_total_paid`,0) AS `rep_total_paid`,ifnull(`vwpsi_repayments_totals`.`rep_payment_count`,0) AS `rep_payment_count`,ifnull(`vwpsi_deferment_monthcounts`.`rep_deferment_monthcount`,0) AS `rep_deferment_monthcount`,ifnull(`vwpsi_repayments_totals`.`rep_total_penalty_amount_due`,0) AS `rep_total_penalty_amount_due`,ifnull(`vwpsi_repayments_totals`.`rep_total_penalty_amount_paid`,0) AS `rep_total_penalty_amount_paid`,(((`psi_repayments`.`rep_amount` + `psi_repayments`.`rep_add_amount`) - `psi_repayments`.`rep_ub_amount`) - ifnull(`vwpsi_repayments_totals`.`rep_total_paid`,0)) AS `rep_balance`,ifnull(`vwpsi_otb_payments`.`rep_otb_amount_paid`,0) AS `rep_otb_amount_paid`,(((`psi_repayments`.`rep_amount` + `psi_repayments`.`rep_add_amount`) - `psi_repayments`.`rep_ub_amount`) * 0.005) AS `rep_otb_amount`,(((`psi_repayments`.`rep_amount` + `psi_repayments`.`rep_add_amount`) - `psi_repayments`.`rep_ub_amount`) + (`psi_repayments`.`rep_amount` * 0.005)) AS `rep_amount_with_otb`,`psi_repayments`.`rep_ub_receipt_no` AS `rep_ub_receipt_no`,if(((ifnull(`vwpsi_repayments_totals`.`rep_total_paid`,0) = 0) or (ifnull(`vwpsi_repayments_totals`.`rep_total_due`,0) = 0)),0,((`vwpsi_repayments_totals`.`rep_total_paid` / `vwpsi_repayments_totals`.`rep_total_due`) * 100)) AS `rep_refund_rate` from (((`psi_repayments` left join `vwpsi_repayments_totals` on((`psi_repayments`.`rep_id` = `vwpsi_repayments_totals`.`rep_id`))) left join `vwpsi_otb_payments` on((`psi_repayments`.`rep_id` = `vwpsi_otb_payments`.`rep_id`))) left join `vwpsi_deferment_monthcounts` on((`psi_repayments`.`rep_id` = `vwpsi_deferment_monthcounts`.`rep_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_repayments_all`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_all`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_repayments_all` AS select sum(`vwpsi_repayments`.`rep_total_due`) AS `rep_all_due`,sum(`vwpsi_repayments`.`rep_total_paid`) AS `rep_all_paid`,sum(`vwpsi_repayments`.`rep_balance`) AS `rep_all_balance`,sum(`vwpsi_repayments`.`rep_total_amount`) AS `rep_all_amount` from `vwpsi_repayments` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_repayments_payments`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_payments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_repayments_payments` AS select `psi_repayments_payments`.`pay_id` AS `pay_id`,`psi_repayments_payments`.`pay_year` AS `pay_year`,`psi_repayments_payments`.`pay_month` AS `pay_month`,`psi_repayments_payments`.`pay_count` AS `pay_count`,`psi_repayments_payments`.`pay_level` AS `pay_level`,`psi_repayments_payments`.`pay_amount_due` AS `pay_amount_due`,`psi_repayments_payments`.`pay_amount_paid` AS `pay_amount_paid`,`psi_repayments_payments`.`pay_amount_date_paid` AS `pay_amount_date_paid`,`psi_repayments_payments`.`pay_check_no` AS `pay_check_no`,`psi_repayments_payments`.`pay_check_date` AS `pay_check_date`,`psi_repayments_payments`.`pay_receipt_no` AS `pay_receipt_no`,`psi_repayments_payments`.`pay_type_id` AS `pay_type_id`,`psi_repayments_payments`.`pay_otb` AS `pay_otb`,`psi_repayments_payments`.`pay_penalty_amount_due` AS `pay_penalty_amount_due`,`psi_repayments_payments`.`pay_penalty_amount_paid` AS `pay_penalty_amount_paid`,`psi_repayments_payments`.`pay_penalty_date_paid` AS `pay_penalty_date_paid`,`psi_repayments_payments`.`pay_remarks` AS `pay_remarks`,`psi_repayments_payments`.`rep_id` AS `rep_id`,`psi_repayments_payments`.`encoder` AS `encoder`,`psi_repayments_payments`.`date_encoded` AS `date_encoded`,`psi_repayments_payments`.`updater` AS `updater`,`psi_repayments_payments`.`last_updated` AS `last_updated`,`psi_repayments_payment_types`.`pay_type_name` AS `pay_type_name`,`psi_repayments_payments`.`pay_overdue_amount_due` AS `pay_overdue_amount_due`,`psi_repayments_payments`.`pay_overdue_amount_paid` AS `pay_overdue_amount_paid`,`psi_repayments_payments`.`pay_overdue_date_paid` AS `pay_overdue_date_paid` from (`psi_repayments_payments` left join `psi_repayments_payment_types` on((`psi_repayments_payments`.`pay_type_id` = `psi_repayments_payment_types`.`pay_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_repayments_totals`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_totals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_repayments_totals` AS select sum(`psi_repayments_payments`.`pay_amount_due`) AS `rep_total_due`,sum(`psi_repayments_payments`.`pay_amount_paid`) AS `rep_total_paid`,sum(`psi_repayments_payments`.`pay_count`) AS `rep_payment_count`,sum(`psi_repayments_payments`.`pay_penalty_amount_due`) AS `rep_total_penalty_amount_due`,sum(`psi_repayments_payments`.`pay_penalty_amount_paid`) AS `rep_total_penalty_amount_paid`,`psi_repayments_payments`.`rep_id` AS `rep_id` from `psi_repayments_payments` where (`psi_repayments_payments`.`pay_otb` = 0) group by `psi_repayments_payments`.`rep_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_repayments_totals_per_province`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_totals_per_province`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_repayments_totals_per_province` AS select sum(`vwpsi_repayments_totals`.`rep_total_due`) AS `rep_total_due`,sum(`vwpsi_repayments_totals`.`rep_total_paid`) AS `rep_total_paid`,sum(`vwpsi_repayments_totals`.`rep_payment_count`) AS `rep_payment_count`,sum(`vwpsi_repayments_totals`.`rep_total_penalty_amount_due`) AS `rep_total_penalty_amount_due`,sum(`vwpsi_repayments_totals`.`rep_total_penalty_amount_paid`) AS `rep_total_penalty_amount_paid`,`psi_projects`.`province_id` AS `province_id`,`psi_provinces`.`province_name` AS `province_name` from (((`vwpsi_repayments_totals` left join `psi_repayments` on((`vwpsi_repayments_totals`.`rep_id` = `psi_repayments`.`rep_id`))) left join `psi_projects` on((`psi_repayments`.`prj_id` = `psi_projects`.`prj_id`))) left join `psi_provinces` on((`psi_projects`.`province_id` = `psi_provinces`.`province_id`))) group by `psi_projects`.`province_id`,`psi_provinces`.`province_name` having (`psi_projects`.`province_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_repayments_with_projects`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_repayments_with_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_repayments_with_projects` AS select `vwpsi_repayments`.`rep_id` AS `rep_id`,`vwpsi_repayments`.`rep_start_year` AS `rep_start_year`,`vwpsi_repayments`.`rep_start_month` AS `rep_start_month`,`vwpsi_repayments`.`rep_amount` AS `rep_amount`,`vwpsi_repayments`.`rep_month_count` AS `rep_month_count`,`vwpsi_repayments`.`rep_otb_paid` AS `rep_otb_paid`,`vwpsi_repayments`.`rep_remarks` AS `rep_remarks`,`vwpsi_repayments`.`rep_add_amount` AS `rep_add_amount`,`vwpsi_repayments`.`rep_add_check_date` AS `rep_add_check_date`,`vwpsi_repayments`.`rep_add_check_no` AS `rep_add_check_no`,`vwpsi_repayments`.`rep_ub_amount` AS `rep_ub_amount`,`vwpsi_repayments`.`rep_ub_check_date` AS `rep_ub_check_date`,`vwpsi_repayments`.`rep_ub_check_no` AS `rep_ub_check_no`,`vwpsi_repayments`.`rep_monthly_payment` AS `rep_monthly_payment`,`vwpsi_repayments`.`rep_total_amount` AS `rep_total_amount`,`vwpsi_repayments`.`prj_id` AS `prj_id`,`vwpsi_repayments`.`encoder` AS `encoder`,`vwpsi_repayments`.`date_encoded` AS `date_encoded`,`vwpsi_repayments`.`updater` AS `updater`,`vwpsi_repayments`.`last_updated` AS `last_updated`,`vwpsi_repayments`.`rep_otb` AS `rep_otb`,`vwpsi_repayments`.`rep_total_paid` AS `rep_total_paid`,`vwpsi_repayments`.`rep_payment_count` AS `rep_payment_count`,`vwpsi_repayments`.`rep_deferment_monthcount` AS `rep_deferment_monthcount`,`vwpsi_repayments`.`rep_total_penalty_amount_due` AS `rep_total_penalty_amount_due`,`vwpsi_repayments`.`rep_total_penalty_amount_paid` AS `rep_total_penalty_amount_paid`,`vwpsi_repayments`.`rep_balance` AS `rep_balance`,`vwpsi_repayments`.`rep_otb_amount_paid` AS `rep_otb_amount_paid`,`vwpsi_repayments`.`rep_otb_amount` AS `rep_otb_amount`,`vwpsi_repayments`.`rep_amount_with_otb` AS `rep_amount_with_otb`,`vwpsi_repayments`.`rep_ub_receipt_no` AS `rep_ub_receipt_no`,`vwpsi_repayments`.`rep_refund_rate` AS `rep_refund_rate`,`vwpsi_projects`.`prj_title` AS `prj_title`,`vwpsi_projects`.`prj_code` AS `prj_code`,`vwpsi_projects`.`prj_year_approved` AS `prj_year_approved`,`vwpsi_projects`.`prj_objective` AS `prj_objective`,`vwpsi_projects`.`prj_expected_output` AS `prj_expected_output`,`vwpsi_projects`.`prj_product_line` AS `prj_product_line`,`vwpsi_projects`.`prj_cost_setup` AS `prj_cost_setup`,`vwpsi_projects`.`prj_cost_gia` AS `prj_cost_gia`,`vwpsi_projects`.`prj_cost_rollout` AS `prj_cost_rollout`,`vwpsi_projects`.`prj_cost_benefactor` AS `prj_cost_benefactor`,`vwpsi_projects`.`prj_cost_other` AS `prj_cost_other`,`vwpsi_projects`.`prj_intervention` AS `prj_intervention`,`vwpsi_projects`.`prj_longitude` AS `prj_longitude`,`vwpsi_projects`.`prj_latitude` AS `prj_latitude`,`vwpsi_projects`.`prj_elevation` AS `prj_elevation`,`vwpsi_projects`.`prj_type_id` AS `prj_type_id`,`vwpsi_projects`.`prj_status_id` AS `prj_status_id`,`vwpsi_projects`.`prj_remarks` AS `prj_remarks`,`vwpsi_projects`.`province_id` AS `province_id`,`vwpsi_projects`.`city_id` AS `city_id`,`vwpsi_projects`.`barangay_id` AS `barangay_id`,`vwpsi_projects`.`ug_id` AS `ug_id`,`vwpsi_projects`.`prj_type_name` AS `prj_type_name`,`vwpsi_projects`.`prj_status_name` AS `prj_status_name`,`vwpsi_projects`.`province_name` AS `province_name`,`vwpsi_projects`.`region_name` AS `region_name`,`vwpsi_projects`.`city_name` AS `city_name`,`vwpsi_projects`.`barangay_name` AS `barangay_name`,`vwpsi_projects`.`ug_name` AS `ug_name`,`vwpsi_projects`.`prj_fund_release_date` AS `prj_fund_release_date`,`vwpsi_projects`.`prj_refund_period_from` AS `prj_refund_period_from`,`vwpsi_projects`.`prj_refund_period_to` AS `prj_refund_period_to`,`vwpsi_projects`.`prj_province` AS `prj_province`,`vwpsi_projects`.`prj_city` AS `prj_city`,`vwpsi_projects`.`prj_barangay` AS `prj_barangay`,`vwpsi_projects`.`prj_sector_list` AS `prj_sector_list`,`vwpsi_projects`.`coop_names` AS `coop_names`,`vwpsi_projects`.`collaborator_names` AS `collaborator_names`,`vwpsi_projects`.`prj_address` AS `prj_address`,`vwpsi_projects`.`coop_p_names` AS `coop_p_names`,`vwpsi_projects`.`sector_name` AS `sector_name`,`vwpsi_projects`.`district_name` AS `district_name`,`vwpsi_projects`.`district_id` AS `district_id`,`vwpsi_projects`.`region_id` AS `region_id`,`vwpsi_projects`.`sector_id` AS `sector_id` from (`vwpsi_repayments` join `vwpsi_projects` on((`vwpsi_repayments`.`prj_id` = `vwpsi_projects`.`prj_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_scholarships`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_scholarships`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_scholarships` AS select `psi_scholarships`.`scholar_id` AS `scholar_id`,`psi_scholarships`.`scholar_fname` AS `scholar_fname`,`psi_scholarships`.`scholar_mname` AS `scholar_mname`,`psi_scholarships`.`scholar_lname` AS `scholar_lname`,concat(`psi_scholarships`.`scholar_fname`,convert(if((char_length(`psi_scholarships`.`scholar_fname`) > 0),' ','') using latin1),`psi_scholarships`.`scholar_mname`,convert(if((char_length(`psi_scholarships`.`scholar_mname`) > 0),' ','') using latin1),`psi_scholarships`.`scholar_lname`) AS `scholar_name`,`psi_scholarships`.`scholar_suffix` AS `scholar_suffix`,`psi_scholarships`.`scholar_mobile` AS `scholar_mobile`,`psi_scholarships`.`scholar_email` AS `scholar_email`,`psi_scholarships`.`scholar_address` AS `scholar_address`,`psi_scholarships`.`scholar_year_award` AS `scholar_year_award`,`psi_scholarships`.`scholar_remarks` AS `scholar_remarks`,`psi_scholarships`.`scholar_stat_id` AS `scholar_stat_id`,`psi_scholarships`.`scholar_prog_id` AS `scholar_prog_id`,`psi_scholarships`.`school_id` AS `school_id`,`psi_scholarships`.`course_id` AS `course_id`,`psi_scholarships`.`encoder` AS `encoder`,`psi_scholarships`.`date_encoded` AS `date_encoded`,`psi_scholarships`.`updater` AS `updater`,`psi_scholarships`.`last_updated` AS `last_updated`,`psi_scholarship_programs`.`scholar_prog_name` AS `scholar_prog_name`,`psi_scholarship_programs`.`scholar_prog_desc` AS `scholar_prog_desc`,`psi_schools`.`school_name` AS `school_name`,`psi_schools`.`school_acronym` AS `school_acronym`,`psi_schools`.`school_address` AS `school_address`,`psi_schools`.`school_coordinator` AS `school_coordinator`,`psi_schools`.`school_email` AS `school_email`,`psi_schools`.`school_phone` AS `school_phone`,`psi_schools`.`school_mobile` AS `school_mobile`,`vwpsi_courses`.`course_name` AS `course_name`,`vwpsi_courses`.`course_cat_id` AS `course_cat_id`,`vwpsi_courses`.`course_yearcount` AS `course_yearcount`,`vwpsi_courses`.`course_cat_name` AS `course_cat_name`,`vwpsi_courses`.`course_label` AS `course_label`,`psi_scholarship_status`.`scholar_stat_name` AS `scholar_stat_name`,`psi_scholarship_status`.`scholar_stat_abbr` AS `scholar_stat_abbr` from ((((`psi_scholarships` left join `psi_scholarship_programs` on((`psi_scholarships`.`scholar_prog_id` = `psi_scholarship_programs`.`scholar_prog_id`))) left join `psi_schools` on((`psi_scholarships`.`school_id` = `psi_schools`.`school_id`))) left join `vwpsi_courses` on((`psi_scholarships`.`course_id` = `vwpsi_courses`.`course_id`))) left join `psi_scholarship_status` on((`psi_scholarships`.`scholar_stat_id` = `psi_scholarship_status`.`scholar_stat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_service_provider_services`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_service_provider_services`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_service_provider_services` AS select `psi_service_provider_services`.`sps_id` AS `sps_id`,`psi_service_provider_services`.`sp_id` AS `sp_id`,`psi_service_provider_services`.`service_id` AS `service_id`,`psi_services`.`service_name` AS `service_name` from (`psi_service_provider_services` left join `psi_services` on((`psi_service_provider_services`.`service_id` = `psi_services`.`service_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_service_providers`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_service_providers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_service_providers` AS select `psi_service_providers`.`sp_id` AS `sp_id`,`psi_service_providers`.`sp_name` AS `sp_name`,`psi_service_providers`.`sp_other_service` AS `sp_other_service`,`psi_service_providers`.`sp_designation` AS `sp_designation`,`psi_service_providers`.`sp_fname` AS `sp_fname`,`psi_service_providers`.`sp_mname` AS `sp_mname`,`psi_service_providers`.`sp_lname` AS `sp_lname`,concat(`psi_service_providers`.`sp_fname`,convert(if((char_length(`psi_service_providers`.`sp_fname`) > 0),' ','') using latin1),`psi_service_providers`.`sp_mname`,convert(if((char_length(`psi_service_providers`.`sp_mname`) > 0),' ','') using latin1),`psi_service_providers`.`sp_lname`) AS `sp_contact_name`,`psi_service_providers`.`sp_address` AS `sp_address`,`psi_service_providers`.`sp_expertise` AS `sp_expertise`,`psi_service_providers`.`sp_product_line` AS `sp_product_line`,`psi_service_providers`.`sp_phone` AS `sp_phone`,`psi_service_providers`.`sp_mobile` AS `sp_mobile`,`psi_service_providers`.`sp_email` AS `sp_email`,`psi_service_providers`.`sp_website` AS `sp_website`,`psi_service_providers`.`encoder` AS `encoder`,`psi_service_providers`.`date_encoded` AS `date_encoded`,`psi_service_providers`.`updater` AS `updater`,`psi_service_providers`.`last_updated` AS `last_updated` from `psi_service_providers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_trainings`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_trainings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_trainings` AS select `psi_trainings`.`tr_id` AS `tr_id`,`psi_trainings`.`tr_title` AS `tr_title`,`psi_trainings`.`tr_start` AS `tr_start`,`psi_trainings`.`tr_end` AS `tr_end`,`psi_trainings`.`tr_duration` AS `tr_duration`,`psi_trainings`.`tr_location` AS `tr_location`,`psi_trainings`.`tr_longitude` AS `tr_longitude`,`psi_trainings`.`tr_latitude` AS `tr_latitude`,`psi_trainings`.`tr_elevation` AS `tr_elevation`,`psi_trainings`.`tr_cost` AS `tr_cost`,`psi_trainings`.`tr_csf` AS `tr_csf`,`psi_trainings`.`tr_no_feminine` AS `tr_no_feminine`,`psi_trainings`.`tr_no_musculine` AS `tr_no_musculine`,`psi_trainings`.`tr_no_pwd` AS `tr_no_pwd`,`psi_trainings`.`tr_no_seniors` AS `tr_no_seniors`,`psi_trainings`.`tr_no_firms` AS `tr_no_firms`,`psi_trainings`.`tr_no_participants` AS `tr_no_participants`,`psi_trainings`.`tr_type_id` AS `tr_type_id`,`psi_trainings`.`prj_id` AS `prj_id`,`psi_trainings`.`ug_id` AS `ug_id`,`psi_trainings`.`sp_id` AS `sp_id`,`psi_trainings`.`encoder` AS `encoder`,`psi_trainings`.`date_encoded` AS `date_encoded`,`psi_trainings`.`updater` AS `updater`,`psi_trainings`.`last_updated` AS `last_updated`,`psi_training_types`.`tr_type_name` AS `tr_type_name`,`psi_service_providers`.`sp_name` AS `sp_name`,`psi_service_providers`.`sp_other_service` AS `sp_other_service`,`psi_service_providers`.`sp_designation` AS `sp_designation`,`psi_service_providers`.`sp_fname` AS `sp_fname`,`psi_service_providers`.`sp_mname` AS `sp_mname`,`psi_service_providers`.`sp_lname` AS `sp_lname`,`psi_service_providers`.`sp_address` AS `sp_address`,`psi_service_providers`.`sp_expertise` AS `sp_expertise`,`psi_service_providers`.`sp_product_line` AS `sp_product_line`,`psi_service_providers`.`sp_phone` AS `sp_phone`,`psi_service_providers`.`sp_mobile` AS `sp_mobile`,`psi_service_providers`.`sp_email` AS `sp_email`,`psi_service_providers`.`sp_website` AS `sp_website`,`psi_usergroups`.`ug_name` AS `ug_name` from (((`psi_trainings` left join `psi_training_types` on((`psi_trainings`.`tr_type_id` = `psi_training_types`.`tr_type_id`))) left join `psi_usergroups` on((`psi_trainings`.`ug_id` = `psi_usergroups`.`ug_id`))) left join `psi_service_providers` on((`psi_trainings`.`sp_id` = `psi_service_providers`.`sp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_usergroup_rights`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_usergroup_rights`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_usergroup_rights` AS select `psi_usergroup_rights`.`ugr_id` AS `ugr_id`,`psi_usergroup_rights`.`ug_id` AS `ug_id`,`psi_usergroup_rights`.`ur_id` AS `ur_id`,`psi_usergroup_rights`.`ugr_view` AS `ugr_view`,`psi_usergroup_rights`.`ugr_add` AS `ugr_add`,`psi_usergroup_rights`.`ugr_edit` AS `ugr_edit`,`psi_usergroup_rights`.`ugr_delete` AS `ugr_delete`,`psi_usergroups`.`ug_name` AS `ug_name`,`psi_user_rights`.`ur_name` AS `ur_name` from ((`psi_usergroup_rights` left join `psi_usergroups` on((`psi_usergroup_rights`.`ug_id` = `psi_usergroups`.`ug_id`))) left join `psi_user_rights` on((`psi_usergroup_rights`.`ur_id` = `psi_user_rights`.`ur_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpsi_users`
--

/*!50001 DROP VIEW IF EXISTS `vwpsi_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpsi_users` AS select `psi_users`.`u_id` AS `u_id`,`psi_users`.`u_username` AS `u_username`,`psi_users`.`u_password` AS `u_password`,concat(`psi_users`.`u_fname`,' ',`psi_users`.`u_mname`,' ',`psi_users`.`u_lname`) AS `u_name`,concat(`psi_users`.`u_lname`,', ',`psi_users`.`u_fname`,' ',`psi_users`.`u_mname`) AS `u_name_rev`,`psi_users`.`u_lname` AS `u_lname`,`psi_users`.`u_fname` AS `u_fname`,`psi_users`.`u_mname` AS `u_mname`,`psi_users`.`u_mobile` AS `u_mobile`,`psi_users`.`u_email` AS `u_email`,`psi_users`.`ug_id` AS `ug_id`,`psi_users`.`u_enabled` AS `u_enabled`,`psi_usergroups`.`ug_name` AS `ug_name`,`psi_usergroups`.`ug_is_admin` AS `ug_is_admin`,`psi_users`.`region_id` AS `region_id`,`psi_regions`.`region_code` AS `region_code`,`psi_regions`.`region_name` AS `region_name`,concat(`psi_regions`.`region_code`,' (',`psi_regions`.`region_name`,')') AS `u_region_name` from ((`psi_users` left join `psi_usergroups` on((`psi_users`.`ug_id` = `psi_usergroups`.`ug_id`))) left join `psi_regions` on((`psi_users`.`region_id` = `psi_regions`.`region_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-08 17:14:48
