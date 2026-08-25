-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: tecstaq
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country_code`
--

DROP TABLE IF EXISTS `country_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_code` (
  `code_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_code`
--

LOCK TABLES `country_code` WRITE;
/*!40000 ALTER TABLE `country_code` DISABLE KEYS */;
INSERT INTO `country_code` VALUES (1,'india',91,1,'2025-06-21 07:00:09','2025-06-23 06:23:46'),(2,'USA',1,1,'2025-06-21 07:00:09','2025-08-18 04:17:50');
/*!40000 ALTER TABLE `country_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `designation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emergency_email_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_code` int DEFAULT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emergency_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gst_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gst_doc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_doc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isPartner` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` int DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  KEY `designation_id` (`designation`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'11EVEN SPORTS PRIVATE LIMITED','Feeba Jain',NULL,'','',NULL,'8th FLOOR,85, MAKER CHAMBER III,223, NARIMAN POINT, Mumbai City, Maharashtra, 400021',NULL,NULL,'022-22047421\r\n','','27AAACZ8497P1Z5','','AAACZ8497P','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(2,'ACE COM SERVICES (OPC) PRIVATE LIMITED','',NULL,'','',NULL,'604,Aadi Aarambh Shivakanta, Ambernath (East) Dist. Thane -421501,',NULL,NULL,'','','27AAVCA9125G2Z8','','AAVCA9125G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(3,'ACE Software Solutions  (India) Pvt Ltd','',NULL,'','',NULL,'Unit No. 17 & 21, SDF - I, SEEPZ, SEZ,, Andheri (East) , Mumbai - 400096 , India',NULL,NULL,'','','27AADCA6067B1ZY','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(4,'Acronis Asia Pte Ltd','',NULL,'','',NULL,'8 Temasek Boulevard, #30-01/02, Suntec Tower 3, Singapore 038988, GST Registration Number: 200414350D',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(5,'ACRONIS INDIA PRIVATE LIMITED (S)','',NULL,'','',NULL,'G Block, C-25, Laxmi Tower, Bandra Road,, Behind ICICI Bank Ltd, Bandra East,, Mumbai, Mumbai Suburban, Maharashtra,400051',NULL,NULL,'','','27AAYCA7946G1ZX','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(6,'ACS System Solution','',NULL,'','',NULL,'111/9 , LGF , Kishangarh, Vasant Kunj, New Delhi, New Delhi Delhi 110070, India',NULL,NULL,'','','07ATFPK8300B1Z6','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(7,'ADANI GREEN ENERGY LIMITED','',NULL,'','',NULL,'AdaniCorporateHouse,Shantigram, Near Vaishnodevi Circle, S.G. Highway, Khodiyar AHMEDABAD 382421',NULL,NULL,'','','24AANCA1814G1ZZ','','AANCA1814G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(8,'ADNAC BUSINESS SOLUTIONS LLP','CHINTAN PAREKH',NULL,'','',NULL,'605-606-617, HIGHWAY COMMERCIAL COMPLEX, I B PATEL ROAD, OFF WESTERN EXPRESS HIGHWAY,, GOREGAON EAST, MUMBAI - 400063',NULL,NULL,'','','','','ABFFA1269F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(9,'ADVANCE PAINTS PRIVATE LIMITED','',NULL,'','',NULL,'2 ND, ADVANCE PAINTS FACTORY, FOSBERY ROAD,, SEWRI EAST, MUMBAI, Mumbai City, Maharashtra, 400015\r',NULL,NULL,'','','27AAACA8958J1Z8','','AAACA8958J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(10,'AFST(I) Chennai chapter','',NULL,'','',NULL,'ANNA UNIVERSITY, 0, A C TECH CAMPUS, SARDAR, PATEL ROAD, CHENNAI, Chennai, Tamil Nadu, 600025',NULL,NULL,'','','33AAAAA4525B1ZL','','AAAAA4525B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(11,'AFST (I) MUMBAI CHAPTER\r\n','Hrishikesh Deshpande\r\n',NULL,'afstmumbai@gmail.com\r\n','',NULL,'C/O Food Engineering and Technology Department,, Institute of Chemical Technology, Nathalal Parekh Marg, Matunga East',NULL,NULL,'9850844811\r\n','','','','AAAAA4525B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(12,'Agarwal Welfare Foundation','',NULL,'','',NULL,'Aashirwad Bunglow, Plot No. 11-11, RSC 15,, Opp. C K P Bank, Near Suvidhya SchooGorai 1, Borivali West, Mumbai 400091',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(13,'Agnel Technical Education Complex\r\n','',NULL,'','',NULL,'Sector 9A, Vashi , Navi Mumbai - 400703',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(14,'Airofrost HVAC Systems Pvt.Ltd.','',NULL,'','',NULL,'1,Kohinoor Apartment,, Station Road,Jogeshwari West,, Mumbai :400102',NULL,NULL,'','','27AAHCA8655K1Z5','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(15,'AJF PRODUCTIONS LLP (Sale)','',NULL,'','',NULL,'704, MADHUBAN AVENUE HOUSING SOCIETY,					\r\n, PANDURANG WADI ROAD NO.5, GOREGAON (EAST)					\r\n',NULL,NULL,'','','27ABJFA0978P1ZR','','ABJFA0978P','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(16,'AJR Infra And Tolling Limited','',NULL,'','',NULL,'3rd Floor, Plot no 3/8, Hamilton House, J.N., Heredia Marg, Ballard  Estate, Mumbai City, Maharashtra, 400038',NULL,NULL,'','','27AABCG8641H1ZI','','AABCG8641H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(17,'Amit Samani','',NULL,'','',NULL,'',NULL,NULL,'','','27AUCPS7925G1ZA','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(18,'AMIT SAMANI & CO (S)','',NULL,'','',NULL,'1310, Ghanshyam Enclave ,Nr. Laljipada Police Station,, Link Road, Kandivali (W), Mumbai 400067, Maharashtra',NULL,NULL,'','','27AUCPS7925G1ZA','','AUCPS7925G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(19,'Ankur Germinating Ideas','Anoop Daga',NULL,'','',NULL,'613, IJMIMA Complex, Raheja?s Metroplex,, Near Infiniti Mall, Off Link Road,, Malad(W), Mumbai 400064',NULL,NULL,'28800411','','27AAHFA1408M1ZI','','AAHFA1408M','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(20,'Apex Solutions','',NULL,'','',NULL,'82/84, Pratap Cottage, Road No. 8,, Daulat Nagar, Road No. 8, \r\n, Borivali (East), Mumbai - 400066.\r\n',NULL,NULL,'','','','','AGAPM4516H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(21,'Arha Enterprise','',NULL,'','',NULL,'26, Shraddha Society, Opp Jawahar Society, R.V.Desai Road,Vadodara-390004',NULL,NULL,'','','24ABZFA8670J1ZO','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(22,'Ashok Chauhan','',NULL,'','',NULL,'510, 5th Floor, Atlanta Estate, Dr. Ambedkar Chowk, Off. W. E. Highway,',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(23,'Association Of Food Scientists & Technologists','',NULL,'','',NULL,'CFTRI Campus , AFST, CFTRI Campus, Mysore, Mysuru, (Mysore), Karnataka 570020',NULL,NULL,'','','29AAAAA4525B1ZA','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(24,'Auratunes AV Solution','',NULL,'','',NULL,'Bulding no.75, D-902, Prem Belaire, Tilak Nagar,, Road No 13, Chembur (West) Mumbai - 400089',NULL,NULL,'','','27ABZFA3980F1ZW','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(25,'AUTOMOTIVE MANUFACTURERS PRIVATE LIMITED','',NULL,'','',NULL,'108 D, OLD AGRA ROAD, KURLA,, Mumbai, Mumbai Suburban, Maharashtra, 400070',NULL,NULL,'','','27AAACA3428K2ZQ','','AAACA3428K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(26,'AUTOMOTIVE MANUFACTURERS PVT LTD','Mr. Nisith Mehta',NULL,'','',NULL,'Automotive House, 108, Bazar Ward,, Kurla, Mumbai',NULL,NULL,'','','27AAACA3428K1ZR','','AAACA3428K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(27,'A V COMPUTERS  (S)','',NULL,'','',NULL,'SHOP NO 10, SUNANDA BLDG,, SUBHASH LANE, DAFTARY ROAD, MALAD E MUMBAI',NULL,NULL,'','','27AFYPJ7708K1ZM','','AFYPJ7708K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(28,'AVGN Infotech','',NULL,'','',NULL,'Shop No-25, Prajapati Cascade, Sector No 1, Road No 18,, Opposite Shiva Complex, New Panvel,Navi Mumbai- 410206',NULL,NULL,'','','27ARAPD4980B1Z6','','ARAPD4980B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(29,'Avosina Medical Technologies','',NULL,'','',NULL,'10716 Richmond Hwy Suite 204, Lorton Va 22079',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(30,'Badame Financial Services Pvt. Ltd','',NULL,'','',NULL,'A-01, Flight View, Radhagram Kole Kalyan Vakala Bridge,, Santacruz (East), Mumbai - 400055',NULL,NULL,'','','27AAKCB6045R1ZZ','','AAKCB6045R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(31,'Bai Kabibai and Hansraj Morarji Charity Trust','',NULL,'','',NULL,'Hansraj Morarji Public School, HMPS Campus,, Nr. Bhavans College, Munshi Nagar, Andheri West',NULL,NULL,'','','27AAATB0159K1ZT','','AAATB0159K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(32,'Balaji Formalin Pvt Ltd','',NULL,'','',NULL,'Plot no.32/1 Additional Patalganga Industrial Area,, MIDC Patalganga,Tal-Panvel,Dist-Raigad, Maharashtra-410207',NULL,NULL,'','','27AABCB7062K1ZJ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(33,'BIL ENERGY SYSTEM LTD','',NULL,'','',NULL,'VILLAGE-KANCHAD, MANOR WADA ROAD, WADA, DIST THANE 421312',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(34,'Binary Informatic (Sales)','Mr. Jasmin Shah',NULL,'','',NULL,'201, 2nd Flooe, Pavapuri Apartment,, M G Cross Road, Opp G H High School,, Borivali (E), Mumbai -400066',NULL,NULL,'','','27AAQFB1851Q1ZT','','AAQFB1851Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(35,'Bremer Pharma GmbH','',NULL,'','',NULL,'Werkstr. 42, 34414, Warburg Germany',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(36,'BSA Polycontainer Private Limited','',NULL,'','',NULL,'SURVEY NO 148/2/1, VALACHA FALIYA, NEAR SUPREME, INDUSTRIES, SILVASSA, Dadra & Nagar Haveli, Dadra and, Diu, 396230',NULL,NULL,'','','26AAFCB8552J1ZE','','AAFCB8552J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(37,'BSH Hould Appliances Manufacturing Pvt.Ltd. (PUNE)','',NULL,'','',NULL,'102, 1st Floor, SAI EMPIRE,, Survey No.182/1/2, Mouje Baner,, PUNE',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(38,'Bumberry baby products Pvt LTD','',NULL,'','',NULL,'24 /40 A2, CUSAT Road, CUSAT PO, Cochin,, Kerla',NULL,NULL,'','','32AAGCB3175N1ZJ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(39,'ByDesigns','',NULL,'','',NULL,'B-801, IMPERIAL HEIGHTS, BEST ROAD,, OSHIWARA DEPOT, GOREGAON WEST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(40,'CAMBRIDGE TECHNOLOGY INDIA PVT LTD','',NULL,'','',NULL,'The Avenue, Room No 1009, 10th Floor,, International Airport Road, Opp. The Leela,',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(41,'Carlyle India Advisors Private Limited','',NULL,'','',NULL,'6th floor, 601, Jet Airways Godrej BKC, Plot, C-68, G Block, Bandra Kurla Complex, Bandra East Mumbai, Bandra Kurla, Complex, MUMBAI, Mumbai, Maharashtra-400051',NULL,NULL,'','','27AABCC4522F1Z2','','AABCC4522F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(42,'CERT ID INDIA PRIVATE LIMITED','',NULL,'','',NULL,'B WING/ UNIT NO 1211A, KANAKIA WALL STREET,, ANDHERI, KURLA ROAD, CHAKALA ANDHERI EAST, MUMBAI, Mumbai',NULL,NULL,'','','27AAFCC9236N2Z3','','AAFCC9236N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(43,'Chamber for Advancement of Small and Medium Busine','',NULL,'','',NULL,'Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(44,'CHEMICALS PETROCHEMICALS MANUFACTURERS ASSOCIATION','',NULL,'','',NULL,'708, 7th Floor,Kailash Building, KG Marg, New Delhi 110001',NULL,NULL,'','','07AAATC5623P1ZH','','AAATC5623P','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(45,'Chennaiyin FC Sports Pvt Ltd','',NULL,'','',NULL,'4th FLOOR, 42/43/44A and 49, Jolly Maker Chamber II,, Vinay K Shah Marg, Nariman Point, Mumbai, Mumbai,, Maharashtra ,400021',NULL,NULL,'','','27AAHCP6615L1Z0','','AAHCP6615L','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(46,'Colgate Global Business Services Private Limited','',NULL,'','',NULL,'9th Floor, Tower \"B\", L&T Business Park, L&T Gate No. 5, Saki Vihar Road, Powai, Mumbai 400 076',NULL,NULL,'','','27AAACC4309B1ZA','','AAACC4309B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(47,'COMPREHENSIVE PHYSICIAN RESOURCES','',NULL,'','',NULL,'10716 Richmond Hwy Suite 204, Lorton Va 22079',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(48,'Compuscroll Ltd.','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(49,'CONCEPT TECHNOSOLUTIONS','Mr. MIKHIL DERE',NULL,'','',NULL,'8, SHREE BUILDING , NEW LIBERTY CHSL,, BHANDARWADA, LIBERTY GARDEN \r\n, CROSS ROAD NO. 4, MALAD WEST, MUMBAI- 400064\r\n',NULL,NULL,'','','','','AAGFC4837P','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(50,'ConstructionSpecialties International (India) Pvt.','Sunanda Desai',NULL,'','',NULL,'106/107, ShriKrishna Commercial Center,, 6, Udyog Nagar, Off. S.V.Road,, Goregaon (W), Mumbai',NULL,NULL,'','','27AACCC4034F1Z2','','AACCC4034F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(51,'Continental Belting Pvt Ltd','Mr. Rohit',NULL,'','',NULL,'703, Harshvardhan, Raheja Township, Malad (East), Mumbai -400097',NULL,NULL,'','','27AAGCC0443E1Z3','','AAGCC0443E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(52,'Convergence Sustainable Innovations Private Limite','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(53,'Creativite','',NULL,'','',NULL,'1201,Lodha Grandeur Sayani Road, Prabhadevi, Mumbai-400025',NULL,NULL,'','','27AITPK8223C1Z4','','AITPK8223C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(54,'CREOTEK SYSTEMS INDIA LLP','',NULL,'','',NULL,'F/F, F-64, KARAMPURA COMPLEX, Karampura, New Delhi, West Delhi, Delhi,, 110015',NULL,NULL,'','','07AAPFC2578Q1ZL','','AAPFC2578Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(55,'CRISIL LIMITED','',NULL,'','',NULL,'Central Avenue, Hiranandani Business Park, Powai, Mumbai 400 076',NULL,NULL,'','','','','AAACT3151E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(56,'Crux Digital Pvt Ltd','Mr. Jatin',NULL,'','',NULL,'Blue Rose Ind Estate, B-328, Western Express Highway,, Near Metro Wholesale. Magathane, Borivali (E),, Mumbai-400066',NULL,NULL,'','','27AADCC9226A1ZZ\r\n','','AADCC9226A????\r\n','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(57,'Datapoint Systems','',NULL,'yogita.nagulkar@tecstaq.com','',NULL,'Vijaya ApartmentGround floor, \n\r\n, Bajaj Road, Vile Parle (West) Mumbai ? 400056.\r\n',NULL,NULL,'91672 45888 / 9','','27AAAPV7108G1ZN','','AAAPV7108G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(58,'DECCAN TRANSCON SHIPPING LLP','MR. BEJOY VERGHESE',NULL,'','',NULL,'BLOCK 2 (DG 6), FLAT NO.103, RAINTREE PARK,, SPINAL ROAD,KPHB, KUKATPALLY, HYDERABAD,',NULL,NULL,'9820204091','','36AAMFD9974E2ZW','','AAMFD9974E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(59,'Decospaa Cloud Technology LLP','',NULL,'','',NULL,'141, , Main Street camp, Pune, Pune, Maharashtra, 411001\r\n',NULL,NULL,'','','27AAOFD4173F1ZB','','AAOFD4173F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(60,'DEEPTI PATHAK COMPANY','',NULL,'','',NULL,'A-103, DIVYA CGHS, PLOT NO. 21, SECTOR-10,, DWARKA,South West Delhi,Delhi, 110075',NULL,NULL,'','','07BACPP0680G1ZT','','BACPP0680G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(61,'DELTATECH SYSTEMS','',NULL,'','',NULL,'GALA NO 127, Gauri Complex,Navghar Road,, Vasai East,Palghar,401202',NULL,NULL,'','','27AAMFD3263A1ZQ','','AAMFD3263A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(62,'DHIRAJ PATIL (SALES)','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(63,'DMCC SPECIALITY CHEMICALS LIMITED\r','',NULL,'','',NULL,'Plot No 105, M I D C Industrial Area, Roha, Raigad,, Maharashtra, 402116',NULL,NULL,'','','27AAACT5000E1ZX','','AAACT5000E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(64,'Duss Digital Infra Pvt Ltd.','',NULL,'','',NULL,'F-10, Sej Plaza Marve Road Malad West,, Mumbai 400064',NULL,NULL,'','','27AAGCD6965Q1ZQ','','AAGCD6965Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(65,'DzTranz India Private Limited','',NULL,'','',NULL,'B14 Parijat, Bandra Reclamation, Mumbai 400050,',NULL,NULL,'','','','','AAGCD2332R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(66,'ELCA Laboratories','',NULL,'','',NULL,'Plot No.GEN 62,TTC Industrial Area,, Mahape MIDC, Navi Mumbai, Maharashtra, ,India -400710\r\n',NULL,NULL,'','','27AAUPN9398N1Z8','','AAUPN9398N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(67,'Electraa Fab Private Limited','',NULL,'','',NULL,'Pune Fact: Gat No. 240,Nr Hotel Marriott,HP Chowk, Khalumbre, Chakan Dist- Pune- 410501',NULL,NULL,'','','27AAFCE6711N1ZC','','AAFCE6711N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(68,'ELMS Sports Foundation','Feeba Jain',NULL,'','',NULL,'42, Jolly Maker Chambers II, Vinay K. Shah Marg, Nariman Point,Mumbai ? 400 021.\r',NULL,NULL,'022-22047421\r\n','','27AAECE6652M1Z7','','AAECE6652M','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(69,'END TO END ENTERPRISE IT SOLUTIONS','',NULL,'','',NULL,'GROUND SHOP NO 11/A , DEEPAK PARK KALYANI NAGAR, YERWADA PUNE MAHARASHTRA 411006',NULL,NULL,'','','27AEXPT8157J1ZC','','AEXPT8157J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(70,'Envirocare Labs Pvt Ltd','',NULL,'','',NULL,'A7-A8 Enviro House, MIDC Main Road, Wagle Industrial Estate,, Thane 400604',NULL,NULL,'','','27AAACE3748C1ZX','','AAACE3748C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(71,'EPS CURRIERS','',NULL,'','',NULL,'MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(72,'EPS WORLDWIDE','',NULL,'','',NULL,'F186, Solaris1 ,, Opp. L&T Gate No:6 ,, Saki Vihar Road, Powai,, Mumbai - 400 072.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(73,'Equilibrium Mind and Yoga Pvt. Ltd.','',NULL,'','',NULL,'1/3, MP Colony Road, Vishal Enterprises,, Mukta Prasad Nagar, Bikaner, Bikaner,, Rajasthan, 334004',NULL,NULL,'','','08AAGCE2218R1Z9','','AAGCE2218R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(74,'EQUINOX BUSINESS PARKS PVT LTD.','',NULL,'','',NULL,'Suite # 7, E Commerce Centre, Tower  # 3,, Equinox Business Park, LBS Marg , Kurla (West), Mumbai - 400070',NULL,NULL,'','','27AAACY3095Q2ZJ','','AAACY3095Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(75,'Esar Technologies','',NULL,'','',NULL,'B -102, 1st Floor, Pandit Complex Morya, Nagari, Maneta Gaon, Ulhasnagar -4',NULL,NULL,'','','','','AAHPO5836F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(76,'E-Serve','',NULL,'','',NULL,'207, Parikh  Commercial Center , Agashi Road, Above, ICICI  Bank , Virar West,401303',NULL,NULL,'','','27AAJFE0902G1ZS','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(77,'EXCELL AUTOVISTA PRIVATE LIMITED','',NULL,'','',NULL,'Mohan Mill compound, Ghodbunder Road,, Near R Mall, Manpada, Thane West, Thane,, Maharashtra 400607',NULL,NULL,'','','27AABCE4442J1ZO','','AABCE4442J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(78,'Excellent Informatic Pvt. Ltd (Sales)','',NULL,'','',NULL,'Gala No 20, Basement, A.C Market Tardeo, Mumbai 400 034',NULL,NULL,'','','','','AAACE3512G\r\n','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(79,'EXCELLENT PRODUCTS','',NULL,'','',NULL,'206, ICF House, Shivmangal Co-Op. Premises Sty. Ltd, Opp. Shivprabha Building, Savarkar Nagar, \r\n\r\n, Sakinaka, Mumbai - 400072, India\r\n\r\n, Tel No: 022-64577144-146 / 022-25139448-50\r\n\r\n',NULL,NULL,'','','27AAAFE9516F1ZJ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(80,'EXCELLENT PRODUCTS WebSite','',NULL,'','',NULL,'206, ICF House, Shivmangal Co-Op. Premises Sty. Ltd, Opp. Shivprabha Building, Savarkar Nagar, Sakinaka, Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(81,'Excel Productions Audio Visuals Pvt Ltd','Meena Gorandle',NULL,'','',NULL,'404, Powai Plaza, Hiranandani gardens, Powai,, Mumbai - 400076',NULL,NULL,'022-40500700-75','','27AAACE7194G1ZH','','AAACE7194G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(82,'Eye On Universe','',NULL,'','',NULL,'Offi ce No.21, BUSINESS BAY,SHRI HARI NARAYAN KUTE MARG, MATOSHREE NAGAR,MUMBAI NAKA, NASHIK 422002',NULL,NULL,'','','27AALFE0535D1ZR','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(83,'F2F Corporate consultants Private Limited','Ms. Mayuri Bane',NULL,'connect@farmtoforkindia.com','',NULL,'NEAR FAMILY COURT, BASEMENT, B-12 A, BALRAM, BLDG, BANDRA KURLA COMPLEX ROAD, Bandra East,, Mumbai, Mumbai Suburban, Maharashtra, 400051\r',NULL,NULL,'8591960934','','27AAECF3786F1ZG','','AAECF3786F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(84,'Father Agnel college','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(85,'Festus Properties Private Limited','',NULL,'','',NULL,'Kensington A and B, IT / ITES,  Kensington SEZ, Building, Hiranandani Business Park, Powai Mumbai,, Mumbai  City, Maharashtra, 400076',NULL,NULL,'','','27AADCH8953R2ZM','','AADCH8953R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(86,'FIDELIX INFOSOLUTIONS PRIVATE LIMITED\r','',NULL,'','',NULL,'Mogra Village, 3rd Floor, 304, Ashok Premises Cooperative Society, Old Nagardas Road, Andheri East,, Mumbai, Mumbai Suburban, Maharashtra,400069',NULL,NULL,'','','27AAECF3492N1Z4','','AAECF3492N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(87,'FirstRand Services Private Limited','',NULL,'','',NULL,'17th floor, Unit 10, Building Q1, TTC Industrial Area Thane, Belapur road, Thane Belapur road, Thane, Maharashtra, 400710',NULL,NULL,'','','27AACCF1607R2ZC','','AACCF1607R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(88,'FLAIR WRITING INDUSTRIES LTD','',NULL,'','',NULL,'63 B/C, GOVERNMENT INDUSTRIAL ESTATE, CHARKOP, KANDIVALI WEST, Mumbai City, Maharashtra, 400067',NULL,NULL,'','','27AACCF8824C1ZR','','AACCF8824C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(89,'Food Future Foundation','Anju Khosla',NULL,'','',NULL,'C77 4th Floor, C Block Rosewood City, Sector 49, Gurgaon, Haryana - 122018',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(90,'FOOD SAFETY AND STANDARDS AUTHORITY OF INDIA','',NULL,'','',NULL,'2 ND FLOOR, CENTRAL DOCUMENTATION COMPLEX, Ch.P.T BUILDING, RAJAJI SALAI, CHENNAI - 600001',NULL,NULL,'044-25223213/17','','33AAAGF0023K1Z0','','AAAGF0023K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(91,'Food Safety & Standards Authority of India(Kolkata','',NULL,'','',NULL,'6th Floor, Benfish Tower, 31,GN Block, Salt Lake, City, Sector -V, Kolkata, West Bengal, 700091',NULL,NULL,'','','19AAAGF0023K1ZQ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(92,'Fr. C. Rodrigues Institute of Technology','',NULL,'','',NULL,'Agnel Technical Education Complex,, Sector 9A, Vashi, Navi Mumbai - 400703',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(93,'Freepublik Creative','',NULL,'','',NULL,'2340,Bldg. No.49,Bandra Sai Krupa CHS Ltd.,, Gandhi Nagar, Bandra (E),Mumbai-400051.',NULL,NULL,'','','','','AADCF7966N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(94,'FRONTLINE SOFTWARE SOLUTIONS','',NULL,'','',NULL,'203,2ND FLOOR,SIMLIM SQURE,LAMINGTON ROAD, GRANT ROAD (E)',NULL,NULL,'','','','','AADCS9203M','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(95,'GALA PEN PRODUCTS','',NULL,'','',NULL,'Veena Dalvai Ind. Estate,Unit No.: 162, 1 st flr., B - wing,, Near Ajit Glass, Oshiwara Gaon,S.V. Road, Jogeshwari (West),, Mumbai - 400 102, INDIA.',NULL,NULL,'','','27AABPG4941R1ZB','','AABPG4941R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(96,'Gammon Infrastructure Projects Limited','Mr. Sushant.Lembhe',NULL,'','',NULL,'3rd Floor, Plot no 3/8, HAMILTON HOUSE, J.N. HEREDIA MARG,, BALLARD ESTATE, Mumbai City, Maharashtra, 400038\r',NULL,NULL,'','','27AABCG8641H1ZI','','AABCG8641H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(97,'GANGAR OPTICIANS PRIVATE LIMITED','',NULL,'','',NULL,'2nd Floor, Sion Garage Buld, Pl 588/5A Ganga Dham,, Sion (East). Mumbai ? 400022',NULL,NULL,'','','27AABCG2214N1ZO','','AABCG2214N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(98,'G. Computers','',NULL,'','',NULL,'Off No 7 & 9 1St Floor,, Kamla Palace, Jail Road, Near Federal Bank, Gurgaon Pin 122 001',NULL,NULL,'','','06AGDPR5612G1ZJ','','AGDPR5612G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(99,'Global Offshore Services Ltd','',NULL,'','',NULL,'3rd Floor, Prospect Chambers, D. N., Road, Fort, Mumbai ? 400 001.',NULL,NULL,'','','27AAACG2204K1ZX','','AAACG2204K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(100,'Globe Gas Equipments Industry Pvt. Ltd','',NULL,'','',NULL,'903, 9th Floor, Corporate Avenue,, Next To Udyog Bhavan, Sonawala Road, Goregaon - (E), Mumbai - 400 063.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(101,'GORAKHPUR INFRASTRUCTURE COMPANY LIMITED','Mr. Gautam Panchal',NULL,'','',NULL,'Unit 803, 8th Floor, A Wing, One BKC,, Bandra Kurla Complex, Mumbai 400051',NULL,NULL,'','','','','AACCG6417G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(102,'GRAANDALE COMMUNICATION & MARKETING PVT. LTD','',NULL,'','',NULL,'LAQSHY HOUSE, SOCIETY ROAD, NEXT TO RAMESHWAR, TEMPLE JOGESHWARI (EAST)',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(103,'HARDSUN SOFTWARE SERVICE','',NULL,'','',NULL,'HOUSE NO 210, PACHORE GALLI, NANDRE,, MIRAJ, SANGLI, 416416',NULL,NULL,'','','27BSXPP6742C1Z6','','BSXPP6742C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(104,'Harish MMRS','',NULL,'','',NULL,'Chiku Wadi, Borivali',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(105,'HARMONY MALL COMMERCIAL PREMISES CO-OP','',NULL,'','',NULL,'C-WING, HARMONY COMMERCIAL, NEAR MOTILAL, NAGAR,LINK ROAD, GOREGAON WEST, Mumbai Suburban,\r, Maharashtra, 400062',NULL,NULL,'','','27AACAH2062E1Z3','','AACAH2062E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(106,'Harsh Infotech','',NULL,'','',NULL,'BORIVALI (WEST)',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(107,'HEALTHY MIND ONLINE INDIA PRIVATE LIMITED','',NULL,'','',NULL,'57/2581, Gandhinagar, Kailash CHS Limited, Near MIG Cricket Club,Bandra East, Mumbai,, , Mumbai City, Maharashtra, 400051',NULL,NULL,'','','27AAFCH3602R1Z9','','AAFCH3602R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(108,'Healthy Mind Online India Pvt. Ltd.\r\n','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(109,'HIRANNYA WEALTH ADVISORY PRIVATE LIMITED','',NULL,'','',NULL,'Office no. 105 , Gopi mall, N.S.S Rd. Dombivali West, 421202',NULL,NULL,'','','27AAGCH6995J1ZU','','AAGCH6995J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(110,'HK Law Associates','',NULL,'','',NULL,'703 Everest Building, 7 Bungalows, Opposite Horizon View, Versova, Raheja Complex, Andheri West,',NULL,NULL,'','','','','BMUPK2920A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(111,'H. M. SUTHAR, (ADVOCATE)','',NULL,'','',NULL,'B ? 103/104, Ashoka Supermarket CHSL, SV Road & Aarey Road junction,, above Bata showroom, Goregaon West Mumbai 400104',NULL,NULL,'','','27AADPS3665G1ZH','','AADPS3665G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(112,'HYDRA TRADING PRIVATE LIMITED','',NULL,'','',NULL,'1ST FLOOR, 3A, BARODAWALA MANSION, 81, DR. ANNIEBESANT ROAD, WORLI, Mumbai, City, Maharashtra, 400018',NULL,NULL,'','','27AADCH1740E1ZZ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(113,'Hydra Trading Pvt Ltd','',NULL,'','',NULL,'1st Floor, 3A, Barodawala Mansion,81,, DR. Annie Besant Road,Worli, Mumbai City, Maharashtra,',NULL,NULL,'','','27AADCH1740E1ZZ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(114,'Hyperlocal Metrics Private Limited','',NULL,'','',NULL,'PH 01, No.5/1, Rich Homes, 6th Floor, Richmond Road, Bangalore, Bengaluru Urban, Karnataka, 560025',NULL,NULL,'','','29AAGCB7733A1ZT','','AAGCB7733A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(115,'ICF SHIPPING PVT. LTD.','Subhash Borhade',NULL,'','',NULL,'206, ICF House B/12, Shivmangal Co-Op.Soci,, Mohili Village, Veer Sawarkar Nagar, Sakinaka, Mumbai- 400072',NULL,NULL,'64577148-155 , ','','27AAACI6586N1ZW','','AAACI6586N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(116,'Iconnect Info Solutions Private Limited','',NULL,'','',NULL,'20, 2001, Aspen Building, Everest World, Kolset Road, Dhokali, Thane, Thane, Maharashtra, 400607',NULL,NULL,'','','27AADCI4298J1Z4','','AADCI4298J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(117,'iContent','',NULL,'','',NULL,'3rd Floor, A/303, Satluj Apartment, Sahakar Gram, Road No 3, KandivaliEast, Mumbai Suburban, Maharashtra, 400101',NULL,NULL,'','','27AAIPF7261Q1Z4','','AAIPF7261Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(118,'IM Logistics','',NULL,'','',NULL,'Shop No 1, Plot No.18/A,, Nerul (West), Navi Mumbai,',NULL,NULL,'022 2771 0421','','27AAEFI8462L1ZV','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(119,'IMPACT','',NULL,'','',NULL,'LOWER PAREL EAST MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(120,'IMPERIAL IT SOLUTIONS','',NULL,'','',NULL,'Room No D-5/ Plot No, 559, Archana CHS, Sector 5 Charkop, Kandiwali West,, Mumbai, Maharashtra 400067',NULL,NULL,'','','27AYNPK3768N1ZJ','','AYNPK3768N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(121,'INDIAN OIL RETIRED OFFICERS\' ASSOCIATION, MUMBAI','',NULL,'','',NULL,'B_ 9, 3rd floor, Moghe Bhuvan,, Ramgiri Paredise co op Hsg. Society,, Gokhale Road , North,, Dadar, Mumbai 400028.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(122,'Indian Port Rail Corporation Limited','',NULL,'','',NULL,'4th Floor Nirman Bhavan,, Mumbai Port Trust Building,, M.P. Road, Mazgaon (East), Mumbai 400 010',NULL,NULL,'','','27AADCI8930M1Z3','','AADCI8930M','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(123,'INDIA PORTS GLOBAL PRIVATE LIMITED','',NULL,'','',NULL,'11th Floor, 1107 Raheja Centre, 214 FPJ Marg,, Nariman Point, Mumbai, Mumbai City, 400021',NULL,NULL,'','','27AADCI7690A2ZK','','AADCI7690A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(124,'INDIRA CONTAINER TERMINAL Pvt Ltd','Mr. PT Bhandari /Mr. Mukul Mhatre',NULL,'','',NULL,'Indira Dock, Green Gate,, Mumbai Port, Mumbai 400 038',NULL,NULL,'','','27AABCI7436A1ZV','','AABCI7436A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(125,'Infopro Learning Pvt. Ltd.','',NULL,'','',NULL,'PLOT NO H 10/A, SECTOR 98, Noida, Gautambuddha, Nagar, Uttar Pradesh, 201301\r',NULL,NULL,'','','09AADCG0520H1Z0','','AADCG0520H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(126,'Inner Space Computers','',NULL,'','',NULL,'1187/63 ? Shriniwas? off ghole road, shivaji nagar,, Pune 411005',NULL,NULL,'','','27AAHPH1836N1ZG','','AAHPH1836N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(127,'Innovativations P Ltd','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(128,'Innovins Softtech Solutions Pvt Ltd','',NULL,'','',NULL,'2nd Floor, Flat 204, D-Wing, Nalanda CHS Ltd, Jayraj Nagar, L.T.Road, Borivali (W), Mumbai',NULL,NULL,'','','27AAECI5347R1ZV','','AAECI5347R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(129,'INNOVINS Technologies Pvt. Ltd.(Sales)','Mr. Mukund Pilankar',NULL,'','',NULL,'302-B, Sushil Building, Kamla, Near Kandivali Railway Station ,',NULL,NULL,'','','27AADCI1124R1ZD\r\n','','AADCI1124R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(130,'Institute of Distance & Open Learning, University ','',NULL,'','',NULL,'Dr.Shankar Dayal Sharma Bhavan, Vidyanagari,, Santacruz East, Mumbai,Maharashtra 400055',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(131,'INTEGRATED PROJECTS','',NULL,'','',NULL,'301, Bhaveshwar Arcade Annex LBS Marg, Ghatkopar (W), Mumbai - 400 086',NULL,NULL,'','','27AAEFI9658N1ZJ','','AAEFI9658N','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(132,'Intellect Bizware Services Pvt Ltd.','Dharmen Shah',NULL,'','',NULL,'H-219, 2nd Floor, Tower #3, International Technology Centre,, CBD Belapur Station Complex, Sector 11,, Navi Mumbai -400 614.',NULL,NULL,'','','27AACCI1519B1Z4','','AACCI1519B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(133,'Intel Trade Fairs & Expositions Pvt Ltd','Ashok Neelkant',NULL,'Ashok Neelkant <aneelkant@intelexpo.com>','',NULL,'113, New Sonal Link Industrial Estate, Bldg. No.2, Link Road, Malad West, Mumbai 400064 India',NULL,NULL,'91 22 28803977','','','','AAACI1089G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(134,'InterServer','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(135,'Intime Fire Appliances','',NULL,'','',NULL,'21/A Ghanshyam Industrial Estate,, Off Veera Desai Road,, Andheri West, Mumbai 400705.',NULL,NULL,'','','27AABCI2217B1Z8','','AABCI2217B\r\n','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(136,'INVEST ACADEMY LLP(Umen Sir)','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(137,'Investor Shoppe Private Limited','Mr. Kishore Nagarmat',NULL,'','',NULL,'15 Grd Floor, Centrium, Lokhandwala Township,, Kandivali East, Mumbai - 400101',NULL,NULL,'','','27AABCI3774K1Z9','','AABCI3774K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(138,'IPSIT Consultants Pvt Ltd','',NULL,'','',NULL,'B-702, Allura ,Lodha Park,\n, 9, Senapati Bapat Marg, Lower Parel, Mumbai, Maharashtra 400013',NULL,NULL,'','','27AAECI0827Q1Z6','','AAECI0827Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(139,'ISHRAE Mumbai Chapter\r\n','',NULL,'','',NULL,'ISHRAE Mumbai Chapter, 102, Sunil Enclave,, Pereira Hill Road, Off M V Road,, Nexto to WEH Metro Station.,, Andheri (East), Mumbai 400 099',NULL,NULL,'','','27AAATI0295D1ZW','','AAATI0295D','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(140,'ITCFSAN.','',NULL,'','',NULL,'2nd Floor, Export Inspection Agency, E-3,, Cross Road A, MIDC, Andheri (East),',NULL,NULL,'','','27AAAGF0023K1ZT','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(141,'IView Labs Pvt Ltd','',NULL,'','',NULL,'1st Floor, Adit Medical Centre,, Above Rajiv Gandhi Underpass, Opp- Muktajivan Studio,Stadium Circle,, Navrangpura, Ahmedabad-380009, Gujarat, India',NULL,NULL,'','','24AADCI0420Q1ZO','','AADCI0420Q','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(142,'JAI AMBE LOGISTICS','',NULL,'','',NULL,'OFFICE No. 510. 5TH FLOOR, No. 1. THE OLD SHARDA, CHAMBERS PREMISES CO-OP. SOCIETY LTD., KESHAVJI, NAIK ROAD, MUMBAI-400009',NULL,NULL,'','','27AAFFJ7745J1ZX','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(143,'JAJAL INFOTECH\r','',NULL,'','',NULL,'NR SILVER HEIGHT NANAMAVA, 8TH FLOOR, OFFICE-807, R K\r, PRIME, 150FEET RING ROAD, NANAMAVA CIRCLE, Rajkot,\r, Rajkot, Gujarat, 360004\r',NULL,NULL,'','','24ANFPJ7674R1Z7','','ANFPJ7674R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(144,'JAYA NAGARMAT (DINKAR SIR)','',NULL,'','',NULL,'2B/204, RIVIERA BLDG,, LOKHANDWALA TOWNSHIP, KANDIVLI EAST MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(145,'Jhaveri Flexo India Private Limited\r\n','',NULL,'','',NULL,'9th Floor, Gold Crest, Near Kaifi Azmi Park,, 10th Road, J.V.P.D. Scheme, Juhu,, Vile Parle (West), Mumbai-400 049,',NULL,NULL,'','','27AAACF4037F1ZY','','AAACF4037F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(146,'JP INFRA REALTY PRIVATE LIMITED','',NULL,'','',NULL,'3rd Floor, Viraj Towers, Western Express Highway, Near WEH Metro Station,, Andheri East, Mumbai - 400093',NULL,NULL,'','','27AAOCS9607A1Z7','','AAOCS9607A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(147,'Jyothy Labs Limited','',NULL,'','',NULL,'196, Ujala House, Ramakrishna Madir Road,, Kondivita Andheri, Mumbai Suburban,, Maharashtra, 400059',NULL,NULL,'','','27AAACJ3213B2Z9','','AAACJ3213B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(148,'K3 Pvt Ltd','',NULL,'','',NULL,'C-173,AKURLI INDUSTRIAL ESTATE, AKURLI ROAD, KANDIVALI EAST',NULL,NULL,'','','','','AFFPC0022E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(149,'Kaambesh Technology Solutions','',NULL,'','',NULL,'102\\108, Shankala Industrial Estate,, Gogate Wadi, Off Aarey Road,, Goregaon (E), Mumbai 400 063, India.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(150,'Kairos Property Managers Pvt. Ltd.','Kailesh Chandra',NULL,'it.helpdesk@brookfield.com','',NULL,'4th Floor, A-401, 402, Delphi-A,Orchard Avenue, Powai,, Mumbai City, Maharashtra, 400076',NULL,NULL,'','','27AAGCK5022K1ZH','','AAGCK5022K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(151,'KAPILS SALON INDIA PRIVATE LIMITED','',NULL,'','',NULL,'Plot No.2-CD,First Floor, Kandivali Co.Op. Industrial Estate Ltd, CTS NO.409/3,Charkop, Kandivali West,400067',NULL,NULL,'','','27AADCK9549C1ZD','','AADCK9549C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(152,'K C College','',NULL,'','',NULL,'Churchgate Mumbai : 400020',NULL,NULL,'','','27AAATH0064R1ZD','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(153,'KC Fabrics','',NULL,'','',NULL,'Unit no 7, Sahar Cargo Estate, Near Tarun Bharat Society,, next to cafe Cofee day, JB Nagar,, Andheri East',NULL,NULL,'','','27AAGFK4718B1ZL','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(154,'KDS Projects & Planners LLP','',NULL,'','',NULL,'03, Him Parvati, Carter No,1, Borivali (E),, Mumbai - 400063',NULL,NULL,'','','27AAVFK0149D1Z9','','AAVFK0149D','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(155,'K D Supply Chain Solutions Pvt Ltd','Mr. Anuroop Khare',NULL,'','',NULL,'A-2, Five Acres, Kothari Compound, Manpada Chitalsar, Nr. Sahyog Society, Thane (W)- 400 610',NULL,NULL,'','','','','AADCK9369E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(156,'KHEVNA INTERNATIONAL LLP (Gujarat)','',NULL,'','',NULL,'606, SHALIN HEIGHTH-5,C-WING, SARDARPATEL WING, ROAD,VINZOL, AHMEDABAD, Ahmedabad, Gujarat, 382445',NULL,NULL,'','','24AAQFK7427F1Z5','','AAQFK7427F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(157,'KHIMJI - K.D. SONS PVT. LTD','',NULL,'','',NULL,'621/A, Janpath, Saheed Nagar, Bhubaneswar - 751007',NULL,NULL,'','','21AABCK3660L1ZO','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(158,'King Star Freight Pvt Ltd','Bejoy Varghese',NULL,'','',NULL,'B-504, New Heritage, Near RBI Quarters Off Link Road,, Kandarpada\r\nDahisar West Mumbai India 400068',NULL,NULL,'','','27AAGCK2811A1Z3','','AAGCK2811A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(159,'Kirtanlal Steel Pvt Ltd','Balakrishna Alle',NULL,'','',NULL,'Unit 3 Office, World Trade Center, Level 9,, Tower 2. Kharadi, Pune-411014',NULL,NULL,'','','27AADCK0686J1ZA','','AADCK0686J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(160,'Kishinchand Chellaram College','',NULL,'','',NULL,'Vidyasagar K M Kundanani Chawk,, 124 Dinshaw Wachha Road,Churchgate,, Mumbai - 400020',NULL,NULL,'','','27AAATH0064R1ZD','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(161,'KMI Business Technologies Pvt. Ltd.','Neesa Yadav',NULL,'','',NULL,'1008, Dalamal House Nariman Point, Mumbai 400021',NULL,NULL,'22 22023021 / 2','','27AAACO7146E1ZJ','','AAACO7146E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(162,'K-NINE WRITING SYSTEMS PVT. LTD.','',NULL,'','',NULL,'Unit No A- 101/102/103/301/302, Third Floor, Sunflower, Industrial Building, Shivneri Marg, Ambedkar Chowk Jn, Off Goregaon -Mulund Link Road, Goregaon (E),, Mumbai - 400063',NULL,NULL,'','','27AADCK6643H1ZE','','AADCK6643H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(163,'KOSI BRIDGE INFRASTRUCTURE COMPANY LIMITED','Mr. Gautam Panchal',NULL,'','',NULL,'Unit 803, 8th Floor, A Wing, One BKC, Bandra Kurla Complex, Mumbai 400051',NULL,NULL,'','','','','AACCK8652M','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(164,'Kraj Accounting Services','',NULL,'','',NULL,'C-502, Adinath Avenue, Narsing Lane, Opp N L High School, S V Road, Malda West,Mumbai Maharashtra_400064 India',NULL,NULL,'','','27AGNPK8665L1ZI','','AGNPK8665L','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(165,'Krishna Panchal','',NULL,'','',NULL,'Noor Manzil, Plot 44, Pushpa Park, Malad East Mumbai-400 097',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(166,'Kristron Controls and Systems Pvt. Ltd.','',NULL,'','',NULL,'Unit No.2 &3, Jasraj Industrial Estate,, (off Western Exp Highway), Sativali Vasai-Station Road,, (Near M.L.K. Ind. Estate) Sativali, Vasai (E)- 401208.',NULL,NULL,'','','27AAECK2622H1ZQ','','AAECK2622H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(167,'Kristron Systems','',NULL,'','',NULL,'Unit No. 56, Ground Floor Shah and Nahar Industrial, Estate  A1, Sitaram adhav Marg, Lower Parel, Mumbai 400013',NULL,NULL,'','','27AFHPK8739E1Z6','','AFHPK8739E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(168,'Kritanlal International','Mr. Balakrishna',NULL,'','',NULL,'701 Mangalmurti, Linking Road, Santacruz, Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(169,'Lamps and Shades Boutique, Gold International Scho','',NULL,'','',NULL,'107, Doctor Centre, 135, August Kranti Marg, Kemps, Corner, Mumbai,  Maharashtra - 40036',NULL,NULL,'','','27ABCPM3407E1Z2','','ABCPM3407E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(170,'Laqshya Event IP Pvt. Ltd.','Shekhar Jadhav',NULL,'','',NULL,'Jogeshwari (East). Mumbai',NULL,NULL,'','','27AADCR3047E1ZL','','AADCR3047E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(171,'Laqshya Hyderabad Airport Media Pvt. Ltd.','Shekhar Jadhav',NULL,'','',NULL,'Old Site Office, Block-A,, GHIAL, RGIA, Ranga Reddy District,, Shamshabad, Hyderabad 501218.',NULL,NULL,'','','36AABCL3925F1ZP','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(172,'Laqshya Live Experiences Private Limited','',NULL,'','',NULL,'Laqshya House, Jaganlaxmi Build,, Jogeshwari (E),, Mumbai - 400 060',NULL,NULL,'','','27AADCL2838B1ZS','','AADCL2838B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(173,'Laqshya Live Experiences Private Limited (HARYANA)','',NULL,'','',NULL,'C-1603, Vatika City, Sovereign-1,, Gurgaon, Haryana - 122 002',NULL,NULL,'','','06AADCL2838B1ZW','','AADCL2838B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(174,'Laqshya Live Experiences Private Limited (ISD)','',NULL,'','',NULL,'Laqshya House, Laqshya House, Saraswati, Baug Society Road, Next to Rameshwar, Temple, Jogeshwari East, Mumbai, Mumbai, Suburban, Maharashtra, 400060',NULL,NULL,'','','27AADCL2838B2ZR','','AADCL2838B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(175,'Laqshya Media Limited (Bangalore)','',NULL,'','',NULL,'New No -13/1, Old No - 73/1, 2nd Floor, 2nd Main, Road, Above Namdhari Fresh, Vyalikaval,, Bangalore  - Karnataka - 560003',NULL,NULL,'','','29AAACL5004C1Z1','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(176,'Laqshya Media Limited (Noida)','',NULL,'','',NULL,'A36 Second Floor, Sector 4,  Noida, Gautam, Buddha, Nagar, Uttar Pradesh, 201301 India',NULL,NULL,'','','09AAACL5004C1Z3','','AAACL5004C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(177,'Laqshya Media Ltd.','Shekhar Jadhav',NULL,'','',NULL,'Laqshya House, Near Rameswar Temple,, Saraswati Baug, Society Road, Jogeshwari (E),, Mumbai - 400 060',NULL,NULL,'022 33086666','','27AAACL5004C1Z5','','AAACL5004C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(178,'LDS  INFOTECH PVT. LTD. (Sale)','',NULL,'','',NULL,'Ai 50 5, Pl O T No . 45/ 46 ,, Silver Pa Rk Bldg ,, Se Ctor 36, Komothe,, Navi Mumboi',NULL,NULL,'','','27AAACL4239K1ZD','','AAACL4239K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(179,'LEELA LOGISTICS\r\n','',NULL,'','',NULL,'Siddhivinayak Aartment, Shop No. 5, Jeevan Vikas, Kendra Marg, Near Chamunda Building, Sahar Road,, Koldongri, Andheri (East), Mumbai : 400069',NULL,NULL,'','','27AFZPV2109M2ZJ','','AFZPV2109M','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(180,'Life Health Foods India Private Limited','Mr. Rakesh Kanther.',NULL,'','',NULL,'2nd FLOOR, 213, ATLANTA ESTATE,, Dr. Ambedkar Chowk, Off. W. E. Highway,, Goregaon (East), Mumbai - 400 063',NULL,NULL,'022 - 29272028','','27AADCP2354C1ZR','','AADCP2354C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(181,'Life Health Foods India Pvt. Ltd.(ISD)','',NULL,'','',NULL,'2nd FLOOR, 213, ATLANTA ESTATE,, Dr. Ambedkar Chowk, Off. W. E. Highway,, Goregaon (East), Mumbai - 400 063',NULL,NULL,'','','27AADCP2354C3ZP','','AADCP2354C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(182,'Life Health Foods India Pvt Ltd (Madhya Pradesh)','',NULL,'','',NULL,'107, J.K.Road , Nainagiri , Bhopal,, Madhya Pradesh - 23',NULL,NULL,'','','23AADCP2354C1ZZ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(183,'LIGHT & GRIPS EQUIPMENT HIRERS I PRIVATE LIMITED','',NULL,'','',NULL,'4TH FLOOR, 103/359, PARVATI BUILDING, JSS ROAD,OPP, THAKURDWAR PO, MUMBAI, Mumbai City, Maharashtra, 400002\r',NULL,NULL,'','','27AABCL0737B1Z0','','AABCL0737B','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(184,'Lilavati Hospital and Research Center','',NULL,'','',NULL,'A-791, Bandra Reclamation Rd, Bandra (W), Mumbai-400050.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(185,'Liquidnectar India Private Limited','',NULL,'','',NULL,'flat no.703, gaurav villa Mahavir Nagar, Kandivali west,, Mumbai, Maharashtra 400067',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(186,'LITOLIER ARTEFACTS PVT LTD','Mr. Pradeep\r\n',NULL,'','',NULL,'106, Free Press House, 10th Floor, Nariman Point,, Mumbai 400 021.',NULL,NULL,'91-22-66176000','','27AAACL0613R1ZD','','AAACL0613R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(187,'Litolier,Light& Lighting,Pondy Marble\r\n','',NULL,'','',NULL,'First Floor,103-107,Plot No.135,Doctor Center, ugust Kranit Marg,Kemps Corner,Mumbai City,, Maharashtra-400036.',NULL,NULL,'','','27AASPM6882C1Z7','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(188,'LJ LAW','',NULL,'','',NULL,'Room No.10 , 4 Th Floor ; Central Bank of India, Bulding , Fort Mumbai - 400001',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(189,'LogicalDNa Solutions','',NULL,'','',NULL,'Office No 003, Ground Floor, Pentagon Tower No1, Magarpatta City Hadapsar Pune - 411028',NULL,NULL,'','','27AJBPG4710F1ZQ','','AJBPG4710F','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(190,'Logix Infosecurity Pvt. Ltd.','',NULL,'','',NULL,'Unit no.127, bldg. No. 2 (A-3), Sector - 1, Millenium Business Park,, Mahape, Navi Mumbai - 400 710',NULL,NULL,'','','27AAACL6138R1ZX','','AAACL6138R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(191,'MANGESH KULKARNI','',NULL,'','',NULL,'MIRA ROAD',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(192,'MANJUSHRI','',NULL,'','',NULL,'GOREGAON EAST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(193,'Mansarovar Complex CHS LTD','',NULL,'','',NULL,'Plot 1,2,3,4,5,6 Sector 34, Kamothe. Navi Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(194,'Massif Marketing (S)','',NULL,'','',NULL,'Ground Floor, Unit No. 54-55,, Udyog Bhavan, Sonawala Lane,, Goregaon (East), Mumbai - 400063',NULL,NULL,'','','27AAHFM7268D1Z3','','AAHFM7268D','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(195,'MATRIX TVS SHOWROOM','',NULL,'','',NULL,'MIRA ROAD',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(196,'Mayank Patel','',NULL,'','',NULL,'Charkop, Kandivali W',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(197,'MAZEWEB TECHNOLOGIES PVT LTD(Sales)','',NULL,'','',NULL,'B-203, Ruby Apts,, Andheri-Kurla Road,, Andheri ? East,, Mumbai ? 400 069',NULL,NULL,'','','27AAFCM0251M1ZF','','AAFCM 0251 M\r\n','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(198,'Media Pasta Pvt. Ltd.','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(199,'Medizee Sdn Bhd (1374338-D)','',NULL,'','',NULL,'Unit 100.5.043, Level 5, Block J, 129 Offices,Jaya One,, 72A Jln Prof. Diraja Ungku Aziz (Jln Universiti),, 46200 Petaling Jaya, Selangor, Malaysia\r\n, Phone :+60 379555889\r\n',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(200,'Megahertz (Sales)','',NULL,'','',NULL,'',NULL,NULL,'','','27ARPPV9109H1Z2','','ARPPV9109H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(201,'MICRONIC SYSTEM SERVICES.','',NULL,'','',NULL,'Office No. 101, 1st Floor, A Wing, Shyamkamal Building, Tejpal Road, Near Agarwal Market, Opp. Deenanath Mangeshkar Hall,, Vile-Parle (East) Mumbai ? 400057',NULL,NULL,'','','27AABPG2299J1ZK','','AABPG2299J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(202,'MILIN PATEL(SALES)','',NULL,'','',NULL,'THANE',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(203,'MIRACLE TECHNOLOGIES','',NULL,'','',NULL,'926/927, ajmera sikova, sikova lane, near Ashok mills,, LBS Road, Ghatkopar west.',NULL,NULL,'','','27AARFM1584E1Z0','','AARFM1584E','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(204,'MOBILES AND ACCESSORIES','',NULL,'','',NULL,'16, RATNAJYOT INDUSTRIAL PREMISES,, IRLA GOATHAN ROAD, VILE PARLA WEST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(205,'MobiTrail','',NULL,'','',NULL,'205, Triumph Industrial Estate, Near Express Zone, Building, Goregaon East, Mumbai 400 063',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(206,'Mr. Akash Kamble','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(207,'MR. ANAND INDIA','',NULL,'','',NULL,'MIRA ROAD EAST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(208,'Mr. Anand Shirodkar','',NULL,'','',NULL,'Dindoshi, Gokuldham, Goregaon',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(209,'Mr.Avik Kumar Das','',NULL,'','',NULL,'38/4 Danesh Seikh Lane, Flat-C2, 2nd Floor, near, Mamoni Studio, Post Office-, Danesh Sk. Lane, Howrah, West Bengal, Pin Code- 711109',NULL,NULL,'','','','','AEYPD5611G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(210,'Mr.Bipin Dave','',NULL,'','',NULL,'A-502, TIVOLI TERRACE CHS LTD, NATWAR NAGAR ROAD NO:5, JOGESHWARI ? EAST, MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(211,'MRF LIMITED - TRICHY (RADIAL) PLANT','',NULL,'','',NULL,'NARANAMANGALAM , PERAMBALUR, PERAMBALUR 621109, TAMIL NADU,, State Code:33',NULL,NULL,'','','33AAACM4154G1ZU','','AAACM4154G','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(212,'Mr. Haresh Mendpara','',NULL,'','',NULL,'Flt# 42, 4th Floor, Divine Path,, Gulmohar Cross Road No 4, JVPD',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(213,'Mr. Heli Parulekar','',NULL,'','',NULL,'Mahim, Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(214,'Mr. Kedar Kavathankar','',NULL,'','',NULL,'Flat no. 101, JVM Florencia, Next to Dyan Ganga college,, Boriwade, G. B. Road, Kasarvadavali, Thane west - 400615.',NULL,NULL,'','','','','CLQPK4489J','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(215,'MR. KISHORE SURVE','',NULL,'','',NULL,'KANDIVALI W, MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(216,'Mr.Nanhelal','',NULL,'','',NULL,'M/s.Bombay Gift Products, Vasai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(217,'Mr. Rajnikant P Trivedi','',NULL,'','',NULL,'MahavirNagar Borivali',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(218,'Mr.Sanjay Dhengale','',NULL,'','',NULL,'BORIWALI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(219,'Mrs.Manjushree Suresh Jamdade','',NULL,'','',NULL,'A/26 kantilal chowl shreyas colony Aarey  Road no1, Goregaon (E.)Mumbai no 63',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(220,'MR. SOUMITRA RANADE','',NULL,'','',NULL,'MIRA ROAD',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(221,'Mrs. Rohini S. Agrawal','Ms Rohini Agrawal',NULL,'','',NULL,'B-23, 101, Sector XI, Shanti Nagar, OPP NEW INDIA CO OP BANK,, Mira Road (East), Thane - 401 107',NULL,NULL,'','','','','ABBPA0214A','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(222,'Mr.Subhash Sahu','',NULL,'','',NULL,'C20- 204, MHADA, Near NNP 1&2, Goregaon E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(223,'Mr.Vipul Nathwani','',NULL,'','',NULL,'Mumbai Goregaon',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(224,'M/s. AAYU INFOSYSTEMS PVT LTD','',NULL,'','',NULL,'4th Floor, Unit 415, BUILD NO. 2 , Diamoda Gold Diamond Compound,, S.V Road, Near H P Petrol PUMP. Dahisar (E), Mumbai, 400068',NULL,NULL,'','','27AAMCA2884P1ZV','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(225,'M/s. AdRoom Creative','',NULL,'','',NULL,'215, Rudra Arcade, Near Mamlatdar Office,, N H 48, Killa Pardi, Gujarat',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(226,'M/s.Adventura Tours Private Limited','',NULL,'','',NULL,'Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(227,'M/s. Alliance Pro IT Private Limited','',NULL,'','',NULL,'50, Saanvi Classic, Jayabheri Enclave,, Gachibowli,Hyderabad - 500032',NULL,NULL,'','','36AAMCA1924A1Z4','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(228,'M/s. Al Nowras Logistics Solutions LLC','',NULL,'','',NULL,'GISTICS SOLUTIONS LLC/1ST FLOOR,MUS, CAT, MUSCAT, 1517,OM',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(229,'M/s. Benchmark Infotech Sdn. Bhd.','',NULL,'','',NULL,'2nd Floor, 54C Jalan Desa Bakti Taman Desa Town Center, Taman Desa, 58100 Kuala Lumpur',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(230,'M/s. Biotech Consortium India Limited','',NULL,'','',NULL,'Kochi',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(231,'M/s. Blend Financial Services Limited','Mr. Devendra Bhavsar',NULL,'','',NULL,'404, C-Wing, 4th Floor,, Pramukh Plaza, Cardinal Gracious Road, Chakala, Andheri (East),, Mumbai-400099.',NULL,NULL,'','','','','AAACB6024C','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(232,'M/s.BSH Hould Appliances Manufacturing Pvt.Ltd.','',NULL,'','',NULL,'Arena House, 2nd Floor Main Building, Plot No.103, Road, No.12, MIDC, Andheri East,',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(233,'M/s.Casting Wire LLP','',NULL,'','',NULL,'10, Vivekanand Gram Jogiwala, Dehradun., Uttarakhand - 248005',NULL,NULL,'','','05AARFC1808R1ZY','','AARFC1808R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(234,'M/s. CDA Technologies India Private Limited. \r','',NULL,'','',NULL,'3rd Floor, Sreshta Marvel Sy.No.136, Kondapur Main Road,, Gachibowli, Hyderabad, Telangana, 500032.',NULL,NULL,'','','36AADCC0546K1ZQ','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(235,'M/S. CHAITANYA GROUP','',NULL,'','',NULL,'Radha Kunj Bungalow, Near Silver Coin Hotel,, Opp Corporation Bank, IC Colony, Borivali West, MUMBAI',NULL,NULL,'','','','','AACFC5653K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(236,'M/S CHETTINAD HOLDING PVT. LTD.','',NULL,'','',NULL,'THE CAPITAL, 306 A, BEHIND ICICI,, BKC, BANDRA (E), MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(237,'M/s.Cloudlink Systems','',NULL,'','',NULL,'145, Ankush Society , Ashok Nagar, AK, Road,JB Nagar, Marol Pipe Line, Mumbai,, Maharashtra 400059',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(238,'M/s.Color Blast','',NULL,'','',NULL,'502, L3B, Oakland Park Appartments,, Lokandwala Complex, Andheri (W), Mumbai-400053',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(239,'M/s. Corel Digimart LLP','',NULL,'','',NULL,'67/1-1, Pravara, HB Samaja Road,, Basavanagudi, Bangalore 560004',NULL,NULL,'','','29AASFC6208N1ZR','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(240,'M/s. Expo Universe','',NULL,'','',NULL,'20/26, B BHARUCHA MARG, FORT, KALAGHODA, Mumbai, City, Maharashtra, 400001',NULL,NULL,'','','27AABFE2329K1ZI','','AABFE2329K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(241,'M/s.Fiberlink India Pvt.Ltd.','',NULL,'','',NULL,'414, 3rd Floor, Regent Indignia, 100Ft Rd., 4th Block, Koramangala, Banglore- 560095',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(242,'M/s. FirstRand Services Pvt. Ltd','Ratnakar Mishra',NULL,'ratnakar.mishra@rmb.co.za','',NULL,'2nd Floor, Tower II, Phase II, Raiaskaran Tech, Park,Sakinaka, Andheri (E), Mumbai-400072',NULL,NULL,'022 66258600','','27AACCF1607R1ZD','','AACCF1607R','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(243,'M/s.Gemsons Constructions Pvt. Ltd,','',NULL,'','',NULL,'1203, CELLO TRIUMPH, I. B. ROAD, GOREGOAN E, MUMBAI',NULL,NULL,'','','','','AAECG9974G\r\n','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(244,'M/s. Ghanshyam Co-op. Industrial Estate Ltd.','',NULL,'','',NULL,'Veera Desai Road, Andheri (west), Mumbai - 400053',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(245,'M/s. Goldcube Fintech','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(246,'M/S.Gurjar Gems	Pvt. Ltd','',NULL,'','',NULL,'Plot No. F-17  MIDC,Marol Industrial Area,, Opposite Seepz,Andheri East,Mumbai Suburban,, Maharashtra-400093',NULL,NULL,'','','27AAACG3685L1Z8','','AAACG3685','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(247,'M/s. Hill Zill Wines Pvt. Ltd.','',NULL,'','',NULL,'203, 2nd Floor, Nirman Industrial estate, Behind Fire Bridage, Chincholi Bunder, Malad west, 400067',NULL,NULL,'','','27AAFCH5702E1ZV','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(248,'M/s.Icons Infocom Pvt Ltd.','',NULL,'','',NULL,'2 Nd Floor, 215, Kartik Complex, New Link Road Opp, Laxmi Industrial Estate, Andheri West Mumbai City',NULL,NULL,'','','27AABCI3633F1ZU','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(249,'M/s.ICSDC Consultants LLP','',NULL,'','',NULL,'Block D,331, Greater Noida Expressway,, Sector 108,Noida, Uttar Pradesh - 201304.',NULL,NULL,'','','09AAIFI8986K1ZE','','AAIFI8986K','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(250,'M/s.ICSDC Pvt. Ltd.','',NULL,'','',NULL,'Block D,331, Greater Noida Expressway,, Sector 108, Noida, Gautambuddha Nagar,, UP- 201304',NULL,NULL,'','','09AAHCI7720D1ZM','','AAHCI7720D','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(251,'M/s. IEEC POWER ELECTRONICS Pvt. Ltd','MR.ANIL MESTRY',NULL,'','',NULL,'72-BCD, IEEC HOUSE,, GOVERNMENT INDL.ESTATE,, CHARKOP, KANDIVLI (WEST), MUMBAI ? 400 067.',NULL,NULL,'022-42418282','','27AAACP2508H1ZO','','AAACP2508H','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(252,'M/s.Jamnabai Narsee International School','',NULL,'','',NULL,'Narsee Monjee Marg, N.S. Road No. 7, J..V.P.D. Scheme Vile Parle (West) Mumbai,',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(253,'M/s.Jam Research Services','',NULL,'','',NULL,'Malad (West), MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:22','2025-08-01 16:49:27'),(254,'M/s. Jet Point Insurance & Investment Consultancy','Ms.Rohini Agarwal',NULL,'rohiniagrawal.jetpoint@gmail.com','',NULL,'B-23, 101, Sector XI, Shanti Nagar, OPP NEW INDIA CO OP BANK,, Mira Road (East), Thane - 401 107',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(255,'M/s. Kalnirnay','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(256,'M/s. KASTURI CO-OPERATIVE HOUSING SOCIETY LTD','',NULL,'','',NULL,'Sector 10, Kharghar',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(257,'M/s KHEVNA INTERNATIONAL LLP','',NULL,'','',NULL,'01, GOPAL NIWAS, TEJPAL SCHEME ROAD NO.5,, VILE PALE (EAST), MUMBAI: - 400057,',NULL,NULL,'','','27AAQFK7427F1ZZ','','AAQFK7427F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(258,'M/S.KOKUYOCAMLIN LTD','Mr. Ashish Mehta',NULL,'','',NULL,'Ground Floor, 48/2, Hilton House, MIDC, Central Road, Opp. Gold Finch, Andheri, East, Mumbai, Mumbai Suburban,, Maharashtra, 400093',NULL,NULL,'','','27AAACC1647E2Z0','','AAACC1647E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(259,'M/S. Krishna Solvechem Ltd','',NULL,'','',NULL,'5Th Floor, B-503, Sahayog Bldg, Above Central, Bank Of India,, S V Road, kandivali West, Mumbai, Maharashtra-400067.',NULL,NULL,'','','27AACCK7702J1ZG','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(260,'M/S.Maharashtra State Electricity Transmission Co.','S.R Dubey',NULL,'','',NULL,'Circle Office, Kalwa Thane',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(261,'Ms.Mamta Dave','',NULL,'','',NULL,'MIRAROAD',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(262,'M/s. Man Investment Services Pvt Ltd','',NULL,'','',NULL,'403, Peninsula Heights, C D Barfiwala Marg,, Juhu Lane, Andheri (W), Mumbai - 400058, MAHARASHTRA',NULL,NULL,'','','27AAECP8151G2ZA','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(263,'M/s.Methibai Devraj Gundecha Foundations Chatrabhu','Umakant Dandekar',NULL,'','',NULL,'Valley of Flower, Next to Gundecha Premiere Tower, Kandivali East, Mumbai 400101',NULL,NULL,'(022) 28866677 ','','','','AACTM6334M','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(264,'M/s. Minal Mandir CHS (Anmol Complex)','',NULL,'','',NULL,'Minal  Mandir CHS CO-OP HSG Society Limited ,, Anderi  Kurla Road, Anderi  East, Mumbai -59',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(265,'M/s. Mindwave Systems Pvt. Ltd.','',NULL,'','',NULL,'170, C wing, Akurli Industrial Estate, \r, Akurli Road, Kandivali East, Mumbai - 400101.\r',NULL,NULL,'','','27AAGCM2596Q1ZM','','AAGCM2596Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(266,'M/s. NISHA INFOTECH.','',NULL,'','',NULL,'104, E, AMWAAJ RESIDENCY, B/H HYATT RESIDENCY, AHMEDABAD, Ahmedabad, Gujarat, 380055',NULL,NULL,'','','24EYSPP1438M1ZQ','','EYSPP1438M','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(267,'M/s.Nowrosjee Wadia & Sons Ltd.','',NULL,'','',NULL,'4TH FLOOR, NEVILLE HOUSE, NEVILLE HOUSE, J.N., HEREDIA MARG, BALLARD ESTATE, Mumbai City,, Maharashtra, 400001\r\n',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(268,'M/s.NUTRISMART AGRO FOOD PVT LTD','Mr. AMIT PAUL',NULL,'','',NULL,'3B ,Lal Bazar Street, Basemen Room No : 6, Kolkata : 700001.',NULL,NULL,'','','','','AALCS5181Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(269,'M/S. Paperboat Design Studio Pvt Ltd ( Hyderabad)','',NULL,'','',NULL,'LP Tower, Plot no.56, Vittal Rao Nagar, Hi-tech City Road, HUDA Techno Enclave,, Madhapur, Hyderabad, Telangana - 500081',NULL,NULL,'','','36AAHCP3147R1ZS','','AAHCP3147R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(270,'M/s.Paperboat Design Studios Private Limited','Mr. Mayank',NULL,'','',NULL,'501, 5th Floor, Hari Om IT Park, near Delta Garden, Mira Road (E) Thane 401107. Maharashtra, INDIA',NULL,NULL,'','','27AAHCP3147R1ZR','','AAHCP3147R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(271,'M/s.Paperboat Design Studios Private Limited (Rent','Mr. Mayank',NULL,'','',NULL,'801, Sai Arpan, Sai Complex, Next to P G Vora School,, Mira Road (East), Thane- 401107.\r\n',NULL,NULL,'','','27AAHCP3147R1ZR','','AAHCP3147R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(272,'M/s. Petronet  LNG Limited','',NULL,'','',NULL,'Dahej LNG Terminal, GIDC Industrial Estate,, Plot No : 7, Dahej, Taluka-Vagra,, Dist. Bharuch - 392130',NULL,NULL,'','','24AAACP8148D1ZM','','AAACP8148D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(273,'M/s. Popular Switch Gears.','',NULL,'','',NULL,'712 Arun Chambers, Tardeo Main Road, \r, Mumbai Central (W), MUMBAI 400037 \r',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(274,'M/S. Popular Switchgears Pvt Ltd','',NULL,'','',NULL,'7th Floor, 712, Arun Chambers, Tardeo Road, Tardeo, Mumbai,, Maharashtra, 400034',NULL,NULL,'','','27AABCP6540N1Z2','','AABCP6540N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(275,'M/s.Power Line Enterprise','',NULL,'','',NULL,'Gunjal park, satpur trimbak road.\r, 422007',NULL,NULL,'','','27AAVPM0360J1ZC','','AAVPM0360J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(276,'M/s. Prism IT Solutions Pvt Ltd.','',NULL,'','',NULL,'Natubagh Ground, Third Floor, 305, Bharat Bhawan, DajiSaheb Natu Path,1360,Shukrawar Peth,Pune,Pune, Maharashtra,411002.',NULL,NULL,'','','27AADCP9953F1Z2','','AADCP9953F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(277,'M/s. Raltech Precision Engineering Pvt. Ltd.','Mr. Ralph / Mr. Jude',NULL,'','',NULL,'Plot I-3, Cama Industrial Estate, Walbhat Road,, Goregaon East, Mumbai 400063\r\n\r\n',NULL,NULL,'','','27AAGCR9391A1Z7','','AAGCR9391A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(278,'M/s. RD. & S.H. NATIONAL COLLEGE','',NULL,'','',NULL,'Link Road , Bandra (W), Mumbai - 50',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(279,'M/S.  Regh Animation and Design','Mr. Sangram Borse',NULL,'','',NULL,'Lodha Supremus, 607, 6th Floor, Road No.22,, Wagle EstateThane, Mumbai, 400601.',NULL,NULL,'','','27BTEPB6254R1Z7','','BTRPB6254R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(280,'Ms.Rupali Thakur','',NULL,'','',NULL,'Borival, Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(281,'M/s S3K (I) Pvt. Ltd.','',NULL,'','',NULL,'S-25/26, Sej Plaza, Marve Road,, Malad (W). Mumbai 400 064.',NULL,NULL,'','','27AAOCS5211N1ZW','','AAOCS5211N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(282,'M/S.Sanklecha Constructions Pvt.Ltd','',NULL,'','',NULL,'53,5th floor, Business Bay, Shree Hari Khute marg,, Mumbai naka, Nashik-422002',NULL,NULL,'','','27AAGCS0803A2ZY','','AAGCS0803A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(283,'M/s.SAREGAMA India Ltd.','',NULL,'','',NULL,'Plot 30/B,1st Floor,High Tide Building,Juhu Tara, Road Santacruz West,Mumbai,Maharashtra 400049 \r\n',NULL,NULL,'','','','','AAACT9815B\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(284,'M/s.SECMEC Consultants Private Limited','',NULL,'','',NULL,'601, B Wing, Godrej Coliseum, Off Eastern Express Highway, Chunabhatti, Sion, Mumbai 400 022',NULL,NULL,'','','27AAOCS2086B1ZA','','AAOCS2086B','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(285,'Ms. Shilpa Ranade','',NULL,'','',NULL,'Powai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(286,'M/s.Shilp Consulting Engineers','',NULL,'','',NULL,'421 Corporate Avenue, Sonavala lane, Goregaon East, Mumbai.',NULL,NULL,'','','27ABBFS1298L1ZQ','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(287,'Ms. Shini Nair','',NULL,'','',NULL,'D 102 , new Ushanagar, Village road , Bhandup West, 400078',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(288,'M/s. Shripad Kulkarni and Associates','',NULL,'','',NULL,'401 Sai Sharan, N C Kelkar Road, Dadar,, Mumbai 400028',NULL,NULL,'','','27AIUPK9947Q1ZT','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(289,'M/s. S N & Co.','',NULL,'','',NULL,'Swastik Building 1st Floor,Near ICICI Bank,, Chamunda Circle, Borivali West, Mumbai-400092',NULL,NULL,'','','27ABMFS8340L1ZI','','ABMFS8340L','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(290,'M/S. SOCIOFFICE PVT. LTD.','',NULL,'','',NULL,'ANDHERI EAST MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(291,'M/s. Sunrise CHS','',NULL,'','',NULL,'Goregaon, Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(292,'Ms. Sushama Sitaram Chudji.','',NULL,'','',NULL,'Miraroad',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(293,'M/s.S.V.Enterprises','',NULL,'','',NULL,'Unit No 147, Veena Dalvai Ind.Est., S.V.Road,, Jogeshwari (West)',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(294,'M/s.Taurus Contractors Pvt. Ltd.','',NULL,'','',NULL,'20/26 Bharucha Marg, Kalaghoda, Mumbai 400 001',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(295,'M/s.Ultimate Trading & Commercial Pvt.Ltd.','',NULL,'','',NULL,'155, C Wing, Mittal Court,, Nariman Point,, MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(296,'M/S Venus Constructions','Vipul Shah',NULL,'','',NULL,'Shop 10 Venus., Vstech-Shop No 6 & 7,, Gokul Bldg, Near Farukh School,, Jogeshwari West, Mumbai 102',NULL,NULL,'','','27ACVPS3577R1Z5','','ACVPS3577R \r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(297,'M/s. Vistas Media Capital Pte Ltd','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(298,'M/s. VKMG & Associates LLP','',NULL,'','',NULL,'105, Lotus Business Park, Ram Baug Lane, Off S V Road,, Malad (West), Mumbai ? 400064',NULL,NULL,'','','27AARFV2005M1ZS','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(299,'M/S VSTECH','',NULL,'','',NULL,'Jogeshwari (West). Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(300,'M/s. WREN SEVEN TECHNO SOLUTIONS PVT LTD','',NULL,'','',NULL,'WE Hub, Dr. B.R. Ambedkar Open University T-, SAT Network Premises,Jubilee Hills, Hyderabad, Telangana,IN 500033\r\n',NULL,NULL,'','','36AACCW0863E1ZG','','AACCW0863E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(301,'M/s. Yash Network Solutions.','',NULL,'','',NULL,'402,DHEERAJ NARMADA-2 , CHINCHOLI CROSS ROAD, MALAD (WEST) MUMBAI',NULL,NULL,'','','27ASZPK9093N1ZD','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(302,'MTTS TRUST','',NULL,'','',NULL,'MTTS TRUST, Near GHMC P JR Stadium, HUDA Colony,, Chandanagar, A-410, E T Classic Hyderabad,, Telangana 500050',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(303,'Mughal Raj Cargo Transports By Heavy & Liight Truc','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(304,'MUKESH PRAJAPATI','',NULL,'','',NULL,'MIRA ROAD E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(305,'Mumbai Nasik Expressway Private Limited','Mr. Gautam Panchal',NULL,'','',NULL,'Unit 803, 8th Floor, A Wing, One BKC, Bandra Kurla Complex, Mumbai 400051',NULL,NULL,'','','27AAECM3349K1Z7','','AAECM3349K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(306,'Navkar Infotech','',NULL,'','',NULL,'607, Anand Mangal III, Opp. Core House, Nr. Apollo Hospitals,, Ambawadi, Ahmedabad ? 380006.',NULL,NULL,'','','24ABRPL2278F1ZH','','ABRPL2278F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(307,'NEELIMA BHALCHANDRA DEODHAR','',NULL,'','',NULL,'',NULL,NULL,'','','','','ADPPD2320Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(308,'NEXSUS BUSINESS SOLUTIONS PRIVATE LIMITED','',NULL,'','',NULL,'7TH, 704 706, ANTARIKSHA, MAKVANA LANE OFF ANDHERI, KURLA ROAD, ANDHERI EAST, Mumbai City, Maharashtra, 400059',NULL,NULL,'','','27AAFCN1840D1ZS','','AAFCN1840D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(309,'NINAD MANE','',NULL,'','',NULL,'BORIVALI W',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(310,'Nisha Infotech','Dhanesh Kuvar',NULL,'','',NULL,'Plot No 559,Room No 30,, Archana Co-Op HSG So Sector No 5,, Near Charkop Depot,, Charkop Kandivali (W), Mumbai 400 067	',NULL,NULL,'','','','','EAPPK0342J\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(311,'Nityanand Desai','',NULL,'','',NULL,'Radha Residensi Kandivali ( East), Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(312,'Niyura Technologies Private Limited.','Vidya Jha',NULL,'','',NULL,'Unit No. 353, Mastermind 1, Royal Palms,, Aarey Milk Colony, Goregaon (East),, Mumbai ? 400065.',NULL,NULL,'022 62364954.','','27AAFCN8422P1ZV','','AAFCN8422P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(313,'Nmahendra and Associates','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(314,'Omsav Pharma Research Pvt Ltd','Ms. Namrata Acharya',NULL,'','',NULL,'S 57 3, PARISHRAM INDUSTRIAL HUB, S, 138 VASNA CHACHARVADI, SANAND,, Ahmedabad, Gujarat, 382213',NULL,NULL,'','','24AACCO2784N1Z2','','AACCO2784N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(315,'Online Systems','',NULL,'','',NULL,'A-105, Arjun Centre , B.S Devshi Marg, Deonar,, Mumbai - 400 088',NULL,NULL,'','','27AAFO1180D1ZP','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(316,'Onsite GO','',NULL,'','',NULL,'702, Kushwah Chambers,, Makwana Road, Marol, Andheri East,, Mumbai 400059',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(317,'Orient Exchange & Financial Services (P) Ltd','',NULL,'','',NULL,'Shop No-2, Tulsi Terrace, Ground Floor,, 275 Shaheed Bhagat Singh Road Fort ,, Mumbai 400 001',NULL,NULL,'','','27AAACL9293P1ZN','','AAACL9293P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(318,'ORIGIN HAK COMMUNICATION PVT LTD','Uma Ramakrishnan',NULL,'','',NULL,'B/49//196 1st Floor, L Shree Niwas Siddha CHSL,, Siddharth Nagar, Rd No 2, Goregaon West. Mumbai -400104',NULL,NULL,'022 28712249','','','','AABCO0697B\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(319,'OTET INFOSYSTEMS','',NULL,'','',NULL,'FIRST, 113, Virar Industrial Estate, OFF Veer, Savarkar Road, Panchpayari, Virar East,, Vasai Virar, Palghar, Maharashtra, 401305',NULL,NULL,'','','27AAFFO2493J1ZX','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(320,'PANASIA COMMUNICATION & CONSULTANTS','',NULL,'','',NULL,'1ST FLR, A-107, GHATKOPAR INDUSTRIAL ESTATE, LBS MARG,, GHATKOPAR, Mumbai City, Maharashtra, 400086',NULL,NULL,'','','27BCPPR3693J1ZQ','','BCPPR3693J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(321,'Paramount Wheels Pvt. Ltd. (Dahisar WS)','Mr. Rajeev Arora',NULL,'','',NULL,'Opposite Prema Laxman School,, Ajit Palace Hotel Lane,, Near Dahisar Check Naka,, Panker Pada, Mira Road, Dist Thane -401104',NULL,NULL,'','','27AAFCP7673Q1ZG','','AAFCP7673Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(322,'PARAMOUNT WHEELS PVT. LTD Goregaon WS','',NULL,'','',NULL,'CTS Survey No 639/246, Santosh Nagar, Film City Road,, Goregaon (E), Mumbai',NULL,NULL,'','','27AAFCP7673Q1ZG','','AAFCP7673Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(323,'Paramount Wheels Pvt Ltd (Meru VS)','Mr. Rajeev Arora',NULL,'','',NULL,'Survey No. 2, Punjab Foundry,, Industrial Estate, Classic Studio Lane,, Kashi Mira Road (E), Mira Road ,, Dist. Thane 401104',NULL,NULL,'','','27AAFCP7673Q1ZG','','AAFCP7673Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(324,'Paramount Wheels Pvt Ltd (Nexa Show Room)','Mr. Rajeev Arora',NULL,'','',NULL,'SANJAR BUSINESS PARK, NEAR STATE BANK OF INDIA,, NATIONAL HIGHWAY NO.8, KASHI-MIRA, DISTRICT THANE ,, MIRA ROAD (E) - 401104',NULL,NULL,'','','27AAFCP7673Q1ZG','','AAFCP7673Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(325,'PARAMOUNT WHEELS PVT. LTD SHOWROOM MIRA ROAD','Mr.  Rajeev Arora',NULL,'','',NULL,'Velvin Centre, A1 /A & B,, Hatkesh Udyog Nagar,, Mira Bhayander Road, Mira Road, Thane',NULL,NULL,'','','27AAFCP7673Q1ZG','','AAFCP7673Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(326,'Paramount Wheels Pvt Ltd (Wada VS)','Mr. Rajeev Arora',NULL,'','',NULL,'SaiKrupa Bldg, Survey No. 133, Village Gandhare, Post-Kone,, Wada - Bhiwandi Road,, Tal - WADA, Dist Palghar',NULL,NULL,'','','27AAFCP7673Q1ZG','','AAFCP7673Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(327,'Parrami Finance Private Limited','',NULL,'','',NULL,'403,4th Floor,Peninsula Heights,C D Barfiwala Lane, Andheri (West), Mumbai-400058.',NULL,NULL,'','','27AALCP0292K1Z1','','AALCP0292K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(328,'PARSHWA INTERNATIONAL','',NULL,'','',NULL,'PLOT NO 8, SECTOR 8A, SIDCUL HARIDWAR, Haridwar, Uttarakhand, 249407',NULL,NULL,'','','05AAKFP7355F1Z3','','AAKFP7355F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(329,'PATEL INTEGRATED LOGISTICS LIMITED','',NULL,'','',NULL,'PLOT NO 48, PATEL HOUSE GAZDAR BANDH, NORTH, AVENUE ROAD, SANTACRUZ WEST, Mumbai Suburban,, Maharashtra, 400054',NULL,NULL,'','','27AAACP6445K2Z4','','AAACP6445K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(330,'PATNA HIGHWAY PROJECTS Ltd','',NULL,'','',NULL,'Mr. Sutanu Sinha, Resolution Professional, Anant Kamtaul, Muzzaffarpur, Muzzaffarpur,, Bihar 844120',NULL,NULL,'','','10AAFCP2788Q1ZX','','AAFCP2788Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(331,'PC TECHNOWLEDGE CENTER PVT LTD','',NULL,'','',NULL,'C/O. KAMAT & CO., 133-FREIGHT FORWARDERS PREMISES,, DRONAGIRI,NAVI MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(332,'Peak Infrastructure Management Services Pvt. Ltd','Mr. Gautam Panchal',NULL,'','',NULL,'Unit No. 703, 7th Floor, Tower 3,, Equinox Business park, Off BKC, LBS Marg,, Mumbai - 400 070',NULL,NULL,'','','27AAICP3711A1ZV','','AAICP3711A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(333,'PEAK PERFORMANCE EVENT PVT LTD','',NULL,'','',NULL,'514 CRYSTAL PARADISE, OFF VEERA DESAI ROAD, ANDHERI WEST MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(334,'PeopleQ Consulting','',NULL,'','',NULL,'Flat 103, Lotus Mangalam Aananda, Near Sanganer, Railway Station, Sanganer, Jaipur, Rajasthan, 302029',NULL,NULL,'','','08CEXPS5962Q1ZY','','CEXPS5962Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(335,'PeopleQ Consulting Services','',NULL,'','',NULL,'5th FLOOR, 502 A, WING B, ACKRUTI TRADE CENTRE,ROAD NO 7, MAROL, NEAR JVOI INDS,MIDC PKT NO 10,Andheri E, Mumbai City,',NULL,NULL,'','','27CEXPS5962Q1ZY','','CEXPS5962Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(336,'Peritum Online','',NULL,'','',NULL,'19th Floor, D12A/1902, Supertech Ecovillage 3, Sector 16B,, Greater Noida West, Gautam Buddhar Nagar, Uttar Pradesh 201309',NULL,NULL,'','','09AUGPP5554L2ZY','','AUGPP5554L','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(337,'Planfirma Technologies Private Limited','',NULL,'','',NULL,'OFFICE NO.,601 TO 606, 6TH FLR,RAINBOW CHAMBERS, S, V ROAD,POISAR,KANDIVALI WEST,, MUMBAI - 400067',NULL,NULL,'','','27AAGCP0098J1Z4','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(338,'PLANNERS','Mahesh Patil',NULL,'','',NULL,'Dyaneshwar Road ,103,Sutlej ,Green View Complex, Near ST Depot ,Borivali East , Mumbai.',NULL,NULL,'9892209252','','27AAJPP6792R1ZH\r\n','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(339,'POWER COMPUTERS','',NULL,'','',NULL,'A/8, PATEL PARK NEHRU ROAD, OPP., MILITTARY CAMP,SANTACRUZ (E), MUMBAI 400029',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(340,'POWER PRINT CARTRIDGES PVT. LTD.(KAN)Sales','Mr. Nishit Desai',NULL,'','',NULL,'D/79, Akurli Industrial Est.,, Near Big Bazaar, Akurli Road, Kandivali East\r\n\r\n, Mumbai 400 101.',NULL,NULL,'','','27AAECP0646A1ZV','','AAECP0646A?\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(341,'Prabhakar Potdar','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,0,'2025-08-01 09:39:23','2025-09-05 09:42:42'),(342,'PRAVIITH TECHNO SOLUTIONS','',NULL,'','',NULL,'BUILDING NO-75,FLAT NO D-902, PREM BELAIRE, ROAD, NO 13, TILAKNAGAR, Mumbai Suburban, Maharashtra, 400089',NULL,NULL,'','','27AFXPD7201E1ZI','','AFXPD7201E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(343,'Precise Alloys Pvt Ltd.','',NULL,'','',NULL,'G-20 /2, MIDC , Tarapur, Dist Thane,, Pin - 401 506',NULL,NULL,'','','27AAACP9548B1ZE','','AAACP9548B','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(344,'Prem Raj Office Automation','',NULL,'','',NULL,'212, Agarwal B2B Center,, Kanchpada, Malad(W),Mumbai',NULL,NULL,'','','27AAAFP3696F1Z3','','AAAFP3696F ? ?\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(345,'PRINTING IMPACT INTECH','',NULL,'','',NULL,'MIRA ROAD EAST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(346,'PRINT SPOT','',NULL,'','',NULL,'Shop No. 4, Suraj Heights Tower, Walbhat Road,, Near Sharma Ind. Estate, Goregaon (E),, MUMBAI Maharashtra 400063',NULL,NULL,'','','27EPDPP0949K1ZF','','EPDPP0949K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(347,'Priya Kulkarni','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(348,'PROF A. K. AGRAWAL SIR','',NULL,'','',NULL,'CBD BELAPUR',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(349,'Project Planners','Mr. Mahesh Patil',NULL,'','',NULL,'103,Sutlej, Green View Complex,, Dnyaneshwar Road,, Next to Nancy S.T.Depot.,, Borivali East. Mumbai ,400 066',NULL,NULL,'','','','','AIOPP9860D\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(350,'Qsquality services Pvt. Ltd.','',NULL,'','',NULL,'S-1/39, Jai Krishna Sudama,, Bangur Nagar, Goregaon West, Mumbai',NULL,NULL,'','','27AAACQ3004F1ZY','','AAACQ3004F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(351,'RAH INFOTECH PRIVATE LIMITED','',NULL,'','',NULL,'A-11, Okhla Industrial Area, Phase I, New Delhi, DL 110020 India',NULL,NULL,'','','07AADCR0731R1Z3','','AADCR0731R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(352,'Rahi Systems Private Limited','',NULL,'','',NULL,'Flat No : 3, Suyash Residency, Near Pride  Paradise, Building, Om Super Market Chowk, pune , Maharashtra,',NULL,NULL,'','','27AAFCR3974C1ZB','','AAFCR3974C','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(353,'RAHUL WADIKAR','',NULL,'','',NULL,'BORIVALI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(354,'RAJAHMUNDRY GODAVARI BRIDGE LIMITED','',NULL,'','',NULL,'Survey No.417/1A465,2B,Sai Ram Colony,, Near New Bridge Road Underpass, Korukonda, Road, Konthamuru, Rajahmundry - 533102',NULL,NULL,'','','37AAECR1223P1Z6','','AAECR1223P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(355,'Rajesh More','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(356,'RAJESH PAPERBOAT','',NULL,'','',NULL,'ANDHERI W',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(357,'Rajiv Arora','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(358,'Rakesh Panchal','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(359,'RAKESH SALVI','',NULL,'','',NULL,'C-37 GOKULDHAM, DINDOSHI, GOREGAON E, MUMABI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(360,'RAM','',NULL,'','',NULL,'MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(361,'RAMBOLL INDIA PVT LTD','',NULL,'','',NULL,'MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(362,'RATH Infotech And Web Solutions Pvt Ltd','',NULL,'','',NULL,'302/304, 3rd Floor, Willie Mansion, 297,, Javji Dadaji Marg,Nana Chowk, Grant Road,, Mumbai, Maharashtra 400007',NULL,NULL,'','','27AAGCR8234A1ZJ','','AAGCR8234A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(363,'RBL Finserve Limited','',NULL,'','',NULL,'D-401, Lotus Corporate Park,, Graham Firth Compound, Western Express Highway,, Gorgaon (East), Mumbai 63',NULL,NULL,'','','27AALCS3958H1ZU','','AALCS3958H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(364,'Redington (India) Limited (F1)','',NULL,'','',NULL,'Parekh Estate, Near Navjivan Circle,, Udhana Magdalla Road,, Surat.',NULL,NULL,'','','24AABCR0347P1Z9','','AABCR0347P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(365,'Regh Animation Studios','Mrs Megha Borse',NULL,'','',NULL,'02, Parimal Appartment, Opp. BYK College, College Road, Nashik',NULL,NULL,'','','','','ABLPB0004H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(366,'Reliable Business Solution & Services (Chennai)','',NULL,'','',NULL,'Unit F3/B,  1st Floor ,, Rattha Tek Meadows Campus, No.51, Rajiv Gandhi Salai (OMR),, Sholinganallur, Chennai ? 600 119.',NULL,NULL,'','','33AAFCR0039J2ZK','','AAFCR0039J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(367,'Reliable Business Solution & Services Pvt Ltd','Mr. Manish Dubey',NULL,'','',NULL,'5th Floor, Reliable Tech Park, Off.Thane-Belapur Rd., Roli, Navi Mumbai - 400 708',NULL,NULL,'','','','','AAFCR0039J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(368,'RELIABLE ENTERPRISES','',NULL,'','',NULL,'7A, 2ND FLOOR SAI KRUPA OPP. SANE DAIRY, PLOT 229, BHANDARKAR ROAD, PUNE411004',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(369,'RELIABLE ENTERPRISES (PURCHASE)','',NULL,'','',NULL,'7A, 2ND FLOOR, SAI KRUPA (OPP SANE DAIRY), PLOT 229, BHANDARKAR ROAD,, PUNE-411 004',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(370,'Relleno Insurance Broking Services Pvt Limited','',NULL,'','',NULL,'7-1-21/A,APDL Estate, 2nd Floor,, Opp. Country Club,Begumpet,, Hyderabad,Telangana-500016.',NULL,NULL,'','','36AACCR6397J1ZT','','AACCR6397J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(371,'Rena Export Pvt Ltd (Purchase)','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(372,'Rena Exports Pvt Ltd','',NULL,'','',NULL,'411/412, 4th Floor, Hubtown Viva, Near, Express Highway, Shankarwadi,, Jogeshwari (East), Mumbai-400 060.',NULL,NULL,'','','27AAJCR6247A1ZF','','AAJCR6247A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(373,'RITESH SHETH','',NULL,'','',NULL,'GOREGAON E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(374,'R. N Exports / R.N Gems','',NULL,'','',NULL,'BDB, FW-9020,Bandra Kurla Complex,, Mumbai',NULL,NULL,'','','27AAFFR8018N1ZP','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(375,'ROUTERS TRADELINK','',NULL,'','',NULL,'4TH FLOOR, B2A, A WING 407, SWARAJYA BLDG, NAV, MAHARASHTRA NAGAR, MANEKJI PETIT MILLS,\r, NAKASHE ROAD, TARDEO, Mumbai City, Maharashtra,\r, 400034.',NULL,NULL,'','','27AIUPC1471B1ZH','','AIUPC1471B','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(376,'Rupesh Salvi','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(377,'S3D Studios','',NULL,'','',NULL,'Pancha Ratna CHS, Bldg No. 59E, Flat No. 1702,, Opp. Ekta Nagar, Kandivali(W),Mumbai, SECTOR 8, D11, BLOCK NO 12, SAHYADRI CHS,, SANPADA, NAVI MUMBAI, Thane-400705',NULL,NULL,'','','27BNQPS3553N1Z2','','BNQPS3553N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(378,'Sachin Parab','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(379,'SADGURU CONSULTANCY AND SERVICES','',NULL,'','',NULL,'Plot No. 179, 180/407, Kamlacharan Commercial Premises Co-Op Soci Ltd., Jawahar Nagar Road no-2, Goregaon (west), Mumbai- 400062',NULL,NULL,'','','27ADHFS2824C1Z9','','ADHFS2824C','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(380,'Safari Industries (India) Ltd.','',NULL,'','',NULL,'302-303, A Wing, The Qube, Marol, Andheri (E), Mumbai - 400059, Maharashtra, India',NULL,NULL,'','','27AAHCS5888E3ZT','','AAHCS5888E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(381,'SANDEEP JAIN','',NULL,'','',NULL,'GOREGAON E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(382,'SANDEEP RAJPUT','',NULL,'','',NULL,'ROW HOUSE 15 B MHADA,, NEAR NNP 1&2, FILMCITY ROAD,, MALAD E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(383,'SANDESH ACHREKAR','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(384,'SANJAY CHANDRA','',NULL,'','',NULL,'MIRA ROAD (E)',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(385,'Sankar Tools','',NULL,'','',NULL,'Ground Floor, Gala No 07, Pooja Industrial Estate,, NR Mutual Industial LTD, Vasai-East Sativali,Palgha, Maharashtra, 401208',NULL,NULL,'','','27AEFFS1354A1ZE','','AEFFS1354A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(386,'SANKAR TOOLS PRIVATE LIMITED','',NULL,'','',NULL,'Gokhivare, PLOT NO. 71, The Vasai Taluka Industrial, Cooperative EstateLtd, Gokhivare Road, Vasai East, Vasai Virar,, Palghar, Maharashtra,\r401208',NULL,NULL,'','','27ABICS6285R1Z8','','ABICS6285R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(387,'SANTOSH JAIPRAKASH CHAUHAN','',NULL,'','',NULL,'PLOT NO.227-279, 10-A/3, J.P.CLASSES, NEW SION CO OP, CHS LTD, SION WEST, Mumbai City, Maharashtra, 400022',NULL,NULL,'','','','','AJRPC9358H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(388,'SARA HVAC Systems','',NULL,'','',NULL,'Universal Industrial Estate,# 69, First Floor,, IB Patel Road, Sonawala Industry Estate, Goregaon(E), Mumbai 400063.',NULL,NULL,'','','27ACIFS5895H1ZF','','ACIFS5895H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(389,'Sardar Patel Institute of Technology','',NULL,'','',NULL,'Bhavan\'s Campus, Munshi Nagar,\r, Andheri(west), Mumbai-400058',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(390,'Scal Services Limited','',NULL,'','',NULL,'Wing A, 1, Raheja Point No1, Pt. J. N Road,, Vakola, Santa Cruz East, Mumbai,, Mumbai City, Maharashtra, 400055',NULL,NULL,'','','27AAACS9121P3ZV','','AAACS9121P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(391,'SDS NETWORKS LLP','',NULL,'','',NULL,'5th Floor,Plot No 29, 501Suryoday CHS, 7, Juhu Road, Above SBI Bank, Santacruz, West, Mumbai, Mumbai Suburban,Maharashtra, 400054',NULL,NULL,'','','27AFNFS6300M1ZJ','','AFNFS6300M','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(392,'Seamless Infotech Private Limited','',NULL,'','',NULL,'No F8, First Floor, Okhla Industrial Area,, Phase-I, New Delhi-110020 India',NULL,NULL,'','','07AAYCS3481J1ZK','','AAYCS3481J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(393,'Secmec Consultants Pvt. Ltd','',NULL,'','',NULL,'601, B-Wing, Godrej Coliseum,Off Eastern Express Highway,, Chunabhatti, Sion, Mumbai - 400 022',NULL,NULL,'','','27AAOCS2086B1ZA','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(394,'Secure A&D (Cambodia) Ltd','',NULL,'','',NULL,'NORO MALL, ST.NORODOM CONNER 360,, VILL 8, PHNOM PENH, CAMBODIA.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(395,'Sequent Research Limited','',NULL,'','',NULL,'120 A&B Industrial Area, Baikampady,New Mangalore 575011, Karnataka India',NULL,NULL,'','','29AAKCS7538Q1Z8','','AAKCS7538Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(396,'Sequent Scientific limited','Geet Vekhande',NULL,'','',NULL,'301/302, Dosti Pinnacle, 3rd Floor,Plot No. E-7, Road No. 22,, Wagle Estate,Thane(W), Maharashtra',NULL,NULL,'9869999612','','27AAACV1501G1ZT','','AAACV1501G','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(397,'Sequent Scientific limited (Mahad)','',NULL,'','',NULL,'B-32, G2,G3, MIDC, MAHAD, BIRWADI, Raigad,, Maharashtra, 402309',NULL,NULL,'','','27AAACV1501G1ZT','','AAACV1501G\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(398,'Sequent Scientific limited (Tarapur)','',NULL,'','',NULL,'W-150/151/152 W136 TO 141, MIDC, BOISAR,, TARAPUR, Palghar, Maharashtra, 401504',NULL,NULL,'','','27AAACV1501G1ZT','','AAACV1501G','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(399,'SF WORLDWIDE LOGISTICS','',NULL,'','',NULL,'ROOM NO 22, PLOT NO. 44, NOOR MANZIL,, PUSHPA PARK RD 04, NEAR WAGHESHVARI, MANDIR, MALAD EAST, Mumbai,, Maharashtra, 400097',NULL,NULL,'','','27ALZPP3030F1ZU','','ALZPP3030F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(400,'SGK ADVISORY SERVICES','',NULL,'','',NULL,'',NULL,NULL,'','','27AUCPS7925G1ZA','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(401,'Shakti Enterprises','',NULL,'','',NULL,'First Floor, B3/102, Greenland Apartment, J B, Nagar, Andheri East, Mumbai Suburban, Maharashtra',NULL,NULL,'','','27AABPJ7598P1ZT','','AABPJ7598P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(402,'SHIVA SYSTEMS & TECHNOLOGIES PVT LTD','',NULL,'','',NULL,'230A,BAMANPURI VILLAGE ,, GROUND FLOOR, J.B.NAGAR ANDHERI (E),MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(403,'Shree Ganesh Society','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(404,'SHREE MOTORS','',NULL,'','',NULL,'189, Temghar, Kalyan Rd, Bhadwad Junction, Nr.Aishwarya Hotel, Bhiwandi Thane,, Thane, Maharashtra, 421302',NULL,NULL,'','','27ADFFS7385E1ZP','','ADFFS7385E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(405,'Shreya Infocom Services','',NULL,'','',NULL,'506, Garmet Palladium, Veet Bhatti, Motilal Nehru Road,, Behind  Express Zone Mall, Goregaon (East), Mumbai -400 063',NULL,NULL,'','','27ABOFS9959D1ZE','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(406,'SHRI SIDDHARTHA AUTO SPRINGS','',NULL,'','',NULL,'PLOT NO 217, ROAD NO 6 AUTO NAGAR, RAJAHMUNDRY, EastGodavari, Andhra Pradesh, 533106',NULL,NULL,'','','37ACXPG7751R1ZE','','ACXPG7751R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(407,'Shro Systems Pvt. Ltd','',NULL,'','',NULL,'1184/4, ?Shreenath?, Dnyaneshwar Paduka Chowk, F.C.Road,, Shivaji Nagar, Pune ? 411005',NULL,NULL,'','','27AAGCS0761F1ZG','','AAGCS0761F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(408,'SHUBHIT HOLDINGS PRIVATE LIMITED','',NULL,'','',NULL,'1st Floor, 3a, Barodawala Mansion 81, Dr. Annie Besant Road Worli,, Mumbai Maharashtra -400018',NULL,NULL,'','','27AAACR2060G1ZP','','AAACR2060G','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(409,'Siddhi Co-Op Housing Society Ltd.','',NULL,'','',NULL,'Opp. Samana Pariwar,  Khadak Pada,  Sheila Raheja Marg,, Malad East, Mumbai 400097.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(410,'Silicon Infovision Private Limited','',NULL,'','',NULL,'8TH FLOOR, 814-816, BELGIUM TOWER, DELHI GATE,, SURAT, Surat, Gujarat, 395002',NULL,NULL,'','','24AAPCS8669H1ZM','','AAPCS8669H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(411,'SINDHU CARGO SERVICES PVT LTD','',NULL,'','',NULL,'SHOP NO1/2/3/4 A WING GURUDATTA CO-OP., HSG. SOCIETY, JB NAGAR, NEAR JANKALYAN,, SAHAKARI BANK ANDHERI EAST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(412,'SJ Law Advocates &Solicitors','',NULL,'','',NULL,'Fort. Mumbai.',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(413,'Skai Techno','',NULL,'','',NULL,'PLOT NO. 48 SONBA NAGAR BHANADARA ROAD, NAGPUR 440008',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(414,'Sky Techno','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(415,'Smart Document Solutions','',NULL,'','',NULL,'Shop No 204a Sona Udyog Estate Parsi Panchayat, Andheri East Mumbai, Mumbai Suburban,, Maharashtra-400069',NULL,NULL,'','','27AAGHV3225E1Z8','','AAGHV3225E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(416,'Smita Desai','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(417,'Smita Kashinath Desai','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(418,'Smiti Holding and trading private limited.','Feeba',NULL,'','',NULL,'3A, barodawala Mansion Annie besant road, Worli, Mumbai.',NULL,NULL,'9833383626\r\n','','27AARCS4593G1ZP','','AARCS4593G','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(419,'SNS Infotech','',NULL,'','',NULL,'3/312, Yogeshwar CHS, N M Joshi Marg,, Lower Parel (E) | Mumbai ? 400013',NULL,NULL,'','','27ACIFS5885K1ZA','','ACIFS5885K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(420,'Society Of The Sacred Heart','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(421,'Socioffice Software','',NULL,'','',NULL,'ANDHERI (EAST) MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(422,'SOL INC','Abdillah daruwala',NULL,'','',NULL,'76, Saifee Jubilee Street, 3rd Floor, Rm. No. 5, Null, Bazaar, Mumbai City, Maharashtra, 400003',NULL,NULL,'9699922211','','27AJPPD4006R1ZT','','AJPPD4006R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(423,'Solution Infinite Networks LLP','',NULL,'','',NULL,'101, Mahavir Industrial Estate , Opp Mahakali, Caves Rd, Near Paper Box, Andheri (East), Mumbai',NULL,NULL,'','','27ADNFS2401D1ZC','','ADNFS2401D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(424,'SOUMITRA RANADE','',NULL,'','',NULL,'POWAI, MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(425,'Southside Healthcare Solutions Pvt. Ltd','',NULL,'','',NULL,'B 202 Business Square 151 Andheri Kurla Road,, Andheri East, Mumbai - 400093',NULL,NULL,'','','27AAICS6659L1ZK','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(426,'SPIRIT','Mr. Shailesh Veera',NULL,'','',NULL,'C.A : B 503 ,Jyoti Plaza, Opp Anandvan Ashram,, S.V.Road, Kandivali (W), Mumbai - 400067, Old Address : B-1, Anand Sagar ,Anand Nagar,, MG Road, Kandivali West ,Mumbai 400067',NULL,NULL,'','','27ABVPV6417A1ZA','','ABVPV6417A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(427,'SQUARTECH SOLUTIONS','CHINTAN PAREKH',NULL,'','',NULL,'1st Floor, Office No 7, Gokhale Road (N),, Ash Lane, Dadar (W), Mumbai - 400028',NULL,NULL,'','','','','AXMPP6325Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(428,'S Rajendra And Company','',NULL,'','',NULL,'D -Wing Flat No.101,Jayant Premises C.H.S.L, Next To Cargo Complex,Sahar Cago Andheri (East), Mumbai -400099,Maharashtra',NULL,NULL,'','','27AACFS3759C1Z8','','AACFS3759C','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(429,'S.R.K. Consultancy Services','',NULL,'','',NULL,'S.R.K. Consultancy Services, B-202, Gokul Vihar CHS, Thakur Complex, Kandivali (East)',NULL,NULL,'','','27AKOPK7603B1Z9','','AKOPK7603B','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(430,'Strad Hosting and Development LLP','',NULL,'','',NULL,'301 Floor 3,Plot 8,Wadala Udyog Bhavan,\r, Sewree Wadala Road No. 26,\r, Wadala, Mumbai 400031\r',NULL,NULL,'','','27ADAFS9387D1ZQ','','ADAFS9387D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(431,'Strikingspear Consultancy Pvt Ltd','',NULL,'','',NULL,'502, Emp-26, Neptune Hsg. Soc.,\r\n, Evershine Paradise, Thakur Village,\r\n, Kandivali East, Mumbai - 400101\r\n',NULL,NULL,'','','27AATCS1349A1ZB','','AATCS1349A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(432,'STRUCT CARE CONSULTING ENGINEERS PVT LTD','',NULL,'','',NULL,'C1-107, Rajgad CHS Ltd, Sarova Complex, Samta Nagar,, Thakur Village, Kandivali - (East), Mumbai ? 400 101',NULL,NULL,'','','27AAPCS2868A1Z5','','AAPCS2868A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(433,'STYLUS SOLUTIONS PVT. LTD.','',NULL,'','',NULL,'ANDHERI EAST MUMBAI',NULL,NULL,'','','','','AAMCS9383B? ?\r\n','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(434,'Suchak Co-Operative Housing Society Limited','',NULL,'','',NULL,'A-1, Chand Society, Near Hare Krishna Temple, Juhu, Mumbai - 400049',NULL,NULL,'','','27AADAS0254N1ZA','','AADAS0254N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(435,'SUDEVI CHEMICALS','',NULL,'','',NULL,'PLOT NO A/41,42 MIDC PHASE 1.NEAR VICCO NAKA, DOMBIVALI EAST . PIN 421203.',NULL,NULL,'','','27ACWPA6784F1Z4','','ACWPA6784F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(436,'Sunil Gang','',NULL,'','',NULL,'77 Shastri Market Indore',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(437,'Sunil Gavli','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(438,'Surbhi Palak Ventures','',NULL,'','',NULL,'A-670, Monkey Ads and Studios,Swastik Universal, Besides Valentines, Cinemas, Piplod,Dumas road, Surat 395007',NULL,NULL,'','','24CRZPS7834L1ZM','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(439,'SURESH AGRAWAL (HUF)','',NULL,'','',NULL,'1ST FLOOR, B/23-101, AKSHAY SAGAR CHS, LTD, SECTOR 11, NEAR NEW INDIA CO-OP, BANK, Shanti Nagar, Mira Bhayandar, Thane,, Maharashtra, 401107',NULL,NULL,'','','27ABHHS1419R1ZH','','ABHHS1419R','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(440,'SURESH GORI','',NULL,'','',NULL,'DAHISAR E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(441,'Suresh Roopchand Agrawal','',NULL,'','',NULL,'Nr. New India Co.op Bank, Sect -XI, B-23-101,  Akshar Sagar Shanti, Nagar CHS Ltd, Station Road, Mira Bhayandar, Thane,, Maharashtra, 401107',NULL,NULL,'','','27ADQPA3835L2Z8','','ADQPA3835L','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(442,'Suspense','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(443,'SWASTIK POWER ELECTRONICS (I) PRIVATE LIMITED','',NULL,'','',NULL,'1302, Gr. Flr, Dharani Arcade, Anjurphata, At & Post--Rahnal, Bhiwandi--421305, Dist Thane',NULL,NULL,'','','AAKCS5399F2ZR','','AAKCS5399F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(444,'SWASTIK SALES CORPORATION','',NULL,'','',NULL,'1 ST FLOOR, 155, KALYANDAS UDYOG BHAVAN, S H, TANDEL MARG NEAR CENTURY BAZAR, PRABHADEVI,, Mumbai City, Maharashtra, 400025',NULL,NULL,'','','27AABPP1817D1Z2','','AABPP1817D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(445,'Swati Safesecure Equipment Pvt Ltd.','',NULL,'','',NULL,'805/806 , Krushal Commercial Complex Near Shoppers, Stop, G.M. Road,  Chembur West, Mumbai - 400089',NULL,NULL,'','','27AANCS3239D1ZA','','AANCS3239D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(446,'Synergy Consultants','',NULL,'','',NULL,'26/204, Om Anand Nagar CHSL, Jawaharlal Nehru Road, Vakola Bridge, Santa Cruz (East), Mumbai: 400055',NULL,NULL,'','','27AGAPK5507A2ZY','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(447,'SYSTEM TOOLS','',NULL,'','',NULL,'3rd floor, The Hanuman Estates, 19, RN Mukherjee Rd,, Kolkata, West Bengal 700001',NULL,NULL,'','','19ABZPH4373H1Z0','','ABZPH4373H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(448,'TANMAY DAVE','',NULL,'','',NULL,'MIRAROAD E',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(449,'TAURUS CONTRACTORS PRIVATE LIMITED','',NULL,'','',NULL,'Floor-1,2, Plot-20, Jeroo Building, Bardojee Bharucha Marg, Kala Ghoda, Fort, Mumbai City, Maharashtra, 400001',NULL,NULL,'','','27AABCT4341F1ZK','','AABCT4341F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(450,'TECHCONVERGENCE (Sale)','',NULL,'','',NULL,'SHOP NO.-03, RATNADEEP CHS LTD, 60 FEET, ROAD, NEAR INDRA COMPLEX, BHAYANDER, WEST',NULL,NULL,'','','27ARYPS1344J1Z2','','ARYPS1344J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(451,'Tech Doable','',NULL,'','',NULL,'2/344-2, Maligai Street,th Main Road, Gomathipuram Madurai -, 625020.',NULL,NULL,'','','33AGQPV6844H1ZR','','AGQPV6844H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(452,'Tecstaq Technology Solution Private Limited','',NULL,'','',NULL,'113, SHIVSAGAR INDUSTRIAL ESTATE, BABASAHEB, KOTKAR MARG, Goregaon East, Mumbai, Mumbai Suburban,, Maharashtra, 400063',NULL,NULL,'','','27AAICT8898A1ZT','','AAICT8898A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(453,'Tempus Fugit Pvt. Ltd.','Shekhar Jadhav',NULL,'','',NULL,'',NULL,NULL,'','','27AAFCG1952K1ZF','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(454,'The Bombay Dyeing & Manufacturing Co. Ltd.','',NULL,'','',NULL,'Neville House, Neville House, J N Heredia Marg,\r, Ballard Estate, Mumbai, Maharashtra, 400001\r',NULL,NULL,'','','27AAACT2328K1ZB','','AAACT2328K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(455,'The Bombay Dyeing & Mfg. Co.Ltd.','',NULL,'','',NULL,'C-1, Wadia International Centre (Bombay Dyeing),, Pandurang Budhkar Marg,, Worli, Mumbai, 91-022-24368835 / 91-022-66620000 Ext 3318 / 09819623050',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(456,'The Colour Society','',NULL,'','',NULL,'Dept of Polymer Engg & Surface Coating, Institute, Of Chemical Technology , N.M. Parekh Marg, Matunga, East, Mumbai -19',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(457,'THE GLOBAL GROUP','',NULL,'','',NULL,'MALAD WEST MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(458,'The Institute of Internal Auditors-India','',NULL,'','',NULL,'Sakinaka Junction, 5TH FLOOR, A - 503, UNIT NO 503, Sagar Tech Plaza A PREMISES, A. K. ROAD, ANDHERI EAST,, , Mumbai, MumbaiSuburban, Maharashtra, 400072',NULL,NULL,'','','27AACAT3607K1ZD','','AACAT3607K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(459,'The Mandhana Retail Ventures Ltd','',NULL,'','',NULL,'008 peninsula center,Dr.S.S.Rao Road, Parel,, Mumbai 400012',NULL,NULL,'','','27AAHCM2029B1ZW','','AAHCM2029B','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(460,'TITAN MASTERMINDZ LLP','',NULL,'','',NULL,'302, RNA Auroville, Jain Derasar Marg,, Santacruz West, Mumbai - 400 054',NULL,NULL,'','','27AAJFT6677K1ZC','','AAJFT6677K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(461,'Total Print Solutions (Sales)','',NULL,'','',NULL,'C-117, Bonanza Ind. Est, Ashok Nagar,, Kandivali (E), Mum 400 101',NULL,NULL,'','','','','AFFPC0022E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(462,'Traditionntrendz','',NULL,'','',NULL,'300/2383,MOTILAL NAGAR-2,, OFF. M.G. ROAD, GOREGAON WEST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(463,'Tradition n Trendz Event management PVT.LTD','',NULL,'','',NULL,'A-322 Gemstar Commercial Complex,Ramchandra Lane, Kanchpada, Malad West. Mumbai- 400103',NULL,NULL,'','','27AADCT9495J1ZK','','AADCT9495J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(464,'Transform Solutions Private Limited','',NULL,'','',NULL,'Sixteenth Floor, 1605 - 07, The Junomoneta Tower, Pal,, Opp RTO, Adajan, Surat, Surat,Gujarat, 395009',NULL,NULL,'','','','','AACCT1273H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(465,'TRANSPARENCY MARKET RESEARCH','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(466,'TREND ELECTRONICS (SALES)','',NULL,'','',NULL,'MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(467,'Trend Vision LLP (SALES)','Ms. Bela',NULL,'accounts@trendelectronics.com','',NULL,'156, Veena Dalvi Ind Estate,, S.V. Road , Jogeshwawi West, Mumbai - 400102',NULL,NULL,'8433837575','','27AAJFT1874G1ZW','','AAJFT1874G','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(468,'Tristar Infratech Enterprises','',NULL,'','',NULL,'Plot No.137/1, 3rd Floor, KH No. 34, Saidulajab,, Mehrauli, New Delhi-110030',NULL,NULL,'','','07AAKFT2293C1Z6','','AAKFT2293C','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(469,'Tulsi Trading Corporation','',NULL,'','',NULL,'1406, Dev Corpora, Opp Korum Mall, Cadbury Junction,, Khopat Thane 400602',NULL,NULL,'','','27AAEPF9912E1ZV','','AAEPF9912E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(470,'UGC Malaviya Mission Teacher Training Centre, Univ','',NULL,'','',NULL,'Shankarrao Chavan Teachers Training Academy, Building, Vidyanagari, santacruz (E), Mumbai - 400 098',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(471,'UK INSTALLATION TO MAINTENANCE LLP','',NULL,'','',NULL,'PLOT NO 947, WORD NO13, Jagruti Nagar,, Parbhani, Maharashtra, 431401',NULL,NULL,'','','27AAGFU6376D1ZX','','AAGFU6376D','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(472,'Umi  Sir','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(473,'URD','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(474,'Vadraj Cemenet Ltd','Mr. Aman Ansari',NULL,'','',NULL,'2nd Floor, Lloyds Center Point,, Appasaheb Marathe Marg, Prabhadevi,, Tata Motors, Mumbai, Maharashtra - 400025',NULL,NULL,'','','','','AAECA2316E','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(475,'VEENA DALVAI IND ESTATE PREMISES CO-OP SOC LIMITED','',NULL,'','',NULL,'152/A, VEENA DALWAI INDUSTRIAL, ESTATE, S.V. ROAD,, JOGESHWARI WEST,Mumbai Suburban, Maharashtra, 400102',NULL,NULL,'','','27AAAAV3689F1Z6','','AAAAV3689F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(476,'VEXOCORE IT SERVICES PRIVATE LIMITED','',NULL,'','',NULL,'Rajasthan, India',NULL,NULL,'','','08AAJCV1239L1ZY','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(477,'VIMALNATH OCTROI CORPORATION','',NULL,'','',NULL,'',NULL,NULL,'','','','','AAQPS4071H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(478,'Vinay Sharma','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(479,'Vipul Soni HUF','',NULL,'','',NULL,'207, Parikh  Commercial Center , Agashi Road, Above, ICICI  Bank , Virar West',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(480,'VIPUL TRIVEDI','',NULL,'','',NULL,'BORIVALI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(481,'Vivaria Global Developers','',NULL,'','',NULL,'',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(482,'Voyagerz ( Cox & Kings )','',NULL,'','',NULL,'Shop No.-11, Eden Garden,, Behind Pizza Hut, Mahavir Nagar,, Kandivali West, Mumbai',NULL,NULL,'','','','','AFIPT8684A','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(483,'Vrihis Properties Private Limited','',NULL,'','',NULL,'Vrihis Properties Private Limited 401-402,, A Wing, Delphi Building, Orchard AvenuePowai,, Mumbai (Maharashtra)400076',NULL,NULL,'','','27AADCH8388N1ZQ','','AADCH8388N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(484,'V S TECH & ASSOCIATES','',NULL,'','',NULL,'NEAR FAROOQ HIGH SCHOOL, SHOP NO 10, GOKUL BLDG, S V ROAD ,JOGESHWARI WEST, MUMBAI, Mumbai SuburbanMaharashtra, 400102',NULL,NULL,'','','27ACVPS3577R1Z5','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(485,'Water Communication','',NULL,'','',NULL,'504, Eco House, Vishweshwar Nagar, Goregaon East,',NULL,NULL,'','','27AFRPM4175Q1ZF','','AFRPM4175Q','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(486,'Weener Empire Plastics P. Ltd','',NULL,'','',NULL,'Unit 502A, 5TH Floor, Western Edge 1,, Western Express Highway, Borivali -East, Mumbai 400066',NULL,NULL,'','','27AAACE5238K1ZJ','','AAACE5238K','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(487,'WEST COAST FINE FOODS (INDIA) PVT LTD','',NULL,'','',NULL,'MUMBAI',NULL,NULL,'','','','','AAGCA2676P','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(488,'WISHWAKARMA BAUG BANQUET HALL','',NULL,'','',NULL,'VILE PARLE WEST',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(489,'Xpress.ooo Solutions LLP','8470988822',NULL,'','',NULL,'CH-3, Sector 11 Rd, Kendriya Vihar, Sector 11,, Kharghar, Navi Mumbai,Maharashtra 410210',NULL,NULL,'','','27AAAFX1872F1Z5','','AAAFX1872F','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(490,'YELLOW BANANA FOOD COMPANY PRIVATE LIMITED','022-26300148',NULL,'','',NULL,'Ground Floor, Durga Chamber, Fun Republic Lane,, Behind Balaji Studio, Off Veera Desai Road,, Abdheri (W), Mumbai 400-053',NULL,NULL,'','','27AAACY2431N1Z4','','AAACY2431N','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(491,'YOGENDRA','',NULL,'','',NULL,'MUMBAI',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(492,'Yogeshwar Plaspax LLP','',NULL,'','',NULL,'B-301, Victory Park, Chandavarkar Road,, Borivali West, Mumbai - 400092\r\n',NULL,NULL,'','','27AACFY0286C1ZA','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(493,'Yuvna Enterprises','',NULL,'','',NULL,'J6/1, Jal Mangal Deep, Bangur Nagar, Goregaon West,, Mumbai ? 400104',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(494,'ZANETA WINDOWS LLP','Paras Dalal',NULL,'','',NULL,', 9, VISHAL COMPLEX, NARSING LANEVISHAL COMPLEX, NARSING LANE,, OPP NL HIGH SCHOOL, MALAD W.',NULL,NULL,'\r\n','','27AACFZ0434H1Z9','','AACFZ0434H','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(495,'Zeal Consultants','',NULL,'','',NULL,'534 / 2 Bajrang Nagar, Cama Industrial Estate,, Walbhat Road, Goregaon, East, Mumbai',NULL,NULL,'','','','','','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(496,'ZOBBLE SOLUTIONS PRIVATE LIMITED','',NULL,'','',NULL,'11 FLOOR, 1105, QUANTUM TOWER, RAMBAUG LANE,S.V, ROAD,CHINCHOLI, MALAD WEST, Mumbai Suburban,',NULL,NULL,'','','27AAACZ4795J1ZO','','AAACZ4795J','',NULL,17,1,'2025-08-01 09:39:23','2025-08-01 16:49:27'),(497,'Food Chain ID','Mrs.Chinmayee Deulgaonkar','Director','cdeulgaonkar@foodchainid.com','','Mumbai','Andheri Mumbai','1',91,'9930109209','','','','','','false',17,1,'2025-08-06 09:39:01','2025-08-06 09:39:01'),(498,'Tecstaq India Pvt Ltd','Mr.Randeep Pawar','Director','randeep.pawar@tecstaq.com','','Mumbai','Gorgoan Mumbai','1',91,'8104512303','','','','','','false',17,1,'2025-08-06 09:43:24','2025-08-06 09:43:24'),(499,'BHAVPRITA GLOBAL DESIGNERS PVT. LTD','Naresh Kejriwal','Director','naresh@bhavpritas.com','accounts@bhavpritas.com','Mumbai','A-601, Express Zone A-Wing, Pandit Motilal Nehru Marg, Western Express Hwy, Panch Bawadi, Malad East - 400097','1',91,'9768606346','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-02 09:39:45','2025-09-02 09:39:45'),(500,'Suresh J. Wankhede.','Suresh J. Wankhede.','Director','bnsurw100@gmail.com','','Mumbai','Mumbai','1',91,'8108125723','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-02 09:44:01','2025-09-02 09:44:01'),(501,'BXI World','Athang Tambe','Sales Manager','product@bxiworld.com','','Mumbai','Mumbai','1',91,'8369678532','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-02 10:06:21','2025-09-02 10:06:21'),(502,'test 1','Ram','Sales','Ram@gamil.com','','Mumbai','Mumbai','1',91,'0989898989','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-02 11:44:02','2025-09-20 10:08:23'),(503,'Sub 1','Trail','Asd','Sub@gmail.com','','sub','Sub','1',91,'0987667767','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-03 06:19:44','2025-09-20 10:08:21'),(504,'Auxiliary Digitech','Yatin Gupta','Sales Manager','purchase@auxiliarydigitech.com','','Mumbai','Mumbai','1',91,'9810092848','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-04 05:55:17','2025-09-04 05:55:17'),(505,'ABC - trial','Khusi','Account','abc@gmail.com','xyz@gmail.com','Mumbai','111','1',91,'8898001505','','27AAECG5112E1Z1','uploads/gst_doc_1757064445402.pdf','AAECG5112E','uploads/pan_doc_1757064445404.pdf','false',15,1,'2025-09-05 09:27:25','2025-09-05 09:27:25'),(506,'Hp','Aditi','Employee','aditi@gmail.com','aditi2@gmail.com','SANGLI','A/P-KHATAV,TAL-PALUS,DIST-SANLI','1',91,'1234567890','9876567890','27ABCDE1234F1Z5',NULL,'AAAPA1234A',NULL,'false',18,1,'2025-09-05 10:50:50','2025-09-05 10:50:50'),(507,'Trail','trail1','tre','abcd@gmail.com','','mum','mum','1',91,'0987654666','',NULL,NULL,NULL,NULL,'false',14,1,'2025-09-05 11:37:45','2025-09-20 11:38:04'),(508,'Policy kavach','Sachin tambe','Director','sachin.t@policykavach.com','','Mumbai','Mumbai.','1',91,'8452071208','',NULL,NULL,NULL,NULL,'false',16,1,'2025-09-05 11:40:40','2025-09-05 11:40:40'),(509,'CERT ID INDIA PRIVATE LIMITED','khushboo','Account','khushboo.v@tecstaq.com','xyz@gmail.com','Mumbai','Trial  - B WING/ UNIT NO 1211A, KANAKIA WALL STREET,, ANDHERI, KURLA ROAD, CHAKALA ANDHERI EAST, MUMBAI, Mumbai','1',91,'8898001504','8898001505','27AAFCC9236N2Z3',NULL,'AAFCC9236N',NULL,'false',15,1,'2025-09-22 05:27:16','2025-09-22 05:27:16'),(510,'Green Sarthi','Gaurav Agrawal','CEO','gaurav@greensarthi.com','','Mumbai','2117, Eaze Zone Mall, Goregaon Mulund link road, Malad (West). Mumbai 400064','1',91,'8451850882','',NULL,NULL,NULL,NULL,'false',13,1,'2025-10-10 07:54:37','2025-10-10 07:54:37'),(511,'Bluechip Technologies and Engineering Pvt. Ltd','IrishKumar Joshi','Manager','bluechip.joshi@gmail.com','','Gujarat','7,8 Abhishake 5, Sanghavi Tower, Near Gujarat Gas Circle, \nSurat, Gujarat','1',91,'9426578333','',NULL,NULL,NULL,NULL,'false',14,1,'2025-10-18 09:56:59','2025-10-18 09:56:59'),(512,'APNP IT and Technology Solutions','Mr. Narayan','Director','apnpits@gmail.com','','Mumbai','Mumbai','1',91,'7506015722','7506015722',NULL,NULL,NULL,NULL,'false',14,1,'2025-10-18 10:39:16','2025-10-18 10:39:16'),(513,'Malad Dindoshi Siddhi Society','Mr. Manoj Kudalkar','Manager','manoj8@rediffmail.com','','Mumbai','Mumbai','1',91,'9869375561','',NULL,NULL,NULL,NULL,'false',14,1,'2025-10-18 10:41:42','2025-10-18 10:41:42'),(514,'Dani Groups','Ms. Rinkoo Somani','Manager','rinkoo.somani@dani.in','','Mumbai','Mumbai','1',91,'1234567891','',NULL,NULL,NULL,NULL,'false',14,1,'2025-10-24 11:52:23','2025-10-24 11:52:23'),(515,'JP CLASSES','Mr. Wali Shaikh','Director','Mtjpmumbai@gmail.com','','Mumbai','38, West, 2nd Floor, Sion West Mumbai 400022','1',91,'9920455538','',NULL,NULL,NULL,NULL,'false',14,1,'2025-10-31 12:21:49','2025-10-31 12:21:49');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Marketing','This Is Marketing',1,'2025-05-05 04:40:38','2025-05-05 04:40:38'),(2,'Sales','This Is Support.',1,'2025-05-05 04:42:53','2025-06-26 12:32:58'),(3,'Accountant','This is Accountant',1,'2025-06-12 07:08:48','2025-07-01 05:27:22'),(4,'Support','this is support',1,'2025-06-30 10:45:16','2025-06-30 10:45:16'),(5,'IT','This Is IT',1,'2025-07-04 07:23:11','2025-07-04 07:23:11'),(6,'IT Head','This is It head',1,'2025-08-07 08:22:24','2025-08-07 08:22:24');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `designation_id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`designation_id`),
  KEY `department_id_fk` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'Marketing Associate',1,'Marketing Executive',1,'2025-05-07 10:52:03','2025-07-24 12:00:29'),(2,'Sales Head',2,'This is Sales Head',1,'2025-05-07 10:56:27','2025-07-04 08:07:30'),(3,'Sr. Accountant',3,'Accountant',1,'2025-06-16 08:55:46','2025-07-22 05:02:19'),(4,'IT Support Engineer',4,'IT Support Engineer',1,'2025-07-01 09:49:13','2025-07-24 11:59:44'),(5,'Director Sales',2,'Director Sales',1,'2025-07-22 05:02:45','2025-07-24 11:58:36'),(6,'S M M Executive',1,'Social Media Marketing Executive',1,'2025-07-24 12:01:08','2025-07-24 12:01:08'),(7,'IT Engineer',4,'IT Engineer',1,'2025-07-24 12:01:38','2025-07-24 12:01:38'),(8,'Accounts Assistant',3,'Accounts Assistant',1,'2025-07-24 12:02:02','2025-07-24 12:02:02'),(9,'Jr. Accountant',3,'Junior Accountant',1,'2025-07-24 12:03:03','2025-07-24 12:03:03'),(10,'Full Stack Developer',5,'this is it department role',1,'2025-07-28 06:37:11','2025-07-28 06:37:11'),(11,'IT Head',6,'it head',1,'2025-08-07 08:27:17','2025-08-07 08:27:17');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domains` (
  `domain_id` int NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `owner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` VALUES (1,'gioagri.co.in','Mr. Sachin Mali','1234567890',900,'2026-07-27',1,'2025-04-25 09:11:22','2025-07-17 10:36:49'),(2,'khambeengineering.com','Mr. Khambe','1234567890',900,'2025-12-28',1,'2025-04-25 09:12:38','2025-05-22 06:29:22'),(3,'kindlistener.com','Sushant','1234567890',2500,'2026-01-20',1,'2025-04-25 09:13:57','2025-04-25 09:13:57'),(4,'kindlistener.in','Sushant','1234567890',3500,'2026-01-20',1,'2025-04-25 09:14:55','2025-04-25 09:14:55'),(5,'siddharajpackaging.com','Mr. Omkar Bhosale','1234567890',900,'2026-01-20',1,'2025-04-25 09:16:04','2025-05-22 06:29:01'),(6,'wmits.xyz','Sushant','1234567890',2000,'2026-04-24',1,'2025-04-25 09:17:11','2025-04-25 09:17:11'),(7,'esevaa.co.in','Mr. Rahul Gaikwad','1234567890',900,'2025-09-12',1,'2025-04-25 09:18:35','2025-05-22 06:28:36'),(8,'nirmitiapps.co.in','Dr. Neeraj Bhaban','1234567890',450,'2026-05-20',1,'2025-04-25 09:19:23','2025-05-22 06:27:56'),(9,'https://monntgro.com/','Mr. Randeep Pawar','8830928499',1099,'2026-08-11',1,'2025-08-11 09:22:22','2025-08-11 09:22:22'),(10,'ssl - nirmitiapps.co.in','Sushant','9607065511',10,'2025-11-20',1,'2025-08-28 05:01:57','2025-08-28 05:01:57');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_lead_status`
--

DROP TABLE IF EXISTS `employee_lead_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_lead_status` (
  `employee_lead_status_id` int NOT NULL AUTO_INCREMENT,
  `employee_lead_status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_lead_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_lead_status`
--

LOCK TABLES `employee_lead_status` WRITE;
/*!40000 ALTER TABLE `employee_lead_status` DISABLE KEYS */;
INSERT INTO `employee_lead_status` VALUES (1,'Working',1,'2025-08-26 06:00:43','2025-08-26 06:00:43'),(2,'Not Working',1,'2025-08-26 06:00:43','2025-08-26 06:00:43');
/*!40000 ALTER TABLE `employee_lead_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_meeting_status`
--

DROP TABLE IF EXISTS `employee_meeting_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_meeting_status` (
  `employee_meeting_status_id` int NOT NULL AUTO_INCREMENT,
  `employee_meeting_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_meeting_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_meeting_status`
--

LOCK TABLES `employee_meeting_status` WRITE;
/*!40000 ALTER TABLE `employee_meeting_status` DISABLE KEYS */;
INSERT INTO `employee_meeting_status` VALUES (1,'Attended',1,'2025-06-18 08:33:52','2025-06-18 08:33:52'),(2,'Not Attended',1,'2025-06-18 08:33:52','2025-06-18 08:33:52');
/*!40000 ALTER TABLE `employee_meeting_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_assigned`
--

DROP TABLE IF EXISTS `lead_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_assigned` (
  `lead_assigned_id` int NOT NULL AUTO_INCREMENT,
  `lead_id` int NOT NULL,
  `department_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `employee_lead_status_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_assigned_id`),
  KEY `department_id` (`department_id`),
  KEY `employee_id` (`employee_id`),
  KEY `employee_lead_status_id` (`employee_lead_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_assigned`
--

LOCK TABLES `lead_assigned` WRITE;
/*!40000 ALTER TABLE `lead_assigned` DISABLE KEYS */;
INSERT INTO `lead_assigned` VALUES (1,1,2,12,2,1,'2025-10-10 11:54:30','2025-10-10 11:54:30'),(2,1,3,16,2,1,'2025-10-10 11:54:30','2025-10-10 11:54:30');
/*!40000 ALTER TABLE `lead_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_attachments`
--

DROP TABLE IF EXISTS `lead_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_attachments` (
  `lead_attach_id` int NOT NULL AUTO_INCREMENT,
  `lead_id` int NOT NULL,
  `lead_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_attach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_attachments`
--

LOCK TABLES `lead_attachments` WRITE;
/*!40000 ALTER TABLE `lead_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_creation_info`
--

DROP TABLE IF EXISTS `lead_creation_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_creation_info` (
  `lead_info_id` int NOT NULL AUTO_INCREMENT,
  `lead_id` int NOT NULL,
  `lead_date_time` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lead_status_id` int NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_info_id`),
  KEY `lead_status_id` (`lead_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_creation_info`
--

LOCK TABLES `lead_creation_info` WRITE;
/*!40000 ALTER TABLE `lead_creation_info` DISABLE KEYS */;
INSERT INTO `lead_creation_info` VALUES (1,1,'2025-10-10 17:22:45',8,'need to send quote',1,'2025-10-10 11:54:30','2025-10-10 11:54:30');
/*!40000 ALTER TABLE `lead_creation_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_customer_info`
--

DROP TABLE IF EXISTS `lead_customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_customer_info` (
  `lead_id` int NOT NULL AUTO_INCREMENT,
  `refer_by` int DEFAULT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `client_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `second_email_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `code_id` int NOT NULL,
  `country_code` int NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `second_phone_number` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `lead_source_id` int NOT NULL,
  `comments` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int NOT NULL,
  `department_employee_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `priority_id` int NOT NULL,
  `value` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_id`),
  KEY `lead_source_id` (`lead_source_id`),
  KEY `department_id` (`department_id`),
  KEY `employe_id` (`department_employee_id`),
  KEY `priority_id` (`priority_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_customer_info`
--

LOCK TABLES `lead_customer_info` WRITE;
/*!40000 ALTER TABLE `lead_customer_info` DISABLE KEYS */;
INSERT INTO `lead_customer_info` VALUES (1,NULL,'Green Sarthi','Gaurav Agrawal','CEO','gaurav@greensarthi.com','','Mumbai','2117, Eaze Zone Mall, Goregaon Mulund link road, Malad (West). Mumbai 400064',1,91,'8451850882','',4,1,'this is service',3,14,13,3,60000,1,'2025-10-10 11:54:30','2025-10-10 11:54:30');
/*!40000 ALTER TABLE `lead_customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_followup`
--

DROP TABLE IF EXISTS `lead_followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_followup` (
  `lead_followup_id` int NOT NULL AUTO_INCREMENT,
  `lead_id` int NOT NULL,
  `followup_date` datetime NOT NULL,
  `department_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `comments` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `cts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_followup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_followup`
--

LOCK TABLES `lead_followup` WRITE;
/*!40000 ALTER TABLE `lead_followup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_header`
--

DROP TABLE IF EXISTS `lead_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_header` (
  `lead_header_id` int NOT NULL AUTO_INCREMENT,
  `lead_id` int NOT NULL,
  `lead_date_time` datetime NOT NULL,
  `lead_status_id` int NOT NULL,
  `department_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  PRIMARY KEY (`lead_header_id`),
  KEY `lead_id` (`lead_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_header`
--

LOCK TABLES `lead_header` WRITE;
/*!40000 ALTER TABLE `lead_header` DISABLE KEYS */;
INSERT INTO `lead_header` VALUES (1,1,'2025-10-10 17:22:45',8,3,14,'need to send quote',1,'2025-10-10 11:54:30','2025-10-10 11:54:30',13);
/*!40000 ALTER TABLE `lead_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_source`
--

DROP TABLE IF EXISTS `lead_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_source` (
  `lead_source_id` int NOT NULL AUTO_INCREMENT,
  `lead_source` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_source`
--

LOCK TABLES `lead_source` WRITE;
/*!40000 ALTER TABLE `lead_source` DISABLE KEYS */;
INSERT INTO `lead_source` VALUES (1,'Call','This is Call',1,'2025-08-25 13:51:08','2025-08-25 13:51:08'),(2,'Email','This is Email',1,'2025-08-25 14:06:35','2025-08-25 14:06:35'),(3,'Whatsapp','This is Whatsapp',1,'2025-08-25 14:06:59','2025-08-25 14:06:59'),(4,'Linkedin','This is Linkedin',1,'2025-08-25 14:07:32','2025-08-25 14:07:32'),(5,'Facebook','This is Facebook',1,'2025-08-25 14:07:57','2025-08-25 14:07:57'),(6,'Webinar','This is Webinar',1,'2025-08-25 14:08:34','2025-08-25 14:08:34'),(7,'Webinarasdd','This is Webinar',1,'2025-08-25 14:28:28','2025-08-25 14:28:28');
/*!40000 ALTER TABLE `lead_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_status`
--

DROP TABLE IF EXISTS `lead_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_status` (
  `lead_status_id` int NOT NULL AUTO_INCREMENT,
  `lead_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`lead_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_status`
--

LOCK TABLES `lead_status` WRITE;
/*!40000 ALTER TABLE `lead_status` DISABLE KEYS */;
INSERT INTO `lead_status` VALUES (1,'Open','This is Open',1,'2025-05-07 05:12:56','2025-06-16 06:29:47'),(2,'Close','this status close',1,'2025-06-16 06:30:05','2025-06-16 08:00:16'),(3,'In Progress','This is In Progress',1,'2025-07-04 07:23:57','2025-07-04 07:23:57');
/*!40000 ALTER TABLE `lead_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_assigned`
--

DROP TABLE IF EXISTS `meeting_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_assigned` (
  `meeting_assigned_id` int NOT NULL AUTO_INCREMENT,
  `meeting_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `employee_meeting_status_id` int NOT NULL DEFAULT '2',
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_assigned_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_assigned`
--

LOCK TABLES `meeting_assigned` WRITE;
/*!40000 ALTER TABLE `meeting_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_attachments`
--

DROP TABLE IF EXISTS `meeting_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_attachments` (
  `meeting_attach_id` int NOT NULL AUTO_INCREMENT,
  `meeting_id` int DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_attach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_attachments`
--

LOCK TABLES `meeting_attachments` WRITE;
/*!40000 ALTER TABLE `meeting_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_creation_info`
--

DROP TABLE IF EXISTS `meeting_creation_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_creation_info` (
  `meeting_info_id` int NOT NULL AUTO_INCREMENT,
  `meeting_id` int DEFAULT NULL,
  `meeting_date_time` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `meeting_status_id` int NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_info_id`),
  KEY `meeting_status_id` (`meeting_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_creation_info`
--

LOCK TABLES `meeting_creation_info` WRITE;
/*!40000 ALTER TABLE `meeting_creation_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_creation_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_customer_info`
--

DROP TABLE IF EXISTS `meeting_customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_customer_info` (
  `meeting_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `second_email_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isRefer` int DEFAULT NULL,
  `code_id` int DEFAULT NULL,
  `country_code` int DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `second_phone_number` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `meeting_source_id` int DEFAULT NULL,
  `meeting_type_id` int DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `event_details` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `department_employee_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `priority_id` int DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_id`),
  KEY `meeting_source_id` (`meeting_source_id`),
  KEY `meeting_type_id` (`meeting_type_id`),
  KEY `department_id` (`department_id`),
  KEY `priority_id` (`priority_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_customer_info`
--

LOCK TABLES `meeting_customer_info` WRITE;
/*!40000 ALTER TABLE `meeting_customer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_followup`
--

DROP TABLE IF EXISTS `meeting_followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_followup` (
  `meeting_followup_id` int NOT NULL AUTO_INCREMENT,
  `meeting_id` int DEFAULT NULL,
  `followup_date` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `comments` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_followup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_followup`
--

LOCK TABLES `meeting_followup` WRITE;
/*!40000 ALTER TABLE `meeting_followup` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_header`
--

DROP TABLE IF EXISTS `meeting_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_header` (
  `meeting_header_id` int NOT NULL AUTO_INCREMENT,
  `meeting_id` int NOT NULL,
  `meeting_date_time` datetime NOT NULL,
  `meeting_status_id` int NOT NULL,
  `department_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_header_id`),
  KEY `meeting_id` (`meeting_id`),
  KEY `department_id` (`department_id`),
  KEY `meeting_status_id` (`meeting_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_header`
--

LOCK TABLES `meeting_header` WRITE;
/*!40000 ALTER TABLE `meeting_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_source`
--

DROP TABLE IF EXISTS `meeting_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_source` (
  `meeting_source_id` int NOT NULL AUTO_INCREMENT,
  `meeting_source` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_source`
--

LOCK TABLES `meeting_source` WRITE;
/*!40000 ALTER TABLE `meeting_source` DISABLE KEYS */;
INSERT INTO `meeting_source` VALUES (1,'BNI','BNI',1,'2025-06-19 03:35:43','2025-06-19 03:35:43'),(2,'LinkedIn','This is LinkedIn',1,'2025-07-03 12:12:15','2025-07-03 12:12:15'),(3,'Facebook','This is Facebook',1,'2025-07-03 12:12:15','2025-07-03 12:12:15'),(4,'Existing Customer','Existing Customer',1,'2025-07-21 10:19:03','2025-07-21 10:19:03'),(5,'Walk-In','',1,'2025-08-01 08:43:10','2025-08-01 08:43:10'),(6,'Event','Sir met them at the Event',1,'2025-08-04 12:01:33','2025-08-04 12:01:33'),(7,'Webinar','Webinar',1,'2025-08-14 06:09:24','2025-08-14 06:09:24');
/*!40000 ALTER TABLE `meeting_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_status`
--

DROP TABLE IF EXISTS `meeting_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_status` (
  `meeting_status_id` int NOT NULL AUTO_INCREMENT,
  `meeting_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_status`
--

LOCK TABLES `meeting_status` WRITE;
/*!40000 ALTER TABLE `meeting_status` DISABLE KEYS */;
INSERT INTO `meeting_status` VALUES (1,'Scheduled','This is Scheduled',1,'2025-06-24 05:54:56','2025-06-24 05:54:56'),(2,'Follow Up','This is Follow Up',1,'2025-06-24 05:55:28','2025-06-24 05:55:28'),(3,'Converted','This is Converted',0,'2025-06-24 05:56:00','2025-09-29 12:02:12'),(4,'Not Interested','This is Not Intrested',0,'2025-06-24 05:56:28','2025-09-29 12:01:46'),(5,'Dead','This is Not Dead',1,'2025-06-24 05:56:37','2025-06-24 05:56:37'),(6,'Demo','This is Demo',1,'2025-06-27 11:22:04','2025-06-27 11:22:04'),(7,'Unassigned','This is Unassigned',0,'2025-08-08 10:32:48','2025-09-29 12:02:28'),(8,'Assigned','This is Assigned',1,'2025-08-14 11:38:13','2025-08-14 11:38:13'),(9,'Converted Lead','This is Converted Lead',1,'2025-09-22 04:06:31','2025-09-22 04:06:31');
/*!40000 ALTER TABLE `meeting_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_summary`
--

DROP TABLE IF EXISTS `meeting_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_summary` (
  `meeting_summary_id` int NOT NULL AUTO_INCREMENT,
  `meeting_id` int DEFAULT NULL,
  `summary` varchar(16000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_summary_id`),
  KEY `meeting_id` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_summary`
--

LOCK TABLES `meeting_summary` WRITE;
/*!40000 ALTER TABLE `meeting_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_type`
--

DROP TABLE IF EXISTS `meeting_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_type` (
  `meeting_type_id` int NOT NULL AUTO_INCREMENT,
  `meeting_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`meeting_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_type`
--

LOCK TABLES `meeting_type` WRITE;
/*!40000 ALTER TABLE `meeting_type` DISABLE KEYS */;
INSERT INTO `meeting_type` VALUES (1,'Zoom','Zoom',1,'2025-06-19 03:36:06','2025-06-19 03:36:06'),(2,'Microsoft Teams','This is Microsoft Teams',1,'2025-07-03 12:11:11','2025-07-03 12:11:11'),(3,'Meet in personal','Meet in personal',1,'2025-07-21 10:19:56','2025-07-22 05:10:15'),(4,'Google Meet','Google Meet',1,'2025-08-01 08:41:23','2025-08-01 08:41:23');
/*!40000 ALTER TABLE `meeting_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `module_id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `router_link` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`module_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Customers','[\'/user\',{ outlets: { user_menu: [\'customers\'] } }]','fa fas fa-users',1,'this customers is marketing',1,1,'2025-07-04 07:17:47'),(2,'Meetings','--','fa fas fa-video',1,'meeting is marketing department',1,1,'2025-07-04 07:18:25'),(3,'Reports','---','fa fas fa-scroll',1,'this reports is marketing',1,1,'2025-07-04 07:18:58'),(4,'Customers','[\'/sales\',{ outlets: { sale_menu: [\'customers\'] } }]','fa fas fa-users',2,'this customer is sale department',1,1,'2025-07-04 07:20:43'),(5,'Meetings','[\'/sales\',{ outlets: { sale_menu: [\'meetings\'] } }]','fa fas fa-video',2,'this meeting is sale department',1,1,'2025-07-04 07:21:42'),(6,'Reports','--','fa fas fa-scroll',2,'Reports is sale department',1,1,'2025-07-04 07:22:22'),(7,'Customers','[\'/accountant\',{ outlets: { accountant_menu: [\'customers\'] } }]','fa fas fa-users',3,'customers is accountant department',1,1,'2025-07-04 07:24:25'),(8,'Meetings','--','fa fas fa-video',3,'meeting is accountant department',1,1,'2025-07-04 07:25:05'),(9,'Reports','---','fa fas fa-scroll',3,'this reports is accountant department',1,1,'2025-07-04 07:25:45'),(10,'Meetings','[\'/supports\',{ outlets: { support_menu: [\'meetings\'] } }]','fa fas fa-video',4,'meeting is supports department',1,1,'2025-07-04 07:27:49'),(11,'Reports','--','fa fas fa-scroll',4,'this reports is supports department',1,1,'2025-07-04 07:28:44'),(12,'Task','[\'/user\',{ outlets: { user_menu: [\'task\'] } }]','fa fas fa-clipboard-list',1,'task is marketing department',1,1,'2025-07-04 07:30:59'),(13,'Task','[\'/sales\',{ outlets: { sale_menu: [\'task\'] } }]','fa fas fa-clipboard-list',2,'this task is sales department',1,1,'2025-07-04 07:31:36'),(14,'Task','[\'/accountant\',{ outlets: { accountant_menu: [\'task\'] } }]','fa fas fa-clipboard-list',3,'this task is accountant department',1,1,'2025-07-04 07:32:15'),(15,'Task','[\'/supports\',{ outlets: { support_menu: [\'task\'] } }]','fa fas fa-clipboard-list',4,'this task is supports department',1,1,'2025-07-04 07:32:57'),(16,'Lead','--','fa fas fa-file-signature',2,'add lead upload img',1,1,'2025-07-25 10:02:08'),(17,'Lead','--','fa fas fa-file-signature',1,'view new lead',1,1,'2025-07-25 10:09:59'),(18,'Meetings','--','fa fas fa-video',5,'this meeting is it department',1,1,'2025-07-28 06:09:59'),(19,'Task','[\'/it\',{ outlets: { it_menu: [\'task\'] } }]','fa fas fa-clipboard-list',5,'this task is it department',1,1,'2025-07-28 06:33:36'),(20,'Domain','[\'/it\',{ outlets: { it_menu: [\'domain\'] } }]','fa fas fa-globe',5,'this module domain',1,1,'2025-07-28 09:01:39'),(21,'Project','[\'/it\',{ outlets: { it_menu: [\'project\'] } }]','fa fas fa-folder-open',5,'it panel project add',1,1,'2025-07-28 12:03:21'),(22,'Reports','--','fa fas fa-scroll',5,'this reports is it department',1,1,'2025-07-29 04:30:13'),(23,'Meetings','--','fa fas fa-video',6,'this is it head department',1,1,'2025-08-07 08:23:29'),(24,'Task','[\'/it-head\',{ outlets: { it_head_menu: [\'task\'] } }]','fa fas fa-clipboard-list',6,'this is it head department',1,1,'2025-08-07 08:25:07'),(25,'Domain','[\'/it-head\',{ outlets: { it_head_menu: [\'domain\'] } }]','fa fas fa-globe',6,'this id head department',1,1,'2025-08-07 08:42:02'),(26,'Project','[\'/it-head\',{ outlets: { it_head_menu: [\'project\'] } }]','fa fas fa-folder-open',6,'this it head panel',1,1,'2025-08-07 08:44:03'),(27,'Reports','--','fa fas fa-scroll',6,'this is it head panel',1,1,'2025-08-07 08:44:55'),(28,'Lead','--','fa fas fa-file-signature',3,'this lead is account panel',1,1,'2025-08-28 11:07:00'),(29,'Lead','--','fa fas fa-file-signature',4,'this lead is support panel',1,1,'2025-08-28 11:07:32'),(30,'Lead','--','fa fas fa-file-signature',6,'this lead is IT head panel',1,1,'2025-08-28 11:08:01');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `otp_id` int NOT NULL AUTO_INCREMENT,
  `otp` int NOT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`otp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (1,140811,'usha.yadav@tecstaq.com',1,'2025-09-04 10:21:15');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_capture_lead`
--

DROP TABLE IF EXISTS `photo_capture_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo_capture_lead` (
  `photo_capture_lead_id` int NOT NULL AUTO_INCREMENT,
  `photo_capture` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comments` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`photo_capture_lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_capture_lead`
--

LOCK TABLES `photo_capture_lead` WRITE;
/*!40000 ALTER TABLE `photo_capture_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_capture_lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `priority_id` int NOT NULL AUTO_INCREMENT,
  `priority` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'Low','Low',1,'2025-05-07 11:45:24','2025-06-16 09:23:56'),(2,'High','This Is High',1,'2025-05-07 11:45:45','2025-06-16 09:33:48'),(3,'Medium','Medium',1,'2025-06-16 09:35:05','2025-10-10 08:23:17');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Microsoft Outlook','This is Microsoft Outlook',1,'2025-07-04 07:19:07','2025-07-04 07:19:07'),(2,'Gmail','This is Gmail',1,'2025-07-04 07:19:38','2025-07-04 07:19:38'),(3,'Acronis Backup','This is Acronis Backup',1,'2025-07-04 07:19:59','2025-07-04 07:19:59'),(4,'AWS','This is Aws',1,'2025-07-04 07:20:38','2025-07-04 07:20:38'),(5,'Google Workspace','This is Google Workspace',1,'2025-07-04 07:21:12','2025-07-04 07:21:12'),(6,'Zoom','This is Zoom',1,'2025-07-04 07:21:35','2025-07-04 07:21:35'),(7,'Dropbox','This is Dropbox',1,'2025-07-04 07:22:02','2025-07-04 07:22:02'),(8,'VMWare','This is VMWare',1,'2025-07-04 07:22:20','2025-07-04 07:22:20'),(9,'General Discussion','',1,'2025-08-01 08:51:29','2025-08-01 08:51:29'),(10,'CRM','They need help with CRM',1,'2025-08-04 12:00:43','2025-08-04 12:00:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Crm','Crm tecstaq',24,1,'2025-08-05 07:02:28','2025-08-05 07:02:28'),(2,'Food Chain ID Audit','Food Chain ID Audit',24,1,'2025-08-06 04:59:45','2025-08-06 04:59:45'),(3,'HRMS','HRMS',25,1,'2025-08-08 04:48:43','2025-08-08 04:48:43'),(4,'Monntrgo','Monntrgo Ecommerce',25,1,'2025-08-18 05:21:33','2025-08-18 05:21:33'),(5,'Meetings','Meetings',25,1,'2025-08-20 05:45:56','2025-08-20 05:45:56'),(6,'HelpDesk Tecstaq','help desk app',21,1,'2025-10-17 04:52:59','2025-10-17 12:42:49');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_footer`
--

DROP TABLE IF EXISTS `project_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_footer` (
  `project_footer_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `department_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_footer_id`),
  KEY `project_id` (`project_id`),
  KEY `user_id_fk` (`user_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_footer`
--

LOCK TABLES `project_footer` WRITE;
/*!40000 ALTER TABLE `project_footer` DISABLE KEYS */;
INSERT INTO `project_footer` VALUES (1,1,5,21,1,'2025-08-05 07:02:28','2025-08-05 07:02:28'),(2,1,5,22,1,'2025-08-05 07:02:28','2025-08-05 07:02:28'),(3,2,5,23,1,'2025-08-06 04:59:45','2025-08-06 04:59:45'),(4,3,5,21,1,'2025-08-08 04:51:11','2025-08-08 04:51:11'),(5,3,5,22,1,'2025-08-08 04:51:11','2025-08-08 04:51:11'),(6,3,6,25,1,'2025-08-13 09:05:14','2025-08-13 09:05:14'),(7,4,6,25,1,'2025-08-18 05:21:33','2025-08-18 05:21:33'),(8,5,6,25,1,'2025-08-20 05:45:56','2025-08-20 05:45:56'),(9,6,5,21,1,'2025-10-17 04:52:59','2025-10-17 04:52:59'),(10,6,5,22,1,'2025-10-17 04:52:59','2025-10-17 04:52:59'),(11,6,6,25,1,'2025-10-17 04:52:59','2025-10-17 04:52:59');
/*!40000 ALTER TABLE `project_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_footer`
--

DROP TABLE IF EXISTS `quotation_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_footer` (
  `quotation_footer_id` int NOT NULL AUTO_INCREMENT,
  `quotation_header_id` int NOT NULL,
  `task_header_id` int NOT NULL,
  `quotation_amount` int NOT NULL,
  `quotation_type` enum('Approved','Not Approved','Dead','Hold','On Going') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`quotation_footer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_footer`
--

LOCK TABLES `quotation_footer` WRITE;
/*!40000 ALTER TABLE `quotation_footer` DISABLE KEYS */;
INSERT INTO `quotation_footer` VALUES (1,1,1,360200,'On Going',1,'2025-10-03 08:45:33','2025-10-03 08:45:33'),(2,2,1,360200,'On Going',1,'2025-10-03 08:46:10','2025-10-03 08:46:10'),(3,3,1,360200,'On Going',1,'2025-10-03 08:47:49','2025-10-03 08:47:49'),(4,4,2,0,'',1,'2025-10-07 06:14:37','2025-10-07 06:14:37'),(5,5,2,0,'',1,'2025-10-07 06:15:24','2025-10-07 06:15:24'),(6,6,2,0,'',1,'2025-10-07 12:51:52','2025-10-07 12:51:52'),(7,7,3,0,'',1,'2025-10-08 04:05:29','2025-10-08 04:05:29'),(8,8,4,115222,'Approved',1,'2025-10-08 07:54:13','2025-10-08 07:54:13'),(9,9,5,0,'',1,'2025-10-07 11:19:43','2025-10-07 11:19:43'),(10,10,6,0,'',1,'2025-10-08 11:24:19','2025-10-08 11:24:19'),(11,11,3,0,'',1,'2025-10-08 12:01:20','2025-10-08 12:01:20'),(12,12,7,0,'',1,'2025-10-09 05:52:37','2025-10-09 05:52:37'),(13,13,8,0,'',1,'2025-10-09 07:41:23','2025-10-09 07:41:23'),(14,14,8,0,'',1,'2025-10-09 13:06:01','2025-10-09 13:06:01'),(15,15,9,0,'',1,'2025-10-10 12:15:50','2025-10-10 12:15:50'),(16,16,7,0,'',1,'2025-10-13 12:18:41','2025-10-13 12:18:41'),(17,17,10,0,'',1,'2025-10-13 12:19:46','2025-10-13 12:19:46'),(18,18,11,0,'',1,'2025-10-17 04:54:33','2025-10-17 04:54:33'),(19,19,11,0,'',1,'2025-10-17 12:41:31','2025-10-17 12:41:31'),(20,20,12,10110,'On Going',1,'2025-10-18 09:18:03','2025-10-18 09:18:03'),(21,21,12,10110,'On Going',1,'2025-10-18 09:18:57','2025-10-18 09:18:57'),(22,22,12,10110,'On Going',1,'2025-10-18 09:19:56','2025-10-18 09:19:56'),(23,23,13,1850,'Approved',1,'2025-10-18 09:25:42','2025-10-18 09:25:42'),(24,24,14,67300,'On Going',1,'2025-10-18 09:29:50','2025-10-18 09:29:50'),(25,25,14,67300,'On Going',1,'2025-10-18 09:30:15','2025-10-18 09:30:15'),(26,26,15,82200,'Approved',1,'2025-10-18 09:35:01','2025-10-18 09:35:01'),(27,27,16,2000,'On Going',1,'2025-10-18 09:49:40','2025-10-18 09:49:40'),(28,28,16,4500,'On Going',1,'2025-10-18 09:50:23','2025-10-18 09:50:23'),(29,29,16,4500,'Dead',1,'2025-10-18 09:51:21','2025-10-18 09:51:21'),(30,30,16,4500,'Dead',1,'2025-10-18 09:53:26','2025-10-18 09:53:26'),(31,31,17,33450,'On Going',1,'2025-10-18 09:58:41','2025-10-18 09:58:41'),(32,32,17,33450,'Dead',1,'2025-10-18 10:00:16','2025-10-18 10:00:16'),(33,33,18,225050,'On Going',1,'2025-10-18 10:05:53','2025-10-18 10:05:53'),(34,34,19,14800,'On Going',1,'2025-10-18 10:12:32','2025-10-18 10:12:32'),(35,35,20,2310,'Approved',1,'2025-10-18 10:15:55','2025-10-18 10:15:55'),(36,36,21,90600,'On Going',1,'2025-10-18 10:18:04','2025-10-18 10:18:04'),(37,37,22,60000,'Dead',1,'2025-10-18 10:21:47','2025-10-18 10:21:47'),(38,38,23,105050,'On Going',1,'2025-10-18 10:26:59','2025-10-18 10:26:59'),(39,39,24,207700,'Approved',1,'2025-10-18 10:33:17','2025-10-18 10:33:17'),(40,40,25,550,'Approved',1,'2025-10-18 10:35:45','2025-10-18 10:35:45'),(41,41,24,207700,'Approved',1,'2025-10-18 10:36:00','2025-10-18 10:36:00'),(42,42,26,5677,'On Going',1,'2025-10-18 10:45:44','2025-10-18 10:45:44'),(43,43,26,5677,'On Going',1,'2025-10-18 10:46:55','2025-10-18 10:46:55'),(44,44,27,34270,'On Going',1,'2025-10-18 10:49:49','2025-10-18 10:49:49'),(45,45,28,123,'Dead',1,'2025-10-18 11:26:43','2025-10-18 11:26:43'),(46,46,29,4800,'Approved',1,'2025-10-18 12:11:40','2025-10-18 12:11:40'),(47,47,30,420000,'On Going',1,'2025-10-24 11:54:50','2025-10-24 11:54:50'),(48,48,31,1014102,'On Going',1,'2025-10-24 12:10:11','2025-10-24 12:10:11'),(49,49,32,1117000,'On Going',1,'2025-10-24 12:11:57','2025-10-24 12:11:57'),(50,50,33,2134758,'On Going',1,'2025-10-24 12:15:44','2025-10-24 12:15:44'),(51,51,34,550,'Approved',1,'2025-10-29 11:29:22','2025-10-29 11:29:22'),(52,52,35,21000,'',1,'2025-10-29 11:37:36','2025-10-29 11:37:36'),(53,53,36,134400,'',1,'2025-10-29 11:43:32','2025-10-29 11:43:32'),(54,54,36,92700,'',1,'2025-10-29 11:50:31','2025-10-29 11:50:31'),(55,55,36,92700,'',1,'2025-10-29 11:51:19','2025-10-29 11:51:19'),(56,56,37,18232,'',1,'2025-10-29 11:55:52','2025-10-29 11:55:52'),(57,57,26,5677,'Dead',1,'2025-10-29 12:15:12','2025-10-29 12:15:12'),(58,58,37,20232,'',1,'2025-10-29 12:19:11','2025-10-29 12:19:11'),(59,59,38,6350,'Approved',1,'2025-10-30 06:08:12','2025-10-30 06:08:12'),(60,60,36,233360,'',1,'2025-10-31 06:57:38','2025-10-31 06:57:38'),(61,61,36,119930,'',1,'2025-10-31 06:59:16','2025-10-31 06:59:16'),(62,62,14,63050,'On Going',1,'2025-10-31 07:19:06','2025-10-31 07:19:06'),(63,63,14,54200,'On Going',1,'2025-10-31 07:21:35','2025-10-31 07:21:35'),(64,64,14,54200,'On Going',1,'2025-10-31 07:24:48','2025-10-31 07:24:48'),(65,65,14,54200,'On Going',1,'2025-10-31 07:25:05','2025-10-31 07:25:05'),(66,66,14,54200,'On Going',1,'2025-10-31 07:25:20','2025-10-31 07:25:20'),(67,67,14,54200,'On Going',1,'2025-10-31 07:26:01','2025-10-31 07:26:01'),(68,68,36,119930,'',1,'2025-10-31 07:30:24','2025-10-31 07:30:24');
/*!40000 ALTER TABLE `quotation_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_header`
--

DROP TABLE IF EXISTS `quotation_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_header` (
  `quotation_header_id` int NOT NULL AUTO_INCREMENT,
  `task_header_id` int NOT NULL,
  `customer` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`quotation_header_id`),
  KEY `task_header_id` (`task_header_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_header`
--

LOCK TABLES `quotation_header` WRITE;
/*!40000 ALTER TABLE `quotation_header` DISABLE KEYS */;
INSERT INTO `quotation_header` VALUES (1,1,'Rakesh Kanthar',1,'2025-10-03 08:45:33','2025-10-03 08:45:33'),(2,1,'Rakesh Kanthar',1,'2025-10-03 08:46:10','2025-10-03 08:46:10'),(3,1,'Rakesh Kanthar',1,'2025-10-03 08:47:49','2025-10-03 08:47:49'),(4,2,'',1,'2025-10-07 06:14:37','2025-10-07 06:14:37'),(5,2,'',1,'2025-10-07 06:15:24','2025-10-07 06:15:24'),(6,2,'',1,'2025-10-07 12:51:52','2025-10-07 12:51:52'),(7,3,'',1,'2025-10-08 04:05:29','2025-10-08 04:05:29'),(8,4,'Pooja Saini',1,'2025-10-08 07:54:13','2025-10-08 07:54:13'),(9,5,'',1,'2025-10-07 11:19:43','2025-10-07 11:19:43'),(10,6,'',1,'2025-10-08 11:24:19','2025-10-08 11:24:19'),(11,3,'',1,'2025-10-08 12:01:20','2025-10-08 12:01:20'),(12,7,'',1,'2025-10-09 05:52:37','2025-10-09 05:52:37'),(13,8,'',1,'2025-10-09 07:41:23','2025-10-09 07:41:23'),(14,8,'',1,'2025-10-09 13:06:01','2025-10-09 13:06:01'),(15,9,'',1,'2025-10-10 12:15:50','2025-10-10 12:15:50'),(16,7,'',1,'2025-10-13 12:18:41','2025-10-13 12:18:41'),(17,10,'',1,'2025-10-13 12:19:46','2025-10-13 12:19:46'),(18,11,'',1,'2025-10-17 04:54:33','2025-10-17 04:54:33'),(19,11,'',1,'2025-10-17 12:41:31','2025-10-17 12:41:31'),(20,12,'Roshan',1,'2025-10-18 09:18:03','2025-10-18 09:18:03'),(21,12,'Roshan',1,'2025-10-18 09:18:57','2025-10-18 09:18:57'),(22,12,'Roshan Ichake',1,'2025-10-18 09:19:56','2025-10-18 09:19:56'),(23,13,'Manisha Panigrahi',1,'2025-10-18 09:25:42','2025-10-18 09:25:42'),(24,14,'Tejashree Yeole.',1,'2025-10-18 09:29:50','2025-10-18 09:29:50'),(25,14,'Tejashree Yeole.',1,'2025-10-18 09:30:15','2025-10-18 09:30:15'),(26,15,'Disha',1,'2025-10-18 09:35:01','2025-10-18 09:35:01'),(27,16,'Manjushah Mule',1,'2025-10-18 09:49:40','2025-10-18 09:49:40'),(28,16,'Manjushah Mule',1,'2025-10-18 09:50:23','2025-10-18 09:50:23'),(29,16,'Manjushah Mule',1,'2025-10-18 09:51:21','2025-10-18 09:51:21'),(30,16,'Manjushah Mule',1,'2025-10-18 09:53:26','2025-10-18 09:53:26'),(31,17,'IrishKumar Joshi.',1,'2025-10-18 09:58:41','2025-10-18 09:58:41'),(32,17,'IrishKumar Joshi.',1,'2025-10-18 10:00:16','2025-10-18 10:00:16'),(33,18,'Rupesh Joshi',1,'2025-10-18 10:05:53','2025-10-18 10:05:53'),(34,19,'IrishKumar Joshi.',1,'2025-10-18 10:12:32','2025-10-18 10:12:32'),(35,20,'Vipul Shah',1,'2025-10-18 10:15:55','2025-10-18 10:15:55'),(36,21,'Vipul Shah',1,'2025-10-18 10:18:04','2025-10-18 10:18:04'),(37,22,'Gaurav Agrawal',1,'2025-10-18 10:21:47','2025-10-18 10:21:47'),(38,23,'Vipul Shah',1,'2025-10-18 10:26:59','2025-10-18 10:26:59'),(39,24,'Ashfaq Shilliwala.',1,'2025-10-18 10:33:17','2025-10-18 10:33:17'),(40,25,'Leena',1,'2025-10-18 10:35:45','2025-10-18 10:35:45'),(41,24,'Ashfaq Shilliwala.',1,'2025-10-18 10:36:00','2025-10-18 10:36:00'),(42,26,'Mr. Narayan',1,'2025-10-18 10:45:44','2025-10-18 10:45:44'),(43,26,'Mr. Narayan',1,'2025-10-18 10:46:55','2025-10-18 10:46:55'),(44,27,'Manoj Kudalkar',1,'2025-10-18 10:49:49','2025-10-18 10:49:49'),(45,28,'Rajendra',1,'2025-10-18 11:26:43','2025-10-18 11:26:43'),(46,29,'Rohini Agrawal',1,'2025-10-18 12:11:40','2025-10-18 12:11:40'),(47,30,'Rinkoo Somani',1,'2025-10-24 11:54:50','2025-10-24 11:54:50'),(48,31,'Rinkoo Somani',1,'2025-10-24 12:10:11','2025-10-24 12:10:11'),(49,32,'Rinkoo Somani',1,'2025-10-24 12:11:57','2025-10-24 12:11:57'),(50,33,'Rinkoo Somani',1,'2025-10-24 12:15:44','2025-10-24 12:15:44'),(51,34,'Ms. Leena Naidu',1,'2025-10-29 11:29:22','2025-10-29 11:29:22'),(52,35,'Mr. Santosh Rathod',1,'2025-10-29 11:37:36','2025-10-29 11:37:36'),(53,36,'Mr. Jignesh',1,'2025-10-29 11:43:32','2025-10-29 11:43:32'),(54,36,'Mr. Anoop Daga',1,'2025-10-29 11:50:31','2025-10-29 11:50:31'),(55,36,'Mr. Anoop Daga',1,'2025-10-29 11:51:19','2025-10-29 11:51:19'),(56,37,'Mr. Narayan',1,'2025-10-29 11:55:52','2025-10-29 11:55:52'),(57,26,'Mr. Narayan',1,'2025-10-29 12:15:12','2025-10-29 12:15:12'),(58,37,'Mr. Narayan',1,'2025-10-29 12:19:11','2025-10-29 12:19:11'),(59,38,'Vipul Shah',1,'2025-10-30 06:08:12','2025-10-30 06:08:12'),(60,36,'Mr. Anoop Daga',1,'2025-10-31 06:57:38','2025-10-31 06:57:38'),(61,36,'Mr. Anoop Daga',1,'2025-10-31 06:59:16','2025-10-31 06:59:16'),(62,14,'Tejashree Yeole.',1,'2025-10-31 07:19:06','2025-10-31 07:19:06'),(63,14,'Tejashree Yeole.',1,'2025-10-31 07:21:35','2025-10-31 07:21:35'),(64,14,'Tejashree Yeole.',1,'2025-10-31 07:24:48','2025-10-31 07:24:48'),(65,14,'Tejashree Yeole.',1,'2025-10-31 07:25:05','2025-10-31 07:25:05'),(66,14,'Tejashree Yeole.',1,'2025-10-31 07:25:20','2025-10-31 07:25:20'),(67,14,'Tejashree Yeole.',1,'2025-10-31 07:26:01','2025-10-31 07:26:01'),(68,36,'Mr. Anoop Daga',1,'2025-10-31 07:30:24','2025-10-31 07:30:24');
/*!40000 ALTER TABLE `quotation_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Open',1,1,'2025-03-17 11:13:52','0000-00-00 00:00:00'),(2,'Accepted',1,1,'2025-03-17 11:14:20','0000-00-00 00:00:00'),(3,'In process',1,1,'2025-03-18 03:56:23','0000-00-00 00:00:00'),(4,'Close',1,0,'2025-03-17 11:40:28','0000-00-00 00:00:00'),(5,'Completed',1,1,'2025-03-25 10:10:18','2025-04-24 11:36:35'),(6,'Hold',1,1,'2025-03-27 07:06:06','2025-04-22 09:31:16'),(8,'Cancelled',1,1,'2025-10-28 12:06:31','2025-10-28 12:06:31');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_modules`
--

DROP TABLE IF EXISTS `sub_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_modules` (
  `sub_module_id` int NOT NULL AUTO_INCREMENT,
  `sub_module_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `module_id` int NOT NULL,
  `router_link` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `user_id` int NOT NULL,
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sub_module_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_modules`
--

LOCK TABLES `sub_modules` WRITE;
/*!40000 ALTER TABLE `sub_modules` DISABLE KEYS */;
INSERT INTO `sub_modules` VALUES (1,'Meeting',3,'[\'/user\',{ outlets: { user_menu: [\'report\'] } }]',1,'this reports is marketing department',1,1,'2025-07-04 07:19:49'),(2,'Meeting',6,'[\'/sales\',{ outlets: { sale_menu: [\'report\'] } }]',2,'this repots is sale department',1,1,'2025-07-04 07:23:23'),(3,'Meeting',9,'[\'/accountant\',{ outlets: { accountant_menu: [\'report\'] } }]',3,'report is accountant department',1,1,'2025-07-04 07:26:29'),(4,'Meeting',11,'[\'/supports\',{ outlets: { support_menu: [\'report\'] } }]',4,'this reports is support department',1,1,'2025-07-04 07:29:56'),(5,'Task',3,'[\'/user\',{ outlets: { user_menu: [\'task-report\'] } }]',1,'this report is task for marketing',1,1,'2025-07-17 04:35:40'),(6,'Task',11,'[\'/supports\',{ outlets: { support_menu: [\'task-report\'] } }]',4,'this reports task is support panel',1,1,'2025-07-17 04:45:17'),(7,'Task',9,'[\'/accountant\',{ outlets: { accountant_menu: [\'task-report\'] } }]',3,'this task report is account panel',1,1,'2025-07-17 04:46:09'),(8,'Task',6,'[\'/sales\',{ outlets: { sale_menu: [\'task-report\'] } }]',2,'this task report is sale panel',1,1,'2025-07-17 04:46:51'),(9,'Create',2,'[\'/user\',{ outlets: { user_menu: [\'meeting\'] } }]',1,'create meeting',1,1,'2025-07-24 05:33:28'),(10,'Calendar',2,'[\'/user\',{ outlets: { user_menu: [\'calendar\'] } }]',1,'meeting calender wise display',1,1,'2025-07-24 05:36:46'),(11,'Status',2,'[\'/user\',{ outlets: { user_menu: [\'status-wise\'] } }]',1,'meeting display status wise',1,1,'2025-07-24 05:37:55'),(12,'Create',5,'[\'/sales\',{ outlets: { sale_menu: [\'meetings\'] } }]',2,'meeting sale create sub menu',1,1,'2025-07-24 11:42:23'),(13,'Calendar',5,'[\'/sales\',{ outlets: { sale_menu: [\'calendar\'] } }]',2,'calendar for sale panel meeting',1,1,'2025-07-24 11:43:52'),(14,'Status',5,'[\'/sales\',{ outlets: { sale_menu: [\'status-wise\'] } }]',2,'status wise meeting month wise',1,1,'2025-07-24 11:45:23'),(15,'Create',10,'[\'/supports\',{ outlets: { support_menu: [\'meetings\'] } }]',4,'support meeting create sub menu tab',1,1,'2025-07-24 11:47:58'),(16,'Calendar',10,'[\'/supports\',{ outlets: { support_menu: [\'calendar\'] } }]',4,'support panel calendar sub menu add',1,1,'2025-07-24 11:50:29'),(17,'Status',10,'[\'/supports\',{ outlets: { support_menu: [\'status-wise\'] } }]',4,'support panel status-wise sub menu add',1,1,'2025-07-24 11:51:30'),(18,'Create',8,'[\'/accountant\',{ outlets: { accountant_menu: [\'meetings\'] } }]',3,'create  meeting sub menu add account panel',1,1,'2025-07-24 11:53:39'),(19,'Calendar',8,'[\'/accountant\',{ outlets: { accountant_menu: [\'calendar\'] } }]',3,'calendar sub menu add for account panel',1,1,'2025-07-24 11:54:43'),(20,'Status',8,'[\'/accountant\',{ outlets: { accountant_menu: [\'status-wise\'] } }]',3,'status sub menu add for account panel',1,1,'2025-07-24 11:55:50'),(21,'List',16,'[\'/sales\',{ outlets: { sale_menu: [\'lead\'] } }]',2,'lead list for sale panel upload lead img',1,1,'2025-07-25 10:07:20'),(22,'List',17,'[\'/user\',{ outlets: { user_menu: [\'lead\'] } }]',1,'view lead list for marketing panel',1,1,'2025-07-25 10:11:16'),(23,'Create',18,'[\'/it\',{ outlets: { it_menu: [\'meeting\'] } }]',5,'this is a meeting for it',1,1,'2025-07-28 06:11:43'),(24,'Calendar',18,'[\'/it\',{ outlets: { it_menu: [\'calendar\'] } }]',5,'this calendar is it department',1,1,'2025-07-28 06:20:25'),(25,'Task',22,'[\'/it\',{ outlets: { it_menu: [\'task-report\'] } }]',5,'this task report is it panel',1,1,'2025-07-29 04:31:57'),(26,'Meeting',22,'[\'/it\',{ outlets: { it_menu: [\'report\'] } }]',5,'this meeting repots is it panel',1,1,'2025-07-29 04:32:43'),(27,'Create',23,'[\'/it-head\',{ outlets: { it_head_menu: [\'meeting\'] } }]',6,'this is a meeting for it head',1,1,'2025-08-07 08:49:45'),(28,'Calendar',23,'[\'/it-head\',{ outlets: { it_head_menu: [\'calendar\'] } }]',6,'calendar it head',1,1,'2025-08-07 08:50:35'),(29,'Task',27,'[\'/it-head\',{ outlets: { it_head_menu: [\'task-report\'] } }]',6,'it head reports task',1,1,'2025-08-07 08:51:48'),(30,'Meeting',27,'[\'/it-head\',{ outlets: { it_head_menu: [\'report\'] } }]',6,'this is it head report meeting',1,1,'2025-08-07 08:53:00'),(31,'List',28,'[\'/accountant\',{ outlets: { accountant_menu: [\'lead\'] } }]',3,'this lead account panel list',1,1,'2025-08-28 11:10:17'),(32,'List',30,'[\'/it-head\',{ outlets: { it_head_menu: [\'lead\'] } }]',6,'this lead is it panel',1,1,'2025-08-28 11:12:09'),(33,'List',29,'[\'/supports\',{ outlets: { support_menu: [\'lead\'] } }]',4,'this lead is support panel',1,1,'2025-08-28 11:16:06'),(34,'Lead',6,'[\'/sales\',{ outlets: { sale_menu: [\'lead-report\'] } }]',2,'this lead report sale panel',1,1,'2025-09-17 04:17:43'),(35,'Lead',3,'[\'/user\',{ outlets: { user_menu: [\'lead-report\'] } }]',1,'this lead report is marketing panel',1,1,'2025-09-17 04:20:26'),(36,'Lead',9,'[\'/accountant\',{ outlets: { accountant_menu: [\'lead-report\'] } }]',3,'lead report acc. panel',1,1,'2025-09-17 04:21:09'),(37,'Lead',11,'[\'/supports\',{ outlets: { support_menu: [\'lead-report\'] } }]',4,'lead report is support panel',1,1,'2025-09-17 04:21:52'),(38,'Lead',27,'[\'/it-head\',{ outlets: { it_head_menu: [\'lead-report\'] } }]',6,'lead report it head panel',1,1,'2025-09-17 04:23:30');
/*!40000 ALTER TABLE `sub_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_comments`
--

DROP TABLE IF EXISTS `task_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_comments` (
  `task_comments_id` int NOT NULL AUTO_INCREMENT,
  `task_header_id` int NOT NULL,
  `task_comments` varchar(2500) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_comments_id`),
  KEY `task_header_id` (`task_header_id`),
  CONSTRAINT `task_comments_ibfk_1` FOREIGN KEY (`task_header_id`) REFERENCES `task_header` (`task_header_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_comments`
--

LOCK TABLES `task_comments` WRITE;
/*!40000 ALTER TABLE `task_comments` DISABLE KEYS */;
INSERT INTO `task_comments` VALUES (1,1,'23/Sept - Sent Quotation&nbsp;',14,1,'2025-10-03 08:45:33','2025-10-03 08:45:33'),(2,1,'23/Sept -&nbsp;Can we have one session to understand the pro and cons of the system and related cost in future…before finalising this____Rakesh Sir',14,1,'2025-10-03 08:46:10','2025-10-03 08:46:10'),(3,1,'26/Sept -&nbsp;Sent mail for Suitable time for Zoom Meeting&nbsp;',14,1,'2025-10-03 08:47:49','2025-10-03 08:47:49'),(4,2,'1. Crm - Tecstaq Logo Update&nbsp;2. Hrms - Admin Master table changes',21,1,'2025-10-07 06:14:37','2025-10-07 06:14:37'),(5,2,'1. Crm - Tecstaq Logo Update&nbsp;2. Hrms - Admin Master table changes - Inprogress',21,1,'2025-10-07 06:15:24','2025-10-07 06:15:24'),(6,2,'1. Crm - Tecstaq Logo Update = Completed 2. Hrms - Admin Master table changes =&nbsp;Completed&nbsp;',21,1,'2025-10-07 12:51:52','2025-10-07 12:51:52'),(7,3,'Hrms- Leave type master table : crud',21,1,'2025-10-08 04:05:29','2025-10-08 04:05:29'),(8,4,'Received Verbal Confirmation&nbsp;',14,1,'2025-10-08 07:54:13','2025-10-08 07:54:13'),(9,5,'Check Server Stop Start',22,1,'2025-10-07 11:19:43','2025-10-07 11:19:43'),(10,6,'1.Status change all table api.2.List all table api',22,1,'2025-10-08 11:24:19','2025-10-08 11:24:19'),(11,3,'Hrms- Leave type master table : crud : Completed&nbsp;',21,1,'2025-10-08 12:01:20','2025-10-08 12:01:20'),(12,7,'1.by id all table api1.download all master table api',22,1,'2025-10-09 05:52:37','2025-10-09 05:52:37'),(13,8,'all master table Download api excel',21,1,'2025-10-09 07:41:23','2025-10-09 07:41:23'),(14,8,'all master table Download api excel - complete',21,1,'2025-10-09 13:06:01','2025-10-09 13:06:01'),(15,9,'1.use download2.employee download',22,1,'2025-10-10 12:15:50','2025-10-10 12:15:50'),(16,7,'',22,1,'2025-10-13 12:18:41','2025-10-13 12:18:41'),(17,10,'pending task list and count bug',22,1,'2025-10-13 12:19:46','2025-10-13 12:19:46'),(18,11,'1.&nbsp; Admin Master add-update, get by id&nbsp;2.&nbsp; admin User crud&nbsp;3.&nbsp; All Panel Report4.&nbsp; All list Download Excel Sheet&nbsp;5.&nbsp; Change password&nbsp;6.&nbsp; Forgot password',21,1,'2025-10-17 04:54:33','2025-10-17 04:54:33'),(19,11,'1.&nbsp; Admin Master add-update, get by id&nbsp;2.&nbsp; admin User crud&nbsp;3.&nbsp; All Panel Report4.&nbsp; All list Download Excel Sheet&nbsp;5.&nbsp; Change password&nbsp;6.&nbsp; Forgot password -Completed&nbsp;',21,1,'2025-10-17 12:41:31','2025-10-17 12:41:31'),(20,12,'Sent Reminder / Call',14,1,'2025-10-18 09:18:03','2025-10-18 09:18:03'),(21,12,'We are currently reviewing the quotation. Could you please send us a comparison of the standard plan and the basic plan for the Microsoft o365 licenses?_Roshan',14,1,'2025-10-18 09:18:57','2025-10-18 09:18:57'),(22,12,'',14,1,'2025-10-18 09:19:56','2025-10-18 09:19:56'),(23,13,'\n  Approval\n  Received',14,1,'2025-10-18 09:25:42','2025-10-18 09:25:42'),(24,14,'Sent Reminder&nbsp;',14,1,'2025-10-18 09:29:50','2025-10-18 09:29:50'),(25,14,'sent Reminder /We are evaluating , other vendors as well___Tejasshree Yeole',14,1,'2025-10-18 09:30:15','2025-10-18 09:30:15'),(26,15,'Received Approval',14,1,'2025-10-18 09:35:01','2025-10-18 09:35:01'),(27,16,'We need 2 year rate- Manjushah',14,1,'2025-10-18 09:49:40','2025-10-18 09:49:40'),(28,16,'Sent Revised quote',14,1,'2025-10-18 09:50:23','2025-10-18 09:50:23'),(29,16,'We have gone with another vendor- David Pinto',14,1,'2025-10-18 09:51:21','2025-10-18 09:51:21'),(30,16,'',14,1,'2025-10-18 09:53:26','2025-10-18 09:53:26'),(31,17,'Sent Reminder',14,1,'2025-10-18 09:58:41','2025-10-18 09:58:41'),(32,17,'As discussed during our recent call, you mentioned that you are currently not interested in exploring opportunities with Microsoft. You also shared that you might consider it after approximately eight months.',14,1,'2025-10-18 10:00:16','2025-10-18 10:00:16'),(33,18,'Sent Reminder&nbsp;',14,1,'2025-10-18 10:05:53','2025-10-18 10:05:53'),(34,19,'Sent Reminder&nbsp;',14,1,'2025-10-18 10:12:32','2025-10-18 10:12:32'),(35,20,'\n  Approval\n  Received- As per Telephonic Conversation with Khushboo Mam.&nbsp;',14,1,'2025-10-18 10:15:55','2025-10-18 10:15:55'),(36,21,'sent Reminder&nbsp;',14,1,'2025-10-18 10:18:04','2025-10-18 10:18:04'),(37,22,'Thanks for sharing the quotation. The total budget exceeds our expectations nor the project is going to take as many hours as your team had predicted so we cannot proceed further on this project right now. Anyway we will let you know in future if we have any requirements. - Gaurav',14,1,'2025-10-18 10:21:47','2025-10-18 10:21:47'),(38,23,'Sent Reminder&nbsp;',14,1,'2025-10-18 10:26:59','2025-10-18 10:26:59'),(39,24,'\n  PO\n  Received&nbsp;',14,1,'2025-10-18 10:33:17','2025-10-18 10:33:17'),(40,25,'\n  Approval\n  Revived',14,1,'2025-10-18 10:35:45','2025-10-18 10:35:45'),(41,24,'',14,1,'2025-10-18 10:36:00','2025-10-18 10:36:00'),(42,26,'Sent Revised quote&nbsp;',14,1,'2025-10-18 10:45:44','2025-10-18 10:45:44'),(43,26,'',14,1,'2025-10-18 10:46:55','2025-10-18 10:46:55'),(44,27,'Sent Reminder&nbsp;',14,1,'2025-10-18 10:49:49','2025-10-18 10:49:49'),(45,28,'for Trail',14,1,'2025-10-18 11:26:43','2025-10-18 11:26:43'),(46,29,'Approval Received',14,1,'2025-10-18 12:11:40','2025-10-18 12:11:40'),(47,30,'work in progress',14,1,'2025-10-24 11:54:50','2025-10-24 11:54:50'),(48,31,'Work in Progress&nbsp;',14,1,'2025-10-24 12:10:11','2025-10-24 12:10:11'),(49,32,'Work In Progress',14,1,'2025-10-24 12:11:57','2025-10-24 12:11:57'),(50,33,'Work in Progress',14,1,'2025-10-24 12:15:44','2025-10-24 12:15:44'),(51,34,'',14,1,'2025-10-29 11:29:22','2025-10-29 11:29:22'),(52,35,'Sent Reminder',14,1,'2025-10-29 11:37:36','2025-10-29 11:37:36'),(53,36,'',14,1,'2025-10-29 11:43:32','2025-10-29 11:43:32'),(54,36,'Sent Revised Quotation&nbsp;',14,1,'2025-10-29 11:50:31','2025-10-29 11:50:31'),(55,36,'Sent Reminder&nbsp;',14,1,'2025-10-29 11:51:19','2025-10-29 11:51:19'),(56,37,'',14,1,'2025-10-29 11:55:52','2025-10-29 11:55:52'),(57,26,'',14,1,'2025-10-29 12:15:12','2025-10-29 12:15:12'),(58,37,'Sent Re-Revised Quote&nbsp;',14,1,'2025-10-29 12:19:11','2025-10-29 12:19:11'),(59,38,'',14,1,'2025-10-30 06:08:12','2025-10-30 06:08:12'),(60,36,'',14,1,'2025-10-31 06:57:38','2025-10-31 06:57:38'),(61,36,'',14,1,'2025-10-31 06:59:16','2025-10-31 06:59:16'),(62,14,'sent Revised Quotation&nbsp;',14,1,'2025-10-31 07:19:06','2025-10-31 07:19:06'),(63,14,'Sent Re- Revised Quotation&nbsp;',14,1,'2025-10-31 07:21:35','2025-10-31 07:21:35'),(64,14,'Sent Mail for Purchase Order&nbsp;',14,1,'2025-10-31 07:24:48','2025-10-31 07:24:48'),(65,14,'',14,1,'2025-10-31 07:25:05','2025-10-31 07:25:05'),(66,14,'',14,1,'2025-10-31 07:25:20','2025-10-31 07:25:20'),(67,14,'Sent Mail for Purchase Order&nbsp;',14,1,'2025-10-31 07:26:01','2025-10-31 07:26:01'),(68,36,'Sent Revised Quotation',14,1,'2025-10-31 07:30:24','2025-10-31 07:30:24');
/*!40000 ALTER TABLE `task_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_footer`
--

DROP TABLE IF EXISTS `task_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_footer` (
  `task_footer_id` int NOT NULL AUTO_INCREMENT,
  `task_header_id` int DEFAULT NULL,
  `task_details` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_status_id` int DEFAULT NULL,
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_footer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_footer`
--

LOCK TABLES `task_footer` WRITE;
/*!40000 ALTER TABLE `task_footer` DISABLE KEYS */;
INSERT INTO `task_footer` VALUES (1,1,'',3,'2025-10-03 08:45:33','2025-10-03 08:45:33'),(2,2,'',5,'2025-10-07 06:14:37','2025-10-07 12:51:52'),(3,3,'',5,'2025-10-08 04:05:29','2025-10-08 12:01:20'),(4,4,'',5,'2025-10-08 07:54:13','2025-10-08 07:54:13'),(5,5,'',5,'2025-10-07 11:19:43','2025-10-07 11:19:43'),(6,6,'',5,'2025-10-08 11:24:19','2025-10-08 11:24:19'),(7,7,'',5,'2025-10-09 05:52:37','2025-10-13 12:18:41'),(8,8,'',5,'2025-10-09 07:41:23','2025-10-09 13:06:01'),(9,9,'',5,'2025-10-10 12:15:50','2025-10-10 12:15:50'),(10,10,'',5,'2025-10-13 12:19:46','2025-10-13 12:19:46'),(11,11,'',5,'2025-10-17 04:54:33','2025-10-17 12:41:31'),(12,12,'',3,'2025-10-18 09:18:03','2025-10-18 09:18:03'),(13,13,'',5,'2025-10-18 09:25:42','2025-10-18 09:25:42'),(14,14,'',1,'2025-10-18 09:29:50','2025-10-31 07:24:48'),(15,15,'',5,'2025-10-18 09:35:01','2025-10-18 09:35:01'),(16,16,'',6,'2025-10-18 09:49:40','2025-10-18 09:53:26'),(17,17,'',6,'2025-10-18 09:58:41','2025-10-18 10:00:16'),(18,18,'',3,'2025-10-18 10:05:53','2025-10-18 10:05:53'),(19,19,'',3,'2025-10-18 10:12:32','2025-10-18 10:12:32'),(20,20,'',5,'2025-10-18 10:15:55','2025-10-18 10:15:55'),(21,21,'',3,'2025-10-18 10:18:04','2025-10-18 10:18:04'),(22,22,'',6,'2025-10-18 10:21:47','2025-10-18 10:21:47'),(23,23,'',3,'2025-10-18 10:26:59','2025-10-18 10:26:59'),(24,24,'',5,'2025-10-18 10:33:17','2025-10-18 10:36:00'),(25,25,'',5,'2025-10-18 10:35:45','2025-10-18 10:35:45'),(26,26,'',8,'2025-10-18 10:45:44','2025-10-29 12:15:12'),(27,27,'',3,'2025-10-18 10:49:49','2025-10-18 10:49:49'),(28,28,'',6,'2025-10-18 11:26:43','2025-10-18 11:26:43'),(29,29,'',5,'2025-10-18 12:11:40','2025-10-18 12:11:40'),(30,30,'',3,'2025-10-24 11:54:50','2025-10-24 11:54:50'),(31,31,'',3,'2025-10-24 12:10:11','2025-10-24 12:10:11'),(32,32,'',3,'2025-10-24 12:11:57','2025-10-24 12:11:57'),(33,33,'',3,'2025-10-24 12:15:44','2025-10-24 12:15:44'),(34,34,'',5,'2025-10-29 11:29:22','2025-10-29 11:29:22'),(35,35,'',1,'2025-10-29 11:37:36','2025-10-29 11:37:36'),(36,36,'',1,'2025-10-29 11:43:32','2025-10-29 11:43:32'),(37,37,'',1,'2025-10-29 11:55:52','2025-10-29 11:55:52'),(38,38,'',5,'2025-10-30 06:08:12','2025-10-30 06:08:12');
/*!40000 ALTER TABLE `task_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_header`
--

DROP TABLE IF EXISTS `task_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_header` (
  `task_header_id` int NOT NULL AUTO_INCREMENT,
  `department_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `task_title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `isCustomer` tinyint(1) DEFAULT NULL,
  `isMeeting` tinyint(1) DEFAULT NULL,
  `isQuotation` tinyint(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_header_id`),
  KEY `company_id` (`company_id`),
  KEY `department_id` (`department_id`),
  KEY `project_id` (`project_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_header`
--

LOCK TABLES `task_header` WRITE;
/*!40000 ALTER TABLE `task_header` DISABLE KEYS */;
INSERT INTO `task_header` VALUES (1,3,180,NULL,14,'Need quote for Firewall and Server','2025-09-23','2025-10-04',1,0,1,14,1,'2025-10-03 08:45:33','2025-10-03 08:45:33'),(2,5,NULL,1,21,'Tecstaq Logo change','2025-10-07','2025-10-07',NULL,NULL,NULL,21,1,'2025-10-07 06:14:37','2025-10-07 06:14:37'),(3,5,NULL,3,21,'Admin Master table','2025-10-08','2025-10-08',NULL,NULL,NULL,21,1,'2025-10-08 04:05:29','2025-10-08 04:05:29'),(4,3,392,NULL,14,'Need Additional Acronis Cloud Storages','2025-03-03','2025-10-08',1,0,1,14,1,'2025-10-08 07:54:13','2025-10-08 07:54:13'),(5,5,NULL,1,22,'Server testing','2025-10-07','2025-10-07',NULL,NULL,NULL,22,1,'2025-10-07 11:19:43','2025-10-07 11:19:43'),(6,5,NULL,3,22,'Api','2025-10-08','2025-10-08',NULL,NULL,NULL,22,1,'2025-10-08 11:24:19','2025-10-08 11:24:19'),(7,5,NULL,3,22,'Api','2025-10-09','2025-10-09',NULL,NULL,NULL,22,1,'2025-10-09 05:52:37','2025-10-09 05:52:37'),(8,5,NULL,3,21,'admin all master','2025-10-09','2025-10-09',NULL,NULL,NULL,21,1,'2025-10-09 07:41:23','2025-10-09 07:41:23'),(9,5,NULL,3,22,'Download api','2025-10-10','2025-10-10',NULL,NULL,NULL,22,1,'2025-10-10 12:15:50','2025-10-10 12:15:50'),(10,5,NULL,1,22,'pending','2025-10-13','2025-10-13',NULL,NULL,NULL,22,1,'2025-10-13 12:19:46','2025-10-13 12:19:46'),(11,5,NULL,6,21,'Admin Panel And All Report','2025-10-17','2025-10-17',NULL,NULL,NULL,21,1,'2025-10-17 04:54:33','2025-10-17 04:54:33'),(12,3,32,NULL,14,'Microsoft License','2025-10-01','2025-10-10',1,0,1,14,1,'2025-10-18 09:18:03','2025-10-18 09:18:57'),(13,3,428,NULL,14,'Dell Laptop Repair','2025-10-01','2025-10-01',1,0,1,14,1,'2025-10-18 09:25:42','2025-10-18 09:25:42'),(14,3,486,NULL,14,'Re-Revised Quotation for Employee Monitoring','2025-10-01','2025-10-31',1,0,1,14,1,'2025-10-18 09:29:50','2025-10-31 07:25:20'),(15,3,372,NULL,14,'Laptop','2025-10-06','2025-10-10',1,0,1,14,1,'2025-10-18 09:35:01','2025-10-18 09:35:01'),(16,3,449,NULL,14,'Domain Transfer','2025-10-06','2025-10-13',1,0,1,14,1,'2025-10-18 09:49:40','2025-10-18 09:51:21'),(17,3,511,NULL,14,'Microsoft License','2025-10-07','2025-10-16',1,0,1,14,1,'2025-10-18 09:58:41','2025-10-18 10:00:16'),(18,3,258,NULL,14,'Adobe Firefly License','2025-10-07','2025-10-09',1,0,1,14,1,'2025-10-18 10:05:53','2025-10-18 10:05:53'),(19,3,511,NULL,14,'Windows License','2025-10-08','2025-10-10',1,0,1,14,1,'2025-10-18 10:12:32','2025-10-18 10:12:32'),(20,3,296,NULL,14,'RAM','2025-10-09','2025-10-09',1,0,1,14,1,'2025-10-18 10:15:55','2025-10-18 10:15:55'),(21,3,296,NULL,14,'Refurbished Laptop','2025-10-09','2025-10-13',1,0,1,14,1,'2025-10-18 10:18:04','2025-10-18 10:18:04'),(22,3,510,NULL,14,'Scop of Work','2025-10-10','2025-10-13',1,0,1,14,1,'2025-10-18 10:21:47','2025-10-18 10:21:47'),(23,3,296,NULL,14,'New Laptop','2025-10-10','2025-10-13',1,0,1,14,1,'2025-10-18 10:26:59','2025-10-18 10:26:59'),(24,3,464,NULL,14,'Google Workspace License','2025-10-14','2025-10-14',1,0,1,14,1,'2025-10-18 10:33:17','2025-10-18 10:33:17'),(25,3,277,NULL,14,'SMPS','2025-10-15','2025-10-15',1,0,1,14,1,'2025-10-18 10:35:45','2025-10-18 10:35:45'),(26,3,512,NULL,14,'Domain Registration and Google License.','2025-10-13','2025-10-13',1,0,1,14,1,'2025-10-18 10:45:44','2025-10-18 10:45:44'),(27,3,513,NULL,14,'Assemble CPU','2025-10-15','2025-10-18',1,0,1,14,1,'2025-10-18 10:49:49','2025-10-18 10:49:49'),(28,3,428,NULL,14,'Trail','2025-10-11','2025-10-16',1,0,1,14,1,'2025-10-18 11:26:43','2025-10-18 11:26:43'),(29,3,254,NULL,14,'Monitor','2025-09-01','2025-09-02',1,0,1,14,1,'2025-10-18 12:11:40','2025-10-18 12:11:40'),(30,3,514,NULL,14,'Phase 1: Manage Services','2025-08-05','2025-08-23',1,0,1,14,1,'2025-10-24 11:54:50','2025-10-24 11:54:50'),(31,3,514,NULL,14,'Phase 2: Firewall & Acronis Cloud Backup of Google Workspace','2025-08-05','2025-08-23',1,0,1,14,1,'2025-10-24 12:10:11','2025-10-24 12:10:11'),(32,3,514,NULL,14,'Phase 3: Antivirus Trend Vision','2025-08-05','2025-08-23',1,0,1,14,1,'2025-10-24 12:11:57','2025-10-24 12:11:57'),(33,3,514,NULL,14,'Phase 4: for Google Workspace & Microsoft License.','2025-08-05','2025-08-23',1,0,1,14,1,'2025-10-24 12:15:44','2025-10-24 12:15:44'),(34,3,277,NULL,14,'SMPS','2025-10-15','2025-10-16',1,0,1,14,1,'2025-10-29 11:29:22','2025-10-29 11:29:22'),(35,3,130,NULL,14,'Zoom Meeting','2025-10-17','2025-10-25',1,0,1,14,1,'2025-10-29 11:37:36','2025-10-29 11:37:36'),(36,3,19,NULL,14,'Revised Quotation for Synology 4 Bay NAS and HDDs.','2025-10-18','2025-10-31',1,0,1,14,1,'2025-10-29 11:43:32','2025-10-31 06:59:16'),(37,3,512,NULL,14,'Re -Revised Quotation for Domain Transfer and Google License.','2025-10-18','2025-10-24',1,0,1,14,1,'2025-10-29 11:55:52','2025-10-29 12:19:11'),(38,3,296,NULL,14,'Motherboard','2025-10-25','2025-10-25',1,0,1,14,1,'2025-10-30 06:08:12','2025-10-30 06:08:12');
/*!40000 ALTER TABLE `task_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `untitled`
--

DROP TABLE IF EXISTS `untitled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `untitled` (
  `untitled_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `extenstions` varchar(70) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`untitled_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `untitled`
--

LOCK TABLES `untitled` WRITE;
/*!40000 ALTER TABLE `untitled` DISABLE KEYS */;
INSERT INTO `untitled` VALUES (1,1,'$2b$10$Gy7Xig.PqrCz5B4pOA5Tv.kKvQAwY9YytBh7VykT41X9eQ5emZ0Z6','2025-07-04 07:14:01'),(17,12,'$2b$10$flcYjsdsgGqCUloejO.8T.EH8bE3Uub/pW3EazckcCeQLTMlWNRVK','2025-07-25 04:44:00'),(18,13,'$2b$10$NAjNq.SgX4hzHXT7cWwNKOgiAUEdUdbATeZYx9JSJhUJcpZ5tIZG2','2025-07-25 04:46:52'),(19,14,'$2b$10$Xw0iIay4q4WDta82UOmtbuwreMIxx.w0S/nfFjpU/VHgfxZIcNOPW','2025-07-25 04:48:47'),(20,15,'$2b$10$huexiB0FgBFhJfZ5gOC7oevIMNgBSgE.6XGsdHym9n.0WliVNQZKG','2025-07-25 04:49:57'),(21,16,'$2b$10$HA4gJxo2ZOcRvw6DCqbGO.i9PH4W2jndOAZxZ8PslWR8TPepyymia','2025-07-25 04:51:33'),(22,17,'$2b$10$rttKHDR7nD8OB.vBlVU0tuEMDHY5J5PfQ5JPQLBtBmGrj10yZxmdm','2025-07-25 04:53:53'),(23,18,'$2b$10$Fs1Ds52VDFrKasclLZxKFuuhiN6i3baftS.vOl.A6ClYxsztMBTCy','2025-07-25 04:55:12'),(24,19,'$2b$10$gV.6zGo9FtZqdGkJiJn9euFsIvdvEFjM5rwsz7T98WVN1QLMbPuuq','2025-07-25 04:56:16'),(25,20,'$2b$10$psKCc0JEA5HnLVJclaKZQu6.EqWzQsHtFtTAkCIwMPKTcSYv0PxgW','2025-07-25 04:58:16'),(26,21,'$2b$10$6zGVeOa5YEOYNjyF6Htbs.Tc0VfaSKsxIRyk7OAEjGNkkaMwNL1am','2025-07-28 06:38:02'),(27,22,'$2b$10$rvtJ5biJWr8vwViAeTkjr./8wb7x2OaWGaAnSDxZojxVTbwQxMBfK','2025-08-04 04:39:35'),(28,23,'$2b$10$Tul0VSS42PAvxnTJ3BbuB.SdZ7JZEUIPJJII1fyO4TR7zKJJIEntu','2025-08-04 04:44:22'),(30,25,'$2b$10$lqk2GbHULuW58Y9i368uZ.76hmeS5xCeYDhMTM.fGrwP4cciMd34K','2025-08-07 12:14:54');
/*!40000 ALTER TABLE `untitled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_log`
--

DROP TABLE IF EXISTS `user_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_activity_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `login_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `logout_time` datetime DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `device_info` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('login','logout','timeout') COLLATE utf8mb4_general_ci DEFAULT 'login',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_log`
--

LOCK TABLES `user_activity_log` WRITE;
/*!40000 ALTER TABLE `user_activity_log` DISABLE KEYS */;
INSERT INTO `user_activity_log` VALUES (1,23,'1756214314014_23','2025-08-26 18:48:34',NULL,'::1','PostmanRuntime/7.45.0','login','2025-08-26 18:48:34','2025-08-26 18:48:34'),(2,23,'1756214788403_23','2025-08-26 18:56:28',NULL,'::1','PostmanRuntime/7.45.0','login','2025-08-26 18:56:28','2025-08-26 18:56:28'),(3,23,'1756214936597_23','2025-08-26 18:58:56',NULL,'::1','PostmanRuntime/7.45.0','login','2025-08-26 18:58:56','2025-08-26 18:58:56'),(4,23,'1756215163275_23','2025-08-26 19:02:43',NULL,'::1','PostmanRuntime/7.45.0','login','2025-08-26 19:02:43','2025-08-26 19:02:43'),(5,23,'1756215186440_23','2025-08-26 19:03:06','2025-08-26 19:03:54','::1','PostmanRuntime/7.45.0','logout','2025-08-26 19:03:06','2025-08-26 19:03:54'),(6,23,'1756215844169_23','2025-08-26 19:14:04','2025-08-26 19:15:34','::1','PostmanRuntime/7.45.0','logout','2025-08-26 19:14:04','2025-08-26 19:15:34');
/*!40000 ALTER TABLE `user_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_module_footer`
--

DROP TABLE IF EXISTS `user_module_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_module_footer` (
  `user_module_footer_id` int NOT NULL AUTO_INCREMENT,
  `user_module_header_id` int NOT NULL,
  `module_id` int NOT NULL,
  `sub_module_id` int DEFAULT NULL,
  `add_action` tinyint(1) NOT NULL DEFAULT '0',
  `update_action` tinyint(1) NOT NULL DEFAULT '0',
  `list_action` tinyint(1) NOT NULL DEFAULT '0',
  `delete_action` tinyint(1) NOT NULL DEFAULT '0',
  `view_action` tinyint(1) NOT NULL DEFAULT '0',
  `status_change` tinyint(1) NOT NULL DEFAULT '0',
  `all_action` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_module_footer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_module_footer`
--

LOCK TABLES `user_module_footer` WRITE;
/*!40000 ALTER TABLE `user_module_footer` DISABLE KEYS */;
INSERT INTO `user_module_footer` VALUES (58,38,4,NULL,1,1,1,1,1,1,1),(59,39,5,13,1,1,1,1,1,1,1),(60,39,5,12,1,1,1,1,1,1,1),(61,39,5,14,1,1,1,1,1,1,1),(62,40,6,2,1,1,1,1,1,1,1),(63,40,6,8,1,1,1,1,1,1,1),(64,41,13,NULL,1,1,1,1,1,1,1),(65,42,4,NULL,1,1,1,1,1,1,1),(66,43,5,13,1,1,1,1,1,1,1),(67,43,5,12,1,1,1,1,1,1,1),(68,43,5,14,1,1,1,1,1,1,1),(69,44,6,2,1,1,1,1,1,1,1),(70,44,6,8,1,1,1,1,1,1,1),(71,45,13,NULL,1,1,1,1,1,1,1),(72,46,7,NULL,1,1,1,1,1,1,1),(73,47,8,19,1,1,1,1,1,1,1),(74,47,8,18,1,1,1,1,1,1,1),(75,47,8,20,1,1,1,1,1,1,1),(76,48,9,3,1,1,1,1,1,1,1),(77,48,9,7,1,1,1,1,1,1,1),(78,49,14,NULL,1,1,1,1,1,1,1),(79,50,7,NULL,1,1,1,1,1,1,1),(80,51,8,19,1,1,1,1,1,1,1),(81,51,8,18,1,1,1,1,1,1,1),(82,51,8,20,1,1,1,1,1,1,1),(83,52,9,3,1,1,1,1,1,1,1),(84,52,9,7,1,1,1,1,1,1,1),(85,53,14,NULL,1,1,1,1,1,1,1),(86,54,7,NULL,1,1,1,1,1,1,1),(87,55,8,18,1,1,1,1,1,1,1),(88,55,8,19,1,1,1,1,1,1,1),(89,55,8,20,1,1,1,1,1,1,1),(90,56,9,3,1,1,1,1,1,1,1),(91,56,9,7,1,1,1,1,1,1,1),(92,57,14,NULL,1,1,1,1,1,1,1),(93,58,1,NULL,1,1,1,1,1,1,1),(94,59,2,10,1,1,1,1,1,1,1),(95,59,2,9,1,1,1,1,1,1,1),(96,59,2,11,1,1,1,1,1,1,1),(97,60,3,1,1,1,1,1,1,1,1),(98,60,3,5,1,1,1,1,1,1,1),(99,61,12,NULL,1,1,1,1,1,1,1),(100,62,1,NULL,1,1,1,1,1,1,1),(101,63,2,10,1,1,1,1,1,1,1),(102,63,2,9,1,1,1,1,1,1,1),(103,63,2,11,1,1,1,1,1,1,1),(104,64,3,1,1,1,1,1,1,1,1),(105,64,3,5,1,1,1,1,1,1,1),(106,65,12,NULL,1,1,1,1,1,1,1),(107,66,10,16,1,1,1,1,1,1,1),(108,66,10,15,1,1,1,1,1,1,1),(109,66,10,17,1,1,1,1,1,1,1),(110,67,11,4,1,1,1,1,1,1,1),(111,67,11,6,1,1,1,1,1,1,1),(112,68,15,NULL,1,1,1,1,1,1,1),(113,69,10,16,1,1,1,1,1,1,1),(114,69,10,15,1,1,1,1,1,1,1),(115,69,10,17,1,1,1,1,1,1,1),(116,70,11,4,1,1,1,1,1,1,1),(117,70,11,6,1,1,1,1,1,1,1),(118,71,15,NULL,1,1,1,1,1,1,1),(119,72,16,21,1,1,1,1,1,1,1),(120,73,16,21,1,1,1,1,1,1,1),(121,74,17,22,0,0,1,0,1,0,0),(122,75,17,22,0,0,1,0,1,0,0),(123,76,18,24,1,1,1,1,1,1,1),(124,76,18,23,1,1,1,1,1,1,1),(125,77,19,NULL,1,1,1,1,1,1,1),(126,78,20,NULL,1,1,1,1,1,1,1),(127,79,21,NULL,1,1,1,1,1,1,1),(128,80,22,26,1,1,1,1,1,1,1),(129,80,22,25,1,1,1,1,1,1,1),(130,81,20,NULL,1,1,1,1,1,1,1),(131,82,18,24,1,1,1,1,1,1,1),(132,82,18,23,1,1,1,1,1,1,1),(133,83,21,NULL,1,1,1,1,1,1,1),(134,84,19,NULL,1,1,1,1,1,1,1),(135,85,22,26,1,1,1,1,1,1,1),(136,85,22,25,1,1,1,1,1,1,1),(137,86,20,NULL,1,1,1,1,1,1,1),(138,87,18,24,1,1,1,1,1,1,1),(139,87,18,23,1,1,1,1,1,1,1),(140,88,21,NULL,1,1,1,1,1,1,1),(141,89,22,26,1,1,1,1,1,1,1),(142,89,22,25,1,1,1,1,1,1,1),(143,90,19,NULL,1,1,1,1,1,1,1),(151,96,25,NULL,1,1,1,1,1,1,1),(152,97,23,28,1,1,1,1,1,1,1),(153,97,23,27,1,1,1,1,1,1,1),(154,98,26,NULL,1,1,1,1,1,1,1),(155,99,27,30,1,1,1,1,1,1,1),(156,99,27,29,1,1,1,1,1,1,1),(157,100,24,NULL,1,1,1,1,1,1,1),(158,101,30,32,1,1,1,1,1,1,1),(159,102,29,33,1,1,1,1,1,1,1),(160,103,29,33,1,1,1,1,1,1,1),(161,104,28,31,1,1,1,1,1,1,1),(162,105,28,31,1,1,1,1,1,1,1),(163,106,28,31,1,1,1,1,1,1,1),(164,40,6,34,1,1,1,1,1,1,1),(165,44,6,34,1,1,1,1,1,1,1),(166,99,27,38,1,1,1,1,1,1,1),(167,70,11,37,1,1,1,1,1,1,1),(168,67,11,37,1,1,1,1,1,1,1),(169,64,3,35,1,1,1,1,1,1,1),(170,60,3,35,1,1,1,1,1,1,1),(171,56,9,36,1,1,1,1,1,1,1),(172,52,9,36,1,1,1,1,1,1,1),(173,48,9,36,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `user_module_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_module_header`
--

DROP TABLE IF EXISTS `user_module_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_module_header` (
  `user_module_header_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `module_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_module_header_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_module_header`
--

LOCK TABLES `user_module_header` WRITE;
/*!40000 ALTER TABLE `user_module_header` DISABLE KEYS */;
INSERT INTO `user_module_header` VALUES (38,12,4,1,'2025-07-25 04:44:00'),(39,12,5,1,'2025-07-25 04:44:00'),(40,12,6,1,'2025-07-25 04:44:00'),(41,12,13,1,'2025-07-25 04:44:00'),(42,13,4,1,'2025-07-25 04:46:52'),(43,13,5,1,'2025-07-25 04:46:52'),(44,13,6,1,'2025-07-25 04:46:52'),(45,13,13,1,'2025-07-25 04:46:52'),(46,14,7,1,'2025-07-25 04:48:47'),(47,14,8,1,'2025-07-25 04:48:47'),(48,14,9,1,'2025-07-25 04:48:47'),(49,14,14,1,'2025-07-25 04:48:47'),(50,15,7,1,'2025-07-25 04:49:57'),(51,15,8,1,'2025-07-25 04:49:57'),(52,15,9,1,'2025-07-25 04:49:57'),(53,15,14,1,'2025-07-25 04:49:57'),(54,16,7,1,'2025-07-25 04:51:33'),(55,16,8,1,'2025-07-25 04:51:33'),(56,16,9,1,'2025-07-25 04:51:33'),(57,16,14,1,'2025-07-25 04:51:33'),(58,17,1,1,'2025-07-25 04:53:53'),(59,17,2,1,'2025-07-25 04:53:53'),(60,17,3,1,'2025-07-25 04:53:53'),(61,17,12,1,'2025-07-25 04:53:53'),(62,18,1,1,'2025-07-25 04:55:12'),(63,18,2,1,'2025-07-25 04:55:12'),(64,18,3,1,'2025-07-25 04:55:12'),(65,18,12,1,'2025-07-25 04:55:12'),(66,19,10,1,'2025-07-25 04:56:16'),(67,19,11,1,'2025-07-25 04:56:16'),(68,19,15,1,'2025-07-25 04:56:16'),(69,20,10,1,'2025-07-25 04:58:16'),(70,20,11,1,'2025-07-25 04:58:16'),(71,20,15,1,'2025-07-25 04:58:16'),(72,12,16,1,'2025-07-25 10:07:46'),(73,13,16,1,'2025-07-25 10:08:12'),(74,17,17,1,'2025-07-25 10:14:59'),(75,18,17,1,'2025-07-25 10:15:14'),(76,21,18,1,'2025-07-28 06:38:02'),(77,21,19,1,'2025-07-28 06:38:02'),(78,21,20,1,'2025-07-28 09:02:21'),(79,21,21,1,'2025-07-28 12:03:42'),(80,21,22,1,'2025-07-29 04:33:11'),(81,22,20,1,'2025-08-04 04:39:35'),(82,22,18,1,'2025-08-04 04:39:35'),(83,22,21,1,'2025-08-04 04:39:35'),(84,22,19,1,'2025-08-04 04:39:35'),(85,22,22,1,'2025-08-04 04:39:35'),(86,23,20,1,'2025-08-04 04:44:22'),(87,23,18,1,'2025-08-04 04:44:22'),(88,23,21,1,'2025-08-04 04:44:22'),(89,23,22,1,'2025-08-04 04:44:22'),(90,23,19,1,'2025-08-04 04:44:22'),(96,25,25,1,'2025-08-07 12:14:54'),(97,25,23,1,'2025-08-07 12:14:54'),(98,25,26,1,'2025-08-07 12:14:54'),(99,25,27,1,'2025-08-07 12:14:54'),(100,25,24,1,'2025-08-07 12:14:54'),(101,25,30,1,'2025-08-28 11:16:27'),(102,20,29,1,'2025-08-28 11:16:48'),(103,19,29,1,'2025-08-28 11:17:04'),(104,16,28,1,'2025-08-28 11:17:39'),(105,14,28,1,'2025-08-28 11:17:51'),(106,15,28,1,'2025-09-03 12:31:21');
/*!40000 ALTER TABLE `user_module_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_id` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile_number` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `designation_id` int DEFAULT '2',
  `department_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin',NULL,'admin@gmail.com',NULL,0,NULL,1,'2025-07-17 08:06:39'),(12,'Randeep','Pawar','randeep.pawar@tecstaq.com','8104512303',5,2,1,'2025-07-25 04:44:00'),(13,'Yogita','Nagulkar','yogita.nagulkar@tecstaq.com','8898001504',5,2,1,'2025-07-25 04:46:51'),(14,'Shivam','Yadav','sales@tecstaq.com','9161838989',9,3,1,'2025-07-25 04:48:47'),(15,'Khushboo','Vishwakarma','khushboo.v@tecstaq.com','8898001505',3,3,1,'2025-07-25 04:49:57'),(16,'Shweta','Kannaujiya','accounts@tecstaq.com','8828114594',8,3,1,'2025-07-25 04:51:33'),(17,'Priyanka','Dolui','mktg@tecstaq.com','9987601718',1,1,1,'2025-07-25 04:53:53'),(18,'Siddhant','Parulekar','siddhant.parulekar@tecstaq.com','8655521049',6,1,1,'2025-07-25 04:55:12'),(19,'Rajeshkumar','Yadav','rajeshkumar.yadav@tecstaq.com','9867878756',7,4,1,'2025-07-25 04:56:16'),(20,'Khushboo','Singh','khushboo.singh@tecstaq.com','8178680895',4,4,1,'2025-07-25 04:58:16'),(21,'Abhijeet','Thorat','abhijeet.thorat@tecstaq.com','9373260269',10,5,1,'2025-07-28 06:38:02'),(22,'Usha','Yadav','usha.yadav@tecstaq.com','8830029459',11,5,1,'2025-08-04 04:39:35'),(23,'Rohit','Landage','rohit.landage@tecstaq.com','8600196329',10,5,1,'2025-08-04 04:44:22'),(25,'Sushant','Jamdade','sushant.jamdade@tecstaq.com','8830928499',11,6,1,'2025-08-07 12:14:54');
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

-- Dump completed on 2025-11-03 13:08:58
