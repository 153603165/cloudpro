/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17 : Database - oauth2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oauth2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oauth2`;

/*Table structure for table `oauth_access_token` */

DROP TABLE IF EXISTS `oauth_access_token`;

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_access_token` */

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values ('a5f019d81036ecd997a41a7151799605','�우sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$�L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Zݧ΂\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0_ϙ>�xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0�ʞ�0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet׬֚�۪\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$ad9dcf46-03a8-42c2-9995-7218202f522c','a3bc37f9a7370d9a20e512120f9e36d1','admin','acme','�우sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�ʞ�0L\0cq\0~\0xpsr\0java.util.ArrayListx�Н�ơ�\0I\0sizexp\0\0\0w\0\0\0sr\0com.wang.domain.Authorityi��q�\0L\0	authorityt\0Ljava/lang/String;L\0idt\0Ljava/lang/Long;xpt\0\nROLE_ADMINsr\0java.lang.Long;�䑌�#݂\0J\0valuexr\0java.lang.Number����ɂ\0\0xp\0\0\0\0\0\0\0sq\0~\0\rt\0	ROLE_USERsq\0~\0\0\0\0\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0acmesr\0%java.util.Collections$UnmodifiableMap񥩾t󆀂\0L\0mq\0~\0xpsr\0java.util.HashMapہV`σ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\0VB42Udt\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0http://localhost:8080/logint\0statet\0oK1dXNt\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet׬֚�۪\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\01w\0\0\0?@\0\0\0\0\0\0xsq\0~\0!?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://localhost:8080/loginpsq\0~\01w\0\0\0?@\0\0\0\0\0\0xsq\0~\01w\0\0\0?@\0\0\0\0\0q\0~\0(xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0<sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 E6022048260C29A4DCDD030503D0DF5Dpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0.sr\0java.util.TreeSetݘP��톛\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin',NULL),('ec9590442cea10686863cb4fe60ded97','�우sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$�L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Zݧ΂\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0_ϙ硸psr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0�ʞ�0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet׬֚�۪\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$1ded1018-cacc-440f-a0a3-8a3c1520e4f0','a3bc37f9a7370d9a20e512120f9e36d1','admin','acme','�우sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�ʞ�0L\0cq\0~\0xpsr\0java.util.ArrayListx�Н�ơ�\0I\0sizexp\0\0\0w\0\0\0sr\0com.wang.domain.Authorityi��q�\0L\0	authorityt\0Ljava/lang/String;L\0idt\0Ljava/lang/Long;xpt\0\nROLE_ADMINsr\0java.lang.Long;�䑌�#݂\0J\0valuexr\0java.lang.Number����ɂ\0\0xp\0\0\0\0\0\0\0sq\0~\0\rt\0	ROLE_USERsq\0~\0\0\0\0\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0acmesr\0%java.util.Collections$UnmodifiableMap񥩾t󆀂\0L\0mq\0~\0xpsr\0java.util.HashMapہV`σ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\0yPD0sot\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0http://localhost:8080/logint\0statet\0F4V9HEt\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet׬֚�۪\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\01w\0\0\0?@\0\0\0\0\0\0xsq\0~\0!?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://localhost:8080/loginpsq\0~\01w\0\0\0?@\0\0\0\0\0\0xsq\0~\01w\0\0\0?@\0\0\0\0\0q\0~\0(xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0<sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0�\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 4736A4BC9260DB9B63A7F2BD7A5182DDpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0.sr\0java.util.TreeSetݘP��톛\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin',NULL);

/*Table structure for table `oauth_approvals` */

DROP TABLE IF EXISTS `oauth_approvals`;

CREATE TABLE `oauth_approvals` (
  `userId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_approvals` */

insert  into `oauth_approvals`(`userId`,`clientId`,`scope`,`status`,`expiresAt`,`lastModifiedAt`) values ('admin','acme','read','APPROVED','2017-12-18 10:47:28','2017-11-18 10:47:28');

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_details` */

insert  into `oauth_client_details`(`client_id`,`access_token_validity`,`additional_information`,`authorities`,`authorized_grant_types`,`autoapprove`,`client_secret`,`refresh_token_validity`,`resource_ids`,`scope`,`web_server_redirect_uri`) values ('acme',NULL,NULL,NULL,'authorization_code',NULL,'acmesecret',NULL,NULL,'read','');

/*Table structure for table `oauth_client_token` */

DROP TABLE IF EXISTS `oauth_client_token`;

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_token` */

/*Table structure for table `oauth_code` */

DROP TABLE IF EXISTS `oauth_code`;

CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_code` */

/*Table structure for table `oauth_refresh_token` */

DROP TABLE IF EXISTS `oauth_refresh_token`;

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_refresh_token` */

/*Table structure for table `sys_authority` */

DROP TABLE IF EXISTS `sys_authority`;

CREATE TABLE `sys_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '当前key',
  `pid` int(10) DEFAULT NULL COMMENT '父节点ID',
  `level` int(10) DEFAULT NULL COMMENT '层级',
  `auth_name` varchar(100) DEFAULT NULL COMMENT '权限名称',
  `auth_desc` varchar(100) DEFAULT NULL COMMENT '权限描述',
  `menu_url` varchar(100) DEFAULT NULL COMMENT '菜单链接',
  `icon_cls` varchar(100) DEFAULT NULL COMMENT '图标样式',
  `seq` int(10) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

/*Data for the table `sys_authority` */

insert  into `sys_authority`(`id`,`auth_key`,`pid`,`level`,`auth_name`,`auth_desc`,`menu_url`,`icon_cls`,`seq`) values (1,'SYS',0,1,'系统管理','系统管理',NULL,'fa-desktop',NULL),(2,'SYS_USER',1,2,'用户管理','用户管理','sys_user/list','fa-user',NULL),(3,'SYS_ROLE',1,2,'角色管理','角色管理','sys_role/list','fa-users',NULL),(4,'SYS_AUTHORITY',1,2,'权限管理','权限管理','sys_authority/tree','fa-sitemap',NULL),(5,'SYS_USER_ADD',2,3,'增加','增加',NULL,NULL,NULL),(6,'SYS_USER_EDIT',2,3,'编辑','编辑',NULL,NULL,NULL),(7,'SYS_USER_DELETE',2,3,'删除','删除',NULL,NULL,NULL),(8,'SYS_USER_LIST',2,3,'列表','列表',NULL,NULL,NULL),(9,'SYS_USER_QUERY',2,3,'查询','查询',NULL,NULL,NULL),(10,'SYS_USER_GRANT',2,3,'授权','授权',NULL,NULL,NULL),(11,'SYS_ROLE_ADD',3,3,'增加','增加',NULL,NULL,NULL),(12,'SYS_ROLE_EDIT',3,3,'编辑','编辑',NULL,NULL,NULL),(13,'SYS_ROLE_DELETE',3,3,'删除','删除',NULL,NULL,NULL),(14,'SYS_ROLE_LIST',3,3,'列表','列表',NULL,NULL,NULL),(15,'SYS_ROLE_QUERY',3,3,'查询','查询',NULL,NULL,NULL),(16,'SYS_ROLE_GRANT',3,3,'授权','授权',NULL,NULL,NULL),(17,'SYS_AUTHORITY_ADD',4,3,'增加','增加',NULL,NULL,NULL),(18,'SYS_AUTHORITY_EDIT',4,3,'编辑','编辑',NULL,NULL,NULL),(19,'SYS_AUTHORITY_DELETE',4,3,'删除','删除',NULL,NULL,NULL),(20,'SYS_AUTHORITY_LIST',4,3,'列表','列表',NULL,NULL,NULL),(21,'SYS_AUTHORITY_QUERY',4,3,'查询','查询',NULL,NULL,NULL),(22,'SYS_LOG',1,2,'系统日志','系统日志','sys_log/list','fa-file-text-o',0),(23,'SYS_LOG_ADD',22,3,'增加','增加','','',0),(24,'SYS_LOG_EDIT',22,3,'编辑','编辑',NULL,NULL,NULL),(25,'SYS_LOG_DELETE',22,3,'删除','删除',NULL,NULL,NULL),(26,'SYS_LOG_LIST',22,3,'列表','列表',NULL,NULL,NULL),(27,'SYS_LOG_QUERY',22,3,'查询','查询',NULL,NULL,NULL),(28,'CMS',0,1,'CMS管理','CMS管理',NULL,'fa-desktop',NULL),(29,'CMS_SITE',28,2,'站点管理','站点管理','cms_site/list','fa-user',NULL),(30,'CMS_CATEGORY',28,2,'栏目管理','栏目管理','cms_category/list','fa-users',NULL),(31,'CMS_ARTICLE',28,2,'文章管理','文章管理','cms_article/list','fa-sitemap',NULL),(32,'CMS_ARTICLE_CONTENT',28,2,'文章内容管理','文章内容管理','cms_article_content/list','fa-user',NULL),(33,'CMS_SITE_ADD',29,3,'增加','增加',NULL,NULL,NULL),(34,'CMS_SITE_EDIT',29,3,'编辑','编辑',NULL,NULL,NULL),(35,'CMS_SITE_DELETE',29,3,'删除','删除',NULL,NULL,NULL),(36,'CMS_SITE_LIST',29,3,'列表','列表',NULL,NULL,NULL),(37,'CMS_SITE_QUERY',29,3,'查询','查询',NULL,NULL,NULL),(38,'CMS_CATEGORY_ADD',30,3,'增加','增加',NULL,NULL,NULL),(39,'CMS_CATEGORY_EDIT',30,3,'编辑','编辑',NULL,NULL,NULL),(40,'CMS_CATEGORY_DELETE',30,3,'删除','删除',NULL,NULL,NULL),(41,'CMS_CATEGORY_LIST',30,3,'列表','列表',NULL,NULL,NULL),(42,'CMS_CATEGORY_QUERY',30,3,'查询','查询',NULL,NULL,NULL),(43,'CMS_ARTICLE_ADD',31,3,'增加','增加',NULL,NULL,NULL),(44,'CMS_ARTICLE_EDIT',31,3,'编辑','编辑',NULL,NULL,NULL),(45,'CMS_ARTICLE_DELETE',31,3,'删除','删除',NULL,NULL,NULL),(46,'CMS_ARTICLE_LIST',31,3,'列表','列表',NULL,NULL,NULL),(47,'CMS_ARTICLE_QUERY',31,3,'查询','查询',NULL,NULL,NULL),(48,'CMS_ARTICLE_CONTENT_ADD',32,3,'增加','增加',NULL,NULL,NULL),(49,'CMS_ARTICLE_CONTENT_EDIT',32,3,'编辑','编辑',NULL,NULL,NULL),(50,'CMS_ARTICLE_CONTENT_DELETE',32,3,'删除','删除',NULL,NULL,NULL),(51,'CMS_ARTICLE_CONTENT_LIST',32,3,'列表','列表',NULL,NULL,NULL),(52,'CMS_ARTICLE_CONTENT_QUERY',32,3,'查询','查询',NULL,NULL,NULL),(53,'SYS_OAUTH2_CLIENT',1,2,'客户端管理','客户端管理','sys_oauth2_client/list','fa-sitemap',NULL),(54,'SYS_OAUTH2_CLIENT_ADD',53,3,'增加','增加',NULL,NULL,NULL),(55,'SYS_OAUTH2_CLIENT_EDIT',53,3,'编辑','编辑',NULL,NULL,NULL),(56,'SYS_OAUTH2_CLIENT_DELETE',53,3,'删除','删除',NULL,NULL,NULL),(57,'SYS_OAUTH2_CLIENT_LIST',53,3,'列表','列表',NULL,NULL,NULL),(58,'SYS_OAUTH2_CLIENT_QUERY',53,3,'查询','查询',NULL,NULL,NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(100) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`role_name`,`role_desc`) values (1,'admin','admin'),(5,'系统管理员','系统管理员');

/*Table structure for table `sys_role_authority` */

DROP TABLE IF EXISTS `sys_role_authority`;

CREATE TABLE `sys_role_authority` (
  `role_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`auth_id`),
  KEY `sys_role_authority_a` (`auth_id`),
  CONSTRAINT `sys_role_authority_a` FOREIGN KEY (`auth_id`) REFERENCES `sys_authority` (`id`),
  CONSTRAINT `sys_role_authority_r` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_authority` */

insert  into `sys_role_authority`(`role_id`,`auth_id`) values (1,1),(5,1),(1,2),(5,2),(1,3),(5,3),(1,4),(5,4),(1,5),(5,5),(1,6),(5,6),(1,7),(5,7),(1,8),(5,8),(1,9),(5,9),(1,10),(5,10),(1,11),(5,11),(1,12),(5,12),(1,13),(5,13),(1,14),(5,14),(1,15),(5,15),(1,16),(5,16),(1,17),(5,17),(1,18),(5,18),(1,19),(5,19),(1,20),(5,20),(1,21),(5,21),(1,22),(5,22),(1,23),(5,23),(1,24),(5,24),(1,25),(5,25),(1,26),(5,26),(1,27),(5,27),(1,28),(5,28),(1,29),(5,29),(1,30),(5,30),(1,31),(5,31),(1,32),(5,32),(1,33),(5,33),(1,34),(5,34),(1,35),(5,35),(1,36),(5,36),(1,37),(5,37),(1,38),(5,38),(1,39),(5,39),(1,40),(5,40),(1,41),(5,41),(1,42),(5,42),(1,43),(5,43),(1,44),(5,44),(1,45),(5,45),(1,46),(5,46),(1,47),(5,47),(1,48),(5,48),(1,49),(5,49),(1,50),(5,50),(1,51),(5,51),(1,52),(5,52),(1,53),(5,53),(1,54),(5,54),(1,55),(5,55),(1,56),(5,56),(1,57),(5,57),(1,58),(5,58);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_name` varchar(30) DEFAULT NULL COMMENT '用户名',
  `password` varchar(60) DEFAULT NULL COMMENT '密码',
  `reg_time` date DEFAULT NULL COMMENT '注册时间',
  `gender` int(1) DEFAULT NULL COMMENT '性别',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `auto_login_key` varchar(100) DEFAULT NULL COMMENT '自动登录标示',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`user_name`,`password`,`reg_time`,`gender`,`mobile`,`email`,`auto_login_key`,`last_login_time`) values (1,'leihailong','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2013-09-01',1,'18025371865','leihailong123@163.com',NULL,'2015-04-16 16:10:50'),(2,'admin','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C',NULL,1,'18025371865','hailong.lei@cnlaunch.com',NULL,NULL),(3,'leiyundong','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2014-07-10',1,'13800000000','yundong.lei@cnlaunch.com',NULL,'2015-03-19 11:42:20'),(4,'xuwenjuan','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2014-07-10',0,'13800000000','wenjuan.xu@cnlaunch.com',NULL,'2015-03-14 14:18:03'),(5,'linlongyun','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2014-08-14',1,'13027975339','longyun.lin@cnlaunch.com',NULL,'2015-03-24 13:32:27'),(6,'longluqing','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C',NULL,0,'18126089260','luqing.long@cnlaunch.com',NULL,'2015-03-24 08:37:27'),(7,'gengmengmeng','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2014-08-14',0,'13800000000','mengmeng.geng@cnlaunch.com',NULL,'2015-03-24 08:34:10'),(8,'heyongchang','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C',NULL,1,'13800000000','yongchang.he@cnlaunch.com',NULL,'2015-03-23 14:42:10'),(10,'zhumingxi','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2014-11-17',1,'18126089260','mingxi.zhu@cnlaunch.com',NULL,'2015-03-23 15:58:03'),(11,'songliuxia','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C',NULL,0,'13047048960','liuxia.song@cnlaunch.com',NULL,'2015-03-24 14:02:44'),(12,'licenglin','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2015-01-13',1,'18128836829','cenglin.li@cnlaunch.com',NULL,'2015-03-23 16:50:12'),(13,'caiyusong','$2a$08$Mu8E6GcCdg.pQ0.UitxKcOaZGgp5OqhCToxFJuYXyj4at0.NaIN6C','2015-02-03',1,'18680345937','yusong.cai@cnlaunch.com',NULL,'2015-03-10 13:38:29');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `sys_user_role_r` (`role_id`),
  CONSTRAINT `sys_user_role_r` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `sys_user_role_u` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(2,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
