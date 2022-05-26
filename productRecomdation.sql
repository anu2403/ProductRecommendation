/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.5.30 : Database - productrecomdation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`productrecomdation` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `productrecomdation`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `usern` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`usern`,`password`) values 
('a','a');

/*Table structure for table `bookingproduct` */

DROP TABLE IF EXISTS `bookingproduct`;

CREATE TABLE `bookingproduct` (
  `custnm` varchar(44) DEFAULT NULL,
  `mobno` varchar(44) DEFAULT NULL,
  `emilid` varchar(44) DEFAULT NULL,
  `addrs` varchar(44) DEFAULT NULL,
  `pinn` varchar(6) DEFAULT NULL,
  `qty` int(9) DEFAULT NULL,
  `cardtype` varchar(44) DEFAULT NULL,
  `cardnumber` varchar(99) DEFAULT NULL,
  `SecurityCode` varchar(4) DEFAULT NULL,
  `ExpiryDate` varchar(99) DEFAULT NULL,
  `CardHolderName` varchar(99) DEFAULT NULL,
  `pcode` int(9) DEFAULT NULL,
  `pcatogry` varchar(55) DEFAULT NULL,
  `pname` varchar(99) DEFAULT NULL,
  `totalcost` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookingproduct` */

insert  into `bookingproduct`(`custnm`,`mobno`,`emilid`,`addrs`,`pinn`,`qty`,`cardtype`,`cardnumber`,`SecurityCode`,`ExpiryDate`,`CardHolderName`,`pcode`,`pcatogry`,`pname`,`totalcost`) values 
('a','a','ravijee1982@gmail.com','a','a',2,'Debit Card','222','2222','22','22',103,'Samsung','Samsung XY34',110000);

/*Table structure for table `productupload` */

DROP TABLE IF EXISTS `productupload`;

CREATE TABLE `productupload` (
  `pcode` varchar(88) DEFAULT NULL,
  `classfication` varchar(99) DEFAULT NULL,
  `photoupload` varchar(99) DEFAULT NULL,
  `cost` int(9) DEFAULT NULL,
  `pname` varchar(99) DEFAULT NULL,
  `pcopany` varchar(99) DEFAULT NULL,
  `productdescription` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productupload` */

insert  into `productupload`(`pcode`,`classfication`,`photoupload`,`cost`,`pname`,`pcopany`,`productdescription`) values 
('101','Mobile','1.jpg',19000,'Sony Xperia E4','Sony','Sony Xperia E4 sdfs fsad fa df df sdf'),
('102','Mobile','1.jpg',15000,'Nokia C2','Nokia',' sdf asdf'),
('103','Mobile','1.jpg',21000,'Samsung Z3','Samsung','sdfa sd f'),
('103','TV','4.jpg',55000,'Samsung XY34','Samsung','sdfa ds'),
('104','TV','4.jpg',120000,'LG GXY3','LG','ds f adsfa '),
('101','TV','4.jpg',38900,'Sony XY34','Sony','s adfa sdf sd'),
('105','Computer','2.jpg',345345,'DEll I5','DEll','f a'),
('106','Computer','2.jpg',35000,'HCL I2','HCL','s adf af'),
('107','Computer','2.jpg',15000,'HP I5','HP','sdfasd '),
('105','TV','4.jpg',444,'TVDY','Samsung','sdfa df a'),
('105','TV','4.jpg',23423,'TVDY','Samsung','sdfa');

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `productnm` varchar(99) DEFAULT NULL,
  `ratingg` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`productnm`,`ratingg`) values 
('Nokia C2',20),
('Sony Xperia E4',27),
('Samsung Z3',2);

/*Table structure for table `reguser` */

DROP TABLE IF EXISTS `reguser`;

CREATE TABLE `reguser` (
  `nm` varchar(99) DEFAULT NULL,
  `emaild` varchar(99) DEFAULT NULL,
  `password` varbinary(99) DEFAULT NULL,
  `mobiel` varchar(99) DEFAULT NULL,
  `addres` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reguser` */

insert  into `reguser`(`nm`,`emaild`,`password`,`mobiel`,`addres`) values 
('ravi','ri66kumar@gmail.com','p','p','p'),
('suraj','suraj@gmail.com','u','u','u'),
('a','a','a','a','s');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
