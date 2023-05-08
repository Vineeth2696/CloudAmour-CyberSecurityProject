/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - cloudarmor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloudarmor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cloudarmor`;

/*Table structure for table `blocklist` */

DROP TABLE IF EXISTS `blocklist`;

CREATE TABLE `blocklist` (
  `uname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `ipaddress` varchar(45) NOT NULL,
  `product` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `ratingvalues` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blocklist` */

insert  into `blocklist`(`uname`,`email`,`ipaddress`,`product`,`rating`,`ratingvalues`) values ('shiva','shivakrish5573@gmail.com','192.168.1.13','aaa','Positive','Excellent');
insert  into `blocklist`(`uname`,`email`,`ipaddress`,`product`,`rating`,`ratingvalues`) values ('shiva','shivakrish5573@gmail.com','192.168.1.13','aaa','Positive','Excellent');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `uid` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  `productname` varchar(45) NOT NULL DEFAULT '',
  `productitem` varchar(45) NOT NULL DEFAULT '',
  `quantity` varchar(45) NOT NULL DEFAULT '',
  `total` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) DEFAULT NULL,
  `pdate` varchar(45) NOT NULL,
  `cstatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`uid`,`name`,`productname`,`productitem`,`quantity`,`total`,`status`,`pdate`,`cstatus`) values ('9c622','shivakrish5573@gmail.com','Infrastructure','aaa','10','100000','YES','2023/04/21','No');
insert  into `cart`(`uid`,`name`,`productname`,`productitem`,`quantity`,`total`,`status`,`pdate`,`cstatus`) values ('79ace','krish@gmail.com','Infrastructure','aaa','10','100000','YES','2023/04/21','No');
insert  into `cart`(`uid`,`name`,`productname`,`productitem`,`quantity`,`total`,`status`,`pdate`,`cstatus`) values ('9c622','shivakrish5573@gmail.com','Infrastructure','aaa','10','100000','YES','2023/04/21','No');
insert  into `cart`(`uid`,`name`,`productname`,`productitem`,`quantity`,`total`,`status`,`pdate`,`cstatus`) values ('d11a8','ramu@gmail.com','Infrastructure','aaa','20','200000','YES','2023/04/21','No');

/*Table structure for table `feed` */

DROP TABLE IF EXISTS `feed`;

CREATE TABLE `feed` (
  `feedback` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `ratingvalues` varchar(45) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `ipaddr` varchar(45) NOT NULL,
  `date_time` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `stime` int(100) NOT NULL,
  `uid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feed` */

insert  into `feed`(`feedback`,`rating`,`ratingvalues`,`comments`,`ipaddr`,`date_time`,`name`,`email`,`status`,`stime`,`uid`) values ('aaa','Positive','Excellent','very good','192.168.1.13','21 Apr 2023 13:21:34  ','shiva','shivakrish5573@gmail.com','Yes',-1543885148,'9c622');
insert  into `feed`(`feedback`,`rating`,`ratingvalues`,`comments`,`ipaddr`,`date_time`,`name`,`email`,`status`,`stime`,`uid`) values ('aaa','Negative','Poor','very poor Infrastructure service and also high cost','192.168.1.13','21 Apr 2023 13:30:53  ','krish','krish@gmail.com','No',-1543326616,'79ace');
insert  into `feed`(`feedback`,`rating`,`ratingvalues`,`comments`,`ipaddr`,`date_time`,`name`,`email`,`status`,`stime`,`uid`) values ('aaa','Negative','Poor','very poor infrastructure and also high cost','192.168.1.13','21 Apr 2023 13:37:51  ','ramu','ramu@gmail.com','No',-1542908880,'d11a8');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `imgid` varchar(50) NOT NULL,
  `image` longblob NOT NULL,
  `iname` varchar(50) NOT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `pitems` varchar(45) DEFAULT NULL,
  `bname` varchar(45) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `validity` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`imgid`,`image`,`iname`,`pname`,`pitems`,`bname`,`price`,`validity`) values ('397','back.jpg','back.jpg','Infrastructure','aaa','bbb',10000,'2023-04-29');

/*Table structure for table `sybilattack` */

DROP TABLE IF EXISTS `sybilattack`;

CREATE TABLE `sybilattack` (
  `uid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contactno` varchar(30) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `rtime` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sybilattack` */

insert  into `sybilattack`(`uid`,`name`,`email`,`pass`,`dob`,`location`,`contactno`,`ipaddress`,`rtime`) values ('5a94d','shivakrishna keshavaraju','shivakrish5573@gmail.com','shiva','2023-03-27','hyderabad','08121893257','Shiva-Laptop/192.168.1.13','2023/04/21 19:09:26');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contactno` varchar(30) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `rtime` varchar(50) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`name`,`email`,`pass`,`dob`,`location`,`contactno`,`ipaddress`,`rtime`,`status`) values ('79ace','krish','krish@gmail.com','123','2023-12-31','hyderabad','08121893257','Shiva-Laptop/192.168.1.13','2023/04/21 18:53:41','Yes');
insert  into `user`(`uid`,`name`,`email`,`pass`,`dob`,`location`,`contactno`,`ipaddress`,`rtime`,`status`) values ('9c622','shiva','shivakrish5573@gmail.com','shiva','2023-04-20','hyderabad','08121893257','Shiva-Laptop/192.168.1.13','2023/04/21 18:00:24','Yes');
insert  into `user`(`uid`,`name`,`email`,`pass`,`dob`,`location`,`contactno`,`ipaddress`,`rtime`,`status`) values ('d11a8','ramu','ramu@gmail.com','123','1994-12-21','chennai','9876545678','Shiva-Laptop/192.168.1.13','2023/04/21 19:06:13','Yes');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
