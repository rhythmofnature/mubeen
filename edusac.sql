-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: edusac
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('Employee','15',1432722939),('Employee','19',1432723678),('Employee','20',1432724802),('Employee','21',1432725245),('Employee','22',1432725750),('Employee','23',1432727516),('Employee','24',1432728127),('Employee','25',1432729311),('Employee','26',1432786972),('Employee','27',1432787696),('Employee','28',1432788376),('Employee','29',1432789763),('Employee','30',1432791740),('Employee','31',1432798436),('Employee','32',1432798892),('Employee','33',1432804334),('Employee','4',1432721974),('Student','10',1432722586),('Student','11',1432722636),('Student','12',1432722790),('Student','13',1432722852),('Student','14',1432722904),('Student','16',1432722957),('Student','17',1432723047),('Student','18',1432723142),('Student','2',1432721814),('Student','3',1432721957),('Student','5',1432722136),('Student','6',1432722271),('Student','7',1432722395),('Student','8',1432722482),('Student','9',1432722535),('SuperAdmin','1',1432720135);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',2,'/*',NULL,NULL,1432554657,1432554657),('/auth-assignment/*',2,'/auth-assignment/*',NULL,NULL,1432554652,1432554652),('/auth-assignment/create',2,'/auth-assignment/create',NULL,NULL,1432554652,1432554652),('/auth-assignment/delete',2,'/auth-assignment/delete',NULL,NULL,1432554652,1432554652),('/auth-assignment/index',2,'/auth-assignment/index',NULL,NULL,1432554652,1432554652),('/auth-assignment/update',2,'/auth-assignment/update',NULL,NULL,1432554652,1432554652),('/auth-assignment/view',2,'/auth-assignment/view',NULL,NULL,1432554652,1432554652),('/city/*',2,'/city/*',NULL,NULL,1432554652,1432554652),('/city/create',2,'/city/create',NULL,NULL,1432555253,1432555253),('/city/delete',2,'/city/delete',NULL,NULL,1432554652,1432554652),('/city/index',2,'/city/index',NULL,NULL,1432554652,1432554652),('/city/update',2,'/city/update',NULL,NULL,1432554652,1432554652),('/city/view',2,'/city/view',NULL,NULL,1432554652,1432554652),('/country/*',2,'/country/*',NULL,NULL,1432554653,1432554653),('/country/create',2,'/country/create',NULL,NULL,1432554652,1432554652),('/country/delete',2,'/country/delete',NULL,NULL,1432554653,1432554653),('/country/index',2,'/country/index',NULL,NULL,1432554652,1432554652),('/country/update',2,'/country/update',NULL,NULL,1432554652,1432554652),('/country/view',2,'/country/view',NULL,NULL,1432554652,1432554652),('/course/*',2,'/course/*',NULL,NULL,1432554639,1432554639),('/course/batches/*',2,'/course/batches/*',NULL,NULL,1432554638,1432554638),('/course/batches/create',2,'/course/batches/create',NULL,NULL,1432554638,1432554638),('/course/batches/delete',2,'/course/batches/delete',NULL,NULL,1432554638,1432554638),('/course/batches/index',2,'/course/batches/index',NULL,NULL,1432554638,1432554638),('/course/batches/toggle',2,'/course/batches/toggle',NULL,NULL,1432554638,1432554638),('/course/batches/update',2,'/course/batches/update',NULL,NULL,1432554638,1432554638),('/course/batches/view',2,'/course/batches/view',NULL,NULL,1432554638,1432554638),('/course/courses/*',2,'/course/courses/*',NULL,NULL,1432554638,1432554638),('/course/courses/create',2,'/course/courses/create',NULL,NULL,1432554638,1432554638),('/course/courses/delete',2,'/course/courses/delete',NULL,NULL,1432554638,1432554638),('/course/courses/index',2,'/course/courses/index',NULL,NULL,1432554638,1432554638),('/course/courses/toggle',2,'/course/courses/toggle',NULL,NULL,1432554638,1432554638),('/course/courses/update',2,'/course/courses/update',NULL,NULL,1432554638,1432554638),('/course/courses/view',2,'/course/courses/view',NULL,NULL,1432554638,1432554638),('/course/default/*',2,'/course/default/*',NULL,NULL,1432554639,1432554639),('/course/default/index',2,'/course/default/index',NULL,NULL,1432554638,1432554638),('/course/section/*',2,'/course/section/*',NULL,NULL,1432554639,1432554639),('/course/section/create',2,'/course/section/create',NULL,NULL,1432554639,1432554639),('/course/section/delete',2,'/course/section/delete',NULL,NULL,1432554639,1432554639),('/course/section/index',2,'/course/section/index',NULL,NULL,1432554639,1432554639),('/course/section/toggle',2,'/course/section/toggle',NULL,NULL,1432554639,1432554639),('/course/section/update',2,'/course/section/update',NULL,NULL,1432554639,1432554639),('/course/section/view',2,'/course/section/view',NULL,NULL,1432554639,1432554639),('/dashboard/*',2,'/dashboard/*',NULL,NULL,1432554649,1432554649),('/dashboard/default/*',2,'/dashboard/default/*',NULL,NULL,1432554647,1432554647),('/dashboard/default/index',2,'/dashboard/default/index',NULL,NULL,1432554647,1432554647),('/dashboard/events/*',2,'/dashboard/events/*',NULL,NULL,1432554648,1432554648),('/dashboard/events/add-event',2,'/dashboard/events/add-event',NULL,NULL,1432554647,1432554647),('/dashboard/events/event-delete',2,'/dashboard/events/event-delete',NULL,NULL,1432554648,1432554648),('/dashboard/events/index',2,'/dashboard/events/index',NULL,NULL,1432554647,1432554647),('/dashboard/events/update-event',2,'/dashboard/events/update-event',NULL,NULL,1432554648,1432554648),('/dashboard/events/view',2,'/dashboard/events/view',NULL,NULL,1432554647,1432554647),('/dashboard/events/view-events',2,'/dashboard/events/view-events',NULL,NULL,1432554647,1432554647),('/dashboard/msg-of-day/*',2,'/dashboard/msg-of-day/*',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/create',2,'/dashboard/msg-of-day/create',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/delete',2,'/dashboard/msg-of-day/delete',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/index',2,'/dashboard/msg-of-day/index',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/toggle',2,'/dashboard/msg-of-day/toggle',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/update',2,'/dashboard/msg-of-day/update',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/view',2,'/dashboard/msg-of-day/view',NULL,NULL,1432554648,1432554648),('/dashboard/notice/*',2,'/dashboard/notice/*',NULL,NULL,1432554649,1432554649),('/dashboard/notice/create',2,'/dashboard/notice/create',NULL,NULL,1432554649,1432554649),('/dashboard/notice/delete',2,'/dashboard/notice/delete',NULL,NULL,1432554649,1432554649),('/dashboard/notice/index',2,'/dashboard/notice/index',NULL,NULL,1432554649,1432554649),('/dashboard/notice/notice-file',2,'/dashboard/notice/notice-file',NULL,NULL,1432554649,1432554649),('/dashboard/notice/toggle',2,'/dashboard/notice/toggle',NULL,NULL,1432554649,1432554649),('/dashboard/notice/update',2,'/dashboard/notice/update',NULL,NULL,1432554649,1432554649),('/dashboard/notice/view',2,'/dashboard/notice/view',NULL,NULL,1432554649,1432554649),('/dashboard/notice/view-popup',2,'/dashboard/notice/view-popup',NULL,NULL,1432554649,1432554649),('/debug/*',2,'/debug/*',NULL,NULL,1432554651,1432554651),('/debug/default/*',2,'/debug/default/*',NULL,NULL,1432554651,1432554651),('/debug/default/download-mail',2,'/debug/default/download-mail',NULL,NULL,1432554651,1432554651),('/debug/default/index',2,'/debug/default/index',NULL,NULL,1432554651,1432554651),('/debug/default/toolbar',2,'/debug/default/toolbar',NULL,NULL,1432554651,1432554651),('/debug/default/view',2,'/debug/default/view',NULL,NULL,1432554651,1432554651),('/default/*',2,'/default/*',NULL,NULL,1432554653,1432554653),('/default/index',2,'/default/index',NULL,NULL,1432554653,1432554653),('/dependent/*',2,'/dependent/*',NULL,NULL,1432554653,1432554653),('/dependent/getcity',2,'/dependent/getcity',NULL,NULL,1432554653,1432554653),('/dependent/getorgcity',2,'/dependent/getorgcity',NULL,NULL,1432554653,1432554653),('/dependent/getorgstate',2,'/dependent/getorgstate',NULL,NULL,1432554653,1432554653),('/dependent/getstate',2,'/dependent/getstate',NULL,NULL,1432554653,1432554653),('/dependent/index',2,'/dependent/index',NULL,NULL,1432554653,1432554653),('/dependent/studbatch',2,'/dependent/studbatch',NULL,NULL,1432554653,1432554653),('/dependent/studsection',2,'/dependent/studsection',NULL,NULL,1432554653,1432554653),('/document-category/*',2,'/document-category/*',NULL,NULL,1432554653,1432554653),('/document-category/create',2,'/document-category/create',NULL,NULL,1432554653,1432554653),('/document-category/delete',2,'/document-category/delete',NULL,NULL,1432554653,1432554653),('/document-category/index',2,'/document-category/index',NULL,NULL,1432554653,1432554653),('/document-category/update',2,'/document-category/update',NULL,NULL,1432554653,1432554653),('/document-category/view',2,'/document-category/view',NULL,NULL,1432554653,1432554653),('/employee/*',2,'/employee/*',NULL,NULL,1432554645,1432554645),('/employee/default/*',2,'/employee/default/*',NULL,NULL,1432554642,1432554642),('/employee/default/index',2,'/employee/default/index',NULL,NULL,1432554642,1432554642),('/employee/dependent/*',2,'/employee/dependent/*',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-c-city',2,'/employee/dependent/emp-c-city',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-c-state',2,'/employee/dependent/emp-c-state',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-p-city',2,'/employee/dependent/emp-p-city',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-p-state',2,'/employee/dependent/emp-p-state',NULL,NULL,1432554642,1432554642),('/employee/emp-address/*',2,'/employee/emp-address/*',NULL,NULL,1432554642,1432554642),('/employee/emp-address/create',2,'/employee/emp-address/create',NULL,NULL,1432554642,1432554642),('/employee/emp-address/delete',2,'/employee/emp-address/delete',NULL,NULL,1432554642,1432554642),('/employee/emp-address/index',2,'/employee/emp-address/index',NULL,NULL,1432554642,1432554642),('/employee/emp-address/update',2,'/employee/emp-address/update',NULL,NULL,1432554642,1432554642),('/employee/emp-address/view',2,'/employee/emp-address/view',NULL,NULL,1432554642,1432554642),('/employee/emp-category/*',2,'/employee/emp-category/*',NULL,NULL,1432554643,1432554643),('/employee/emp-category/create',2,'/employee/emp-category/create',NULL,NULL,1432554643,1432554643),('/employee/emp-category/delete',2,'/employee/emp-category/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-category/index',2,'/employee/emp-category/index',NULL,NULL,1432554642,1432554642),('/employee/emp-category/update',2,'/employee/emp-category/update',NULL,NULL,1432554643,1432554643),('/employee/emp-category/view',2,'/employee/emp-category/view',NULL,NULL,1432554643,1432554643),('/employee/emp-department/*',2,'/employee/emp-department/*',NULL,NULL,1432554643,1432554643),('/employee/emp-department/create',2,'/employee/emp-department/create',NULL,NULL,1432554643,1432554643),('/employee/emp-department/delete',2,'/employee/emp-department/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-department/index',2,'/employee/emp-department/index',NULL,NULL,1432554643,1432554643),('/employee/emp-department/update',2,'/employee/emp-department/update',NULL,NULL,1432554643,1432554643),('/employee/emp-department/view',2,'/employee/emp-department/view',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/*',2,'/employee/emp-designation/*',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/create',2,'/employee/emp-designation/create',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/delete',2,'/employee/emp-designation/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/index',2,'/employee/emp-designation/index',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/update',2,'/employee/emp-designation/update',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/view',2,'/employee/emp-designation/view',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/*',2,'/employee/emp-docs/*',NULL,NULL,1432554644,1432554644),('/employee/emp-docs/create',2,'/employee/emp-docs/create',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/delete',2,'/employee/emp-docs/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/index',2,'/employee/emp-docs/index',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/update',2,'/employee/emp-docs/update',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/view',2,'/employee/emp-docs/view',NULL,NULL,1432554643,1432554643),('/employee/emp-info/*',2,'/employee/emp-info/*',NULL,NULL,1432554644,1432554644),('/employee/emp-info/create',2,'/employee/emp-info/create',NULL,NULL,1432554644,1432554644),('/employee/emp-info/delete',2,'/employee/emp-info/delete',NULL,NULL,1432554644,1432554644),('/employee/emp-info/index',2,'/employee/emp-info/index',NULL,NULL,1432554644,1432554644),('/employee/emp-info/update',2,'/employee/emp-info/update',NULL,NULL,1432554644,1432554644),('/employee/emp-info/view',2,'/employee/emp-info/view',NULL,NULL,1432554644,1432554644),('/employee/emp-master/*',2,'/employee/emp-master/*',NULL,NULL,1432554644,1432554644),('/employee/emp-master/adddocs',2,'/employee/emp-master/adddocs',NULL,NULL,1432554644,1432554644),('/employee/emp-master/change-status',2,'/employee/emp-master/change-status',NULL,NULL,1432554644,1432554644),('/employee/emp-master/create',2,'/employee/emp-master/create',NULL,NULL,1432554644,1432554644),('/employee/emp-master/delete',2,'/employee/emp-master/delete',NULL,NULL,1432554644,1432554644),('/employee/emp-master/delete-doc',2,'/employee/emp-master/delete-doc',NULL,NULL,1432554644,1432554644),('/employee/emp-master/docs-download',2,'/employee/emp-master/docs-download',NULL,NULL,1432554644,1432554644),('/employee/emp-master/emp-photo',2,'/employee/emp-master/emp-photo',NULL,NULL,1432554644,1432554644),('/employee/emp-master/index',2,'/employee/emp-master/index',NULL,NULL,1432554644,1432554644),('/employee/emp-master/update',2,'/employee/emp-master/update',NULL,NULL,1432554644,1432554644),('/employee/emp-master/view',2,'/employee/emp-master/view',NULL,NULL,1432554644,1432554644),('/employee/emp-status/*',2,'/employee/emp-status/*',NULL,NULL,1432554645,1432554645),('/employee/emp-status/create',2,'/employee/emp-status/create',NULL,NULL,1432554645,1432554645),('/employee/emp-status/delete',2,'/employee/emp-status/delete',NULL,NULL,1432554645,1432554645),('/employee/emp-status/index',2,'/employee/emp-status/index',NULL,NULL,1432554644,1432554644),('/employee/emp-status/update',2,'/employee/emp-status/update',NULL,NULL,1432554645,1432554645),('/employee/emp-status/view',2,'/employee/emp-status/view',NULL,NULL,1432554644,1432554644),('/employee/export-data/*',2,'/employee/export-data/*',NULL,NULL,1432554645,1432554645),('/employee/export-data/employee-profile-pdf',2,'/employee/export-data/employee-profile-pdf',NULL,NULL,1432554645,1432554645),('/export-data/*',2,'/export-data/*',NULL,NULL,1432554653,1432554653),('/export-data/export-excel',2,'/export-data/export-excel',NULL,NULL,1432554653,1432554653),('/export-data/export-to-pdf',2,'/export-data/export-to-pdf',NULL,NULL,1432554653,1432554653),('/fees/*',2,'/fees/*',NULL,NULL,1432554646,1432554646),('/fees/bank-master/*',2,'/fees/bank-master/*',NULL,NULL,1432554645,1432554645),('/fees/bank-master/create',2,'/fees/bank-master/create',NULL,NULL,1432554645,1432554645),('/fees/bank-master/delete',2,'/fees/bank-master/delete',NULL,NULL,1432554645,1432554645),('/fees/bank-master/index',2,'/fees/bank-master/index',NULL,NULL,1432554645,1432554645),('/fees/bank-master/update',2,'/fees/bank-master/update',NULL,NULL,1432554645,1432554645),('/fees/bank-master/view',2,'/fees/bank-master/view',NULL,NULL,1432554645,1432554645),('/fees/default/*',2,'/fees/default/*',NULL,NULL,1432554645,1432554645),('/fees/default/index',2,'/fees/default/index',NULL,NULL,1432554645,1432554645),('/fees/dependent/*',2,'/fees/dependent/*',NULL,NULL,1432554645,1432554645),('/fees/dependent/get-fees-category',2,'/fees/dependent/get-fees-category',NULL,NULL,1432554645,1432554645),('/fees/fees-category-details/*',2,'/fees/fees-category-details/*',NULL,NULL,1432554646,1432554646),('/fees/fees-category-details/create',2,'/fees/fees-category-details/create',NULL,NULL,1432554645,1432554645),('/fees/fees-category-details/delete',2,'/fees/fees-category-details/delete',NULL,NULL,1432554646,1432554646),('/fees/fees-category-details/index',2,'/fees/fees-category-details/index',NULL,NULL,1432554645,1432554645),('/fees/fees-category-details/update',2,'/fees/fees-category-details/update',NULL,NULL,1432554646,1432554646),('/fees/fees-category-details/view',2,'/fees/fees-category-details/view',NULL,NULL,1432554645,1432554645),('/fees/fees-collect-category/*',2,'/fees/fees-collect-category/*',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/create',2,'/fees/fees-collect-category/create',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/delete',2,'/fees/fees-collect-category/delete',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/index',2,'/fees/fees-collect-category/index',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/toggle',2,'/fees/fees-collect-category/toggle',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/update',2,'/fees/fees-collect-category/update',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/view',2,'/fees/fees-collect-category/view',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/*',2,'/fees/fees-payment-transaction/*',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/collect',2,'/fees/fees-payment-transaction/collect',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/delete',2,'/fees/fees-payment-transaction/delete',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/export-fcc-wise-fees-pdf',2,'/fees/fees-payment-transaction/export-fcc-wise-fees-pdf',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/pay-fees',2,'/fees/fees-payment-transaction/pay-fees',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/print-common-receipt',2,'/fees/fees-payment-transaction/print-common-receipt',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/stu-fees-data',2,'/fees/fees-payment-transaction/stu-fees-data',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/update',2,'/fees/fees-payment-transaction/update',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/view',2,'/fees/fees-payment-transaction/view',NULL,NULL,1432554646,1432554646),('/gii/*',2,'/gii/*',NULL,NULL,1432554652,1432554652),('/gii/default/*',2,'/gii/default/*',NULL,NULL,1432554652,1432554652),('/gii/default/action',2,'/gii/default/action',NULL,NULL,1432554652,1432554652),('/gii/default/diff',2,'/gii/default/diff',NULL,NULL,1432554652,1432554652),('/gii/default/index',2,'/gii/default/index',NULL,NULL,1432554651,1432554651),('/gii/default/preview',2,'/gii/default/preview',NULL,NULL,1432554651,1432554651),('/gii/default/view',2,'/gii/default/view',NULL,NULL,1432554651,1432554651),('/languages/*',2,'/languages/*',NULL,NULL,1432554654,1432554654),('/languages/create',2,'/languages/create',NULL,NULL,1432554654,1432554654),('/languages/delete',2,'/languages/delete',NULL,NULL,1432554654,1432554654),('/languages/index',2,'/languages/index',NULL,NULL,1432554653,1432554653),('/languages/update',2,'/languages/update',NULL,NULL,1432554654,1432554654),('/languages/view',2,'/languages/view',NULL,NULL,1432554654,1432554654),('/login-details/*',2,'/login-details/*',NULL,NULL,1432554654,1432554654),('/login-details/create',2,'/login-details/create',NULL,NULL,1432554654,1432554654),('/login-details/delete',2,'/login-details/delete',NULL,NULL,1432554654,1432554654),('/login-details/index',2,'/login-details/index',NULL,NULL,1432554654,1432554654),('/login-details/update',2,'/login-details/update',NULL,NULL,1432554654,1432554654),('/login-details/view',2,'/login-details/view',NULL,NULL,1432554654,1432554654),('/national-holidays/*',2,'/national-holidays/*',NULL,NULL,1432554654,1432554654),('/national-holidays/create',2,'/national-holidays/create',NULL,NULL,1432554654,1432554654),('/national-holidays/delete',2,'/national-holidays/delete',NULL,NULL,1432554654,1432554654),('/national-holidays/index',2,'/national-holidays/index',NULL,NULL,1432554654,1432554654),('/national-holidays/update',2,'/national-holidays/update',NULL,NULL,1432554654,1432554654),('/national-holidays/view',2,'/national-holidays/view',NULL,NULL,1432554654,1432554654),('/nationality/*',2,'/nationality/*',NULL,NULL,1432554655,1432554655),('/nationality/create',2,'/nationality/create',NULL,NULL,1432554654,1432554654),('/nationality/delete',2,'/nationality/delete',NULL,NULL,1432554655,1432554655),('/nationality/index',2,'/nationality/index',NULL,NULL,1432554654,1432554654),('/nationality/update',2,'/nationality/update',NULL,NULL,1432554655,1432554655),('/nationality/view',2,'/nationality/view',NULL,NULL,1432554654,1432554654),('/organization/*',2,'/organization/*',NULL,NULL,1432554655,1432554655),('/organization/create',2,'/organization/create',NULL,NULL,1432554655,1432554655),('/organization/delete',2,'/organization/delete',NULL,NULL,1432554655,1432554655),('/organization/index',2,'/organization/index',NULL,NULL,1432554655,1432554655),('/organization/update',2,'/organization/update',NULL,NULL,1432554655,1432554655),('/organization/view',2,'/organization/view',NULL,NULL,1432554655,1432554655),('/report/*',2,'/report/*',NULL,NULL,1432554647,1432554647),('/report/default/*',2,'/report/default/*',NULL,NULL,1432554647,1432554647),('/report/default/index',2,'/report/default/index',NULL,NULL,1432554646,1432554646),('/report/dependent/*',2,'/report/dependent/*',NULL,NULL,1432554647,1432554647),('/report/dependent/index',2,'/report/dependent/index',NULL,NULL,1432554647,1432554647),('/report/dependent/studbatch',2,'/report/dependent/studbatch',NULL,NULL,1432554647,1432554647),('/report/dependent/studsection',2,'/report/dependent/studsection',NULL,NULL,1432554647,1432554647),('/report/empinforeport',2,'/report/empinforeport',NULL,NULL,1432554655,1432554655),('/report/employee/*',2,'/report/employee/*',NULL,NULL,1432554647,1432554647),('/report/employee/empinforeport',2,'/report/employee/empinforeport',NULL,NULL,1432554647,1432554647),('/report/employee/index',2,'/report/employee/index',NULL,NULL,1432554647,1432554647),('/report/employee/selected-employee-list',2,'/report/employee/selected-employee-list',NULL,NULL,1432554647,1432554647),('/report/index',2,'/report/index',NULL,NULL,1432554655,1432554655),('/report/selected-employee-list',2,'/report/selected-employee-list',NULL,NULL,1432554655,1432554655),('/report/selected-student-list',2,'/report/selected-student-list',NULL,NULL,1432554655,1432554655),('/report/student/*',2,'/report/student/*',NULL,NULL,1432554647,1432554647),('/report/student/index',2,'/report/student/index',NULL,NULL,1432554647,1432554647),('/report/student/selected-student-list',2,'/report/student/selected-student-list',NULL,NULL,1432554647,1432554647),('/report/student/stuinforeport',2,'/report/student/stuinforeport',NULL,NULL,1432554647,1432554647),('/report/stuinforeport',2,'/report/stuinforeport',NULL,NULL,1432554655,1432554655),('/rights/*',2,'/rights/*',NULL,NULL,1432554651,1432554651),('/rights/assignment/*',2,'/rights/assignment/*',NULL,NULL,1432554649,1432554649),('/rights/assignment/assign',2,'/rights/assignment/assign',NULL,NULL,1432554649,1432554649),('/rights/assignment/index',2,'/rights/assignment/index',NULL,NULL,1432554649,1432554649),('/rights/assignment/role-search',2,'/rights/assignment/role-search',NULL,NULL,1432554649,1432554649),('/rights/assignment/view',2,'/rights/assignment/view',NULL,NULL,1432554649,1432554649),('/rights/default/*',2,'/rights/default/*',NULL,NULL,1432554649,1432554649),('/rights/default/index',2,'/rights/default/index',NULL,NULL,1432554649,1432554649),('/rights/menu/*',2,'/rights/menu/*',NULL,NULL,1432554650,1432554650),('/rights/menu/create',2,'/rights/menu/create',NULL,NULL,1432554650,1432554650),('/rights/menu/delete',2,'/rights/menu/delete',NULL,NULL,1432554650,1432554650),('/rights/menu/index',2,'/rights/menu/index',NULL,NULL,1432554650,1432554650),('/rights/menu/update',2,'/rights/menu/update',NULL,NULL,1432554650,1432554650),('/rights/menu/view',2,'/rights/menu/view',NULL,NULL,1432554650,1432554650),('/rights/permission/*',2,'/rights/permission/*',NULL,NULL,1432554650,1432554650),('/rights/permission/assign',2,'/rights/permission/assign',NULL,NULL,1432554650,1432554650),('/rights/permission/create',2,'/rights/permission/create',NULL,NULL,1432554650,1432554650),('/rights/permission/delete',2,'/rights/permission/delete',NULL,NULL,1432554650,1432554650),('/rights/permission/index',2,'/rights/permission/index',NULL,NULL,1432554650,1432554650),('/rights/permission/role-search',2,'/rights/permission/role-search',NULL,NULL,1432554650,1432554650),('/rights/permission/update',2,'/rights/permission/update',NULL,NULL,1432554650,1432554650),('/rights/permission/view',2,'/rights/permission/view',NULL,NULL,1432554650,1432554650),('/rights/role/*',2,'/rights/role/*',NULL,NULL,1432554651,1432554651),('/rights/role/assign',2,'/rights/role/assign',NULL,NULL,1432554650,1432554650),('/rights/role/create',2,'/rights/role/create',NULL,NULL,1432554650,1432554650),('/rights/role/delete',2,'/rights/role/delete',NULL,NULL,1432554650,1432554650),('/rights/role/index',2,'/rights/role/index',NULL,NULL,1432554650,1432554650),('/rights/role/role-search',2,'/rights/role/role-search',NULL,NULL,1432554651,1432554651),('/rights/role/update',2,'/rights/role/update',NULL,NULL,1432554650,1432554650),('/rights/role/view',2,'/rights/role/view',NULL,NULL,1432554650,1432554650),('/rights/route/*',2,'/rights/route/*',NULL,NULL,1432554651,1432554651),('/rights/route/assign',2,'/rights/route/assign',NULL,NULL,1432554651,1432554651),('/rights/route/create',2,'/rights/route/create',NULL,NULL,1432554651,1432554651),('/rights/route/index',2,'/rights/route/index',NULL,NULL,1432554651,1432554651),('/rights/route/route-search',2,'/rights/route/route-search',NULL,NULL,1432554651,1432554651),('/rights/rule/*',2,'/rights/rule/*',NULL,NULL,1432554651,1432554651),('/rights/rule/create',2,'/rights/rule/create',NULL,NULL,1432554651,1432554651),('/rights/rule/delete',2,'/rights/rule/delete',NULL,NULL,1432554651,1432554651),('/rights/rule/index',2,'/rights/rule/index',NULL,NULL,1432554651,1432554651),('/rights/rule/update',2,'/rights/rule/update',NULL,NULL,1432554651,1432554651),('/rights/rule/view',2,'/rights/rule/view',NULL,NULL,1432554651,1432554651),('/site/*',2,'/site/*',NULL,NULL,1432554656,1432554656),('/site/about',2,'/site/about',NULL,NULL,1432554656,1432554656),('/site/captcha',2,'/site/captcha',NULL,NULL,1432554655,1432554655),('/site/contact',2,'/site/contact',NULL,NULL,1432554655,1432554655),('/site/error',2,'/site/error',NULL,NULL,1432554655,1432554655),('/site/forgotpassword',2,'/site/forgotpassword',NULL,NULL,1432554655,1432554655),('/site/index',2,'/site/index',NULL,NULL,1432554655,1432554655),('/site/loadimage',2,'/site/loadimage',NULL,NULL,1432554655,1432554655),('/site/login',2,'/site/login',NULL,NULL,1432554655,1432554655),('/site/logout',2,'/site/logout',NULL,NULL,1432554655,1432554655),('/state/*',2,'/state/*',NULL,NULL,1432554656,1432554656),('/state/create',2,'/state/create',NULL,NULL,1432554656,1432554656),('/state/delete',2,'/state/delete',NULL,NULL,1432554656,1432554656),('/state/index',2,'/state/index',NULL,NULL,1432554656,1432554656),('/state/update',2,'/state/update',NULL,NULL,1432554656,1432554656),('/state/view',2,'/state/view',NULL,NULL,1432554656,1432554656),('/student/*',2,'/student/*',NULL,NULL,1432554642,1432554642),('/student/default/*',2,'/student/default/*',NULL,NULL,1432554639,1432554639),('/student/default/index',2,'/student/default/index',NULL,NULL,1432554639,1432554639),('/student/dependent/*',2,'/student/dependent/*',NULL,NULL,1432554639,1432554639),('/student/dependent/studbatch',2,'/student/dependent/studbatch',NULL,NULL,1432554639,1432554639),('/student/dependent/studsection',2,'/student/dependent/studsection',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-c-city',2,'/student/dependent/ustud-c-city',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-c-state',2,'/student/dependent/ustud-c-state',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-p-city',2,'/student/dependent/ustud-p-city',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-p-state',2,'/student/dependent/ustud-p-state',NULL,NULL,1432554639,1432554639),('/student/export-data/*',2,'/student/export-data/*',NULL,NULL,1432554639,1432554639),('/student/export-data/student-profile-pdf',2,'/student/export-data/student-profile-pdf',NULL,NULL,1432554639,1432554639),('/student/stu-address/*',2,'/student/stu-address/*',NULL,NULL,1432554640,1432554640),('/student/stu-address/create',2,'/student/stu-address/create',NULL,NULL,1432554639,1432554639),('/student/stu-address/delete',2,'/student/stu-address/delete',NULL,NULL,1432554640,1432554640),('/student/stu-address/index',2,'/student/stu-address/index',NULL,NULL,1432554639,1432554639),('/student/stu-address/update',2,'/student/stu-address/update',NULL,NULL,1432554640,1432554640),('/student/stu-address/view',2,'/student/stu-address/view',NULL,NULL,1432554639,1432554639),('/student/stu-category/*',2,'/student/stu-category/*',NULL,NULL,1432554640,1432554640),('/student/stu-category/create',2,'/student/stu-category/create',NULL,NULL,1432554640,1432554640),('/student/stu-category/delete',2,'/student/stu-category/delete',NULL,NULL,1432554640,1432554640),('/student/stu-category/index',2,'/student/stu-category/index',NULL,NULL,1432554640,1432554640),('/student/stu-category/update',2,'/student/stu-category/update',NULL,NULL,1432554640,1432554640),('/student/stu-category/view',2,'/student/stu-category/view',NULL,NULL,1432554640,1432554640),('/student/stu-docs/*',2,'/student/stu-docs/*',NULL,NULL,1432554640,1432554640),('/student/stu-docs/create',2,'/student/stu-docs/create',NULL,NULL,1432554640,1432554640),('/student/stu-docs/delete',2,'/student/stu-docs/delete',NULL,NULL,1432554640,1432554640),('/student/stu-docs/index',2,'/student/stu-docs/index',NULL,NULL,1432554640,1432554640),('/student/stu-docs/update',2,'/student/stu-docs/update',NULL,NULL,1432554640,1432554640),('/student/stu-docs/view',2,'/student/stu-docs/view',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/*',2,'/student/stu-guardians/*',NULL,NULL,1432554641,1432554641),('/student/stu-guardians/create',2,'/student/stu-guardians/create',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/delete',2,'/student/stu-guardians/delete',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/index',2,'/student/stu-guardians/index',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/update',2,'/student/stu-guardians/update',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/view',2,'/student/stu-guardians/view',NULL,NULL,1432554640,1432554640),('/student/stu-info/*',2,'/student/stu-info/*',NULL,NULL,1432554641,1432554641),('/student/stu-info/create',2,'/student/stu-info/create',NULL,NULL,1432554641,1432554641),('/student/stu-info/delete',2,'/student/stu-info/delete',NULL,NULL,1432554641,1432554641),('/student/stu-info/index',2,'/student/stu-info/index',NULL,NULL,1432554641,1432554641),('/student/stu-info/update',2,'/student/stu-info/update',NULL,NULL,1432554641,1432554641),('/student/stu-info/view',2,'/student/stu-info/view',NULL,NULL,1432554641,1432554641),('/student/stu-master/*',2,'/student/stu-master/*',NULL,NULL,1432554641,1432554641),('/student/stu-master/adddocs',2,'/student/stu-master/adddocs',NULL,NULL,1432554641,1432554641),('/student/stu-master/addguardian',2,'/student/stu-master/addguardian',NULL,NULL,1432554641,1432554641),('/student/stu-master/change-status',2,'/student/stu-master/change-status',NULL,NULL,1432554641,1432554641),('/student/stu-master/create',2,'/student/stu-master/create',NULL,NULL,1432554641,1432554641),('/student/stu-master/delete',2,'/student/stu-master/delete',NULL,NULL,1432554641,1432554641),('/student/stu-master/delete-doc',2,'/student/stu-master/delete-doc',NULL,NULL,1432554641,1432554641),('/student/stu-master/docs-download',2,'/student/stu-master/docs-download',NULL,NULL,1432554641,1432554641),('/student/stu-master/emg-change-status',2,'/student/stu-master/emg-change-status',NULL,NULL,1432554641,1432554641),('/student/stu-master/index',2,'/student/stu-master/index',NULL,NULL,1432554641,1432554641),('/student/stu-master/stu-photo',2,'/student/stu-master/stu-photo',NULL,NULL,1432554641,1432554641),('/student/stu-master/update',2,'/student/stu-master/update',NULL,NULL,1432554641,1432554641),('/student/stu-master/view',2,'/student/stu-master/view',NULL,NULL,1432554641,1432554641),('/student/stu-status/*',2,'/student/stu-status/*',NULL,NULL,1432554642,1432554642),('/student/stu-status/create',2,'/student/stu-status/create',NULL,NULL,1432554642,1432554642),('/student/stu-status/delete',2,'/student/stu-status/delete',NULL,NULL,1432554642,1432554642),('/student/stu-status/index',2,'/student/stu-status/index',NULL,NULL,1432554641,1432554641),('/student/stu-status/update',2,'/student/stu-status/update',NULL,NULL,1432554642,1432554642),('/student/stu-status/view',2,'/student/stu-status/view',NULL,NULL,1432554642,1432554642),('/subject-master/*',2,'/subject-master/*',NULL,NULL,1432554656,1432554656),('/subject-master/create',2,'/subject-master/create',NULL,NULL,1432554656,1432554656),('/subject-master/delete',2,'/subject-master/delete',NULL,NULL,1432554656,1432554656),('/subject-master/index',2,'/subject-master/index',NULL,NULL,1432554656,1432554656),('/subject-master/update',2,'/subject-master/update',NULL,NULL,1432554656,1432554656),('/subject-master/view',2,'/subject-master/view',NULL,NULL,1432554656,1432554656),('/user/*',2,'/user/*',NULL,NULL,1432554657,1432554657),('/user/change',2,'/user/change',NULL,NULL,1432554656,1432554656),('/user/create',2,'/user/create',NULL,NULL,1432554656,1432554656),('/user/delete',2,'/user/delete',NULL,NULL,1432554656,1432554656),('/user/index',2,'/user/index',NULL,NULL,1432554656,1432554656),('/user/resetemploginid',2,'/user/resetemploginid',NULL,NULL,1432554657,1432554657),('/user/resetemppassword',2,'/user/resetemppassword',NULL,NULL,1432554657,1432554657),('/user/resetstudloginid',2,'/user/resetstudloginid',NULL,NULL,1432554657,1432554657),('/user/resetstudpassword',2,'/user/resetstudpassword',NULL,NULL,1432554657,1432554657),('/user/update',2,'/user/update',NULL,NULL,1432554656,1432554656),('/user/update-emp-password',2,'/user/update-emp-password',NULL,NULL,1432554657,1432554657),('/user/update-stud-password',2,'/user/update-stud-password',NULL,NULL,1432554657,1432554657),('/user/updateemploginid',2,'/user/updateemploginid',NULL,NULL,1432554657,1432554657),('/user/updatestudloginid',2,'/user/updatestudloginid',NULL,NULL,1432554657,1432554657),('/user/view',2,'/user/view',NULL,NULL,1432554656,1432554656),('Configuration',2,'Access Configuration views',NULL,NULL,1429870570,1430298672),('Employee',1,'Employee',NULL,NULL,1422967395,1430299553),('Rights',2,'Access Rights Module Link',NULL,NULL,1430227237,1431776281),('Student',1,'Student',NULL,NULL,1422958231,1422958231),('SuperAdmin',1,'SuperAdmin',NULL,NULL,1422957183,1422957183),('updateAllEmpInfo',2,'Update Employee all details',NULL,NULL,1430979242,1430979242),('updateAllStuInfo',2,'Update Student all details',NULL,NULL,1430913145,1430913145);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('SuperAdmin','/*'),('SuperAdmin','/auth-assignment/*'),('SuperAdmin','/auth-assignment/create'),('SuperAdmin','/auth-assignment/delete'),('SuperAdmin','/auth-assignment/index'),('SuperAdmin','/auth-assignment/update'),('SuperAdmin','/auth-assignment/view'),('SuperAdmin','/city/*'),('SuperAdmin','/city/create'),('SuperAdmin','/city/delete'),('SuperAdmin','/city/index'),('SuperAdmin','/city/update'),('SuperAdmin','/city/view'),('SuperAdmin','/country/*'),('SuperAdmin','/country/create'),('SuperAdmin','/country/delete'),('SuperAdmin','/country/index'),('SuperAdmin','/country/update'),('SuperAdmin','/country/view'),('SuperAdmin','/course/*'),('SuperAdmin','/course/batches/*'),('SuperAdmin','/course/batches/create'),('SuperAdmin','/course/batches/delete'),('SuperAdmin','/course/batches/index'),('SuperAdmin','/course/batches/toggle'),('SuperAdmin','/course/batches/update'),('SuperAdmin','/course/batches/view'),('SuperAdmin','/course/courses/*'),('SuperAdmin','/course/courses/create'),('SuperAdmin','/course/courses/delete'),('Employee','/course/courses/index'),('Student','/course/courses/index'),('SuperAdmin','/course/courses/index'),('SuperAdmin','/course/courses/toggle'),('SuperAdmin','/course/courses/update'),('SuperAdmin','/course/courses/view'),('SuperAdmin','/course/default/*'),('Employee','/course/default/index'),('Student','/course/default/index'),('SuperAdmin','/course/default/index'),('SuperAdmin','/course/section/*'),('SuperAdmin','/course/section/create'),('SuperAdmin','/course/section/delete'),('SuperAdmin','/course/section/index'),('SuperAdmin','/course/section/toggle'),('SuperAdmin','/course/section/update'),('SuperAdmin','/course/section/view'),('SuperAdmin','/dashboard/*'),('SuperAdmin','/dashboard/default/*'),('SuperAdmin','/dashboard/default/index'),('SuperAdmin','/dashboard/events/*'),('SuperAdmin','/dashboard/events/add-event'),('SuperAdmin','/dashboard/events/event-delete'),('SuperAdmin','/dashboard/events/index'),('SuperAdmin','/dashboard/events/update-event'),('SuperAdmin','/dashboard/events/view'),('Employee','/dashboard/events/view-events'),('Student','/dashboard/events/view-events'),('SuperAdmin','/dashboard/events/view-events'),('SuperAdmin','/dashboard/msg-of-day/*'),('SuperAdmin','/dashboard/msg-of-day/create'),('SuperAdmin','/dashboard/msg-of-day/delete'),('SuperAdmin','/dashboard/msg-of-day/index'),('SuperAdmin','/dashboard/msg-of-day/toggle'),('SuperAdmin','/dashboard/msg-of-day/update'),('SuperAdmin','/dashboard/msg-of-day/view'),('SuperAdmin','/dashboard/notice/*'),('SuperAdmin','/dashboard/notice/create'),('SuperAdmin','/dashboard/notice/delete'),('SuperAdmin','/dashboard/notice/index'),('SuperAdmin','/dashboard/notice/notice-file'),('SuperAdmin','/dashboard/notice/toggle'),('SuperAdmin','/dashboard/notice/update'),('SuperAdmin','/dashboard/notice/view'),('Employee','/dashboard/notice/view-popup'),('Student','/dashboard/notice/view-popup'),('SuperAdmin','/dashboard/notice/view-popup'),('SuperAdmin','/debug/*'),('SuperAdmin','/debug/default/*'),('SuperAdmin','/debug/default/download-mail'),('SuperAdmin','/debug/default/index'),('SuperAdmin','/debug/default/toolbar'),('SuperAdmin','/debug/default/view'),('SuperAdmin','/default/*'),('SuperAdmin','/default/index'),('Employee','/dependent/*'),('SuperAdmin','/dependent/*'),('SuperAdmin','/dependent/getcity'),('SuperAdmin','/dependent/getorgcity'),('SuperAdmin','/dependent/getorgstate'),('SuperAdmin','/dependent/getstate'),('SuperAdmin','/dependent/index'),('SuperAdmin','/dependent/studbatch'),('SuperAdmin','/dependent/studsection'),('SuperAdmin','/document-category/*'),('SuperAdmin','/document-category/create'),('SuperAdmin','/document-category/delete'),('SuperAdmin','/document-category/index'),('SuperAdmin','/document-category/update'),('SuperAdmin','/document-category/view'),('SuperAdmin','/employee/*'),('SuperAdmin','/employee/default/*'),('Employee','/employee/default/index'),('Student','/employee/default/index'),('SuperAdmin','/employee/default/index'),('Employee','/employee/dependent/*'),('SuperAdmin','/employee/dependent/*'),('SuperAdmin','/employee/dependent/emp-c-city'),('SuperAdmin','/employee/dependent/emp-c-state'),('SuperAdmin','/employee/dependent/emp-p-city'),('SuperAdmin','/employee/dependent/emp-p-state'),('SuperAdmin','/employee/emp-address/*'),('SuperAdmin','/employee/emp-address/create'),('SuperAdmin','/employee/emp-address/delete'),('SuperAdmin','/employee/emp-address/index'),('SuperAdmin','/employee/emp-address/update'),('SuperAdmin','/employee/emp-address/view'),('SuperAdmin','/employee/emp-category/*'),('SuperAdmin','/employee/emp-category/create'),('SuperAdmin','/employee/emp-category/delete'),('SuperAdmin','/employee/emp-category/index'),('SuperAdmin','/employee/emp-category/update'),('SuperAdmin','/employee/emp-category/view'),('SuperAdmin','/employee/emp-department/*'),('SuperAdmin','/employee/emp-department/create'),('SuperAdmin','/employee/emp-department/delete'),('SuperAdmin','/employee/emp-department/index'),('SuperAdmin','/employee/emp-department/update'),('SuperAdmin','/employee/emp-department/view'),('SuperAdmin','/employee/emp-designation/*'),('SuperAdmin','/employee/emp-designation/create'),('SuperAdmin','/employee/emp-designation/delete'),('SuperAdmin','/employee/emp-designation/index'),('SuperAdmin','/employee/emp-designation/update'),('SuperAdmin','/employee/emp-designation/view'),('SuperAdmin','/employee/emp-docs/*'),('SuperAdmin','/employee/emp-docs/create'),('SuperAdmin','/employee/emp-docs/delete'),('SuperAdmin','/employee/emp-docs/index'),('SuperAdmin','/employee/emp-docs/update'),('SuperAdmin','/employee/emp-docs/view'),('SuperAdmin','/employee/emp-info/*'),('SuperAdmin','/employee/emp-info/create'),('SuperAdmin','/employee/emp-info/delete'),('SuperAdmin','/employee/emp-info/index'),('SuperAdmin','/employee/emp-info/update'),('SuperAdmin','/employee/emp-info/view'),('SuperAdmin','/employee/emp-master/*'),('SuperAdmin','/employee/emp-master/adddocs'),('SuperAdmin','/employee/emp-master/change-status'),('SuperAdmin','/employee/emp-master/create'),('SuperAdmin','/employee/emp-master/delete'),('SuperAdmin','/employee/emp-master/delete-doc'),('SuperAdmin','/employee/emp-master/docs-download'),('Employee','/employee/emp-master/emp-photo'),('SuperAdmin','/employee/emp-master/emp-photo'),('Employee','/employee/emp-master/index'),('Student','/employee/emp-master/index'),('SuperAdmin','/employee/emp-master/index'),('Employee','/employee/emp-master/update'),('SuperAdmin','/employee/emp-master/update'),('Employee','/employee/emp-master/view'),('SuperAdmin','/employee/emp-master/view'),('SuperAdmin','/employee/emp-status/*'),('SuperAdmin','/employee/emp-status/create'),('SuperAdmin','/employee/emp-status/delete'),('SuperAdmin','/employee/emp-status/index'),('SuperAdmin','/employee/emp-status/update'),('SuperAdmin','/employee/emp-status/view'),('SuperAdmin','/employee/export-data/*'),('Employee','/employee/export-data/employee-profile-pdf'),('SuperAdmin','/employee/export-data/employee-profile-pdf'),('SuperAdmin','/export-data/*'),('SuperAdmin','/export-data/export-excel'),('SuperAdmin','/export-data/export-to-pdf'),('SuperAdmin','/fees/*'),('SuperAdmin','/fees/bank-master/*'),('SuperAdmin','/fees/bank-master/create'),('SuperAdmin','/fees/bank-master/delete'),('SuperAdmin','/fees/bank-master/index'),('SuperAdmin','/fees/bank-master/update'),('SuperAdmin','/fees/bank-master/view'),('SuperAdmin','/fees/default/*'),('Student','/fees/default/index'),('SuperAdmin','/fees/default/index'),('SuperAdmin','/fees/dependent/*'),('SuperAdmin','/fees/dependent/get-fees-category'),('SuperAdmin','/fees/fees-category-details/*'),('SuperAdmin','/fees/fees-category-details/create'),('SuperAdmin','/fees/fees-category-details/delete'),('SuperAdmin','/fees/fees-category-details/index'),('SuperAdmin','/fees/fees-category-details/update'),('SuperAdmin','/fees/fees-category-details/view'),('SuperAdmin','/fees/fees-collect-category/*'),('SuperAdmin','/fees/fees-collect-category/create'),('SuperAdmin','/fees/fees-collect-category/delete'),('SuperAdmin','/fees/fees-collect-category/index'),('SuperAdmin','/fees/fees-collect-category/toggle'),('SuperAdmin','/fees/fees-collect-category/update'),('SuperAdmin','/fees/fees-collect-category/view'),('SuperAdmin','/fees/fees-payment-transaction/*'),('SuperAdmin','/fees/fees-payment-transaction/collect'),('SuperAdmin','/fees/fees-payment-transaction/delete'),('SuperAdmin','/fees/fees-payment-transaction/export-fcc-wise-fees-pdf'),('SuperAdmin','/fees/fees-payment-transaction/pay-fees'),('SuperAdmin','/fees/fees-payment-transaction/print-common-receipt'),('Student','/fees/fees-payment-transaction/stu-fees-data'),('SuperAdmin','/fees/fees-payment-transaction/stu-fees-data'),('SuperAdmin','/fees/fees-payment-transaction/update'),('SuperAdmin','/fees/fees-payment-transaction/view'),('SuperAdmin','/gii/*'),('SuperAdmin','/gii/default/*'),('SuperAdmin','/gii/default/action'),('SuperAdmin','/gii/default/diff'),('SuperAdmin','/gii/default/index'),('SuperAdmin','/gii/default/preview'),('SuperAdmin','/gii/default/view'),('SuperAdmin','/languages/*'),('SuperAdmin','/languages/create'),('SuperAdmin','/languages/delete'),('SuperAdmin','/languages/index'),('SuperAdmin','/languages/update'),('SuperAdmin','/languages/view'),('SuperAdmin','/login-details/*'),('SuperAdmin','/login-details/create'),('SuperAdmin','/login-details/delete'),('SuperAdmin','/login-details/index'),('SuperAdmin','/login-details/update'),('SuperAdmin','/login-details/view'),('SuperAdmin','/national-holidays/*'),('SuperAdmin','/national-holidays/create'),('SuperAdmin','/national-holidays/delete'),('SuperAdmin','/national-holidays/index'),('SuperAdmin','/national-holidays/update'),('SuperAdmin','/national-holidays/view'),('SuperAdmin','/nationality/*'),('SuperAdmin','/nationality/create'),('SuperAdmin','/nationality/delete'),('SuperAdmin','/nationality/index'),('SuperAdmin','/nationality/update'),('SuperAdmin','/nationality/view'),('SuperAdmin','/organization/*'),('SuperAdmin','/organization/create'),('SuperAdmin','/organization/delete'),('SuperAdmin','/organization/index'),('SuperAdmin','/organization/update'),('SuperAdmin','/organization/view'),('SuperAdmin','/report/*'),('SuperAdmin','/report/default/*'),('Employee','/report/default/index'),('SuperAdmin','/report/default/index'),('Employee','/report/dependent/*'),('SuperAdmin','/report/dependent/*'),('SuperAdmin','/report/dependent/index'),('SuperAdmin','/report/dependent/studbatch'),('SuperAdmin','/report/dependent/studsection'),('Employee','/report/empinforeport'),('SuperAdmin','/report/empinforeport'),('SuperAdmin','/report/employee/*'),('Employee','/report/employee/empinforeport'),('SuperAdmin','/report/employee/empinforeport'),('SuperAdmin','/report/employee/index'),('Employee','/report/employee/selected-employee-list'),('SuperAdmin','/report/employee/selected-employee-list'),('SuperAdmin','/report/index'),('Employee','/report/selected-employee-list'),('SuperAdmin','/report/selected-employee-list'),('Employee','/report/selected-student-list'),('SuperAdmin','/report/selected-student-list'),('SuperAdmin','/report/student/*'),('SuperAdmin','/report/student/index'),('Employee','/report/student/selected-student-list'),('SuperAdmin','/report/student/selected-student-list'),('Employee','/report/student/stuinforeport'),('SuperAdmin','/report/student/stuinforeport'),('Employee','/report/stuinforeport'),('SuperAdmin','/report/stuinforeport'),('SuperAdmin','/rights/*'),('SuperAdmin','/rights/assignment/*'),('SuperAdmin','/rights/assignment/assign'),('SuperAdmin','/rights/assignment/index'),('SuperAdmin','/rights/assignment/role-search'),('SuperAdmin','/rights/assignment/view'),('SuperAdmin','/rights/default/*'),('SuperAdmin','/rights/default/index'),('SuperAdmin','/rights/menu/*'),('SuperAdmin','/rights/menu/create'),('SuperAdmin','/rights/menu/delete'),('SuperAdmin','/rights/menu/index'),('SuperAdmin','/rights/menu/update'),('SuperAdmin','/rights/menu/view'),('SuperAdmin','/rights/permission/*'),('SuperAdmin','/rights/permission/assign'),('SuperAdmin','/rights/permission/create'),('SuperAdmin','/rights/permission/delete'),('SuperAdmin','/rights/permission/index'),('SuperAdmin','/rights/permission/role-search'),('SuperAdmin','/rights/permission/update'),('SuperAdmin','/rights/permission/view'),('SuperAdmin','/rights/role/*'),('SuperAdmin','/rights/role/assign'),('SuperAdmin','/rights/role/create'),('SuperAdmin','/rights/role/delete'),('SuperAdmin','/rights/role/index'),('SuperAdmin','/rights/role/role-search'),('SuperAdmin','/rights/role/update'),('SuperAdmin','/rights/role/view'),('SuperAdmin','/rights/route/*'),('SuperAdmin','/rights/route/assign'),('SuperAdmin','/rights/route/create'),('SuperAdmin','/rights/route/index'),('SuperAdmin','/rights/route/route-search'),('SuperAdmin','/rights/rule/*'),('SuperAdmin','/rights/rule/create'),('SuperAdmin','/rights/rule/delete'),('SuperAdmin','/rights/rule/index'),('SuperAdmin','/rights/rule/update'),('SuperAdmin','/rights/rule/view'),('SuperAdmin','/site/*'),('SuperAdmin','/site/about'),('SuperAdmin','/site/captcha'),('SuperAdmin','/site/contact'),('SuperAdmin','/site/error'),('SuperAdmin','/site/forgotpassword'),('SuperAdmin','/site/index'),('SuperAdmin','/site/loadimage'),('SuperAdmin','/site/login'),('SuperAdmin','/site/logout'),('SuperAdmin','/state/*'),('SuperAdmin','/state/create'),('SuperAdmin','/state/delete'),('SuperAdmin','/state/index'),('SuperAdmin','/state/update'),('SuperAdmin','/state/view'),('SuperAdmin','/student/*'),('SuperAdmin','/student/default/*'),('Employee','/student/default/index'),('SuperAdmin','/student/default/index'),('SuperAdmin','/student/dependent/*'),('SuperAdmin','/student/dependent/studbatch'),('SuperAdmin','/student/dependent/studsection'),('SuperAdmin','/student/dependent/ustud-c-city'),('SuperAdmin','/student/dependent/ustud-c-state'),('SuperAdmin','/student/dependent/ustud-p-city'),('SuperAdmin','/student/dependent/ustud-p-state'),('SuperAdmin','/student/export-data/*'),('SuperAdmin','/student/export-data/student-profile-pdf'),('SuperAdmin','/student/stu-address/*'),('SuperAdmin','/student/stu-address/create'),('SuperAdmin','/student/stu-address/delete'),('SuperAdmin','/student/stu-address/index'),('SuperAdmin','/student/stu-address/update'),('SuperAdmin','/student/stu-address/view'),('SuperAdmin','/student/stu-category/*'),('SuperAdmin','/student/stu-category/create'),('SuperAdmin','/student/stu-category/delete'),('SuperAdmin','/student/stu-category/index'),('SuperAdmin','/student/stu-category/update'),('SuperAdmin','/student/stu-category/view'),('SuperAdmin','/student/stu-docs/*'),('SuperAdmin','/student/stu-docs/create'),('SuperAdmin','/student/stu-docs/delete'),('SuperAdmin','/student/stu-docs/index'),('SuperAdmin','/student/stu-docs/update'),('SuperAdmin','/student/stu-docs/view'),('SuperAdmin','/student/stu-guardians/*'),('SuperAdmin','/student/stu-guardians/create'),('SuperAdmin','/student/stu-guardians/delete'),('SuperAdmin','/student/stu-guardians/index'),('SuperAdmin','/student/stu-guardians/update'),('SuperAdmin','/student/stu-guardians/view'),('SuperAdmin','/student/stu-info/*'),('SuperAdmin','/student/stu-info/create'),('SuperAdmin','/student/stu-info/delete'),('SuperAdmin','/student/stu-info/index'),('SuperAdmin','/student/stu-info/update'),('SuperAdmin','/student/stu-info/view'),('SuperAdmin','/student/stu-master/*'),('SuperAdmin','/student/stu-master/adddocs'),('SuperAdmin','/student/stu-master/addguardian'),('SuperAdmin','/student/stu-master/change-status'),('SuperAdmin','/student/stu-master/create'),('SuperAdmin','/student/stu-master/delete'),('SuperAdmin','/student/stu-master/delete-doc'),('SuperAdmin','/student/stu-master/docs-download'),('SuperAdmin','/student/stu-master/emg-change-status'),('Employee','/student/stu-master/index'),('SuperAdmin','/student/stu-master/index'),('SuperAdmin','/student/stu-master/stu-photo'),('SuperAdmin','/student/stu-master/update'),('Employee','/student/stu-master/view'),('Student','/student/stu-master/view'),('SuperAdmin','/student/stu-master/view'),('SuperAdmin','/student/stu-status/*'),('SuperAdmin','/student/stu-status/create'),('SuperAdmin','/student/stu-status/delete'),('SuperAdmin','/student/stu-status/index'),('SuperAdmin','/student/stu-status/update'),('SuperAdmin','/student/stu-status/view'),('SuperAdmin','/subject-master/*'),('SuperAdmin','/subject-master/create'),('SuperAdmin','/subject-master/delete'),('SuperAdmin','/subject-master/index'),('SuperAdmin','/subject-master/update'),('SuperAdmin','/subject-master/view'),('SuperAdmin','/user/*'),('Employee','/user/change'),('Student','/user/change'),('SuperAdmin','/user/change'),('SuperAdmin','/user/create'),('SuperAdmin','/user/delete'),('SuperAdmin','/user/index'),('SuperAdmin','/user/resetemploginid'),('SuperAdmin','/user/resetemppassword'),('SuperAdmin','/user/resetstudloginid'),('SuperAdmin','/user/resetstudpassword'),('SuperAdmin','/user/update'),('SuperAdmin','/user/update-emp-password'),('SuperAdmin','/user/update-stud-password'),('SuperAdmin','/user/updateemploginid'),('SuperAdmin','/user/updatestudloginid'),('SuperAdmin','/user/view'),('SuperAdmin','Configuration'),('SuperAdmin','Rights'),('SuperAdmin','updateAllEmpInfo'),('SuperAdmin','updateAllStuInfo');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_master`
--

DROP TABLE IF EXISTS `bank_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_master` (
  `bank_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_master_name` varchar(255) NOT NULL,
  `bank_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bank_master_id`),
  UNIQUE KEY `bank_master_name` (`bank_master_name`),
  UNIQUE KEY `bank_alias` (`bank_alias`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `bank_master_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `bank_master_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_master`
--

LOCK TABLES `bank_master` WRITE;
/*!40000 ALTER TABLE `bank_master` DISABLE KEYS */;
INSERT INTO `bank_master` VALUES (1,'Bank of America','BOA','2015-05-27 16:45:39',1,NULL,NULL,0),(2,'Bank of India','BOI','2015-05-27 16:45:45',1,NULL,NULL,0),(3,'Bank of Chicago','BOC','2015-05-27 16:45:52',1,NULL,NULL,0),(4,'Bank of Baroda','BOB','2015-05-27 16:46:01',1,NULL,NULL,0),(5,'Vellay Bank','VB','2015-05-27 16:46:09',1,NULL,NULL,0);
/*!40000 ALTER TABLE `bank_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(120) NOT NULL,
  `batch_course_id` int(11) NOT NULL,
  `batch_alias` varchar(35) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch_id`),
  UNIQUE KEY `batch_name` (`batch_name`,`batch_course_id`),
  UNIQUE KEY `batch_alias` (`batch_alias`),
  KEY `batch_course_id` (`batch_course_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `batches_ibfk_3` FOREIGN KEY (`batch_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `batches_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `batches_ibfk_5` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'MCA-Batch-01',1,'mca-batch-01','2015-01-01','2015-07-31','2015-05-27 15:28:16',1,NULL,NULL,0),(2,'BCA-Batch-01',2,'bca-batch-01','2015-01-01','2015-07-31','2015-05-27 15:29:11',1,NULL,NULL,0),(3,'MSCIT-Batch-01',3,'mscit-batch-01','2015-01-01','2015-07-31','2015-05-27 15:30:35',1,NULL,NULL,0),(4,'BSCIT-Batch-01',4,'bscit-batch-01','2015-01-01','2015-07-31','2015-05-27 15:32:34',1,NULL,NULL,0),(5,'MBA-Batch-01',5,'mba-batch-01','2015-01-01','2015-07-31','2015-05-27 15:33:32',1,NULL,NULL,0);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(35) NOT NULL,
  `city_state_id` int(11) NOT NULL,
  `city_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_name` (`city_name`,`city_state_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `city_state_id` (`city_state_id`),
  KEY `city_country_id` (`city_country_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `city_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `city_ibfk_3` FOREIGN KEY (`city_state_id`) REFERENCES `state` (`state_id`),
  CONSTRAINT `city_ibfk_4` FOREIGN KEY (`city_country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Ahmedabad',1,1,'2015-05-27 15:21:02',1,NULL,NULL,0),(2,'Gandhinagar',1,1,'2015-05-27 15:21:10',1,NULL,NULL,0),(3,'Mumbai',2,1,'2015-05-27 15:21:19',1,NULL,NULL,0),(4,'MarryLand',3,2,'2015-05-27 15:21:38',1,NULL,NULL,0),(5,'Sydney',4,3,'2015-05-27 15:21:47',1,NULL,NULL,0),(6,'Jamnagar',1,1,'2015-05-27 16:20:54',1,NULL,NULL,0),(7,'Surat',1,1,'2015-05-27 16:21:01',1,NULL,NULL,0),(8,'Pune',2,1,'2015-05-27 16:21:13',1,NULL,NULL,0),(9,'Nagpur',2,1,'2015-05-27 16:21:27',1,NULL,NULL,0),(10,'Solapur',2,1,'2015-05-27 16:23:22',1,NULL,NULL,0),(11,'Elizabethtown',5,2,'2015-05-27 16:25:06',1,NULL,NULL,0),(12,'Burlington',5,2,'2015-05-27 16:25:17',1,NULL,NULL,0),(13,'James Lorimer',4,3,'2015-05-27 16:26:22',1,NULL,NULL,0),(14,'Carlton',4,3,'2015-05-27 16:26:38',1,NULL,NULL,0),(15,'Sydney',8,3,'2015-05-27 16:27:11',1,NULL,NULL,0),(16,'Junagadh',1,1,'2015-05-28 11:20:51',1,NULL,NULL,0),(17,'Rajkot',1,1,'2015-05-28 11:21:00',1,NULL,NULL,0),(18,'Vadodara',1,1,'2015-05-28 11:21:10',1,NULL,NULL,0),(19,'Sacramento',9,2,'2015-05-28 11:22:49',1,NULL,NULL,0);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_name` (`country_name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `country_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India','2015-05-27 15:19:22',1,NULL,NULL,0),(2,'America','2015-05-27 15:19:27',1,NULL,NULL,0),(3,'Australia','2015-05-27 15:19:45',1,NULL,NULL,0),(4,'England','2015-05-27 16:17:18',1,'2015-05-27 16:19:21',1,0),(5,'France','2015-09-19 14:28:19',1,'2015-09-19 14:28:27',1,2);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_alias` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_name` (`course_name`,`course_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'MCA','MCA151','mca','2015-05-27 15:28:16',1,NULL,NULL,0),(2,'BCA','BCA-221','bca','2015-05-27 15:29:11',1,NULL,NULL,0),(3,'M.Sc.IT','MSC231','msc.it','2015-05-27 15:30:35',1,'2015-05-27 15:39:56',1,0),(4,'B.Sc.IT','BSCIT881','bscit','2015-05-27 15:32:34',1,NULL,NULL,0),(5,'MBA','MBA891','mba','2015-05-27 15:33:32',1,NULL,NULL,0);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category`
--

DROP TABLE IF EXISTS `document_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category` (
  `doc_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_category_name` varchar(50) NOT NULL,
  `doc_category_user_type` char(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`doc_category_id`),
  UNIQUE KEY `doc_category_name` (`doc_category_name`,`doc_category_user_type`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `document_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `document_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category`
--

LOCK TABLES `document_category` WRITE;
/*!40000 ALTER TABLE `document_category` DISABLE KEYS */;
INSERT INTO `document_category` VALUES (1,'S.S.C. Marksheet','0','2015-05-27 15:22:07',1,NULL,NULL,0),(2,'H.S.C. Marksheet','0','2015-05-27 15:22:16',1,NULL,NULL,0),(3,'Leaving Certificate','0','2015-05-27 15:22:25',1,NULL,NULL,0),(4,'Bonafied Certificate','S','2015-05-27 15:22:32',1,NULL,NULL,0),(5,'Experience Certificate','E','2015-05-27 15:22:39',1,NULL,NULL,0),(6,'Migration Certificate','S','2015-05-27 15:22:51',1,NULL,NULL,0);
/*!40000 ALTER TABLE `document_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_address`
--

DROP TABLE IF EXISTS `emp_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_address` (
  `emp_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_cadd` varchar(255) DEFAULT NULL,
  `emp_cadd_city` int(11) DEFAULT NULL,
  `emp_cadd_state` int(11) DEFAULT NULL,
  `emp_cadd_country` int(11) DEFAULT NULL,
  `emp_cadd_pincode` int(11) DEFAULT NULL,
  `emp_cadd_house_no` varchar(25) DEFAULT NULL,
  `emp_cadd_phone_no` varchar(25) DEFAULT NULL,
  `emp_padd` varchar(255) DEFAULT NULL,
  `emp_padd_city` int(11) DEFAULT NULL,
  `emp_padd_state` int(11) DEFAULT NULL,
  `emp_padd_country` int(11) DEFAULT NULL,
  `emp_padd_pincode` int(11) DEFAULT NULL,
  `emp_padd_house_no` varchar(25) DEFAULT NULL,
  `emp_padd_phone_no` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`emp_address_id`),
  KEY `emp_cadd_city` (`emp_cadd_city`),
  KEY `emp_cadd_state` (`emp_cadd_state`),
  KEY `emp_cadd_country` (`emp_cadd_country`),
  KEY `emp_padd_city` (`emp_padd_city`),
  KEY `emp_padd_state` (`emp_padd_state`),
  KEY `emp_padd_country` (`emp_padd_country`),
  CONSTRAINT `emp_address_ibfk_1` FOREIGN KEY (`emp_cadd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `emp_address_ibfk_2` FOREIGN KEY (`emp_cadd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `emp_address_ibfk_3` FOREIGN KEY (`emp_cadd_country`) REFERENCES `country` (`country_id`),
  CONSTRAINT `emp_address_ibfk_4` FOREIGN KEY (`emp_padd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `emp_address_ibfk_5` FOREIGN KEY (`emp_padd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `emp_address_ibfk_6` FOREIGN KEY (`emp_padd_country`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_address`
--

LOCK TABLES `emp_address` WRITE;
/*!40000 ALTER TABLE `emp_address` DISABLE KEYS */;
INSERT INTO `emp_address` VALUES (1,'B-21 Kirtan Appartment,Nehrunagar, ahmedabad',1,1,1,698596,'21','079-85965236','795 E DRAGRAM, TUCSON AZ 85705,  USA',4,3,2,968596,'795','201-598569'),(2,'K-303, Jaldhara Appartments, Naranpura',1,1,1,385400,'303','079-36526363','\"Anand\", Friends Villa, S.P.Patel Road,',7,1,1,562356,'50/123','0268-52365214'),(3,'F-102, Surya City,Maninagar',1,1,1,385400,'F-102','079-58748596','F-102,Surya City, Maninagar',1,1,1,385400,'F-102','079-58748596'),(4,'H-801, Shivakali Flats, Near Shivranjani,',1,1,1,385400,'H-801','079-52556323','\"Shivalik\",  Vibhusha Bunglows,Vadodara',18,1,1,859696,'88','0789-52415263'),(5,'G-1005, Green Vally,Opp L.D.College, Panjarapol.',2,1,1,385400,'G-1005','079-58452111','H/998, Ashray, Mangalya Society,Jamnagar.',6,1,1,589685,'H/998','079-58421222'),(6,'madhav Society,Sector-3, Gha-3',2,1,1,859685,'85','079-58968523','Satyam Flats, BTNAgar, ThakkarNagar',1,1,1,385400,'65','079-55221142'),(7,'A-901, Ocean11, Manek Baug',1,1,1,385400,'901','079-85554455',' Kamalkunj Society,Sector-19,',8,2,1,969696,'E-504,','023-89568958'),(8,' MEGASYSTEMS INC, 799 E DRAGRAM SUITE 5A, TUCSON AZ 85705,  USA',4,3,2,889988,'856','201-859685',' MEGASYSTEMS INC,  SUITE 5A-1204,   799 E DRAGRAM, TUCSON AZ 85705,  USA',4,3,2,889988,'857','202-859685'),(9,'K-405, Vande Matram,Near Prathna Residency, Nikol,',1,1,1,385400,'405','079-85968574','24/589, Stavan Residency, Bhaikaka  Nagar Road, Pune-East',8,2,1,858585,'24','023-85632563'),(10,'B-253,Vasant Vihar, Giridhar Nagar,Opp.Bank of Baroda,Shahibaug',1,1,1,385400,'B-253','079-58585858','G-104,Shyam Vihar ,Shashtri Nagar, Opp.Sunrise Mall,',1,1,1,385400,'B-253','079-58585858'),(11,'12, Shantikunj Society,Nr.Tulip English Medium School, New Ranip',1,1,1,385400,'12','079-85858525','205,Megh-Malhar Avenue, Sector-2,opp.Waminarayan Temple,',2,1,1,385406,'205','079-52636342'),(12,'F-705, Aryan Homes, PrahladNagar Road,',1,1,1,385400,'','','7100 Athens Place,Washington, DC 20521-7100,   USA\r\n   ',4,3,2,852352,'7100','206-8589654'),(13,'A-402, Samrat Flats,Nr. Kameshvar School, Vejalpur',1,1,1,385400,'402','079-8321452','D/23, Sargam Society,Gala Gymkhana Road,Opp.Sales India,',6,1,1,856325,'23','079-85123666'),(14,'123/45,Bhavya Park Society,,Ramvadi,Raiya Road,',17,1,1,385400,'123/45','079-85963256','G-805,Indravadan Avenue, Naranpura, opp. D-Mart Mall,Nr. Vyas vadi,',17,1,1,362500,'805','0283-8563256'),(15,'A-10009,Antariksha Flats, Vijay Cross Road',1,1,1,385400,'10009','079-8532652','A-10009,Antariksha Flats, Vijay Cross Road',1,1,1,385400,'1009','079-8532652'),(16,'C-306, Iscon Flower,Bopal Circle,Bopal Approach',1,1,1,385400,'306','079-85965254','234/53, Gandhi-Park Society,Virat Nagar, Nr. ST Colony',7,1,1,856325,'234/53','0268-85963652'),(17,'21 Kirksway Place,Townsville',5,4,3,232323,'21','321-85632552','201 Walker St Townsville Queensland',5,4,3,232323,'201','321-56239685');
/*!40000 ALTER TABLE `emp_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_category`
--

DROP TABLE IF EXISTS `emp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_category` (
  `emp_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_category_name` varchar(50) NOT NULL,
  `emp_category_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_category_id`),
  UNIQUE KEY `emp_category_name` (`emp_category_name`),
  UNIQUE KEY `emp_category_alias` (`emp_category_alias`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `emp_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_category`
--

LOCK TABLES `emp_category` WRITE;
/*!40000 ALTER TABLE `emp_category` DISABLE KEYS */;
INSERT INTO `emp_category` VALUES (1,'Regular','regular','2015-05-27 15:46:59',1,NULL,NULL,0),(2,'Rejoin','rejoin','2015-05-27 15:47:11',1,NULL,NULL,0),(3,'Resign','resign','2015-05-27 15:47:18',1,NULL,NULL,0),(4,'Transfer','transfer','2015-05-27 15:47:25',1,NULL,NULL,0);
/*!40000 ALTER TABLE `emp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_department`
--

DROP TABLE IF EXISTS `emp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_department` (
  `emp_department_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_department_name` varchar(65) NOT NULL,
  `emp_department_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_department_id`),
  UNIQUE KEY `emp_department_name` (`emp_department_name`),
  UNIQUE KEY `emp_department_alias` (`emp_department_alias`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `emp_department_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_department_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_department`
--

LOCK TABLES `emp_department` WRITE;
/*!40000 ALTER TABLE `emp_department` DISABLE KEYS */;
INSERT INTO `emp_department` VALUES (1,'MCA Department','MCA Dept','2015-05-27 15:43:24',1,NULL,NULL,0),(2,'BCA Department','BCA Dept','2015-05-27 15:43:41',1,NULL,NULL,0),(3,'MBA Department','MBA Dept','2015-05-27 15:43:49',1,NULL,NULL,0),(4,'B.Sc.IT Department','B.Sc.IT ','2015-05-27 15:44:31',1,NULL,NULL,0),(5,'M.Sc.IT Department','M.Sc.IT','2015-05-27 15:44:54',1,NULL,NULL,0);
/*!40000 ALTER TABLE `emp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_designation`
--

DROP TABLE IF EXISTS `emp_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_designation` (
  `emp_designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_designation_name` varchar(50) NOT NULL,
  `emp_designation_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_designation_id`),
  UNIQUE KEY `emp_designation_name` (`emp_designation_name`),
  UNIQUE KEY `emp_designation_alias` (`emp_designation_alias`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `emp_designation_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_designation_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_designation`
--

LOCK TABLES `emp_designation` WRITE;
/*!40000 ALTER TABLE `emp_designation` DISABLE KEYS */;
INSERT INTO `emp_designation` VALUES (1,'Head of Department','HOD','2015-05-27 15:45:22',1,NULL,NULL,0),(2,'Assistant Professor','Assi.Prof.','2015-05-27 15:45:36',1,NULL,NULL,0),(3,'Associate Professor','Asso.Prof.','2015-05-27 15:45:45',1,NULL,NULL,0),(4,'Peon','peon','2015-05-27 15:45:56',1,NULL,NULL,0),(5,'Librarian','Librarian','2015-05-27 15:46:09',1,NULL,NULL,0),(6,'Admin','Admin','2015-05-27 15:46:22',1,NULL,NULL,0),(7,'Senior Clerk','Sr.Clerk','2015-05-27 15:46:34',1,NULL,NULL,0);
/*!40000 ALTER TABLE `emp_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_docs`
--

DROP TABLE IF EXISTS `emp_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_docs` (
  `emp_docs_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_docs_details` varchar(100) DEFAULT NULL,
  `emp_docs_category_id` int(11) NOT NULL,
  `emp_docs_path` varchar(150) NOT NULL,
  `emp_docs_submited_at` datetime NOT NULL,
  `emp_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `emp_docs_emp_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_docs_id`),
  KEY `created_by` (`created_by`),
  KEY `emp_docs_emp_master_id` (`emp_docs_emp_master_id`),
  CONSTRAINT `emp_docs_ibfk_1` FOREIGN KEY (`emp_docs_emp_master_id`) REFERENCES `emp_master` (`emp_master_id`),
  CONSTRAINT `emp_docs_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_docs`
--

LOCK TABLES `emp_docs` WRITE;
/*!40000 ALTER TABLE `emp_docs` DISABLE KEYS */;
INSERT INTO `emp_docs` VALUES (1,'10th Marksheet',1,'1-1-674493971.jpeg','2015-05-27 15:57:57',0,1,1),(2,'',5,'2-4-1255286698.jpeg','2015-05-27 16:15:18',0,2,1),(3,'',1,'2-1-508131643.jpeg','2015-05-27 16:15:29',0,2,1),(4,'LC',3,'3-3-1028952283.jpg','2015-05-27 16:23:30',0,3,1),(5,'',1,'5-1-1041481190.jpeg','2015-05-27 16:49:42',1,5,1),(6,'',2,'6-2-476165100.jpeg','2015-05-27 17:20:32',1,6,1),(7,'',1,'8-1-287893358.jpeg','2015-05-27 17:48:33',1,8,1),(8,'',5,'12-4-1312228162.jpeg','2015-05-28 10:22:00',0,12,1),(9,'',1,'7-1-23342204.jpeg','2015-05-28 11:10:12',1,7,1),(10,'',2,'7-2-60225619.jpeg','2015-05-28 11:10:12',1,7,1),(11,'',5,'7-4-202828877.jpeg','2015-05-28 11:10:12',0,7,1),(12,'EC',5,'9-5-474089278.docx','2015-05-28 11:43:26',0,9,1),(13,'',1,'4-1-1173174131.jpeg','2015-05-28 12:14:36',0,4,1),(14,'',1,'6-1-169624660.jpeg','2015-05-28 12:24:09',0,6,1),(15,'',2,'8-2-1197865576.jpeg','2015-05-28 12:35:54',1,8,1),(16,'',1,'10-1-587920925.jpeg','2015-05-28 12:48:13',0,10,1),(17,'',1,'11-1-604286794.jpeg','2015-05-28 12:50:53',0,11,1),(18,'',1,'12-1-1371640593.jpeg','2015-05-28 12:54:49',0,12,1),(19,'',1,'13-1-784792920.jpeg','2015-05-28 12:58:10',0,13,1),(20,'',1,'14-1-152678129.jpeg','2015-05-28 13:02:19',0,14,1),(21,'',1,'16-1-624910390.jpeg','2015-05-28 14:23:14',0,16,1),(22,'',2,'16-2-948787997.jpeg','2015-05-28 14:39:46',0,16,1),(23,'',1,'17-1-1375764288.jpeg','2015-05-28 14:49:36',1,17,1),(24,'12th Marksheet',2,'17-2-56902868.jpeg','2015-05-28 14:54:32',1,17,1);
/*!40000 ALTER TABLE `emp_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_info`
--

DROP TABLE IF EXISTS `emp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_info` (
  `emp_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_unique_id` int(11) NOT NULL,
  `emp_attendance_card_id` varchar(50) DEFAULT NULL,
  `emp_title` varchar(5) DEFAULT NULL,
  `emp_first_name` varchar(35) NOT NULL,
  `emp_middle_name` varchar(35) DEFAULT NULL,
  `emp_last_name` varchar(35) NOT NULL,
  `emp_name_alias` varchar(10) DEFAULT NULL,
  `emp_mother_name` varchar(50) DEFAULT NULL,
  `emp_gender` varchar(10) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_religion` varchar(50) DEFAULT NULL,
  `emp_bloodgroup` varchar(10) NOT NULL DEFAULT 'Unknown',
  `emp_joining_date` date DEFAULT NULL,
  `emp_birthplace` varchar(50) DEFAULT NULL,
  `emp_email_id` varchar(65) DEFAULT NULL,
  `emp_maritalstatus` varchar(35) DEFAULT NULL,
  `emp_mobile_no` bigint(12) DEFAULT NULL,
  `emp_photo` varchar(150) DEFAULT NULL,
  `emp_languages` varchar(255) DEFAULT NULL,
  `emp_bankaccount_no` varchar(25) DEFAULT NULL,
  `emp_qualification` varchar(50) DEFAULT NULL,
  `emp_specialization` varchar(255) DEFAULT NULL,
  `emp_experience_year` tinyint(2) DEFAULT NULL,
  `emp_experience_month` tinyint(2) DEFAULT NULL,
  `emp_hobbies` varchar(100) DEFAULT NULL,
  `emp_reference` varchar(35) DEFAULT NULL,
  `emp_guardian_name` varchar(65) DEFAULT NULL,
  `emp_guardian_relation` varchar(30) DEFAULT NULL,
  `emp_guardian_qualification` varchar(50) DEFAULT NULL,
  `emp_guardian_occupation` varchar(50) DEFAULT NULL,
  `emp_guardian_income` varchar(50) DEFAULT NULL,
  `emp_guardian_homeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_officeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_mobile_no` bigint(12) DEFAULT NULL,
  `emp_guardian_phone_no` varchar(25) DEFAULT NULL,
  `emp_guardian_email_id` varchar(65) DEFAULT NULL,
  `emp_info_emp_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_info_id`),
  UNIQUE KEY `emp_unique_id` (`emp_unique_id`),
  UNIQUE KEY `emp_info_emp_master_id` (`emp_info_emp_master_id`),
  UNIQUE KEY `emp_email_id` (`emp_email_id`),
  UNIQUE KEY `emp_mobile_no` (`emp_mobile_no`),
  UNIQUE KEY `emp_attendance_card_id` (`emp_attendance_card_id`),
  KEY `emp_info_emp_master_id_fgn` (`emp_info_emp_master_id`),
  CONSTRAINT `emp_info_ibfk_3` FOREIGN KEY (`emp_info_emp_master_id`) REFERENCES `emp_master` (`emp_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_info`
--

LOCK TABLES `emp_info` WRITE;
/*!40000 ALTER TABLE `emp_info` DISABLE KEYS */;
INSERT INTO `emp_info` VALUES (1,1,'8596452563','Mr.','John','Andrew','Doson','JAD','Susane','MALE','1983-06-22','Christian','B-','2014-01-01','Chicago','john_doson@gmail.com','MARRIED',9865986598,'','English,German','52416396857485',NULL,'Python, Magento,Yii ,PHP,Maths',5,2,'Reading, Teaching,Travelling','Dr.Hamid','Andrew','Father','Master of Computer Scienc','Job','560000','AB/ Park Aven Street, Arthirs Corner,East.','125/586, Elen Street, First Crian, ',8585968596,'201-2563251','andrew@yahoo.com',1),(2,2,'8574858585','Mr.','Anand','Pareshbhai','Patel','APP','Ritaben','MALE','1985-07-05','Hindu','B+','2015-01-01','Jamnagar','anand.patel@gmail.com','MARRIED',7775658565,NULL,'Gujarati,English,German,Hindi','85965656487585',NULL,'JAVA,Networking,Graphics,Android,PHP,Python,C',10,4,'Surfing,Reading,Writting','janak Bhai Patel','Pinakinbhai','Brother','M.Tech','Govt .Officer','750000','33, Nilgagan Society,M.G.Road,Rajkot','R &D Department,Jilla Panchayat Office,Vaibhav Chowk,',7458963256,'0287-23569856','pinakin@yahoo.com',2),(3,3,'7485748596','Ms.','Punita','NarotamBhai','Raval','PNR','Charulataben','FEMALE','1988-07-03','Hindu','O+','2015-01-01','Una','punita@gmail.com','MARRIED',7485967485,NULL,'English,Gujarati,Hindi','85741236547896',NULL,'Maths,Python,IOS',6,3,'Surfing,Developing','Vishal Raval','NArotambhai','Father','B.Tech','JOB','750000','45- Baleshwar Upvan, Nr.Railway Station,Ahmedabad','123, Orchid Plaza,Opp Bank of Baroda,Vadaj,Ahmedabad',7458963256,'0287-23569856','narotambhair@gmail.com',3),(4,4,'8596566556','Mr.','Abhishek','A','Shah','AAS','NishaBen','MALE','1983-06-22','Hindu','A+','2014-01-01','Anand','abhishek.shah@gmail.com','UNMARRIED',8596363633,NULL,'English,Gujarati,Hindi,French','85632548596856',NULL,'Yii,Python,PHP,Magento,JAVA',4,2,'Surfing.Travelling,','Mr.Jay Shah','Kamalbhai','Brother','B.Com','Job','280000','44, RadhaNagar, BT NAGAR,Anand\r\n','R &D Department, Jilla Panchayat Office, Vaibhav Chowk.',8585968596,'0287-23569856','kamal@gmail.com',4),(5,5,'8596745685','Prof.','Aniket','Kamalbhai','Patel','AKP','Ramaben','MALE','1988-06-16','Hindu','B-','2015-01-14','Rajkot','aniket.patel123@gmail.com','MARRIED',8596745685,NULL,'English,Hindi,German','596589565656565',NULL,'JAVA,Networking,Graphics,Android,PHP,Python,C',3,3,'Reading, Teaching,Travelling','','Ranvir','Brother','B.E. Mechanical','Job','560000','Sringar REsidency,Sector-2,Gandhinagar','12/58, Chinubhai Tower,Ashram Road,Ahmedabad',NULL,'','ranvir125@yahoo.com',5),(6,6,'8574855565','Ms.','Anjali','K','Ramani','AKR','Ashaben','FEMALE','1985-07-17','Hindu','A+','2015-01-06','Junagadh','abnju.anju@gmail.com','UNMARRIED',8855664477,NULL,'English,Gujarati,German','85965544544545',NULL,'Networking, Graphics, Animation,CSS',2,1,'Shopping,Outing,Writing,Reading','Dr.Ashish','Kishorbhai','Father','B.Com','Job','280000','D-585,Nalanda Appartment, Sumul Road,Surat','\"Anjali Investment\",Giriraj Road, Nr.ST Stand,Surat',8596748596,'0258-968574125','hishor_123@gmail.com',6),(7,7,'8565658585','Mr.','AshishShinh','J','Bhatia','AJB','Kantaben','MALE','1983-06-30','Hindu','B+','2015-02-11','Punjab','ashish@yahoo.com','MARRIED',8596857485,NULL,'English,French,Hindi,Punjabi','45857452365231',NULL,'Chemistry,Biology,PHP,Python,CSS3',11,2,'Eating,Singing,Surfing,Reading','Vinod Pillai','Gordhanbhai','Father','B.Com','Accountant','290000','5-C125, rushab Flats, Anand NAgar','Vandana Infptech Pvt.Ltd, Vadaj',7668559444,'0285-86957485','gordhan@yahoo.com',7),(8,8,'8454547858','Ms.','Paul','D','Diesel','PDD','ChampaBen','MALE','1985-06-10','Christian','A-','2015-01-13','California','pauldiesel@yahoo.com','UNMARRIED',5236524152,'Paul_8.jpeg','English,Gujarati,Hindi','45869854785698',NULL,'PHP, CSS3, HTML,JAVA,ANDROID,Wordpress,Magento',2,1,'Reading, Surfing','Dr.Hardik Patel','Vin ','Brother','B.Tech','Job','850000','75/856k, Easten Sider,Woolen Street','459-K Street, Riverside,',7458963256,'204-8596855','vin1234@yahoo.com',8),(9,9,'6585362563','Dr.','Kanan','Maheshbhai','Patel','KMP','RashmiBen','FEMALE','1985-07-27','Hindu','O-','2014-05-06','Junagadh','kanan.patel@gmail.com','MARRIED',8596748596,NULL,'Russian,English,Hindi,Gujarati,Punjabi','12365478596',NULL,'PHysics,Chemistry,Botony,Zoology,Maths',8,6,'Reading,Writing,Travelling','Mr. Rajan Varma','Maheshbhai','Father','M.Tech','Job','560000','124-Panchvati Circle, Nitara Flats\r\n','Second Floor, Aryan Arcade,Maninagar',8585252525,'079-36362563','maheshpatel@yahoo.com',9),(10,10,'1233214566','Mr.','Priyesh','M','Sanesara','PMS','Shantiben','MALE','1982-07-01','Hindu','B+','2015-01-01','Ahmedabad','priyesh@yahoo.com','MARRIED',8596363636,NULL,'English,Hindi,Gujarati,German','252563656235',NULL,'Marketing, Finance, Accounting.',10,3,'MArketing','Dr. Jhanvi Patel','Ashokbhai','Brother','M.Sc.','Bussiness','820000','604,Gunatit Appartments, Sumul Dairy Road,Surat','204,Podar Arcade, Nr.Garnala,Surat',8565859565,'079-85656565','ashoks@gmail.com',10),(11,11,'5632652341','Mr.','Akhilesh','Pareshbhai','Patel','APP','ManjulaBen','MALE','1983-07-20','Hindu','O+','2015-02-10','Rajkot','akhilesh11@gmail.com','MARRIED',7474585695,NULL,'English,Hindi,French','854555225552',NULL,'Maths,Science,English',4,NULL,'Reading,Adventure,Cooking','Prof.Arijit Shah','Markand Patel','Brother','B.Com','Job','350000','123/45, \"Ren Basera\",Amrut Nagar Society,Jodhpur Gam,Near Prernatirth Derasar Temple,, Ahmedabad','701, Sapath-iii, Prahladnagar Road',7474526341,'079-85656565','markand@gmail.com',11),(12,12,'1234567898','Ms.','Maria','Daniel','Cruse','MDC','Stella','MALE','1985-07-24','Christian','A+','2015-03-03','California','maria_cruse@gmail.com','MARRIED',8585968574,NULL,'English,French,Gujarati','125478542365',NULL,'Computer Networkin, JAVA, Android,C',4,3,'Reading, Teaching,Travelling','Jaydeep Patel','David ','Brother','Master of Computer Scienc','Job','850000',' 100 MAIN ST, PO BOX 1022, SEATTLE WA 98104, USA','300 BOYLSTON AVE E, SEATTLE WA 98102, USA',9889788767,'201-8569856','david_decoz@gmail.com',12),(13,13,'7545856535','Mr.','Kishor','Rameshbhai','Chavda','KRC','SonalBen','MALE','1981-08-28','Hindu','B-','2015-02-16','Rajkot','kishor.chavda@gmail.com','MARRIED',8596969685,NULL,'English,Gujarati,Hindi','52523662365252',NULL,'Android,Maths,Networking',3,4,'REading,Writing','Jaydeep Patel','GunjanBhai Chavda','Brother','BA','Job','280000','75,Surya City, Raiya Road,Rajkot','Stavan Arcade, Above Samsumg Show Room,Rajkot',8585858586,'0285-4658956','gunjan@gmail.com',13),(14,14,'8532658542','Ms.','Kinnari','Kishorbhai','Bhatt','KKB','MeenaBen Bhatt','FEMALE','1986-08-29','Hindu','Unknown','2015-03-10','Jamnagar','kinnari.bhatt@gmail.com','UNMARRIED',8569857485,NULL,'English,Hindi,Gujarati','158452365252',NULL,'C++, ComputerGraphics, Animation, Corel Draw, ',3,5,'Eating,Singing,Surfing,Reading','Janvi PAtel','Kunal Bhatt','Brother','M.Sc','Bussiness','850000','Kishor Kunj,  Postal Society,Nr. Best English School,junagadh','Anjali investment, Nr.M.G.Library, Janzarda Road',8523568595,'0875-56985696','kunal.bhatt@yahoo.com',14),(15,15,'1452254123','','Naresh','Rambhai','Chaudhary','NRC','HimaniBen','MALE','1989-07-11','Hindu','O-','2015-01-16','Anand','naresh@gmail.com','MARRIED',7936589658,'Naresh_15.jpeg','English,Gujarati,Hindi','12332156323652',NULL,'SRS,Documentation,Designing,PHP,CSS3',3,2,'Writing,Shopping','Dr.Sidhharth Shah','Niraj Chaudhary','Uncle','B.Com','Job','280000','K1051, Niharika Flats, Panjarapol','201,NewYork Plaza, Judges Buglow Road',7668559444,'079-85656565','niraj.c@gmail.com',15),(16,16,'1478523695','Ms.','Vaishali ','Maganbhai','Chaudhary','VMC','Sarojben','FEMALE','1982-08-18','Hindu','A+','2014-03-26','Rajkot','vaishali.chaudhary@gmail.com','MARRIED',8555564444,NULL,'English,Gujarati,Hindi,German','851245514212',NULL,'Management',7,2,'REading,Writing','Prof. Ashish Bareja','Raj Chaudhary','Brother','MCA ','Job','850000','25/11,Shyam Shikhar,Bapunagar Approach','B-201,info-tower,C.G.Road',8523568595,'079-7474745','raj.chaudhary@gmail.com',16),(17,17,'8596785858','Mr.','William','John','Smith','WJS','samantha','MALE','1983-07-21','Christian','AB+','2015-01-17','Sydney','william.smith@yahoo.com','UNMARRIED',8555656565,NULL,'English,Hindi,German,French','523252363332',NULL,'PHysics,Chemistry,Botony,Zoology,Maths',2,2,'Reading,Searching,','Mr. Bruice Willise','jason Smith','Brother','M.Tech','Bussiness','850000','158 St Georges Tce, PERTH WA','K-456/67, G street, First Avenue',88555565656,'206-6565352','jason.smith@gmail.com',17);
/*!40000 ALTER TABLE `emp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_master`
--

DROP TABLE IF EXISTS `emp_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_master` (
  `emp_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_master_emp_info_id` int(11) NOT NULL,
  `emp_master_user_id` int(11) NOT NULL,
  `emp_master_department_id` int(11) NOT NULL,
  `emp_master_designation_id` int(11) DEFAULT NULL,
  `emp_master_category_id` int(11) NOT NULL,
  `emp_master_nationality_id` int(11) DEFAULT NULL,
  `emp_master_emp_address_id` int(11) NOT NULL,
  `emp_master_status_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_master_id`),
  UNIQUE KEY `emp_master_user_id` (`emp_master_user_id`),
  UNIQUE KEY `emp_master_emp_info_id` (`emp_master_emp_info_id`),
  KEY `emp_master_department_id` (`emp_master_department_id`),
  KEY `emp_master_designation_id` (`emp_master_designation_id`),
  KEY `emp_master_category_id` (`emp_master_category_id`),
  KEY `emp_master_nationality_id` (`emp_master_nationality_id`),
  KEY `emp_master_emp_address_id` (`emp_master_emp_address_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `emp_master_emp_info_id_frg` (`emp_master_emp_info_id`),
  KEY `emp_master_user_id_frg` (`emp_master_user_id`),
  CONSTRAINT `emp_master_ibfk_11` FOREIGN KEY (`emp_master_emp_info_id`) REFERENCES `emp_info` (`emp_info_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `emp_master_ibfk_12` FOREIGN KEY (`emp_master_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `emp_master_ibfk_13` FOREIGN KEY (`emp_master_department_id`) REFERENCES `emp_department` (`emp_department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_14` FOREIGN KEY (`emp_master_designation_id`) REFERENCES `emp_designation` (`emp_designation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_15` FOREIGN KEY (`emp_master_category_id`) REFERENCES `emp_category` (`emp_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_16` FOREIGN KEY (`emp_master_nationality_id`) REFERENCES `nationality` (`nationality_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_17` FOREIGN KEY (`emp_master_emp_address_id`) REFERENCES `emp_address` (`emp_address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `emp_master_ibfk_19` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_20` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_master`
--

LOCK TABLES `emp_master` WRITE;
/*!40000 ALTER TABLE `emp_master` DISABLE KEYS */;
INSERT INTO `emp_master` VALUES (1,1,4,1,2,1,3,1,0,'2015-05-27 15:49:34',1,'2015-05-28 12:00:25',1,0),(2,2,15,1,1,1,1,2,0,'2015-05-27 16:05:39',1,'2015-05-28 12:04:46',1,0),(3,3,19,2,2,1,1,3,0,'2015-05-27 16:17:58',1,'2015-05-28 12:08:19',1,0),(4,4,20,5,2,1,1,4,0,'2015-05-27 16:36:41',1,'2015-05-28 12:14:07',1,0),(5,5,21,3,2,1,1,5,0,'2015-05-27 16:44:05',1,'2015-05-28 12:15:20',1,0),(6,6,22,4,2,1,1,6,0,'2015-05-27 16:52:30',1,'2015-05-28 12:23:20',1,0),(7,7,23,4,3,1,1,7,0,'2015-05-27 17:21:56',1,'2015-05-28 12:30:45',1,0),(8,8,24,2,2,1,1,8,0,'2015-05-27 17:32:07',1,'2015-05-28 12:35:44',1,0),(9,9,25,5,2,1,1,9,0,'2015-05-27 17:51:50',1,'2015-05-28 12:45:06',1,0),(10,10,26,3,1,1,1,10,0,'2015-05-28 09:52:52',1,'2015-05-28 12:48:03',1,0),(11,11,27,4,2,1,1,11,0,'2015-05-28 10:04:56',1,'2015-05-28 17:09:33',1,0),(12,12,28,5,6,1,1,12,0,'2015-05-28 10:16:16',1,'2015-05-28 12:54:39',1,0),(13,13,29,1,4,1,1,13,0,'2015-05-28 10:39:23',1,'2015-05-28 12:57:52',1,0),(14,14,30,2,2,4,1,14,0,'2015-05-28 11:12:20',1,'2015-05-28 13:02:06',1,0),(15,15,31,3,7,1,1,15,0,'2015-05-28 13:03:55',1,'2015-05-28 13:09:00',1,0),(16,16,32,1,5,1,1,16,0,'2015-05-28 13:11:32',1,'2015-05-28 14:22:48',1,0),(17,17,33,5,2,1,2,17,0,'2015-05-28 14:42:13',1,'2015-05-28 14:59:07',1,0);
/*!40000 ALTER TABLE `emp_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_status`
--

DROP TABLE IF EXISTS `emp_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_status` (
  `emp_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_status_name` varchar(50) NOT NULL,
  `emp_status_description` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_status_id`),
  UNIQUE KEY `emp_status_name` (`emp_status_name`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `emp_status_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_status_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_status`
--

LOCK TABLES `emp_status` WRITE;
/*!40000 ALTER TABLE `emp_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(80) NOT NULL,
  `event_detail` varchar(255) NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_type` int(11) NOT NULL,
  `event_url` varchar(255) DEFAULT NULL,
  `event_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Last Day','Last Day of Janvi','2015-05-30 00:00:00','2015-05-30 00:00:00',2,NULL,0,'2015-05-27 15:34:53',1,'2015-05-27 15:40:30',1,2),(2,'Janvi BDay','Happy Birthday Janvi ','2015-07-05 00:00:00','2015-07-05 00:00:00',4,NULL,0,'2015-05-27 15:35:38',1,'2015-05-27 15:40:48',1,2),(3,'Happy Bday','HAppy Birthday KarmrajSir','2015-07-25 00:00:00','2015-07-25 00:00:00',4,NULL,0,'2015-05-27 15:36:10',1,'2015-05-27 15:41:05',1,2),(4,'Launching New Application','Launch of Edusec Yii2','2015-06-02 09:30:00','2015-06-02 10:00:00',2,NULL,0,'2015-05-27 15:37:00',1,'2015-05-27 15:39:37',1,0),(5,'Meeting for staff ','All Staff Members-Meeting','2015-06-09 00:00:00','2015-06-09 00:00:00',3,NULL,0,'2015-05-27 15:37:42',1,NULL,NULL,0),(6,'Mango Festival','Two-day festival celebrating the ubiquitous Indian mango fruit with quizzes, competitions, mango tasting and over 400 varieties of the fruit on display.','2015-07-01 08:30:00','2015-07-01 15:00:00',2,NULL,0,'2015-05-27 15:38:08',1,'2015-05-27 15:38:44',1,0),(7,'Celebration Time','Celebration Time','2015-06-25 00:00:00','2015-06-25 00:00:00',4,NULL,0,'2015-05-27 15:39:12',1,NULL,NULL,0);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_category_details`
--

DROP TABLE IF EXISTS `fees_category_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_category_details` (
  `fees_category_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_details_name` varchar(70) NOT NULL,
  `fees_details_category_id` int(11) NOT NULL,
  `fees_details_description` varchar(255) DEFAULT NULL,
  `fees_details_amount` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fees_category_details_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `fees_details_category_id` (`fees_details_category_id`),
  CONSTRAINT `fees_category_details_ibfk_1` FOREIGN KEY (`fees_details_category_id`) REFERENCES `fees_collect_category` (`fees_collect_category_id`),
  CONSTRAINT `fees_category_details_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fees_category_details_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_category_details`
--

LOCK TABLES `fees_category_details` WRITE;
/*!40000 ALTER TABLE `fees_category_details` DISABLE KEYS */;
INSERT INTO `fees_category_details` VALUES (1,'Tuition Fees-2015',5,'Academic Year 2015 Tuition Fees',25000,'2015-05-27 16:52:10',1,NULL,NULL,0),(2,'Extra Misc Fees',5,'Extra Misc Fees',2000,'2015-05-27 16:52:35',1,NULL,NULL,0),(3,'Tuition Fees-2015',4,'Tuition Fees-2015',25000,'2015-05-27 16:53:13',1,NULL,NULL,0),(4,'Tuition Fees-2015',3,'Tuition Fees-2015',25000,'2015-05-27 16:53:25',1,NULL,NULL,0),(5,'Tuition Fees-2015',2,'Tuition Fees-2015',25000,'2015-05-27 16:53:39',1,NULL,NULL,0),(6,'Tuition Fees-2015',1,'Tuition Fees-2015',25000,'2015-05-27 16:53:53',1,NULL,NULL,0),(7,'Extra Misc Fees',1,'Extra Misc Fees',1500,'2015-05-27 16:55:05',1,NULL,NULL,0);
/*!40000 ALTER TABLE `fees_category_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_collect_category`
--

DROP TABLE IF EXISTS `fees_collect_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_collect_category` (
  `fees_collect_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_collect_name` varchar(70) NOT NULL,
  `fees_collect_batch_id` int(11) NOT NULL,
  `fees_collect_details` varchar(255) DEFAULT NULL,
  `fees_collect_start_date` date NOT NULL,
  `fees_collect_end_date` date NOT NULL,
  `fees_collect_due_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fees_collect_category_id`),
  UNIQUE KEY `fees_collect_name` (`fees_collect_name`,`fees_collect_batch_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `fees_collect_batch_id` (`fees_collect_batch_id`),
  CONSTRAINT `fees_collect_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fees_collect_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fees_collect_category_ibfk_3` FOREIGN KEY (`fees_collect_batch_id`) REFERENCES `batches` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_collect_category`
--

LOCK TABLES `fees_collect_category` WRITE;
/*!40000 ALTER TABLE `fees_collect_category` DISABLE KEYS */;
INSERT INTO `fees_collect_category` VALUES (1,'Tuition Fees',1,'Tuition Fees','2015-06-01','2015-06-30','2015-07-01','2015-05-27 16:50:51',1,NULL,NULL,0),(2,'Tuition Fees',2,'Tuition Fees','2015-06-01','2015-06-30','2015-07-01','2015-05-27 16:50:52',1,NULL,NULL,0),(3,'Tuition Fees',3,'Tuition Fees','2015-06-01','2015-06-30','2015-07-01','2015-05-27 16:50:52',1,NULL,NULL,0),(4,'Tuition Fees',4,'Tuition Fees','2015-06-01','2015-06-30','2015-07-01','2015-05-27 16:50:52',1,NULL,NULL,0),(5,'Tuition Fees',5,'Tuition Fees','2015-06-01','2015-06-30','2015-07-01','2015-05-27 16:50:52',1,NULL,NULL,0);
/*!40000 ALTER TABLE `fees_collect_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_payment_transaction`
--

DROP TABLE IF EXISTS `fees_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_payment_transaction` (
  `fees_pay_tran_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_pay_tran_collect_id` int(11) NOT NULL,
  `fees_pay_tran_stu_id` int(11) NOT NULL,
  `fees_pay_tran_batch_id` int(11) NOT NULL,
  `fees_pay_tran_course_id` int(11) NOT NULL,
  `fees_pay_tran_section_id` int(11) NOT NULL,
  `fees_pay_tran_mode` tinyint(1) NOT NULL,
  `fees_pay_tran_cheque_no` int(11) DEFAULT NULL,
  `fees_pay_tran_cheque_date` date DEFAULT NULL,
  `fees_pay_tran_bank_id` int(11) DEFAULT NULL,
  `fees_pay_tran_bank_branch` varchar(50) DEFAULT NULL,
  `fees_pay_tran_amount` decimal(10,0) NOT NULL,
  `fees_pay_tran_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fees_pay_tran_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `fees_pay_tran_bank_id` (`fees_pay_tran_bank_id`),
  KEY `fees_pay_tran_collect_id` (`fees_pay_tran_collect_id`),
  KEY `fees_pay_tran_stu_id` (`fees_pay_tran_stu_id`),
  KEY `fees_pay_tran_batch_id` (`fees_pay_tran_batch_id`),
  KEY `fees_pay_tran_course_id` (`fees_pay_tran_course_id`),
  KEY `fees_pay_tran_section_id` (`fees_pay_tran_section_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_16` FOREIGN KEY (`fees_pay_tran_collect_id`) REFERENCES `fees_collect_category` (`fees_collect_category_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_17` FOREIGN KEY (`fees_pay_tran_stu_id`) REFERENCES `stu_master` (`stu_master_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_18` FOREIGN KEY (`fees_pay_tran_batch_id`) REFERENCES `batches` (`batch_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_20` FOREIGN KEY (`fees_pay_tran_section_id`) REFERENCES `section` (`section_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_21` FOREIGN KEY (`fees_pay_tran_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_3` FOREIGN KEY (`fees_pay_tran_bank_id`) REFERENCES `bank_master` (`bank_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fees_payment_transaction_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fees_payment_transaction_ibfk_5` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_payment_transaction`
--

LOCK TABLES `fees_payment_transaction` WRITE;
/*!40000 ALTER TABLE `fees_payment_transaction` DISABLE KEYS */;
INSERT INTO `fees_payment_transaction` VALUES (1,1,1,1,1,1,1,NULL,NULL,NULL,'',20000,'2015-06-05','2015-05-27 17:21:10',1,NULL,NULL,0),(2,1,1,1,1,1,2,123,'2015-06-10',2,'Ahmedabad',2000,'2015-06-05','2015-05-27 17:21:50',1,NULL,NULL,0),(3,1,6,1,1,1,1,NULL,NULL,NULL,'',22000,'2015-06-05','2015-05-27 17:23:37',1,NULL,NULL,0),(4,1,7,1,1,1,2,1,'2015-06-10',4,'Jamnagar',26000,'2015-06-04','2015-05-27 17:24:49',1,NULL,NULL,0),(5,1,8,1,1,1,2,987,'2015-06-04',5,'Ahmedabad',22000,'2015-05-30','2015-05-27 17:25:45',1,NULL,NULL,0),(6,1,9,1,1,1,1,NULL,NULL,NULL,'',22000,'2015-05-30','2015-05-27 17:26:06',1,NULL,NULL,0),(7,2,2,2,2,2,1,NULL,NULL,NULL,'',20000,'2015-06-01','2015-05-27 17:27:06',1,NULL,NULL,0),(8,2,2,2,2,2,2,1023,'2015-06-02',1,'',2000,'2015-06-01','2015-05-27 17:27:57',1,NULL,NULL,0),(9,2,10,2,2,2,1,NULL,NULL,NULL,'',20000,'2015-05-30','2015-05-27 17:28:16',1,NULL,NULL,0),(10,2,14,2,2,2,1,NULL,NULL,NULL,'',23000,'2015-05-30','2015-05-27 17:28:44',1,NULL,NULL,0),(11,3,3,3,3,3,1,NULL,NULL,NULL,'',20000,'2015-05-29','2015-05-27 17:29:46',1,NULL,NULL,0),(12,3,11,3,3,3,2,1230,'2015-06-03',1,'',22000,'2015-05-30','2015-05-27 17:30:17',1,NULL,NULL,0),(13,4,4,4,4,4,1,NULL,NULL,NULL,'',22000,'2015-05-29','2015-05-27 17:30:52',1,NULL,NULL,0),(14,3,15,3,3,3,1,NULL,NULL,NULL,'',20000,'2015-05-28','2015-05-28 14:31:20',1,NULL,NULL,0),(15,3,15,3,3,3,2,1236,'2015-06-01',3,'Chicago FG',2000,'2015-05-30','2015-05-28 14:32:08',1,NULL,NULL,0),(16,4,12,4,4,4,1,NULL,NULL,NULL,'',22100,'2015-05-29','2015-05-28 14:32:51',1,NULL,NULL,0),(21,5,5,5,5,5,2,987,'2015-05-30',3,'New York NY',21078,'2015-05-30','2015-05-28 14:46:39',1,NULL,NULL,0),(22,5,13,5,5,5,1,NULL,NULL,NULL,'',22500,'2015-05-30','2015-05-28 14:48:32',1,NULL,NULL,0),(23,5,13,5,5,5,2,46,'2015-06-01',2,'Ahmedabad',2150,'2015-05-30','2015-05-28 14:49:17',1,NULL,NULL,0);
/*!40000 ALTER TABLE `fees_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_name` (`language_name`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `languages_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','2015-05-27 15:23:01',1,NULL,NULL),(2,'Gujarati','2015-05-27 15:23:05',1,NULL,NULL),(3,'Hindi','2015-05-27 15:23:09',1,NULL,NULL),(4,'Punjabi','2015-05-27 15:23:13',1,NULL,NULL),(5,'German','2015-05-27 15:23:16',1,NULL,NULL),(6,'Russian','2015-05-27 15:23:26',1,NULL,NULL),(7,'French','2015-05-27 15:23:31',1,NULL,NULL),(8,'Urdu','2015-05-27 15:23:40',1,NULL,NULL),(9,'Marathi','2015-05-27 15:23:51',1,NULL,NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_details` (
  `login_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_user_id` int(11) NOT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `login_at` datetime NOT NULL,
  `logout_at` datetime DEFAULT NULL,
  `user_ip_address` varchar(16) NOT NULL,
  PRIMARY KEY (`login_detail_id`),
  KEY `login_user_id` (`login_user_id`),
  CONSTRAINT `login_details_ibfk_1` FOREIGN KEY (`login_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_details`
--

LOCK TABLES `login_details` WRITE;
/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES (1,1,0,'2015-05-27 17:49:43','2015-05-28 14:53:46','192.168.1.109'),(2,1,0,'2015-05-28 09:26:49','2015-05-28 14:53:46','192.168.1.109'),(3,1,0,'2015-05-28 09:49:52','2015-05-28 14:53:46','192.168.1.101'),(4,1,0,'2015-05-28 14:03:14','2015-05-28 14:53:46','192.168.1.101'),(5,18,0,'2015-05-28 14:53:54','2015-05-28 15:01:59','192.168.1.109'),(6,1,0,'2015-05-28 14:54:21','2015-05-28 15:06:00','192.168.1.109'),(7,33,0,'2015-05-28 15:02:07','2015-05-28 15:09:35','192.168.1.109'),(8,1,0,'2015-05-28 15:07:23','2015-05-28 15:08:16','192.168.1.109'),(9,1,0,'2015-05-28 15:08:56','2015-05-28 15:10:32','192.168.1.109'),(10,18,0,'2015-05-28 15:09:44','2015-05-28 15:10:08','192.168.1.109'),(11,1,0,'2015-05-28 15:10:29','2015-05-28 15:10:32','192.168.1.109'),(12,1,0,'2015-05-28 16:43:52','2015-05-28 17:06:03','192.168.1.109'),(13,33,0,'2015-05-28 17:06:12','2015-05-28 17:07:56','192.168.1.109'),(14,1,1,'2015-05-28 17:08:13',NULL,'192.168.1.109'),(15,1,1,'2015-05-28 17:41:47',NULL,'192.168.1.101'),(16,1,1,'2015-05-28 18:17:21',NULL,'127.0.0.1'),(17,1,1,'2015-09-05 13:21:39',NULL,'127.0.0.1'),(18,1,1,'2015-09-05 17:24:48',NULL,'127.0.0.1'),(19,1,1,'2015-09-12 18:03:24',NULL,'127.0.0.1'),(20,1,1,'2015-09-19 14:28:03',NULL,'127.0.0.1'),(21,1,1,'2015-09-19 19:08:01',NULL,'127.0.0.1'),(22,1,1,'2015-09-27 14:52:16',NULL,'127.0.0.1'),(23,1,1,'2015-09-27 16:13:36',NULL,'127.0.0.1'),(24,1,1,'2015-09-27 17:03:02',NULL,'127.0.0.1'),(25,1,1,'2016-01-09 11:13:03',NULL,'127.0.0.1'),(26,1,1,'2016-01-09 11:13:08',NULL,'127.0.0.1'),(27,1,1,'2016-01-09 11:14:50',NULL,'127.0.0.1');
/*!40000 ALTER TABLE `login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_of_day`
--

DROP TABLE IF EXISTS `msg_of_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_of_day` (
  `msg_of_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_details` varchar(100) NOT NULL,
  `msg_user_type` char(3) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_of_day_id`),
  UNIQUE KEY `msg_details` (`msg_details`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `msg_of_day_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `msg_of_day_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_of_day`
--

LOCK TABLES `msg_of_day` WRITE;
/*!40000 ALTER TABLE `msg_of_day` DISABLE KEYS */;
INSERT INTO `msg_of_day` VALUES (1,'Each Day is a GIFT don\'t send it BACK unopened.  Have a nice Day !','0','2015-05-27 15:21:01',1,NULL,NULL,0),(2,'Every day may not be GOOD but there is something GOOD in every day.','S','2015-05-27 15:21:22',1,NULL,NULL,1),(3,'Every ONE wants happiness, No ONE needs pain, But its not possible to get a rainbow.','E','2015-05-27 15:21:41',1,NULL,NULL,1),(4,'Smile is the Electricity and Life is a Battery whenever you Smile the Battery gets Charges.','0','2015-05-27 15:21:59',1,NULL,NULL,1),(5,'The Best for the Group comes when everyone in the group does what‚Äôs best for himself AND the group.','E','2015-05-27 15:22:20',1,NULL,NULL,1),(6,'In life, as in football, you won\'t go far unless you know where the goalposts are.\r\n-- Arnold Glasow','S','2015-05-27 15:24:54',1,NULL,NULL,1);
/*!40000 ALTER TABLE `msg_of_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `national_holidays`
--

DROP TABLE IF EXISTS `national_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `national_holidays` (
  `national_holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `national_holiday_name` varchar(50) NOT NULL,
  `national_holiday_date` date NOT NULL,
  `national_holiday_remarks` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`national_holiday_id`),
  UNIQUE KEY `national_holiday_name` (`national_holiday_name`,`national_holiday_date`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `national_holidays_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `national_holidays_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `national_holidays`
--

LOCK TABLES `national_holidays` WRITE;
/*!40000 ALTER TABLE `national_holidays` DISABLE KEYS */;
INSERT INTO `national_holidays` VALUES (1,'Independance Day','2015-08-15','','2015-05-27 15:24:10',1,NULL,NULL,0),(2,'Republic Day(India)','2015-01-26','','2015-05-27 15:24:26',1,NULL,NULL,0),(3,'Janmashtami','2015-09-05','','2015-05-27 15:24:47',1,NULL,NULL,0),(4,'Dr.Ambedkar Jayanti','2015-04-14','','2015-05-27 15:25:02',1,NULL,NULL,0),(5,'Gujarat Sthapna Divas','2015-05-01','','2015-05-27 15:25:15',1,NULL,NULL,0);
/*!40000 ALTER TABLE `national_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality` (
  `nationality_id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nationality_id`),
  UNIQUE KEY `nationality_name` (`nationality_name`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `nationality_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `nationality_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES (1,'Indian','2015-05-27 15:25:38',1,NULL,NULL,0),(2,'Australian','2015-05-27 15:25:42',1,NULL,NULL,0),(3,'American','2015-05-27 15:25:46',1,NULL,NULL,0),(4,'Other','2015-05-27 15:25:53',1,NULL,NULL,0);
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(25) NOT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `notice_user_type` char(3) NOT NULL,
  `notice_date` date DEFAULT NULL,
  `notice_file_path` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notice_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'Next Week Summer Exam ','summer Exam will be conducted on Next week. All The Best','S','2015-06-01',NULL,'2015-05-27 15:26:29',1,NULL,NULL,0),(2,'Monthly Report','All Employee have to submit their report on month end.','E','2015-06-05',NULL,'2015-05-27 15:27:23',1,NULL,NULL,0),(3,'Summer Vacation','Summer Vacation starts from June to  2nd week of July.','0','2015-05-30',NULL,'2015-05-27 15:28:37',1,NULL,NULL,0),(4,'Attendance Report','All Employees collect their class wise  attendance report','E','2015-05-29',NULL,'2015-05-27 15:30:35',1,NULL,NULL,0),(5,'Exam From Fill','All Students come and fill their exam forms','S','2015-05-25',NULL,'2015-05-27 15:33:07',1,NULL,NULL,0);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(255) NOT NULL,
  `org_alias` varchar(25) NOT NULL,
  `org_address_line1` varchar(255) NOT NULL,
  `org_address_line2` varchar(255) DEFAULT NULL,
  `org_phone` varchar(25) DEFAULT NULL,
  `org_email` varchar(65) DEFAULT NULL,
  `org_website` varchar(120) DEFAULT NULL,
  `org_logo` longblob NOT NULL,
  `org_logo_type` varchar(35) NOT NULL,
  `org_stu_prefix` varchar(10) NOT NULL,
  `org_emp_prefix` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`org_id`),
  UNIQUE KEY `org_name` (`org_name`),
  UNIQUE KEY `org_alias` (`org_alias`),
  UNIQUE KEY `org_id` (`org_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `organization_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'EduSec Demo','EduSec Demo','1st floor Geeta Ceramics, Opp. Thakkar Nagar BRTS station,','Thakkar Nagar, Ahmedabad - 382350','(+91) 9099099839','info@rudrasoftech.com','http://www.rudrasoftech.com','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0i\0\0\0B\0\0\0TÈ¯œ\0\0\0gAMA\0\0±è¸a\0\0\0sRGB\0ÆŒÈ\0\0\0 cHRM\0\0z&\0\0ÄÑ\0\0˙\0\0\0ÄË\0\0u0\0\0Í`\0\0:ò\0\0pú∫Q<\0\0\0bKGD\0ˇ\0ˇ\0ˇ†Ωßì\0\0\0	pHYs\0\0\0H\0\0\0H\0F…k>\0\0!ÄIDATx⁄Ìúwº^Uï˜økÔÛ<∑&§	5ÙÍX± :#Ç\"\Z ëWTÜ/JëéRîE«Ü:6f§ éÂ¡–{BHá[üÁúΩ~Ôœ9…ìõö¿ºüa}>7˚π7Á9gÌ˝[mØΩ÷ÅóÈezô^¶ˇdˇ\'Ω_ﬂræ€7Åw^<@«ínfÃ*ó∆ê\\IFD&ååû4é˜}Ò9~x“¯óAZ¥˜Wƒ∏yO£ÆnÚÄ!¨RáõRÄÄan-à@HN –Ó$Î\Z` t˝Á\'ËÉß.£Y~‹∑¡ˇ }‡Ù•|ˇü\'ÒÅ”óP!ò0ÅÅ®Ì9&3Ií *˜ÜˇÏîiÏﬂ7¬3<ÕÕ}[ÆóâÓ{ rö7ÄQ~6ÎÌÌ-QÑ,˜¨»‚‘€öÏ∆ê…\n3=ìRÛ—Lµ¡d1…fF·\n\n° 	£ì7¯ü“ª˚ñR Íﬁí9ÑêíQ´+·ï·hId˚#ÕÑA5$E\'!√ÕÇêSÔ(¯ﬁÒSyˇiã¯¡âSˇ¶	æªo)1\nT√C2rBÍÓÓçCç°◊◊>¿ªÄÅ\Z⁄N@ò+„◊`7˙S·z `†\"àLÍ„ı\\±k?<uBK._JêﬁÛπExOÜIPEsÁ‚;Óÿ∫Y*µÕ¿m+°`ì@Å(¿ñõiπ§ßŸ`Ûì\n0Œ≠VÜôÍıB©a!„ß}^üoÈ„¥í2)dQ^8D≥w|\\∆æ∂b	¥‚ﬂïbe+˛≤b°ƒB¡OÄÔìÚük(ypCµ—ô32‹Õœœ˜“Å¥˜)Kàí‹à!ƒB…àumj\n˚{[ìÅÁÛÆ¿B`ÿ?èYv◊»pc$Cx¿Ãÿcb‚÷Á∞º‡ﬂOõ≤÷|æ∑o1IÅ,8	E˜,’j>π(¬i:Kº‘ œD≥[5ÅüÇù‚©¯£õ0b»≤‹ÕÍ4äÇüıM}Ò@⁄Ô3O2–€É§N#6dçÒÆé·H»µ´GΩ£æ™∂âWB\Z ü—œv∞áA◊\Z∫>Ihπ4¢{Ú]æêÊûº=)8?Î[3Xˇp‹R:∫ıòìùñd°Û‰ûΩ√Ã.\0∂+/-ÄXÚQÒ€òZ,ÜZÄ»JsÿUºQkÜ–ÈêüZXm8ã…¢jjˆ,·g«lı‚ÅÙÆœ/!πq“∂¯¬C”B‡ﬁ©Æò€Ò&é©¿—JP¨Ìﬁ6∆’¢∆\0≠|[Ë\nªwºPò®ôä¬Ÿ=õB_ﬂ™ÏÔ◊\'|°u•I¢·5uf:\ZÈúrëS€Û‹J-*%Ëœ¿çf˛Sz )>∂<LZ¸ûÙ˘OÉ7t?A{ç) ∑4∂1OØ2Û=Ä«å∆g6≥üÃ]TÏÓ˝ΩhÁ•“››M__ﬂ˙iÔûf¢\Z,´ç«Â5Àîœv\0øxsõÉçÎ¿¶V «6iæ∆-}Ådœ$≥`2	óô(äN~u∆Jã∫Á±ãËÏ,•@MÖP?\rÙœ£b4œø¥¿%F˛€ßŸp˛L›«¯t]º6]û©ø±7çÕ•b£ÃÚ’HZ∏Ïs#ﬂy ºW#Ô˘œeìõq¸éMã‹ÿœÌˇT?;d\Z$ZûÍı∫\Zçgúq∆∫È’sƒ‰)K∏·¥…ºÔ¯y’:£ªßz∞∑ªÖ+ÄMFôå’on´∞∂ò©ºw≠¸}Ëÿ!È∫òw≥°`Êâ»\rßN·ˇy!ì¶e,_ú¨V≥∏∞XRLf f?Üv;(Ä›ú4<0¯£0aSMˆπÏ⁄8ì%·U÷}Ò´åÙvÉ=Ãÿ∫4sôVaﬂZîˇ∫¶˛_5√˜Ê)ª?ãz\Z9íÃÃÃ›=À2RJÑ8˝Ù”◊\rHÔ¯óÖ8F«3Àhn4%†‰>ÑŸ@/\"a´ièX&≠X=ˇÉ€˝’ËÔàñ3®§ˇ¬§ÏƒH—Ô¶ÃS≤îrTÎ‰?˚zŸÎ_áZûöˆÄUd+}Oh=LWXÚœé‘¶-{}~bW‹ÎÀªˆËµÊ‚√A\0Ø}·À(Ä{Åˇ\0~Q´’~Ÿl6ëbå Èi÷\ZAz€âœâòy=)ËC¿’@}TDTqó÷†Uy©√Â5=•ÜƒQ˜†-»}üï¶Jv£°Y…¬ì»£eùi˙ƒ^ûZ˙,—ã`äÈ]2æﬂ¶â÷&ú∞Î¶SædÛégÜKt¬»q¬‚^íN^”fYCê3ñ`V≤X	Óàô›\r\\ôR∫*Ñ0íRä1F73π;]]]kÂØ≤±˛¯÷Çcxê[QòΩÈä5\0TôíÍ^˜c∫K≤?+Ë,2xMò‰^Îà“4∑b3#Ó$i\'3˛ÿ|eƒ¥öœ∞ïôﬁ*¯Ö¡˛Ç{îÖ˚õÔ„zßu&˜!64”˘h^´E,ü…2øx¡ì?Œ.∫Ô=E∂ÌÑûBvä°c Á§Qã=(å\nål‘z$†S“ÎÄ◊Ö5≥c%›*…$†ÅÅÅøNìˆ<a!¡ òŸWOÌ◊\'˛•w∫d∑\nmÊVôk1+µíYÜ˝P∆è!˝4aÜ‘2€∂RàÅ pºï¬\Z5£#gg–Î{ÔF™∑≤-!PÂå¬P&Ï·÷uÃèƒ\Zã@”.ó1TÄe µ|ÈÍ~˛åÊŸÏÊ˚ãüÑœnB¸Ü§Ω∆åˆ=‘_Ú£c]€2’fà\rI\'‰y~~ooØçååX¡æÙ•/≠=H}}‚7>»H\Z∂êr{¯˛ç}Êøˆ¡Q\Z‘>ô˙¬¿í‚◊=SÍ…ïìëeìÑ0…L2µæ*µ¬c∑dF@íÂô©ñp˚	Sz¥≥ôõ#ÿ`ågVº<åÙN2›Ø~3Î∂Ωhe¨m¡ ÔÈ¢∏I◊\'ªÁ=Pﬂ≠˘ÖÊ≤∞√4I?vg’∞º2›£≠L≥4€Éf$uó◊‘F]W∞r/XP÷∏ú7q‚ƒ\ZdddÑÓŒŸgüΩv Ω‚sè≥Mœ¶,k,äVêîq∞ƒ7GM¢Z†%àìΩ£ˆ’ÿÃµ¯Ò!¶nŸ[O=S¶˘¢ßÓ¶´{&ø˙‚ÿÈë˜|np„ß≤œ	-¡@ÒèªÛ]¶bÇ¥ir>R˙≤v†ärë˛õ®∑≈Â˝≈∏ÊØo„±\ZoØw÷ﬂ:±qGqÕ¯}¸∏•üõ Ïz`è∂˚å6e#¿ÅõÄ;‹˝!Ñ•ÓûB&…B3ÄWI⁄\rx∞≠§Ò-ÂYm[≤¬ØJ˙rñeüìîä¢p3ìôq÷Yg˝eê.>Æ‡ﬂlq(ÜﬁŸ›9)â;@€µ=∞\ZÔGvP¸vAò∆FZL¶d“]=<≥twûøÈZG/Øˇ¯R¶mﬂ`…Ç.Í°∞Ä3ôπºpd·≠íæà±ªµ-§†0»$.G∫ŸÃÆi\0…1¸Õ°;}¯Ü⁄4ˇ]f!˚∞œ(Ä⁄-≈’¿∑Û<ˇeΩ^ßä»Ãlµ±¢ŒŒNÜááﬂ$È=fv 0Ω˝æÂwTjUîtpVµÆ)%Œ;Ôºø“õè_@p≥qŸà˙Ω„hƒó«ê Ù.Û†—L©3:Õºìsˆ®O[-∞∂Ù∆„ó3≥{>Û\'¢yÚà≈\"/|B:EpÙ®Em˘£I+]cÌÊ—†/:ßlƒ-qJ∫;e÷88aî§Á@ÕÃÓ>›ﬂﬂˇ´q„∆Q.Æµ0íB\Zíµ¸•,∆ËEQT48J“ß⁄Öªµ⁄r4ÅΩÃÏ6wœ>˚¨wvvr·ÖÆ§¯¯Rä	#‰5——¥ÆD¯S˘∞vuÌ«ÙVGøèÑl\\G^Ù7\"(rÛô≤.È≠\'.&çõ@zu§~„¬Ã©∞zÆ∆·¿y¥RQZÉSØ\0¯3Ë-„Y∏t˚‚ $´Ì˙∑5¯◊‹˝–„º¢(Bñe¡Ã“Ygù•cè=ñ,ÀVssÊÃa⁄¥iP´’¨˝û1FRJ{H˙*∞√AâsC_≈@AfFOOœja˘\nÁ6˘ëâx≤ê\rgnÔêk+wôKÊí\\\n¬O~on—S^4S+QΩÆ∏Ò¥)ÿ≤%d«˝å¢HY4:\n}\r◊á$-ÙV8Î.·Â9¢Zº\")I˙ä§Eùöè7ì¸¸ÚöÍ«%EI?\n!|¿ÃÊ±^ØÀÃä GùsŒ9cF`ó_~9ßûzjk!CPOOOíîÃ,4\Zç‡Ó∑\0{I˙E˘új3kÂÁRJü.ü%±lŸ≤’û≥§FØSÑdù1‚Ë#éÚr≤A‚ˆBıÀÊé‚Ñö)r”≥æËÊ37$˚«WíyÅo›-JHdr˚πƒÅíî@I-a™¿\n.›c§ovç<;lœ$ÈTI3VŒGE9˛(ÑpÄªH\n@™Ã÷ÚÂÀ◊äœ.∏Ä3œ<≥6õ,X∞¿%yå1\0OÜ> È\'íÇªß¶©ïä8ÿ\ZpwkÙI€Ôøî…õYﬁô´6íMÜx∞m©¢eDg≥≥Ó¯ç|∏»äﬁ·¢£øÉ€ŒŸÑãv?j!Y∑#9òeD+î|_¡ı£.-≥>vtÈ¬◊4NC°k_3ÆoãR´DÎü$ÌU´’ûN)E3Kfˆº·⁄P__˝˝˝tvv“h4bΩ^OS≤,˚≠êø2∑U‡“gfß∏{V´’ä<œ9ˇ¸ÛW’§Â˜LD≤<\"ÖWH⁄ƒ%T˙KGè1˝H˝EpSb˙2boùìÓ∏x\ZëÇ·-˚krm,ßïÀ\\1\nâßî“’wZAG7Ëå“ºÖj«/iP“lIOEÅ‘€€[ÂŸ˛fêŒ=˜\\\0ä¢H√√√∞ÿ›èê¥¨Ã8x9\"ÈyûOíT4õÕ0¶π|d\nŸpéã]∫…Ep@‚∑†Âπ…:ÇzˇÔLnÓõ∆ãMçëÇ<‘àﬁ‘–‹.9® ,Ø1§Ø/ô±|√°W0éñ¥CeKsg¥¬ﬂﬂî\\íƒÚÂÀ9Áús÷øCCCò1∆¬ÃBΩ^øG“m©°();«wX9Æ“ˆG=\rÖ{]MÑ∂is™Arn	Ãëº7^<ÈEàæñƒƒÊHvy}€Å◊J⁄π‰µÚKA“ \Z˘˛ÎÍWX™Mù	|íï…T.ÃRJWŒZÁùw\\p¡:e˘¸ÛœgÉ\r6†V´QÜÔB∏x¨çgJ¿ˆﬁeó]»Û‹C´Éd^ÿ‘°M ‚$ï*Rïa…ü{ÁŸ3‰íF∫/ÌˆÏUÇÃd5‰zß§âBE+ÚTrdBﬂ€Hz‡Í]SÕÚ9í¶ógÂÇ‰¿πíñ∏ªMô2≈SZsÍÎÎcppê<œ’h4p˜AIÁUä@+Å§x¯·á≥£˘i´J˜«ﬁnw¶∏w(«¬=<\n‡n¸ÊåM^ê∫Îê2¨—ô\n–{9‡≠˙>πà\rÛ‚˚?ÿyﬂÊëwˇÀ∂†√⁄Ãú 0¯˜fˆ˝rÓ)œsFKÓ∫¶Ø|Â+<Ú»#òôeYÜ§$=[F{î~i+`;wØ4kH»˙ÎÀ1∑.°\rJ˚^V«·Ööœ8Öxâhë◊êÀ“s	ªJÏ÷ä∏â•≈2âªÎç%ø¸⁄ü∂ Û˛Ÿ¿VFR•@Í\\I#Âg-[∂lïHj}—Œ;ÔåªW⁄Ù§§;)¿•&E‡]tå⁄†∑w∏Ò¬â»]Ój%¯[£ËL≠îzÊ/MUÚN}˜“—tRrQ7êtD+®é¨5˙U∑ºÊ5ÕﬂÎ#õÇf∑˘© ˆﬂùR˙°ô·Ónfc¶a÷\rR˙≈ö§!‡w’Êª‹/!if9éí\\Ø<ˆ1‹›Ω˝PÓ⁄qâ§,p≈ó§⁄¸q‰!7óíMv◊˛r!WP+GÆÖ=ÙÁÿ{è&¶˛#$Ml*º¸¸ïîRëR\nf∂JÇt}”≈_\\ôµ*Çõ◊∂-®p™j¿∆2wPØÇÇF˚y∞ ¶Zæ	Ä«¬ﬁ“w”ã\n–.ü|KF(B0§(;ò» ¸WÎ¨F˛µª¬NKFÚlä‰î_oØ>z¬Ã~yÈ•óÆH≠ÎhnmHí.∫Ë\"$=Õ |^•È+ W)•Úly®6‡“3Uz•3w6€˘ìè‚é=ÛÃ÷/Ó§\\xOn*LÇIm3Ó-I\\\\≥°´èÔÚ¸\0`Àj?‘¶E◊oπÂñOu‘Q—›}}cQiZ+˙%ç¥Õ÷PŒ\0B 5<29éÙ-s/—öË´ÜÁ\r∑é cÁã6©ù?ÒHÎà›C,RpY|áã]ºÂ7Õ[÷ÿ$]7.=Û–£µΩ7@È£ˆ Q“\0p}gg\'ÄçååPEU/Å&Uch€¥\\ã{Xç∑\0‘”P·j	â\'[JóÑƒ[«øa¢•ÈÓ^ÃNüx¯Eô–¯é0,Â$7Ø&T+3äBÀ ]ı´bœ‘Õ‚WK⁄£‘û¨‹á0∑(ä[Ôæ˚nRñe+|ƒãI≥fÕj˜7Ÿö3≤FMÍï”dt1$»™˙*áùõèokiQ\ZËàv:‚¡ı:°≠?˘ wt˝GfœçSà≈€$ˆˆÄñ)∆‹ı=âﬂ!®y¯“ä§EëZÕ|h˙ÙÈ/âÌ≤À.H≤#é8IJ™∑E†HöW˘≠’@öº¸Ñ{@à‚wBO˙J5,$Mß|92, l\\ˇ˙4\nåkD∂Y˛ºVã¬éoÒ•\Z!i–≠8{S›é–ß∂ñ¥oUàXé&©	\\WØ◊´˛ﬂ\\õ˝◊“M7›‘nˆ¶∑≠oeˆ¥Ÿ* ˝ÓÚÌ¯Û‰ô -d„ª:ñK‹€æ∂BD◊GwÏ‹rì˛Åé‘$Ñ˛y≥ız–¶mÁ<Ãüz7®\'ìy◊èp˘õGÌ{Ç§KTt=8√Ôrº1[RWõ/*èñtÎ¸˘Û~”õﬁDJIó\\r…K–ÏŸ≥ô1cÜôYQn\\wh˚o£U˛ıÄô≠ÆI\0∑-∏ç‹fI˛ÕÚ–/î?l)\'∏GIbÍå8∞ıúuTπo¶=>±WØ3Öıïæ±µuk’·=Ωq¡Üˆg+Ûç\\π\'\\1ö§oOü>ù[nπ%ºò˚¢—T ZøÃl#IojlêT§înü3g)•±A:†g¿˝Ÿ¡Ñ◊ä_H<Ëéª#wÇª‰≤#{∫˚˜5wˆπﬁ¨U˚(∂9¸Åu„ád§F0\n1„¶ëŒd˙ä§©e∞`e¿jíŒºßgá˘∑\\˚:·≈%mI+≈hù’`°ô˝*ÑV}üªs¯·áø$ Mö‘:9ò0aÇI⁄M“Êm€$=<00Ñ§’@≤UMÕ#8…«/Roˇ¥cÅ≥Yµ*`Å§˜¸VëRV4y∂ﬁKâG.{·çS[ÕπOÃ∞h\n1\')ß`úÃ Ãäó[cæ¯ÌYgwÛuÈäû‡CˇÏ∆ÿ®\'wwwü>88™äw\'À2.ªÏ≤ıŒ·áNπƒm⁄¥iZºxÒç¿û¨¨\n¿e&L8rÈ“•ƒW·mï›˝óÕÃ¶Ü)+ÆBz…êR9:“∆¿u¿ﬂIJ	¨Î°—π9\0õ˛Ë”ûC‰·mÊS#áëFƒ•î2;FËd_NWuÉr}⁄E„\r#ß*¯–^ªï⁄€Øïøü644tRJ…õÕ¶J\rc—¢Ey‰ëÎ†C9Ñ°°!$cå!-Z¥h?I{∂˘’Í§¯«ÛÁœ\'∆ä¢`Ls∞≈aOBÔà,%ZÚ≈I:´≠ZH.≈“oÂ“\r¿~rdf>~˛öR\n\0”fﬂ√÷≥üﬂWm1ÎQ∂8|.\0[Œù¶öíª92Ÿg%ùSTòê câ/x-¸·5v]h–€)ÈÛ≠˜-¨ª)ÕûJøî$}!∆X\"∫§l∆å\0zË°Î\r$3£,Æåw›uW*aNoÀ2TE1r˜ﬂLò0ÅÚ®bï˚¨≤ô⁄r≥áxj…∆8xAÀá¸ 	›·Ω¥™=€Îô0¯N0€Õ§s\rÊÉ‰ç¨ãöè‡æŸ!˜µÍLÕe≈}≤ÍÖ#X ,\n\\Q‰lr-+NÃa’û• ÄÔ\'ı\\0¡Á≈ûKfv∏§]XµÉO¨Zﬁ[v~∂^Øo|x¶øø?fYÊ=ÙêfœûÕ»»›››\\~˘Â0˝ËG…Z˘h ∆±–l6”.ªÏR+k∂n3ÀE)H◊Ùˆˆ.\Z\Z û{Óπ¢,Ã[ìnÓ€ö±ıÜ!•T§§èªx“ÀDyå´‘å–1é~%Ï”jµÆ¥zQ¡°˛O;@2À	÷ ör≥ûÒ˝Xf(ôõÉ}H∆œ%ÊxY¨P¶~Ryf4◊>ıJø“;4\00SjµY∂Ö›e,£´%ı∑˘—\n®˜J˙O‡ù!Ñ$I[nπep˜P¶å8Ï∞√˛jÄ=Ù–ôuIVE(Kª∫ª∫∫ÆíÙÓ∂Zøj|¯∆≤eÀÃÀ|–◊ø˛ı5É–e€¥Dÿ•ÒΩ!\0O t®–@ôÃLæ2≈éK…≈ˆÁ\'◊_ˆ6.Â)§Û≈Ç)\n†MÀñoÇHôƒF`G‹*ÒØıïOU4]zZ¶íjÛîöˆ∆Áév‡K¿F’t)ù&ÈÕfÛP‡§∂{Tˆ?I⁄¯Å§KÕl£<œÛ<ÀÛ|ÖŒö5ã9sÊ¨8≥gœÊ‡ÉÆ¥«$’ ÕÅ≠B◊K:∞Õº—V€e‡È£çååxWW◊Ífsç>„∞$rBV3/í€˚◊\0å›H¶Që’2Z›‹s1Êõx@∆ÉÈÇWZ´]ø=c€ùUüü√xWMv€›Yüﬁ∏©ŸYü\0.fe]≈CêtXñeW6õÕ,∆x	p8≠ZÔåUZa¿ÃÁ◊π˚fFYb\\%hUu<T~¢MSVåeà\0ÎÌÌMÂ_ó§˝ÕÏT3õ¡ÿÕøq˜7áÚÇ7\Z\rÆæ˙Í’∞»÷ÏÙ<˘Ë‹b”Õ∑\rfˆ˚I\\Ü¥q˘∂öJ[-*ˇ÷zQ≈$√ﬁº±zw@üV4ƒVoƒ*ﬂπTû≠–∫$bˆ®a≥,Ë∂Õ˝∆˙åÙõf¨á∑Áî¶-òôIr3ã¿Õí˛çVq|J)cú(ÈÉ¥^ƒUS´lâúffgGîu?-KÉWÄB†ßßá–’’µ\"kmfLô2EÀñ-´ÆuI‰yﬁº¯àôΩΩ“G∞¯≠Ê≤–’’µ¬ó≠µ&Mü3üÆÙ,ú˚õΩzßËNÏj∆•¥˙Ä*âØ¥htük5jåÁ⁄œ_)m‚Nfô◊xm¯fÁ¯‚±Ã^gf◊√j/.\Z\0ﬁ(ÈÓcpØ≤BÍ	!\\\rºèU˚¨*ﬁ⁄_I–‹cfwJ˙Iˇ]´’û˚˙◊øût–Aï∆¨–®F£AWWWå1ˆ§îﬁ\0ÏK´Oi«∂µÛyfv$p©ª«,ÀíªsÂïWæ0ê*ö9Áa-ZÃ¯IΩX\n—\nÛ‘È\nGï¶dªQ¨M˚‚hj◊ ƒxvR3ˆˆoßüunoq˜◊K∫ñVomj”∫™+ÔË„Ö)•0a¬_æ|9f‹›ÎızGûÁîëùèˆ«eœPb’Æ=—::xúVG˘SíöY?–!©€ÃfJ⁄ŸÃ∂•’Â—∆X›ÇﬂÁ∆è-˚ïeôÃå˝◊˝Î@ÿ|Œ˝©‡5áÌ»ÔØ∏?ê‘\nC‹\')p\0≤ΩÔ\0b’[ˆ’∂†—ö§Í¬ïÙs3ù=¢i7-©MÖ•pp˜¡ƒ>,È3€∞\n⁄ªÈ$]]≈ÏzΩû‹›\'Oû¨•KóV\0ÑzΩÓEQêR:¯¢§Z{ãd[Cÿﬂ\"hÌs´Ÿπ˙€≈W]u’ˇ9‰êC,•Ñô)Ñ¿UW]µ∆õÆ5#3ªKF3áŒöë í<)Éº?´g=i\'\'Ïûà{◊hÏ	Ínaºè∞¯±I◊Mj>p˚Ω=ÔZÊ∆±æ?ç\"õbÏ+mwd’~§ 4ﬁ‡ÓÔÎÍÍ\Z*Î®ΩÚ%m˛√Ä*ƒ};p!≠ÜF9Ù5Ò®1Ì˘Ã6kÜŒÓÓÓ>~xx@CCCÍËË`Î≠∑~ﬁ„ì,-õ|Ù>ä¨AÓƒÍ…îÕ_æcæÒ∏{yz˛N|x£√f^Wªb!báâÈ±◊÷ldá@±90©î–&0∏?(›’ó˝Êä∞Á≥ŒˇÏoãôn˜–ümπaJio‡$V6≤≠⁄Ÿ◊ö¯Ì1∆˜Êyæ8∆hUäˇﬂ¯∆\n~?ˆ±è≠òkÜóYË/–Í≈ıJÎX∑T	¿s¿ÒµZÌ´)%ÀÛú£‹ùo}Î[Ò&uÓ~˙˜3ˇ⁄Ìÿ¸ÕO3mã√\0SÏˆ£ﬁ∫?ªÚ›3\Z∑N‚Òˇ:ßÛ∑Ì÷º$Í8ÅH\"“†KÀŸÄyå≥≈Ãœ∑Ëÿ8{¸ıÜø…Ã>ÏZ:iok≥_QñkfˇB8$Ñ∞∏(ä`fnf\r\rÒ›Ô~w^+†BT◊ñÂºoìtTTTÊqÙK¨^»\ZâU3%\0ø>cf∑’j5+äÇ<œc$À≤5Î§ä6>Ïœ¸c˛%$ËÆ´∑ûöÉ\';ŸÃr∞G¿û¿Ï	â•V‚ÚN3M2ÿÿÇ÷{Ú∆ççvƒó6õÕczzzÜSJ!À2/Ì˚ò∂}÷¨YU°õoæ9è?˛∏ÖÇªßÖ∆©Sßæ8íVt÷5j—÷¸÷1ç¶›l..!\\‚ÓãÕ,öY\Z7nKñ,°´´k≠\0Z\' A+_≠T»É>®m∑›ñ<œw\r!|xÀ_a\"⁄˜LÌ!Úc¿Ò¿wFFFËÈÈ	fÊ1Fä¢‡õﬂ¸Ê_º˘@Å_¸‚Ï≥œ>q¡Çi⁄¥i’Àô6!D+Wπ+;»◊ñû~,ÈÚ,À™»òRJe¯ò÷ıRT≥Ÿ§^ØõôYûÁûÁ9ız˝˝íﬁ;∆◊º\rà*I\ZFõ3\0æú	<Yn`â1*Ñ¿‡‡‡j&Ó˘Ë#˘»\nÛ◊™6∂™©3£V´ëÁ˘Ó˛ö¬∂í∂°ïóúH+„≤¢vX<<(Èw√√√øÓÈÈ) 3++3*äÇ„Z	“zÈÄ œs∫ªªY∫t)„«è_±êµûûûWK⁄∑¥ˇ3Y˝M\"cŸ˜íÆ4≥kÀˆ}J=•D≠Vcdd‰‘N|0###ttt¥$∆›B!À2E·Óéô±xÒb¶Lô2.ÑPΩEÂıç¢(≤,kîøsﬂ}˜±”N;≈Úıirwbåc˙ §v:Ë†É»ÛºjõèEWWfF°ñR⁄ŒÃ˛ûV1∆ZÔkÌ™ÄÓ3≥;›˝63(•qEéÆ,∏ÁökÆYg<Ô∑ﬂ~tvvrı’WÛ·ò,ÀBïè\Z\Z ªªªWkëqwJkÀ»—øÊök4gŒúø˘ÿcΩÇ∞ˇ˛˚3sÊLN?˝t<@kY-´‚÷™X^YñYJ©¥píôÒÌoõıIsÊÃ°øøükØΩñY≥fëÁπïf◊FÛW.^sÕ5úx‚â‹~˚Ì‹|ÛÕÎîüı^>s»!ápÂïW2{ˆl´ék´«‚°JÄ:@åëo}Î[x‡ÅÎT{^¶óÈezô^¶ˇQÙˇ\0≤.ı÷)C‹|\0\0\0%tEXtdate:create\02014-12-04T00:47:50-05:00X»O\0\0\0%tEXtdate:modify\02014-12-04T00:47:50-05:00ipÛ\0\0\0\0IENDÆB`Ç','image/png','STU','EMP','2015-05-27 15:15:15',1,'2015-05-28 15:29:12',1);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(50) NOT NULL,
  `section_batch_id` int(11) NOT NULL,
  `intake` int(5) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`),
  UNIQUE KEY `section_name` (`section_name`,`section_batch_id`),
  KEY `section_batch_id` (`section_batch_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`section_batch_id`) REFERENCES `batches` (`batch_id`),
  CONSTRAINT `section_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `section_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'MCA-Section-01',1,60,'2015-05-27 15:28:16',1,NULL,NULL,0),(2,'BCA-Section-01',2,60,'2015-05-27 15:29:11',1,NULL,NULL,0),(3,'MSCIT-Sectio-01',3,60,'2015-05-27 15:30:36',1,NULL,NULL,0),(4,'BSCIT-Section-01',4,60,'2015-05-27 15:32:34',1,NULL,NULL,0),(5,'MBA-Section-01',5,60,'2015-05-27 15:33:32',1,NULL,NULL,0);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(35) NOT NULL,
  `state_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name` (`state_name`,`state_country_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `state_country_id` (`state_country_id`),
  CONSTRAINT `state_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `state_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `state_ibfk_3` FOREIGN KEY (`state_country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Gujarat',1,'2015-05-27 15:20:18',1,NULL,NULL,0),(2,'Maharashtra',1,'2015-05-27 15:20:29',1,NULL,NULL,0),(3,'New York',2,'2015-05-27 15:20:38',1,NULL,NULL,0),(4,'Melborne',3,'2015-05-27 15:20:49',1,NULL,NULL,0),(5,'New Jersey',2,'2015-05-27 16:18:02',1,NULL,NULL,0),(6,'Bedfordshire',4,'2015-05-27 16:19:49',1,NULL,NULL,0),(7,'Cornwall',4,'2015-05-27 16:20:03',1,NULL,NULL,0),(8,'New South Wales',3,'2015-05-27 16:20:42',1,NULL,NULL,0),(9,'California',2,'2015-05-28 11:22:06',1,NULL,NULL,0);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_address`
--

DROP TABLE IF EXISTS `stu_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_address` (
  `stu_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_cadd` varchar(255) DEFAULT NULL,
  `stu_cadd_city` int(11) DEFAULT NULL,
  `stu_cadd_state` int(11) DEFAULT NULL,
  `stu_cadd_country` int(11) DEFAULT NULL,
  `stu_cadd_pincode` int(6) DEFAULT NULL,
  `stu_cadd_house_no` varchar(25) DEFAULT NULL,
  `stu_cadd_phone_no` varchar(25) DEFAULT NULL,
  `stu_padd` varchar(255) DEFAULT NULL,
  `stu_padd_city` int(11) DEFAULT NULL,
  `stu_padd_state` int(11) DEFAULT NULL,
  `stu_padd_country` int(11) DEFAULT NULL,
  `stu_padd_pincode` int(6) DEFAULT NULL,
  `stu_padd_house_no` varchar(25) DEFAULT NULL,
  `stu_padd_phone_no` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`stu_address_id`),
  KEY `stu_cadd_city` (`stu_cadd_city`),
  KEY `stu_cadd_state` (`stu_cadd_state`),
  KEY `stu_cadd_country` (`stu_cadd_country`),
  KEY `stu_padd_city` (`stu_padd_city`),
  KEY `stu_padd_state` (`stu_padd_state`),
  KEY `stu_padd_country` (`stu_padd_country`),
  CONSTRAINT `stu_address_ibfk_13` FOREIGN KEY (`stu_cadd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `stu_address_ibfk_14` FOREIGN KEY (`stu_cadd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `stu_address_ibfk_15` FOREIGN KEY (`stu_cadd_country`) REFERENCES `country` (`country_id`),
  CONSTRAINT `stu_address_ibfk_16` FOREIGN KEY (`stu_padd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `stu_address_ibfk_17` FOREIGN KEY (`stu_padd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `stu_address_ibfk_18` FOREIGN KEY (`stu_padd_country`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_address`
--

LOCK TABLES `stu_address` WRITE;
/*!40000 ALTER TABLE `stu_address` DISABLE KEYS */;
INSERT INTO `stu_address` VALUES (1,'50 A, Hauz Khas Village (3rd Floor)',1,1,1,342376,'50','(0234)4345565','6 Hamid Road, City Station',3,2,1,456734,'6','(022)2345687'),(2,'259-A West 55th Street, New York, ML, 10019',4,3,2,10019,'259','(0234)4345565','259-A West 55th Street, New York, ML, 10019',4,3,2,10019,'259','(0234)4345565'),(3,'JU-390. It first flew in Bodo',4,3,2,10035,'390','(0234)6575565','59-A West 55th Street, New York',4,3,2,10019,'59','(0234)4345565'),(4,'Flat No. 100, Triveni Apartments, Pitam Pura',9,2,1,400876,'100','(0234)4345000','15, Red Cross Street, Agripada',3,2,1,400008,'15','(022)2345687'),(5,'Friends Au Pair Agency, 2 Fairmile Avenue',11,5,2,10098,'2','(0934)4345565','Northgate House, 21-23 Valpy Street',15,8,3,456734,'100','(0282)2345681'),(6,'300, Lane Number 9, Manekbaug Society, Ambawadi',1,1,1,380015,'300','(079)24345565','Government Quarters AMTS Bus Stop, Surendra Mangaldas Road, Nehru Nagar, H Colony',1,1,1,380006,'12','(0792)2345687'),(7,'16, Warje Malwadi Road, Bhalekar Chawl, Erandwane',8,2,1,411004,'16','(0223)4345000','5 Acacia Crescent, WIGAN, WN6 8QZ',4,3,2,10019,'5','(0792)2345687'),(8,'1, Camp Road, Haripura, Asarwa',1,1,1,380015,'1','(079)24345565','Shahibaug, Bhadreshwar Society, Kazipur Dariyapur',9,2,1,400023,'A12','(0224)2345681'),(9,'Pedestrian Overpass, Red Hills, Lakdikapul,',6,1,1,361001,'34','(0288)24345565','670, Mahatma Gandhi Road, Choithram Mandi, Imli Bazaar',10,2,1,400045,'670','(0224)2347899'),(10,'3 Moffat Road, New south wales',15,8,3,20035,'3','(0034)4345565','Opp. PO Box  Ng2 6Tw, 22 Grange Park, West Bridgford',4,3,2,10019,'12','(0934)4345585'),(11,'8, CN Complex, Sardar Road, Thakkarbapa Nagar',2,1,1,390015,'8','(0798)4345565','A 237, Okhla I, Pocket A, Okhla Phase I, Okhla Industrial Area',10,2,1,430456,'A-237','(02324)2347899'),(12,'B-1/492 Janakpuri',2,1,1,342376,'B-1','(0234)4345565','12/3 Kalkaji Extension, Opp. Nehru Place',8,2,1,456734,'12','(022)2345687'),(13,'156, Bhagat Singh Market, Near Gole Market, Ahmedabad',1,1,1,342344,'12','','174-176 Somdutt Chambers II, 9 Bhikaji Cama Place.',3,2,1,345456,'100',''),(14,'Open Guarden, JP Office, Vaibhav Street',4,3,2,342344,'134','(0234)4345564','Open Guarden, JP Office, Vaibhav Street',4,3,2,342344,'134','(022)2345681'),(15,'300 BOYLSTON AVE E, SEATTLE WA 98102, USA',4,3,2,342344,'23','(0234)4345565','100 MAIN ST, PO BOX 1022, SEATTLE WA 98104, USA',4,3,2,345456,'100','(022)2345687');
/*!40000 ALTER TABLE `stu_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_category`
--

DROP TABLE IF EXISTS `stu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_category` (
  `stu_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_category_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_category_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `stu_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_category`
--

LOCK TABLES `stu_category` WRITE;
/*!40000 ALTER TABLE `stu_category` DISABLE KEYS */;
INSERT INTO `stu_category` VALUES (1,'OPEN','2015-05-27 15:45:15',1,NULL,NULL,0),(2,'ST','2015-05-27 15:45:22',1,NULL,NULL,0),(3,'NRI','2015-05-27 15:45:26',1,NULL,NULL,0),(4,'OBC','2015-05-27 15:45:32',1,NULL,NULL,0),(5,'NTSF','2015-05-27 15:45:41',1,NULL,NULL,0);
/*!40000 ALTER TABLE `stu_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_docs`
--

DROP TABLE IF EXISTS `stu_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_docs` (
  `stu_docs_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_docs_details` varchar(100) DEFAULT NULL,
  `stu_docs_category_id` int(11) NOT NULL,
  `stu_docs_path` varchar(150) NOT NULL,
  `stu_docs_submited_at` datetime NOT NULL,
  `stu_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `stu_docs_stu_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`stu_docs_id`),
  KEY `created_by` (`created_by`),
  KEY `stu_docs_stu_master_id` (`stu_docs_stu_master_id`),
  KEY `stu_docs_category_id` (`stu_docs_category_id`),
  CONSTRAINT `stu_docs_ibfk_1` FOREIGN KEY (`stu_docs_stu_master_id`) REFERENCES `stu_master` (`stu_master_id`),
  CONSTRAINT `stu_docs_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_docs_ibfk_3` FOREIGN KEY (`stu_docs_category_id`) REFERENCES `document_category` (`doc_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_docs`
--

LOCK TABLES `stu_docs` WRITE;
/*!40000 ALTER TABLE `stu_docs` DISABLE KEYS */;
INSERT INTO `stu_docs` VALUES (1,'SSC',1,'14-1-468637784.docx','2015-05-27 16:45:16',0,14,1),(2,'SSC',1,'13-1-1391757094.docx','2015-05-27 18:15:19',0,13,1),(3,'BC',4,'13-4-172264519.docx','2015-05-27 18:16:16',0,13,1),(4,'SSC',1,'12-1-747713014.docx','2015-05-27 18:25:39',0,12,1),(5,'BC',4,'12-4-858392360.docx','2015-05-27 18:35:02',0,12,1),(6,'MC',6,'13-6-1327319811.docx','2015-05-28 11:21:47',0,13,1),(7,'LC',3,'1-3-1161433767.docx','2015-05-28 11:23:32',0,1,1),(8,'MC',6,'1-6-244276779.docx','2015-05-28 11:23:40',0,1,1),(9,'MC',6,'2-6-212908677.docx','2015-05-28 12:04:01',1,2,1),(10,'LC',3,'3-3-332293282.docx','2015-05-28 12:16:54',0,3,1),(11,'LC',3,'4-3-134978381.docx','2015-05-28 12:26:39',0,4,1),(12,'S.S.C',1,'5-1-476313236.docx','2015-05-28 12:37:55',1,5,1),(13,'S.S.C',1,'6-1-91235856.docx','2015-05-28 12:46:25',0,6,1),(14,'LC',3,'7-3-818124661.docx','2015-05-28 12:53:05',0,7,1),(15,'S.S.C',1,'8-1-473144361.docx','2015-05-28 13:53:29',0,8,1),(16,'LC',3,'9-3-287748079.jpg','2015-05-28 14:11:31',0,9,1),(17,'BC',4,'10-4-1314396191.docx','2015-05-28 14:21:03',0,10,1),(18,'BC',4,'11-4-1339498986.docx','2015-05-28 14:30:20',0,11,1);
/*!40000 ALTER TABLE `stu_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_guardians`
--

DROP TABLE IF EXISTS `stu_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_guardians` (
  `stu_guardian_id` int(11) NOT NULL AUTO_INCREMENT,
  `guardian_name` varchar(65) DEFAULT NULL,
  `guardian_relation` varchar(30) DEFAULT NULL,
  `guardian_mobile_no` bigint(12) DEFAULT NULL,
  `guardian_phone_no` varchar(25) DEFAULT NULL,
  `guardian_qualification` varchar(50) DEFAULT NULL,
  `guardian_occupation` varchar(50) DEFAULT NULL,
  `guardian_income` varchar(50) DEFAULT NULL,
  `guardian_email` varchar(65) DEFAULT NULL,
  `guardian_home_address` varchar(255) DEFAULT NULL,
  `guardian_office_address` varchar(255) DEFAULT NULL,
  `is_emg_contact` tinyint(1) NOT NULL DEFAULT '0',
  `guardia_stu_master_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_guardian_id`),
  UNIQUE KEY `guardian_email` (`guardian_email`),
  KEY `guardia_stu_master_id` (`guardia_stu_master_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `stu_guardians_ibfk_1` FOREIGN KEY (`guardia_stu_master_id`) REFERENCES `stu_master` (`stu_master_id`),
  CONSTRAINT `stu_guardians_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_guardians_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_guardians`
--

LOCK TABLES `stu_guardians` WRITE;
/*!40000 ALTER TABLE `stu_guardians` DISABLE KEYS */;
INSERT INTO `stu_guardians` VALUES (1,'Henwanxu','Uncle',9898006757,'0433-3234766','M.Sc','Business','200000','henwan@gmail.com','SMALLSYS INC,\r\n795 E DRAGRAM,\r\nTUCSON AZ 85705, USA','MEGASYSTEMS INC,\r\nSUITE 5A-1204, 799 E DRAGRAM,\r\nTUCSON AZ 85705, USA',1,15,'2015-05-27 16:13:33',1,NULL,NULL,0),(2,'BhavinBhai','Relative',9898006757,'0233-3234766','B.Tech','Business','200000','bhavin_un2@yahoo.com','','',1,13,'2015-05-27 17:57:11',1,NULL,NULL,0),(3,'Mamtaben','Mother',88888756757,'','','House Wife','',NULL,'','',0,13,'2015-05-27 17:57:35',1,NULL,NULL,0),(4,'NavinBhai','Uncle',9898006757,'0233-32344567','M.A','Business','100000','navin_54@gmail.com','570 Main Bazar, Pahar Ganj, New Delhi ‚Äì 110 055.','174-176 Somdutt Chambers II, 9 Bhikaji Cama Place, New Delhi ‚Äì 110 066.',1,12,'2015-05-27 18:19:38',1,NULL,NULL,0),(5,'Henwanxu','Uncle',9898006757,'0233-3238766','M.Sc','Self Employee','100000','henwanzz@gmail.com','H-1/84 RIICO Ind. Area, FA','T ‚Äì 13, Green Park Extension, CA, ZA',1,14,'2015-05-28 10:21:22',1,NULL,NULL,0),(6,'Mamtaben','Mother',9898006757,'0233-3234766','12th Pass','House Wife','','mam_b.a@gmail.com','B-149, Lajpat Nagar-I, Pune, Maharashtra, India','B-149, Lajpat Nagar-I, Pune, Maharashtra, India',1,1,'2015-05-28 11:50:06',1,'2015-05-28 11:50:15',1,0),(7,'Jhonson Kair','Father',9898045657,'0433-3234762','B.Sc','Govt. Employee','200000','jhonson.k@gmail.com','The Empire State Building, 350 5th Ave, New York, NY 10118','Dakota building, at 1 West 72nd St., New York.',1,2,'2015-05-28 12:01:42',1,NULL,NULL,0),(8,'Mellina Ray','Relative',9898006757,'0433-32034762','M.Sc','Employee','100000','mellina_r@gmail.com','5844 South Oak Street \r\nChicago, Illinois 60667','358 South Oak Street \r\nChicago, Illinois 60667 ',1,3,'2015-05-28 12:13:02',1,NULL,NULL,0),(9,'BhavinBhai','Uncle',8888875675,'0253-23234446','B.A','Bussiness','200000','bhavin_u2@yahoo.com','6 Hamid Road, City Station, Ahmedabad, Gujarat, India','156, Bhagat Singh Market, near Gole Market, Gandhinagar, Gujarat, India',1,4,'2015-05-28 12:20:52',1,NULL,NULL,0),(10,'Jhonson Kair','Relative',9898006757,'0233-3234766','MBA','Business','200000','ew_parent@gmail.com','59-A West 55th Street, New York, NY, 10019.','59-A West 55th Street, New York, NY, 10019.',1,5,'2015-05-28 12:31:21',1,NULL,NULL,0),(11,'NavinBhai','Father',9898006757,'0233-3234766','MCA','Software Developer','2000000','navin_sf_dev@gm.com','124, Shobhapur, Kasba Peth, Pune, Maharashtra 411011, India','Metro Link/Mumbai Bus Service, Shobhapur, Pune, Maharashtra 411037, India',1,6,'2015-05-28 12:40:50',1,NULL,NULL,0),(12,'Rushikeshbhai','Uncle',9898006757,'0233-3238766','M.Sc','Self Employee','200000','rushi.msc@fm.com','Ellenor Centre, St. Ronans View, DARTFORD','87 Allport Lane, WIRRAL, CH62 7HL',1,7,'2015-05-28 12:50:12',1,NULL,NULL,0),(13,'Kavita Ruparel','Mother',9898006757,'0233-3234766','B.A','Teacher','100000','kavita_r@gmail.com','Kavita Complex, TOI Press Road, Shyamal, Ahmedabad, Gujarat, India','Shilp Sddhi Flats Bus Stop, New Times Of India Press Road, Vejalpur, Ahmedabad, Gujarat 380015, India',1,8,'2015-05-28 13:51:03',1,NULL,NULL,0),(14,'BhavinBhai Marty','Father',8888875675,'0433-3234766','M.Tech','Engineer','200000','bhavin_er.marty@gmail.com','5-1-304, Koti Main Road, Subhash Nagar, Badi Chowdi, Koti, Hyderabad, Telangana 500095, India','Hyderabad Deccan, Public Garden Road, Devi Bagh, Red Hills, Nampally, Hyderabad, Telangana 500004, India',1,9,'2015-05-28 14:05:47',1,NULL,NULL,0),(15,'Hetal Katariya','Father',9898006757,'0433-3234766','BCA','Bank Clark','100000','hetal.kat@hkg.com','72 Lancaster Road, SOUTHALL','Lewis Glass & Aluminum, 9 Jubilee Avenue, LONDON',1,10,'2015-05-28 14:15:57',1,NULL,NULL,0),(16,'Jhonson Sharma','Uncle',9898006757,'0433-323400','B.Surj.L','Technician','100000','jhon_sharma@bbh.co','APMC Fruits and Vegetable Market, Sector 19, Turbhe, Navi Mumbai, Maharashtra 400703, India','Sector 19, Vashi, Navi Mumbai, Maharashtra 400703, India',1,11,'2015-05-28 14:27:12',1,NULL,NULL,0);
/*!40000 ALTER TABLE `stu_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_info`
--

DROP TABLE IF EXISTS `stu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_info` (
  `stu_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_unique_id` int(11) NOT NULL,
  `stu_title` varchar(5) DEFAULT NULL,
  `stu_first_name` varchar(50) NOT NULL,
  `stu_middle_name` varchar(50) DEFAULT NULL,
  `stu_last_name` varchar(50) NOT NULL,
  `stu_gender` varchar(10) DEFAULT NULL,
  `stu_dob` date NOT NULL,
  `stu_email_id` varchar(65) DEFAULT NULL,
  `stu_bloodgroup` varchar(10) DEFAULT 'Unknown',
  `stu_birthplace` varchar(45) DEFAULT NULL,
  `stu_religion` varchar(50) DEFAULT NULL,
  `stu_admission_date` date NOT NULL,
  `stu_photo` varchar(150) DEFAULT NULL,
  `stu_languages` varchar(255) DEFAULT NULL,
  `stu_mobile_no` bigint(12) DEFAULT NULL,
  `stu_info_stu_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_info_id`),
  UNIQUE KEY `stu_unique_id` (`stu_unique_id`),
  UNIQUE KEY `stu_email_id` (`stu_email_id`),
  KEY `stu_info_stu_master_id` (`stu_info_stu_master_id`),
  CONSTRAINT `stu_info_ibfk_3` FOREIGN KEY (`stu_info_stu_master_id`) REFERENCES `stu_master` (`stu_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_info`
--

LOCK TABLES `stu_info` WRITE;
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
INSERT INTO `stu_info` VALUES (1,1,'Mr.','Ankit','M','Narthi','Male','1992-05-16','ankit_narthi@gmail.com','AB-','Ahmedabad','Hindu','2015-06-01',NULL,'English,Gujarati',7695865796,1),(2,2,'Mr.','Kelvin','G','Kair','Male','1995-05-18','kelvin-kair@gmail.com','A+','USA','Christianity','2015-06-01',NULL,'English,German',8957345678,2),(3,3,'Ms.','Elena','G','Kaith','Female','1995-05-16','elenag@hotmail.com','O+','USA','Christianity','2015-06-02',NULL,'English,French',9068545678,3),(4,4,'Ms.','Nikita','N','Shah','Female','1994-05-19','nikita_shah@gmail.com','AB+','Ahmedabad','Hindu','2015-06-02',NULL,'Gujarati,English,Hindi,French',8957345678,4),(5,5,'Mr.','Elen','M','Watson','Male','1992-02-16','elen.wat@yahoo.com','AB+','England','Christianity','2015-06-02',NULL,'English,French',7695865796,5),(6,6,'Ms.','Anita','M','Kamriya','Female','1994-06-03','anita@gmail.com','AB-','Ahmedabad','Hindu','2015-06-03',NULL,'Gujarati,English',9755665655,6),(7,7,'Mr.','Mehul','N','Patel','Male','1995-05-10','mehul_p@gmail.com','B-','USA','Hindu','2015-06-01',NULL,'English,Gujarati',7695865796,7),(8,8,'Ms.','Kinjal','N','Ruparel','Female','1995-05-16','kinjal@yahoo.com','AB+','Ahmedabad','Hindu','2015-06-08',NULL,'English,Hindi,Gujarati',8957345678,8),(9,9,'Mr.','Nayan','G','Marty','Male','1993-08-19','nayan.mty@gmail.com','AB+','Ahmedabad','Hindu','2015-06-10',NULL,'English,Gujarati,Hindi',7695865796,9),(10,10,'Ms.','Kiran','L','Katariya','Female','1993-02-28','kiran_lk@yahoo.com','O+','New York','Hindu','2015-06-01',NULL,'English,French',8957345678,10),(11,11,'Mr.','Rahul','W','Sharma','Male','1995-10-18','rahul.sharma@gmail.com','AB+','Ahmedabad','Hindu','2015-05-30',NULL,'English,Gujarati,Hindi,French,Russian',8957345678,11),(12,12,'Ms.','Brinzal','M','Thumar','Female','1992-09-16','brinzal@yahoo.com','AB+','Ahmedabad','Hindu','2015-05-30',NULL,'English,Hindi',7695865796,12),(13,13,'Mr.','Kishan','M','Kumar','Male','1993-06-01','kishan@gml.com','B+','Ahmedabad','Hindu','2015-05-30',NULL,'English,Hindi,Gujarati',7695865797,13),(14,14,'Mr.','Zakain','G','Zuila','Male','1993-05-21','zakain@gmail.com','B-','USA','Christianity','2015-06-15',NULL,'English,German',7695865796,14),(15,15,'Ms.','Nash','H','Kabunda','Female','1994-11-30',NULL,'A+','Ahmedabad','Jainism','2015-06-03',NULL,'French,English',7695865796,15);
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_master`
--

DROP TABLE IF EXISTS `stu_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_master` (
  `stu_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_master_stu_info_id` int(11) NOT NULL,
  `stu_master_user_id` int(11) NOT NULL,
  `stu_master_nationality_id` int(11) DEFAULT NULL,
  `stu_master_category_id` int(11) DEFAULT NULL,
  `stu_master_course_id` int(11) NOT NULL,
  `stu_master_batch_id` int(11) NOT NULL,
  `stu_master_section_id` int(11) NOT NULL,
  `stu_master_stu_status_id` int(11) NOT NULL DEFAULT '0',
  `stu_master_stu_address_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_master_id`),
  UNIQUE KEY `stu_master_stu_info_id` (`stu_master_stu_info_id`),
  UNIQUE KEY `stu_master_user_id` (`stu_master_user_id`),
  KEY `stu_master_nationality_id` (`stu_master_nationality_id`),
  KEY `stu_master_category` (`stu_master_category_id`),
  KEY `stu_master_course_id` (`stu_master_course_id`),
  KEY `stu_master_batch_id` (`stu_master_batch_id`),
  KEY `stu_master_section_id` (`stu_master_section_id`),
  KEY `stu_master_stu_address_id` (`stu_master_stu_address_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `stu_master_stu_info_id_fng` (`stu_master_stu_info_id`),
  CONSTRAINT `stu_master_ibfk_12` FOREIGN KEY (`stu_master_stu_info_id`) REFERENCES `stu_info` (`stu_info_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_master_ibfk_13` FOREIGN KEY (`stu_master_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_master_ibfk_14` FOREIGN KEY (`stu_master_nationality_id`) REFERENCES `nationality` (`nationality_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_15` FOREIGN KEY (`stu_master_category_id`) REFERENCES `stu_category` (`stu_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_16` FOREIGN KEY (`stu_master_course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_17` FOREIGN KEY (`stu_master_batch_id`) REFERENCES `batches` (`batch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_18` FOREIGN KEY (`stu_master_section_id`) REFERENCES `section` (`section_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_20` FOREIGN KEY (`stu_master_stu_address_id`) REFERENCES `stu_address` (`stu_address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_master_ibfk_21` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_22` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_master`
--

LOCK TABLES `stu_master` WRITE;
/*!40000 ALTER TABLE `stu_master` DISABLE KEYS */;
INSERT INTO `stu_master` VALUES (1,1,2,1,1,1,1,1,0,1,'2015-05-27 15:46:54',1,'2015-05-28 11:48:16',1,0),(2,2,3,3,1,2,2,2,1,2,'2015-05-27 15:49:17',1,'2015-05-28 11:57:02',1,0),(3,3,5,2,1,3,3,3,0,3,'2015-05-27 15:52:16',1,'2015-05-28 12:09:32',1,0),(4,4,6,1,1,4,4,4,0,4,'2015-05-27 15:54:31',1,'2015-05-28 12:18:44',1,0),(5,5,7,3,1,5,5,5,0,5,'2015-05-27 15:56:35',1,'2015-05-28 12:29:35',1,0),(6,6,8,1,1,1,1,1,0,6,'2015-05-27 15:58:01',1,'2015-05-28 12:38:51',1,0),(7,7,9,1,1,1,1,1,0,7,'2015-05-27 15:58:55',1,'2015-05-28 12:47:58',1,0),(8,8,10,1,1,1,1,1,0,8,'2015-05-27 15:59:46',1,'2015-05-28 13:47:42',1,0),(9,9,11,1,1,1,1,1,0,9,'2015-05-27 16:00:36',1,'2015-05-28 14:03:25',1,0),(10,10,12,3,3,2,2,2,0,10,'2015-05-27 16:03:10',1,'2015-05-28 14:12:52',1,0),(11,11,13,1,1,3,3,3,0,11,'2015-05-27 16:04:12',1,'2015-05-28 14:22:41',1,0),(12,12,14,1,1,4,4,4,0,12,'2015-05-27 16:05:04',1,'2015-05-27 18:18:03',1,0),(13,13,16,1,NULL,5,5,5,0,13,'2015-05-27 16:05:57',1,'2015-05-28 11:12:01',1,0),(14,14,17,4,3,2,2,2,0,14,'2015-05-27 16:07:27',1,'2015-05-28 10:18:35',1,0),(15,15,18,NULL,3,3,3,3,0,15,'2015-05-27 16:09:01',1,'2015-05-27 18:58:02',1,0);
/*!40000 ALTER TABLE `stu_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_status`
--

DROP TABLE IF EXISTS `stu_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_status` (
  `stu_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_status_name` varchar(50) NOT NULL,
  `stu_status_description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_status_id`),
  UNIQUE KEY `stu_status_name` (`stu_status_name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `stu_status_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_status_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_status`
--

LOCK TABLES `stu_status` WRITE;
/*!40000 ALTER TABLE `stu_status` DISABLE KEYS */;
INSERT INTO `stu_status` VALUES (1,'Rejoin','Rejoin','2015-05-27 15:43:22',1,NULL,NULL,0),(2,'Detain','Detain','2015-05-27 15:44:12',1,NULL,NULL,0),(3,'Pass out','Pass out','2015-05-27 15:44:37',1,NULL,NULL,0);
/*!40000 ALTER TABLE `stu_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login_id` varchar(65) NOT NULL,
  `user_password` varchar(150) NOT NULL,
  `user_type` char(2) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_id` (`user_login_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','f6fdffe48c908deb0f4c3bd36c032e72','A',0,'2015-05-27 15:15:15',1,NULL,NULL),(2,'STU1','9eec8bdac758e026f61eceea1643bcf6','S',0,'2015-05-27 15:46:53',1,NULL,NULL),(3,'STU2','988336da8e17651761c198904aaa4468','S',0,'2015-05-27 15:49:16',1,NULL,NULL),(4,'EMP1','2e456720df11dd2a263db708885278dd','E',0,'2015-05-27 15:49:34',1,NULL,NULL),(5,'STU3','9d181ca9c5e0be7f0eee5fdbc49502e8','S',0,'2015-05-27 15:52:16',1,NULL,NULL),(6,'STU4','8b7f68fe1bdeeea6d83a99c4c311bf17','S',0,'2015-05-27 15:54:31',1,NULL,NULL),(7,'STU5','cd1c5053334fdb94f7c30d1501cad621','S',0,'2015-05-27 15:56:35',1,NULL,NULL),(8,'STU6','77df347c204b524bd3771095bcefa07a','S',0,'2015-05-27 15:58:01',1,NULL,NULL),(9,'STU7','f1f9b64bf9cee88c7b27e74369dfa4bb','S',0,'2015-05-27 15:58:55',1,NULL,NULL),(10,'STU8','72858da985e41515fc3ea732d7ecfeb3','S',0,'2015-05-27 15:59:46',1,NULL,NULL),(11,'STU9','eed13ada411f4541fd1dbefce171bd55','S',0,'2015-05-27 16:00:36',1,NULL,NULL),(12,'STU10','182169fe3e8ae3a3f1f887f62d45451e','S',0,'2015-05-27 16:03:09',1,NULL,NULL),(13,'STU11','db58d86d9d2a2019fe975e253ff2a7e4','S',0,'2015-05-27 16:04:12',1,NULL,NULL),(14,'STU12','23be7c1a3c95ba1f6eaa9809836d8929','S',0,'2015-05-27 16:05:03',1,NULL,NULL),(15,'EMP2','71d0547b67a46cc258a5d5e42cdf8a38','E',0,'2015-05-27 16:05:39',1,NULL,NULL),(16,'STU13','9b9e9054ae3fa03db69f5ffcb31de3bf','S',0,'2015-05-27 16:05:57',1,NULL,NULL),(17,'STU14','fc6b063ad199d819d91ea8abbad75f1d','S',0,'2015-05-27 16:07:27',1,NULL,NULL),(18,'student','50d9482e20934ce6df0bf28941f885bc','S',0,'2015-05-27 16:09:01',1,'2015-05-28 15:23:18',1),(19,'EMP3','7dba0ef26119281c5b2401d1c3e438d7','E',0,'2015-05-27 16:17:58',1,NULL,NULL),(20,'EMP4','70973454ecef4dc76f57a25fcccb5dff','E',0,'2015-05-27 16:36:41',1,NULL,NULL),(21,'EMP5','67d1667c0a02dd6111f540ed67c9ef69','E',0,'2015-05-27 16:44:05',1,NULL,NULL),(22,'EMP6','b1a2a6d3a941c9beb37d90124752aa89','E',0,'2015-05-27 16:52:30',1,NULL,NULL),(23,'EMP7','904a06c1c7b35546c1306ae8d899b5f4','E',0,'2015-05-27 17:21:56',1,NULL,NULL),(24,'EMP8','3042ad16c7d7132aa812fe493020451a','E',0,'2015-05-27 17:32:07',1,NULL,NULL),(25,'EMP9','4bfc2178e2b10cf04722fad23d96338f','E',0,'2015-05-27 17:51:50',1,NULL,NULL),(26,'EMP10','372e13abd52819c24cf69b6176384713','E',0,'2015-05-28 09:52:52',1,NULL,NULL),(27,'EMP11','64d35fe5e60a341cb5fabd8c510f9388','E',0,'2015-05-28 10:04:55',1,NULL,NULL),(28,'EMP12','0232da60f0de39e94db7fd5af15237df','E',0,'2015-05-28 10:16:16',1,NULL,NULL),(29,'EMP13','3fb9df001c51f2902ab47c5f8562b91d','E',0,'2015-05-28 10:39:23',1,NULL,NULL),(30,'EMP14','53403031692143495b454aa55b99d4e4','E',0,'2015-05-28 11:12:20',1,NULL,NULL),(31,'EMP15','e28a9d86da3523c266ccd1e8fe230a41','E',0,'2015-05-28 13:03:55',1,NULL,NULL),(32,'EMP16','49798c363d34f4c2716bc5494b2b380c','E',0,'2015-05-28 13:11:32',1,NULL,NULL),(33,'employee','9c0967753a201ecde21ef29efa514761','E',0,'2015-05-28 14:42:13',1,'2015-05-28 15:23:38',1);
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

-- Dump completed on 2016-01-09 11:26:44
