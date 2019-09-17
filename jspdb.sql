/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.61 : Database - jspdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspdb`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bkId` varchar(30) NOT NULL,
  `bkName` varchar(100) DEFAULT NULL,
  `bkPublisher` varchar(100) DEFAULT NULL,
  `bkPrice` varchar(100) DEFAULT NULL,
  `borrow` int(11) DEFAULT '1',
  PRIMARY KEY (`bkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bkId`,`bkName`,`bkPublisher`,`bkPrice`,`borrow`) values ('101','Eclipse Web开发从入门到精通 : 实例版','清华大学出版社','	连洪武 ',0),('102','Eclipse从入门到精通','	清华大学出版社','强锋科技 ',1),('103','	Eclipse插件开发方法与实战','电子工业出版社','甘树满王秀明',0),('104','	Eclipse精要与高级开发技术','	电子工业出版社','张云涛龚玲',1),('105','Hibernate开发及整合应用大全','	清华大学出版社','蔡雪焘 ',0),('106','J2EE EJB应用编程实例','清华大学出版社','刘特',0),('107','J2EE应用与IBM Websphere','电子工业出版社','尼尔森马竹青',0),('108','	J2EE核心模式','科学出版社','Deepak Alur',0),('109','J2ME开发精解','	电子工业出版社','	詹建飞 ',0),('110','JAVA 2 高级编程','	机械工业出版社','奥斯丁:前导工作室',0),('111','JAVA Script开讲','华中理工大学出版社','林富尧 ',1),('112','	JAVA WEB 服务器应用程序设计','电子工业出版社','肖刚',1),('113','	JAVA 网络高级编程','人民邮电出版社','金勇华 ',1),('114','	JAVASCRIPT 实例应用','中国铁道出版社','马凡 ',1),('115','	JAVA与XML','中国电力出版社','	麦克劳林',0),('116','	JAVA多媒体技术','	清华大学出版社 ','	彭波 ',1),('117','JAVA技术内幕','机械工业出版社','赫兹纳:马朝晖等 ',1),('118','编译器构造 : Java语言版','	清华大学出版社','赖斯:杨萍',1),('119','设计模式 : Java版','电子工业出版社','	韩敬海',1),('120','精通Hibernate','电子工业出版社','刘洋',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user` varchar(40) NOT NULL COMMENT '用户名',
  `pwd` int(40) NOT NULL COMMENT '密码',
  `id` int(40) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user`,`pwd`,`id`) values ('1655010115',1655010115,1),('123',123,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
