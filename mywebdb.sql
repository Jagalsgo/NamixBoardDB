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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'commentContent1','2022-03-30 20:21:20','userId1',3);
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
  `listLike` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`listId`),
  KEY `userId` (`userId`),
  CONSTRAINT `list_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (3,'listTitle','listContent','2022-03-30 20:20:18',0,'userId1',0),(4,'listTitle2','listContent2','2022-04-09 20:11:54',0,'userId1',0),(5,'listtitle3','listContent3','2022-04-09 20:15:00',0,'userId1',0),(6,'listTitle4','listContent4','2022-04-09 20:16:14',0,'userId2',0),(7,'listTitle5','listContent5','2022-04-09 20:16:14',0,'userId2',0),(8,'listTitle6','listContent6','2022-04-09 20:16:14',0,'userId2',0),(9,'listTitle7','listContent7','2022-04-09 20:16:14',0,'userId3',0),(10,'listTitle8','listConetnt8','2022-04-09 20:16:14',0,'userId3',0),(11,'listTitle9','listContent9','2022-04-09 20:16:14',0,'userId3',0),(12,'listTitle10','listContent10','2022-04-09 20:17:31',0,'userId4',0),(13,'listTitle11','listContent11','2022-04-09 20:17:31',0,'userId4',0),(14,'listTitle12','listContent12','2022-04-09 20:17:31',0,'userId4',0),(15,'listTitle13','listContent13','2022-04-09 20:17:31',0,'userId5',0),(16,'listTitle14','listContent14','2022-04-09 20:17:31',0,'userId5',0),(17,'listTitle15','listContent15','2022-04-09 20:17:31',0,'userId5',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listlike`
--

LOCK TABLES `listlike` WRITE;
/*!40000 ALTER TABLE `listlike` DISABLE KEYS */;
INSERT INTO `listlike` VALUES (1,3,'userId1');
/*!40000 ALTER TABLE `listlike` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `user` VALUES ('userId1','userPassword1','홍길동','userEmail@naver.com','남','2022-03-30 20:17:28'),('userId2','userPassword2','김길동','userEmail2@naver.com','여','2022-04-09 20:12:31'),('userId3','userPassword3','가가가','userEmail3@naver.com','남','2022-04-09 20:13:36'),('userId4','userPassword4','기기기','userEmail4@naver.com','여','2022-04-09 20:13:36'),('userId5','userPassword5','나나나','userEmail5@naver.com','여','2022-04-09 20:13:36');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-09 20:40:45
