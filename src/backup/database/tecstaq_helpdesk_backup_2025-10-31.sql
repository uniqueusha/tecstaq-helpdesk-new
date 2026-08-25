-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tecstaq_helpdesk
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer_agents`
--

DROP TABLE IF EXISTS `customer_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_agents` (
  `agents_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`agents_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_agents`
--

LOCK TABLES `customer_agents` WRITE;
/*!40000 ALTER TABLE `customer_agents` DISABLE KEYS */;
INSERT INTO `customer_agents` VALUES (1,4,2,1,'2025-10-22 12:06:55'),(2,4,3,1,'2025-10-22 12:06:55'),(3,5,2,1,'2025-10-22 12:08:28'),(4,5,3,1,'2025-10-22 12:08:28'),(5,6,2,1,'2025-10-22 12:09:01'),(6,6,3,1,'2025-10-22 12:09:01'),(7,7,2,1,'2025-10-22 12:09:52'),(8,7,3,1,'2025-10-22 12:09:52'),(9,8,2,1,'2025-10-22 12:10:52'),(10,8,3,1,'2025-10-22 12:10:52'),(11,9,2,1,'2025-10-22 12:13:15'),(12,9,3,1,'2025-10-22 12:13:15'),(13,10,2,1,'2025-10-22 12:14:11'),(14,10,3,1,'2025-10-22 12:14:11'),(15,11,2,1,'2025-10-22 12:14:55'),(16,11,3,1,'2025-10-22 12:14:55'),(17,12,2,1,'2025-10-22 12:16:28'),(18,12,3,1,'2025-10-22 12:16:28'),(19,13,2,1,'2025-10-22 12:17:15'),(20,13,3,1,'2025-10-22 12:17:15'),(21,14,2,1,'2025-10-22 12:17:55'),(22,14,3,1,'2025-10-22 12:17:55'),(23,15,2,1,'2025-10-22 12:19:53'),(24,15,3,1,'2025-10-22 12:19:53'),(25,16,2,1,'2025-10-22 12:21:07'),(26,16,3,1,'2025-10-22 12:21:07'),(27,17,2,1,'2025-10-22 12:22:16'),(28,17,3,1,'2025-10-22 12:22:16'),(29,18,2,1,'2025-10-22 12:22:48'),(30,18,3,1,'2025-10-22 12:22:48'),(31,19,2,1,'2025-10-22 12:23:35'),(32,19,3,1,'2025-10-22 12:23:35'),(33,20,2,1,'2025-10-22 12:24:05'),(34,20,3,1,'2025-10-22 12:24:05'),(35,21,2,1,'2025-10-22 12:24:46'),(36,21,3,1,'2025-10-22 12:24:46'),(37,22,2,1,'2025-10-22 12:26:36'),(38,22,3,1,'2025-10-22 12:26:36'),(39,23,2,1,'2025-10-22 12:27:09'),(40,23,3,1,'2025-10-22 12:27:09'),(41,24,2,1,'2025-10-22 12:27:38'),(42,24,3,1,'2025-10-22 12:27:38'),(43,25,2,1,'2025-10-22 12:28:19'),(44,25,3,1,'2025-10-22 12:28:19'),(45,26,2,1,'2025-10-22 12:28:59'),(46,26,3,1,'2025-10-22 12:28:59'),(47,27,2,1,'2025-10-22 12:30:14'),(48,27,3,1,'2025-10-22 12:30:14'),(49,28,2,1,'2025-10-22 12:31:11'),(50,28,3,1,'2025-10-22 12:31:11'),(51,29,2,1,'2025-10-22 12:31:57'),(52,29,3,1,'2025-10-22 12:31:57'),(53,30,2,1,'2025-10-22 12:32:35'),(54,30,3,1,'2025-10-22 12:32:35'),(55,31,2,1,'2025-10-22 12:33:07'),(56,31,3,1,'2025-10-22 12:33:07'),(57,32,2,1,'2025-10-22 12:33:41'),(58,32,3,1,'2025-10-22 12:33:41'),(59,33,2,1,'2025-10-22 12:34:50'),(60,33,3,1,'2025-10-22 12:34:50'),(61,34,2,1,'2025-10-22 12:35:34'),(62,34,3,1,'2025-10-22 12:35:34'),(63,35,2,1,'2025-10-22 12:36:09'),(64,35,3,1,'2025-10-22 12:36:09'),(65,36,2,1,'2025-10-22 12:36:58'),(66,36,3,1,'2025-10-22 12:36:58'),(67,37,2,1,'2025-10-22 12:37:47'),(68,37,3,1,'2025-10-22 12:37:47'),(69,38,2,1,'2025-10-22 12:38:16'),(70,38,3,1,'2025-10-22 12:38:16'),(71,39,2,1,'2025-10-22 12:38:44'),(72,39,3,1,'2025-10-22 12:38:44'),(73,40,2,1,'2025-10-22 12:39:16'),(74,40,3,1,'2025-10-22 12:39:16'),(75,41,2,1,'2025-10-22 12:39:45'),(76,41,3,1,'2025-10-22 12:39:45'),(77,42,2,1,'2025-10-22 12:40:52'),(78,42,3,1,'2025-10-22 12:40:52'),(79,43,2,1,'2025-10-22 12:41:23'),(80,43,3,1,'2025-10-22 12:41:23'),(81,44,2,1,'2025-10-22 12:42:16'),(82,44,3,1,'2025-10-22 12:42:16'),(83,45,2,1,'2025-10-22 12:42:42'),(84,45,3,1,'2025-10-22 12:42:42'),(85,46,2,1,'2025-10-22 12:43:09'),(86,46,3,1,'2025-10-22 12:43:09'),(87,47,2,1,'2025-10-22 12:43:41'),(88,47,3,1,'2025-10-22 12:43:41'),(89,48,2,1,'2025-10-22 12:44:09'),(90,48,3,1,'2025-10-22 12:44:09'),(91,49,2,1,'2025-10-22 12:45:21'),(92,49,3,1,'2025-10-22 12:45:21'),(93,50,2,1,'2025-10-22 12:46:24'),(94,50,3,1,'2025-10-22 12:46:24'),(95,51,2,1,'2025-10-22 12:47:01'),(96,51,3,1,'2025-10-22 12:47:01'),(97,52,2,1,'2025-10-22 12:47:49'),(98,52,3,1,'2025-10-22 12:47:49'),(99,53,2,1,'2025-10-22 12:50:31'),(100,53,3,1,'2025-10-22 12:50:31'),(101,54,2,1,'2025-10-22 12:50:58'),(102,54,3,1,'2025-10-22 12:50:58'),(103,55,2,1,'2025-10-22 12:51:26'),(104,55,3,1,'2025-10-22 12:51:26'),(105,56,2,1,'2025-10-22 12:52:12'),(106,56,3,1,'2025-10-22 12:52:12'),(107,57,2,1,'2025-10-22 12:52:45'),(108,57,3,1,'2025-10-22 12:52:45'),(109,58,2,1,'2025-10-22 12:53:13'),(110,58,3,1,'2025-10-22 12:53:13'),(111,59,2,1,'2025-10-22 12:53:45'),(112,59,3,1,'2025-10-22 12:53:45'),(113,60,2,1,'2025-10-22 12:55:11'),(114,60,3,1,'2025-10-22 12:55:11'),(115,61,2,1,'2025-10-22 12:55:54'),(116,61,3,1,'2025-10-22 12:55:54'),(117,62,2,1,'2025-10-22 12:56:24'),(118,62,3,1,'2025-10-22 12:56:24'),(119,63,2,1,'2025-10-22 12:56:54'),(120,63,3,1,'2025-10-22 12:56:54'),(121,64,2,1,'2025-10-22 12:57:25'),(122,64,3,1,'2025-10-22 12:57:25'),(123,65,2,1,'2025-10-22 12:58:34'),(124,65,3,1,'2025-10-22 12:58:34'),(125,66,2,1,'2025-10-22 12:59:03'),(126,66,3,1,'2025-10-22 12:59:03'),(127,67,2,1,'2025-10-22 12:59:30'),(128,67,3,1,'2025-10-22 12:59:30'),(129,68,2,1,'2025-10-22 12:59:56'),(130,68,3,1,'2025-10-22 12:59:56'),(131,69,2,1,'2025-10-22 13:00:25'),(132,69,3,1,'2025-10-22 13:00:25'),(133,70,2,1,'2025-10-22 13:00:51'),(134,70,3,1,'2025-10-22 13:00:51'),(135,71,2,1,'2025-10-22 13:01:21'),(136,71,3,1,'2025-10-22 13:01:21'),(137,72,2,1,'2025-10-22 13:01:51'),(138,72,3,1,'2025-10-22 13:01:51'),(139,73,2,1,'2025-10-22 13:02:27'),(140,73,3,1,'2025-10-22 13:02:27'),(141,74,2,1,'2025-10-22 13:02:57'),(142,74,3,1,'2025-10-22 13:02:57'),(143,75,2,1,'2025-10-22 13:03:25'),(144,75,3,1,'2025-10-22 13:03:25'),(145,76,2,1,'2025-10-22 13:03:52'),(146,76,3,1,'2025-10-22 13:03:52'),(147,77,2,1,'2025-10-22 13:04:18'),(148,77,3,1,'2025-10-22 13:04:18'),(149,78,2,1,'2025-10-22 13:04:48'),(150,78,3,1,'2025-10-22 13:04:48'),(151,79,2,1,'2025-10-22 13:05:18'),(152,79,3,1,'2025-10-22 13:05:18'),(153,80,2,1,'2025-10-22 13:07:29'),(154,80,3,1,'2025-10-22 13:07:29'),(155,81,2,1,'2025-10-22 13:08:29'),(156,81,3,1,'2025-10-22 13:08:29'),(157,82,2,1,'2025-10-22 13:09:04'),(158,82,3,1,'2025-10-22 13:09:04'),(159,83,2,1,'2025-10-22 13:09:31'),(160,83,3,1,'2025-10-22 13:09:31'),(161,84,2,1,'2025-10-22 13:10:01'),(162,84,3,1,'2025-10-22 13:10:01'),(163,85,2,1,'2025-10-22 13:10:30'),(164,85,3,1,'2025-10-22 13:10:30'),(165,86,2,1,'2025-10-22 13:11:00'),(166,86,3,1,'2025-10-22 13:11:00'),(167,87,2,1,'2025-10-22 13:11:26'),(168,87,3,1,'2025-10-22 13:11:26'),(169,88,2,1,'2025-10-22 13:11:55'),(170,88,3,1,'2025-10-22 13:11:55'),(171,89,2,1,'2025-10-22 13:13:06'),(172,89,3,1,'2025-10-22 13:13:06'),(173,90,2,1,'2025-10-22 13:13:39'),(174,90,3,1,'2025-10-22 13:13:39'),(175,91,2,1,'2025-10-22 13:14:07'),(176,91,3,1,'2025-10-22 13:14:07'),(177,92,2,1,'2025-10-22 13:14:34'),(178,92,3,1,'2025-10-22 13:14:34'),(179,96,95,1,'2025-10-28 03:59:56'),(180,96,94,1,'2025-10-28 03:59:56');
/*!40000 ALTER TABLE `customer_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  `mts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'IT Support','Handles all IT infrastructure, hardware, network, and device-related support.',1,'2025-10-14 08:52:49','2025-10-14 08:52:49'),(2,'Development','Manages software-related development, customization, and code maintenance.',1,'2025-10-14 08:52:49','2025-10-14 08:52:49'),(3,'Customer','Customer',1,'2025-10-14 08:52:49','2025-10-14 08:52:49'),(4,'abc','desss',0,'2025-10-17 11:15:21','2025-10-17 11:33:28');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comments` text DEFAULT NULL,
  `submitted_by` int(11) DEFAULT NULL,
  `submitted_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `submitted_by` (`submitted_by`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priorities` (
  `priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `response_time_hrs` int(11) DEFAULT 0,
  `resolution_time_hrs` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  `mts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,'Critical',2,6,1,'2025-10-14 09:56:23','2025-10-27 12:11:27'),(2,'High',4,12,1,'2025-10-14 09:56:23','2025-10-27 12:11:30'),(3,'Medium',8,24,1,'2025-10-14 09:56:23','2025-10-27 12:11:23'),(4,'Low',12,48,1,'2025-10-14 09:56:23','2025-10-14 09:58:17'),(5,'aaa',2,4,0,'2025-10-17 11:38:52','2025-10-17 11:53:29');
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  `mts` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Full access to system settings, users, and ticket management.',1,'2025-10-14 09:44:59','2025-10-14 09:44:59'),(2,'Technician','Handles assigned tickets within their department.',1,'2025-10-14 09:44:59','2025-10-14 09:44:59'),(3,'Customer','Can create and track their own tickets.',1,'2025-10-14 09:44:59','2025-10-14 09:44:59'),(4,'Manager','Can view departmental tickets, SLAs, and reports.',1,'2025-10-14 09:44:59','2025-10-14 09:44:59');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sla_matrix`
--

DROP TABLE IF EXISTS `sla_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sla_matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `response_time_hrs` int(11) DEFAULT NULL,
  `resolution_time_hrs` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `priority_id` (`priority_id`),
  CONSTRAINT `sla_matrix_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `ticket_categories` (`ticket_category_id`),
  CONSTRAINT `sla_matrix_ibfk_2` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`priority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sla_matrix`
--

LOCK TABLES `sla_matrix` WRITE;
/*!40000 ALTER TABLE `sla_matrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `sla_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_assignments`
--

DROP TABLE IF EXISTS `ticket_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_assignments` (
  `ticket_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT current_timestamp(),
  `remarks` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  `mts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ticket_assignment_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `assigned_by` (`assigned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_assignments`
--

LOCK TABLES `ticket_assignments` WRITE;
/*!40000 ALTER TABLE `ticket_assignments` DISABLE KEYS */;
INSERT INTO `ticket_assignments` VALUES (1,1,3,92,NULL,'',1,'2025-10-24 04:41:03','2025-10-24 04:41:41'),(2,2,3,11,NULL,'',1,'2025-10-24 10:18:10','2025-10-30 09:08:42'),(3,3,3,84,'2025-10-27 08:55:06','',1,'2025-10-27 08:55:06','2025-10-27 08:55:06'),(4,4,2,61,NULL,'',1,'2025-10-27 09:31:47','2025-10-30 09:23:31'),(12,14,3,57,NULL,'Without charger laptop not working.',1,'2025-10-27 13:01:46','2025-10-30 05:07:11'),(17,19,3,3,NULL,'test',1,'2025-10-29 08:05:08','2025-10-29 10:55:39');
/*!40000 ALTER TABLE `ticket_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_attachments`
--

DROP TABLE IF EXISTS `ticket_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_attachments` (
  `ticket_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `ticket_conversation_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`ticket_attachment_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `conversation_id` (`ticket_conversation_id`),
  KEY `uploaded_by` (`uploaded_by`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachments`
--

LOCK TABLES `ticket_attachments` WRITE;
/*!40000 ALTER TABLE `ticket_attachments` DISABLE KEYS */;
INSERT INTO `ticket_attachments` VALUES (1,1,NULL,'uploads/ticket_1_1761801093432.pdf',92,'2025-10-24 10:11:03'),(2,2,NULL,'uploads/ticket_2_1761815322720.pdf',11,'2025-10-24 15:48:10'),(3,3,NULL,'uploads/ticket_3_1761555306532.pdf',84,'2025-10-27 14:25:06'),(4,4,NULL,'uploads/ticket_4_1761816211850.pdf',61,'2025-10-27 15:01:47'),(14,14,NULL,'uploads/ticket_14_1761800831024.pdf',57,'2025-10-27 18:31:46'),(19,19,NULL,'uploads/ticket_19_1761735339760.pdf',3,'2025-10-29 13:35:08');
/*!40000 ALTER TABLE `ticket_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_categories`
--

DROP TABLE IF EXISTS `ticket_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_categories` (
  `ticket_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_category` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `sla_hours` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  `mts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ticket_category_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_categories`
--

LOCK TABLES `ticket_categories` WRITE;
/*!40000 ALTER TABLE `ticket_categories` DISABLE KEYS */;
INSERT INTO `ticket_categories` VALUES (1,'Hardware & Infrastructure','Desktop / Laptop Issues',1,3,8,'Issues related to desktop or laptop hardware.',1,'2025-10-14 17:24:43','2025-10-27 10:55:20'),(2,'Hardware & Infrastructure','Printer / Scanner / Peripheral',1,3,8,'Peripheral device connectivity and performance issues.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(3,'Hardware & Infrastructure','Network Switch / Router / Access Point',1,3,8,'Networking device configuration or connectivity issues.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(4,'Hardware & Infrastructure','Server Hardware (Physical)',1,3,8,'Server hardware installation or maintenance issues.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(5,'Hardware & Infrastructure','Storage / NAS / SAN Installation',1,3,8,'Storage or NAS/SAN setup and troubleshooting.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(6,'Hardware & Infrastructure','UPS / Power-Related Issue',1,3,8,'Uninterrupted Power Supply and electrical issues.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(7,'Hardware & Infrastructure','Hardware Procurement / AMC Request',1,3,8,'Procurement or maintenance contract related request.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(8,'Server & Virtualization','New Server Setup / Implementation',1,3,8,'Setup or deploy new physical/virtual servers.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(9,'Server & Virtualization','Server Configuration Change',1,3,8,'Server parameter or settings modification request.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(10,'Server & Virtualization','Virtual Machine (VM) Issue',1,3,8,'Virtual machine performance or configuration issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(11,'Server & Virtualization','Hypervisor (VMware, Hyper-V) Issue',1,3,8,'Hypervisor related configuration or crash.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(12,'Server & Virtualization','Active Directory / Domain Controller',1,3,8,'Domain or AD issue handling.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(13,'Server & Virtualization','DNS / DHCP Configuration',1,3,8,'Network name resolution or IP allocation setup.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(14,'Server & Virtualization','Windows / Linux Server Crash or Performance Issue',1,3,8,'OS-level crash, hang, or performance degradation.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(15,'Firewall & Network Security','Firewall Installation / Configuration',1,3,8,'Firewall deployment or configuration.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(16,'Firewall & Network Security','VPN Setup / Troubleshooting',1,3,8,'Remote connectivity issue or setup.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(17,'Firewall & Network Security','Policy / Rule Update Request',1,3,8,'Change firewall or security rule policy.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(18,'Firewall & Network Security','Internet Connectivity Issue',1,3,8,'Internet or WAN connection failure.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(19,'Firewall & Network Security','Port Blocking / Opening',1,3,8,'Network port access modification.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(20,'Firewall & Network Security','Intrusion Detection / Prevention Alert',1,3,8,'IDS/IPS or alert-based ticket.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(21,'Firewall & Network Security','Network Performance Issue',1,3,8,'Throughput or latency degradation.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(22,'Endpoint Security & Management','Antivirus / EDR / XDR Issue',1,3,8,'Endpoint security or antivirus malfunction.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(23,'Endpoint Security & Management','Endpoint Agent Installation / Update',1,3,8,'Install or update endpoint client.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(24,'Endpoint Security & Management','Endpoint Policy Enforcement',1,3,8,'Policy configuration issue at endpoint.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(25,'Endpoint Security & Management','USB / Device Control Issue',1,3,8,'Device restriction or usage issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(26,'Endpoint Security & Management','Remote Monitoring Issue',1,3,8,'RMM or agent communication problem.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(27,'Endpoint Security & Management','Endpoint Compliance Report Request',1,3,8,'Report generation or compliance review.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(28,'Backup & Disaster Recovery (DR)','Backup Configuration / New Policy Setup',1,3,8,'Backup software setup or scheduling.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(29,'Backup & Disaster Recovery (DR)','Backup Failure / Alert',1,3,8,'Backup process failed or alert received.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(30,'Backup & Disaster Recovery (DR)','Restore Request',1,3,8,'File or system restore needed.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(31,'Backup & Disaster Recovery (DR)','DR Simulation / Testing',1,3,8,'Testing disaster recovery plan.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(32,'Backup & Disaster Recovery (DR)','Cloud Storage Quota Issue',1,3,8,'Quota exceeded on backup storage.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(33,'Backup & Disaster Recovery (DR)','Immutable Storage Configuration',1,3,8,'WORM/immutable configuration request.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(34,'Backup & Disaster Recovery (DR)','Acronis / Veeam / Other Platform Issue',1,3,8,'Vendor-specific backup platform issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(35,'Email & Collaboration Platforms','User Creation / Deletion',1,3,8,'Add/remove mailbox users.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(36,'Email & Collaboration Platforms','License Activation / Assignment',1,3,8,'Activate or assign license.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(37,'Email & Collaboration Platforms','Mail Delivery Issue (Send/Receive)',1,3,8,'Email bounce or delay troubleshooting.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(38,'Email & Collaboration Platforms','Mailbox Quota / Storage Issue',1,3,8,'Exceeded or corrupted mailbox quota.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(39,'Email & Collaboration Platforms','Outlook / Gmail Sync Issue',1,3,8,'Sync or client configuration issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(40,'Email & Collaboration Platforms','Domain / MX Record Configuration',1,3,8,'DNS-level mail setup issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(41,'Email & Collaboration Platforms','Shared Drive / SharePoint / Teams Access',1,3,8,'Collaboration platform access issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(42,'Email & Collaboration Platforms','Calendar / Contacts / Group Policy Issue',1,3,8,'Calendar or policy sync issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(43,'Data Protection & Compliance','Data Leak Prevention (DLP) Setup / Alert',1,3,8,'DLP system configuration or alert handling.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(44,'Data Protection & Compliance','Access Control Configuration',1,3,8,'Permissions or access review.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(45,'Data Protection & Compliance','Compliance Audit Request',1,3,8,'Compliance or regulatory audit support.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(46,'Data Protection & Compliance','Policy Review / Update',1,3,8,'Security or access policy changes.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(47,'Data Protection & Compliance','Data Encryption / Key Management',1,3,8,'Encryption setup or rotation.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(48,'Data Protection & Compliance','Security Awareness / Training Request',1,3,8,'Security training or session scheduling.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(49,'Software Development & Application Support','New Feature Request',2,3,8,'Request for new app feature.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(50,'Software Development & Application Support','Bug / Error Report',2,3,8,'Report software defect or error.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(51,'Software Development & Application Support','UI / UX Issue',2,3,8,'Design or interface issue.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(52,'Software Development & Application Support','API Integration / Failure',2,3,8,'Integration issue with API.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(53,'Software Development & Application Support','Database Connectivity Issue',2,3,8,'App unable to connect to database.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(54,'Software Development & Application Support','Performance Optimization Request',2,3,8,'Enhancement of speed or efficiency.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(55,'Software Development & Application Support','Deployment / Release Issue',2,3,8,'Build or release failure.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(56,'Software Development & Application Support','Customization / Change Request',2,3,8,'Custom feature or config change.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(57,'Consulting & Professional Services','IT Infrastructure Assessment',3,3,8,'Evaluate IT setup for optimization.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(58,'Consulting & Professional Services','Cybersecurity Audit / VAPT',3,3,8,'Vulnerability or penetration testing.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(59,'Consulting & Professional Services','Cloud Migration Planning',3,3,8,'Migration strategy or roadmap creation.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(60,'Consulting & Professional Services','Licensing Consultation (MS/Acronis/Google)',3,3,8,'Consult on vendor licensing.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(61,'Consulting & Professional Services','Policy Drafting / Review',3,3,8,'Create or review IT/security policy.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(62,'Consulting & Professional Services','Project Implementation Support',3,3,8,'Assist project execution.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(63,'General Support & Administrative','Account / Access Request',1,3,8,'User access or account setup.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(64,'General Support & Administrative','Password Reset',1,3,8,'Forgotten password or locked account.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(65,'General Support & Administrative','Asset Allocation / Reassignment',1,3,8,'Device or hardware assignment change.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(66,'General Support & Administrative','SLA Query / Escalation',1,3,8,'Inquiry or escalation about SLA.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(67,'General Support & Administrative','Feedback / Suggestion / Complaint',1,3,8,'User suggestion or complaint.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08'),(68,'General Support & Administrative','Billing / Invoicing Issue',1,3,8,'Invoice or billing discrepancy.',1,'2025-10-14 17:24:43','2025-10-14 17:25:08');
/*!40000 ALTER TABLE `ticket_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_conversations`
--

DROP TABLE IF EXISTS `ticket_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_conversations` (
  `ticket_conversation_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`ticket_conversation_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_conversations`
--

LOCK TABLES `ticket_conversations` WRITE;
/*!40000 ALTER TABLE `ticket_conversations` DISABLE KEYS */;
INSERT INTO `ticket_conversations` VALUES (1,1,92,'Email received on 17th October 2025.','2025-10-24 10:11:03'),(2,1,92,'Email received on 17th October 2025.','2025-10-24 10:11:41'),(3,2,11,'Office 45 - Printer Cartridge is out. Please refill & confirm.','2025-10-24 15:48:10'),(4,3,84,'We required PAN of our old employees','2025-10-27 14:25:06'),(5,4,61,'Email dated 27/10/2025 - Courier to Chennai','2025-10-27 15:01:47'),(14,14,57,'Can you please do the needful.','2025-10-27 18:31:46'),(22,19,3,'test','2025-10-29 13:35:08'),(23,19,3,'test','2025-10-29 16:25:39'),(24,14,3,'Laptop battery has been replaced.','2025-10-30 10:37:11'),(25,1,3,'New Laptop has been dispatch and user received new Laptop.','2025-10-30 10:41:33'),(26,2,3,'Office 45 - Printer Cartridge is out. Please refill & confirm.','2025-10-30 14:38:42'),(27,4,2,'Email dated 27/10/2025 - Courier to Chennai','2025-10-30 14:53:31');
/*!40000 ALTER TABLE `ticket_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_status_history`
--

DROP TABLE IF EXISTS `ticket_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_status_history` (
  `ticket_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `old_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_at` datetime DEFAULT current_timestamp(),
  `remarks` varchar(255) DEFAULT NULL,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ticket_status_history_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `changed_by` (`changed_by`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_status_history`
--

LOCK TABLES `ticket_status_history` WRITE;
/*!40000 ALTER TABLE `ticket_status_history` DISABLE KEYS */;
INSERT INTO `ticket_status_history` VALUES (1,1,NULL,'Open',92,'2025-10-24 10:11:03','','2025-10-24 04:41:03'),(2,1,'Open','Open',92,'2025-10-24 10:11:41','','2025-10-24 04:41:41'),(3,2,NULL,'Open',11,'2025-10-24 15:48:10','','2025-10-24 10:18:10'),(4,3,NULL,'Open',84,'2025-10-27 14:25:06','','2025-10-27 08:55:06'),(5,4,NULL,'Open',61,'2025-10-27 15:01:47','','2025-10-27 09:31:47'),(14,14,NULL,'Open',57,'2025-10-27 18:31:46','Without charger laptop not working.','2025-10-27 13:01:46'),(22,19,NULL,'Open',3,'2025-10-29 13:35:08','test','2025-10-29 08:05:08'),(23,19,'Open','Closed',3,'2025-10-29 16:25:39','test','2025-10-29 10:55:39'),(24,14,'Open','Resolved',3,'2025-10-30 10:37:11','Without charger laptop not working.','2025-10-30 05:07:11'),(25,1,'Open','Resolved',3,'2025-10-30 10:41:33','','2025-10-30 05:11:33'),(26,2,'Open','In Progress',3,'2025-10-30 14:38:42','','2025-10-30 09:08:42'),(27,4,'Open','Resolved',2,'2025-10-30 14:53:31','','2025-10-30 09:23:31');
/*!40000 ALTER TABLE `ticket_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_no` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticket_category_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ticket_status` enum('Open','In Progress','On Hold','Resolved','Closed','Accepted') DEFAULT 'Open',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `closed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  UNIQUE KEY `ticket_no` (`ticket_no`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`ticket_category_id`),
  KEY `priority_id` (`priority_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`ticket_category_id`) REFERENCES `ticket_categories` (`ticket_category_id`),
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`priority_id`),
  CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'TCK-1',92,1,4,1,'17/10/25 - Laptop - External Damage -  Karthik Menon x Venkatesh','New Laptop has been dispatch and user received new Laptop.','Resolved','2025-10-24 10:11:02','2025-10-30 10:41:33',NULL),(2,'TCK-2',11,2,4,1,'Cartridge','Office 45 - Printer Cartridge is out. Please refill & confirm.','In Progress','2025-10-24 15:48:10','2025-10-30 14:38:42',NULL),(3,'TCK-3',84,53,4,1,'Required saral sever access','We required PAN of our old employees','Open','2025-10-27 14:25:06','2025-10-27 14:25:06',NULL),(4,'TCK-4',61,7,4,1,'Wireless - Mouse','Email dated 27/10/2025 - Courier to Chennai','Resolved','2025-10-27 15:01:47','2025-10-30 14:53:31',NULL),(14,'TCK-12',57,1,2,1,'Laptop battery replace','Laptop battery has been replaced.','Resolved','2025-10-27 18:31:46','2025-10-30 10:37:11',NULL),(19,'TCK-13',3,29,4,1,'test','test','Closed','2025-10-29 13:35:08','2025-10-29 16:25:39',NULL);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `untitled`
--

DROP TABLE IF EXISTS `untitled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `untitled` (
  `untitled_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `extenstions` varchar(100) DEFAULT NULL,
  `cts` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`untitled_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `untitled`
--

LOCK TABLES `untitled` WRITE;
/*!40000 ALTER TABLE `untitled` DISABLE KEYS */;
INSERT INTO `untitled` VALUES (1,1,'$2b$10$s3iIilS8eJV9bls7QJf/w.r89.JFXyUkITpaCwI2ZRb4d.fX0/2iO','2025-10-22 11:33:01'),(2,2,'$2b$10$qAyFu8u3JuWH0ymB/utghOfFW1Vg6xYQykGDOGxov4FoSj.RhqnTy','2025-10-22 11:37:44'),(3,3,'$2b$10$8/zm0Xv2UnsIjWFmdIygueT7I2WBHU8mNkTypk6twAD6LsPxIiD0u','2025-10-22 12:05:27'),(4,4,'$2b$10$Il8EoCaxrq8aP0DGJdpDkuKKUtln7GOEw0NUAh5SnEMOZIA7p7Aw6','2025-10-22 12:06:55'),(5,5,'$2b$10$9UhGmBxSwHRNpXX1aedNFOO3A4fiKMOg7fbHp1cvy4eoEZEaM3Iqu','2025-10-22 12:08:28'),(6,6,'$2b$10$ZOYzgzqwCImb6OqWN.GE2OodJgEkxHJ1aX2h8ZMK.lXA/.VTSpFK.','2025-10-22 12:09:01'),(7,7,'$2b$10$.7djPaAxQpFOKTVhS.O2auXpi0p1pxjeTnUqk5RQkI87IuMSv15Xu','2025-10-22 12:09:52'),(8,8,'$2b$10$0yZzenckRXAuOr0W5Oo4ke4wsWisPjsw9xon0RgcyIBxo2Z/KCNGq','2025-10-22 12:10:52'),(9,9,'$2b$10$D9Pjimrx4.yoLKi98j8/PuYTFK18P5.8/ksBnGIYkMhc87X9kutXK','2025-10-22 12:13:15'),(10,10,'$2b$10$UPokVg5KWtRVG6isibse9.9N90tgoh58OWI7Qsw9MvICjIjgmgz3W','2025-10-22 12:14:11'),(11,11,'$2b$10$f4RyvMTa/CnKKUsQ8voE/eKL06Yd.SKclZB/XhNU0nQb7og4N6YqK','2025-10-22 12:14:55'),(12,12,'$2b$10$uLhHLuR71OJVBwdYywJ.dOWHC9OgTA4DGXbSjinxUfekGZbX8HPqa','2025-10-22 12:16:28'),(13,13,'$2b$10$72/TWWapE7t9jNymCW46AuZj4FrexpsmOudLg5/W0qjDiBiQ87//i','2025-10-22 12:17:15'),(14,14,'$2b$10$GNlnF6ityBPNGnfKQNRLlODh3fnACunx8u3b3fn8vNfRL3ipZjPOO','2025-10-22 12:17:55'),(15,15,'$2b$10$TaDwCs8kGKe91t4MRJZ0Yu2rhoUbIXXWCOOk/2MvQl2j.DmS5cdZa','2025-10-22 12:19:53'),(16,16,'$2b$10$QVhBhIFVfNs5dNOdtnvK/O9t9mmgl7.NGBX8/768rSF.stoaL1Y0K','2025-10-22 12:21:07'),(17,17,'$2b$10$fzbh7gTnc/963eGV2uMhMu8e9Ys6btrepTewcJER9iSBhkEg7aMMS','2025-10-22 12:22:16'),(18,18,'$2b$10$HF16CzuL7/.p49z3PD9OKu0zJRlZxXT6vx0gpgRDBb4CScBe1/g/e','2025-10-22 12:22:48'),(19,19,'$2b$10$3okGokpivIwjsz/G8Gxe0OLm04QwLDeMejrvDNkH/eOs4rv1GVmB6','2025-10-22 12:23:35'),(20,20,'$2b$10$0THs82iN.g5GiREEitqsYeDt7vcjf4WKbPEt3DilBg7wF8F712ngK','2025-10-22 12:24:05'),(21,21,'$2b$10$ovb8cX0d6clDX/iz2TvtyexJUqejIY7p/.EZPuqXDJCHWwxYRPUim','2025-10-22 12:24:46'),(22,22,'$2b$10$B7.t0v.CbNwKwU.1V5CySOHboJeJLqEM4K83DbMK2FL5PUGU/M3P6','2025-10-22 12:26:36'),(23,23,'$2b$10$L9BUhBssiA3sYRHajVchcuFL2w6VdA5ximld/hUdbd2GChcv8MpG2','2025-10-22 12:27:09'),(24,24,'$2b$10$zlGIQw0wOFMQnYFFQigE8eh.KgPgJh.UKVnYKcKApxDdu7NL8fwWO','2025-10-22 12:27:38'),(25,25,'$2b$10$D0EWRcqyIEp15gi5HPYHDeUjPA1Z.bwWvmKBbbbcZ53296XUkSQEe','2025-10-22 12:28:19'),(26,26,'$2b$10$uYl0MJeyEnYWAg6ndS.cm.JFVimQMym63hYWS9pHOvLJwaSqe7fVS','2025-10-22 12:28:59'),(27,27,'$2b$10$y7PeQEDU5UiUAORfnmAlaOrC/stkiZSm4x4bGY2705FLgzAP.yBhi','2025-10-22 12:30:14'),(28,28,'$2b$10$e8MGsmiEBt0e/m.r8SXhIO7Z09t32q6cOqRPz2h/JhSXGCSU4z/TS','2025-10-22 12:31:11'),(29,29,'$2b$10$T99u9o4bdn28AOJxmy9Wc.luvNBPIhF76sl3AjVXGQJCzO./3PBba','2025-10-22 12:31:57'),(30,30,'$2b$10$0EXFoNbbSCaB20zDS5YmMumBV.VWih73XXK9I/fUUDdH4isIOCtvS','2025-10-22 12:32:35'),(31,31,'$2b$10$ZD7xhWL7XJZwmvh5xXukU.2t7x8oQrOhQmnJmXcrDcWkuV/xYbHvS','2025-10-22 12:33:07'),(32,32,'$2b$10$B/bUDkR/FobRfzmqGWX1e.Fqaixl6dK.oKCQBOpJYg7n.oCo6ZCcG','2025-10-22 12:33:41'),(33,33,'$2b$10$duymi8KgXRTuaAdFpJ0d3OvDrKFhT7kEDYFGV0sPBAAGzBfnx8YxG','2025-10-22 12:34:50'),(34,34,'$2b$10$blrIkRAaLQp3/ONBtsRzy.EPvoOBgMzrs7GMGOOec/NNfava9tdP2','2025-10-22 12:35:34'),(35,35,'$2b$10$LrTIgtqq3bCQPpQQ3iqCHuLpco0YKlbVW3KINAbr6S7e5cBjuSkva','2025-10-22 12:36:09'),(36,36,'$2b$10$GjMEUGEMMTmSj5kv.hkJhOrXdIaXxDoE7XPElpLX/mJ2MyjOoCjUG','2025-10-22 12:36:58'),(37,37,'$2b$10$s3NhqbFbf7CmpOBYKWDI.eGCPJUqY7sVulWuENlOqZL/fTXH77ELO','2025-10-22 12:37:47'),(38,38,'$2b$10$D9xEZOW5I7OeprcinEc1dew9b4eTqfpqg.JOX3HzIm2O34xmIb7AO','2025-10-22 12:38:16'),(39,39,'$2b$10$YdH4BUFvCnPuQ8M2nV0cbuXg7ocCM4fxz5hVmafvZPs2Uf3fh7cFO','2025-10-22 12:38:45'),(40,40,'$2b$10$RbRrlTOP8pFSd8NZIVIKwOzoaT30bNESkaKRIOf1aVCPuUkYobsX6','2025-10-22 12:39:16'),(41,41,'$2b$10$GSQNOXHooXIwHqQp/F6xJemga0R0xVV8jZk9b.1DsD51VbkJHbSD6','2025-10-22 12:39:45'),(42,42,'$2b$10$crRF6WVqkczpMUe53kLHsOQ.OnfFkQ6tG4gznx4cE4kBbUreNdRT.','2025-10-22 12:40:52'),(43,43,'$2b$10$mNtL.Fa4L9buNaXXOOyBBe0sSs.x3YsoHlK6QLnlGsc0NgIlmTOCe','2025-10-22 12:41:23'),(44,44,'$2b$10$WCEMPKtRCmHxo4YysAqm8OwI0HKUMD7pEssQOd9v0TlztTSmz4tdq','2025-10-22 12:42:16'),(45,45,'$2b$10$1H.A0HKn5nBrP/0F0NNLGOkCH9XUpyofwz2kx4iGDQUnm6BWtmLPC','2025-10-22 12:42:42'),(46,46,'$2b$10$imuStWqIg31.mJ52JZZfW.AsU.0tn1lcg/XJaKCXPEuAhi5icn7zi','2025-10-22 12:43:09'),(47,47,'$2b$10$ksSiCO/rmdwT1z.L42sgve2f0Sni9qRQRf5csQH048ChQh/NcnRoG','2025-10-22 12:43:41'),(48,48,'$2b$10$jSwjdnq6KlBDratDLmFN2uiqyaoxglyezOicfY68gs8y9j/Fj5AIW','2025-10-22 12:44:09'),(49,49,'$2b$10$NUCNi92mE8XuFBxXux4d3u7If76U1nwUDS1Lxj3woM5y0/kOOo.P.','2025-10-22 12:45:21'),(50,50,'$2b$10$y/Uta4SoGCZ1mq3e2Xg0HOHdcPUK.pMcbwhAlfvDkNCad77b45dSm','2025-10-22 12:46:24'),(51,51,'$2b$10$rrwfldXqVYNbhqQdfnAXEeLZaZav7g.tb0ItPB/4.CEXrBr1aL4nu','2025-10-22 12:47:01'),(52,52,'$2b$10$cvU33d60BfNmJxjorrVEhOxSDwv5hnBoZCZHFwYofk0dPOz4NXU2e','2025-10-22 12:47:49'),(53,53,'$2b$10$siWurbe1..0QZu8cpRLhQ.nKnfxbrw/ZlOL2HnavouzMS45dJVv4O','2025-10-22 12:50:31'),(54,54,'$2b$10$/Vcyy9jrX5U.fsKQirkkAOtchxPERFbRLAahCzybomIFF9wdfQP3S','2025-10-22 12:50:58'),(55,55,'$2b$10$bEEXWY6sPs4psLYo0PezvOE/135BlcWrZ4vOKxHv/OeRlyH9yn4Sm','2025-10-22 12:51:27'),(56,56,'$2b$10$XJw/R9fJUb7yh8F7uX1I3eYHOlRFbqXo/rzGSVJ3IphoGaudekuwe','2025-10-22 12:52:12'),(57,57,'$2b$10$bVHryFa54KdLPb2Dgp/eZej5WMy.VSODcGJm/EHRurGOxp9FSqpHC','2025-10-22 12:52:45'),(58,58,'$2b$10$87jmJZOU0eHbruZq37o0EutaC9EwzEddn6EZXN0K6pKo./OdpuS1u','2025-10-22 12:53:13'),(59,59,'$2b$10$x5ZPix37UBbTaj63YuFkdeEbQItPI3xGnH5DsBT/eW6afS2qlUofS','2025-10-22 12:53:46'),(60,60,'$2b$10$Ncrox9z9LZWwpQTKWaa7mu5unV2Oi/CZfq.1PfP7qNIhIbN73FcXi','2025-10-22 12:55:11'),(61,61,'$2b$10$ZzU1.qeyGeGNOul.kPcSbOzcP0HN08tFLW8gufmCKGjAmdLkJzBLe','2025-10-22 12:55:54'),(62,62,'$2b$10$I3ir4rIL6yvjopwtfN4gMeoOqddfOGFPslKf52kbM0kMirszX6KGa','2025-10-22 12:56:24'),(63,63,'$2b$10$G5ij.uGubikIAYHIPGEysu6hVQpivDhr.MWKo1BbDBAfnj0YR2RlC','2025-10-22 12:56:54'),(64,64,'$2b$10$1/OLxdTBW0CWCW8hHO1O7uln92ak9Evik/u//U5dECBuORUIIoLsC','2025-10-22 12:57:25'),(65,65,'$2b$10$1Sa/n8iqnZPtWzdLHmBbLe71S.yE7Ehf782BLWHeQX2/jEQmeVbmO','2025-10-22 12:58:34'),(66,66,'$2b$10$GGQMUn1l4W.C3lyggPVfRunKxXsXr1Kvb6xbfJVjeSE0wqdQcABxK','2025-10-22 12:59:03'),(67,67,'$2b$10$3l9oYDiXA0D6qUSK.9sOiOA3KI0f9ZxNpE7H0g0QfWLxORxaKvv7y','2025-10-22 12:59:30'),(68,68,'$2b$10$lOYAHi6dvYakWixEFAJTFePNOwXv4UvFLXOynFM1Qx7e6upmtid2u','2025-10-22 12:59:56'),(69,69,'$2b$10$61TvdQdms65OOW7rficX6.1hUVlczsZmxnLwaEGFI8jGHq4ZOlWY.','2025-10-22 13:00:25'),(70,70,'$2b$10$1xjBOPGqRp4mqIPJU2MJruRhe5/j4b.z0KWfc6/UL5vUurzIWdlIC','2025-10-22 13:00:51'),(71,71,'$2b$10$.rIxZ/AKq/GnLIcgc2EHYOp/v/9x0WtqtPYrAAQ580XCA/XVrQry2','2025-10-22 13:01:21'),(72,72,'$2b$10$a/PEoT5W1tMw.imjFLc7UOS3uQ37HuZrsMQryk49.5oiefzwMpeb6','2025-10-22 13:01:51'),(73,73,'$2b$10$GuaWSsiYCwqcs579byxb4u.sn/OX30MNTzrbkqWkl/EPEegpGC512','2025-10-22 13:02:27'),(74,74,'$2b$10$/ypxuvUi6MC7Nx5vh5qfrep59d.kCJaABGaDecUdXsjFepXcJCZdq','2025-10-22 13:02:57'),(75,75,'$2b$10$1mN4STOoVVw0/SzzCzhx..Kdl.hTI8KS9ln4Pe9gCCw17ZYqxyJ5C','2025-10-22 13:03:25'),(76,76,'$2b$10$zmHd0GttEtGSKItFMgl0aePADh.a3mfZXaaAhE5d2U/haFsIkoEI.','2025-10-22 13:03:53'),(77,77,'$2b$10$5gcoaG4Mmv4E31A6FeuwL.ZvCvPXok08L6iRLTyHBMQ1zMA2VtktW','2025-10-22 13:04:18'),(78,78,'$2b$10$icX4TLkFpV1fw.I.fkeYeee8QaWnXwKhz0U3qEbIJSWUftpe6PjLK','2025-10-22 13:04:48'),(79,79,'$2b$10$vULphONDJJ8k48EcWDa5wuqQ3Mtnk3MjlUadhFLV5PURXAhe.BdcG','2025-10-22 13:05:19'),(80,80,'$2b$10$vTdXy2EciD/WmqUq9VT/IO9zYTtnKCSZ4QiqTVkwG3grxBq0dDTjK','2025-10-22 13:07:29'),(81,81,'$2b$10$L2.dfy.mJruXBzkb1Ht6TerlY72.WiG8XvwUAoxJO1YPP/pHqHUta','2025-10-22 13:08:29'),(82,82,'$2b$10$8GLmB59QTxFQIdEyfvpz0.S96zg3X2cLVPuMYqXixGuKOWIhZEyL2','2025-10-22 13:09:04'),(83,83,'$2b$10$MI.pNt1Oq/x19TEHm.LbW.VNObZv266X0AoIyTrInTBiWYEc0Df/i','2025-10-22 13:09:31'),(84,84,'$2b$10$ndfEKgdoFBV3tUvW9HujEeXQdVTZcVQNzRIvN4y21spsy0q17ixze','2025-10-22 13:10:01'),(85,85,'$2b$10$K58aDSng07.B2nCFN4lsMOxxEtf6fvtAQrMHV7kb2TKyNnErrv2yq','2025-10-22 13:10:30'),(86,86,'$2b$10$PjD9YhEme/k5JJyg.VfgseFUk5cFNFMfBNG1kAgUZd8QZAuow66Xy','2025-10-22 13:11:00'),(87,87,'$2b$10$9iRTx/DSxcrVbrlnVU8nBe4KGtqcahC.zzWr8ZuiLK03/qPwnQFzK','2025-10-22 13:11:26'),(88,88,'$2b$10$wd/Nu/rvJ51pjBeKV1e7F.rhroofmVR48NUO1PQBZcfdSRAqTVzrK','2025-10-22 13:11:55'),(89,89,'$2b$10$ZsH0Ya6Tc2aTvGNfyHG94uXZyF1K794STOqbyyasivtasRuLGTjKa','2025-10-22 13:13:06'),(90,90,'$2b$10$SS19StcEVQPIg0dwhg5/Ve6bkU2BFVHiLNKBw7Q5VLgxvQ.dT3Tr6','2025-10-22 13:13:40'),(91,91,'$2b$10$i2mm2ZTvePL/PWY9WCIsj.PU21LyH72lGjHsYytVTvCYhcOe62wL6','2025-10-22 13:14:07'),(92,92,'$2b$10$FjZRr7gQBNlmuByG.e7kse7nY.O5p732wKQY6EXhKje80ueVzbuei','2025-10-22 13:14:34'),(93,93,'$2b$10$GM7MTcC3O.SyhNLFNWlcyeIdHIdEaPa35QUiWKGR3wkTaKr3EWwu2','2025-10-27 12:46:37'),(94,94,'$2b$10$juCxjqytiI6islp08RFFseT9NGunAzJo88e1GVjs7APnYTtfM43vu','2025-10-28 03:57:54'),(95,95,'$2b$10$pczOO1dY8RMsBgGoFI2Xi.5ACsYA0KwDs.pJZkO1R5T9z8.xEHfBi','2025-10-28 03:58:48'),(96,96,'$2b$10$083NDAINURM/MKjMPuN9H.00zrveokFNyJX8PwpNYQU/NUtRXqUs6','2025-10-28 03:59:56');
/*!40000 ALTER TABLE `untitled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email_id`),
  KEY `role_id` (`role_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@dani.in','1234567890',1,1,1,'2025-10-22 17:03:01','2025-10-27 11:05:19'),(2,'Balkeshwar Pandey','balkeshwar.pandey@dani.in','1234567890',2,2,1,'2025-10-22 17:07:44','2025-10-28 17:48:24'),(3,'Chandan Gupta','itsupport@dani.in','1234567890',2,2,1,'2025-10-22 17:35:27','2025-10-28 17:48:29'),(4,'AbdulWaheed M S','abdul.waheed@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 17:36:55','2025-10-22 17:36:55'),(5,'Abhijeet Markad','abhijeet.markad@danisports.org','1234567890',3,3,1,'2025-10-22 17:38:28','2025-10-22 17:38:28'),(6,'Akansha Yadav','akansha.yadav@danisports.org','1234567890',3,3,1,'2025-10-22 17:39:01','2025-10-22 17:39:01'),(7,'Akash Lugun','akash.lugun@danisports.org','1234567890',3,3,1,'2025-10-22 17:39:52','2025-10-22 17:39:52'),(8,'Akhil Prakash','akhil.prakash@dani.in','1234567890',3,3,1,'2025-10-22 17:40:52','2025-10-22 17:40:52'),(9,'Aman Kumar Saw','aman.kumar@danisports.org','1234567890',3,3,1,'2025-10-22 17:43:15','2025-10-22 17:43:15'),(10,'Amit S. Kawoor','amit.kawoor@dani.in','1234567890',3,3,1,'2025-10-22 17:44:11','2025-10-22 17:44:11'),(11,'Aniketh Mendonca','aniketh.mendonca@danisports.org','1234567890',3,3,1,'2025-10-22 17:44:55','2025-10-22 17:44:55'),(12,'Anirudh Kandath','anirudh.kandath@danisports.org','1234567890',3,3,1,'2025-10-22 17:46:28','2025-10-22 17:46:28'),(13,'Anjali Chaudhary','anjali.chaudhary@danisports.org','1234567890',3,3,1,'2025-10-22 17:47:15','2025-10-22 17:47:15'),(14,'Ankit Bhatia','ankit.bhatia@danisports.org','1234567890',3,3,1,'2025-10-22 17:47:55','2025-10-22 17:47:55'),(15,'Ankit Savla','ankit.savla@dani.in','1234567890',3,3,1,'2025-10-22 17:49:53','2025-10-22 17:49:53'),(16,'Aradhana Singh','aradhana.singh@danisports.org','1234567890',3,3,1,'2025-10-22 17:51:07','2025-10-22 17:51:07'),(17,'Ashwini Suresh Jagdale','ashwini.jagdale@danisports.org','1234567890',3,3,1,'2025-10-22 17:52:16','2025-10-22 17:52:16'),(18,'Ayush Rabari','ayush.rabari@danisports.org','1234567890',3,3,1,'2025-10-22 17:52:48','2025-10-22 17:52:48'),(19,'Babu pandiyan','babu.pandian@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 17:53:35','2025-10-22 17:53:35'),(20,'Bharati Nagabhai Odedara','bharati.odedara@danisports.org','1234567890',3,3,1,'2025-10-22 17:54:05','2025-10-22 17:54:05'),(21,'Biju John','biju.john@dani.in','1234567890',3,3,1,'2025-10-22 17:54:46','2025-10-22 17:54:46'),(22,'Blas Iglesias Fernandez','blas.fernandez@danisports.org','1234567890',3,3,1,'2025-10-22 17:56:36','2025-10-22 17:56:36'),(23,'Cdr Rajesh Rajagopalan','rajesh.rajagopalan@danisports.org','1234567890',3,3,1,'2025-10-22 17:57:09','2025-10-22 17:57:09'),(24,'Celinda Pereira Estibeiro','celinda.pereira@dani.in','1234567890',3,3,1,'2025-10-22 17:57:38','2025-10-22 17:57:38'),(25,'Chaitanya Dabholkar','chaitanya.dabholkar@dani.in','1234567890',3,3,1,'2025-10-22 17:58:19','2025-10-22 17:58:19'),(26,'Charmi Jasmin Sanghvi','charmi.sanghvi@dani.in','1234567890',3,3,1,'2025-10-22 17:58:59','2025-10-22 17:58:59'),(27,'Ekansh Gupta','ekansh.gupta@dani.in','1234567890',3,3,1,'2025-10-22 18:00:14','2025-10-22 18:00:14'),(28,'Gaurav Gauriwan','gaurav.gauriwan@danisports.org','1234567890',3,3,1,'2025-10-22 18:01:11','2025-10-22 18:01:11'),(29,'Gulnaaz Syed','Gulnaaz.syed@dani.in','1234567890',3,3,1,'2025-10-22 18:01:57','2025-10-22 18:01:57'),(30,'Hardik Panchal','hardik.panchal@dani.in','1234567890',3,3,1,'2025-10-22 18:02:35','2025-10-22 18:02:35'),(31,'Hemanta Mahanta','hemanta.mahanta@danisports.org','1234567890',3,3,1,'2025-10-22 18:03:07','2025-10-22 18:03:07'),(32,'Himanshu Verma','himanshu.verma@danisports.org','1234567890',3,3,1,'2025-10-22 18:03:41','2025-10-22 18:03:41'),(33,'Imran Nadaph','imran.nadaph@danisports.org','1234567890',3,3,1,'2025-10-22 18:04:50','2025-10-22 18:04:50'),(34,'Ishwar Ravi','ishwar.ravi@dani.in','1234567890',3,3,1,'2025-10-22 18:05:34','2025-10-22 18:05:34'),(35,'Jatin Shah','jatin.shah@dani.in','1234567890',3,3,1,'2025-10-22 18:06:09','2025-10-22 18:06:09'),(36,'Jitesh Mishra','jitesh.mishra@dani.in','1234567890',3,3,1,'2025-10-22 18:06:58','2025-10-22 18:06:58'),(37,'Kamakshi Joshi','kamakshi.joshi@danisports.org','1234567890',3,3,1,'2025-10-22 18:07:47','2025-10-22 18:07:47'),(38,'Karthik Arumugam','Karthik.arumugam@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 18:08:16','2025-10-22 18:08:16'),(39,'Karthik Raghu Menon','karthik.menon@dani.in','1234567890',3,3,1,'2025-10-22 18:08:44','2025-10-22 18:08:44'),(40,'Kingshuk Roy','kingshuk.roy@danisports.org','1234567890',3,3,1,'2025-10-22 18:09:16','2025-10-22 18:09:16'),(41,'Kshitij Patil','kshitij.patil@danisports.org','1234567890',3,3,1,'2025-10-22 18:09:45','2025-10-22 18:09:45'),(42,'Liza Visaria','liza.visaria@dani.in','1234567890',3,3,1,'2025-10-22 18:10:52','2025-10-22 18:10:52'),(43,'Madhuri Hole','madhuri.hole@danisports.org','1234567890',3,3,1,'2025-10-22 18:11:23','2025-10-22 18:11:23'),(44,'Mahesh Parmar','mahesh.parmar@dani.in','1234567890',3,3,1,'2025-10-22 18:12:16','2025-10-22 18:12:16'),(45,'Mangesh Kadam','mangesh.kadam@danisports.org','1234567890',3,3,1,'2025-10-22 18:12:42','2025-10-22 18:12:42'),(46,'Manojkumar Chauhan','manoj.chauhan@danisports.org','1234567890',3,3,1,'2025-10-22 18:13:09','2025-10-22 18:13:09'),(47,'Mehul Kaushik','mehul.kaushik@dani.in','1234567890',3,3,1,'2025-10-22 18:13:41','2025-10-22 18:13:41'),(48,'Naman Soni','naman.soni@danisports.org','1234567890',3,3,1,'2025-10-22 18:14:09','2025-10-22 18:14:09'),(49,'Nandeeta Vengsarkar Wagh','nandeeta.vw@dani.in','1234567890',3,3,1,'2025-10-22 18:15:21','2025-10-22 18:15:21'),(50,'Navghan Thakor','navghan.thakor@danisports.org','1234567890',3,3,1,'2025-10-22 18:16:24','2025-10-22 18:16:24'),(51,'Neelakantan J','neel.j@dani.in','1234567890',3,3,1,'2025-10-22 18:17:01','2025-10-22 18:17:01'),(52,'Nikhil Pralhad Patil','nikhil.patil@dani.in','1234567890',3,3,1,'2025-10-22 18:17:49','2025-10-22 18:17:49'),(53,'Niladri Chowdhury','niladri.choudhury@danisports.org','1234567890',3,3,1,'2025-10-22 18:20:31','2025-10-22 18:20:31'),(54,'Nishaad Shah','nishaad.shah@dani.in','1234567890',3,3,1,'2025-10-22 18:20:58','2025-10-22 18:20:58'),(55,'Pandurang D. Baing','pandurang.b@dani.in','1234567890',3,3,1,'2025-10-22 18:21:26','2025-10-22 18:21:26'),(56,'Pankaj Rakhani','pankaj.rakhani@danisports.org','1234567890',3,3,1,'2025-10-22 18:22:12','2025-10-22 18:22:12'),(57,'Paresh Tandel','paresh.tandel@dani.in','1234567890',1,1,1,'2025-10-22 18:22:45','2025-10-27 11:05:33'),(58,'Parthiban M','kitmanager@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 18:23:13','2025-10-22 18:23:13'),(59,'Pooja Kotharee','pooja.kotharee@dani.in','1234567890',3,3,1,'2025-10-22 18:23:45','2025-10-22 18:23:45'),(60,'Pradeep Nadar','pradeep.nadar@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 18:25:11','2025-10-22 18:25:11'),(61,'Pranali Dinesh Doshi','pranali.doshi@dani.in','1234567890',3,3,1,'2025-10-22 18:25:54','2025-10-22 18:25:54'),(62,'Pratham Basu','pratham.basu@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 18:26:24','2025-10-22 18:26:24'),(63,'Pratik Manjare','pratik.manjare@danisports.org','1234567890',3,3,1,'2025-10-22 18:26:54','2025-10-22 18:26:54'),(64,'Pratiksha Chavan','pratiksha.chavan@dani.in','1234567890',3,3,1,'2025-10-22 18:27:25','2025-10-22 18:27:25'),(65,'Prerana Ramesh Meher.','prerana.meher@dani.in','1234567890',3,3,1,'2025-10-22 18:28:34','2025-10-22 18:28:34'),(66,'Priyansh Hirudkar','priyansh.hirudkar@danisports.org','1234567890',3,3,1,'2025-10-22 18:29:03','2025-10-22 18:29:03'),(67,'Rahul Vaid','rahul.vaid@dani.in','1234567890',3,3,1,'2025-10-22 18:29:30','2025-10-22 18:29:30'),(68,'Rajeev','rajeev@danisports.org','1234567890',3,3,1,'2025-10-22 18:29:56','2025-10-22 18:29:56'),(69,'Rakshita Tibrewal','rakshita.tibrewal@danisports.org','1234567890',3,3,1,'2025-10-22 18:30:25','2025-10-22 18:30:25'),(70,'Rinkoo Somani','rinkoo.somani@dani.in','1234567890',1,1,1,'2025-10-22 18:30:51','2025-10-27 11:05:43'),(71,'Rudrani Singh','rudrani.singh@danisports.org','1234567890',3,3,1,'2025-10-22 18:31:21','2025-10-22 18:31:21'),(72,'Rupal Maheshwari','rupal.maheshwari@dani.in','1234567890',3,3,1,'2025-10-22 18:31:51','2025-10-22 18:31:51'),(73,'Samarpana Vinod','samarpana.vinod@dani.in','1234567890',3,3,1,'2025-10-22 18:32:27','2025-10-22 18:32:27'),(74,'Sanjana Shah','sanjana.shah@dani.in','1234567890',3,3,1,'2025-10-22 18:32:57','2025-10-22 18:32:57'),(75,'Sanket Sanjay Chogale','sanket.chogale@dani.in','1234567890',3,3,1,'2025-10-22 18:33:25','2025-10-22 18:33:25'),(76,'Sarthak Bal','sarthak.bal@dani.in','1234567890',3,3,1,'2025-10-22 18:33:52','2025-10-22 18:33:52'),(77,'Shahnavaz Shekh','shahnavaz.shekh@danisports.org','1234567890',3,3,1,'2025-10-22 18:34:18','2025-10-22 18:34:18'),(78,'Shantanu Banerjee','Team.manager@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 18:34:48','2025-10-22 18:34:48'),(79,'Shreyansh Jain','shreyansh.jain@danisports.org','1234567890',3,3,1,'2025-10-22 18:35:18','2025-10-22 18:35:18'),(80,'Snehal Umesh Tandel','snehal.patil@dani.in','1234567890',3,3,1,'2025-10-22 18:37:29','2025-10-22 18:37:29'),(81,'Sumesh Skay','sumesh.skay@dani.in','1234567890',3,3,1,'2025-10-22 18:38:29','2025-10-22 18:38:29'),(82,'Tanay Behune','tanay.behune@dani.in','1234567890',3,3,1,'2025-10-22 18:39:04','2025-10-22 18:39:04'),(83,'Uma C Iyer','uma.iyer@dani.in','1234567890',3,3,1,'2025-10-22 18:39:31','2025-10-22 18:39:31'),(84,'Umesh Vasant Tandel','umesh.tandel@dani.in','1234567890',3,3,1,'2025-10-22 18:40:01','2025-10-22 18:40:01'),(85,'Varun Sharma','varun.sharma@danisports.org','1234567890',3,3,1,'2025-10-22 18:40:30','2025-10-22 18:40:30'),(86,'Vasimuddin Saiyad','vasimuddin.saiyad@danisports.org','1234567890',3,3,1,'2025-10-22 18:41:00','2025-10-22 18:41:00'),(87,'Venkatesh R','venkatesh.ravi@chennaiyinfc.com','1234567890',3,3,1,'2025-10-22 18:41:26','2025-10-22 18:41:26'),(88,'Vighnesh Chauhan','vighnesh.chauhan@dani.in','1234567890',3,3,1,'2025-10-22 18:41:55','2025-10-22 18:41:55'),(89,'Vijay Kumar','vijay.kumar@danisports.org','1234567890',3,3,1,'2025-10-22 18:43:06','2025-10-22 18:43:06'),(90,'Vijaya Kumar','vijay.k@dani.in','1234567890',3,3,1,'2025-10-22 18:43:39','2025-10-22 18:43:39'),(91,'Vinay Dahiya','vinay.dahiya@danisports.org','1234567890',3,3,1,'2025-10-22 18:44:07','2025-10-22 18:44:07'),(92,'Vrajesh Modi','vrajesh.modi@dani.in','1234567890',3,3,1,'2025-10-22 18:44:34','2025-10-22 18:44:34'),(93,'Keyur','Secretarial.compliance@dani.in','1234567890',1,1,1,'2025-10-27 18:16:37','2025-10-27 18:16:37'),(94,'usha','ushamyadav777@gmail.com','1234567890',2,2,1,'2025-10-28 09:27:54','2025-10-28 10:06:59'),(95,'rohit','rohitlandage86@gmail.com','1234567890',2,2,1,'2025-10-28 09:28:48','2025-10-28 10:06:47'),(96,'sushant','sushantsjamdade@gmail.com','1234567890',3,3,1,'2025-10-28 09:29:56','2025-10-28 09:29:56');
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

-- Dump completed on 2025-10-31 10:41:42
