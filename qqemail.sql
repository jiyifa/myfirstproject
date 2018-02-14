/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17-log : Database - qq_email
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qq_email` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qq_email`;

/*Table structure for table `communicate_group` */

DROP TABLE IF EXISTS `communicate_group`;

CREATE TABLE `communicate_group` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '通讯录分组编号',
  `groupName` varchar(20) NOT NULL COMMENT '分组名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `communicate_group` */

/*Table structure for table `communicate_list` */

DROP TABLE IF EXISTS `communicate_list`;

CREATE TABLE `communicate_list` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '通讯录编号',
  `userId` int(11) NOT NULL COMMENT '用户编号',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `email` varchar(20) NOT NULL COMMENT '邮箱地址',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `postCode` varchar(10) DEFAULT NULL COMMENT '邮编',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `qqnumber` varchar(20) DEFAULT NULL COMMENT 'qq号',
  `work` varchar(200) DEFAULT NULL COMMENT '工作',
  `groupId` int(4) DEFAULT NULL COMMENT '分组',
  `def` varchar(200) DEFAULT NULL COMMENT '自定义',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `groupId` (`groupId`),
  CONSTRAINT `communicate_list_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `euser` (`uid`),
  CONSTRAINT `communicate_list_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `communicate_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `communicate_list` */

/*Table structure for table `eemail` */

DROP TABLE IF EXISTS `eemail`;

CREATE TABLE `eemail` (
  `esid` int(11) NOT NULL AUTO_INCREMENT COMMENT '发件编号',
  `title` varchar(200) DEFAULT NULL COMMENT '主题',
  `content` varchar(200) DEFAULT NULL COMMENT '内容',
  `senderid` int(11) DEFAULT NULL COMMENT '发件人ID',
  `getemail` int(11) DEFAULT '0' COMMENT '回执（0否，1是）',
  `senddate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `emailstatus` int(11) DEFAULT '1' COMMENT '邮件保存状态（0：草稿，1：正常）',
  PRIMARY KEY (`esid`),
  KEY `senderid` (`senderid`),
  CONSTRAINT `eemail_ibfk_1` FOREIGN KEY (`senderid`) REFERENCES `euser` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `eemail` */

insert  into `eemail`(`esid`,`title`,`content`,`senderid`,`getemail`,`senddate`,`emailstatus`) values (1,'emailTest','adsfasfjkafsdf',2,0,'2018-01-23 16:11:13',1),(2,'fsfjd','af',2,0,'2018-01-25 16:36:07',1);

/*Table structure for table `efile` */

DROP TABLE IF EXISTS `efile`;

CREATE TABLE `efile` (
  `efid` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件id',
  `esid` int(11) DEFAULT NULL COMMENT '邮件id',
  `fileurl` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `filename` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `filesize` varchar(200) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`efid`),
  KEY `esid` (`esid`),
  CONSTRAINT `efile_ibfk_1` FOREIGN KEY (`esid`) REFERENCES `efolder` (`efid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `efile` */

insert  into `efile`(`efid`,`esid`,`fileurl`,`filename`,`filesize`) values (1,NULL,NULL,NULL,NULL);

/*Table structure for table `efolder` */

DROP TABLE IF EXISTS `efolder`;

CREATE TABLE `efolder` (
  `efid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件夹id',
  `euid` int(11) DEFAULT NULL COMMENT '用户（null为公用，not null 个人）',
  `foldername` varchar(50) DEFAULT NULL COMMENT '文件夹名',
  PRIMARY KEY (`efid`),
  KEY `euid` (`euid`),
  CONSTRAINT `efolder_ibfk_1` FOREIGN KEY (`euid`) REFERENCES `euser` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `efolder` */

insert  into `efolder`(`efid`,`euid`,`foldername`) values (1,NULL,'收件箱'),(2,NULL,'草稿箱'),(3,NULL,'已发送'),(4,NULL,'已删除'),(5,NULL,'垃圾箱');

/*Table structure for table `erelation` */

DROP TABLE IF EXISTS `erelation`;

CREATE TABLE `erelation` (
  `Erid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `esid` int(11) NOT NULL COMMENT '邮件id',
  `receivercodeid` int(11) DEFAULT NULL COMMENT '发送人id',
  `readdate` datetime DEFAULT NULL COMMENT '第一次读取时间',
  `emailstatus` int(11) DEFAULT NULL COMMENT '邮件状态（0：未读，1：已读）',
  `efid` int(11) NOT NULL COMMENT '文件夹编号',
  `booldel` int(11) DEFAULT NULL COMMENT '是否删除（0：是，1：否）',
  `scicemail` int(11) DEFAULT NULL COMMENT '是否密送（0：否，1：是）',
  PRIMARY KEY (`Erid`),
  KEY `esid` (`esid`),
  KEY `receivercodeid` (`receivercodeid`),
  KEY `efid` (`efid`),
  CONSTRAINT `erelation_ibfk_1` FOREIGN KEY (`esid`) REFERENCES `eemail` (`esid`),
  CONSTRAINT `erelation_ibfk_2` FOREIGN KEY (`receivercodeid`) REFERENCES `euser` (`uid`),
  CONSTRAINT `erelation_ibfk_3` FOREIGN KEY (`efid`) REFERENCES `efolder` (`efid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `erelation` */

insert  into `erelation`(`Erid`,`esid`,`receivercodeid`,`readdate`,`emailstatus`,`efid`,`booldel`,`scicemail`) values (1,1,1,'2018-01-23 16:13:51',1,1,0,0),(2,2,1,'2018-01-25 16:37:05',0,1,0,0);

/*Table structure for table `euser` */

DROP TABLE IF EXISTS `euser`;

CREATE TABLE `euser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uname` varchar(50) NOT NULL COMMENT '用户名称',
  `upwd` varchar(50) NOT NULL COMMENT '密码',
  `sex` int(11) DEFAULT '0' COMMENT '性别（0：男，1：女）',
  `emailno` varchar(50) NOT NULL COMMENT '电子邮件',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `acronym` varchar(50) NOT NULL COMMENT '姓名简拼',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `euser` */

insert  into `euser`(`uid`,`uname`,`upwd`,`sex`,`emailno`,`phone`,`acronym`) values (1,'admin','12345',0,'addmin@qq.com',NULL,'ad'),(2,'test','12345',0,'test@qq.com',NULL,'tes');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
