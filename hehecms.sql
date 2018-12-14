# Host: 127.0.0.1  (Version: 5.5.53)
# Date: 2018-12-14 17:27:51
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "he_admin"
#

DROP TABLE IF EXISTS `he_admin`;
CREATE TABLE `he_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `head_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`id`,`username`,`email`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_admin"
#

INSERT INTO `he_admin` VALUES (1,'admin','鹤仔','https://resources.alilinet.com/20181016/201810161328096595.jpg','FoFuK-WrcOayDI0_kLdRwGavKN-6mXs6','$2y$13$bK1PVK/hcl2YZzuRsp7gT.1aY74UZKg6iA4JfxwFKkbJeZ3pr3CaG',NULL,'625507659@qq.com',10,1498634445,1544581877),(2,'demo','演示账号','https://resources.alilinet.com/20180323/201803230920589741.png','MGILqfoQyFko0kLvlaOxvNRp8LgZA0Qt','$2y$13$E27DkITDZIJbC0Snm3u8e.G1uueBTI4ubsPtV5S5PjmNroxqLbHJy',NULL,'demo@qq.com',10,1521768073,1521796799);

#
# Structure for table "he_admin_log"
#

DROP TABLE IF EXISTS `he_admin_log`;
CREATE TABLE `he_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gets` text COLLATE utf8_unicode_ci,
  `posts` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_admin_log"
#

INSERT INTO `he_admin_log` VALUES (1,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544695152,1544695152),(2,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c122d7020656','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c122d7020656\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695154,1544695154),(3,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c122fd96bd5e','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c122fd96bd5e\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695773,1544695773),(4,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c123019daace','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c123019daace\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695835,1544695835),(5,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c12301f4b1ee','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c12301f4b1ee\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695839,1544695839),(6,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1230243bbd6','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1230243bbd6\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695844,1544695844),(7,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c12302dbf936','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c12302dbf936\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695855,1544695855),(8,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c123080bd226','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c123080bd226\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695937,1544695937),(9,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1230a29f596','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1230a29f596\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695971,1544695971),(10,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1230bb0163e','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1230bb0163e\"}','[]',1,'625507659@qq.com','127.0.0.1',1544695996,1544695996),(11,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1230bfb6c96','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1230bfb6c96\"}','[]',1,'625507659@qq.com','127.0.0.1',1544696000,1544696000),(12,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1230cf4e0ce','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1230cf4e0ce\"}','[]',1,'625507659@qq.com','127.0.0.1',1544696016,1544696016),(13,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1230da941e6','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1230da941e6\"}','[]',1,'625507659@qq.com','127.0.0.1',1544696027,1544696027),(14,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544696948,1544696948),(15,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c12347434a8e','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c12347434a8e\"}','[]',1,'625507659@qq.com','127.0.0.1',1544696950,1544696950),(16,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544696951,1544696951),(17,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1234773f286','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1234773f286\"}','[]',1,'625507659@qq.com','127.0.0.1',1544696951,1544696951),(18,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1312bcbb3e4','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1312bcbb3e4\"}','[]',1,'625507659@qq.com','127.0.0.1',1544753853,1544753853),(19,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131492459b6','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131492459b6\"}','[]',1,'625507659@qq.com','127.0.0.1',1544754323,1544754323),(20,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131576de393','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131576de393\"}','[]',1,'625507659@qq.com','127.0.0.1',1544754552,1544754552),(21,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1318d3dad2b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1318d3dad2b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544755412,1544755412),(22,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1318d7d62f3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1318d7d62f3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544755419,1544755419),(23,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1318e17448b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1318e17448b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544755426,1544755426),(24,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1318e458b23','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1318e458b23\"}','[]',1,'625507659@qq.com','127.0.0.1',1544755428,1544755428),(25,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544755982,1544755982),(26,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131b0e56a97','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131b0e56a97\"}','[]',1,'625507659@qq.com','127.0.0.1',1544755991,1544755991),(27,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756432,1544756432),(28,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131cd0548bb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131cd0548bb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756433,1544756433),(29,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756561,1544756561),(30,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131d5126e43','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131d5126e43\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756562,1544756562),(31,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756664,1544756664),(32,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131db848953','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131db848953\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756665,1544756665),(33,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756821,1544756821),(34,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131e554180b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131e554180b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544756822,1544756822),(35,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757027,1544757027),(36,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131f2311a6b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131f2311a6b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757027,1544757027),(37,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757066,1544757066),(38,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131f49f37b3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131f49f37b3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757067,1544757067),(39,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757103,1544757103),(40,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131f6f01c83','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131f6f01c83\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757103,1544757103),(41,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757129,1544757129),(42,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c131f891be7b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c131f891be7b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544757131,1544757131),(43,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758180,1544758180),(44,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1323a405333','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1323a405333\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758181,1544758181),(45,'task/log/index','http://hehecms.admin/task/log/index?req_id=3eb2cfe7a558a84e142cdc6507062bcb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"req_id\":\"3eb2cfe7a558a84e142cdc6507062bcb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758224,1544758224),(46,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1323d03357b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1323d03357b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758224,1544758224),(47,'task/log/index','http://hehecms.admin/task/log/index?LogSearch%5Breq_id%5D=8e53e5c09e4efada80b71f380783b000&LogSearch%5Bjob_key%5D=&LogSearch%5Bappname%5D=','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"LogSearch\":{\"req_id\":\"8e53e5c09e4efada80b71f380783b000\",\"job_key\":\"\",\"appname\":\"\"}}','[]',1,'625507659@qq.com','127.0.0.1',1544758282,1544758282),(48,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13240a6e6cb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13240a6e6cb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758283,1544758283),(49,'task/log/view','http://hehecms.admin/task/log/view?id=5a65bd3b1a1aa43e4f7234fb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"5a65bd3b1a1aa43e4f7234fb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758346,1544758346),(50,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13244a30a83','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13244a30a83\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758346,1544758346),(51,'task/log/view','http://hehecms.admin/task/log/view?id=5a65bd3b1a1aa43e4f7234fb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"5a65bd3b1a1aa43e4f7234fb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758379,1544758379),(52,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13246b7d513','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13246b7d513\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758379,1544758379),(53,'task/log/view','http://hehecms.admin/task/log/view?id=5a65bd3b1a1aa43e4f7234fb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"5a65bd3b1a1aa43e4f7234fb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758538,1544758538),(54,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13250ade7c3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13250ade7c3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758539,1544758539),(55,'task/log/view','http://hehecms.admin/task/log/view?id=5a65bd3b1a1aa43e4f7234fb','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"5a65bd3b1a1aa43e4f7234fb\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758860,1544758860),(56,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13264c41bf3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13264c41bf3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758861,1544758861),(57,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544758919,1544758919),(58,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1326876890b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1326876890b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758920,1544758920),(59,'task/log/index','http://hehecms.admin/task/log/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544758923,1544758923),(60,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13268bd285b','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13268bd285b\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758928,1544758928),(61,'task/log/view','http://hehecms.admin/task/log/view?id=5a65bd291a1aa43e2c1c3c90','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"5a65bd291a1aa43e2c1c3c90\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758979,1544758979),(62,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1326c31c263','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1326c31c263\"}','[]',1,'625507659@qq.com','127.0.0.1',1544758979,1544758979),(63,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544765949,1544765949),(64,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1341fceea02','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1341fceea02\"}','[]',1,'625507659@qq.com','127.0.0.1',1544765950,1544765950),(65,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342037dfb9','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342037dfb9\"}','[]',1,'625507659@qq.com','127.0.0.1',1544765956,1544765956),(66,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13420a932ea','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13420a932ea\"}','[]',1,'625507659@qq.com','127.0.0.1',1544765963,1544765963),(67,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766176,1544766176),(68,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342e0183ea','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342e0183ea\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766177,1544766177),(69,'task/log/index','http://hehecms.admin/task/log/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766178,1544766178),(70,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342e1c65bd','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342e1c65bd\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766178,1544766178),(71,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766178,1544766178),(72,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342e2ccbb4','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342e2ccbb4\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766179,1544766179),(73,'site/error','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766179,1544766179),(74,'site/error','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766179,1544766179),(75,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342e365b7e','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342e365b7e\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766180,1544766180),(76,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342e3a4397','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342e3a4397\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766180,1544766180),(77,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766190,1544766190),(78,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342ee14ec9','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342ee14ec9\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766190,1544766190),(79,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766193,1544766193),(80,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342f1a3d57','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342f1a3d57\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766194,1544766194),(81,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342fac86f2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342fac86f2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766203,1544766203),(82,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c1342fc0ac44','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c1342fc0ac44\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766204,1544766204),(83,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766304,1544766304),(84,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c134360bfb15','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c134360bfb15\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766306,1544766306),(85,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766306,1544766306),(86,'site/error','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766306,1544766306),(87,'site/error','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766307,1544766307),(88,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13436295034','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13436295034\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766307,1544766307),(89,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c134362cf9cc','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c134362cf9cc\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766307,1544766307),(90,'debug/default/toolbar','http://hehecms.admin/debug/default/toolbar?tag=5c13436319bbd','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"tag\":\"5c13436319bbd\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766307,1544766307),(91,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766381,1544766381),(92,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766382,1544766382),(93,'site/error','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766383,1544766383),(94,'site/error','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766384,1544766384),(95,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766538,1544766538),(96,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544766543,1544766543),(97,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544766547,1544766547),(98,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544767228,1544767228),(99,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544767261,1544767261),(100,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544767278,1544767278),(101,'task/executor/update','http://hehecms.admin/task/executor/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544767280,1544767280),(102,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544767285,1544767285),(103,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544767339,1544767339),(104,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544767342,1544767342),(105,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544767417,1544767417),(106,'rbac/user/index','http://hehecms.admin/rbac/user/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544768982,1544768982),(107,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769167,1544769167),(108,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769382,1544769382),(109,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769390,1544769390),(110,'task/executor/update','http://hehecms.admin/task/executor/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769396,1544769396),(111,'task/executor/update','http://hehecms.admin/task/executor/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','{\"_csrf-backend\":\"k203h9QDUTBoatEgJRtPe7fkXW7fZCmpHwPmlVDNZaHfXVjJjFwiWD4g6GwIIzkL1bQsF5VdGMdQU7DlB5wH2Q==\",\"Executor\":{\"name\":\"\\u63a8\\u8350\\u4f4d\\u4efb\\u52a1\\u6267\\u884c\\u5668\",\"unique_key\":\"app_slot\",\"sort\":\"1\",\"type\":\"1\",\"ips\":\"\",\"topic\":\"\"}}',1,'625507659@qq.com','127.0.0.1',1544769400,1544769400),(112,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769400,1544769400),(113,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769423,1544769423),(114,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769427,1544769427),(115,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769530,1544769530),(116,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769532,1544769532),(117,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769552,1544769552),(118,'task/executor/view','http://hehecms.admin/task/executor/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769556,1544769556),(119,'task/executor/delete','http://hehecms.admin/task/executor/delete?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769565,1544769565),(120,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769566,1544769566),(121,'task/executor/create','http://hehecms.admin/task/executor/create','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769568,1544769568),(122,'task/executor/create','http://hehecms.admin/task/executor/create','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','{\"_csrf-backend\":\"P4a7aQFJfIUmi9qBhzF3tlfnV0kkrBm_WuZta5ac9C1zttQnWRYP7XDB482qCQHGNbcmMG6VKNEVtjsbwc2WVQ==\",\"Executor\":{\"name\":\"\\u63a8\\u8350\\u4f4d\\u6267\\u884c\\u5668\",\"unique_key\":\"app_slot\",\"sort\":\"-1\",\"type\":\"1\",\"ips\":\"\",\"topic\":\"\"}}',1,'625507659@qq.com','127.0.0.1',1544769591,1544769591),(123,'task/executor/view','http://hehecms.admin/task/executor/view?id=4','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"4\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769592,1544769592),(124,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769676,1544769676),(125,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769685,1544769685),(126,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769688,1544769688),(127,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769690,1544769690),(128,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769708,1544769708),(129,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769711,1544769711),(130,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769885,1544769885),(131,'task/trigger/view','http://hehecms.admin/task/trigger/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769887,1544769887),(132,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769891,1544769891),(133,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769895,1544769895),(134,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769965,1544769965),(135,'task/executor/view','http://hehecms.admin/task/executor/view?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769967,1544769967),(136,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769969,1544769969),(137,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769971,1544769971),(138,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769977,1544769977),(139,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544769979,1544769979),(140,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544769982,1544769982),(141,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770045,1544770045),(142,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770078,1544770078),(143,'task/executor/view','http://hehecms.admin/task/executor/view?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770079,1544770079),(144,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770082,1544770082),(145,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770084,1544770084),(146,'task/executor/view','http://hehecms.admin/task/executor/view?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770086,1544770086),(147,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770169,1544770169),(148,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770171,1544770171),(149,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770201,1544770201),(150,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770207,1544770207),(151,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770280,1544770280),(152,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770281,1544770281),(153,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','{\"_csrf-backend\":\"OmZa9xfmKUopuf5XFy_XLKpgmBeGPnMW1bKQ9giAGhx2VjW5T7laIn_zxxs6F6FcyDDpbswHQnia4saGX9F4ZA==\",\"Job\":{\"name\":\"\\u878d\\u5408\\u63a8\\u8350\\u5185\\u5bb9\\u66f4\\u65b0\\u901a\\u77e5\",\"unique_key\":\"job_gomemqpcSend\",\"executor_key\":\"app_slot\",\"group\":\"gomemqpc\",\"handler\":\"send\",\"call_type\":\"2\",\"host\":\"10.115.4.71,10.115.4.72\",\"port\":\"11520\",\"server_name\":\"transfer\",\"start\":\"\",\"tel\":\"15333344745\",\"email\":\"heshaojian@gomeplus.com\"}}',1,'625507659@qq.com','127.0.0.1',1544770318,1544770318),(154,'task/job/view','http://hehecms.admin/task/job/view?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770319,1544770319),(155,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770332,1544770332),(156,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770334,1544770334),(157,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','{\"_csrf-backend\":\"r06ugHcpJyTdcR-swwt5S-G0l26OpreoCCNueKUWiv_jfsHOL3ZUTIs7JuDuMw87g-TmF8SfhsZHczgI8kfohw==\",\"Job\":{\"name\":\"\\u878d\\u5408\\u63a8\\u8350\\u5185\\u5bb9\\u66f4\\u65b0\\u901a\\u77e5\",\"unique_key\":\"job_gomemqpcSend\",\"executor_key\":\"app_slot\",\"group\":\"gomemqpc\",\"handler\":\"send\",\"call_type\":\"2\",\"host\":\"10.115.4.71,10.115.4.72\",\"port\":\"11520\",\"server_name\":\"transfer\",\"start\":\"1\",\"tel\":\"15333344745\",\"email\":\"heshaojian@gomeplus.com\"}}',1,'625507659@qq.com','127.0.0.1',1544770378,1544770378),(158,'task/job/view','http://hehecms.admin/task/job/view?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770378,1544770378),(159,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770404,1544770404),(160,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770407,1544770407),(161,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','{\"_csrf-backend\":\"4bepmt7duSFiH3AeS0DPsA39464n7fUI-R_olqeSD_-th8bUhoLKSTRVSVJmeLnAb62S123UxGa2T77m8MNthw==\",\"Job\":{\"name\":\"\\u878d\\u5408\\u63a8\\u8350\\u5185\\u5bb9\\u66f4\\u65b0\\u901a\\u77e5\",\"unique_key\":\"job_gomemqpcSend\",\"executor_key\":\"app_slot\",\"group\":\"gomemqpc\",\"handler\":\"send\",\"call_type\":\"2\",\"host\":\"10.115.4.71,10.115.4.72\",\"port\":\"11520\",\"server_name\":\"transfer\",\"start\":\"1\",\"tel\":\"15333344745\",\"email\":\"heshaojian@gomeplus.com\"}}',1,'625507659@qq.com','127.0.0.1',1544770411,1544770411),(162,'task/job/view','http://hehecms.admin/task/job/view?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770411,1544770411),(163,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770442,1544770442),(164,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770445,1544770445),(165,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','{\"_csrf-backend\":\"6-NyxPbjXkcylzfmRYzXtoAhXch48fmir_-qhD1BLVWn0x2KrrwtL2TdDqpotKHG4nEssTLIyMzgr_z0ahBPLQ==\",\"Executor\":{\"name\":\"\\u6587\\u6863\\u4efb\\u52a1\\u6267\\u884c\\u5668\",\"unique_key\":\"app_document\",\"type\":\"1\",\"ips\":\"a\",\"topic\":\"b\"}}',1,'625507659@qq.com','127.0.0.1',1544770463,1544770463),(166,'task/executor/view','http://hehecms.admin/task/executor/view?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770463,1544770463),(167,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770567,1544770567),(168,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770568,1544770568),(169,'task/executor/update','http://hehecms.admin/task/executor/update?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','{\"_csrf-backend\":\"-M23tDKFwVZv4GtEm0KN9rXGd5bXgzAfcPcXnOL15Ie0_dj6atqyPjmqUgi2evuG15YG7526AXE_p0HstaSG_w==\",\"Executor\":{\"name\":\"\\u6587\\u6863\\u4efb\\u52a1\\u6267\\u884c\\u5668\",\"unique_key\":\"app_document\",\"type\":\"1\",\"ips\":\"a\",\"topic\":\"b\"}}',1,'625507659@qq.com','127.0.0.1',1544770574,1544770574),(170,'task/executor/view','http://hehecms.admin/task/executor/view?id=3','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"3\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770575,1544770575),(171,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770582,1544770582),(172,'task/executor/index','http://hehecms.admin/task/executor/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770592,1544770592),(173,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770593,1544770593),(174,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770595,1544770595),(175,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544770736,1544770736),(176,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544770740,1544770740),(177,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771487,1544771487),(178,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771491,1544771491),(179,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771494,1544771494),(180,'task/job/update','http://hehecms.admin/task/job/update?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','{\"_csrf-backend\":\"Ib9ANfG7EdKkghN0dY_q37vLIS_ImqD8nQwi7fiAKSdtjy97qeRiuvLIKjhYt5yv2ZtQVoKjkZLSXHSdr9FLXw==\",\"Job\":{\"name\":\"\\u878d\\u5408\\u63a8\\u8350\\u5185\\u5bb9\\u66f4\\u65b0\\u901a\\u77e5\",\"unique_key\":\"job_gomemqpcSend\",\"executor_key\":\"app_slot\",\"group\":\"gomemqpc\",\"handler\":\"send\",\"params\":\"id,key\",\"call_type\":\"2\",\"host\":\"10.115.4.71,10.115.4.72\",\"port\":\"11520\",\"server_name\":\"transfer\",\"status\":\"1\",\"tel\":\"15333344745\",\"email\":\"heshaojian@gomeplus.com\"}}',1,'625507659@qq.com','127.0.0.1',1544771569,1544771569),(181,'task/job/view','http://hehecms.admin/task/job/view?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771570,1544771570),(182,'task/job/index','http://hehecms.admin/task/job/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771598,1544771598),(183,'task/job/view','http://hehecms.admin/task/job/view?id=2','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"2\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771602,1544771602),(184,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771612,1544771612),(185,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771616,1544771616),(186,'task/log/index','http://hehecms.admin/task/log/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771702,1544771702),(187,'task/log/index','http://hehecms.admin/task/log/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771706,1544771706),(188,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771725,1544771725),(189,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771727,1544771727),(190,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771729,1544771729),(191,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771731,1544771731),(192,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','{\"_csrf-backend\":\"Mkhy4AbA_FZhWb2Lua6LmIjS-4DRVbPETCqjvby7chJ-eB2uXp-PPjcThMeUlv3o6oKK-ZtsgqoDevXN6-oQag==\",\"Trigger\":{\"name\":\"\\u5708\\u5b50\\u9996\\u9875\\u63a8\\u8350\\u4f4d\\u89e6\\u53d1\\u5668\",\"unique_key\":\"t_group\",\"task\":\"{\\r\\n        \\\"type\\\": \\\"slot\\\",\\r\\n        \\\"executor\\\": \\\"app_slot\\\",\\r\\n        \\\"jobs\\\": [\\r\\n          \\\"job_gomemqpcSend\\\",\\r\\n          \\\"job_baleSlot\\\"\\r\\n        ]\\r\\n      }\"}}',1,'625507659@qq.com','127.0.0.1',1544771734,1544771734),(193,'task/trigger/view','http://hehecms.admin/task/trigger/view?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771734,1544771734),(194,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771740,1544771740),(195,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771741,1544771741),(196,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771779,1544771779),(197,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771780,1544771780),(198,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771785,1544771785),(199,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771816,1544771816),(200,'task/trigger/update','http://hehecms.admin/task/trigger/update?id=1','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','{\"id\":\"1\"}','[]',1,'625507659@qq.com','127.0.0.1',1544771819,1544771819),(201,'site/index','http://hehecms.admin/','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771875,1544771875),(202,'task/trigger/index','http://hehecms.admin/task/trigger/index','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0','[]','[]',1,'625507659@qq.com','127.0.0.1',1544771876,1544771876);

#
# Structure for table "he_auth_rule"
#

DROP TABLE IF EXISTS `he_auth_rule`;
CREATE TABLE `he_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_auth_rule"
#


#
# Structure for table "he_auth_item"
#

DROP TABLE IF EXISTS `he_auth_item`;
CREATE TABLE `he_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `he_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `he_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_auth_item"
#

INSERT INTO `he_auth_item` VALUES ('/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/create',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/index',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/update',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article-group/view',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/create',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/index',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/update',2,NULL,NULL,NULL,1513838979,1513838979),('/article/article/view',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/index',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/nopass',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/pass',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/reply',2,NULL,NULL,NULL,1513838979,1513838979),('/article/comment/view',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/create',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/index',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/update',2,NULL,NULL,NULL,1513838979,1513838979),('/article/link/view',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/*',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/create',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/index',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/online-music',2,NULL,NULL,NULL,1527666273,1527666273),('/article/music/update',2,NULL,NULL,NULL,1513838979,1513838979),('/article/music/view',2,NULL,NULL,NULL,1513838979,1513838979),('/article/photo-group/*',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo-group/create',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo-group/delete',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo-group/delete-all',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo-group/index',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo-group/update',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo-group/view',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/*',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/create',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/delete',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/delete-all',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/index',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/update',2,NULL,NULL,NULL,1513840543,1513840543),('/article/photo/view',2,NULL,NULL,NULL,1513840543,1513840543),('/article/test-article-group/*',2,NULL,NULL,NULL,1538989710,1538989710),('/article/test-article-group/create',2,NULL,NULL,NULL,1538989710,1538989710),('/article/test-article-group/delete',2,NULL,NULL,NULL,1538989710,1538989710),('/article/test-article-group/index',2,NULL,NULL,NULL,1538989710,1538989710),('/article/test-article-group/update',2,NULL,NULL,NULL,1538989710,1538989710),('/article/test-article-group/view',2,NULL,NULL,NULL,1538989710,1538989710),('/backup/*',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/export/*',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/export/index',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/export/init',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/export/optimize',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/export/repair',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/export/start',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/import/*',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/import/del',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/import/index',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/import/init',2,NULL,NULL,NULL,1513838979,1513838979),('/backup/import/start',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/*',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/default/*',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/default/db-explain',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/default/download-mail',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/default/index',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/default/toolbar',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/default/view',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/user/*',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/user/reset-identity',2,NULL,NULL,NULL,1513838979,1513838979),('/debug/user/set-identity',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/*',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/default/*',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/default/action',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/default/diff',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/default/index',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/default/preview',2,NULL,NULL,NULL,1513838979,1513838979),('/gii/default/view',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/assignment/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/assignment/assign',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/assignment/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/assignment/revoke',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/assignment/view',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/default/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/default/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/log/*',2,NULL,NULL,NULL,1521793951,1521793951),('/rbac/log/index',2,NULL,NULL,NULL,1521793951,1521793951),('/rbac/log/view',2,NULL,NULL,NULL,1521793951,1521793951),('/rbac/menu/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/menu/create',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/menu/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/menu/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/menu/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/menu/update',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/menu/view',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/assign',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/create',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/remove',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/update',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/permission/view',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/assign',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/create',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/remove',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/update',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/role/view',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/route/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/route/assign',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/route/create',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/route/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/route/refresh',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/route/remove',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/rule/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/rule/create',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/rule/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/rule/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/rule/update',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/rule/view',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/*',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/active',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/change-password',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/inactive',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/index',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/login',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/logout',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/request-password-reset',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/reset-password',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/signup',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/update',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/update-self',2,NULL,NULL,NULL,1513838979,1513838979),('/rbac/user/view',2,NULL,NULL,NULL,1513838979,1513838979),('/site/*',2,NULL,NULL,NULL,1513838979,1513838979),('/site/dashboard',2,NULL,NULL,NULL,1516773692,1516773692),('/site/error',2,NULL,NULL,NULL,1513838979,1513838979),('/site/index',2,NULL,NULL,NULL,1513838979,1513838979),('/site/test',2,NULL,NULL,NULL,1539312029,1539312029),('/system/*',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/*',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/create',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/index',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/update',2,NULL,NULL,NULL,1513838979,1513838979),('/system/config/view',2,NULL,NULL,NULL,1513838979,1513838979),('/system/memorandum/*',2,NULL,NULL,NULL,1528875249,1528875249),('/system/memorandum/create',2,NULL,NULL,NULL,1528875249,1528875249),('/system/memorandum/delete',2,NULL,NULL,NULL,1528875249,1528875249),('/system/memorandum/delete-all',2,NULL,NULL,NULL,1528875249,1528875249),('/system/memorandum/index',2,NULL,NULL,NULL,1528875249,1528875249),('/system/memorandum/update',2,NULL,NULL,NULL,1528875249,1528875249),('/system/memorandum/view',2,NULL,NULL,NULL,1528875249,1528875249),('/system/neteasy/*',2,NULL,NULL,NULL,1528873251,1528873251),('/system/neteasy/create',2,NULL,NULL,NULL,1528873251,1528873251),('/system/neteasy/delete',2,NULL,NULL,NULL,1528873251,1528873251),('/system/neteasy/delete-all',2,NULL,NULL,NULL,1528873251,1528873251),('/system/neteasy/index',2,NULL,NULL,NULL,1528873251,1528873251),('/system/neteasy/update',2,NULL,NULL,NULL,1528873251,1528873251),('/system/neteasy/view',2,NULL,NULL,NULL,1528873251,1528873251),('/system/user-rank/*',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user-rank/create',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user-rank/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user-rank/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user-rank/index',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user-rank/update',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user-rank/view',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/*',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/active',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/create',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/delete',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/delete-all',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/inactive',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/index',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/online-users',2,NULL,NULL,NULL,1518083077,1518083077),('/system/user/update',2,NULL,NULL,NULL,1513838979,1513838979),('/system/user/view',2,NULL,NULL,NULL,1513838979,1513838979),('/task/*',2,NULL,NULL,NULL,1543459996,1543459996),('/task/executor/*',2,NULL,NULL,NULL,1543460007,1543460007),('/task/executor/create',2,NULL,NULL,NULL,1543460006,1543460006),('/task/executor/delete',2,NULL,NULL,NULL,1543460007,1543460007),('/task/executor/delete-all',2,NULL,NULL,NULL,1543460007,1543460007),('/task/executor/index',2,NULL,NULL,NULL,1543388336,1543388336),('/task/executor/update',2,NULL,NULL,NULL,1543460006,1543460006),('/task/executor/view',2,NULL,NULL,NULL,1543460006,1543460006),('/task/job/*',2,NULL,NULL,NULL,1543460008,1543460008),('/task/job/create',2,NULL,NULL,NULL,1543460007,1543460007),('/task/job/delete',2,NULL,NULL,NULL,1543460007,1543460007),('/task/job/delete-all',2,NULL,NULL,NULL,1543460008,1543460008),('/task/job/index',2,NULL,NULL,NULL,1543459990,1543459990),('/task/job/update',2,NULL,NULL,NULL,1543460007,1543460007),('/task/job/view',2,NULL,NULL,NULL,1543460007,1543460007),('/task/log/index',2,NULL,NULL,NULL,1544609232,1544609232),('/task/trigger/index',2,NULL,NULL,NULL,1543474681,1543474681),('/tools/*',2,NULL,NULL,NULL,1513838979,1513838979),('/tools/ico',2,NULL,NULL,NULL,1539334899,1539334899),('/tools/upload',2,NULL,NULL,NULL,1513838979,1513838979),('/tools/upload-editor',2,NULL,NULL,NULL,1513838979,1513838979),('基本权限',1,'后台人员所需要的基本权限',NULL,NULL,1512542066,1512542066),('文章管理权限',1,'管理后台文章权限',NULL,NULL,1512542259,1512542259),('演示角色',1,'用于演示的角色',NULL,NULL,1521768107,1521768107),('管理员',1,'超级管理员权限',NULL,NULL,1498697175,1512542127);

#
# Structure for table "he_auth_item_child"
#

DROP TABLE IF EXISTS `he_auth_item_child`;
CREATE TABLE `he_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `he_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `he_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `he_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `he_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_auth_item_child"
#

INSERT INTO `he_auth_item_child` VALUES ('演示角色','/article/article-group/index'),('演示角色','/article/article-group/view'),('演示角色','/article/article/index'),('演示角色','/article/article/view'),('演示角色','/article/comment/index'),('演示角色','/article/comment/view'),('演示角色','/article/link/index'),('演示角色','/article/link/view'),('演示角色','/article/music/index'),('演示角色','/article/music/online-music'),('演示角色','/article/music/view'),('演示角色','/article/photo-group/index'),('演示角色','/article/photo-group/view'),('演示角色','/article/photo/index'),('演示角色','/article/photo/view'),('演示角色','/backup/export/index'),('演示角色','/backup/import/index'),('演示角色','/rbac/assignment/index'),('演示角色','/rbac/assignment/view'),('演示角色','/rbac/menu/index'),('演示角色','/rbac/menu/view'),('演示角色','/rbac/permission/index'),('演示角色','/rbac/permission/view'),('演示角色','/rbac/role/index'),('演示角色','/rbac/role/view'),('演示角色','/rbac/route/index'),('演示角色','/rbac/rule/index'),('演示角色','/rbac/rule/view'),('演示角色','/rbac/user/index'),('演示角色','/rbac/user/login'),('演示角色','/rbac/user/logout'),('演示角色','/rbac/user/view'),('演示角色','/site/dashboard'),('演示角色','/site/index'),('演示角色','/system/user-rank/index'),('演示角色','/system/user-rank/view'),('管理员','/*'),('管理员','/article/*'),('管理员','/article/article-group/*'),('管理员','/article/article-group/create'),('管理员','/article/article-group/delete'),('管理员','/article/article-group/delete-all'),('管理员','/article/article-group/index'),('管理员','/article/article-group/update'),('管理员','/article/article-group/view'),('管理员','/article/article/*'),('管理员','/article/article/create'),('管理员','/article/article/delete'),('管理员','/article/article/delete-all'),('管理员','/article/article/index'),('管理员','/article/article/update'),('管理员','/article/article/view'),('管理员','/article/comment/*'),('管理员','/article/comment/delete'),('管理员','/article/comment/delete-all'),('管理员','/article/comment/index'),('管理员','/article/comment/nopass'),('管理员','/article/comment/pass'),('管理员','/article/comment/reply'),('管理员','/article/comment/view'),('管理员','/article/link/*'),('管理员','/article/link/create'),('管理员','/article/link/delete'),('管理员','/article/link/delete-all'),('管理员','/article/link/index'),('管理员','/article/link/update'),('管理员','/article/link/view'),('管理员','/article/music/*'),('管理员','/article/music/create'),('管理员','/article/music/delete'),('管理员','/article/music/delete-all'),('管理员','/article/music/index'),('管理员','/article/music/online-music'),('管理员','/article/music/update'),('管理员','/article/music/view'),('管理员','/article/photo-group/*'),('管理员','/article/photo-group/create'),('管理员','/article/photo-group/delete'),('管理员','/article/photo-group/delete-all'),('管理员','/article/photo-group/index'),('管理员','/article/photo-group/update'),('管理员','/article/photo-group/view'),('管理员','/article/photo/*'),('管理员','/article/photo/create'),('管理员','/article/photo/delete'),('管理员','/article/photo/delete-all'),('管理员','/article/photo/index'),('管理员','/article/photo/update'),('管理员','/article/photo/view'),('管理员','/article/test-article-group/*'),('管理员','/article/test-article-group/create'),('管理员','/article/test-article-group/delete'),('管理员','/article/test-article-group/index'),('管理员','/article/test-article-group/update'),('管理员','/article/test-article-group/view'),('管理员','/backup/*'),('管理员','/backup/export/*'),('管理员','/backup/export/index'),('管理员','/backup/export/init'),('管理员','/backup/export/optimize'),('管理员','/backup/export/repair'),('管理员','/backup/export/start'),('管理员','/backup/import/*'),('管理员','/backup/import/del'),('管理员','/backup/import/index'),('管理员','/backup/import/init'),('管理员','/backup/import/start'),('管理员','/debug/*'),('管理员','/debug/default/*'),('管理员','/debug/default/db-explain'),('管理员','/debug/default/download-mail'),('管理员','/debug/default/index'),('管理员','/debug/default/toolbar'),('管理员','/debug/default/view'),('管理员','/debug/user/*'),('管理员','/debug/user/reset-identity'),('管理员','/debug/user/set-identity'),('管理员','/gii/*'),('管理员','/gii/default/*'),('管理员','/gii/default/action'),('管理员','/gii/default/diff'),('管理员','/gii/default/index'),('管理员','/gii/default/preview'),('管理员','/gii/default/view'),('管理员','/rbac/*'),('管理员','/rbac/assignment/*'),('管理员','/rbac/assignment/assign'),('管理员','/rbac/assignment/index'),('管理员','/rbac/assignment/revoke'),('管理员','/rbac/assignment/view'),('管理员','/rbac/default/*'),('管理员','/rbac/default/index'),('管理员','/rbac/log/*'),('管理员','/rbac/log/index'),('管理员','/rbac/log/view'),('管理员','/rbac/menu/*'),('管理员','/rbac/menu/create'),('管理员','/rbac/menu/delete'),('管理员','/rbac/menu/delete-all'),('管理员','/rbac/menu/index'),('管理员','/rbac/menu/update'),('管理员','/rbac/menu/view'),('管理员','/rbac/permission/*'),('管理员','/rbac/permission/assign'),('管理员','/rbac/permission/create'),('管理员','/rbac/permission/delete'),('管理员','/rbac/permission/index'),('管理员','/rbac/permission/remove'),('管理员','/rbac/permission/update'),('管理员','/rbac/permission/view'),('管理员','/rbac/role/*'),('管理员','/rbac/role/assign'),('管理员','/rbac/role/create'),('管理员','/rbac/role/delete'),('管理员','/rbac/role/index'),('管理员','/rbac/role/remove'),('管理员','/rbac/role/update'),('管理员','/rbac/role/view'),('管理员','/rbac/route/*'),('管理员','/rbac/route/assign'),('管理员','/rbac/route/create'),('管理员','/rbac/route/index'),('管理员','/rbac/route/refresh'),('管理员','/rbac/route/remove'),('管理员','/rbac/rule/*'),('管理员','/rbac/rule/create'),('管理员','/rbac/rule/delete'),('管理员','/rbac/rule/index'),('管理员','/rbac/rule/update'),('管理员','/rbac/rule/view'),('管理员','/rbac/user/*'),('管理员','/rbac/user/active'),('管理员','/rbac/user/change-password'),('管理员','/rbac/user/delete'),('管理员','/rbac/user/inactive'),('管理员','/rbac/user/index'),('管理员','/rbac/user/login'),('管理员','/rbac/user/logout'),('管理员','/rbac/user/request-password-reset'),('管理员','/rbac/user/reset-password'),('管理员','/rbac/user/signup'),('管理员','/rbac/user/update'),('管理员','/rbac/user/update-self'),('管理员','/rbac/user/view'),('管理员','/site/*'),('管理员','/site/dashboard'),('管理员','/site/error'),('管理员','/site/index'),('管理员','/site/test'),('管理员','/system/*'),('管理员','/system/config/*'),('管理员','/system/config/create'),('管理员','/system/config/delete'),('管理员','/system/config/delete-all'),('管理员','/system/config/index'),('管理员','/system/config/update'),('管理员','/system/config/view'),('管理员','/system/memorandum/*'),('管理员','/system/memorandum/create'),('管理员','/system/memorandum/delete'),('管理员','/system/memorandum/delete-all'),('管理员','/system/memorandum/index'),('管理员','/system/memorandum/update'),('管理员','/system/memorandum/view'),('管理员','/system/neteasy/*'),('管理员','/system/neteasy/create'),('管理员','/system/neteasy/delete'),('管理员','/system/neteasy/delete-all'),('管理员','/system/neteasy/index'),('管理员','/system/neteasy/update'),('管理员','/system/neteasy/view'),('管理员','/system/user-rank/*'),('管理员','/system/user-rank/create'),('管理员','/system/user-rank/delete'),('管理员','/system/user-rank/delete-all'),('管理员','/system/user-rank/index'),('管理员','/system/user-rank/update'),('管理员','/system/user-rank/view'),('管理员','/system/user/*'),('管理员','/system/user/active'),('管理员','/system/user/create'),('管理员','/system/user/delete'),('管理员','/system/user/delete-all'),('管理员','/system/user/inactive'),('管理员','/system/user/index'),('管理员','/system/user/online-users'),('管理员','/system/user/update'),('管理员','/system/user/view'),('管理员','/task/executor/index'),('管理员','/tools/*'),('管理员','/tools/ico'),('管理员','/tools/upload'),('管理员','/tools/upload-editor');

#
# Structure for table "he_auth_assignment"
#

DROP TABLE IF EXISTS `he_auth_assignment`;
CREATE TABLE `he_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `he_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `he_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_auth_assignment"
#

INSERT INTO `he_auth_assignment` VALUES ('基本权限','1',1539312113),('基本权限','10',1512542177),('文章管理权限','1',1539312113),('文章管理权限','10',1512542277),('演示角色','1',1539312113),('演示角色','2',1521768786),('管理员','1',1516773830);

#
# Structure for table "he_config"
#

DROP TABLE IF EXISTS `he_config`;
CREATE TABLE `he_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `value` text COMMENT '配置值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`name`,`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

#
# Data for table "he_config"
#

/*!40000 ALTER TABLE `he_config` DISABLE KEYS */;
INSERT INTO `he_config` VALUES (1,'WEB_SITE_TITLE','网站标题','内容管理框架','网站标题前台显示标题',0,0,1378898976,1510118190),(2,'WEB_SITE_DESCRIPTION','网站描述','内容管理框架','网站搜索引擎描述',1,0,1378898976,1472528403),(3,'WEB_SITE_KEYWORD','网站关键字','黄龙飞11','网站搜索引擎关键字',8,0,1378898976,1472528403),(4,'WEB_SITE_CLOSE','网站关闭','0','网站关闭',0,0,1379122533,1379122533),(10,'WEB_SITE_ICP','网站备案号','沪ICP备12007941号-2','设置在网站底部显示的备案号，如“沪ICP备12007941号-2',9,0,1378900335,1472528403),(11,'WEB_SITE_RESOURCES_URL','上传图片服务器域名（可用二级域名）','https://resources.alilinet.com/','域名格式（https://resources.alilinet.com/）',3,0,1379053380,1516948101),(13,'COLOR_STYLE','后台色系','default_color','后台颜色风格',10,1,1379122533,1472528403),(20,'WEB_SITE_ALLOW_UPLOAD_TYPE','站点允许上传文件类型','jpg,rar,png,gif,rar','只需要填写后缀即可',1,1,1512626843,1517147572),(21,'OAUTH_QQ','第三方QQ登录配置项','{\r\n\t\"client_id\": \"**********\",\r\n\t\"client_secret\": \"**********\",\r\n\t\"redirect_uri\": \"**********\"\r\n}','第三方QQ登录配置项',1,1,1516869590,1539942431),(22,'WEB_SITE_AJAX_URL','网站AJAX请求域名','https://www.alilinet.com/','网站AJAX请求域名',2,1,1516869798,1516948115),(23,'WEB_SITE_BACKGROUND','站点头部背景图','/images/background.jpg','站点头部背景图',3,1,1516949337,1516949390),(24,'NETEASE_COOKIE','网易云音乐cookie','888888','网易云音乐cookie',1,1,1527666426,1539942454);
/*!40000 ALTER TABLE `he_config` ENABLE KEYS */;

#
# Structure for table "he_directory"
#

DROP TABLE IF EXISTS `he_directory`;
CREATE TABLE `he_directory` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `template_id` int(10) NOT NULL COMMENT '模板ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `summary` varchar(50) NOT NULL COMMENT '摘要',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级栏目',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目层级路径:0,1,2,3,',
  `type` tinyint(1) NOT NULL COMMENT '类型 1为目录，2为模板',
  `admin_id` int(10) NOT NULL COMMENT '账户ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='目录表';

#
# Data for table "he_directory"
#


#
# Structure for table "he_executor"
#

DROP TABLE IF EXISTS `he_executor`;
CREATE TABLE `he_executor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(20) DEFAULT NULL COMMENT '执行器名称',
  `unique_key` varchar(20) NOT NULL COMMENT '执行器唯一key',
  `type` tinyint(4) DEFAULT NULL COMMENT '注册类型，1为自动注册，2为手动注册',
  `ips` varchar(50) DEFAULT NULL COMMENT '执行器所在服务器ip',
  `topic` varchar(50) DEFAULT NULL COMMENT '执行器绑定的队列名称',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `admin_id` int(11) DEFAULT NULL COMMENT '上次更新数据的账户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='执行器';

#
# Data for table "he_executor"
#

/*!40000 ALTER TABLE `he_executor` DISABLE KEYS */;
INSERT INTO `he_executor` VALUES (3,'文档任务执行器','app_document',1,'a','b',NULL,1544770574,1),(4,'推荐位执行器','app_slot',1,NULL,NULL,1544769591,1544769591,1);
/*!40000 ALTER TABLE `he_executor` ENABLE KEYS */;

#
# Structure for table "he_job"
#

DROP TABLE IF EXISTS `he_job`;
CREATE TABLE `he_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `executor_key` varchar(30) DEFAULT NULL COMMENT '执行器唯一key',
  `unique_key` varchar(20) DEFAULT NULL COMMENT '唯一key',
  `group` varchar(20) DEFAULT NULL COMMENT '属主',
  `handler` varchar(20) DEFAULT NULL COMMENT '方法',
  `params` varchar(100) NOT NULL DEFAULT '' COMMENT '参数',
  `call_type` tinyint(4) NOT NULL COMMENT '服务调用方式，1为http，2为rpc，3为local',
  `host` varchar(50) DEFAULT NULL COMMENT '提供服务的主机',
  `port` smallint(5) unsigned DEFAULT NULL COMMENT '提供服务的端口',
  `server_name` varchar(20) DEFAULT NULL COMMENT '服务名称',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '1为开启，0为不开启',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `admin_id` int(11) DEFAULT NULL COMMENT '账户id',
  `tel` char(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "he_job"
#

INSERT INTO `he_job` VALUES (2,'融合推荐内容更新通知','app_slot','job_gomemqpcSend','gomemqpc','send','id,key',2,'10.115.4.71,10.115.4.72',11520,'transfer',1,NULL,1544771569,1,'15333344745','heshaojian@gomeplus.com');

#
# Structure for table "he_menu"
#

DROP TABLE IF EXISTS `he_menu`;
CREATE TABLE `he_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `he_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `he_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "he_menu"
#

INSERT INTO `he_menu` VALUES (1,'权限管理',NULL,NULL,2,'fa fa-bullhorn'),(2,'角色列表',1,'/rbac/role/index',34,'&#xe6bf;'),(3,'路由列表',1,'/rbac/route/index',46,'&#xea3a;'),(4,'权限列表',1,'/rbac/permission/index',33,'&#xe60b;'),(5,'分配权限',1,'/rbac/assignment/index',37,'&#xe609;'),(6,'菜单列表',1,'/rbac/menu/index',36,'&#xe65e;'),(7,'规则列表',1,'/rbac/rule/index',35,'&#xe748;'),(8,'后台用户',1,'/rbac/user/index',32,'&#xe60d;'),(10,'前台用户',14,'/system/user/index',21,'&#xe60d;'),(14,'系统管理',NULL,NULL,1,''),(15,'配置设置',14,'/system/config/index',23,'&#xe609;'),(16,'用户等级',14,'/system/user-rank/index',22,'&#xe629;'),(21,'数据备份',14,'/backup/export/index',24,'&#xe778;'),(22,'数据恢复',14,'/backup/import/index',25,'&#xe777;'),(26,'日志记录',1,'/rbac/log/index',31,'&#xe7b8;'),(31,'自动生成',14,'/gii/default/index',18,'&#xe614;'),(32,'多任务管理',NULL,NULL,3,NULL),(33,'执行器列表',32,'/task/executor/index',1,'fa fa-bluetooth'),(34,'任务列表',32,'/task/job/index',2,'fa fa-codiepie'),(35,'触发器列表',32,'/task/trigger/index',3,'fa fa-credit-card-alt'),(36,'日志列表',32,'/task/log/index',4,'fa fa-hashtag');

#
# Structure for table "he_migration"
#

DROP TABLE IF EXISTS `he_migration`;
CREATE TABLE `he_migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "he_migration"
#

/*!40000 ALTER TABLE `he_migration` DISABLE KEYS */;
INSERT INTO `he_migration` VALUES ('m000000_000000_base',1498633414),('m140516_214808_actionlog',1506561803),('m140602_111327_create_menu_table',1498633912),('m160312_050000_create_user',1498633912);
/*!40000 ALTER TABLE `he_migration` ENABLE KEYS */;

#
# Structure for table "he_model"
#

DROP TABLE IF EXISTS `he_model`;
CREATE TABLE `he_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '模型名',
  `backend` text NOT NULL COMMENT '后端处理',
  `frontend` text NOT NULL COMMENT '前端处理',
  `is_import` tinyint(1) NOT NULL DEFAULT '0' COMMENT '可否导入样板 0不可,1可以',
  `table_exist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '数据表存在标识, 0: 不存在; 1: 存在',
  `table_name` varchar(50) NOT NULL DEFAULT '' COMMENT '数据表名',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `based_on` int(10) NOT NULL DEFAULT '0' COMMENT '继承自(即父ID)',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1,内容模型；2,推荐位模型',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '账号id',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模型表';

#
# Data for table "he_model"
#


#
# Structure for table "he_model_struct"
#

DROP TABLE IF EXISTS `he_model_struct`;
CREATE TABLE `he_model_struct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型结构id',
  `is_based` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为基础模型字段',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '字段名(代码、DB中用)',
  `list_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '模型内容列表此字段是否显示标志：0，不显示 1，显示 ',
  `label` varchar(50) NOT NULL DEFAULT '' COMMENT '显示名(页面展示用)',
  `form_type` varchar(20) NOT NULL DEFAULT '' COMMENT '表单(html)类别',
  `form_setting` mediumtext NOT NULL COMMENT '表单数据配置信息',
  `type` varchar(50) NOT NULL DEFAULT '' COMMENT '数据类型',
  `max_length` int(10) NOT NULL DEFAULT '0' COMMENT '最大长度',
  `min_length` int(10) NOT NULL DEFAULT '0' COMMENT '最小长度',
  `required` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否必填，0非必填1必填',
  `default_value` varchar(100) NOT NULL DEFAULT '' COMMENT '默认值',
  `description` varchar(300) NOT NULL DEFAULT '' COMMENT '字段描述/注释',
  `is_unique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否唯一, 1: 是',
  `widget` text NOT NULL COMMENT '处理程序',
  `setting` mediumtext NOT NULL COMMENT 'widget配置信息',
  `note` varchar(100) NOT NULL DEFAULT '' COMMENT '字段说明',
  `form_sequence` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '表单排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_search` tinyint(1) NOT NULL DEFAULT '0' COMMENT '字段是否可搜索，1=>是，0=>否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "he_model_struct"
#


#
# Structure for table "he_node"
#

DROP TABLE IF EXISTS `he_node`;
CREATE TABLE `he_node` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '站点id',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '站点名称',
  `domain` varchar(100) NOT NULL DEFAULT '' COMMENT '站点地址',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `interfaces` text COMMENT '接口服务信息',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT '账号id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

#
# Data for table "he_node"
#


#
# Structure for table "he_pubport"
#

DROP TABLE IF EXISTS `he_pubport`;
CREATE TABLE `he_pubport` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '发布点主键自增id',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '发布点名称',
  `uri` varchar(100) NOT NULL DEFAULT '' COMMENT '网址uri',
  `node_id` int(10) NOT NULL DEFAULT '0' COMMENT '站点id',
  `template_id` int(10) NOT NULL DEFAULT '0' COMMENT '模板id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：-2已下线，-1下线中，0默认保存，1上线中，2已上线',
  `urlrule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'url规则id',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '账号id',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发布点表';

#
# Data for table "he_pubport"
#


#
# Structure for table "he_slot"
#

DROP TABLE IF EXISTS `he_slot`;
CREATE TABLE `he_slot` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐位名',
  `unique_key` varchar(50) NOT NULL DEFAULT '' COMMENT '唯一key',
  `model_id` int(10) NOT NULL DEFAULT '0' COMMENT '模型id',
  `table_name` varchar(50) NOT NULL DEFAULT '' COMMENT '数据表名',
  `row_number` int(10) NOT NULL DEFAULT '0' COMMENT '推荐数',
  `content_number` int(10) NOT NULL DEFAULT '0' COMMENT '内容最少数量',
  `is_hide` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否隐藏，1隐藏',
  `parent_slot_id` int(10) NOT NULL COMMENT '父级推荐位ID',
  `content` longtext NOT NULL COMMENT '推荐位内容',
  `end_time` int(10) NOT NULL DEFAULT '0' COMMENT '当前推荐位内容生效结束时间',
  `is_effective` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否生效,0表示生效，-1不生效',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '账号id',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐位表';

#
# Data for table "he_slot"
#


#
# Structure for table "he_slot_crontab"
#

DROP TABLE IF EXISTS `he_slot_crontab`;
CREATE TABLE `he_slot_crontab` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `slot_id` int(10) NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `content` longtext NOT NULL COMMENT '推荐位内容',
  `fail_numbers` tinyint(3) NOT NULL DEFAULT '0' COMMENT '失败次数',
  `row_number` tinyint(3) NOT NULL DEFAULT '0' COMMENT '数量',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态,-1取消，0待执行，1成功，3失败',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '账户ID',
  `start_time` int(10) NOT NULL COMMENT '开始执行时间',
  `execute_time` int(10) NOT NULL COMMENT '执行时间戳',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "he_slot_crontab"
#


#
# Structure for table "he_template"
#

DROP TABLE IF EXISTS `he_template`;
CREATE TABLE `he_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `content` longtext NOT NULL COMMENT '模板内容',
  `code` longtext NOT NULL COMMENT '混编代码',
  `admin_id` int(10) NOT NULL COMMENT '账号ID',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板表';

#
# Data for table "he_template"
#


#
# Structure for table "he_trigger"
#

DROP TABLE IF EXISTS `he_trigger`;
CREATE TABLE `he_trigger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `unique_key` varchar(50) DEFAULT NULL COMMENT '唯一key',
  `task` text COMMENT '任务配置json',
  `admin_id` int(11) DEFAULT NULL COMMENT '账户id',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "he_trigger"
#

INSERT INTO `he_trigger` VALUES (1,'圈子首页推荐位触发器','t_group','{\r\n        \"type\": \"slot\",\r\n        \"executor\": \"app_slot\",\r\n        \"jobs\": [\r\n          \"job_gomemqpcSend\",\r\n          \"job_baleSlot\"\r\n        ]\r\n      }',1,NULL,1544771734);

#
# Structure for table "he_urlrule"
#

DROP TABLE IF EXISTS `he_urlrule`;
CREATE TABLE `he_urlrule` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `real_path` varchar(255) NOT NULL DEFAULT '' COMMENT '真实路径',
  `admin_id` int(10) NOT NULL COMMENT '账号ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url规则表';

#
# Data for table "he_urlrule"
#


#
# Structure for table "he_user"
#

DROP TABLE IF EXISTS `he_user`;
CREATE TABLE `he_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `head_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码hash',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码凭据',
  `access_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户访问数据凭证',
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户电子邮箱',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '用户状态',
  `r_id` int(11) unsigned NOT NULL COMMENT '用户等级',
  `created_at` int(11) NOT NULL COMMENT '注册账号时间',
  `created_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册账号的地点',
  `created_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册账号的IP',
  `last_login_date` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `last_login_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录IP',
  `last_login_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录地点',
  `integral` int(11) DEFAULT '0' COMMENT '积分',
  `balance` decimal(10,0) DEFAULT '0' COMMENT '余额',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `index` (`id`,`username`,`mobile`,`email`,`r_id`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

#
# Data for table "he_user"
#

INSERT INTO `he_user` VALUES (1,'alilinet','Aili','https://resources.alilinet.com/20170609/caec0ef6f07036203d555810fd81c75a.jpg','gOQEd6Q8nKh6J8WnVWbf466wqgXKUh8V','$2y$13$w5oLa8hCsNC3IXM17ADODOjRoNzyGd0rL5A8icjI9UxgGBlMJ5rWO',NULL,'lTn0p3L-HstHiS3EzPHH5kpa7gEUpf1__1537259088','18888888888','alilinet@alilinet.com',10,6,1483534763,'上海市闸北区 电信ADSL','218.81.204.109',1537256688,'101.81.232.103','上海市 电信',0,0,1537256688);

#
# Structure for table "he_user_rank"
#

DROP TABLE IF EXISTS `he_user_rank`;
CREATE TABLE `he_user_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '等级名称',
  `score` int(8) NOT NULL COMMENT '积分界限',
  `discount` decimal(6,2) NOT NULL COMMENT '折扣百分比',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `index` (`id`,`name`,`discount`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

#
# Data for table "he_user_rank"
#

INSERT INTO `he_user_rank` VALUES (1,'普通会员',0,1.00,1),(2,'一级会员',2000,0.95,1),(3,'二级会员',5000,0.90,1),(4,'VIP会员',10000,0.85,1),(5,'钻石会员',100000,0.80,1),(6,'超级会员',10000000,0.50,1);
