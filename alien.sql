/*
SQLyog Trial v13.1.5  (64 bit)
MySQL - 8.0.18 : Database - neon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`neon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `neon`;

/*Table structure for table `alien` */

DROP TABLE IF EXISTS `alien`;

CREATE TABLE `alien` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `aliencolor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `alien` */

insert  into `alien`(`aid`,`aname`,`color`,`aliencolor`) values 
(0,NULL,NULL,NULL),
(101,'Praveen','Red',NULL),
(102,'Yogesh','Black',NULL),
(103,'Sona','Black',NULL),
(104,'Prathee','SkyBlue',NULL),
(105,NULL,NULL,'NavyBlue'),
(106,'Sivakami',NULL,'White');

/*Table structure for table `alien_table` */

DROP TABLE IF EXISTS `alien_table`;

CREATE TABLE `alien_table` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `aliencolor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `alien_table` */

insert  into `alien_table`(`aid`,`aname`,`color`,`aliencolor`) values 
(104,NULL,NULL,'SkyBlue');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
