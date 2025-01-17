-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootpc161
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-14 07:16:00',1,1,'提问1','回复1',1),(82,'2021-01-14 07:16:00',2,2,'提问2','回复2',2),(83,'2021-01-14 07:16:00',3,3,'提问3','回复3',3),(84,'2021-01-14 07:16:00',4,4,'提问4','回复4',4),(85,'2021-01-14 07:16:00',5,5,'提问5','回复5',5),(86,'2021-01-14 07:16:00',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootpc161/upload/1610608906154.jpg'),(2,'picture2','http://localhost:8080/springbootpc161/upload/1610608916417.jpg'),(3,'picture3','http://localhost:8080/springbootpc161/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danganbiandong`
--

DROP TABLE IF EXISTS `danganbiandong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danganbiandong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dangangengxin` longtext COMMENT '档案更新',
  `cailiaogengxin` varchar(200) DEFAULT NULL COMMENT '材料更新',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='档案变动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danganbiandong`
--

LOCK TABLES `danganbiandong` WRITE;
/*!40000 ALTER TABLE `danganbiandong` DISABLE KEYS */;
INSERT INTO `danganbiandong` VALUES (31,'2021-01-14 07:16:00','教师工号1','教师姓名1','性别1','职称1','联系电话1','档案更新1','','2021-01-14','否',''),(32,'2021-01-14 07:16:00','教师工号2','教师姓名2','性别2','职称2','联系电话2','档案更新2','','2021-01-14','否',''),(33,'2021-01-14 07:16:00','教师工号3','教师姓名3','性别3','职称3','联系电话3','档案更新3','','2021-01-14','否',''),(34,'2021-01-14 07:16:00','教师工号4','教师姓名4','性别4','职称4','联系电话4','档案更新4','','2021-01-14','否',''),(35,'2021-01-14 07:16:00','教师工号5','教师姓名5','性别5','职称5','联系电话5','档案更新5','','2021-01-14','否',''),(36,'2021-01-14 07:16:00','教师工号6','教师姓名6','性别6','职称6','联系电话6','档案更新6','','2021-01-14','否','');
/*!40000 ALTER TABLE `danganbiandong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusspeixunxinxi`
--

DROP TABLE IF EXISTS `discusspeixunxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusspeixunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='培训信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusspeixunxinxi`
--

LOCK TABLES `discusspeixunxinxi` WRITE;
/*!40000 ALTER TABLE `discusspeixunxinxi` DISABLE KEYS */;
INSERT INTO `discusspeixunxinxi` VALUES (121,'2021-01-14 07:16:00',1,1,'评论内容1','回复内容1'),(122,'2021-01-14 07:16:00',2,2,'评论内容2','回复内容2'),(123,'2021-01-14 07:16:00',3,3,'评论内容3','回复内容3'),(124,'2021-01-14 07:16:00',4,4,'评论内容4','回复内容4'),(125,'2021-01-14 07:16:00',5,5,'评论内容5','回复内容5'),(126,'2021-01-14 07:16:00',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusspeixunxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-01-14 07:16:00','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-01-14 07:16:00','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-01-14 07:16:00','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-01-14 07:16:00','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-01-14 07:16:00','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-01-14 07:16:00','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerendangan`
--

DROP TABLE IF EXISTS `gerendangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerendangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `zuigaoxueli` varchar(200) DEFAULT NULL COMMENT '最高学历',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `canjiadangpaishijian` date DEFAULT NULL COMMENT '参加党派时间',
  `hunyuqingkuang` varchar(200) DEFAULT NULL COMMENT '婚育情况',
  `canjiagongzuoshijian` date DEFAULT NULL COMMENT '参加工作时间',
  `benxiaorenzhishijian` date DEFAULT NULL COMMENT '本校任职时间',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `xinji` varchar(200) DEFAULT NULL COMMENT '薪级',
  `dangancailiao` varchar(200) DEFAULT NULL COMMENT '档案材料',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610608972367 DEFAULT CHARSET=utf8 COMMENT='个人档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerendangan`
--

LOCK TABLES `gerendangan` WRITE;
/*!40000 ALTER TABLE `gerendangan` DISABLE KEYS */;
INSERT INTO `gerendangan` VALUES (21,'2021-01-14 07:16:00','教师工号1','教师姓名1','性别1','联系电话1','440300199101010001','家庭住址1','最高学历1','中共党员','2021-01-14','已婚已育','2021-01-14','2021-01-14','职称1','岗位1','薪级1','','否',''),(22,'2021-01-14 07:16:00','教师工号2','教师姓名2','性别2','联系电话2','440300199202020002','家庭住址2','最高学历2','中共党员','2021-01-14','已婚已育','2021-01-14','2021-01-14','职称2','岗位2','薪级2','','否',''),(23,'2021-01-14 07:16:00','教师工号3','教师姓名3','性别3','联系电话3','440300199303030003','家庭住址3','最高学历3','中共党员','2021-01-14','已婚已育','2021-01-14','2021-01-14','职称3','岗位3','薪级3','','否',''),(24,'2021-01-14 07:16:00','教师工号4','教师姓名4','性别4','联系电话4','440300199404040004','家庭住址4','最高学历4','中共党员','2021-01-14','已婚已育','2021-01-14','2021-01-14','职称4','岗位4','薪级4','','否',''),(25,'2021-01-14 07:16:00','教师工号5','教师姓名5','性别5','联系电话5','440300199505050005','家庭住址5','最高学历5','中共党员','2021-01-14','已婚已育','2021-01-14','2021-01-14','职称5','岗位5','薪级5','','否',''),(26,'2021-01-14 07:16:00','教师工号6','教师姓名6','性别6','联系电话6','440300199606060006','家庭住址6','最高学历6','中共党员','2021-01-14','已婚已育','2021-01-14','2021-01-14','职称6','岗位6','薪级6','','否',''),(1610608972366,'2021-01-14 07:22:52','教师1','教师姓名1','男','13823888881','123456789123456789','FDGTYGT','本科','中共党员','2021-01-13','已婚已育','2021-01-13','2021-01-13','中级教师','hjfrhsd','发的塞特','http://localhost:8080/springbootpc161/upload/1610608971070.zip','否',NULL);
/*!40000 ALTER TABLE `gerendangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangchengxinxi`
--

DROP TABLE IF EXISTS `jiangchengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangchengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `huojiangshijian` date DEFAULT NULL COMMENT '获奖时间',
  `huojiangneirong` longtext COMMENT '获奖内容',
  `chengfashijian` date DEFAULT NULL COMMENT '惩罚时间',
  `chengfaneirong` longtext COMMENT '惩罚内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='奖惩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangchengxinxi`
--

LOCK TABLES `jiangchengxinxi` WRITE;
/*!40000 ALTER TABLE `jiangchengxinxi` DISABLE KEYS */;
INSERT INTO `jiangchengxinxi` VALUES (41,'2021-01-14 07:16:00','教师工号1','教师姓名1','性别1','2021-01-14','获奖内容1','2021-01-14','惩罚内容1'),(42,'2021-01-14 07:16:00','教师工号2','教师姓名2','性别2','2021-01-14','获奖内容2','2021-01-14','惩罚内容2'),(43,'2021-01-14 07:16:00','教师工号3','教师姓名3','性别3','2021-01-14','获奖内容3','2021-01-14','惩罚内容3'),(44,'2021-01-14 07:16:00','教师工号4','教师姓名4','性别4','2021-01-14','获奖内容4','2021-01-14','惩罚内容4'),(45,'2021-01-14 07:16:00','教师工号5','教师姓名5','性别5','2021-01-14','获奖内容5','2021-01-14','惩罚内容5'),(46,'2021-01-14 07:16:00','教师工号6','教师姓名6','性别6','2021-01-14','获奖内容6','2021-01-14','惩罚内容6');
/*!40000 ALTER TABLE `jiangchengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (11,'2021-01-14 07:16:00','教师1','123456','教师姓名1','男','http://localhost:8080/springbootpc161/upload/jiaoshi_zhaopian1.jpg','13823888881','773890001@qq.com'),(12,'2021-01-14 07:16:00','教师2','123456','教师姓名2','男','http://localhost:8080/springbootpc161/upload/jiaoshi_zhaopian2.jpg','13823888882','773890002@qq.com'),(13,'2021-01-14 07:16:00','教师3','123456','教师姓名3','男','http://localhost:8080/springbootpc161/upload/jiaoshi_zhaopian3.jpg','13823888883','773890003@qq.com'),(14,'2021-01-14 07:16:00','教师4','123456','教师姓名4','男','http://localhost:8080/springbootpc161/upload/jiaoshi_zhaopian4.jpg','13823888884','773890004@qq.com'),(15,'2021-01-14 07:16:00','教师5','123456','教师姓名5','男','http://localhost:8080/springbootpc161/upload/jiaoshi_zhaopian5.jpg','13823888885','773890005@qq.com'),(16,'2021-01-14 07:16:00','教师6','123456','教师姓名6','男','http://localhost:8080/springbootpc161/upload/jiaoshi_zhaopian6.jpg','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (71,'2021-01-14 07:16:00','教师工号1','教师姓名1','课程名称1','班级1','星期一','第一节','备注1'),(72,'2021-01-14 07:16:00','教师工号2','教师姓名2','课程名称2','班级2','星期一','第一节','备注2'),(73,'2021-01-14 07:16:00','教师工号3','教师姓名3','课程名称3','班级3','星期一','第一节','备注3'),(74,'2021-01-14 07:16:00','教师工号4','教师姓名4','课程名称4','班级4','星期一','第一节','备注4'),(75,'2021-01-14 07:16:00','教师工号5','教师姓名5','课程名称5','班级5','星期一','第一节','备注5'),(76,'2021-01-14 07:16:00','教师工号6','教师姓名6','课程名称6','班级6','星期一','第一节','备注6');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-14 07:16:00','标题1','http://localhost:8080/springbootpc161/upload/1610608861495.jpg','<p>内容1</p>'),(112,'2021-01-14 07:16:00','标题2','http://localhost:8080/springbootpc161/upload/news_picture2.jpg','内容2'),(113,'2021-01-14 07:16:00','标题3','http://localhost:8080/springbootpc161/upload/1610608872881.jpg','<p>内容3</p>'),(114,'2021-01-14 07:16:00','标题4','http://localhost:8080/springbootpc161/upload/news_picture4.jpg','内容4'),(115,'2021-01-14 07:16:00','标题5','http://localhost:8080/springbootpc161/upload/1610608883219.jpg','<p>内容5</p>'),(116,'2021-01-14 07:16:00','标题6','http://localhost:8080/springbootpc161/upload/1610608893799.jpg','<p>内容6</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peixunbaoming`
--

DROP TABLE IF EXISTS `peixunbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peixunbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunbiaoti` varchar(200) DEFAULT NULL COMMENT '培训标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `peixunshijian` varchar(200) DEFAULT NULL COMMENT '培训时间',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `shoukejiangshi` varchar(200) DEFAULT NULL COMMENT '授课讲师',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='培训报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peixunbaoming`
--

LOCK TABLES `peixunbaoming` WRITE;
/*!40000 ALTER TABLE `peixunbaoming` DISABLE KEYS */;
INSERT INTO `peixunbaoming` VALUES (61,'2021-01-14 07:16:00','培训标题1','类型1','培训时间1','培训地点1','授课讲师1','2021-01-14','教师工号1','教师姓名1','否',''),(62,'2021-01-14 07:16:00','培训标题2','类型2','培训时间2','培训地点2','授课讲师2','2021-01-14','教师工号2','教师姓名2','否',''),(63,'2021-01-14 07:16:00','培训标题3','类型3','培训时间3','培训地点3','授课讲师3','2021-01-14','教师工号3','教师姓名3','否',''),(64,'2021-01-14 07:16:00','培训标题4','类型4','培训时间4','培训地点4','授课讲师4','2021-01-14','教师工号4','教师姓名4','否',''),(65,'2021-01-14 07:16:00','培训标题5','类型5','培训时间5','培训地点5','授课讲师5','2021-01-14','教师工号5','教师姓名5','否',''),(66,'2021-01-14 07:16:00','培训标题6','类型6','培训时间6','培训地点6','授课讲师6','2021-01-14','教师工号6','教师姓名6','否','');
/*!40000 ALTER TABLE `peixunbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peixunxinxi`
--

DROP TABLE IF EXISTS `peixunxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peixunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunbiaoti` varchar(200) DEFAULT NULL COMMENT '培训标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `peixunshijian` varchar(200) DEFAULT NULL COMMENT '培训时间',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `peixunneirong` longtext COMMENT '培训内容',
  `peixunmubiao` longtext COMMENT '培训目标',
  `shoukejiangshi` varchar(200) DEFAULT NULL COMMENT '授课讲师',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='培训信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peixunxinxi`
--

LOCK TABLES `peixunxinxi` WRITE;
/*!40000 ALTER TABLE `peixunxinxi` DISABLE KEYS */;
INSERT INTO `peixunxinxi` VALUES (51,'2021-01-14 07:16:00','培训标题1','类型1','http://localhost:8080/springbootpc161/upload/1610608790748.jpg','培训时间1','培训地点1','<p>培训内容1</p>','培训目标1','授课讲师1',1,'2021-01-13'),(52,'2021-01-14 07:16:00','培训标题2','类型2','http://localhost:8080/springbootpc161/upload/1610608802441.jpg','培训时间2','培训地点2','<p>培训内容2</p>','培训目标2','授课讲师2',2,'2021-01-13'),(53,'2021-01-14 07:16:00','培训标题3','类型3','http://localhost:8080/springbootpc161/upload/1610608812306.jpg','培训时间3','培训地点3','<p>培训内容3</p>','培训目标3','授课讲师3',3,'2021-01-13'),(54,'2021-01-14 07:16:00','培训标题4','类型4','http://localhost:8080/springbootpc161/upload/1610608822763.jpg','培训时间4','培训地点4','<p>培训内容4</p>','培训目标4','授课讲师4',4,'2021-01-13'),(55,'2021-01-14 07:16:00','培训标题5','类型5','http://localhost:8080/springbootpc161/upload/1610608833744.jpg','培训时间5','培训地点5','<p>培训内容5</p>','培训目标5','授课讲师5',5,'2021-01-13'),(56,'2021-01-14 07:16:00','培训标题6','类型6','http://localhost:8080/springbootpc161/upload/1610608849863.jpg','培训时间6','培训地点6','<p>培训内容6</p>','培训目标6','授课讲师6',6,'2021-01-13');
/*!40000 ALTER TABLE `peixunxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','vvuoytbhudyonjhurdei39rxpvr7qywa','2021-01-14 07:19:27','2021-01-14 00:19:28'),(2,11,'教师1','jiaoshi','教师','b7zizzgaif7gbquczq9wkcybgkzctena','2021-01-14 07:22:09','2021-01-14 00:22:09');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-14 07:16:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 15:23:01
