-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolbus
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_admin`
--

DROP TABLE IF EXISTS `_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `passWord` varchar(45) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_admin`
--

LOCK TABLES `_admin` WRITE;
/*!40000 ALTER TABLE `_admin` DISABLE KEYS */;
INSERT INTO `_admin` VALUES (1,'root','root','root',NULL,NULL,NULL,NULL,NULL,'男');
/*!40000 ALTER TABLE `_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `passWord` varchar(45) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Huglight','1234','昵称','男','陈建恒','996194036@qq.com','18888888888','996194036','lose yourself'),(2,'hehe','hehe',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `text` mediumtext,
  `author` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `fillindate` date DEFAULT NULL,
  `institute` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'编辑过的','888888888888','8888',NULL,'2018-12-29','8888'),(2,'编辑过的','888888888888','8888',NULL,'2018-12-29','8888'),(3,'编辑过的','888888888888','8888',NULL,'2018-12-29','8888'),(8,'编辑过的','888888888888','8888','news','2018-12-29','8888'),(9,'这是通知','888888888888','8888','news','2018-12-29','8888'),(10,'333333333','888888888888','8888','news','2018-12-29','8888'),(12,'2222222','888888888888','8888','help','2018-12-29','8888'),(13,NULL,'这是一条建议',NULL,'suggestion','2019-01-23',NULL),(14,'1234','1234','1234','news','2019-01-23',NULL),(15,'1234','1234','1234','news','2019-01-23',NULL),(16,'1234','1234','1234','news','2019-01-23',NULL),(17,'1234','1234','1234','news','2019-01-23',NULL),(18,'1234','1234','1234','news','2019-01-23',NULL),(19,'1234','1234','1234','news','2019-01-23',NULL),(20,'1234','1234','1234','news','2019-01-23',NULL),(21,'1234','1234','1234','news','2019-01-23',NULL),(22,'1234','1234','1234','news','2019-01-23',NULL),(23,NULL,'这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊这也是建议啊啊啊',NULL,'suggestion','2019-01-24',NULL),(24,'2222','222222','2222','news','2019-01-24',NULL),(25,'21123','555555','3213','help','2019-01-24',NULL),(26,NULL,'有用户的建议','Huglight','suggestion','2019-01-24',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','root'),(2,'test','test');
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

-- Dump completed on 2019-05-25 23:05:49
