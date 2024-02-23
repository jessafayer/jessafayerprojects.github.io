-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: inst327project
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Temporary view structure for view `companies_above_avg_salary`
--

DROP TABLE IF EXISTS `companies_above_avg_salary`;
/*!50001 DROP VIEW IF EXISTS `companies_above_avg_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `companies_above_avg_salary` AS SELECT 
 1 AS `company_id`,
 1 AS `company_avg_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` int NOT NULL,
  `company_size_from` int DEFAULT NULL,
  `company_size_to` int DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,51,200),(2,300,400),(3,50,100),(4,10,23),(5,500,600),(6,51,200),(7,30,50),(8,300,400),(9,10,15),(10,11,50),(11,51,200),(12,1001,5000),(13,501,1000),(14,100,150),(15,50,70),(16,5,20),(17,20,30),(18,250,300),(19,150,200),(20,10,20),(21,70,90),(22,50,100),(23,51,500),(24,1,10),(25,10,23),(26,101,500),(27,11,50),(28,1,5),(29,200,300),(30,7,15),(31,5,10),(32,30,50),(33,180,200),(34,200,250),(35,40,60),(36,300,500),(37,10,15),(38,20,50),(39,300,350),(40,70,80),(41,20,25),(42,80,90),(43,10,25),(44,180,250),(45,40,50),(46,300,400),(47,120,200),(48,51,200),(49,NULL,NULL),(50,25,40),(51,200,220),(52,200,280),(53,120,160),(54,2,10),(55,50,60),(56,250,280),(57,30,40),(58,800,900),(59,15,20),(60,60,80),(61,80,100),(62,6,10),(63,50,200),(64,5,15),(65,11,25),(66,20,40),(67,60,70),(68,5,50),(69,51,100),(70,300,400),(71,30,50),(72,30,50);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `company_average_salary`
--

DROP TABLE IF EXISTS `company_average_salary`;
/*!50001 DROP VIEW IF EXISTS `company_average_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_average_salary` AS SELECT 
 1 AS `company_id`,
 1 AS `avg_comp_sal`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `company_location`
--

DROP TABLE IF EXISTS `company_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_location` (
  `location_id` int NOT NULL,
  `company_id` int NOT NULL,
  KEY `fk_company_location_location1_idx` (`location_id`),
  KEY `fk_company_location_company1_idx` (`company_id`),
  CONSTRAINT `fk_company_location_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `fk_company_location_location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_location`
--

LOCK TABLES `company_location` WRITE;
/*!40000 ALTER TABLE `company_location` DISABLE KEYS */;
INSERT INTO `company_location` VALUES (1,1),(1,2),(2,3),(2,4),(2,5),(2,6),(3,7),(4,8),(5,9),(6,10),(7,11),(8,12),(9,12),(10,12),(10,13),(10,14),(11,14),(11,15),(11,16),(11,17),(12,17),(13,17),(13,18),(13,19),(13,20),(14,20),(15,20),(16,20),(17,20),(18,20),(19,20),(20,20),(21,20),(22,20),(22,21),(23,21),(23,22),(24,22),(25,22),(25,23),(25,24),(25,25),(25,26),(25,27),(25,28),(25,29),(25,30),(25,31),(25,32),(25,33),(25,34),(25,35),(25,36),(25,37),(25,38),(25,39),(25,40),(25,41),(25,42),(25,43),(25,44),(25,45),(25,46),(25,47),(25,48),(25,49),(25,50),(25,51),(25,52),(25,53),(25,54),(25,55),(25,56),(25,57),(25,58),(25,59),(25,60),(25,61),(25,62),(25,63),(25,64),(25,65),(25,66),(25,67),(25,68),(25,69),(26,69),(27,70),(28,71),(29,72);
/*!40000 ALTER TABLE `company_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_position_title`
--

DROP TABLE IF EXISTS `company_position_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_position_title` (
  `company_id` int NOT NULL,
  `position_id` int NOT NULL,
  `title_id` int NOT NULL,
  `remote` tinyint DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `remote_interview` tinyint DEFAULT NULL,
  KEY `fk_company_position_title_title1_idx` (`title_id`),
  KEY `fk_company_position_title_position1_idx` (`position_id`),
  KEY `fk_company_position_title_company1_idx` (`company_id`),
  CONSTRAINT `fk_company_position_title_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `fk_company_position_title_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  CONSTRAINT `fk_company_position_title_title1` FOREIGN KEY (`title_id`) REFERENCES `title` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_position_title`
--

LOCK TABLES `company_position_title` WRITE;
/*!40000 ALTER TABLE `company_position_title` DISABLE KEYS */;
INSERT INTO `company_position_title` VALUES (1,1,1,1,'mid',0),(2,2,2,1,'senior',1),(3,3,3,0,'senior',1),(4,4,4,1,'senior',1),(5,5,5,0,'mid',1),(6,6,6,1,'mid',0),(7,7,7,1,'senior',1),(8,8,7,1,'senior',1),(9,9,8,1,'mid',1),(9,10,9,1,'mid',1),(10,11,10,1,'mid',1),(11,12,10,1,'senior',0),(12,13,10,0,'mid',1),(12,14,11,0,'senior',1),(12,15,12,1,'mid',1),(12,16,13,1,'mid',1),(12,17,14,1,'mid',1),(12,18,15,1,'mid',0),(12,19,16,0,'senior',0),(13,20,17,1,'mid',0),(13,21,18,1,'mid',0),(13,22,18,0,'mid',0),(13,23,19,0,'mid',1),(14,24,19,1,'senior',0),(14,25,19,1,'senior',0),(14,26,20,1,'senior',1),(14,27,21,1,'senior',0),(15,28,22,0,'junior',1),(15,29,23,1,'junior',1),(15,30,24,1,'mid',1),(15,31,24,1,'junior',1),(15,32,25,0,'junior',1),(15,33,26,0,'junior',1),(15,34,27,0,'junior',1),(16,35,28,1,'senior',1),(17,36,29,1,'senior',1),(17,37,30,0,'mid',1),(17,38,31,1,'mid',1),(17,39,32,0,'senior',1),(18,40,33,1,'mid',1),(18,41,34,1,'mid',1),(18,42,35,0,'senior',1),(18,43,35,1,'mid',1),(18,44,36,0,'senior',1),(18,45,37,1,'senior',1),(18,46,38,0,'mid',1),(18,47,39,0,'mid',1),(18,48,40,0,'senior',1),(18,49,41,0,'senior',1),(19,50,41,0,'mid',1),(19,51,42,1,'senior',1),(19,52,43,1,'junior',0),(19,53,44,0,'mid',1),(20,54,45,1,'mid',1),(20,55,46,1,'mid',1),(20,56,47,0,'mid',1),(20,57,48,1,'senior',1),(20,58,49,1,'senior',1),(20,59,50,1,'senior',1),(20,60,51,1,'mid',1),(20,61,52,1,'mid',1),(20,62,52,1,'mid',1),(20,63,53,1,'mid',1),(20,64,54,1,'mid',1),(20,65,55,1,'senior',1),(20,66,56,1,'senior',1),(20,67,57,1,'mid',1),(20,68,58,0,'mid',0),(20,69,59,1,'senior',1),(20,70,60,0,'senior',1),(20,71,61,1,'senior',1),(20,72,62,1,'senior',1),(20,73,63,1,'senior',1),(20,74,64,0,'senior',1),(20,75,64,0,'senior',1),(21,76,65,0,'junior',1),(21,77,66,1,'mid',1),(21,78,67,1,'senior',1),(22,79,68,0,'mid',1),(22,80,69,1,'junior',1),(22,81,70,1,'mid',1),(22,82,71,0,'mid',1),(22,83,72,0,'junior',1),(22,84,73,0,'junior',1),(22,85,74,1,'mid',1),(22,86,75,1,'senior',1),(22,87,76,1,'senior',1),(22,88,76,0,'mid',1),(22,89,76,0,'mid',1),(22,90,77,1,'mid',1),(22,91,78,1,'mid',1),(22,92,79,1,'senior',1),(22,93,80,1,'mid',1),(22,94,81,1,'mid',1),(22,95,82,1,'senior',1),(22,96,83,1,'senior',1),(22,97,84,1,'mid',1),(22,98,84,0,'senior',1),(22,99,85,0,'senior',1),(22,100,85,1,'junior',1),(22,101,85,1,'senior',1),(22,102,86,1,'junior',1),(23,103,87,1,'mid',1),(24,104,87,1,'senior',1),(24,105,88,1,'mid',1),(24,106,89,1,'mid',1),(25,107,89,0,'mid',1),(25,108,89,0,'mid',1),(25,109,90,1,'senior',1),(25,110,91,0,'mid',1),(26,111,92,1,'mid',0),(27,112,93,0,'junior',1),(27,113,94,1,'junior',0),(27,114,95,0,'senior',1),(27,115,96,0,'mid',1),(27,116,97,0,'junior',1),(27,117,98,0,'mid',1),(27,118,99,1,'senior',1),(27,119,100,0,'mid',1),(27,120,100,0,'mid',0),(28,121,100,1,'junior',1),(29,122,100,0,'junior',1),(30,123,101,1,'mid',1),(31,124,102,1,'mid',1),(31,125,103,1,'mid',1),(32,126,104,1,'mid',1),(32,127,105,1,'senior',1),(32,128,106,0,'mid',1),(32,129,107,1,'mid',1),(32,130,108,1,'mid',1),(32,131,109,1,'mid',1),(32,132,110,1,'senior',1),(32,133,111,1,'mid',1),(33,134,112,1,'senior',1),(34,135,113,1,'mid',0),(34,136,114,0,'mid',1),(34,137,115,1,'junior',1),(34,138,116,0,'junior',0),(34,139,117,0,'junior',1),(34,140,118,0,'mid',1),(34,141,119,0,'mid',1),(34,142,120,0,'mid',1),(35,143,120,1,'mid',1),(35,144,121,1,'mid',1),(36,145,121,0,'mid',1),(37,146,121,1,'senior',1),(37,147,122,0,'mid',0),(37,148,122,1,'mid',1),(38,149,122,1,'mid',1),(38,150,123,0,'senior',1),(38,151,124,0,'senior',1),(38,152,125,0,'junior',1),(38,153,126,1,'senior',1),(38,154,127,1,'senior',1),(38,155,128,0,'mid',1),(39,156,128,0,'mid',1),(39,157,129,0,'mid',1),(39,158,130,0,'mid',1),(39,159,131,1,'mid',1),(39,160,132,1,'senior',1),(39,161,132,1,'mid',1),(40,162,132,0,'mid',1),(40,163,133,1,'senior',1),(41,164,134,0,'mid',1),(41,165,135,1,'mid',1),(41,166,136,1,'mid',1),(42,167,137,1,'senior',1),(42,168,138,1,'senior',1),(43,169,139,1,'mid',0),(43,170,139,1,'junior',1),(44,171,140,1,'senior',1),(45,172,141,1,'mid',1),(45,173,142,1,'mid',1),(45,174,143,1,'mid',1),(45,175,144,1,'mid',1),(46,176,145,1,'senior',1),(46,177,146,1,'senior',1),(46,178,147,1,'senior',1),(47,179,148,1,'mid',1),(47,180,149,1,'senior',1),(47,181,149,1,'senior',1),(47,182,150,1,'mid',1),(47,183,151,1,'mid',1),(48,184,152,1,'mid',0),(49,185,153,1,'mid',1),(50,186,154,1,'mid',1),(50,187,155,1,'senior',1),(51,188,156,1,'senior',1),(52,189,157,1,'mid',1),(52,190,158,0,'mid',1),(52,191,159,0,'mid',1),(52,192,160,1,'senior',1),(53,193,161,1,'mid',0),(53,194,162,1,'mid',1),(54,195,163,1,'junior',1),(55,196,164,1,'mid',1),(56,197,165,0,'mid',1),(57,198,166,1,'senior',1),(58,199,167,1,'senior',1),(59,200,168,1,'mid',1),(59,201,169,1,'mid',1),(60,202,170,1,'mid',1),(60,203,171,1,'mid',1),(61,204,172,0,'mid',0),(61,205,173,1,'mid',1),(61,206,174,0,'mid',1),(62,207,175,0,'junior',0),(63,208,176,0,'mid',1),(63,209,177,0,'mid',1),(64,210,177,1,'mid',0),(65,211,178,1,'senior',1),(65,212,179,1,'mid',1),(65,213,180,1,'mid',1),(66,214,181,0,'mid',1),(66,215,182,0,'mid',1),(66,216,183,0,'junior',1),(67,217,184,1,'senior',1),(68,218,185,0,'senior',0),(68,219,186,0,'senior',1),(69,220,187,1,'mid',1),(69,221,187,1,'mid',1),(70,222,188,1,'senior',0),(70,223,189,1,'senior',1),(70,224,190,1,'senior',1),(71,225,191,1,'senior',1),(71,226,192,1,'senior',1),(71,227,193,1,'mid',1),(72,228,194,1,'senior',1),(72,229,195,1,'senior',1),(72,230,196,1,'senior',1);
/*!40000 ALTER TABLE `company_position_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `jobs_per_country`
--

DROP TABLE IF EXISTS `jobs_per_country`;
/*!50001 DROP VIEW IF EXISTS `jobs_per_country`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `jobs_per_country` AS SELECT 
 1 AS `country`,
 1 AS `num_of_jobs`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Sofia','BG'),(2,'Berlin','DE'),(3,'Copenhagen','DK'),(4,'Tallin','EE'),(5,'London','GB'),(6,'Londyn','GB'),(7,'Wilno','LT'),(8,'Balice','PL'),(9,'Bydgoszcz','PL'),(10,'Gdynia','PL'),(11,'Gliwice','PL'),(12,'Grodzisk Mazowiecki','PL'),(13,'Katowice','PL'),(14,'Kielce','PL'),(15,'Legnica','PL'),(16,'Lublin','PL'),(17,'Olsztyn','PL'),(18,'Opole','PL'),(19,'Poledno','PL'),(20,'Rybnik','PL'),(21,'Sopot','PL'),(22,'Szczecin','PL'),(23,'Tychy','PL'),(24,'Warsaw','PL'),(25,'Warszawa','PL'),(26,'Wejherowo','PL'),(27,'Bukareszt','RO'),(28,'Stockholm','SE'),(29,'Miramar','US');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `polish_min_max_mean`
--

DROP TABLE IF EXISTS `polish_min_max_mean`;
/*!50001 DROP VIEW IF EXISTS `polish_min_max_mean`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `polish_min_max_mean` AS SELECT 
 1 AS `min_salary`,
 1 AS `max_salary`,
 1 AS `mean_salary`,
 1 AS `currency`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL,
  `marker_icon` varchar(45) NOT NULL,
  `company_id` int NOT NULL,
  `salary_id` int NOT NULL,
  PRIMARY KEY (`position_id`),
  KEY `fk_position_company1_idx` (`company_id`),
  KEY `fk_position_salary1_idx` (`salary_id`),
  CONSTRAINT `fk_position_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `fk_position_salary1` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'java',1,1),(2,'ruby',2,2),(3,'java',3,3),(4,'javascript',4,4),(5,'other',5,5),(6,'testing',6,6),(7,'python',7,7),(8,'javascript',8,7),(9,'python',9,7),(10,'javascript',9,8),(11,'javascript',10,8),(12,'java',11,9),(13,'python',12,9),(14,'mobile',12,10),(15,'go',12,11),(16,'python',12,12),(17,'java',12,12),(18,'pm',12,12),(19,'java',12,13),(20,'mobile',13,13),(21,'java',13,14),(22,'java',13,14),(23,'python',13,15),(24,'go',14,15),(25,'java',14,16),(26,'testing',14,17),(27,'javascript',14,17),(28,'mobile',15,18),(29,'pm',15,19),(30,'javascript',15,19),(31,'mobile',15,19),(32,'testing',15,20),(33,'architecture',15,21),(34,'javascript',15,22),(35,'net',16,23),(36,'pm',17,23),(37,'data',17,23),(38,'net',17,24),(39,'javascript',17,24),(40,'javascript',18,25),(41,'admin',18,26),(42,'ux',18,27),(43,'testing',18,28),(44,'php',18,28),(45,'data',18,28),(46,'analytics',18,29),(47,'javascript',18,29),(48,'data',18,30),(49,'c',18,30),(50,'testing',19,30),(51,'testing',19,31),(52,'go',19,32),(53,'c',19,32),(54,'javascript',20,32),(55,'analytics',20,32),(56,'architecture',20,32),(57,'html',20,32),(58,'admin',20,33),(59,'admin',20,33),(60,'java',20,33),(61,'mobile',20,33),(62,'php',20,33),(63,'php',20,33),(64,'php',20,34),(65,'analytics',20,34),(66,'net',20,35),(67,'net',20,36),(68,'javascript',20,37),(69,'php',20,37),(70,'net',20,38),(71,'data',20,38),(72,'security',20,39),(73,'mobile',20,40),(74,'javascript',20,40),(75,'javascript',20,40),(76,'security',21,40),(77,'admin',21,41),(78,'testing',21,42),(79,'net',22,43),(80,'security',22,43),(81,'testing',22,44),(82,'php',22,44),(83,'php',22,45),(84,'php',22,46),(85,'php',22,47),(86,'testing',22,48),(87,'ux',22,48),(88,'javascript',22,48),(89,'pm',22,48),(90,'devops',22,49),(91,'c',22,49),(92,'java',22,49),(93,'javascript',22,49),(94,'javascript',22,50),(95,'java',22,51),(96,'java',22,52),(97,'c',22,53),(98,'javascript',22,53),(99,'support',22,53),(100,'php',22,54),(101,'net',22,55),(102,'architecture',22,56),(103,'javascript',23,57),(104,'net',24,58),(105,'net',24,58),(106,'support',24,59),(107,'data',25,60),(108,'admin',25,61),(109,'php',25,61),(110,'ux',25,62),(111,'javascript',26,63),(112,'net',27,64),(113,'c',27,64),(114,'architecture',27,64),(115,'pm',27,65),(116,'analytics',27,65),(117,'analytics',27,66),(118,'architecture',27,67),(119,'other',27,67),(120,'admin',27,68),(121,'data',28,68),(122,'ux',29,69),(123,'mobile',30,70),(124,'go',31,70),(125,'ruby',31,70),(126,'analytics',32,71),(127,'python',32,71),(128,'devops',32,72),(129,'python',32,73),(130,'devops',32,74),(131,'java',32,75),(132,'java',32,76),(133,'net',32,76),(134,'go',33,77),(135,'testing',34,78),(136,'devops',34,79),(137,'testing',34,79),(138,'java',34,79),(139,'data',34,80),(140,'data',34,81),(141,'c',34,82),(142,'support',34,83),(143,'data',35,83),(144,'testing',35,84),(145,'data',36,85),(146,'support',37,86),(147,'net',37,87),(148,'net',37,88),(149,'mobile',38,89),(150,'testing',38,90),(151,'data',38,90),(152,'python',38,90),(153,'java',38,91),(154,'javascript',38,92),(155,'devops',38,93),(156,'javascript',39,93),(157,'analytics',39,93),(158,'pm',39,93),(159,'testing',39,94),(160,'java',39,95),(161,'admin',39,96),(162,'javascript',40,97),(163,'data',40,98),(164,'testing',41,99),(165,'ruby',41,100),(166,'net',41,100),(167,'data',42,100),(168,'testing',42,101),(169,'ux',43,102),(170,'ux',43,103),(171,'pm',44,104),(172,'pm',45,104),(173,'testing',45,105),(174,'analytics',45,106),(175,'python',45,106),(176,'admin',46,107),(177,'php',46,107),(178,'php',46,108),(179,'admin',47,109),(180,'javascript',47,109),(181,'javascript',47,109),(182,'devops',47,110),(183,'php',47,111),(184,'javascript',48,112),(185,'javascript',49,113),(186,'mobile',50,114),(187,'other',50,115),(188,'python',51,116),(189,'analytics',52,117),(190,'c',52,118),(191,'c',52,119),(192,'c',52,120),(193,'mobile',53,120),(194,'analytics',53,120),(195,'other',54,121),(196,'pm',55,122),(197,'data',56,123),(198,'php',57,124),(199,'devops',58,125),(200,'data',59,126),(201,'ruby',59,127),(202,'net',60,128),(203,'mobile',60,128),(204,'c',61,129),(205,'analytics',61,130),(206,'data',61,131),(207,'pm',62,132),(208,'java',63,132),(209,'data',63,133),(210,'mobile',64,134),(211,'javascript',65,134),(212,'ux',65,135),(213,'scala',65,136),(214,'net',66,137),(215,'analytics',66,138),(216,'other',66,139),(217,'other',67,140),(218,'admin',68,141),(219,'analytics',68,142),(220,'javascript',69,143),(221,'testing',69,144),(222,'javascript',70,145),(223,'javascript',70,146),(224,'javascript',70,147),(225,'data',71,148),(226,'python',71,149),(227,'python',71,149),(228,'net',72,150),(229,'pm',72,151),(230,'admin',72,152);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_requirement`
--

DROP TABLE IF EXISTS `position_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_requirement` (
  `skill_value` int DEFAULT NULL,
  `position_id` int NOT NULL,
  `requirement_id` int NOT NULL,
  KEY `fk_position_requirement_position1_idx` (`position_id`),
  KEY `fk_position_requirement_requirements1_idx` (`requirement_id`),
  CONSTRAINT `fk_position_requirement_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  CONSTRAINT `fk_position_requirement_requirements1` FOREIGN KEY (`requirement_id`) REFERENCES `requirements` (`requirement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_requirement`
--

LOCK TABLES `position_requirement` WRITE;
/*!40000 ALTER TABLE `position_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `position_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `posting_average_salary`
--

DROP TABLE IF EXISTS `posting_average_salary`;
/*!50001 DROP VIEW IF EXISTS `posting_average_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `posting_average_salary` AS SELECT 
 1 AS `position_id`,
 1 AS `name`,
 1 AS `experience`,
 1 AS `remote`,
 1 AS `avg_salary`,
 1 AS `currency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `remote_jobs_number`
--

DROP TABLE IF EXISTS `remote_jobs_number`;
/*!50001 DROP VIEW IF EXISTS `remote_jobs_number`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `remote_jobs_number` AS SELECT 
 1 AS `num_of_remote_jobs`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirements` (
  `requirement_id` int NOT NULL,
  `skill_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`requirement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirements`
--

LOCK TABLES `requirements` WRITE;
/*!40000 ALTER TABLE `requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `salary_id` int NOT NULL,
  `salary_from` decimal(10,2) DEFAULT NULL,
  `salary_to` decimal(10,2) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,14544.90,29089.80,'eur'),(2,26313.25,37655.17,'usd'),(3,25639.34,27457.20,'eur'),(4,18709.20,23386.50,'eur'),(5,18990.79,34340.51,'eur'),(6,16178.90,25933.83,'eur'),(7,36362.25,53331.30,'eur'),(8,29740.63,40447.25,'eur'),(9,13726.78,13726.78,'gbp'),(10,15369.96,15369.96,'eur'),(11,30930.25,38068.00,'eur'),(12,10000.00,15000.00,'pln'),(13,7500.00,10000.00,'pln'),(14,37927.67,56891.50,'usd'),(15,4000.00,6900.00,'pln'),(16,5500.00,7000.00,'pln'),(17,10000.00,14000.00,'pln'),(18,4000.00,7000.00,'pln'),(19,20000.00,25000.00,'pln'),(20,4000.00,5200.00,'pln'),(21,4000.00,6000.00,'pln'),(22,21817.35,26665.65,'eur'),(23,12000.00,16000.00,'pln'),(24,10000.00,16000.00,'pln'),(25,14500.00,16500.00,'pln'),(26,23000.00,25000.00,'pln'),(27,3200.00,5000.00,'pln'),(28,9000.00,18000.00,'pln'),(29,8000.00,10000.00,'pln'),(30,18000.00,26000.00,'pln'),(31,16600.00,24900.00,'pln'),(32,8000.00,12000.00,'pln'),(33,12000.00,18000.00,'pln'),(34,4500.00,9000.00,'pln'),(35,16900.00,23200.00,'pln'),(36,5000.00,9000.00,'pln'),(37,6000.00,7000.00,'pln'),(38,10000.00,12000.00,'pln'),(39,9000.00,14000.00,'pln'),(40,16000.00,20000.00,'pln'),(41,9000.00,16000.00,'pln'),(42,20000.00,23000.00,'pln'),(43,7000.00,9000.00,'pln'),(44,7000.00,14000.00,'pln'),(45,15600.00,18600.00,'pln'),(46,13000.00,15500.00,'pln'),(47,11000.00,22000.00,'pln'),(48,11000.00,18000.00,'pln'),(49,18000.00,25000.00,'pln'),(50,6500.00,8500.00,'pln'),(51,14000.00,16000.00,'pln'),(52,9200.00,14200.00,'pln'),(53,7500.00,15000.00,'pln'),(54,7000.00,10500.00,'pln'),(55,3500.00,6000.00,'pln'),(56,8500.00,12500.00,'pln'),(57,8800.00,13200.00,'pln'),(58,5000.00,8000.00,'pln'),(59,12500.00,17500.00,'pln'),(60,10000.00,17500.00,'pln'),(61,10000.00,20000.00,'pln'),(62,6000.00,12000.00,'pln'),(63,32940.00,47520.00,'pln'),(64,4000.00,8000.00,'pln'),(65,11000.00,15000.00,'pln'),(66,8000.00,12500.00,'pln'),(67,15000.00,20500.00,'pln'),(68,20000.00,28000.00,'pln'),(69,19100.30,28195.68,'usd'),(70,13000.00,17000.00,'pln'),(71,17000.00,20000.00,'pln'),(72,8300.00,14000.00,'pln'),(73,26037.00,30771.00,'eur'),(74,11835.00,17752.50,'eur'),(75,14202.00,26037.00,'eur'),(76,12000.00,22000.00,'pln'),(77,12000.00,19000.00,'pln'),(78,3500.00,4000.00,'pln'),(79,11000.00,16000.00,'pln'),(80,24000.00,29000.00,'pln'),(81,15500.00,22000.00,'pln'),(82,12000.00,13000.00,'pln'),(83,15000.00,23000.00,'pln'),(84,12500.00,18000.00,'pln'),(85,20000.00,24000.00,'pln'),(86,18000.00,27000.00,'pln'),(87,15000.00,25000.00,'pln'),(88,6000.00,11500.00,'pln'),(89,12450.00,20750.00,'pln'),(90,11000.00,20000.00,'pln'),(91,10000.00,18000.00,'pln'),(92,15000.00,17500.00,'pln'),(93,9500.00,14000.00,'pln'),(94,24000.00,30000.00,'pln'),(95,5500.00,9500.00,'pln'),(96,11000.00,14000.00,'pln'),(97,20000.00,30000.00,'pln'),(98,28847.09,41281.18,'usd'),(99,17000.00,23000.00,'pln'),(100,12000.00,20000.00,'pln'),(101,17900.00,26800.00,'pln'),(102,16000.00,22000.00,'pln'),(103,18750.00,22500.00,'pln'),(104,8000.00,11500.00,'pln'),(105,19000.00,24000.00,'pln'),(106,22000.00,28000.00,'pln'),(107,24868.18,37799.63,'usd'),(108,18000.00,22000.00,'pln'),(109,13000.00,15000.00,'pln'),(110,25000.00,30000.00,'pln'),(111,17000.00,26000.00,'pln'),(112,13000.00,14000.00,'pln'),(113,10000.00,13300.00,'pln'),(114,23792.50,23792.50,'eur'),(115,8500.00,15500.00,'pln'),(116,11250.00,22500.00,'pln'),(117,12000.00,20500.00,'pln'),(118,33000.00,39000.00,'pln'),(119,27497.56,39349.96,'usd'),(120,14000.00,18000.00,'pln'),(121,12300.00,16500.00,'pln'),(122,11500.00,14000.00,'pln'),(123,7500.00,11500.00,'pln'),(124,13000.00,16000.00,'pln'),(125,12000.00,15000.00,'pln'),(126,16000.00,18000.00,'pln'),(127,12000.00,17000.00,'pln'),(128,7000.00,9300.00,'pln'),(129,23000.00,33100.00,'pln'),(130,7000.00,10000.00,'pln'),(131,16100.00,23200.00,'pln'),(132,25100.00,30400.00,'pln'),(133,24000.00,33100.00,'pln'),(134,8000.00,15000.00,'pln'),(135,6000.00,10000.00,'pln'),(136,16600.00,23250.00,'pln'),(137,29000.00,40000.00,'pln'),(138,8000.00,16000.00,'pln'),(139,14000.00,20000.00,'pln'),(140,19000.00,25000.00,'pln'),(141,15000.00,20000.00,'pln'),(142,25000.00,35000.00,'pln'),(143,18147.07,29488.99,'usd'),(144,13000.00,18000.00,'pln'),(145,25000.00,26000.00,'pln'),(146,35000.00,40000.00,'pln'),(147,21600.00,26600.00,'pln'),(148,25000.00,33000.00,'pln'),(149,35688.75,45205.75,'eur'),(150,19034.00,38068.00,'eur'),(151,19600.00,26100.00,'pln'),(152,21000.00,28000.00,'pln');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title` (
  `title_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,'Java Software Engineer'),(2,'Senior Ruby Engineer (100% Remote)'),(3,'Senior Back-End Java Engineer (Relo to Berlin)'),(4,'(Mid / Senior) Backend Developer w AWS'),(5,'Software Engineer (d/f/m)'),(6,'QA Automation Engineer'),(7,'Software Engineer - Cloud Infrastructure'),(8,'Senior Backend Engineer (NodeJS)'),(9,'Back End Developer'),(10,'Frontend Developer'),(11,'Angular Frontend Developer'),(12,'Head of Java Unit'),(13,'Automation Engineer'),(14,'UX/UI Designer - Mobile'),(15,'Software (Golang) Team Leader'),(16,'Junior Python Developer'),(17,'Junior Software Developer'),(18,'Product Owner'),(19,'Junior Software Engineer'),(20,'Junior Application Engineer'),(21,'Java Developer / Architect'),(22,'Senior Backend Developer - Golang'),(23,'Java/JEE Programmer'),(24,'Software Quality Engineer (QA)'),(25,'Software Engineer (Backend)'),(26,'Engineering Manager (Mobile)'),(27,'Junior Project Manager'),(28,'Mid React Developer'),(29,'Mid Flutter Developer'),(30,'Tester automatyzujÄ…cy'),(31,'Frontend Tech Lead'),(32,'Senior Fullstack Developer'),(33,'C#/.Net Developer'),(34,'Project Manager IT'),(35,'Junior Data Engineer'),(36,'Software Engineer (.NET) - Allegro Pay'),(37,'Junior React Developer'),(38,'Junior Frontend Developer (Angular)'),(39,'DBA Expert'),(40,'UI/UX Designer'),(41,'QA Engineer'),(42,'Remote Senior PHP Developer'),(43,'Qlik Developer'),(44,'Konsultant systemÃ³w ERP'),(45,'Programista Baz Danych'),(46,'Cloud Developer'),(47,'Automation Test Engineer'),(48,'Performance Test Engineer'),(49,'Back End (Golang) Team Leader'),(50,'C++ Developer'),(51,'Mid/Senior Node.js Developer'),(52,'IT Business and Systems Analyst'),(53,'Backend Developer'),(54,'FrFrontEnd Developer (Web)'),(55,'IT Engineer - Tech Supportâ€‹'),(56,'System Engineer'),(57,'Programista Java'),(58,'Android Developer'),(59,'Junior Fullstack PHP Developer'),(60,'Junior PHP Developer'),(61,'Mid PHP Developer'),(62,'Analityk Biznesowo-Systemowy'),(63,'Software Developer'),(64,'Programista C#'),(65,'Senior Frontend Developer'),(66,'Senior Magento 2 Developer'),(67,'.NET/C# Developer'),(68,'Digital Analyst'),(69,'Senior Cloud Security Engineer'),(70,'Junior Flutter Developer'),(71,'Junior Vue.js Developer'),(72,'Mid Vue.js Developer'),(73,'Remote Cyber Security Engineer'),(74,'App Deployment & Infrastructure Engineer'),(75,'Test Engineer'),(76,'C# Developer'),(77,'IS Security Engineer'),(78,'Software Engineer in Test (SDET)'),(79,'PHP Magento Developer'),(80,'Senior Back-end Developer'),(81,'Senior PHP (Magento) Developer'),(82,'PHP Back-end Developer'),(83,'Manual QA / Senior Manual QA'),(84,'UX/UI Designer'),(85,'Full Stack Developer'),(86,'Junior Requirements Engineer'),(87,'DevOps Engineer'),(88,'C++ Software Engineer (Mid/Senior)'),(89,'Java Developer'),(90,'Junior manual tester'),(91,'Frontend Developer (Angular)'),(92,'Java Team Lead'),(93,'Starszy Programista Java'),(94,'Angular Developer_ka z mindsetem DevOps'),(95,'IT Support Specialist'),(96,'Junior PHP Developer_ka'),(97,'Programista Fullstack'),(98,'IT Solution Architect'),(99,'Front-end Developer'),(100,'.NET Developer'),(101,'IT Support with French/Dutch'),(102,'Programista PL/SQL'),(103,'IT Service Desk System Administrator'),(104,'Backend Developer | Norwegian company'),(105,'Angular Developer (Mid/Senior)'),(106,'Programista .NET'),(107,'ServiceNow Senior Technical Consultant'),(108,'Technical Product Manager (Remote)'),(109,'Analityk Biznesowy'),(110,'Analityk Systemowy (Hurtownia Danych)'),(111,'Data Analytics Expert/Manager'),(112,'Content and Social Media Specialist'),(113,'Administrator Linux'),(114,'Big Data Developer'),(115,'Graphic and Animation Designer'),(116,'Programista Android'),(117,'Senior Back End Engr'),(118,'Ruby on Rails Developer'),(119,'Workday Analyst'),(120,'Python Developer'),(121,'DevOps Developer'),(122,'Senior Java Developer'),(123,'Starszy Programista Fullstack'),(124,'Mid Golang Developer'),(125,'QA Automation Engineer (Mobile)'),(126,'Mid DevOps Engineer'),(127,'QA Automation Expert'),(128,'Data Engineer'),(129,'(Junior) IT Support'),(130,'Data Analyst (They/She/He)'),(131,'QA Engineer (junior/mid)'),(132,'Senior IT Help Desk Specialist'),(133,'.NET Backend Developer'),(134,'Technical Lead .NET'),(135,'Mobile C++/3D Software Engineer'),(136,'Tester Manualny'),(137,'Senior Data Quality Analyst'),(138,'Python Developer (future Data Scientist)'),(139,'Fullstack Developer'),(140,'Senior Angular Frontend Developer'),(141,'Analityk Systemowy / Aplikacyjny'),(142,'Agile Coach'),(143,'Test Automation Engineer'),(144,'Remote Java Developer'),(145,'Application Administrator'),(146,'Head Of Data Engineering'),(147,'Quality Assurance Engineer'),(148,'Senior Back End Engineer (100% Remote)'),(149,'Business Intelligence Analyst'),(150,'QA Automation Engineer (Cypress)'),(151,'Product Designer (UX/UI) â€“ Mid / Regular'),(152,'UI Designer â€“ Mid / Regular'),(153,'Agile Project Manager (They/She/He)'),(154,'Agile Project Manager'),(155,'Analityk Systemowy'),(156,'Administrator Sieci Telekomunikacyjnych'),(157,'PHP Developer'),(158,'Senior PHP Backend Developer'),(159,'Starszy Administrator DWH/BI'),(160,'Junior Fullstack Developer (JavaScript+Node.js)'),(161,'Frontend Chapter Lead'),(162,'Senior/Lead DevOps Engineer'),(163,'FullStack Developer - Nodejs + Vue/React'),(164,'Mobile Software Engineer (Android)'),(165,'Fullstack Developer (Angular + .NET)'),(166,'Senior/Lead Machine Learning Engineer'),(167,'C/C++ Embedded Software Developer'),(168,'FPGA Developer'),(169,'Junior C/C++ Embedded Developer'),(170,'Senior Android Developer'),(171,'CI/CD Analyst'),(172,'Software (C++) Team Leader'),(173,'IT Manager'),(174,'SAP Data Analyst'),(175,'Mid&Senior Magento Developer'),(176,'Senior Data DevOps Engineer'),(177,'Senior Data Engineer'),(178,'Senior Software Engineer'),(179,'.Net Software Developer'),(180,'Android Software Developer'),(181,'Embedded C++ Software Engineer'),(182,'Remote Business / System Analyst'),(183,'Programista BI'),(184,'Junior SQL Administrator'),(185,'Junior Android Developer'),(186,'Engineering Tech Lead'),(187,'Junior/Mid UX&UI Designer'),(188,'Senior Scala Developer'),(189,'Data Analyst'),(190,'Sr Backend Engineer (Python/TypeScript)'),(191,'Backend Tech Lead (Javascript/ Python)'),(192,'Frontend Tech Lead (Typescript, React)'),(193,'Full-stack engineer'),(194,'Fullstack Developer (.NET + Angular)'),(195,'Project Manager'),(196,'Database Admin');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `valued_skills`
--

DROP TABLE IF EXISTS `valued_skills`;
/*!50001 DROP VIEW IF EXISTS `valued_skills`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `valued_skills` AS SELECT 
 1 AS `marker_icon`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `companies_above_avg_salary`
--

/*!50001 DROP VIEW IF EXISTS `companies_above_avg_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `companies_above_avg_salary` AS select `company`.`company_id` AS `company_id`,((avg(`salary`.`salary_from`) + avg(`salary`.`salary_to`)) / 2) AS `company_avg_salary` from ((`company` join `position` on((`company`.`company_id` = `position`.`company_id`))) join `salary` on((`position`.`salary_id` = `salary`.`salary_id`))) group by `company`.`company_id` having (`company_avg_salary` > (select ((avg(`salary`.`salary_from`) + avg(`salary`.`salary_to`)) / 2) from `salary`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_average_salary`
--

/*!50001 DROP VIEW IF EXISTS `company_average_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_average_salary` AS select `position`.`company_id` AS `company_id`,((avg(`salary`.`salary_from`) + avg(`salary`.`salary_to`)) / 2) AS `avg_comp_sal` from ((`position` join `company` on((`position`.`company_id` = `company`.`company_id`))) join `salary` on((`position`.`salary_id` = `salary`.`salary_id`))) group by `position`.`company_id` order by `avg_comp_sal` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jobs_per_country`
--

/*!50001 DROP VIEW IF EXISTS `jobs_per_country`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jobs_per_country` AS select `location`.`country` AS `country`,count(distinct `position`.`position_id`) AS `num_of_jobs` from ((`company_location` join `position` on((`company_location`.`company_id` = `position`.`company_id`))) join `location` on((`company_location`.`location_id` = `location`.`location_id`))) group by `location`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `polish_min_max_mean`
--

/*!50001 DROP VIEW IF EXISTS `polish_min_max_mean`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `polish_min_max_mean` AS select min(`salary`.`salary_from`) AS `min_salary`,max(`salary`.`salary_to`) AS `max_salary`,((avg(`salary`.`salary_from`) + avg(`salary`.`salary_to`)) / 2) AS `mean_salary`,`salary`.`currency` AS `currency` from `salary` where (`salary`.`currency` = 'pln') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `posting_average_salary`
--

/*!50001 DROP VIEW IF EXISTS `posting_average_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `posting_average_salary` AS select `position`.`position_id` AS `position_id`,`title`.`name` AS `name`,`company_position_title`.`experience` AS `experience`,`company_position_title`.`remote` AS `remote`,((`salary`.`salary_from` + `salary`.`salary_to`) / 2) AS `avg_salary`,`salary`.`currency` AS `currency` from (((`company_position_title` join `title` on((`company_position_title`.`title_id` = `title`.`title_id`))) join `position` on((`company_position_title`.`position_id` = `position`.`position_id`))) left join `salary` on((`position`.`salary_id` = `salary`.`salary_id`))) order by ((`salary`.`salary_from` + `salary`.`salary_to`) / 2) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `remote_jobs_number`
--

/*!50001 DROP VIEW IF EXISTS `remote_jobs_number`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `remote_jobs_number` AS select count(`company_position_title`.`remote`) AS `num_of_remote_jobs` from `company_position_title` where (`company_position_title`.`remote` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `valued_skills`
--

/*!50001 DROP VIEW IF EXISTS `valued_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `valued_skills` AS select `position`.`marker_icon` AS `marker_icon`,count(`position`.`marker_icon`) AS `count` from `position` group by `position`.`marker_icon` order by `position`.`marker_icon` */;
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

-- Dump completed on 2023-08-19 20:35:45
