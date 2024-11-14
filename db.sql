/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangpaiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangpaiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangpaiguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-22 10:09:39'),(2,'sex_types','性别',2,'女',NULL,'2021-05-22 10:09:39'),(3,'leixing_types','文件类型名称',1,'文件类型1',NULL,'2021-05-22 10:09:39'),(4,'leixing_types','文件类型名称',2,'文件类型2',NULL,'2021-05-22 10:09:39'),(6,'leixing_types','',3,'文件类型3',NULL,'2021-05-22 14:46:04');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息名称 Search ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1','http://localhost:8080/wangpaiguanli/upload/1621655121914.jpg','2021-05-22 11:53:16','公告详情1',NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ffi0n5d0hp2sh5i5ik4ovnxd45xs74ww','2021-05-22 11:12:01','2021-05-22 15:44:27'),(2,1,'用户1','users','用户','cvqskgl18m993gn8kczica8512q1tuv3','2021-05-22 13:23:31','2021-05-22 15:48:13'),(3,4,'123','users','用户','s61tsqzwb6s5v0xm6fdk7jdaysldy3a3','2021-05-22 13:44:26','2021-05-22 14:44:27'),(4,5,'123','users','用户','wd4vqe2k1v5z1kwfknqhalh51kqnieyx','2021-05-22 13:51:40','2021-05-22 14:51:41'),(5,6,'123','users','用户','or9sitf3l4yszjc9pyjm7i0irh3yip4m','2021-05-22 13:55:42','2021-05-22 15:11:30'),(6,7,'123','users','用户','qfavcrvineuxfij56hyci2p8hwlwufeh','2021-05-22 14:20:10','2021-05-22 15:22:15'),(7,8,'123','users','用户','ehllj4m4ot4rqwrrl5ijhyw2gj5z3ms1','2021-05-22 14:46:39','2021-05-22 15:48:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `wodewenjian` */

DROP TABLE IF EXISTS `wodewenjian`;

CREATE TABLE `wodewenjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_types` int(200) DEFAULT NULL COMMENT '用户 Search',
  `wodewenjian_name` varchar(200) DEFAULT NULL COMMENT '教学资源名称  Search ',
  `wodewenjian_file` varchar(200) DEFAULT NULL COMMENT '文件  Search ',
  `leixing_types` int(200) DEFAULT NULL COMMENT '文件类型  Search ',
  `shuangchuan_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `wodewenjian_content` text COMMENT '详情信息',
  `zhuangt1_types` int(200) DEFAULT NULL COMMENT '状态',
  `wodewenjian_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='推荐课程';

/*Data for the table `wodewenjian` */

insert  into `wodewenjian`(`id`,`yonghu_types`,`wodewenjian_name`,`wodewenjian_file`,`leixing_types`,`shuangchuan_time`,`wodewenjian_content`,`zhuangt1_types`,`wodewenjian_time`) values (1,1,'文件1','http://localhost:8080/wangpaiguanli/upload/1621653840591.doc',1,'2021-05-22 13:29:15','详情信息1',2,'2021-05-22 13:29:15'),(3,8,'文件2','http://localhost:8080/wangpaiguanli/upload/1621666049665.rar',3,'2021-05-22 14:48:41','详情信息2',1,'2021-05-22 14:48:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'123123123123123123','12312312312','123123@qq.com','http://localhost:8080/wangpaiguanli/upload/1621653174932.jpg',NULL),(2,'222','123456','用户2',1,'123123123123123','12312312','123123123@qq.com','http://localhost:8080/wangpaiguanli/upload/1621653193861.jpg',NULL),(8,'123','123','123',2,'123123123','12312312312','123','http://localhost:8080/wangpaiguanli/upload/1621666010034.JPG',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
