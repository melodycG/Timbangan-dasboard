-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: timbangan
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

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
-- Table structure for table `asal_rumput`
--

DROP TABLE IF EXISTS `asal_rumput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asal_rumput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asal_rumput` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asal_rumput`
--

LOCK TABLES `asal_rumput` WRITE;
/*!40000 ALTER TABLE `asal_rumput` DISABLE KEYS */;
INSERT INTO `asal_rumput` VALUES (4,'Kebun Bampres','2022-07-22 06:22:28','2022-07-22 06:22:28'),(5,'Kebun Pojok','2022-07-22 06:22:35','2022-07-22 06:22:35'),(6,'Kebun Cikereumbi','2022-07-22 06:22:43','2022-07-22 06:22:43'),(7,'Kebun Kasomalang','2022-07-22 06:22:52','2022-07-22 06:22:52'),(8,'Pembelian','2022-07-22 06:22:59','2022-07-22 06:22:59'),(9,'Lainya','2022-07-22 06:23:03','2022-07-22 06:23:03'),(10,'Kebun Kantor','2022-07-23 00:38:45','2022-07-23 00:38:45');
/*!40000 ALTER TABLE `asal_rumput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berat`
--

DROP TABLE IF EXISTS `berat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama_driver` varchar(200) DEFAULT NULL,
  `berat` bigint(20) NOT NULL,
  `berat_aktual` int(11) NOT NULL,
  `jenis_rumput` varchar(200) NOT NULL,
  `asal_rumput` varchar(200) NOT NULL,
  `id_truk` int(11) NOT NULL,
  `status_email` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berat`
--

LOCK TABLES `berat` WRITE;
/*!40000 ALTER TABLE `berat` DISABLE KEYS */;
INSERT INTO `berat` VALUES (165,2,'Nana Suryana',5670,2200,'Rumput Gajah','Kebun Kantor',1,'terkirim','2022-07-23 01:20:15','2022-07-23 01:20:15');
/*!40000 ALTER TABLE `berat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `plat_nomor` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_tlp` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_berat` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_rumput`
--

DROP TABLE IF EXISTS `jenis_rumput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_rumput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_rumput` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_rumput`
--

LOCK TABLES `jenis_rumput` WRITE;
/*!40000 ALTER TABLE `jenis_rumput` DISABLE KEYS */;
INSERT INTO `jenis_rumput` VALUES (3,'Rumput Gajah','2022-07-22 06:21:08','2022-07-22 06:21:08'),(4,'Rumput Odot','2022-07-22 06:21:16','2022-07-22 06:21:16'),(5,'Rumput Afrika','2022-07-22 06:21:22','2022-07-22 06:21:22'),(6,'Rumput Packcong','2022-07-22 06:21:33','2022-07-22 06:21:33'),(7,'Jabon','2022-07-22 06:21:38','2022-07-22 06:21:38'),(8,'Shorgum','2022-07-22 06:21:48','2022-07-22 06:21:48'),(9,'Hasil Choperan','2022-07-22 06:21:56','2022-07-22 06:21:56'),(10,'Lainya','2022-07-22 06:22:00','2022-07-22 06:22:00');
/*!40000 ALTER TABLE `jenis_rumput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytable` (
  `Database_timbangan` varchar(32) NOT NULL,
  `FIELD2` varchar(2) DEFAULT NULL,
  `FIELD3` varchar(20) DEFAULT NULL,
  `Tabel_user` varchar(5) DEFAULT NULL,
  `FIELD5` varchar(13) DEFAULT NULL,
  `Tujuan_Dumping_data` varchar(8) DEFAULT NULL,
  `FIELD7` varchar(17) DEFAULT NULL,
  `FIELD8` varchar(4) DEFAULT NULL,
  `FIELD9` varchar(18) DEFAULT NULL,
  `FIELD10` varchar(6) DEFAULT NULL,
  `FIELD11` varchar(10) DEFAULT NULL,
  `FIELD12` varchar(4) DEFAULT NULL,
  `FIELD13` varchar(47) DEFAULT NULL,
  `FIELD14` varchar(6) DEFAULT NULL,
  `FIELD15` varchar(22) DEFAULT NULL,
  `FIELD16` varchar(10) DEFAULT NULL,
  `FIELD17` varchar(19) DEFAULT NULL,
  `FIELD18` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Database_timbangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable`
--

LOCK TABLES `mytable` WRITE;
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
INSERT INTO `mytable` VALUES ('id','id','email','email','password','password','nama','nama','no_tlp','no_tlp','role','role','gambar','gambar','created_at','created_at','updated_at','updated_at');
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truk`
--

DROP TABLE IF EXISTS `truk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat` varchar(200) NOT NULL,
  `berat` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truk`
--

LOCK TABLES `truk` WRITE;
/*!40000 ALTER TABLE `truk` DISABLE KEYS */;
INSERT INTO `truk` VALUES (1,'D8241U',3565,'2022-07-19 14:55:54','2022-07-22 02:33:09'),(2,'D8790U',3470,'2022-07-19 14:55:54','2022-07-22 02:33:15'),(3,'D8017X',3660,'2022-07-22 02:33:35','2022-07-22 02:33:35');
/*!40000 ALTER TABLE `truk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `no_tlp` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin@gmail.com','$2a$12$UdXm4I24c9TLv6G72QAzKOcZ0Bu7jYjSLg9uTUhE8T.2GwxT.rxD2','admin','','admin','http://203.194.112.19/img/userfoto.png','2022-04-19 11:51:40','2022-07-22 02:23:54'),(5,'nana@gmail.com','$2y$10$KP1XSULDfgYVUzZsMuQBdO6VULYJ0XHiu5GTWqYPKy/XUJl7BZT1C','Nana suryana','','admin','http://203.194.112.19/img/userfoto.png','2022-05-14 01:52:15','2022-07-21 20:18:11'),(7,'agus@gmail.com','$2y$10$iO4cx7XCMShDV0GoJXaQdeZ4GAxMd3dF5npWgqUEHyQh2r5WHp7MK','Agus Sudiatna','','admin','http://203.194.112.19/img/userfoto.png','2022-05-15 07:20:52','2022-07-21 20:18:10'),(10,'oman@gmail.com','$2y$10$YuFmppdGx/bNjT6ulgSHb.YdmkahmhWV7BPO4/ahGIHcs07Wc.xE2','Oman Kustiawan','','admin','http://203.194.112.19/img/userfoto.png','2022-06-03 18:24:29','2022-07-21 20:18:08'),(12,'asep@gmail.com','$2a$10$S4MJ3m4Bu3Lnfr2OrTbzq.lil1P7WBNDGaWgnyax233zUCklzsV0a','Asep Suhendi','','admin','http://203.194.112.19/img/userfoto.png','2022-06-03 18:25:02','2022-07-21 20:23:03'),(13,'yadi@gmail.com','$2a$10$/8qyi2NW9RcS0Hp.olHBXe6QK3Ei5AS7E2bDLjQeirRvg2j0SIz5C','Yadi Rohadi','','admin','http://203.194.112.19/img/userfoto.png','2022-07-21 20:10:37','2022-07-21 20:19:30'),(14,'superadmin@gmail.com','$2y$10$RazsbS9VQPNgmoYrKkm3eeSm20syNH29bARAX5MYKdoxp8BE7.MQO','Super Admin','','superadmin','http://203.194.112.19/img/userfoto.png','2022-07-21 20:11:39','2022-07-21 20:19:31'),(15,'admin1@gmail.com','$2y$10$1H7Cr6bYDNyBYlmghBMB7.D/Tn3h1j6HRWS6Zgp4GluyMqdY59J/C','admin 1','','admin','http://203.194.112.19/img/userfoto.png','2022-07-21 20:21:08','2022-07-22 02:24:26'),(16,'admin2@gmail.com','$2y$10$6B1u8AzYUKA5Y1xpJAp95e6esRoYAOWzyNjl890p.WmYGpblhFnj.','admin 2','','admin','http://203.194.112.19/img/userfoto.png','2022-07-21 20:21:08','2022-07-22 02:24:29'),(17,'admin3@gmail.com','$2y$10$DKiKsdZ4F6lQX7DPIw2x/.Sn3ML/tdTjfMGLWoahbvZ8Xx1Xjh.36','admin 3','','admin','http://203.194.112.19/img/userfoto.png','2022-07-21 20:21:08','2022-07-22 02:24:31');
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

-- Dump completed on 2022-07-23  8:32:43
