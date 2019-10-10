-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: localhost    Database: ggllivedb
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `JobSeeker`
--

DROP TABLE IF EXISTS `JobSeeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSeeker` (
  `jobseeker_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Jobseeker_country` varchar(255) DEFAULT NULL,
  `Jobseeker_emailID` varchar(255) DEFAULT NULL,
  `Jobseeker_name` varchar(255) DEFAULT NULL,
  `Jobseeker_password` varchar(255) DEFAULT NULL,
  `Jobseeker_phoneNumber` varchar(255) DEFAULT NULL,
  `Jobseeker_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobseeker_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSeeker`
--

LOCK TABLES `JobSeeker` WRITE;
/*!40000 ALTER TABLE `JobSeeker` DISABLE KEYS */;
INSERT INTO `JobSeeker` VALUES (1,'australia','test@gmail.com','Alex','afdsaf','999999','Registered'),(2,'australia','asf','asf','asf','asf','Registered'),(3,'australia','asfd','afs','asf','asf','Registered'),(4,'australia','asfasf','aaa','asfasfad','asfda','Registered');
/*!40000 ALTER TABLE `JobSeeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_details` (
  `Booking_ID` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) DEFAULT NULL,
  `state_name` varchar(200) DEFAULT NULL,
  `city_name` varchar(200) DEFAULT NULL,
  `industry_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `person_count` varchar(255) DEFAULT NULL,
  `booking_date` varchar(100) DEFAULT NULL,
  `booking_time` varchar(50) DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `member_ID` varchar(200) DEFAULT NULL,
  `User_Login_ID` int(11) DEFAULT NULL,
  `noofrooms` int(11) DEFAULT NULL,
  `noofchild` int(11) DEFAULT NULL,
  `noofadult` int(11) DEFAULT NULL,
  `air_name` varchar(200) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `From_place` varchar(100) DEFAULT NULL,
  `To_place` varchar(100) DEFAULT NULL,
  `noofpax` int(11) DEFAULT NULL,
  `Triptype` varchar(100) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `Visiting_country` varchar(200) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `departure_name` varchar(200) DEFAULT NULL,
  `Appoinment_date` date DEFAULT NULL,
  `University` varchar(200) DEFAULT NULL,
  `Study_name` varchar(100) DEFAULT NULL,
  `Year_of_study` varchar(100) DEFAULT NULL,
  `Hospital_name` varchar(250) DEFAULT NULL,
  `Kind_of_Treatment` varchar(300) DEFAULT NULL,
  `Category_Product` varchar(250) DEFAULT NULL,
  `List_Product` varchar(300) DEFAULT NULL,
  `Quantity` varchar(250) DEFAULT NULL,
  `Category_insurance` varchar(255) DEFAULT NULL,
  `Company_insurance` varchar(255) DEFAULT NULL,
  `No_of_tables` int(11) DEFAULT NULL,
  `acctCreated_date` date DEFAULT NULL,
  PRIMARY KEY (`Booking_ID`),
  KEY `User_Login_ID` (`User_Login_ID`),
  CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`User_Login_ID`) REFERENCES `user_login` (`User_Login_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (1,'Indonesia','Jakarta Raya',NULL,'Food and hotels','2nd Home Coffee and Kitchen @ Kemang',NULL,'2019-06-12 00:00:00','07:00','Approved','GGLINV101',NULL,3,1,1,2,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-12'),(2,'Malaysia','Kuala Lumpur',NULL,'Food and hotels','drop exchange',NULL,'2019-06-13 00:00:00','13:00','Approved','GGLINV102',NULL,8,1,1,1,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-12'),(3,'Indonesia','Jakarta Raya',NULL,'Food and hotels','2nd Home Coffee and Kitchen @ Kemang',NULL,'2019-06-13 00:00:00','13:45','Waiting for Approval','GGLINV103',NULL,1,1,1,1,'',NULL,NULL,'','',6,'',NULL,'','',NULL,NULL,'','','','','','','','0','','',1,'2019-06-12'),(4,'Malaysia','Kuala Lumpur',NULL,'Food and hotels','7TNine Bar & Launge',NULL,'2019-06-07 00:00:00','13:20','Approved','GGLINV104',NULL,3,1,1,1,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-12'),(5,'Indonesia','Jakarta Raya',NULL,'Food and hotels','2nd Home Coffee and Kitchen @ Kemang',NULL,'2019-06-27 00:00:00','14:45','Approved','GGLINV105',NULL,3,1,1,2,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-27'),(6,'Indonesia','Jakarta Raya',NULL,'Food and hotels','2nd Home Coffee and Kitchen @ Kemang',NULL,'2019-06-27 00:00:00','08:17','Approved','GGLINV106',NULL,20,1,1,2,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-27'),(7,'Indonesia','Sulawesi Tenggara',NULL,'Food and hotels','Cj tom yum @ Bintaro',NULL,'2019-06-27 00:00:00','18:00','Rejected','GGLINV107',NULL,21,1,0,2,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-27'),(8,'Indonesia','Jakarta Raya',NULL,'Food and hotels','ala RITUS @ Pasar Baru @ Sawah Besar',NULL,'2019-06-29 00:00:00','15:30','Approved','GGLINV108',NULL,25,1,0,2,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-06-29'),(9,'Malaysia','Kuala Lumpur',NULL,'Food and hotels','drop exchange',NULL,'2019-07-05 00:00:00','13:00','Approved','GGLINV109',NULL,3,1,1,1,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,1,'2019-07-05');
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_details`
--

DROP TABLE IF EXISTS `category_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_details` (
  `category_ID` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_details`
--

LOCK TABLES `category_details` WRITE;
/*!40000 ALTER TABLE `category_details` DISABLE KEYS */;
INSERT INTO `category_details` VALUES (1,'GLGC100','Food and hotels','Philippine','Good Quality of Food','Region Cagayan Valley'),(2,'GLGC101','Ticketing','Thailand','Air Ticketing Executive','Yala'),(3,'GLGC103','Travel and Tour','Indonesia','Arrange their holiday Easily','Nusa Tenggara Timur'),(4,'GLGC104','Financial Solution','China','Clients plan for their short and long-term financial goals','Hunan'),(5,'GLGC105','Education','Malaysia','Torytelling,Discussion,Teaching,Training, and Directed research','Kuala Lumpur'),(6,'GLGC106','Insurance','India','Maintaining records and handling policy renewals','Kerala'),(7,'GLGC107','Medical Treatment','Singapore','Greeting patients,Scheduling appointments','bukittimah'),(8,'GLGC108','Health Accessories','Philippine','Durable medical equipment','Eastern Visayas'),(9,'GLGC109','Herbal Product','Singapore','Available as tablets,capsules,powders,extracts,teas','singapura'),(10,'GLGC110','Umrah','Malaysia','Islamic pilgrimage','Putrajaya- Johor'),(11,'GLGC111','Software And Hardware','India','Customer needs and offer clients technical support','Tamil Nadu'),(12,'GLGC112','Energy Saving','Philippine','Goal to reduce the amount of energy','MIMAROPA'),(13,'GLGC111','Games','Indonesia','Education Game for child','Jakarta Raya');
/*!40000 ALTER TABLE `category_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_overr_details`
--

DROP TABLE IF EXISTS `comm_overr_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_overr_details` (
  `Com_Overr_ID` int(11) NOT NULL AUTO_INCREMENT,
  `commission_amt` double DEFAULT NULL,
  `overriding_amt` double DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `Member_ID` int(11) DEFAULT NULL,
  `value_type` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `Member_Number` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Com_Overr_ID`),
  KEY `Member_ID` (`Member_ID`),
  CONSTRAINT `comm_overr_details_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member_id` (`Member_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_overr_details`
--

LOCK TABLES `comm_overr_details` WRITE;
/*!40000 ALTER TABLE `comm_overr_details` DISABLE KEYS */;
INSERT INTO `comm_overr_details` VALUES (1,100,100,'2019-06-08',1,'added','waiting','GLGP101'),(2,10,10,'2019-06-08',215,'added','waiting','GLGG102'),(3,100,100,'2019-06-11',1,'added','waiting','GLGG103'),(4,1,1,'2019-06-11',1,'added','waiting','GLGS104'),(5,1,1,'2019-06-11',1,'added','waiting','GLGS105'),(6,1,1,'2019-06-11',1,'added','approved','GLGS106'),(7,1,1,'2019-06-12',1,'added','approved','GLGS107'),(8,1,0,'2019-06-12',221,'added','approved','GLGS108'),(9,0,1,'2019-06-12',1,'added','approved','GLGS108'),(10,1,0,'2019-06-12',221,'added','approved','GLGS109'),(11,0,1,'2019-06-12',1,'added','approved','GLGS109'),(12,100,100,'2019-06-12',1,'added','approved','GLGG110'),(13,100,0,'2019-06-12',221,'added','approved','GLGG111'),(14,0,100,'2019-06-12',1,'added','approved','GLGG111'),(15,1000,0,'2019-06-12',221,'added','approved','GLGP112'),(16,0,1000,'2019-06-12',1,'added','approved','GLGP112'),(17,2204,0,'2019-06-12',221,'subtract','approved','GLGS107'),(18,100,100,'2019-06-12',226,'added','approved','GLGG113'),(19,100,0,'2019-06-12',221,'added','approved','GLGG114'),(20,0,100,'2019-06-12',1,'added','approved','GLGG114'),(21,1000,0,'2019-06-12',221,'added','approved','GLGP115'),(22,0,1000,'2019-06-12',1,'added','approved','GLGP115'),(23,100,100,'2019-06-12',229,'added','approved','GLGG116'),(24,400,400,'2019-06-12',226,'subtract','approved','GLGP112'),(25,200,200,'2019-06-12',229,'subtract','approved','GLGP115'),(26,100,100,'2019-06-12',226,'added','approved','GLGG117'),(27,100,100,'2019-06-12',229,'added','approved','GLGG118'),(28,1000,1000,'2019-06-15',1,'added','approved','GLGP119'),(29,1,1,'2019-06-21',1,'added','approved','GLGS120'),(30,1000,1000,'2019-06-21',1,'added','approved','GLGP121'),(31,100,100,'2019-06-26',235,'added','approved','GLGG122'),(32,100,100,'2019-06-27',1,'added','approved','GLGG123'),(33,1,1,'2019-06-27',1,'added','approved','GLGS124'),(34,1,1,'2019-06-27',1,'added','approved','GLGS125'),(35,100,0,'2019-06-28',220,'added','waiting','GLGG126'),(36,0,100,'2019-06-28',1,'added','waiting','GLGG126'),(37,1000,500,'2019-06-28',240,'added','waiting','GLGP127'),(38,0,1000,'2019-06-28',1,'added','waiting','GLGP127'),(39,100,100,'2019-06-29',1,'added','waiting','GLGG128'),(40,100,100,'2019-06-29',1,'added','approved','GLGG129'),(41,1,1,'2019-06-29',241,'added','waiting','GLGS130'),(42,1,0,'2019-07-01',221,'added','waiting','GLGS131'),(43,0,1,'2019-07-01',1,'added','waiting','GLGS131'),(44,100,100,'2019-07-01',1,'added','waiting','GLGG132'),(45,1,0.5,'2019-07-01',246,'added','waiting','GLGS133'),(46,0,1,'2019-07-01',1,'added','waiting','GLGS133'),(47,1,0,'2019-07-01',221,'added','approved','GLGS134'),(48,0,1,'2019-07-01',1,'added','approved','GLGS134'),(49,1,0,'2019-07-01',221,'added','approved','GLGS135'),(50,0,1,'2019-07-01',1,'added','approved','GLGS135'),(51,100,100,'2019-07-04',1,'added','approved','GLGG136'),(52,100,50,'2019-07-04',250,'added','approved','GLGG137'),(53,0,100,'2019-07-04',1,'added','approved','GLGG137'),(54,1,0,'2019-07-05',221,'added','approved','GLGS138'),(55,0,1,'2019-07-05',1,'added','approved','GLGS138'),(56,100,0,'2019-07-05',221,'added','approved','GLGG139'),(57,0,100,'2019-07-05',1,'added','approved','GLGG139'),(58,100,50,'2019-07-05',253,'added','approved','GLGG140'),(59,0,100,'2019-07-05',1,'added','approved','GLGG140'),(60,1000,1000,'2019-07-05',1,'added','approved','GLGP141'),(61,1,1,'2019-07-05',255,'added','waiting','GLGS142');
/*!40000 ALTER TABLE `comm_overr_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_details_master`
--

DROP TABLE IF EXISTS `country_details_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_details_master` (
  `country_ID` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) DEFAULT NULL,
  `state_name` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_details_master`
--

LOCK TABLES `country_details_master` WRITE;
/*!40000 ALTER TABLE `country_details_master` DISABLE KEYS */;
INSERT INTO `country_details_master` VALUES (1,'India','Select-Andra Pradesh-Arunachal Pradesh-Assam-Bihar-Chhattisgarh-Goa-Gujarat-Haryana-Himachal Pradesh-Jammu and Kashmir-Jharkhand-Karnataka-Kerala-Madya Pradesh-Maharashtra-Manipur-Meghalaya-Mizoram-Nagaland-Orissa-Punjab-Rajasthan-Sikkim-Tamil Nadu-Tripura-Uttar Pradesh-West Bengal-Delhi-Pondicherry'),(2,'Malaysia','Select-Kuala Lumpur-Labuan-Putrajaya- Johor- Kedah- Kelantan-Malacca-Negeri Sembilan-Pahang-Penang-Perak-Perlis-Sabah-Sarawak-Selangor-Terengganu-Others'),(3,'China','Select-Anhui-Beijing-Chongqing-Fujian-Gansu-Guangdong-Guangxi-Guizhou-Hainan-Hebei-Heilongjiang-Henan-Hubei-Hunan-Jiangsu-Jiangxi-Jilin-Liaoning-NeiMongol-Ningxia-Qinghai-Shaanxi-Shandong-Shanghai-Shanxi-Sichuan-Tianjin-Xinjiang-Xizang-Yunnan-Zhejiang-Others'),(4,'Singapore','Select-bukitpanjang-bukittimah-serangon-singapura-Others'),(5,'Philippine','Select-Region Cagayan Valley-Cordillera Administrative Region-Region Ilocos-Central Luzon-CALABARZON-MIMAROPA- Bicol Region-Western Visayas-Central Visayas-Eastern Visayas-Zamboanga Peninsula-Northern Mindanao-Caraga-Region Davao-SOCCSKSARGEN-Antonomous Region in Muslim Minda-Others'),(6,'Indonesia','Select-Aceh-Bali-Bangka Belitung-Banten-Bengkulu-Gorontalo-Irian Jaya Barat-Jakarta Raya-Jambi-Jawa Barat-Jawa Tengah-Jawa Timur-Kalimantan Barat-Kalimantan Selatan-Kalimantan Tengah-Kalimantan Timur-Kepulauan Riau-Lampung-Maluku-Maluku Utara-Nusa Tenggara Barat-Nusa Tenggara Timur-Papua-Riau-Sulawesi Barat-Sulawesi- Selatan-Sulawesi Tengah-Sulawesi Tenggara-Sulawesi Utara-Sumatera Barat-Sumatera Selatan-Sumatera Utara-Yogyakarta-Others'),(7,'Thailand','Select-Bangkok-Nonthaburi-Nakhon Ratchasima-Chiang Mai-Songkhla-Udon Thani-Nonthaburi-Chonburi-Khon Kaen-Ubon Ratchathani-Nakhon Si Thammarat-Nakhon Sawan-Nakhon Pathom-Phitsanulok-Chonburi-Songkhla-Surat Thani-Pathum Thani-Yala-Phuket-Samut Prakan-Lampang-Chonburi-Chiang Rai-Trang-Phra Nakhon Si Ayutthaya-Surat Thani-Samut Sakhon-Rayong-Tak-Samut Sakhon-Sakon Nakhon-Others');
/*!40000 ALTER TABLE `country_details_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer_details`
--

DROP TABLE IF EXISTS `employer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employer_details` (
  `employer_Details_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Employer_country` varchar(255) DEFAULT NULL,
  `Employer_emailID` varchar(255) DEFAULT NULL,
  `Employer_name` varchar(255) DEFAULT NULL,
  `Employer_password` varchar(255) DEFAULT NULL,
  `Employer_phoneNumber` varchar(255) DEFAULT NULL,
  `Employer_status` varchar(255) DEFAULT NULL,
  `employer_Login_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`employer_Details_ID`),
  KEY `FKB84294BE941F9B2F` (`employer_Login_ID`),
  CONSTRAINT `FKB84294BE941F9B2F` FOREIGN KEY (`employer_Login_ID`) REFERENCES `employer_login` (`employer_Login_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer_details`
--

LOCK TABLES `employer_details` WRITE;
/*!40000 ALTER TABLE `employer_details` DISABLE KEYS */;
INSERT INTO `employer_details` VALUES (1,NULL,'atun','PT BPNI','atun','085337917622','Registered',1);
/*!40000 ALTER TABLE `employer_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer_login`
--

DROP TABLE IF EXISTS `employer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employer_login` (
  `employer_Login_ID` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_otp` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employer_Login_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer_login`
--

LOCK TABLES `employer_login` WRITE;
/*!40000 ALTER TABLE `employer_login` DISABLE KEYS */;
INSERT INTO `employer_login` VALUES (1,NULL,'atun','Registered',NULL,NULL,'atun');
/*!40000 ALTER TABLE `employer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_details_master`
--

DROP TABLE IF EXISTS `industry_details_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry_details_master` (
  `industry_ID` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) DEFAULT NULL,
  `state_name` varchar(300) DEFAULT NULL,
  `city_name` varchar(300) DEFAULT NULL,
  `industry_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`industry_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_details_master`
--

LOCK TABLES `industry_details_master` WRITE;
/*!40000 ALTER TABLE `industry_details_master` DISABLE KEYS */;
INSERT INTO `industry_details_master` VALUES (1,'Singapore','Singapore','Singapore','Food and restaurant','(D.I.G) Dining In Garden','50'),(2,'Singapore','Singapore','Singapore','Food and restaurant','1KS By Park Bench Deli','50'),(3,'Singapore','Singapore','Singapore','Food and restaurant','7th Heaven KTV & Cafe','50'),(4,'Singapore','Singapore','Singapore','Food and restaurant','805 Seafood Kitchen','50'),(5,'Singapore','Singapore','Singapore','Food and restaurant','A*Muse Dine and Bar','50'),(6,'Malaysia','Kuala lumpur','Kuala lumpur','Food and restaurant','103 Coffee Workshop','50'),(7,'Malaysia','Kuala lumpur','Kuala lumpur','Food and restaurant','1919 Restaurant @ Desa Sri Hartamas','50'),(8,'Malaysia','Kuala lumpur','Kuala lumpur','Food and restaurant','28 Fireplace @ Desa Pahlawan','50'),(9,'Malaysia','Kuala lumpur','Kuala lumpur','Food and restaurant','300 @ Uptown','50'),(10,'Malaysia','Kuala lumpur','Kuala lumpur','Food and restaurant','7TNine Bar & Lounge','50');
/*!40000 ALTER TABLE `industry_details_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobseeker_details`
--

DROP TABLE IF EXISTS `jobseeker_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobseeker_details` (
  `jobseeker_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Jobseeker_country` varchar(255) DEFAULT NULL,
  `Jobseeker_emailID` varchar(255) DEFAULT NULL,
  `Jobseeker_name` varchar(255) DEFAULT NULL,
  `Jobseeker_password` varchar(255) DEFAULT NULL,
  `Jobseeker_phoneNumber` varchar(255) DEFAULT NULL,
  `Jobseeker_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobseeker_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker_details`
--

LOCK TABLES `jobseeker_details` WRITE;
/*!40000 ALTER TABLE `jobseeker_details` DISABLE KEYS */;
INSERT INTO `jobseeker_details` VALUES (1,'Philippine','sing1alex@gmail.com','Alex','123','1121212','Registered'),(2,'Indonesia','nrgtriyono@gmail.com','jaya','fatepa1234','085337917622','Registered'),(3,'Indonesia','maradona','maradona','maradona','085337917622','Registered'),(4,'Indonesia','muhammad.triyono123@gmail.com','lulu','lulu','085337917622','Registered');
/*!40000 ALTER TABLE `jobseeker_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_id`
--

DROP TABLE IF EXISTS `member_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_id` (
  `Member_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Member_Number` varchar(200) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `Member_Acct_Type` varchar(50) DEFAULT NULL,
  `group_name` int(11) DEFAULT NULL,
  `sequance_number` int(11) DEFAULT NULL,
  `total_commission` double DEFAULT NULL,
  `total_overriding` double DEFAULT NULL,
  `level_number` int(11) DEFAULT NULL,
  `tree_name` varchar(50) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `Withdraw_Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_id`
--

LOCK TABLES `member_id` WRITE;
/*!40000 ALTER TABLE `member_id` DISABLE KEYS */;
INSERT INTO `member_id` VALUES (1,'GLGP600800','active','Platinum',100,1,7312,10919,0,'A0','17231.0',NULL),(215,'GLGP101',NULL,'platinum',101,1,10,10,0,'A0','30.0','Not Available'),(216,'GLGG102',NULL,'gold',101,2,0,0,1,'A101',NULL,'Not Available'),(217,'GLGG103',NULL,'gold',100,2,0,0,1,'A102',NULL,'Not Available'),(218,'GLGS104',NULL,'silver',100,3,0,0,1,'A103',NULL,'Not Available'),(219,'GLGS105',NULL,'silver',100,4,0,0,1,'A104',NULL,'Not Available'),(220,'GLGS106',NULL,'silver',100,5,100,0,1,'A105','200.0','Available'),(221,'GLGS107',NULL,'silver',100,6,2408,0,1,'A106','2408.0','Approved Withdraw'),(222,'GLGS108',NULL,'silver',100,7,0,0,2,'A106',NULL,'Available'),(223,'GLGS109',NULL,'silver',100,8,0,0,2,'A106',NULL,'Available'),(224,'GLGG110',NULL,'gold',100,9,0,0,1,'A107',NULL,'Available'),(225,'GLGG111',NULL,'gold',100,10,0,0,2,'A106',NULL,'Available'),(226,'GLGP112',NULL,'platinum',102,1,200,200,0,'A0','300.0','Approved Withdraw'),(227,'GLGG113',NULL,'gold',102,2,0,0,1,'A108',NULL,'Available'),(228,'GLGG114',NULL,'gold',100,11,0,0,2,'A106',NULL,'Available'),(229,'GLGP115',NULL,'platinum',103,1,200,200,0,'A0','300.0','Approved Withdraw'),(230,'GLGG116',NULL,'gold',103,2,0,0,1,'A109',NULL,'Available'),(231,'GLGG117',NULL,'gold',102,3,0,0,1,'A110',NULL,'Available'),(232,'GLGG118',NULL,'gold',103,3,0,0,1,'A111',NULL,'Available'),(233,'GLGP119',NULL,'platinum',104,1,0,0,0,'A0',NULL,'Available'),(234,'GLGS120',NULL,'silver',100,12,0,0,1,'A112',NULL,'Available'),(235,'GLGP121',NULL,'platinum',105,1,200,200,0,'A0','300.0','Available'),(236,'GLGG122',NULL,'gold',105,2,0,0,1,'A113',NULL,'Available'),(237,'GLGG123',NULL,'gold',100,13,0,0,1,'A114',NULL,'Available'),(238,'GLGS124',NULL,'silver',100,14,0,0,1,'A115',NULL,'Available'),(239,'GLGS125',NULL,'silver',100,15,0,0,1,'A116',NULL,'Available'),(240,'GLGG126',NULL,'gold',100,16,1000,500,2,'A105','2500.0','Not Available'),(241,'GLGP127',NULL,'platinum',106,1,1,1,0,'A0','3.0','Not Available'),(242,'GLGG128',NULL,'gold',100,17,0,0,1,'A117',NULL,'Not Available'),(243,'GLGG129',NULL,'gold',100,18,0,0,1,'A118',NULL,'Available'),(244,'GLGS130',NULL,'silver',106,2,0,0,1,'A119',NULL,'Not Available'),(245,'GLGS131',NULL,'silver',100,19,0,0,2,'A106',NULL,'Not Available'),(246,'GLGG132',NULL,'gold',100,20,1,0.5,1,'A120','2.5','Not Available'),(247,'GLGS133',NULL,'silver',100,21,0,0,2,'A120',NULL,'Not Available'),(248,'GLGS134',NULL,'silver',100,22,0,0,2,'A106',NULL,'Available'),(249,'GLGS135',NULL,'silver',100,23,0,0,2,'A106',NULL,'Available'),(250,'GLGG136',NULL,'gold',100,24,200,100,1,'A121','250.0','Requested For Withdraw'),(251,'GLGG137',NULL,'gold',100,25,0,0,2,'A121',NULL,'Available'),(252,'GLGS138',NULL,'silver',100,26,0,0,2,'A106',NULL,'Available'),(253,'GLGG139',NULL,'gold',100,27,300,150,2,'A106','250.0','Available'),(254,'GLGG140',NULL,'gold',100,28,0,0,3,'A106',NULL,'Available'),(255,'GLGP141',NULL,'platinum',107,1,1,1,0,'A0','3.0','Available'),(256,'GLGS142',NULL,'silver',107,2,0,0,1,'A122',NULL,'Not Available');
/*!40000 ALTER TABLE `member_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_type_master`
--

DROP TABLE IF EXISTS `member_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_type_master` (
  `Member_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Member_Type_Name` varchar(200) DEFAULT NULL,
  `Member_Type_Cost` int(11) DEFAULT NULL,
  `Member_Type_Currency` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Member_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_type_master`
--

LOCK TABLES `member_type_master` WRITE;
/*!40000 ALTER TABLE `member_type_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_list`
--

DROP TABLE IF EXISTS `organization_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_list` (
  `org_ID` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `emailID` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`org_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_list`
--

LOCK TABLES `organization_list` WRITE;
/*!40000 ALTER TABLE `organization_list` DISABLE KEYS */;
INSERT INTO `organization_list` VALUES (1,'Indonesia','Jakarta Raya','Food and hotels','2nd Home Coffee and Kitchen @ Kemang',50,'/assets/Files/1.jpg','It\'s a completely fabulous combination of delicious food and cozy place.','globalgains@gmail.com','+62 21 7181066'),(2,'Indonesia','Jakarta Raya','Food and hotels','3rd Place Café @ Posto Dormire Hotel @ Grogol',50,'/assets/Files/2.jpg','Awesome service and ambience..','globalgains@gmail.com','+62 21 2255 4567'),(3,'Indonesia','Jakarta Raya','Food and hotels','ala RITUS @ Pasar Baru @ Sawah Besar',50,'/assets/Files/3.jpg','Quality is good Good for function, meeting, event Price good','globalgains@gmail.com','+62 21 3452016'),(4,'Indonesia','Jakarta Raya','Food and hotels','AI Nafoura Restaurant @ Le Meridien @ Senayan',50,'/assets/Files/4.jpg','Indonesian, Japanese, Indian, Chinese, and middle eastern foods on the menu. Dessert menu is nice too. Equipped gym, steam, sauna, massage etc are excellent','globalgains@gmail.com','+62 21 2513131'),(5,'Indonesia','Jakarta Raya','Food and hotels','Alberto Gelato And Patisserie @ Kelapa Gading',50,'/assets/Files/5.jpg',' Original authentic gelato recipe from friendly Italian Chef. Offers different kinds of gelato, such as gelato sticks, gelato on fruit, gelato cakes, etc.)','globalgains@gmail.com','+62 21 45850988'),(6,'Indonesia','Jakarta Raya','Food and hotels','Ambiente Ristorante @ Aryaduta jakarta @gambir',50,'/assets/Files/6.jpg','The 1st Italian restaurant in Jakarta. Elegant, and exquisite. As one of the nostalgic places in the city, it\'s service is still excellent. Must have: Tagilatelle and Beef Tenderloin','globalgains@gmail.com','+62 21 23521234'),(7,'Indonesia','Jakarta Raya','Food and hotels','Amigos Bar & Cantina @ Bellagio Mall @ Kuningan',50,'/assets/Files/7.jpg','The taco is so tasty and the burrito is very yummy.','globalgains@gmail.com','+62 21 29542686'),(8,'Indonesia','Jakarta Raya','Food and hotels','Anterograde Kitchen & Bar @ Kepala Gading',50,'/assets/Files/8.jpg','Cozy place for a few drinks, haven\'t tried the food but it looks good','globalgains@gmail.com','+62 21 4530812'),(9,'Indonesia','Jakarta Raya','Food and hotels','Aoki Japanese Cuisine @ Grand Mahakam @ Blok M',50,'/assets/Files/9.jpg','Aoki Japanese cuisine is a Japanese restaurant located on the lower ground level of Hotel Gran Mahakam-South Jakarta. AOKI Japanese Cuisine has long been regarded as one of the top Japanese restaurants in Jakarta.','globalgains@gmail.com','+62 21 7209966'),(10,'Indonesia','Jakarta Raya','Food and hotels','Applebee\'s@ Lippo Mall Puri',50,'/assets/Files/10.jpg','Applebee\'s Grill & Bar Jakarta adalah restoran makan kasual khas Amerika yang berfokus pada makanan yang enak, sehat, dan layanan yang ramah.','globalgains@gmail.com','62 21 22582760'),(11,'Indonesia','Jakarta Raya','Food and hotels','Aromanis',50,'/assets/Files/11.jpg','Nice food, nice place....you must  try it! Very, very  yummy !!!','globalgains@gmail.com','+62 21 22390550'),(12,'Indonesia','Jakarta Raya','Food and hotels','Atap Rumah @ Casa Living Senayan @ Tanah Abang',50,'/assets/Files/12.jpg','Semua harga dalam IDR belum termasuk VAT dan biaya layanan kecuali dinyatakan dalam kondisi khusus.','globalgains@gmail.com','+62 21 25981666'),(13,'Indonesia',' Selatan','Food and hotels','atlast Kahve and kitchen @ serpong utara',50,'/assets/Files/13.jpg','Atlast ini posisinya sederetan sekolah penabur Gading Serpong. ','globalgains@gmail.com','085880388880'),(14,'Indonesia','Jakarta Raya','Food and hotels','Babooji @ Senopati',50,'/assets/Files/14.jpg','There aren\'t enough food, service, value or atmosphere ratings for Babooji, Indonesia yet. Be one of the first to write a review!','globalgains@gmail.com','+62 21 27519913'),(15,'Indonesia','Jakarta Raya','Food and hotels','Banainai',50,'/assets/Files/15.jpg','Banainai was created by Taiwanese friends who would like to bring a delicious, healthy and affordable desserts.','globalgains@gmail.com','+6221 5011 6466'),(16,'Indonesia','Jakarta Raya','Food and hotels','Bara @ PIK Avenue @ Pantai indah kapuk',50,'/assets/Files/16.jpg','Here we provide japanese food','globalgains@gmail.com','+62 21 22570999'),(17,'Indonesia','Jakarta Raya','Food and hotels','Bargina @ Senopati @ Kebayoran baru',50,'/assets/Files/17.jpg','Restauran seafood & bar dengan menu special ikan kerapunya, plus wifi dan servis parkir valet.','globalgains@gmail.com','+62 21 27513528'),(18,'Indonesia','Jakarta Raya','Food and hotels','Bianco Sapori de italia @ Atria residence @ Serpong utara',50,'/assets/Files/18.jpg','authentic Italian cuisine, as well as other international and local specialties. Taste also our complete breakfasts, lunch boxes, detox juices','globalgains@gmail.com','+62 21 29542582'),(19,'Indonesia','Jakarta Raya','Food and hotels','Blue Zone center indonesia @ Senopati',50,'/assets/Files/19.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities. ','globalgains@gmail.com','+62 21 7203752'),(20,'Indonesia','Sulawesi Tenggara','Food and hotels','Brewoks Coffee @ Tangerang',50,'/assets/Files/20.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 22262036'),(21,'Indonesia','Sulawesi Tenggara','Food and hotels','Brownstone Coffee and eatery @ Tangerang selatan',50,'/assets/Files/21.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 815-8647-0979'),(22,'Indonesia','Jakarta Raya','Food and hotels','Bulaf Café',50,'/assets/Files/22.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 22767305'),(23,'Indonesia','Jakarta Raya','Food and hotels','C4 Steak house @ PIK @ Pluit',50,'/assets/Files/23.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 896-1136-8632'),(24,'Indonesia','Jakarta Raya','Food and hotels','Café de Burse @ SCBD',50,'/assets/Files/24.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 29035451'),(25,'Indonesia','Jakarta Raya','Food and hotels','Café de manila @ FX Sudirman @ Senayan',50,'/assets/Files/25.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+6281288319892'),(26,'Indonesia','Jakarta Raya','Food and hotels','Camden Bar @ Cikini',50,'/assets/Files/26.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 3101283'),(27,'Indonesia','Jakarta Raya','Food and hotels','Canting Restaurant @ Hotel dafam teras kita @ Jatinegara',50,'/assets/Files/27.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 22807777'),(28,'Indonesia','Jakarta Raya','Food and hotels','Caz Bar @ Kuningan',50,'/assets/Files/28.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 5764582'),(29,'Indonesia','Jakarta Raya','Food and hotels','Celcius Café and grille @ Rawamangun @ Pulogadung',50,'/assets/Files/29.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 4706666'),(30,'Indonesia','Jakarta Raya','Food and hotels','Chophouse @ Prohibition @ Senayan',50,'/assets/Files/30.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 57901295'),(31,'Indonesia','Sulawesi Tenggara','Food and hotels','Cj tom yum @ Bintaro',50,'/assets/Files/31.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 22929745'),(32,'Indonesia','Jakarta Raya','Food and hotels','Cj Tomtai @ Cipete',50,'/assets/Files/32.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 7691691'),(33,'Indonesia','Jakarta Raya','Food and hotels','Cliq Coffee and kitchen @ Kebayoran baru @ Jatinegara',50,'/assets/Files/33.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 821-2430-2883'),(34,'Indonesia','Jakarta Raya','Food and hotels','Coffee On fifth @ Pantai mutiara @ Pluit',50,'/assets/Files/34.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 816-893-862'),(35,'Indonesia','Jakarta Raya','Food and hotels','Cozyfield Café @ PIM @ Pondok indah',50,'/assets/Files/35.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 7692348'),(36,'Indonesia','Jakarta Raya','Food and hotels','Dago restaurant @ Dharmawangsa',50,'/assets/Files/36.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 27518589'),(37,'Indonesia','Jakarta Raya','Food and hotels','De Hooi @ Pondok indah',50,'/assets/Files/37.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 7500742'),(38,'Indonesia','Jakarta Raya','Food and hotels','Dotonbory @ Little osaka food town @ Fatmawati',50,'/assets/Files/38.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 7655475'),(39,'Indonesia','Jakarta Raya','Food and hotels','Double doors @ Puri indah',50,'/assets/Files/39.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 58356816'),(40,'Indonesia','Jakarta Raya','Food and hotels','Doussier Restaurant @ Arosa Hotel @ Bintaro',50,'/assets/Files/40.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 22738888'),(41,'Indonesia','Sulawesi Tenggara','Food and hotels','Drop Off Kitchen and Bar @ Serpong utara',50,'/assets/Files/41.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 22226046'),(42,'Indonesia','Jakarta Raya','Food and hotels','Dua nyonya Restaurant @ Menteng',50,'/assets/Files/42.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 3144691'),(43,'Indonesia','Jakarta Raya','Food and hotels','Eastern promise @ Kemang',50,'/assets/Files/43.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 71790151'),(44,'Indonesia','Jakarta Raya','Food and hotels','Ekaria @ Gajah Mada @ Gambir',50,'/assets/Files/44.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+622163857777'),(45,'Indonesia','Sulawesi Tenggara','Food and hotels','Ekaria Delight @ BSD',50,'/assets/Files/45.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 53167777'),(46,'Indonesia','Jakarta Raya','Food and hotels','El Asador @ Kemang point @  Kemang',50,'/assets/Files/46.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 21 7182206'),(47,'Indonesia','Jakarta Raya','Food and hotels','Elmakko @ Sunter',50,'/assets/Files/47.jpg','Rooms at the hotel feature marble bathrooms with baths, showers and hairdryers. The rooms include a TV, safe and tea/coffee-making facilities.','globalgains@gmail.com','+62 817-0007-307'),(48,'Indonesia','Jakarta Raya','Food and hotels','Expatriate Italian restaurant @ Kelapa gading',50,'/assets/Files/48.jpg','Any taste similar to the flavors of nuts. Often used to describe cheeses.','globalgains@gmail.com','+62 21 45850388'),(49,'Indonesia','Jakarta Raya','Food and hotels','Flow bar and lounge @ Kuningan',50,'/assets/Files/49.jpg','Any taste similar to the flavors of nuts. Often used to describe cheeses.','globalgains@gmail.com','+62 877-7171-1675'),(50,'Indonesia','Jakarta Raya','Food and hotels','Fonju Premium okkaido bear en shabu shabu and grille @ Sudirman',50,'/assets/Files/50.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+62 21 2514722'),(51,'Indonesia','Jakarta Raya','Food and hotels','Franko\'s steak and asian food @ Meruya',50,'/assets/Files/51.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+62 812-8833-0375'),(52,'Indonesia','Jakarta Raya','Food and hotels','Frank\'s bar and smoke house @ Kemang',50,'/assets/Files/52.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+62 21 7183007'),(53,'Indonesia','Jakarta Raya','Food and hotels','Gado - gado cemara ',50,'/assets/Files/53.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 877 8280 9358'),(54,'Indonesia','Jakarta Raya','Food and hotels','Gokul Vegetarian resto @ Pasar baru @ Sawah besar',50,'/assets/Files/54.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+62 21 3810492'),(55,'Indonesia','Jakarta Raya','Food and hotels','Great room @ Holiday Inn Express wahid hasyim @ Tanah abang',50,'/assets/Files/55.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+62 21 80642600'),(56,'Indonesia','Jakarta Raya','Food and hotels','Green and brew @ Green lake city @ Tangerang',50,'/assets/Files/56.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+62 21 22052161'),(57,'Indonesia','Jakarta Raya','Food and hotels','Gyu - kaku prime @ Plaza indonesia @ Thamrin',50,'/assets/Files/57.jpg',' A rich taste with some earthiness. Often used to describe wines or aged liquors.','globalgains@gmail.com','+62 21 3107196'),(58,'Indonesia','Jakarta Raya','Food and hotels','Halfway',50,'/assets/Files/58.jpg',' A rich taste with some earthiness. Often used to describe wines or aged liquors.','globalgains@gmail.com','+61 8 8445 2725'),(59,'Indonesia','Jakarta Raya','Food and hotels','Hardware lane Coffee and brunch @ Pluit',50,'/assets/Files/59.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 21 22664594'),(60,'Indonesia','Sulawesi Tenggara','Food and hotels','hasea eatery @ Tangerang',50,'/assets/Files/60.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 21 22215365'),(61,'Indonesia','Jakarta Raya','Food and hotels','Hayam-Wuruk',50,'/assets/Files/61.jpg','Any taste similar to the flavors of nuts. Often used to describe cheeses.','globalgains@gmail.com','+62 21 2600818'),(62,'Indonesia','Jakarta Raya','Food and hotels','Heritage baitan goei @ Menteng\'',50,'/assets/Files/62.jpg','A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com','+62 21 3155057'),(63,'Indonesia','Jakarta Raya','Food and hotels','Hong tang',50,'/assets/Files/63.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com','+62 21 23580328'),(64,'Indonesia','Jakarta Raya','Food and hotels','Honupoke and matcha bar ',50,'/assets/Files/64.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com','+62 21 71793580'),(65,'Indonesia','Jakarta Raya','Food and hotels','I-ta suki',50,'/assets/Files/65.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','(021) 661 3073'),(66,'Indonesia','Jakarta Raya','Food and hotels','Jacada\'s Café @ Bellagio Boutique mall @ Kuningan',50,'/assets/Files/66.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 21 30066746'),(67,'Indonesia','Jakarta Raya','Food and hotels','Jim bao restaurant @ PIK @ Pantai indah kapuk',50,'/assets/Files/67.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+62 822-9999-8817'),(68,'Indonesia','Jakarta Raya','Food and hotels','Jue\'s grille @ Swiss- Bell hotel magga besar @ Sawah besar',50,'/assets/Files/68.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+62 21 6393888'),(69,'Indonesia','Jakarta Raya','Food and hotels','Kaca Coffee and eatery @ Tanah abang',50,'/assets/Files/69.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com','+62 21 57901138'),(70,'Indonesia','Jakarta Raya','Food and hotels','Kafeine @ SCBD @ Senayan city @ Senayan',50,'/assets/Files/70.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com',' +62 822-9999-8817'),(71,'Indonesia','Jakarta Raya','Food and hotels','Kamakura japanese café @ Little osaka food town @ Fatmawati',50,'/assets/Files/71.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+62 21 7655475'),(72,'Indonesia','Jakarta Raya','Food and hotels','Kam\'s Roast @ PIK @ Pantai indah kapuk',50,'/assets/Files/72.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 22573777'),(73,'Indonesia','Jakarta Raya','Food and hotels','Kasa Meksico @ Senayan',50,'/assets/Files/73.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 57949449'),(74,'Indonesia','Jakarta Raya','Food and hotels','Kiadon sushi @ Pacific place @ SCBD',50,'/assets/Files/74.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com',' +62 21 51402828'),(75,'Indonesia','Jakarta Raya','Food and hotels','Kicir - kicir @ Santika premiere hayam wuruk @ Mangga besar',50,'/assets/Files/75.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+62 21 2600818'),(76,'Indonesia','Jakarta Raya','Food and hotels','Kikugawa Restaurant @ Menteng',50,'/assets/Files/76.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+62 21 3150668'),(77,'Indonesia','Jakarta Raya','Food and hotels','Kokkoro Tokyo mazesoba',50,'/assets/Files/77.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+1 604-559-8872'),(78,'Indonesia','Jakarta Raya','Food and hotels','Kokku ramen @ Muara karang',50,'/assets/Files/78.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+62 21 22671444'),(79,'Indonesia','Jakarta Raya','Food and hotels','Labraserie restaurant @ Lemeridian jakarta @ Thamrin',50,'/assets/Files/79.jpg','A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com','+62 21 2513131'),(80,'Indonesia','Jakarta Raya','Food and hotels','laughing Cow beef bar @ Sudirman',50,'/assets/Files/80.jpg','A burning taste from hot spices.','globalgains@gmail.com','+62 21 25558613'),(81,'Indonesia','Jakarta Raya','Food and hotels','le Gran Café @ Gran Mahakam',50,'/assets/Files/81.jpg','A burning taste from hot spices.','globalgains@gmail.com','+62 21 7209966'),(82,'Indonesia','Jakarta Raya','Food and hotels','Lewis & Carroll @ Kebayoran baru',50,'/assets/Files/82.jpg',' A harsh, bitter, or tart taste. Often used to describe acidic food','globalgains@gmail.com','+62 21 2702660'),(83,'Indonesia','Jakarta Raya','Food and hotels','Limo Poke @ Pacific Place @ SCBD',50,'/assets/Files/83.jpg',' A harsh, bitter, or tart taste. Often used to describe acidic food','globalgains@gmail.com','+62 21 2255 4567'),(84,'Indonesia','Jakarta Raya','Food and hotels','Little India Restaurant @ Kuningan',50,'/assets/Files/84.jpg','A taste reminiscent of the smell of smoke. ','globalgains@gmail.com','+62 21 5762288'),(85,'Indonesia','Jakarta Raya','Food and hotels','Little Sheep Hot Pot @ Ozona  Mall',50,'/assets/Files/85.jpg','A taste reminiscent of the smell of smoke. ','globalgains@gmail.com',' +62 21 29542686'),(86,'Indonesia','Jakarta Raya','Food and hotels','Long Iram Resto & Café @ Cipta Hotel Pancoran @ Pancoran',50,'/assets/Files/86.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+62 21 29317200'),(87,'Indonesia','Jakarta Raya','Food and hotels','Madera Kitchen @ Dharmawanga Square @ Darmawanga',50,'/assets/Files/87.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+62 21 72786760'),(88,'Indonesia','Jakarta Raya','Food and hotels','Maju Evenue @ Mall Artha Gading',50,'/assets/Files/88.jpg','A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com',' +62 21 4530812'),(89,'Indonesia','Jakarta Raya','Food and hotels','Makora Resto @ Equity Tower SCBD',50,'/assets/Files/89.jpg','A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com','+62 21 5152390'),(90,'Indonesia','Jakarta Raya','Food and hotels','Maple & Oak @ Menteng',50,'/assets/Files/90.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+62 21 3906757'),(91,'Indonesia','Jakarta Raya','Food and hotels','Meet And @ Meruya',50,'/assets/Files/91.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+62 21 22541547'),(92,'Indonesia','Jakarta Raya','Food and hotels','Mizuya Japanesse Steak  and Suhsi @ Green Ville',50,'/assets/Files/92.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+1 864-538-8366'),(93,'Indonesia','Jakarta Raya','Food and hotels','Monarchy House @ Bogor Timur',50,'/assets/Files/93.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 251 7568812'),(94,'Indonesia','Jakarta Raya','Food and hotels','MonViet ',50,'/assets/Files/94.jpg','+62 813-8062-8686','globalgains@gmail.com','+62 813-8062-8686'),(95,'Indonesia','Jakarta Raya','Food and hotels','My Seafood - Seafood & Ikan Bakar @ Bogor Timur',50,'/assets/Files/95.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 812-6060-1068'),(96,'Indonesia','Jakarta Raya','Food and hotels','Noname Bar @ Poins Square',50,'/assets/Files/96.jpg',' A taste reminiscent of the smell of smoke. ','globalgains@gmail.com','+62 21 75903059'),(97,'Indonesia','Jakarta Raya','Food and hotels','Oak barrel café & Resto @ Green Luke City',50,'/assets/Files/97.jpg',' A taste reminiscent of the smell of smoke. ','globalgains@gmail.com','+62 21 22524360'),(98,'Indonesia','Jakarta Raya','Food and hotels','Omarez Café & Restaurant @ Menteng',50,'/assets/Files/98.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 21 3922372'),(99,'Indonesia','Jakarta Raya','Food and hotels','Ono Suki Steamboat & BBQ @ Tanggerang',50,'/assets/Files/99.jpg','A rich taste with some earthiness. Often used to describe wines or aged liquors.','globalgains@gmail.com','+62 21 7447548'),(100,'Indonesia','Jakarta Raya','Food and hotels','Palmier @ Plaza Senayan @ Tanah Abang',50,'/assets/Files/100.jpg','A rich taste with some earthiness. Often used to describe wines or aged liquors.','globalgains@gmail.com','+62 21 7447548'),(101,'Indonesia','Jakarta Raya','Food and hotels','Pangkep 33',50,'/assets/Files/101.jpg','A harsh, bitter, or tart taste. Often used to describe acidic foods.','globalgains@gmail.com','+62 21 26081293'),(102,'Indonesia','Jakarta Raya','Food and hotels','Panhead @ Pondok Indah',50,'/assets/Files/102.jpg',' A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com',' +62 21 45850988'),(103,'Indonesia','Jakarta Raya','Food and hotels','papa Rons Pizza',50,'/assets/Files/103.jpg',' A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com',' A sweet or candied taste that may be reminiscent of honey.'),(104,'Indonesia','Jakarta Raya','Food and hotels','Paris-Lyon Café @ Allium Hotel Tanggerang @ Tanggerang',50,'/assets/Files/104.jpg',' A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com','+62 21 29205555'),(105,'Indonesia','Jakarta Raya','Food and hotels','Pasola @ The Ritz-Carlton Pacific Place @SCBD',50,'/assets/Files/105.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+62 21 25501888'),(106,'Indonesia','Jakarta Raya','Food and hotels','Phoenix Coconut Chicken Shabu Shabu @ Gambir',50,'/assets/Files/106.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+62 811-8775-859'),(107,'Indonesia','Jakarta Raya','Food and hotels','Phos Coffe & Eatry @ Roxy @ Cideng',50,'/assets/Files/107.jpg',' A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+62 21 6323132'),(108,'Indonesia','Jakarta Raya','Food and hotels','Porta Venezia @ Aryaduta Semanggi @  Karet Semanggi',50,'/assets/Files/108.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+62 21 2515151'),(109,'Indonesia','Jakarta Raya','Food and hotels','Ramen 38 sanpanchi @ Cilandak Town Square @ Cilandak',50,'/assets/Files/109.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+62 21 75920238'),(110,'Indonesia','Jakarta Raya','Food and hotels','Ramen Fujiyame @ Fatmawati',50,'/assets/Files/110.jpg','A bright flavor like that of lemons, limes, oranges, and other citrus fruits.','globalgains@gmail.com','+62 21 22766247'),(111,'Indonesia','Jakarta Raya','Food and hotels','Rasa Rasa Indonesia Cuisine @ Kebon Jeruk',50,'/assets/Files/111.jpg','A bright flavor like that of lemons, limes, oranges, and other citrus fruits.','globalgains@gmail.com','+62 21 53654405'),(112,'Indonesia','Jakarta Raya','Food and hotels','Red Snapper Seafood & Resto @ Pluit',50,'/assets/Files/112.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+62 21 66601236'),(113,'Indonesia','Jakarta Raya','Food and hotels','Resto Teros Istana @ Bintaro',50,'/assets/Files/113.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+62 21 7238050'),(114,'Indonesia','Jakarta Raya','Food and hotels','Revelle @ Kelapa Gading',50,'/assets/Files/114.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com','+62 822-9818-8778'),(115,'Indonesia','Jakarta Raya','Food and hotels','Rock Scissor @ The East Tower @ Kuningan',50,'/assets/Files/115.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com','+62 21 29527101'),(116,'Indonesia','Jakarta Raya','Food and hotels','Roemah Toean Pe @ Kemang',50,'/assets/Files/116.jpg','A taste that feels as though it gives off heat. Another word for spicy.','globalgains@gmail.com','+62 21 7183417'),(117,'Indonesia','Jakarta Raya','Food and hotels','SamWon Express @ Central Park',50,'/assets/Files/117.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+62 21 29200425'),(118,'Indonesia','Jakarta Raya','Food and hotels','SamWon Hause @ Setiabudi One',50,'/assets/Files/118.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+62 21 52904213'),(119,'Indonesia','Irian Jaya Barat','Food and hotels','Saore ',50,'/assets/Files/119.jpg','A taste that mimics the feeling of cold temperature. Often used to describe mint.','globalgains@gmail.com','+33 7 84 91 38 01'),(120,'Indonesia','Jakarta Raya','Food and hotels','Shabu Jin @ Lippo Mall Puri',50,'/assets/Files/120.jpg','Any taste similar to the flavors of nuts. Often used to describe cheeses.','globalgains@gmail.com','+62 21 80633792'),(121,'Indonesia','Jakarta Raya','Food and hotels','Silver Lounge Swiss-BelHotel mangga Besar Sawah Besar',50,'/assets/Files/121.jpg','Any taste similar to the flavors of nuts. Often used to describe cheeses.','globalgains@gmail.com',' +62 21 6393888'),(122,'Indonesia','Jakarta Raya','Food and hotels','Six Degrees @ Central Park',50,'/assets/Files/122.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com',' +62 21 29201074'),(123,'Indonesia','Jakarta Raya','Food and hotels','Smorrebrod Sandwish Shop @ Gandaria City',50,'/assets/Files/123.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+62 21 29236334'),(124,'Indonesia','Jakarta Raya','Food and hotels','Sophie Authentique',50,'/assets/Files/124.jpg',' A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','Sophie Authentique'),(125,'Indonesia','Jakarta Raya','Food and hotels','Speakeasy Bar @ Prohibition  @ Senayan',50,'/assets/Files/125.jpg',' A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+62 21 57901295'),(126,'Indonesia','Jakarta Raya','Food and hotels','Sports Bar JinX @ Little Osaka  Food Town @ Fatmawati',50,'/assets/Files/126.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+62 21 7655475'),(127,'Indonesia','Jakarta Raya','Food and hotels','Spumante All Day Dining @ Menteng',50,'/assets/Files/127.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+62 21 3106188'),(128,'Indonesia','Jakarta Raya','Food and hotels','Stribe Kitchen & Coffe @ Kelapa Gading',50,'/assets/Files/128.jpg','A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com',' +62 21 29451420'),(129,'Indonesia','Jakarta Raya','Food and hotels','Sumeragi Izakaya @ Gading Serpong @ Serpong',50,'/assets/Files/129.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+62 21 55683547'),(130,'Indonesia','Jakarta Raya','Food and hotels','Sunny Side  up',50,'/assets/Files/130.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com',' 077200 52415'),(131,'Indonesia','Jakarta Raya','Food and hotels','Taliwang Bali ',50,'/assets/Files/131.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+62 21 29071939'),(132,'Indonesia','Jakarta Raya','---- Select ----','Tamoya Udon   @ Central Park @ Tanjung Duren',50,'/assets/Files/132.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+62 21 29428839'),(133,'Indonesia','Jakarta Raya','Food and hotels','Tapas Club @ Setia Budi One @ Setiabudi',50,'/assets/Files/133.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 52907135'),(134,'Indonesia','Jakarta Raya','Food and hotels','Tcikini Lima @ Menteng',50,'/assets/Files/134.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com',' +62 21 3900745'),(135,'Indonesia','Jakarta Raya','Food and hotels','Telaga Seafood @ bSD City',50,'/assets/Files/135.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 5384809'),(136,'Indonesia','Jakarta Raya','Food and hotels','Terezza Lounge @ THE 101 Jakarta Sedayu Darmawangsa',50,'/assets/Files/136.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 29019101'),(137,'Indonesia','Jakarta Raya','Food and hotels','The Board Walk Tavern - Board Game Café @ Alam Sutera',50,'/assets/Files/137.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 878-8180-8865'),(138,'Indonesia','Jakarta Raya','Food and hotels','The O Beng @ Cipete',50,'/assets/Files/138.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 812-2113-2225'),(139,'Indonesia','Jakarta Raya','Food and hotels','The royal Kitchen @ Bellagio Boutique Mall',50,'/assets/Files/139.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 30029975'),(140,'Indonesia','Jakarta Raya','Food and hotels','Tok Poki Korean Dining @ Lippo Mall Puri',50,'/assets/Files/140.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','0813-1510-4950'),(141,'Indonesia','Jakarta Raya','Food and hotels','Tyfei Café @ Tanjung Duren',50,'/assets/Files/141.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 56942751'),(142,'Indonesia','Jakarta Raya','Food and hotels','Up In Smoke @ RDTX Tower @ Kuningan',50,'/assets/Files/142.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 878-5799-2371'),(143,'Indonesia','Jakarta Raya','Food and hotels','URO Japanese Restaurant @ JHL Solitaire Hotel @ Serpong',50,'/assets/Files/143.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+62 21 2513131'),(144,'Indonesia','Jakarta Raya','Food and hotels','Will\'S Restaurant & Bar @ Kelapa Gading',50,'/assets/Files/144.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com',' +62 21 22455593'),(145,'Indonesia','Jakarta Raya','Food and hotels','Young  Dabang Soulfood And Soju @ Senopati',50,'/assets/Files/145.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com',' +62 21 27937251'),(146,'Indonesia','Jakarta Raya','Food and hotels','Yu-I Kitchen @ Muara  Karang',50,'/assets/Files/146.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+62 21 6697280'),(147,'Malaysia','Kuala Lumpur','Food and hotels','drop exchange',50,'/assets/Files/147.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+60 12-608 9066'),(148,'Malaysia','Kuala Lumpur','Food and hotels','expresoul',50,'/assets/Files/148.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+60 3-7972 5709'),(149,'Malaysia','Kuala Lumpur','Food and hotels','7TNine Bar & Launge',50,'/assets/Files/149.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com',' +60 3-2602 3411'),(150,'Malaysia','Kuala Lumpur','Food and hotels','7TNine Indian & Western Cuisine',50,'/assets/Files/150.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+60 3-2602 3411'),(151,'Malaysia','Kuala Lumpur','Food and hotels','28 Fireplace @ Desa Pahlawan',50,'/assets/Files/151.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+60 3-2856 8810'),(152,'Malaysia','Kuala Lumpur','Food and hotels','93. drunk cat',50,'/assets/Files/152.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+60 3-2602 3411'),(153,'Malaysia','Kuala Lumpur','Food and hotels','94. du viet',50,'/assets/Files/153.jpg','Reminiscent of fresh soil. Often used to describe red wines, root vegetables, and mushrooms.','globalgains@gmail.com','+60 3-7726 8101'),(154,'Malaysia','Kuala Lumpur','Food and hotels','97. dua by skohns',50,'/assets/Files/154.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-7731 6954'),(155,'Malaysia','Kuala Lumpur','Food and hotels','dynasty',50,'/assets/Files/155.jpg',' Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+60 3-4043 7777'),(156,'Malaysia','Kuala Lumpur','Food and hotels','The eatry',50,'/assets/Files/156.jpg','Any taste similar to the flavors of nuts. Often used to describe cheeses.','globalgains@gmail.com','+60 3-2110 0431'),(157,'Malaysia','Kuala Lumpur','Food and hotels','El iberico',50,'/assets/Files/157.jpg',' A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+44 20 8300 4773'),(158,'Malaysia','Kuala Lumpur','Food and hotels','Elevate bar&grill',50,'/assets/Files/158.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+94 76 652 7203'),(159,'Malaysia','Kuala Lumpur','Food and hotels','Coffee Workshop',50,'/assets/Files/159.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+60 3-7731 6602'),(160,'Malaysia','Kuala Lumpur','Food and hotels','Enak',50,'/assets/Files/160.jpg','A rich taste with some earthiness. Often used to describe wines or aged liquors','globalgains@gmail.com','+60 3-2782 3807'),(161,'Malaysia','Kuala Lumpur','Food and hotels','Epicureo',50,'/assets/Files/161.jpg','A rich taste with some earthiness. Often used to describe wines or aged liquors','globalgains@gmail.com','+60 16-906 0108'),(162,'Malaysia','Kuala Lumpur','Food and hotels','Essence',50,'/assets/Files/162.jpg','Any taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+60 3-2717 9900'),(163,'Malaysia','Selangor','Food and hotels','Eung chicken',50,'/assets/Files/163.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 11-1057 4388'),(164,'Malaysia','Kuala Lumpur','Food and hotels','Ez9',50,'/assets/Files/164.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 12-646 8666'),(165,'Malaysia','Putrajaya','Food and hotels','Fa ying',50,'/assets/Files/165.jpg','A sweet or candied taste that may be reminiscent of honey.','globalgains@gmail.com','+60 3-7886 9943'),(166,'Malaysia','Kuala Lumpur','Food and hotels','Fire n ice ',50,'/assets/Files/166.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 10-767 9544'),(167,'Malaysia','Selangor','Food and hotels','Flight club',50,'/assets/Files/167.jpg',' A full, heavy flavor. Often used to describe foods containing cream.','globalgains@gmail.com','+60 3-8776 1538'),(168,'Malaysia','Kuala Lumpur','Food and hotels','Puchong ',50,'/assets/Files/168.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+60 12-608 9066'),(169,'Malaysia','Kuala Lumpur','Food and hotels','Friends and cino',50,'/assets/Files/169.jpg','The hotel lies 1. Km from the city center and provides accessibility to important town facilities. For those of you who want to venture out, Tehzib Trading, Tudung, Jalan Masjid India are just some of the attractions available to visitors.','globalgains@gmail.com','+60 3-2693 7878'),(170,'Malaysia','Kuala Lumpur','Food and hotels','Gangnamo',50,'/assets/Files/170.jpg','Asian, Korean Dishes are available','globalgains@gmail.com','+60 5-887 0426'),(171,'Malaysia','Kuala Lumpur','Food and hotels','Gather',50,'/assets/Files/171.jpg','Chinese Foods are available','globalgains@gmail.com','+60 3-5131 5564'),(172,'Malaysia','Selangor','Food and hotels','Genji ',50,'/assets/Files/172.jpg','Rich flavor that can feel heavy in the mouth. Often used to describe wines.','globalgains@gmail.com','+60 3-7955 9122'),(173,'Malaysia','Kuala Lumpur','Food and hotels','Gloria jeans',50,'/assets/Files/173.jpg','y taste reminiscent of sweet fruit flavors.','globalgains@gmail.com','+60 3-7960 7867'),(174,'Malaysia','Kuala Lumpur','Food and hotels','Goo9s',50,'/assets/Files/174.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','-'),(175,'Malaysia','Selangor','Food and hotels','Good blue man ',50,'/assets/Files/175.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-7499 7394'),(176,'Malaysia','Sarawak','Food and hotels','Gyukingu  ',50,'/assets/Files/176.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-6143 7750'),(177,'Malaysia','Selangor','Food and hotels','Hadramot village  ',50,'/assets/Files/177.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-6143 7750'),(178,'Malaysia','Selangor','Food and hotels','Hanayuzen ',50,'/assets/Files/178.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-5613 1080'),(179,'Malaysia','Others','Food and hotels','Harumi',50,'/assets/Files/179.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 5-689 0022'),(180,'Malaysia','Selangor','Food and hotels','Hatton',50,'/assets/Files/180.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-3345 3022'),(181,'Malaysia','Kuala Lumpur','Food and hotels','Hemisphere',50,'/assets/Files/181.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-2742 1098'),(182,'Malaysia','Kuala Lumpur','Food and hotels','Hourplace ',50,'/assets/Files/182.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-6206 3538'),(183,'Malaysia','Selangor','Food and hotels','House',50,'/assets/Files/183.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 3-8080 9857'),(184,'Malaysia','Kuala Lumpur','Food and hotels','Hua yi yuan',50,'/assets/Files/184.jpg','A light and crisp taste. Often used to describe produce or herbs.','globalgains@gmail.com','+60 17-287 2393'),(185,'Malaysia','Kuala Lumpur','Food and hotels','Ibai cafe',50,'/assets/Files/185.jpg','A bright, fresh, or sometimes earthy taste created by the incorporation of herbs.','globalgains@gmail.com','+60 3-4045 7777'),(186,'Malaysia','Kuala Lumpur','Food and hotels','IILusion ',50,'/assets/Files/186.jpg','A rich taste with some earthiness. Often used to describe wines or aged liquors.','globalgains@gmail.com','+60 3-2110 2654'),(187,'Indonesia','Jakarta Raya','----Others----','Hen toys',50,'/assets/Files/187.jpg','Excavator','hendrimulyana0@gmail.com','081210135821'),(188,'Indonesia','Jakarta Raya','Food and hotels','Hendri',50,'/assets/Files/188.jpg','Tiket Dangdur','hendrimulyana0@gmail.com','081290999591'),(189,'Indonesia','Jakarta Raya','Food and hotels','12 Food Hendri',50,'/assets/Files/189.jpg','Tiket Dangdur','hendrimulyana0@gmail.com','081290999591'),(190,'Indonesia','Jakarta Raya','Herbal Product','Najwa Pasta Gigi',50,'/assets/Files/190.jpg','Membantu Menguatkan Gusi, Mencegah Gusi berdarah, Mencegah kerusakan Gigi, Menjadikan gigi putih bersinar, Memberi kesegaran dan menghasilkan aroma segar di mulut','globalgains49@gmail.com','021 - 2255 4567'),(191,'Indonesia','Jakarta Raya','Herbal Product','Najwa Shampo White Spa',50,'/assets/Files/191.jpg','Shampo yang dibuat menggunakan bahan aktif dan berkualitas tinggi untuk memberikan perawatan rambut terbaik untuk anda.','globalgains49@gmail.com','021-2255 4567'),(192,'Malaysia','Kuala Lumpur','Food and hotels','Imperial',50,'/assets/Files/192.jpg','he restaurant’s terrace is open to visitors during the warm months of the year. The terrace’s interior will remind you of a château in the Alps because its entire interior is made of natural wood.','globalgains@gmail.com','+60 3-2148 1422');
/*!40000 ALTER TABLE `organization_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `randam_number`
--

DROP TABLE IF EXISTS `randam_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `randam_number` (
  `Temp_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Member_Code` varchar(10) DEFAULT NULL,
  `Current_Member_Number` int(11) DEFAULT NULL,
  `Current_Group_Number` int(11) DEFAULT NULL,
  `treeRandamNumber` int(11) DEFAULT NULL,
  `booking_Randam_Number` int(11) DEFAULT NULL,
  `category_Randam_Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`Temp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `randam_number`
--

LOCK TABLES `randam_number` WRITE;
/*!40000 ALTER TABLE `randam_number` DISABLE KEYS */;
INSERT INTO `randam_number` VALUES (1,'GLGP',142,107,122,109,111);
/*!40000 ALTER TABLE `randam_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `user_Details_ID` int(11) NOT NULL AUTO_INCREMENT,
  `acctCreated_date` date DEFAULT NULL,
  `acctType` varchar(255) DEFAULT NULL,
  `acct_Approved_date` date DEFAULT NULL,
  `adminFees` int(11) DEFAULT NULL,
  `bankAcctNumber` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `memberID` varchar(255) DEFAULT NULL,
  `member_Ref_ID` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `payAmt` int(11) DEFAULT NULL,
  `payStatus` varchar(255) DEFAULT NULL,
  `phonenumber1` varchar(255) DEFAULT NULL,
  `totalFees` int(11) DEFAULT NULL,
  `User_Login_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_Details_ID`),
  KEY `FKB7C889CE893C530F` (`User_Login_ID`),
  CONSTRAINT `FKB7C889CE893C530F` FOREIGN KEY (`User_Login_ID`) REFERENCES `user_login` (`user_Login_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,NULL,'Platinum',NULL,0,'0039323980',' DBS Bank','Singapore','globalgains@gmail.com','Global','Gains Limited','GLGP600800','GLGP600800',NULL,10000,'paid','+62 21 2255 4567',0,NULL),(2,'2019-06-11','silver',NULL,1,'111111','City bank','India','alexdubai9@gmail.com','Alex','Ubalton','GLGS106','GLGP600800',NULL,10,'Waiting','44444',11,2),(3,'2019-06-12','silver',NULL,1,'5310749933','BCA','Indonesia','hendrimulyana0@gmail.com','hendrim','Mulyana','GLGS107','GLGP600800',NULL,10,'paid','081210135821',11,3),(4,'2019-06-12','silver',NULL,1,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendriml','well','GLGS108','GLGS107',NULL,10,'paid','0107987372',11,4),(5,'2019-06-12','silver',NULL,1,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','wook','GLGS109','GLGS107',NULL,10,'Waiting','081290999591',11,5),(6,'2019-06-12','gold',NULL,50,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','wook','GLGG110','GLGP600800',NULL,1000,'Waiting','081310592170',1050,6),(7,'2019-06-12','gold',NULL,50,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendrim','well','GLGG111','GLGS107',NULL,1000,'Waiting','081290999591',1050,7),(8,'2019-06-12','platinum',NULL,500,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','mul','GLGP112','GLGS107',NULL,10000,'Waiting','081310592170',10500,8),(9,'2019-06-12','gold',NULL,50,'712022562258','BCA','Malaysia','hendrimulyana0@gmail.com','hendri','wook','GLGG113','GLGP112',NULL,1000,'Waiting','0107987372',1050,9),(10,'2019-06-12','gold',NULL,50,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','yana','GLGG114','GLGS107',NULL,1000,'Waiting','081290999591',1050,10),(11,'2019-06-12','platinum',NULL,500,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','yana','GLGP115','GLGS107',NULL,10000,'Waiting','081290999591',10500,11),(12,'2019-06-12','gold',NULL,50,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','hem','mulya','GLGG116','GLGP115',NULL,1000,'Waiting','0107987372',1050,12),(13,'2019-06-12','gold',NULL,50,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','Gold','2','GLGG117','GLGP112',NULL,1000,'Waiting','0107987372',1050,13),(14,'2019-06-12','gold',NULL,50,'712022562258','BCA','Indonesia','hendrimulyana0@gmail.com','Gold','2','GLGG118','GLGP115',NULL,1000,'Waiting','081290999591',1050,14),(15,'2019-06-15','platinum',NULL,500,'107095318376','Maybank','Malaysia','Siamalachandran@gmail.com ','Chandran','Muniandy ','GLGP119','Glgp600800',NULL,10000,'Waiting','0134412292',10500,15),(16,'2019-06-21','silver',NULL,1,'1875046248','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','Mulyana','GLGS120','GLGP600800',NULL,10,'Waiting','081210135821',11,16),(17,'2019-06-21','platinum',NULL,500,'505121052598','Maybank','Other International','Onevictory30@gmail.com','Mohan','Arumungan','GLGP121','GLGP600800',NULL,10000,'Waiting','012-6186562',10500,17),(18,'2019-06-26','gold',NULL,50,'105122042683','MAYBANK','Malaysia','bekok1968@gmail.com','MATHIALAHAN','KOTTAMUTHU','GLGG122','GLGP121',NULL,1000,'Waiting','+60123218135',1050,18),(19,'2019-06-27','gold',NULL,50,'712066895923','BCA','Indonesia','anthony.rasyid@gmail.com ','Anthony','Rasyid','GLGG123','GLGP600800',NULL,1000,'Waiting','0812-1264-8631',1050,19),(20,'2019-06-27','silver',NULL,1,'088875569823','BCA','Indonesia','hendrimulyana0@gmail.com','Hendra','Wan','GLGS124','GLGP600800',NULL,10,'Waiting','081290999591',11,20),(21,'2019-06-27','silver',NULL,1,'12345678','bca','Indonesia','moza1688@gmail.com','windy','pertiwi','GLGS125','GLGP600800',NULL,10,'Waiting','08118681688',11,21),(22,'2019-06-28','gold',NULL,50,'14522','City Bank','India','shahayajoseny@gmail.com','Sahaya ','Joseny.J','GLGG126','GLGS106',NULL,1000,'Waiting','8489627457',1050,22),(23,'2019-06-28','platinum',NULL,500,'154546','SBT','Indonesia','shahayajoseny@gmail.com','Nisho','Lin','GLGP127','GLGG126',NULL,10000,'Waiting','98765643011',10500,23),(24,'2019-06-29','gold',NULL,50,'5940337111','bca','Indonesia','hanzfulton@gmail.co.id','handoko','handoko','GLGG128','GLGP600800',NULL,1000,'Waiting','081367070655',1050,24),(25,'2019-06-29','gold',NULL,50,'5940337111','bca','Indonesia','hanzfulton@gmail.com','handoko','handoko','GLGG129','glgp600800',NULL,1000,'Waiting','081367070655',1050,25),(26,'2019-06-29','silver',NULL,1,'145263','Canara Bank','India','shahayajoseny@gmail.com','Jaya','Sree','GLGS130','GLGP127',NULL,10,'Waiting','8489627457',11,26),(27,'2019-07-01','silver',NULL,1,'088875569823','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','mul','GLGS131','GLGS107',NULL,10,'Waiting','081310592170',11,27),(28,'2019-07-01','gold',NULL,50,'145263','City Bank','India','shahayajoseny@gmail.com','Rao','Chanth','GLGG132','GLGP600800',NULL,1000,'Waiting','8489627457',1050,28),(29,'2019-07-01','silver',NULL,1,'14526356','Canara Bank','India','shahayajoseny@gmail.com','Rohit','Sharma','GLGS133','GLGG132',NULL,10,'Waiting','98765643011',11,29),(30,'2019-07-01','silver',NULL,1,'5310727093','BCA','Indonesia','haryantiy913@gmail.com','Haryanti','yanti','GLGS134','GLGS107',NULL,10,'Waiting','0895615730199',11,30),(31,'2019-07-01','silver',NULL,1,'5310727107','BCA','Indonesia','bahronireal@gmail.com','Bahroni','roni','GLGS135','GLGS107',NULL,10,'Waiting','082213697399',11,31),(32,'2019-07-04','gold',NULL,50,'5455067402','BCA','Indonesia','h.yong1909@gmail.com','Hondo','Widjaja','GLGG136','GLGP600800',NULL,1000,'Waiting','082211511969',1050,32),(33,'2019-07-04','gold',NULL,50,'0354260553','Bca','Indonesia','Riokl.jab@gmail.com','Rio','kl','GLGG137','Glgg136',NULL,1000,'Waiting','6281280111210',1050,33),(34,'2019-07-05','silver',NULL,1,'088875569823','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','Mulyan','GLGS138','GLGS107',NULL,10,'Waiting','081310592170',11,34),(35,'2019-07-05','gold',NULL,50,'5310749933','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','M','GLGG139','GLGS107',NULL,1000,'Waiting','081310592170',1050,35),(36,'2019-07-05','gold',NULL,50,'5310749933','BCA','Indonesia','hendrimulyana0@gmail.com','hendri','muly','GLGG140','GLGG139',NULL,1000,'Waiting','081210135821',1050,36),(37,'2019-07-05','platinum',NULL,500,'114348059866','Maybank','Malaysia','Artjb70@gmail.com','Muhammad Fuad','Hassan','GLGP141','Glgp600800',NULL,10000,'Waiting','0126619970',10500,37),(38,'2019-07-05','silver',NULL,1,'112183149254','Maybank','Malaysia','Amyr2411@gmail.com','Rozani','Romli','GLGS142','Glgp141',NULL,10,'Waiting','0196949498',11,38);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `user_Login_ID` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_otp` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_Login_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (1,NULL,'magin@123','Approved',NULL,'admin','admin'),(2,NULL,'qaz','Approved',NULL,'member','alex'),(3,NULL,'21juli12','Approved',NULL,'member','hendrim'),(4,NULL,'21juli12','Approved',NULL,'member','hendriml'),(5,NULL,'21juli12','Approved',NULL,'member','hendrimly'),(6,NULL,'21juli12','Approved',NULL,'member','hendrimul'),(7,NULL,'21juli12','Approved',NULL,'member','hendrimu'),(8,NULL,'21juli12','Approved',NULL,'member','hendrimlyn'),(9,NULL,'21juli12','Approved',NULL,'member','hendrimlyna'),(10,NULL,'21juli12','Approved',NULL,'member','mulyana'),(11,NULL,'21juli12','Approved',NULL,'member','mlyn'),(12,NULL,'21juli12','Approved',NULL,'member','mulyan'),(13,NULL,'21juli12','Approved',NULL,'member','gold2'),(14,NULL,'21juli12','Approved',NULL,'member','Gold22'),(15,NULL,'Chandran0809','Approved',NULL,'member','siamalachandran '),(16,NULL,'21juli12','Approved',NULL,'member','mlynhendriii'),(17,NULL,'055193','Approved',NULL,'member','Mohan'),(18,NULL,'813820','Approved',NULL,'member','mlkottam'),(19,NULL,'12345678','Approved',NULL,'member','Anthony'),(20,NULL,'12345678','Approved',NULL,'member','hendra'),(21,NULL,'123456','Approved',NULL,'member','moza1688'),(22,NULL,'josni','Rejected',NULL,'member','josni'),(23,NULL,'nisho','Rejected',NULL,'member','nisho'),(24,NULL,'121192','Rejected',NULL,'member','handoko123'),(25,NULL,'121192','Approved',NULL,'member','handoko12'),(26,NULL,'ammu','Rejected',NULL,'member','ammu'),(27,NULL,'21juli12','Waiting For Approval',NULL,'member','hends'),(28,NULL,'rao','Waiting For Approval',NULL,'member','rao'),(29,NULL,'rohit','Waiting For Approval',NULL,'member','rohit'),(30,NULL,'ggl01','Approved',NULL,'member','haryanti16'),(31,NULL,'keonggalau','Approved',NULL,'member','roni002'),(32,NULL,'juanID2307','Approved',NULL,'member','h.yong1909@gmail.com'),(33,NULL,'jm161208','Approved',NULL,'member','Riokl'),(34,NULL,'21juli12','Approved',NULL,'member','mlyhendri'),(35,NULL,'21juli12','Approved',NULL,'member','mhendri'),(36,NULL,'21juli12','Approved',NULL,'member','mulhendri'),(37,NULL,'fuad123','Approved',NULL,'member','Fuad'),(38,NULL,'amy123','Waiting For Approval',NULL,'member','Amyr2411');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_type`
--

DROP TABLE IF EXISTS `user_role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_type` (
  `User_Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Role_Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`User_Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_type`
--

LOCK TABLES `user_role_type` WRITE;
/*!40000 ALTER TABLE `user_role_type` DISABLE KEYS */;
INSERT INTO `user_role_type` VALUES (1,'Admin'),(2,'Member');
/*!40000 ALTER TABLE `user_role_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-06  5:50:16
