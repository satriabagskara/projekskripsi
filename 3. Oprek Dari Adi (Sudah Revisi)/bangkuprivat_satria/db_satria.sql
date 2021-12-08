/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.3.15-MariaDB : Database - db_bangku_privat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bangku_privat` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_bangku_privat`;

/*Table structure for table `detail_alamat` */

DROP TABLE IF EXISTS `detail_alamat`;

CREATE TABLE `detail_alamat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alamat_detail` text NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `detail_alamat` */

insert  into `detail_alamat`(`id`,`alamat_detail`,`provinsi`,`kota`,`kecamatan`,`desa`,`created_at`,`updated_at`) values (1,'Jl. Pondok Aren, Bintaro, Kota Tangerang Selatan.','Banten','Kota Tangerang Selatan','Pondok Aren','Pondok Aren','2021-07-15 15:15:27',NULL),(2,'Jl. Nakula Blok Akf. 11 No.4 Perum PWS Kab. Tangerang','Banten','Kota Tangerang','Tigaraksa','Margasari','2021-07-16 23:33:17',NULL),(3,'Jl. Pegangsaan Timur','DKI Jakarta','Jakarta Timur','Pegangsaan','Pegangsaan Timur','2021-07-16 23:35:35',NULL),(4,'Jl.raya kemana kesini blok k4/1','DKI Jakarta','Jakarta Timur','SanaSini','MariKemari','2021-08-01 20:21:16',NULL),(5,'Jl. KEsana kemari hayuu meluncur	','DKI Jakarta','Jakarta Barat','Kesana','DariTadi','2021-08-01 20:22:03',NULL),(6,'jl. Kampung Ruyu no.14 RT 006','Banten','Serang','Serang','Cikande','2021-08-01 20:22:55',NULL),(7,'JL. Grogol no.14 sebelum Pintu Air 5','DKI Jakarta','Jakarta Barat','Grogol','Grogol Petamburan','2021-08-01 20:23:53',NULL),(9,'Detail Alamat','Provinsi','Kabupaten/Kota','Kecamatan','wana kerta','2021-08-15 05:09:22','2021-08-15 05:09:22'),(10,'Jl. Kota Raja Dalam Cigombang','Papua','Kota Jayapura','Abepura','Vim','2021-08-15 08:30:48','2021-08-15 08:30:48'),(11,'Jl. Kalimulya','Jawa Barat','Kota Depok','Cilodok Kalimulya','Cilodok','2021-08-16 01:37:01','2021-08-16 01:37:01'),(12,'Jl. Pelajar No. 17','Sumatera Utara','Kota Medan','Medan Kota','Teladan Timur','2021-08-16 02:11:50','2021-08-16 02:11:50'),(13,'Jl. Cipedes No. 4','Jawa Barat','Kota Bandung','Cipedes','Cipedes','2021-08-16 02:15:09','2021-08-16 02:15:09'),(14,'Jl. Panglima Polim','DKI Jakarta','Kota Jakarta Selatan','Kebayoran Baru','Melawai','2021-08-16 02:49:45','2021-08-16 02:49:45'),(15,'kota tangerang belakang polsek no.25','banten','Kota Tangerang','Puspem','Ds. Puspem','2021-08-23 13:02:50','2021-08-23 13:02:50');

/*Table structure for table `detail_hari` */

DROP TABLE IF EXISTS `detail_hari`;

CREATE TABLE `detail_hari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_mentor_id` int(11) NOT NULL,
  `hari_id` int(11) NOT NULL,
  `start_jam` time DEFAULT NULL,
  `end_jam` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detail_hari_tbl_detail_mentor1_idx` (`detail_mentor_id`),
  KEY `fk_detail_hari_master_hari1_idx` (`hari_id`),
  CONSTRAINT `fk_detail_hari_master_hari1` FOREIGN KEY (`hari_id`) REFERENCES `master_hari` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detail_hari_tbl_detail_mentor1` FOREIGN KEY (`detail_mentor_id`) REFERENCES `tbl_detail_mentor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `detail_hari` */

insert  into `detail_hari`(`id`,`detail_mentor_id`,`hari_id`,`start_jam`,`end_jam`,`created_at`,`updated_at`) values (23,1,1,'12:00:00','15:00:00','2021-08-15 05:38:29','2021-08-15 05:38:29'),(24,1,2,'13:00:00','15:00:00','2021-08-15 05:38:29','2021-08-15 05:38:29'),(25,1,3,'09:00:00','11:00:00','2021-08-15 05:38:29','2021-08-15 05:38:29'),(26,1,5,'09:00:00','11:00:00','2021-08-15 05:38:29','2021-08-15 05:38:29'),(27,1,7,'09:00:00','15:00:00','2021-08-15 05:38:29','2021-08-15 05:38:29'),(28,10,6,'08:00:00','17:00:00','2021-08-16 05:52:52','2021-08-16 05:52:52'),(29,10,7,'08:00:00','17:00:00','2021-08-16 05:52:52','2021-08-16 05:52:52'),(32,12,1,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(33,12,2,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(34,12,3,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(35,12,4,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(36,12,5,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(37,12,6,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(38,12,7,'08:00:00','17:00:00','2021-08-16 06:09:07','2021-08-16 06:09:07'),(39,13,7,'08:00:00','14:00:00','2021-08-16 06:16:38','2021-08-16 06:16:38'),(40,14,6,'14:00:00','09:00:00','2021-08-16 06:26:46','2021-08-16 06:26:46'),(41,14,7,'02:00:00','05:00:00','2021-08-16 06:26:46','2021-08-16 06:26:46'),(44,11,5,'17:00:00','22:00:00','2021-08-26 09:33:01','2021-08-26 09:33:01'),(45,11,6,'08:00:00','17:00:00','2021-08-26 09:33:01','2021-08-26 09:33:01');

/*Table structure for table `detail_reservasi` */

DROP TABLE IF EXISTS `detail_reservasi`;

CREATE TABLE `detail_reservasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservasi_id` int(11) NOT NULL,
  `hari_id` int(11) NOT NULL,
  `start_jam` time NOT NULL,
  `end_jam` time NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservasi_id` (`reservasi_id`),
  KEY `hari_id` (`hari_id`),
  CONSTRAINT `detail_reservasi_ibfk_2` FOREIGN KEY (`reservasi_id`) REFERENCES `tbl_reservasi` (`id`),
  CONSTRAINT `detail_reservasi_ibfk_3` FOREIGN KEY (`hari_id`) REFERENCES `master_hari` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `detail_reservasi` */

insert  into `detail_reservasi`(`id`,`reservasi_id`,`hari_id`,`start_jam`,`end_jam`,`created_at`,`updated_at`) values (1,3,1,'12:00:00','15:00:00','2021-08-08 14:32:54','2021-08-08 14:32:54'),(2,3,2,'13:00:00','15:00:00','2021-08-08 14:32:54','2021-08-08 14:32:54'),(3,10,3,'09:00:00','11:00:00','2021-08-08 21:47:18',NULL),(4,10,5,'09:00:00','11:00:00','2021-08-08 21:47:31',NULL),(9,13,6,'08:00:00','17:00:00','2021-08-23 13:03:28','2021-08-23 13:03:28');

/*Table structure for table `detail_skill` */

DROP TABLE IF EXISTS `detail_skill`;

CREATE TABLE `detail_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_mentor_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `lama_pengalaman` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detail_skill_tbl_detail_mentor1_idx` (`detail_mentor_id`),
  KEY `fk_detail_skill_master_skill1_idx` (`skill_id`),
  CONSTRAINT `fk_detail_skill_master_skill1` FOREIGN KEY (`skill_id`) REFERENCES `master_skill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detail_skill_tbl_detail_mentor1` FOREIGN KEY (`detail_mentor_id`) REFERENCES `tbl_detail_mentor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `detail_skill` */

insert  into `detail_skill`(`id`,`detail_mentor_id`,`skill_id`,`lama_pengalaman`,`created_at`,`updated_at`) values (21,1,7,5,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(22,1,9,1,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(23,1,12,3,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(24,1,21,2,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(25,1,29,5,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(26,10,11,5,'2021-08-16 05:52:52','2021-08-16 05:52:52'),(29,12,8,4,'2021-08-16 06:09:07','2021-08-16 06:09:07'),(30,12,9,4,'2021-08-16 06:09:07','2021-08-16 06:09:07'),(31,12,12,4,'2021-08-16 06:09:07','2021-08-16 06:09:07'),(32,12,16,3,'2021-08-16 06:09:07','2021-08-16 06:09:07'),(33,13,21,10,'2021-08-16 06:16:38','2021-08-16 06:16:38'),(34,14,29,20,'2021-08-16 06:26:46','2021-08-16 06:26:46'),(35,14,29,20,'2021-08-16 06:26:46','2021-08-16 06:26:46'),(38,11,8,4,'2021-08-26 09:33:01','2021-08-26 09:33:01'),(39,11,9,3,'2021-08-26 09:33:01','2021-08-26 09:33:01');

/*Table structure for table `detail_tipe_pengajaran` */

DROP TABLE IF EXISTS `detail_tipe_pengajaran`;

CREATE TABLE `detail_tipe_pengajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_mentor_id` int(11) NOT NULL,
  `tipe_pengajaran_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_mentor_id` (`detail_mentor_id`),
  KEY `tipe_pengajaran_id` (`tipe_pengajaran_id`),
  CONSTRAINT `detail_tipe_pengajaran_ibfk_1` FOREIGN KEY (`detail_mentor_id`) REFERENCES `tbl_detail_mentor` (`id`),
  CONSTRAINT `detail_tipe_pengajaran_ibfk_2` FOREIGN KEY (`tipe_pengajaran_id`) REFERENCES `master_tipe_pengajaran` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `detail_tipe_pengajaran` */

insert  into `detail_tipe_pengajaran`(`id`,`detail_mentor_id`,`tipe_pengajaran_id`,`created_at`,`updated_at`) values (16,1,1,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(17,1,2,'2021-08-15 05:38:29','2021-08-15 05:38:29'),(18,10,1,'2021-08-16 05:52:52','2021-08-16 05:52:52'),(19,10,2,'2021-08-16 05:52:52','2021-08-16 05:52:52'),(21,12,1,'2021-08-16 06:09:07','2021-08-16 06:09:07'),(22,12,2,'2021-08-16 06:09:07','2021-08-16 06:09:07'),(23,13,1,'2021-08-16 06:16:38','2021-08-16 06:16:38'),(24,13,2,'2021-08-16 06:16:38','2021-08-16 06:16:38'),(25,14,1,'2021-08-16 06:26:46','2021-08-16 06:26:46'),(26,14,2,'2021-08-16 06:26:46','2021-08-16 06:26:46'),(28,11,2,'2021-08-26 09:33:01','2021-08-26 09:33:01');

/*Table structure for table `master_gender` */

DROP TABLE IF EXISTS `master_gender`;

CREATE TABLE `master_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `master_gender` */

insert  into `master_gender`(`id`,`gender`) values (1,'Pria'),(2,'Wanita');

/*Table structure for table `master_hari` */

DROP TABLE IF EXISTS `master_hari`;

CREATE TABLE `master_hari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `master_hari` */

insert  into `master_hari`(`id`,`hari`) values (1,'Senin'),(2,'Selasa'),(3,'Rabu'),(4,'Kamis'),(5,'Jumat'),(6,'Sabtu'),(7,'Minggu');

/*Table structure for table `master_kebutuhan` */

DROP TABLE IF EXISTS `master_kebutuhan`;

CREATE TABLE `master_kebutuhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kebutuhan` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `master_kebutuhan` */

insert  into `master_kebutuhan`(`id`,`kebutuhan`,`created_at`,`updated_at`) values (1,'Mentoring Belajar','2021-07-15 14:55:17',NULL),(2,'Penyelesaian Masalah (Tugas, Pekerjaan, dll)','2021-07-15 14:55:21',NULL),(3,'Memperdalam Keahlian','2021-07-15 14:55:50',NULL);

/*Table structure for table `master_level` */

DROP TABLE IF EXISTS `master_level`;

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `master_level` */

insert  into `master_level`(`id`,`level`) values (1,'Umum'),(2,'Mentor'),(3,'Admin');

/*Table structure for table `master_skill` */

DROP TABLE IF EXISTS `master_skill`;

CREATE TABLE `master_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(45) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_master_skill_master_status1_idx` (`status_id`),
  CONSTRAINT `fk_master_skill_master_status1` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

/*Data for the table `master_skill` */

insert  into `master_skill`(`id`,`skill`,`status_id`,`created_at`,`updated_at`) values (7,'.NET',2,'2021-07-15 14:57:57',NULL),(8,'.NET Core',2,'2021-07-15 14:58:53',NULL),(9,'Alibaba Cloud',2,'2021-07-15 14:59:17',NULL),(10,'Amazon DynamoDB',2,'2021-07-15 14:59:37',NULL),(11,'Amazon RDS/Aurora',2,'2021-07-15 14:59:57',NULL),(12,'Amazon Redshift',2,'2021-07-15 15:00:33',NULL),(14,'Angular',2,'2021-07-15 15:01:26',NULL),(16,'MySQL',2,'2021-07-15 15:01:53',NULL),(17,'Apache Hbase',2,'2021-07-15 15:02:24',NULL),(19,'Apache Hive',2,'2021-07-15 15:03:07',NULL),(20,'ASP .NET',2,'2021-07-15 15:03:56',NULL),(21,'Assembly',2,'2021-07-15 15:04:23',NULL),(22,'AWS Cloud',2,'2021-07-15 15:04:57',NULL),(23,'Bash/Shell',2,'2021-07-15 15:05:17',NULL),(24,'Boostrap',2,'2021-07-15 15:06:17',NULL),(25,'BSD/Unix',2,'2021-07-15 15:07:33',NULL),(26,'Business Analyst',2,'2021-07-15 15:08:07',NULL),(28,'C',2,'2021-07-15 15:08:45',NULL),(29,'C#',2,'2021-07-15 15:09:32',NULL),(31,'C++',2,'2021-08-23 14:22:01',NULL),(33,'Cassandra',2,'0000-00-00 00:00:00',NULL),(34,'CEO',2,'0000-00-00 00:00:00',NULL),(35,'Clojure',2,'0000-00-00 00:00:00',NULL),(36,'CodeIgniter',2,'0000-00-00 00:00:00',NULL),(37,'Construct',2,'0000-00-00 00:00:00',NULL),(38,'Cordova',2,'0000-00-00 00:00:00',NULL),(39,'CSS',2,'0000-00-00 00:00:00',NULL),(40,'CTO\r\n',2,'0000-00-00 00:00:00',NULL),(41,'Dart\r\n',2,'0000-00-00 00:00:00',NULL),(42,'Data Analyst\r\n',2,'0000-00-00 00:00:00',NULL),(43,'Data Scientist\r\n',2,'0000-00-00 00:00:00',NULL),(44,'Database Administrator',2,'0000-00-00 00:00:00',NULL),(45,'Delphi',2,'0000-00-00 00:00:00',NULL),(46,'DevOps Specialist',2,'0000-00-00 00:00:00',NULL),(47,'Django',2,'0000-00-00 00:00:00',NULL),(48,'Docker',2,'0000-00-00 00:00:00',NULL),(49,'Elasticsearch',2,'0000-00-00 00:00:00',NULL),(50,'Engineering Manager',2,'0000-00-00 00:00:00',NULL),(51,'Erlang',2,'0000-00-00 00:00:00',NULL),(52,'Express.js',2,'0000-00-00 00:00:00',NULL),(53,'F#',2,'0000-00-00 00:00:00',NULL),(54,'Firebase',2,'0000-00-00 00:00:00',NULL),(55,'Full-stack Development\r\n',2,'0000-00-00 00:00:00',NULL),(56,'GIT',2,'0000-00-00 00:00:00',NULL),(57,'Golang\r\n',2,'0000-00-00 00:00:00',NULL),(58,'Google BigQuery',2,'0000-00-00 00:00:00',NULL),(59,'Google Cloud Storage\r\n',2,'0000-00-00 00:00:00',NULL),(60,'Groovy',2,'0000-00-00 00:00:00',NULL),(61,'Hadoop',2,'0000-00-00 00:00:00',NULL),(62,'Heskell',2,'0000-00-00 00:00:00',NULL),(63,'HTML',2,'0000-00-00 00:00:00',NULL),(64,'IBM Db2',2,'0000-00-00 00:00:00',NULL),(65,'Information Security Analyst',2,'0000-00-00 00:00:00',NULL),(66,'IT Support',2,'0000-00-00 00:00:00',NULL),(67,'Java Desktop\r\n',2,'0000-00-00 00:00:00',NULL),(69,'Java Mobile',2,'0000-00-00 00:00:00',NULL),(70,'JavaScript',2,'0000-00-00 00:00:00',NULL),(71,'Jquery',2,'0000-00-00 00:00:00',NULL),(73,'Kotlin\r\n',2,'0000-00-00 00:00:00',NULL),(74,'Laravel',2,'0000-00-00 00:00:00',NULL),(75,'Linux-based\r\n',2,'0000-00-00 00:00:00',NULL),(76,'Mac OS\r\n',2,'0000-00-00 00:00:00',NULL),(77,'Machine Learning Specialist',2,'0000-00-00 00:00:00',NULL),(78,'MariaDB\r\n',2,'0000-00-00 00:00:00',NULL),(79,'Memcached',2,'0000-00-00 00:00:00',NULL),(80,'Microsoft Azure',2,'0000-00-00 00:00:00',NULL),(81,'MongoDB',2,'0000-00-00 00:00:00',NULL),(82,'MySQL\r\n',2,'0000-00-00 00:00:00',NULL),(83,'Neo4j\r\n',2,'0000-00-00 00:00:00',NULL),(84,'Network Architect',2,'0000-00-00 00:00:00',NULL),(85,'Network engineer',2,'0000-00-00 00:00:00',NULL),(86,'Node.js',2,'0000-00-00 00:00:00',NULL),(87,'Objective-C',2,'0000-00-00 00:00:00',NULL),(88,'Oracle',2,'0000-00-00 00:00:00',NULL),(89,'Pentester',2,'0000-00-00 00:00:00',NULL),(90,'Perl',2,'0000-00-00 00:00:00',NULL),(91,'PHP',2,'0000-00-00 00:00:00',NULL),(92,'Phython',2,'0000-00-00 00:00:00',NULL),(93,'PostgreSQL',2,'0000-00-00 00:00:00',NULL),(94,'Product Management',2,'0000-00-00 00:00:00',NULL),(96,'Product Owner',2,'0000-00-00 00:00:00',NULL),(97,'Quality Ansurance Manual',2,'0000-00-00 00:00:00',NULL),(98,'Quality Ansurance Otomation',2,'0000-00-00 00:00:00',NULL),(100,'R',2,'0000-00-00 00:00:00',NULL),(101,'React JS',2,'0000-00-00 00:00:00',NULL),(102,'Redis',2,'0000-00-00 00:00:00',NULL),(103,'Ruby',2,'0000-00-00 00:00:00',NULL),(104,'Rust',2,'0000-00-00 00:00:00',NULL),(105,'Scala',2,'0000-00-00 00:00:00',NULL),(106,'Security engineer',2,'0000-00-00 00:00:00',NULL),(107,'SEO specialist\r\n',2,'0000-00-00 00:00:00',NULL),(108,'Spark',2,'0000-00-00 00:00:00',NULL),(109,'Spring Boot',2,'0000-00-00 00:00:00',NULL),(110,'SQL Server',2,'0000-00-00 00:00:00',NULL),(111,'SQLite\r\n',2,'0000-00-00 00:00:00',NULL),(112,'Swift\r\n',2,'0000-00-00 00:00:00',NULL),(113,'System Administrator',2,'0000-00-00 00:00:00',NULL),(114,'Tailwind',2,'0000-00-00 00:00:00',NULL),(115,'TensorFlow',2,'0000-00-00 00:00:00',NULL),(116,'Torch/Py Torch',2,'0000-00-00 00:00:00',NULL),(117,'TypeScript',2,'0000-00-00 00:00:00',NULL),(118,'UI/UX Design',2,'0000-00-00 00:00:00',NULL),(119,'Unity',2,'0000-00-00 00:00:00',NULL),(120,'Visual Basic',2,'0000-00-00 00:00:00',NULL),(121,'VueJS\r\n',2,'0000-00-00 00:00:00',NULL),(122,'Windows OS\r\n',2,'0000-00-00 00:00:00',NULL),(123,'Wordpress\r\n',2,'0000-00-00 00:00:00',NULL),(124,'Xamarin\r\n',2,'0000-00-00 00:00:00',NULL),(125,'XML',2,'0000-00-00 00:00:00',NULL);

/*Table structure for table `master_status` */

DROP TABLE IF EXISTS `master_status`;

CREATE TABLE `master_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `master_status` */

insert  into `master_status`(`id`,`status`,`created_at`,`updated_at`) values (1,'Non Aktif','2021-07-15 14:49:41',NULL),(2,'Aktif','2021-07-15 14:54:30',NULL),(3,'Reservasi','2021-07-15 14:54:35',NULL),(4,'Konfirmasi Admin','2021-07-15 14:54:38',NULL),(5,'Konfirmasi Mentor','2021-07-15 14:54:51',NULL),(6,'Ditolak Admin','2021-07-15 14:54:45',NULL),(7,'Ditolak Mentor','2021-07-15 14:54:42',NULL),(8,'Pembayaran Reservasi','2021-08-07 22:53:28',NULL),(9,'Pembayaran DiTolak','2021-08-15 02:08:36',NULL),(10,'Pembelajaran Sedang Berlangsung','2021-07-15 14:54:47',NULL),(11,'Resolve','2021-07-25 23:21:19',NULL),(12,'Solve','2021-07-25 23:21:21',NULL),(13,'Pengajuan Sebagai Mentor DiTolak','2021-07-29 13:50:53',NULL),(14,'Pengajuan Perubahan Data Mentor','2021-08-15 02:08:30',NULL),(15,'Perubahan Data Mentor DiTerima','2021-08-15 02:08:32',NULL),(16,'Perubahan Data Mentor DiTolak','2021-08-15 02:08:33',NULL);

/*Table structure for table `master_tipe_pengajaran` */

DROP TABLE IF EXISTS `master_tipe_pengajaran`;

CREATE TABLE `master_tipe_pengajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `master_tipe_pengajaran` */

insert  into `master_tipe_pengajaran`(`id`,`tipe`) values (1,'Online'),(2,'Offline');

/*Table structure for table `master_user` */

DROP TABLE IF EXISTS `master_user`;

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `detail_alamat_id` int(11) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `level_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `fhoto` varchar(255) DEFAULT NULL,
  `path_fhoto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_user_tbl_gander_idx` (`gender_id`),
  KEY `fk_tbl_user_tbl_level1_idx` (`level_id`),
  KEY `fk_tbl_user_tbl_status1_idx` (`status_id`),
  KEY `fk_master_user_detail_alamat1_idx` (`detail_alamat_id`),
  CONSTRAINT `fk_master_user_detail_alamat1` FOREIGN KEY (`detail_alamat_id`) REFERENCES `detail_alamat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_user_tbl_gander` FOREIGN KEY (`gender_id`) REFERENCES `master_gender` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_user_tbl_level1` FOREIGN KEY (`level_id`) REFERENCES `master_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_user_tbl_status1` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `master_user` */

insert  into `master_user`(`id`,`email`,`password`,`nama`,`gender_id`,`tempat_lahir`,`tgl_lahir`,`detail_alamat_id`,`no_hp`,`level_id`,`status_id`,`fhoto`,`path_fhoto`,`created_at`,`updated_at`) values (1,'admin@bangkuprivat.id','$2y$10$9P6i8eqedmQ7qkXCAAV7Buyt9CrEravuvzK7MytpC2dAjVZgZCR.G','Admin',1,'Tangerang','2021-07-15',1,'089677832054',3,2,'PCM~.png','1628272979','2021-07-15 15:17:38','2021-08-06 18:02:59'),(6,'satria.bagaskara.05@gmail.com','$2y$10$Fv85SYCRjK.KKSnF70YRrumGTW5v6iMHw/46YbupU2cE1QVSLZTtK','Satria Bagaskara',1,'Kota Tangerang','1997-06-05',2,'085719997812',2,2,'myprofile.jpg','1628249525','2021-07-16 16:29:34','2021-08-06 11:32:06'),(7,'rasyaalbani@rio.id','$2y$10$JkyPkzOa1h56rGfE3Nxds.pu71PqSjL9Id6HKLEW3s96ktHSgOtlm','Rasya Albani',1,'Jakarta','1998-07-16',3,'081327788988',1,2,'saboooo.png','1628274471','2021-07-16 16:41:00','2021-08-06 18:52:22'),(8,'adimulya02@gmail.com','$2y$10$YB7XAgHvEUc2LLGIYPL0M.L1wRKIHtW2WaAU7846lUdJnd6oh8WE.','adi',1,'Tangerangg','1970-01-01',9,'08129318972',1,2,NULL,NULL,'2021-07-25 10:00:15','2021-08-26 07:54:17'),(11,'mentor2@gmail.com','$2y$10$G0dVBSm1wTZv/dx/EFTikOU2OrQEGOb.5QcOSsXQfWweMbcBEbCEa','ijah',2,'JawaTimur','1990-05-25',4,'08954482164',1,2,NULL,NULL,'2021-08-01 20:18:20',NULL),(12,'murid1@gmail.com','$2y$10$G0dVBSm1wTZv/dx/EFTikOU2OrQEGOb.5QcOSsXQfWweMbcBEbCEa','Ivan',1,'JakartaBarat','1998-09-24',5,'08956485168',1,2,NULL,NULL,'2021-08-01 20:19:06',NULL),(13,'murid2@gmail.com','$2y$10$G0dVBSm1wTZv/dx/EFTikOU2OrQEGOb.5QcOSsXQfWweMbcBEbCEa','Putri',2,'Lebak Banten','1999-01-06',6,'0894618246',1,2,NULL,NULL,'2021-08-01 20:19:48',NULL),(14,'mentor1@gmail.com','$2y$10$G0dVBSm1wTZv/dx/EFTikOU2OrQEGOb.5QcOSsXQfWweMbcBEbCEa','bambang',1,'Jakarta Pusat','1985-02-05',7,'0884565218',1,2,NULL,NULL,'2021-08-01 20:17:36',NULL),(15,'murid3@gmail.com','$2y$10$gfEtOAgQh5xKGIJ21JaC.ube0deaJRAaiEdUFLPilWz81A89PTL26','Muhammad Iqbal',1,'Kota Tangerang','1999-01-16',15,'081245798172',1,2,'wp4614394.jpg','1629723778','2021-08-01 13:38:42','2021-08-23 13:02:58'),(16,'benidolo@bp.id','$2y$10$mQ5ZoQHA1PYUbtNN7HO9FudHn7G9ksu9wCxdqRc7dH.IWGrJLi5li','Beno Dolo',1,'Jayapura','1972-06-29',10,'0032144242243',2,2,'1.png','1629074644','2021-08-15 08:23:55','2021-08-16 07:09:38'),(17,'robert@bp.id','$2y$10$caN9yLeZcgBAXwhxawzzFOApr33Z7VAG0EpC.lcCgajky8YYHt/A.','Robertus',1,'Depok','1990-02-01',11,'002446522',2,2,'2.png','1629077838','2021-08-16 01:31:41','2021-08-16 07:09:46'),(18,'simons@bp.id','$2y$10$GLFFTPkGdkOutddOZcFnh.ZFCOvkXHlXllkplDeNFBIv5sS37x4MO','Simons',1,'Medan','1995-06-28',12,'6787789',2,2,'3.png','1629079910','2021-08-16 02:09:22','2021-08-16 07:09:50'),(19,'alexa@bp.id','$2y$10$zevmx68lLTshMYhfAet8qO4OiB3HqESuFCpCFsvEpnm.G3Hgd1Neu','Alexandra',2,'Bandung','1992-07-03',13,'990099',1,2,'4.png','1629080109','2021-08-16 02:12:43','2021-08-16 02:15:09'),(20,'leonita@bp.id','$2y$10$ZVbnDdlSlJuIejIYEisZRuSy915r/SGlFXZBv1lFj7SZqTFupdLKm','Leonita',2,'Jakarta','1997-08-13',14,'9879213',1,2,'6.jfif','1629082185','2021-08-16 02:15:49','2021-08-16 02:49:45');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_reset` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`kode_reset`,`created_at`,`updated_at`) values ('adimulya02@gmail.com','iSS51OlQjoWuFKFbJAy4VSibeMWpKCMz0bxGF2On',560850,'2021-08-26 08:51:00','2021-08-26 08:51:00');

/*Table structure for table `pembayaran_reservasi` */

DROP TABLE IF EXISTS `pembayaran_reservasi`;

CREATE TABLE `pembayaran_reservasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bukti_transfer` varchar(255) NOT NULL,
  `path_bukti` varchar(255) NOT NULL,
  `atas_nama_pengirim` varchar(100) NOT NULL,
  `asal_bank` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pembayaran_reservasi` */

insert  into `pembayaran_reservasi`(`id`,`bukti_transfer`,`path_bukti`,`atas_nama_pengirim`,`asal_bank`,`created_at`,`updated_at`) values (1,'0de402e538c57c375935fe23751ff77d.jpg','1628358615','Rasya Albani','asd','2021-08-07 17:50:15','2021-08-07 17:50:15'),(2,'122536581_3532385536849185_1946349620964529536_o.jpg','1629724026','Muhammad iqbal','asd','2021-08-23 13:07:06','2021-08-23 13:07:06');

/*Table structure for table `perubahan_detail_hari` */

DROP TABLE IF EXISTS `perubahan_detail_hari`;

CREATE TABLE `perubahan_detail_hari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perubahan_detail_mentor_id` int(11) NOT NULL,
  `hari_id` int(11) NOT NULL,
  `start_jam` time NOT NULL,
  `end_jam` time NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hari_id` (`hari_id`),
  KEY `perubahan_detail_mentor_id` (`perubahan_detail_mentor_id`),
  CONSTRAINT `perubahan_detail_hari_ibfk_1` FOREIGN KEY (`hari_id`) REFERENCES `master_hari` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `perubahan_detail_hari_ibfk_2` FOREIGN KEY (`perubahan_detail_mentor_id`) REFERENCES `perubahan_detail_mentor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `perubahan_detail_hari` */

/*Table structure for table `perubahan_detail_mentor` */

DROP TABLE IF EXISTS `perubahan_detail_mentor`;

CREATE TABLE `perubahan_detail_mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `detail_skill` varchar(255) NOT NULL,
  `biodata` text NOT NULL,
  `detail_pengajaran` text NOT NULL,
  `pengalaman_ngajar` int(11) NOT NULL,
  `harga_perjam` bigint(25) DEFAULT NULL,
  `medsos_linkedin` varchar(50) NOT NULL,
  `medsos_github` varchar(255) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `document` varchar(255) DEFAULT NULL,
  `path_document` varchar(150) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `alasan_ditolak` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `perubahan_detail_mentor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `perubahan_detail_mentor_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `perubahan_detail_mentor` */

/*Table structure for table `perubahan_detail_skill` */

DROP TABLE IF EXISTS `perubahan_detail_skill`;

CREATE TABLE `perubahan_detail_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perubahan_detail_mentor_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `lama_pengalaman` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skill_id` (`skill_id`),
  KEY `perubahan_detail_mentor_id` (`perubahan_detail_mentor_id`),
  CONSTRAINT `perubahan_detail_skill_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `master_skill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `perubahan_detail_skill_ibfk_2` FOREIGN KEY (`perubahan_detail_mentor_id`) REFERENCES `perubahan_detail_mentor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `perubahan_detail_skill` */

/*Table structure for table `perubahan_detail_tipe_pengajaran` */

DROP TABLE IF EXISTS `perubahan_detail_tipe_pengajaran`;

CREATE TABLE `perubahan_detail_tipe_pengajaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perubahan_detail_mentor_id` int(11) NOT NULL,
  `tipe_pengajaran_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perubahan_detail_mentor_id` (`perubahan_detail_mentor_id`),
  KEY `tipe_pengajaran_id` (`tipe_pengajaran_id`),
  CONSTRAINT `perubahan_detail_tipe_pengajaran_ibfk_1` FOREIGN KEY (`perubahan_detail_mentor_id`) REFERENCES `perubahan_detail_mentor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `perubahan_detail_tipe_pengajaran_ibfk_2` FOREIGN KEY (`tipe_pengajaran_id`) REFERENCES `master_tipe_pengajaran` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `perubahan_detail_tipe_pengajaran` */

/*Table structure for table `tbl_bantuan` */

DROP TABLE IF EXISTS `tbl_bantuan`;

CREATE TABLE `tbl_bantuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_bantuan` text NOT NULL,
  `bantuan` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_bantuan` */

insert  into `tbl_bantuan`(`id`,`judul_bantuan`,`bantuan`,`created_at`,`updated_at`) values (1,'Bagaimana cara saya menemukan mentor?','Mudah! Temukan mentor anda melalui mesin pencari kami.pilih subject dan kota anda, dan itu saja! anda akan dapat mengakses beberapa mentor terbaik kami, yang tersedia untuk memberikan kursus di dekat anda atau melalui kamera web. Ketika anda telah memilih seorang mentor, anda dapat menghubungi mentor tersebut dengan mengklik tombol \"Pesan Kursus/Reservasi\".','2021-08-23 22:28:17','2021-08-23 16:45:32'),(2,'Bagaimana saya bisa yakin dengan kualitas mentor?','Transparansi profil.Lihat profil mentor dengan bebas dan pesan mentor ideal yang sesuai dengan kebutuhan anda (keahlian. kualifikasi, pengalaman, lokasi, ulasan dari pada murid, menawarkan kursus tatap muka atau secara online).','2021-08-23 22:28:46',NULL),(3,'Atur jadwal kursus kamu sendiri.','Kami meminta pengajar kami untuk menjadi setransparan mungkin dalam membuat kelas pengajaran mereka dan dengan cerman meinri pengalaman, metodologi, dan data-data hidup mereka.\r\nVerifikasi data pribadi mereka dan informasi yang diberikan kami memverifikasi identitas, data pribadi (Nomor Telepon, alamat E-mail, fhoto) dan ijazah universitas dari semua mentor kami.','2021-08-23 22:29:23',NULL),(4,'100% ulasan kami adalan otentik - kekuatan komunitas','Kami memverifikasi semua ulasan dan rekomendasi yang diterima mentor kami untuk menjamin bahwa mereka 100% asli. Hanya anggota kami yang dapat memberikan ulasan untuk mentor kami. Anda dapat yakin bahwa mentor kami sangat bagus, kompete, dan tersedia berkat komunitas siswa/murid kami!','2021-08-23 22:29:39',NULL),(5,'Apa yang bisa saya pelajari melalui Bangku Privat?','Dengan Bangku Privat, Anda dapat mempelajari hal yang berkaitan dengan Teknologi Informasi! dengan tatap muka secara langsung atau melalui kamera web (Online). Tidak ada alasan lagi, inilah saatnya untuk meningkatkan kemampuan Anda!','2021-08-23 22:29:53',NULL),(6,'Jika saya sebagai mentor tetapi keahlian saya tidak tercantum dalam pilihan bagaimana?','Anda dapat menghubungi pihak kami di nomor dibawah ini untuk kami bicarakan terlebih dahulu dan jika memang keahlian anda sesuai dengan ketentuan kami maka kami tambah di resource database kami.','2021-08-23 22:30:10',NULL),(7,'Anda perlu menghubungi kami mengenai guru? Hubungi kami di sini:','Senin-Jum\'at : 09:30 - 17:15\r\nSabtu-Minggu : 09:30 - 12:00\r\nTelepon/WA : +62 812-9778-620\r\nE-mail : satria.bagaskara.05@gmail.com','2021-08-23 22:30:27','2021-08-23 16:05:48');

/*Table structure for table `tbl_detail_mentor` */

DROP TABLE IF EXISTS `tbl_detail_mentor`;

CREATE TABLE `tbl_detail_mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `detail_skill` text NOT NULL,
  `biodata` text NOT NULL,
  `detail_pengajaran` text NOT NULL,
  `pengalaman_ngajar` int(11) NOT NULL,
  `harga_perjam` bigint(25) NOT NULL,
  `medsos_linkedin` varchar(50) DEFAULT NULL,
  `medsos_github` varchar(255) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `path_document` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `alasan_ditolak` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_detail_mentor_master_user1_idx` (`user_id`),
  KEY `fk_tbl_detail_mentor_master_status1_idx` (`status_id`),
  CONSTRAINT `fk_tbl_detail_mentor_master_status1` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_detail_mentor_master_user1` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_detail_mentor` */

insert  into `tbl_detail_mentor`(`id`,`user_id`,`detail_skill`,`biodata`,`detail_pengajaran`,`pengalaman_ngajar`,`harga_perjam`,`medsos_linkedin`,`medsos_github`,`instagram`,`document`,`path_document`,`status_id`,`alasan_ditolak`,`created_at`,`updated_at`) values (1,6,'saya ahli dalam beberapa bahasa,software engineer, database specialist, project management, dkit','Saya merupakan project manager pada salah satu perusahaan terkemuka di indonesia. Saya sudah banyak mengerjakan projek profesional baik swasta maupun instansi pemerintahan. Saya terbiasa menggunakan berbagai bahasa pemprograman mulai dari PHP, JavaScript, dan Java. Saya juga terbiasa dengan  HTML dan CSS serta beberapa framework pendukung seperti Laravel dan Codeigniter. Saya jga memahami metode pengembangan perangkat lunak dengan metode agile serta framework scrum.','Saya akan mengajarkan mulai dari basic pemprograman hinggi advance dan beberapa tips2 best practices yg bisa berguna bagi pemula atau programmer. Saya akan memberikan sesuai apa yang ada di lapangan dengan teknologi yang sedang berkembang dan mempunyai peluang besar selama lebih dari 5 tahun kedepan. Dan saya akan menyesuaikan seberapa jauh pengetahuan kalian, jika dirasa bisa lompat materi saya akan lakukan agar tidak banyak membuang waktu.',11,155000,'Satria Bagaskara','Satria BagasKara','Satria BagasKara','my_resume.pdf','1627404983',2,NULL,'2021-07-25 20:27:12','2021-08-15 05:38:29'),(10,16,'Saya memiliki pengalaman dalam Kotlin Android Programming dengan menjadi Guru SMK dan juga Mentor di Binar Academy. Bisa mengajarkan konsep dasar OOP Java maupun Kotlin hingga Android Development.','Saya seorang Ahli Madya dengan pengalaman sebagai Android Engineer di salah satu BUMN.\r\n\r\nDitambah dengan pengalaman mengajar khusus tentang programming selama 2 Tahun.\r\n\r\nSelain itu, juga saya menjadi Mentor di salah satu Startup Education-Tech di Jabodetabek. Sehingga saya memiliki cara khusus untuk berbagi ilmu.','Metode pengajaran saya adalah dengan memberikan hal-hal mendasar mengenai materi yang saya ajarkan serta dikemas menggunakan bahasa dan analogi yang mudah untuk dipahami.\r\n\r\nSelain itu, juga memberikan konsultasi mengenai project ataupun tugas mengenai pengembangan Aplikasi Android baik Java maupun Kotlin.\r\n\r\nPembelajaran online menggunakan Google meet, dan Video rekaman kelas akan dishare secara FULL. sehingga bisa diulang-ulang di rumah :)',10,100000,'https://www.linkedin.com/in/benidolo-157a38a8/','@benidolo','@beni_dolo','1.pdf','1629093172',2,NULL,'2021-08-16 05:52:52','2021-08-16 07:09:38'),(11,17,'Seorang Fullstack Developer dengan 4 tahun pengalaman yang ingin share ilmu frontend dan backend, coding itu asik dan sangat menyenangkan.','Haloo semuanya..\r\nPerkenalkan nama saya Ricky, saya sudah menjadi Fullstack Developer selama kurang lebih 4 tahun dan sekarang sedang melanjutkan pendidikan S2,\r\nSaya bisa bantu kalian untuk belajar coding atau pemrograman web, pemrograman dasar, bahasa pemrograman, membuat aplikasi, membuat website dan belajar tekonologi Backend dan Frontend\r\n\r\nSaya menguasai teknologi dan pemrograman web dan app development baik itu Backend maupun Frontend, wa/tlp saya 0812391587128','Saya akan mengajarkan mulai dari basic pemrograman hingga advance dan beberapa tips2 best practices yang bisa berguna bagi pemula atau programmer :)\r\n\r\nSaya akan memberikan sesuai apa yang ada di lapangan dan teknologi yang sedang berkembang dan mempunyai peluang besar selama lebih dari 5 tahun kedepan\r\n\r\nSaya akan menyesuaikan seberapa jauh pengetahuan kalian, kalo dirasa bisa lompat materi saya akan lakukan biar ga banyak waktu yang terbuang.\r\n\r\nBagi yang ingin konsul skripsi, tugas akhir, project atau lain2 juga boleh yang pasti belajar sama saya santai dan ga kaku :)\r\nbisa tanya2 dulu di instagram: rickyhehe\r\n\r\nTeknologi dan pemrograman yang saya dapat ajarkan\r\nBasic:\r\n- HTML. CSS, Bootstrap, Antdesign, Javascript, Jquery, PHP, MySql, PostreSql\r\nAdvance:\r\nLaravel, Codeigniter, React JS, Node JS, Express JS, Docker, linux Server',3,130000,'https://www.linkedin.com/in/robert-157a38a8/','@robert','@robert','2.pdf','1629093454',2,NULL,'2021-08-16 05:57:34','2021-08-26 08:16:26'),(12,18,'Mahasiswa Teknik Informatika Yang Menawarkan Les Privat Navigasi Web Bagi Anak-Anak Sekolah','saya seorang mahasiswa Informatika di iSTTS (salah satu kampus terbaik di\r\nSurabaya khususnya jurusan Teknik Informatika ) yang ingin mengisi waktu luang\r\nuntuk mengajar les privat untuk daerah surabaya dan sekitarnya. Tujuan saya\r\nmemberikan les ini adalah yang pertama adalah untuk\r\nmembantu orang. Yang kedua adalah mencari pengalaman kerja.\r\nSaya memiliki pengalaman mengajar 1 tahun les berkelompok dan 4 bulan untuk\r\nmengajar les privat murid saya sendiri.','Metodologi yang saya terapkan adalah menerapkan soal soal kepada murid\r\nmulai dari yang paling mudah sampai yang paling susah namun sebelum menuju\r\nkesitu tidak lupa saya akan menjelaskan teori dasar dan kata pengantar dari\r\nmateri tersebut sehingga murid paham ketika mengerjakan soal.',3,125000,'https://www.linkedin.com/in/simons-157a38a8/','@simons','@simons','3.pdf','1629094147',2,NULL,'2021-08-16 06:09:07','2021-08-16 07:09:50'),(13,19,'Saya alexandra sebagai Project Manager di sebuah perusahaan BUMN di Indonesia menawarkan pembelajaran mengenai ilmu teknik sipil terutama dalam bidang geoteknik. Akan diajarkan juga program plaxi','Saya alexandra seorang sarjana Teknik dari Universitas Pendidikan Indonesia dengan nilai IPK 3.47 . Saat ini saya bekerja pada bidang kontruksi dengan jabatan Project Manager di Proyek Bendungan Leuwi Keris Kabupaten Tasikmalaya. Saya sudah memulai bimbingan belajar secara mandiri dari tahun 2019 yaitu pada bidang geoteknik. Saya telah mempunyai SKA muda dalam bidang Konstruksi Bendungan, Jalan Raya dan Dermaga.','Metode pengajaran saya dengan cara memberikan materi terlebih dahulu sebelum masuk ke dalam software. Kelas yang saya ajarkan berdasarkan tingkatan dan kebutuhan di dunia kerja agar dapat segera dipraktekan di dunia kerja. Pendekatan yang saya lakukan untuk setiap topik yaitu selalu mengadakan tanya jawab dengan peserta kursus agar pelajaran dapat diterima dengan baik dan bermanfaat.',5,80000,'https://www.linkedin.com/in/alexa-157a38a8/','@alexa','@alexa','4.pdf','1629094598',11,'asd','2021-08-16 06:16:38','2021-09-11 09:54:56'),(14,20,'Lulusan IT dan sebagai Karyawan BUMN yang bergerak di bidang UMKM bekerja sebagai Senior IT Business Analyst dan Analyst System. Memiliki pengalaman mengajar > 15 tahun.','Saya seorang Sarjana Komputer lulusan dari Universitas YARSI bidang Informasi Teknologi. Memiliki pengalaman kerja selama 20 tahun di bidang IT dan mengajar pada bidang yang sama lebih kurang 12 tahun. Pernah menjadi asisten laboratorium dan asisten dosen pada saat kuliah.\r\nBekerja di salah satu perusahaan BUMN terbesar di Jakarta dengan posisi IT Business Analyst. Juga memiliki pengalaman sebagai IT Manager di perusahaan-perusahaan sebelumnya. Memiliki talenta mengajar dan merupakan kegiatan fav','Metodologi pengajaran yang saya sampaikan tidak menggunakan hafalan namun lebih ke logika dan implementasi. Ada juga teori yang diberikan sebagai bahan dasar pegangan bagi murid dan dapat dijadikan acuan nantinya. Tidak menyukai cara belajar yang kaku. Saya selalu berinteraksi dengan murid semaksimal mungkin agar mendapatkan apa saja kebutuhan dari murid tersebut.\r\nBila ada kesulitan saya lebih menyukai dengan sesi pertanyaan dan murid diizinkan untuk menyampaikan pendapatnya apabila penjelasan saya masih kurang dimengerti.',15,250000,'https://www.linkedin.com/in/leonita-157a38a8/','@leonita','@leonita','5.pdf','1629095206',11,'Kriteria kamu masih belum sesuai','2021-08-16 06:26:46','2021-08-16 07:10:30');

/*Table structure for table `tbl_informasi` */

DROP TABLE IF EXISTS `tbl_informasi`;

CREATE TABLE `tbl_informasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_rekening` varchar(20) NOT NULL,
  `nama_bank` varchar(15) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_informasi` */

insert  into `tbl_informasi`(`id`,`no_rekening`,`nama_bank`,`atas_nama`,`created_at`,`updated_at`) values (1,'2592 6678 94','\r\nBank Central ','Tester Lala','2021-08-08 01:10:36',NULL),(3,'5232 2528 22','Bank Mandiri','Tester Lala','2021-08-08 01:10:37',NULL);

/*Table structure for table `tbl_reservasi` */

DROP TABLE IF EXISTS `tbl_reservasi`;

CREATE TABLE `tbl_reservasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `kebutuhan_id` int(11) NOT NULL,
  `detail_kebutuhan` text NOT NULL,
  `tgl_class` date NOT NULL,
  `jam_class` time NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `tipe_pengajaran_id` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `alasan_ditolak` text DEFAULT NULL,
  `pembayaran_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_transaksi_master_user1_idx` (`user_id`),
  KEY `fk_tbl_transaksi_master_status1_idx` (`status_id`),
  KEY `fk_tbl_reservasi_master_kebutuhan1_idx` (`kebutuhan_id`),
  KEY `fk_tbl_transaksi_master_user2` (`mentor_id`),
  KEY `pembayaran_id` (`pembayaran_id`),
  KEY `tipe_pengajaran_id` (`tipe_pengajaran_id`),
  CONSTRAINT `fk_tbl_reservasi_master_kebutuhan1` FOREIGN KEY (`kebutuhan_id`) REFERENCES `master_kebutuhan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_transaksi_master_status1` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_transaksi_master_user1` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_transaksi_master_user2` FOREIGN KEY (`mentor_id`) REFERENCES `master_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tbl_reservasi_ibfk_1` FOREIGN KEY (`pembayaran_id`) REFERENCES `pembayaran_reservasi` (`id`),
  CONSTRAINT `tbl_reservasi_ibfk_2` FOREIGN KEY (`tipe_pengajaran_id`) REFERENCES `master_tipe_pengajaran` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_reservasi` */

insert  into `tbl_reservasi`(`id`,`user_id`,`kebutuhan_id`,`detail_kebutuhan`,`tgl_class`,`jam_class`,`jumlah_jam`,`tipe_pengajaran_id`,`total_biaya`,`status_id`,`mentor_id`,`alasan_ditolak`,`pembayaran_id`,`created_at`,`updated_at`) values (3,7,2,'Saya ingi belajar membuat website dari nol. mohon bimbingan nya','2021-07-26','10:00:00',1,1,155000,10,6,NULL,1,'2021-07-25 22:53:50','2021-08-07 17:58:16'),(10,7,1,'testing','2021-08-10','13:00:00',1,2,155000,6,6,NULL,NULL,'2021-08-08 14:32:54','2021-08-23 12:38:40'),(13,15,1,'Saya mau Belajar Java dari 0','2021-08-28','09:00:00',3,2,390000,10,17,NULL,2,'2021-08-23 13:03:28','2021-08-23 13:15:02');

/*Table structure for table `ulasan_mentor` */

DROP TABLE IF EXISTS `ulasan_mentor`;

CREATE TABLE `ulasan_mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservasi_id` int(11) NOT NULL,
  `bintang` int(1) NOT NULL,
  `ulasan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservasi_id` (`reservasi_id`),
  CONSTRAINT `ulasan_mentor_ibfk_1` FOREIGN KEY (`reservasi_id`) REFERENCES `tbl_reservasi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `ulasan_mentor` */

insert  into `ulasan_mentor`(`id`,`reservasi_id`,`bintang`,`ulasan`,`created_at`,`updated_at`) values (4,3,4,'mantap pokok nya','2021-08-18 17:50:54','2021-08-07 17:50:54'),(7,13,5,'mantap','2021-08-23 13:15:02','2021-08-23 13:15:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
