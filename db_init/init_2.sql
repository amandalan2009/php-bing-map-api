-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_time` timestamp NULL DEFAULT NULL,
  `organisers` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participants` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Football','sport','2021-12-10 00:00:00','abc','amanda ','5 Centennial Ave, Chatswood NSW 2067',0.00000000,NULL,'2021-10-03 21:07:41'),(2,'Swimming','sport','2021-11-10 00:00:00','ddd','ccc','504 Victoria Rd, Ryde NSW 2112',6.01872068,NULL,'2021-10-03 21:07:41'),(3,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','34/24 Edensor St, Epping NSW 2121',9.60292006,'2021-10-03 09:34:33','2021-10-03 21:07:42'),(4,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','34/24 Edensor St, Epping NSW 2121',9.60292006,'2021-10-03 09:34:53','2021-10-03 21:07:43'),(5,'English','English','2021-10-16 00:00:00','iiiiiasdf','sdff. ffff','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 10:03:20','2021-10-03 21:07:44'),(6,'English','English','2021-10-16 00:00:00','iiiiiasdf','sdff. ffff','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 10:05:14','2021-10-03 21:07:44'),(7,'Math','Math','2021-10-16 00:00:00','DDD','CCC EEE DDD','34/24 Edensor St, Epping NSW 2121',9.60292006,'2021-10-03 10:05:50','2021-10-03 21:07:45'),(8,'Math','Math','2021-10-16 00:00:00','DDD','CCC EEE DDD','34/24 Edensor St, Epping NSW 2121',9.60292006,'2021-10-03 10:06:41','2021-10-03 21:07:46'),(9,'Piano','English','2021-10-16 00:00:00','DDD','CCC EEE DDD','161 Castlereagh Street, Sydney, New South Wales, Australia',8.70726962,'2021-10-03 10:14:57','2021-10-03 21:07:47'),(10,'Art','art','2021-09-24 00:00:00','jdshfksjhdfkjsd','CCC EEE DDD','1 Anderson St, Chatswood NSW 2067',0.57533013,'2021-10-03 10:17:10','2021-10-03 21:07:47'),(11,'Rejected- Notification about Wholesale Declaration Application','English','2021-09-24 00:00:00','iiiiiasdf','CCC EEE DDD','1 Anderson St, Chatswood NSW 2067',0.57533013,'2021-10-03 10:20:05','2021-10-03 21:07:48'),(12,'Rejected- Notification about Wholesale Declaration Application','English','2021-10-16 00:00:00','jdshfksjhdfkjsd','CCC EEE DDD','1 Anderson St, Chatswood NSW 2067',0.57533013,'2021-10-03 10:22:01','2021-10-03 21:07:49'),(13,'Piano','English','2021-09-24 00:00:00','jdshfksjhdfkjsd','CCC EEE DDD','161 Castlereagh Street, Sydney, New South Wales, Australia',8.70726962,'2021-10-03 19:46:49','2021-10-03 21:07:49'),(14,'Piano','English','2021-09-24 00:00:00','jdshfksjhdfkjsd','CCC EEE DDD','161 Castlereagh Street, Sydney, New South Wales, Australia',8.70726962,'2021-10-03 19:50:01','2021-10-03 21:07:50'),(15,'Successful - Notification about Wholesale  Declaration Application','music','2021-10-16 00:00:00','DDD','dfjhsdk jsdfjlsd jsldkjf','34/24 Edensor St, Epping NSW 2121',9.60292006,'2021-10-03 19:52:27','2021-10-03 21:07:51'),(16,'Piano','English','2021-10-16 00:00:00','DDD','dfjhsdk jsdfjlsd jsldkjf','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 19:53:41','2021-10-03 21:07:51'),(17,'Piano','English','2021-10-16 00:00:00','DDD','dfjhsdk jsdfjlsd jsldkjf','1 Anderson St, Chatswood NSW 2067',0.57533013,'2021-10-03 19:58:43','2021-10-03 21:07:52'),(18,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 19:59:24','2021-10-03 21:07:53'),(19,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:02:25','2021-10-03 21:07:53'),(20,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:04:35','2021-10-03 21:07:54'),(21,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:05:13','2021-10-03 21:07:54'),(22,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:06:10','2021-10-03 21:07:55'),(23,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:06:45','2021-10-03 21:07:55'),(24,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:07:17','2021-10-03 21:07:56'),(25,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:07:47','2021-10-03 21:07:56'),(26,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:08:12','2021-10-03 21:07:57'),(27,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:08:41','2021-10-03 21:07:58'),(28,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:09:09','2021-10-03 21:07:58'),(29,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:09:28','2021-10-03 21:07:59'),(30,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:10:03','2021-10-03 21:08:00'),(31,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:14:42','2021-10-03 21:08:00'),(32,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:15:06','2021-10-03 21:08:01'),(33,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:16:02','2021-10-03 21:08:02'),(34,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:18:07','2021-10-03 21:08:02'),(35,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:19:37','2021-10-03 21:08:03'),(36,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:28:39','2021-10-03 21:08:03'),(37,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:32:39','2021-10-03 21:08:04'),(38,'Piano','music','2021-10-16 00:00:00','DDD','CCC EEE DDD','58 Karril Ave, Beecroft NSW 2119',12.41355416,'2021-10-03 20:33:14','2021-10-03 20:33:14');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `contract_id` int NOT NULL,
  `invoice_no` varchar(35) NOT NULL,
  `description` text,
  `amount_net` decimal(10,2) NOT NULL,
  `amount_gst` decimal(10,2) NOT NULL,
  `amount_gross` decimal(10,2) NOT NULL,
  `invoiced` date NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_no` (`invoice_no`)
) ENGINE=InnoDB AUTO_INCREMENT=501670 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (501632,16287,29058,'39058','Lease charges for vehicle XVD11N',874.00,87.40,961.40,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501633,16287,29058,'39058','Fuel costs for vehicle XVD11N',153.00,15.30,168.30,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501634,16287,28490,'39058','Lease charges for vehicle XVD21X',843.00,84.30,927.30,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501635,16287,28490,'39058','Fuel costs for vehicle XVD21X',178.00,17.80,195.80,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501636,16287,29481,'39058','Lease charges for vehicle XDU66N',793.00,79.30,872.30,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501637,16287,29481,'39058','Fuel costs for vehicle XDU66N',214.00,21.40,235.40,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501638,16287,29756,'39058','Lease charges for vehicle UTN33P',792.00,79.20,871.20,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501639,16287,29756,'39058','Fuel costs for vehicle UTN33P',31.00,3.10,34.10,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501640,16287,29756,'39058','Maintenance charges for vehicle UTN33P',167.00,16.70,183.70,'2019-07-01','2019-07-01 15:03:52','2019-07-01 15:03:52'),(501641,16287,29058,'39171','Lease charges for vehicle XVD11N',874.00,87.40,961.40,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501642,16287,29058,'39171','Fuel costs for vehicle XVD11N',120.00,12.00,132.00,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501643,16287,28490,'39171','Lease charges for vehicle XVD21X',843.00,84.30,927.30,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501644,16287,28490,'39171','Fuel costs for vehicle XVD21X',135.00,13.50,148.50,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501645,16287,28490,'39171','Tyre costs for vehicle XVD21X',415.00,41.50,456.50,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501646,16287,29481,'39171','Lease charges for vehicle XDU66N',793.00,79.30,872.30,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501647,16287,29481,'39171','Fuel costs for vehicle XDU66N',85.00,8.50,93.50,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501648,16287,29756,'39171','Lease charges for vehicle UTN33P',792.00,79.20,871.20,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501649,16287,29756,'39171','Fuel costs for vehicle UTN33P',78.00,7.80,85.80,'2019-08-01','2019-08-01 16:51:00','2019-08-01 16:51:00'),(501650,16287,29058,'39305','Lease charges for vehicle XVD11N',874.00,87.40,961.40,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501651,16287,29058,'39305','Fuel costs for vehicle XVD11N',111.00,11.10,122.10,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501652,16287,28490,'39305','Lease charges for vehicle XVD21X',753.00,75.30,828.30,'2019-09-01','2019-09-01 14:56:00','2019-09-01 15:01:00'),(501653,16287,28490,'39305','Fuel costs for vehicle XVD21X',153.00,15.30,168.30,'2019-09-01','2019-09-01 14:56:00','2019-09-01 15:01:00'),(501654,16287,28490,'39305','Lease charges for vehicle XVD21X',843.00,84.30,927.30,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501655,16287,28490,'39305','Fuel costs for vehicle XVD21X',67.00,6.70,73.70,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501656,16287,28490,'39305','Maintenance charges for vehicle XVD21X',254.00,25.40,279.40,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501657,16287,29481,'39305','Lease charges for vehicle XDU66N',793.00,79.30,872.30,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501658,16287,29481,'39305','Fuel costs for vehicle XDU66N',146.00,14.60,160.60,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501659,16287,29756,'39305','Lease charges for vehicle UTN33P',792.00,79.20,871.20,'2019-09-01','2019-09-01 14:56:00','2019-09-01 14:56:00'),(501660,16287,29756,'39305','Fuel costs for vehicle UTN33P',181.00,18.10,199.10,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501661,16287,29058,'39464','Lease charges for vehicle XVD11N',874.00,87.40,961.40,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501662,16287,29058,'39464','Fuel costs for vehicle XVD11N',64.00,6.40,70.40,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501663,16287,29058,'39464','Maintenance charges for vehicle XVD11N',564.00,56.40,620.40,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501664,16287,28490,'39464','Lease charges for vehicle XVD21X',843.00,84.30,927.30,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501665,16287,28490,'39464','Fuel costs for vehicle XVD21X',99.00,9.90,108.90,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501666,16287,29481,'39464','Lease charges for vehicle XDU66N',793.00,79.30,872.30,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501667,16287,29481,'39464','Fuel costs for vehicle XDU66N',111.00,11.10,122.10,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501668,16287,29756,'39464','Lease charges for vehicle UTN33P',792.00,79.20,871.20,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00'),(501669,16287,29756,'39464','Fuel costs for vehicle UTN33P',147.00,14.70,161.70,'2019-10-01','2019-10-01 12:00:00','2019-10-01 12:00:00');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_10_03_045916_create_activities_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Amanda','amanda.lan2009@gmail.com',NULL,'$2y$10$GiGgS01L5VbDlJGIXSC4G.z8F5J0m7AGW4uG5rJFDKEQpIzKRJ7IO',NULL,'2021-10-03 04:17:55','2021-10-03 04:17:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04  8:19:17
