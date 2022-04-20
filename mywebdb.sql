-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mywebdb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `commentId` int NOT NULL AUTO_INCREMENT,
  `commentContent` varchar(2048) NOT NULL,
  `commentDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` varchar(20) NOT NULL,
  `listId` int NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `userId` (`userId`),
  KEY `listId` (`listId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`listId`) REFERENCES `list` (`listId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'commentContent1','2022-03-30 20:21:20','userId1',3),(2,'commentContent2','2022-04-10 20:09:18','userId2',3),(3,'commentcococo','2022-04-13 19:45:25','userId4',17),(4,'comemememem','2022-04-13 19:45:25','userId5',17),(6,'klmnlknbfd','2022-04-18 18:20:01','userId1',17),(7,'thisis hit is','2022-04-18 18:21:58','userId1',17),(8,'njlkvds','2022-04-19 20:33:08','userId1',17);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list` (
  `listId` int NOT NULL AUTO_INCREMENT,
  `listTitle` varchar(50) NOT NULL,
  `listContent` varchar(2048) NOT NULL,
  `listDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `listHit` int NOT NULL DEFAULT '0',
  `userId` varchar(20) NOT NULL,
  PRIMARY KEY (`listId`),
  KEY `userId` (`userId`),
  CONSTRAINT `list_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (3,'listTitle1','listContent1','2022-03-30 20:20:18',2,'userId1'),(4,'listTitle2','listContent2','2022-04-09 20:11:54',0,'userId1'),(6,'listTitle4','listContent4','2022-04-09 20:16:14',0,'userId2'),(7,'listTitle5','listContent5','2022-04-09 20:16:14',0,'userId2'),(8,'listTitle6','listContent6','2022-04-09 20:16:14',0,'userId2'),(9,'listTitle7','listContent7','2022-04-09 20:16:14',0,'userId3'),(10,'listTitle8','listConetnt8','2022-04-09 20:16:14',0,'userId3'),(11,'listTitle9','listContent9','2022-04-09 20:16:14',0,'userId3'),(12,'listTitle10','listContent10','2022-04-09 20:17:31',0,'userId4'),(13,'listTitle11','listContent11','2022-04-09 20:17:31',0,'userId4'),(14,'listTitle12','listContent12','2022-04-09 20:17:31',0,'userId4'),(15,'listTitle13','listContent13','2022-04-09 20:17:31',0,'userId5'),(16,'listTitle14','listContent14','2022-04-09 20:17:31',3,'userId5'),(17,'listTitle15','listContent15','2022-04-09 20:17:31',5,'userId5');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listlike`
--

DROP TABLE IF EXISTS `listlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listlike` (
  `listlikeId` int NOT NULL AUTO_INCREMENT,
  `listId` int NOT NULL,
  `userId` varchar(20) NOT NULL,
  PRIMARY KEY (`listlikeId`),
  KEY `listId` (`listId`),
  KEY `userId` (`userId`),
  CONSTRAINT `listlike_ibfk_1` FOREIGN KEY (`listId`) REFERENCES `list` (`listId`),
  CONSTRAINT `listlike_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listlike`
--

LOCK TABLES `listlike` WRITE;
/*!40000 ALTER TABLE `listlike` DISABLE KEYS */;
INSERT INTO `listlike` VALUES (1,3,'userId1'),(2,3,'userId2'),(3,17,'userId1'),(4,17,'userId1'),(5,17,'userId1'),(6,17,'userId1'),(7,17,'userId1'),(8,17,'userId1'),(9,17,'userId1'),(10,17,'userId1'),(11,17,'userId1'),(12,17,'userId1'),(13,17,'userId1'),(14,17,'userId1'),(15,17,'userId1'),(16,17,'userId1'),(17,17,'userId1'),(18,17,'userId1'),(19,17,'userId1'),(20,17,'userId1'),(21,17,'userId1'),(22,17,'userId1'),(23,17,'userId1'),(24,17,'userId1'),(25,17,'userId1'),(26,17,'userId1'),(27,17,'userId1'),(28,17,'userId1'),(29,17,'userId1'),(30,17,'userId1'),(31,17,'userId1'),(32,17,'userId1'),(33,17,'userId1'),(34,17,'userId1'),(35,16,'userId1'),(36,15,'userId1');
/*!40000 ALTER TABLE `listlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listview`
--

DROP TABLE IF EXISTS `listview`;
/*!50001 DROP VIEW IF EXISTS `listview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listview` AS SELECT 
 1 AS `listId`,
 1 AS `listTitle`,
 1 AS `listContent`,
 1 AS `listDate`,
 1 AS `listHit`,
 1 AS `userId`,
 1 AS `commentNumber`,
 1 AS `likeNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` varchar(20) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userGender` varchar(20) NOT NULL,
  `userRegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('dfjlksddsv','userpa1!','김김아','userue@naver.com','regMale','2022-04-17 20:15:45'),('dflnlnkvs1','password1!','러리나','remaile@naver.com','regMale','2022-04-15 19:21:22'),('userId1','userPassword1','홍길동','userEmail@naver.com','남','2022-03-30 20:17:28'),('userId2','userPassword2','김길동','userEmail2@naver.com','여','2022-04-09 20:12:31'),('userId3','userPassword3','가가가','userEmail3@naver.com','남','2022-04-09 20:13:36'),('userId4','userPassword4','기기기','userEmail4@naver.com','여','2022-04-09 20:13:36'),('userId5','userPassword5','나나나','userEmail5@naver.com','여','2022-04-09 20:13:36'),('userId6','userPassword6','기리니','userEmail6@naver.com','남','2022-04-11 16:46:54');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `listview`
--

/*!50001 DROP VIEW IF EXISTS `listview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`namix`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listview` AS select `list`.`listId` AS `listId`,`list`.`listTitle` AS `listTitle`,`list`.`listContent` AS `listContent`,`list`.`listDate` AS `listDate`,`list`.`listHit` AS `listHit`,`list`.`userId` AS `userId`,(select count(0) from `comment` where (`comment`.`listId` = `list`.`listId`)) AS `commentNumber`,(select count(0) from `listlike` where (`listlike`.`listId` = `list`.`listId`)) AS `likeNumber` from `list` */;
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

-- Dump completed on 2022-04-20 23:08:07
