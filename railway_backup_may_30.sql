-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: railway
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `canc`
--

DROP TABLE IF EXISTS `canc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canc` (
  `pnr` int(11) NOT NULL,
  `rfare` int(11) DEFAULT '0',
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canc`
--

LOCK TABLES `canc` WRITE;
/*!40000 ALTER TABLE `canc` DISABLE KEYS */;
INSERT INTO `canc` VALUES (57,1100),(58,5600),(66,0);
/*!40000 ALTER TABLE `canc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `cname` varchar(10) NOT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('AC1'),('AC2'),('AC3'),('CC'),('EC'),('SL');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classseats`
--

DROP TABLE IF EXISTS `classseats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classseats` (
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `doj` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `fare` int(11) NOT NULL,
  `seatsleft` int(11) NOT NULL,
  PRIMARY KEY (`trainno`,`sp`,`dp`,`doj`,`class`),
  KEY `class` (`class`),
  KEY `sp` (`sp`,`dp`),
  KEY `dp` (`dp`),
  CONSTRAINT `classseats_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  CONSTRAINT `classseats_ibfk_3` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  CONSTRAINT `classseats_ibfk_4` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`),
  CONSTRAINT `classseats_ibfk_5` FOREIGN KEY (`class`) REFERENCES `class` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classseats`
--

LOCK TABLES `classseats` WRITE;
/*!40000 ALTER TABLE `classseats` DISABLE KEYS */;
INSERT INTO `classseats` VALUES (6,'Allahbad','Lucknow','2023-06-10','AC1',950,30),(6,'Allahbad','Lucknow','2023-06-10','AC2',750,30),(6,'Allahbad','Lucknow','2023-06-10','AC3',600,30),(6,'Allahbad','Lucknow','2023-06-10','CC',250,40),(6,'Allahbad','Lucknow','2023-06-10','EC',300,40),(6,'Allahbad','Lucknow','2023-06-10','SL',400,50),(6,'Jaipur','Allahbad','2023-06-10','AC1',1000,30),(6,'Jaipur','Allahbad','2023-06-10','AC2',800,30),(6,'Jaipur','Allahbad','2023-06-10','AC3',650,30),(6,'Jaipur','Allahbad','2023-06-10','CC',300,40),(6,'Jaipur','Allahbad','2023-06-10','EC',350,40),(6,'Jaipur','Allahbad','2023-06-10','SL',400,50),(20,'Delhi','Jaipur','2023-06-12','AC1',1500,28),(20,'Delhi','Jaipur','2023-06-12','AC2',1250,30),(20,'Delhi','Jaipur','2023-06-12','AC3',1000,30),(20,'Delhi','Jaipur','2023-06-12','SL',800,50),(23,'Madhya Pradesh','Rajasthan','2023-06-10','AC1',3000,30),(23,'Madhya Pradesh','Rajasthan','2023-06-10','AC2',2000,30),(23,'Madhya Pradesh','Rajasthan','2023-06-10','AC3',1000,30),(23,'Madhya Pradesh','Rajasthan','2023-06-10','EC',1500,50),(23,'Madhya Pradesh','Rajasthan','2023-06-14','AC1',1000,40),(23,'Madhya Pradesh','Rajasthan','2023-06-14','AC2',800,40),(23,'Madhya Pradesh','Rajasthan','2023-06-14','AC3',750,40),(23,'Madhya Pradesh','Rajasthan','2023-06-14','SL',500,50),(23,'Mumbai','Madhya Pradesh','2023-06-10','AC1',4000,30),(23,'Mumbai','Madhya Pradesh','2023-06-10','AC2',2000,30),(23,'Mumbai','Madhya Pradesh','2023-06-10','AC3',1000,30),(23,'Mumbai','Madhya Pradesh','2023-06-10','EC',1500,50),(23,'Mumbai','Madhya Pradesh','2023-06-10','SL',800,50),(23,'Mumbai','Madhya Pradesh','2023-06-14','AC1',1000,40),(23,'Mumbai','Madhya Pradesh','2023-06-14','AC2',800,40),(23,'Mumbai','Madhya Pradesh','2023-06-14','AC3',750,40),(23,'Mumbai','Madhya Pradesh','2023-06-14','SL',500,50),(23,'Rajasthan','Delhi','2023-06-10','AC1',3000,30),(23,'Rajasthan','Delhi','2023-06-10','AC2',2000,30),(23,'Rajasthan','Delhi','2023-06-10','AC3',1000,30),(23,'Rajasthan','Delhi','2023-06-10','EC',1500,50),(23,'Rajasthan','Delhi','2023-06-14','AC1',1000,40),(23,'Rajasthan','Delhi','2023-06-14','AC2',800,40),(23,'Rajasthan','Delhi','2023-06-14','AC3',450,40),(23,'Rajasthan','Delhi','2023-06-14','SL',500,50);
/*!40000 ALTER TABLE `classseats` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_on_classseats` BEFORE INSERT ON `classseats`
 FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'Check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_on_classseats` BEFORE UPDATE ON `classseats`
 FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pd`
--

DROP TABLE IF EXISTS `pd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pd` (
  `pnr` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `page` int(11) NOT NULL,
  `pgender` varchar(10) NOT NULL,
  PRIMARY KEY (`pnr`,`pname`,`page`,`pgender`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd`
--

LOCK TABLES `pd` WRITE;
/*!40000 ALTER TABLE `pd` DISABLE KEYS */;
INSERT INTO `pd` VALUES (0,'jmz',28,'M'),(58,'akhil',20,'M'),(58,'deepak',21,'M'),(58,'rahul',12,'M'),(58,'shyam',50,'M'),(59,'abhinav',20,'M'),(59,'vikas',40,'M'),(60,'mohan',20,'M'),(62,'aaaa',34,'f'),(62,'dani',22,'M'),(62,'dddd',22,'m'),(62,'deepz',34,'f'),(62,'www',28,'M'),(66,'jmz',28,'M'),(67,'jmz',28,'M'),(68,'jis',32,'f'),(69,'jis',33,'f'),(70,'jes',22,'m'),(70,'jis',33,'f'),(71,'jis',45,'f');
/*!40000 ALTER TABLE `pd` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_on_pd` BEFORE INSERT ON `pd`
 FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_on_pd` BEFORE UPDATE ON `pd`
 FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `resv`
--

DROP TABLE IF EXISTS `resv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resv` (
  `pnr` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL,
  `dp` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `tfare` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `nos` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`pnr`),
  UNIQUE KEY `UNIQUE` (`id`,`trainno`,`doj`,`status`),
  UNIQUE KEY `pnr` (`pnr`,`id`,`trainno`,`doj`,`class`,`status`),
  UNIQUE KEY `pnr_2` (`pnr`,`id`,`trainno`,`sp`,`dp`,`doj`,`tfare`,`class`,`nos`,`status`),
  KEY `FK_ID` (`id`),
  KEY `FK_TN_DOJ_C` (`trainno`,`doj`,`class`),
  KEY `class` (`class`),
  KEY `sp` (`sp`,`dp`),
  KEY `dp` (`dp`),
  CONSTRAINT `resv_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  CONSTRAINT `resv_ibfk_2` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  CONSTRAINT `resv_ibfk_3` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv`
--

LOCK TABLES `resv` WRITE;
/*!40000 ALTER TABLE `resv` DISABLE KEYS */;
INSERT INTO `resv` VALUES (66,25,12,'Chandigarh','Jaipur','2023-05-30',0,'AC1',1,'CANCELLED'),(67,25,12,'Chandigarh','Jaipur','2023-05-31',0,'AC1',1,'BOOKED'),(68,25,12,'Delhi','Mumbai','2023-06-06',0,'SL',1,'BOOKED'),(69,25,12,'Delhi','Mumbai','2023-06-10',0,'SL',1,'BOOKED'),(70,25,20,'Delhi','Jaipur','2023-06-12',3000,'AC1',2,'BOOKED'),(71,25,20,'Delhi','Jaipur','2023-06-10',0,'AC1',1,'BOOKED');
/*!40000 ALTER TABLE `resv` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_on_resv` BEFORE INSERT ON `resv`
 FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
if datediff(new.doj,curdate())<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Booking Not Possible!!!!';
end if;
SET new.status='BOOKED';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_on_resv` AFTER INSERT ON `resv`
 FOR EACH ROW begin
UPDATE classseats SET seatsleft=seatsleft-new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_on_resv` BEFORE UPDATE ON `resv`
 FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_on_resv` AFTER UPDATE ON `resv`
 FOR EACH ROW begin
if (new.status='CANCELLED' AND datediff(new.doj,curdate())<0 ) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cancellation Not Possible!!!!';
end if;

if (new.status='CANCELLED' AND datediff(new.doj,curdate())>0 )then
UPDATE classseats SET seatsleft=seatsleft+new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
 if datediff(new.doj,curdate())>=30 then 
 INSERT INTO canc values (new.pnr,new.tfare);
 end if;
 if datediff(new.doj,curdate())<30 then 
 INSERT INTO canc values (new.pnr,0.5*new.tfare);
 end if;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trainno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trainno` (`trainno`),
  KEY `sname` (`sname`),
  KEY `id` (`id`),
  KEY `distance` (`distance`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,12,'Chandigarh','01:00:12','01:00:00',0),(2,12,'Jaipur','03:45:15','03:50:00',100),(3,12,'Kolkata','05:00:00','05:15:00',300),(4,12,'Lucknow','11:50:10','12:00:00',450),(5,12,'Delhi','16:30:00','16:30:00',600),(6,13,'Jammu Kashmir','22:00:00','22:00:00',0),(7,13,'Delhi','04:00:00','04:05:00',700),(8,13,'Rajasthan','07:30:50','07:33:00',900),(9,13,'Allahbad','09:00:00','09:10:00',1700),(10,13,'Patna','11:45:00','11:47:00',2500),(11,13,'Madhya Pradesh','13:00:00','13:00:00',3600),(12,14,'Jammu Kashmir','01:00:12','01:00:12',0),(13,14,'Madras','22:00:00','22:00:00',2500),(14,15,'Delhi','16:00:00','16:00:00',0),(15,15,'Jaipur','22:45:00','22:45:00',800),(16,16,'Jaipur','03:30:00','03:30:00',0),(17,16,'Delhi','09:30:00','09:30:00',800),(18,17,'Delhi','00:00:14','00:00:14',0),(19,17,'Jaipur','16:00:00','16:10:00',500),(20,17,'Chandigarh','20:30:00','20:30:00',1200),(21,18,'Chandigarh','08:05:00','08:05:00',0),(22,18,'Jaipur','10:15:00','10:20:00',700),(23,18,'Delhi','14:00:00','14:00:00',1200),(24,6,'Jaipur','03:30:00','03:30:00',0),(25,6,'Allahbad','08:00:00','08:15:00',200),(26,6,'Lucknow','15:15:00','15:15:00',700),(27,19,'Lucknow','13:30:00','13:30:00',0),(28,19,'Allahbad','20:00:00','20:10:00',300),(29,19,'Jaipur','05:15:00','05:15:00',700),(30,20,'Delhi','10:04:00','10:04:00',0),(31,20,'Jaipur','16:00:00','16:00:00',800),(32,21,'Jaipur','20:00:00','20:00:00',0),(33,21,'Delhi','10:00:00','10:00:00',800),(34,22,'Delhi','16:35:00','16:35:00',0),(35,22,'Rajasthan','20:00:00','20:10:00',1100),(36,22,'Madhya Pradesh','03:30:00','03:33:00',1500),(37,22,'Mumbai','09:00:00','09:00:00',2300),(38,23,'Mumbai','01:00:00','01:00:00',0),(39,23,'Madhya Pradesh','05:30:00','05:40:00',1500),(40,23,'Rajasthan','15:45:00','15:50:00',2000),(41,23,'Delhi','20:30:00','20:30:00',2300),(42,24,'Tiruvananthapuram','05:20:00','05:20:00',0),(43,24,'Kollam','00:00:06','00:00:06',100),(44,24,'Kottayam','00:00:09','00:00:09',150),(45,24,'Ernakulam','00:00:11','00:00:12',250),(46,24,'Kozhikode','00:00:13','00:00:13',350),(47,24,'Kannur','00:00:14','00:00:15',425),(48,24,'Kasargode','16:00:00','16:00:00',500),(49,24,'Tiruvananthapuram','05:20:00','05:20:00',0),(50,24,'Kollam','00:00:06','00:00:06',100),(51,24,'Kottayam','00:00:09','00:00:09',150),(52,24,'Ernakulam','00:00:11','00:00:12',250),(53,24,'Kozhikode','00:00:13','00:00:13',350),(54,24,'Kannur','00:00:14','00:00:15',425),(55,24,'Kasargode','16:00:00','16:00:00',500);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  PRIMARY KEY (`sname`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Chandigarh'),(2,'Delhi'),(3,'Jaipur'),(4,'Lucknow'),(5,'Mumbai'),(6,'Allahbad'),(7,'Kolkata'),(8,'Patna'),(9,'Madras'),(10,'Jammu Kashmir'),(11,'Rajasthan'),(12,'Madhya Pradesh'),(14,'Tiruvananthapuram'),(16,'Kasargode'),(17,'Kollam'),(18,'Ernakulam'),(19,'Kottayam'),(20,'Kozhikode'),(21,'Kannur');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `trainno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Train_no',
  `tname` varchar(50) NOT NULL COMMENT 'Train_name',
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `st` time NOT NULL COMMENT 'Arrival_Time',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `dt` time NOT NULL,
  `dd` varchar(10) DEFAULT NULL COMMENT 'Day',
  `distance` int(11) NOT NULL COMMENT 'Distance',
  PRIMARY KEY (`trainno`),
  KEY `sp` (`sp`),
  KEY `dp` (`dp`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (6,'Ashram Express','Jaipur','10:00:00','Lucknow','21:30:00','Day 1',700),(12,'Shatabdi Express','Chandigarh','01:00:12','Delhi','16:30:00','Day 1',600),(13,'Harijan Express','Jammu Kashmir','22:00:00','Madhya Pradesh','13:00:00','Day2',3600),(14,'Jammu Mail Express','Jammu Kashmir','01:00:12','Madras','22:00:00','Day 1',2500),(15,'Delhi Jaipur Double Decker','Delhi','16:00:00','Jaipur','22:45:00','Day 1',800),(16,'Jaipur Delhi Double Decker','Jaipur','03:30:00','Delhi','09:30:00','Day 1',800),(17,'Delhi Chandigarh Shatabdi','Delhi','00:00:14','Chandigarh','20:30:00','Day 1',1200),(18,'Chandigarh Delhi Shatabdi','Chandigarh','08:05:00','Delhi','14:00:00','Day 2',1200),(19,'Ashram Express','Lucknow','13:30:00','Jaipur','05:15:00','Day 2',700),(20,'Frontier Express','Delhi','10:04:00','Jaipur','16:00:00','Day 1',800),(21,'Frontier Express','Jaipur','20:00:00','Delhi','10:00:00','Day 2',800),(22,'Rajdhani Express','Delhi','16:35:00','Mumbai','09:00:00','Day 2 ',2300),(23,'Rajdhani Express','Mumbai','01:00:00','Delhi','20:30:00','Day 1',2300),(24,'Vande Bharat','Tiruvananthapuram','05:20:00','Kasargode','16:00:00','DAY 1',500);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_on_train` BEFORE INSERT ON `train`
 FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
if (new.dp=new.sp) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_on_train` BEFORE UPDATE ON `train`
 FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUEMN` (`mobileno`),
  UNIQUE KEY `UNIQUEEI` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'garvitjain@gmail.com','garvit','9312201852','1994-01-01'),(5,'deepakgoel@hotmail.com','deepak','9312201853','1994-02-22'),(6,'akhilkumar@yahoo.co.in','akhil','9872231234','1994-03-04'),(7,'ayushjain@outlook.com','ayush','9810150525','1995-01-03'),(8,'aakashbharadwaj@yahoo.com','aakash','9013452635','1993-12-30'),(10,'abhinavsingh@gmail.com','abhinav','9876675567','1991-01-01'),(12,'amanmalik@hotmail.com','aman','9878876654','1997-09-08'),(19,'dhruvgosian@gmail.com','dhruv','9807890453','1965-04-01'),(20,'chiragbansal@nsitonline.com','chirag','9123456789','1960-06-02'),(21,'justine@gmail.com','ssss','1234567891','2000-06-06'),(22,'','','','0000-00-00'),(23,'vfd@vnb','dgfhf','677789893','2000-05-03'),(25,'justine123@gmail.com','123','1234567890','1995-05-09'),(26,'dddd','123','aaaa','1996-01-01'),(27,'abc@gmail.com','jis','1234567789','1999-06-21'),(29,'sdd@gfh3','zera','6574839201','1990-03-03'),(32,'sw3@gmail.com','sara','2341569870','1998-07-07'),(34,'hhjfq','isha','4536777211','1980-09-04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_on_user` BEFORE INSERT ON `user`
 FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_on_user` BEFORE UPDATE ON `user`
 FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 10:19:29
