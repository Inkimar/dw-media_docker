-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: media
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `ADMIN_CONFIG`
--

DROP TABLE IF EXISTS `ADMIN_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMIN_CONFIG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `admin_key` varchar(255) DEFAULT NULL,
  `admin_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_CONFIG`
--

LOCK TABLES `ADMIN_CONFIG` WRITE;
/*!40000 ALTER TABLE `ADMIN_CONFIG` DISABLE KEYS */;
INSERT INTO `ADMIN_CONFIG` VALUES (1,'development','is_exif','false'),(2,'development','save_suffix','false'),(3,'development','path_to_files','/opt/data/mediaserver/demo/'),(4,'development','base_url','MediaServerResteasy'),(5,'development','mediaserver_host','http://localhost:8080'),(6,'development','relative_metadata_url','media/image'),(7,'development','relative_stream_url','media/stream'),(8,'development','default_CC_license','v3.0'),(9,'development','relative_new_stream_url','media');
/*!40000 ALTER TABLE `ADMIN_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATTACHMENTS`
--

DROP TABLE IF EXISTS `ATTACHMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTACHMENTS` (
  `UUID` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`UUID`),
  CONSTRAINT `FK_MEDIA_ATTACHMENTS` FOREIGN KEY (`UUID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATTACHMENTS`
--

LOCK TABLES `ATTACHMENTS` WRITE;
/*!40000 ALTER TABLE `ATTACHMENTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ATTACHMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(63) NOT NULL,
  `AUTHOR` varchar(63) NOT NULL,
  `FILENAME` varchar(200) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('Admin-Config','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:12',12,'EXECUTED','3:16c02b33f6c22c722ca88ef20264dc5d','Create Table','',NULL,'2.0.1'),('altering SOUND','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:11',7,'EXECUTED','3:e02aedfb3f0ae6360d3842301ea773d9','Add Column','',NULL,'2.0.1'),('altering VIDEO','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:11',8,'EXECUTED','3:a1496751a249b066bc8faa0462f4a269','Add Column','',NULL,'2.0.1'),('Creating Attachments','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:12',9,'EXECUTED','3:87e37f149ecb7c02085596a8e16fc1fa','Create Table, Add Foreign Key Constraint','',NULL,'2.0.1'),('creating DETERMINATION','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:09',3,'EXECUTED','3:146013561a81afd9ffdb5bf700a8ac1c','Create Table, Add Foreign Key Constraint','',NULL,'2.0.1'),('Creating Image','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:09',2,'EXECUTED','3:902ca2600a785b6d2dc1e0e40a3c5f43','Create Table, Add Foreign Key Constraint','',NULL,'2.0.1'),('Creating Media','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:08',1,'EXECUTED','3:08b89159cc2a1ca965d8a1b466318ba6','Create Table','',NULL,'2.0.1'),('Creating MEDIA_X_LIC','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:14',18,'EXECUTED','3:8da2273bdef1a6f315b686df9b1121f6','Create Table, Add Foreign Key Constraint (x2)','',NULL,'2.0.1'),('Creating Sound','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:10',5,'EXECUTED','3:3f65141dda8e002914148de3f9536d38','Create Table, Add Foreign Key Constraint','',NULL,'2.0.1'),('creating tbl media_text','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:12',13,'EXECUTED','3:b7a4c1e088fd2c74032aad08cebd16e0','Create Table','',NULL,'2.0.1'),('Creating Video','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:10',6,'EXECUTED','3:d129c4f0ac07133def51af4bd4f1c954','Create Table, Add Foreign Key Constraint','',NULL,'2.0.1'),('default-licenses to LIC-table','ingimar','src/main/dbschema/db.changelog-1.0.xml','2016-05-03 13:59:16',26,'EXECUTED','3:0a7dea16807033526677f243f266e1ac','SQL From File','',NULL,'2.0.1'),('default-values-for-admin','ingimar','src/main/dbschema/db.changelog-1.0.xml','2016-05-03 13:59:16',27,'EXECUTED','3:d563e72ea7b00272b3ba2044926bfe45','SQL From File','',NULL,'2.0.1'),('DETERMINATION - altering - adding column- SORT_ORDER','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:13',16,'EXECUTED','3:eff90777ae5d6020fb7e184a336591a1','Add Column','',NULL,'2.0.1'),('Image - altering - adding column EXIF','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:14',20,'EXECUTED','3:d289c6182050399d2c0b40593341498c','Add Column','',NULL,'2.0.1'),('issue3','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:15',21,'EXECUTED','3:a836b03872ac39e71670ba847a0a0fe6','Modify data type','',NULL,'2.0.1'),('issue3_attachments','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:15',22,'EXECUTED','3:b5b95869542173381f6ca788850eff26','Modify data type','',NULL,'2.0.1'),('issue3_image','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:15',23,'EXECUTED','3:4952f897beeda073231d7309f8e242f5','Modify data type','',NULL,'2.0.1'),('issue3_sound','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:16',24,'EXECUTED','3:f71b376db1e965ddb897007db6edd3f2','Modify data type','',NULL,'2.0.1'),('issue3_video','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:16',25,'EXECUTED','3:11e10e032f4165ad1fff05952b4d89c7','Modify data type','',NULL,'2.0.1'),('licence-table with version','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:13',17,'EXECUTED','3:aa9dde03771d4ec3ba5ddeca9fb39e96','Create Table','',NULL,'2.0.1'),('Media - altering - adding column','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:12',10,'EXECUTED','3:78bf287a90f5227fbf27ade99d0bb6c8','Add Column','',NULL,'2.0.1'),('Media - altering - adding column-ALT','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:13',14,'EXECUTED','3:e5299b7693845e7b7e58d93dbb57efac','Add Column','',NULL,'2.0.1'),('Media - altering - adding column-hash','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:13',15,'EXECUTED','3:be188ad8a1dccd2e1641b97731f89953','Add Column','store a hash, https://sites.google.com/site/matthewjoneswebsite/java/md5-hash-of-an-image',NULL,'2.0.1'),('Media - altering - adding RESTFUL_STREAM','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:12',11,'EXECUTED','3:865fd14a33ce615f095c60c1543185b5','Add Column','',NULL,'2.0.1'),('MEDIA_TEXT - altering - adding column- COMMENT','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:14',19,'EXECUTED','3:1c222503a87fede85a7cf0f26e64242a','Add Column','',NULL,'2.0.1'),('tag-table','ingimar','src/main/dbschema/db.changelog-0.5.xml','2016-05-03 13:59:09',4,'EXECUTED','3:58d7b6b647d8fd1527d4e2fc82730d10','Create Table, Add Foreign Key Constraint','',NULL,'2.0.1');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,0,NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DETERMINATION`
--

DROP TABLE IF EXISTS `DETERMINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DETERMINATION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG_KEY` varchar(255) DEFAULT NULL,
  `TAG_VALUE` varchar(255) DEFAULT NULL,
  `EXTERNAL_SYSTEM` varchar(255) DEFAULT NULL,
  `EXTERNAL_SYSTEM_URL` varchar(255) DEFAULT NULL,
  `MEDIA_UUID` varchar(255) NOT NULL,
  `DATE_CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SORT_ORDER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DETERMINATION_MEDIA` (`MEDIA_UUID`),
  CONSTRAINT `FK_DETERMINATION_MEDIA` FOREIGN KEY (`MEDIA_UUID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETERMINATION`
--

LOCK TABLES `DETERMINATION` WRITE;
/*!40000 ALTER TABLE `DETERMINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `DETERMINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMAGE`
--

DROP TABLE IF EXISTS `IMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMAGE` (
  `UUID` char(36) NOT NULL DEFAULT '',
  `IS_EXPORTED` tinyint(1) DEFAULT '0',
  `EXIF` text,
  PRIMARY KEY (`UUID`),
  CONSTRAINT `FK_MEDIA_UUID` FOREIGN KEY (`UUID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMAGE`
--

LOCK TABLES `IMAGE` WRITE;
/*!40000 ALTER TABLE `IMAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIC`
--

DROP TABLE IF EXISTS `LIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LIC` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ABBREV` varchar(255) DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  `ISSUER` varchar(255) DEFAULT NULL,
  `URI` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIC`
--

LOCK TABLES `LIC` WRITE;
/*!40000 ALTER TABLE `LIC` DISABLE KEYS */;
INSERT INTO `LIC` VALUES (1,'CC BY','3.0','http://creativecommons.org/licenses/by/','Attribution','Creative Commons'),(2,'CC BY-SA','3.0','http://creativecommons.org/licenses/by-sa/','Attribution-ShareAlike','Creative Commons'),(3,'CC BY-NC-SA','3.0','http://creativecommons.org/licenses/by-nc-sa/','Attribution-NonCommercial-ShareAlike','Creative Commons'),(4,'CC BY-NC','3.0','http://creativecommons.org/licenses/by-nc/','Attribution-NonCommercial','Creative Commons'),(5,'CC BY-ND','3.0','http://creativecommons.org/licenses/by-nd/','Attribution-NoDerivs','Creative Commons'),(6,'CC BY-NC-ND','3.0','http://creativecommons.org/licenses/by-nc-nd/','Attribution-NonCommercial-NoDerivs','Creative Commons'),(7,'CC BY','4.0','http://creativecommons.org/licenses/by/','Attribution','Creative Commons'),(8,'CC BY-SA','4.0','http://creativecommons.org/licenses/by-sa/','Attribution-ShareAlike','Creative Commons'),(9,'CC BY-NC-SA','4.0','http://creativecommons.org/licenses/by-nc-sa/','Attribution-NonCommercial-ShareAlike','Creative Commons'),(10,'CC BY-NC','4.0','http://creativecommons.org/licenses/by-nc/','Attribution-NonCommercial','Creative Commons'),(11,'CC BY-ND','4.0','http://creativecommons.org/licenses/by-nd/','Attribution-NoDerivs','Creative Commons'),(12,'CC BY-NC-ND','4.0','http://creativecommons.org/licenses/by-nc-nd/','Attribution-NonCommercial-NoDerivs','Creative Commons');
/*!40000 ALTER TABLE `LIC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDIA`
--

DROP TABLE IF EXISTS `MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIA` (
  `UUID` char(36) NOT NULL DEFAULT '',
  `DTYPE` varchar(31) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `MIME_TYPE` varchar(50) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `VISIBILITY` varchar(50) DEFAULT NULL,
  `TAGS` text,
  `RESTFUL_STREAM` varchar(255) DEFAULT NULL,
  `ALT` varchar(255) DEFAULT NULL,
  `HASH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDIA`
--

LOCK TABLES `MEDIA` WRITE;
/*!40000 ALTER TABLE `MEDIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEDIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDIA_TEXT`
--

DROP TABLE IF EXISTS `MEDIA_TEXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIA_TEXT` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT,
  `LEGEND` varchar(255) DEFAULT NULL,
  `LANG` varchar(255) DEFAULT NULL,
  `MEDIA_UUID` varchar(255) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDIA_TEXT`
--

LOCK TABLES `MEDIA_TEXT` WRITE;
/*!40000 ALTER TABLE `MEDIA_TEXT` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEDIA_TEXT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDIA_X_LIC`
--

DROP TABLE IF EXISTS `MEDIA_X_LIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDIA_X_LIC` (
  `LIC_ID` int(11) NOT NULL,
  `MEDIA_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`LIC_ID`,`MEDIA_ID`),
  KEY `FK_MEDIA_LIC_1` (`MEDIA_ID`),
  CONSTRAINT `FK_MEDIA_LIC_2` FOREIGN KEY (`LIC_ID`) REFERENCES `LIC` (`ID`),
  CONSTRAINT `FK_MEDIA_LIC_1` FOREIGN KEY (`MEDIA_ID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDIA_X_LIC`
--

LOCK TABLES `MEDIA_X_LIC` WRITE;
/*!40000 ALTER TABLE `MEDIA_X_LIC` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEDIA_X_LIC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SOUND`
--

DROP TABLE IF EXISTS `SOUND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SOUND` (
  `UUID` char(36) NOT NULL DEFAULT '',
  `IS_EXPORTED` tinyint(1) DEFAULT '0',
  `START_TIME` int(11) DEFAULT NULL,
  `END_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  CONSTRAINT `FK_MEDIA_SOUND` FOREIGN KEY (`UUID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SOUND`
--

LOCK TABLES `SOUND` WRITE;
/*!40000 ALTER TABLE `SOUND` DISABLE KEYS */;
/*!40000 ALTER TABLE `SOUND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAGS`
--

DROP TABLE IF EXISTS `TAGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAGS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG_KEY` varchar(255) DEFAULT NULL,
  `TAG_VALUE` varchar(255) DEFAULT NULL,
  `MEDIA_UUID` varchar(255) NOT NULL,
  `DATE_CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_TAGS_MEDIA` (`MEDIA_UUID`),
  CONSTRAINT `FK_TAGS_MEDIA` FOREIGN KEY (`MEDIA_UUID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAGS`
--

LOCK TABLES `TAGS` WRITE;
/*!40000 ALTER TABLE `TAGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `TAGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VIDEO`
--

DROP TABLE IF EXISTS `VIDEO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VIDEO` (
  `UUID` char(36) NOT NULL DEFAULT '',
  `IS_EXPORTED` tinyint(1) DEFAULT '0',
  `START_TIME` int(11) DEFAULT NULL,
  `END_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  CONSTRAINT `FK_MEDIA_VIDEO` FOREIGN KEY (`UUID`) REFERENCES `MEDIA` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VIDEO`
--

LOCK TABLES `VIDEO` WRITE;
/*!40000 ALTER TABLE `VIDEO` DISABLE KEYS */;
/*!40000 ALTER TABLE `VIDEO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-03 11:59:48
