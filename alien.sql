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
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `alien` */

insert  into `alien`(`aid`,`aname`,`color`,`aliencolor`,`fname`,`lname`,`mname`) values 
(0,NULL,NULL,NULL,NULL,NULL,NULL),
(101,'Praveen','Red',NULL,NULL,NULL,NULL),
(102,'Yogesh','Black',NULL,NULL,NULL,NULL),
(103,'Sona','Black',NULL,NULL,NULL,NULL),
(104,'Prathee','SkyBlue',NULL,NULL,NULL,NULL),
(105,NULL,NULL,'NavyBlue',NULL,NULL,NULL),
(106,'Sivakami',NULL,'White',NULL,NULL,NULL),
(107,NULL,'Purple',NULL,'praveen','bharaneedhaaran','kumaar');

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

/*Table structure for table `laptop` */

DROP TABLE IF EXISTS `laptop`;

CREATE TABLE `laptop` (
  `lid` int(11) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `laptop` */

insert  into `laptop`(`lid`,`lname`) values 
(102,'MacBook');

/*Table structure for table `laptop_student` */

DROP TABLE IF EXISTS `laptop_student`;

CREATE TABLE `laptop_student` (
  `Laptop_lid` int(11) NOT NULL,
  `student_rollno` int(11) NOT NULL,
  KEY `FK8C6608D67EFAF739` (`Laptop_lid`),
  KEY `FK8C6608D6B8EA98A0` (`student_rollno`),
  CONSTRAINT `FK8C6608D67EFAF739` FOREIGN KEY (`Laptop_lid`) REFERENCES `laptop` (`lid`),
  CONSTRAINT `FK8C6608D6B8EA98A0` FOREIGN KEY (`student_rollno`) REFERENCES `student` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `laptop_student` */

insert  into `laptop_student`(`Laptop_lid`,`student_rollno`) values 
(102,2);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `rollno` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student` */

insert  into `student`(`rollno`,`marks`,`name`) values 
(2,80,'Krishna');

/*Table structure for table `student_laptop` */

DROP TABLE IF EXISTS `student_laptop`;

CREATE TABLE `student_laptop` (
  `Student_rollno` int(11) NOT NULL,
  `laptop_lid` int(11) NOT NULL,
  KEY `FK4CE3409E7EFAF739` (`laptop_lid`),
  KEY `FK4CE3409EB8EA98A0` (`Student_rollno`),
  CONSTRAINT `FK4CE3409E7EFAF739` FOREIGN KEY (`laptop_lid`) REFERENCES `laptop` (`lid`),
  CONSTRAINT `FK4CE3409EB8EA98A0` FOREIGN KEY (`Student_rollno`) REFERENCES `student` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student_laptop` */

insert  into `student_laptop`(`Student_rollno`,`laptop_lid`) values 
(2,102);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
