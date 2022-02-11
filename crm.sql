-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_activity`
--

DROP TABLE IF EXISTS `tbl_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activity` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startDate` char(10) DEFAULT NULL,
  `endDate` char(10) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity`
--

LOCK TABLES `tbl_activity` WRITE;
/*!40000 ALTER TABLE `tbl_activity` DISABLE KEYS */;
INSERT INTO `tbl_activity` VALUES ('4c33a084fe044646b631390280033c0d','40f6cdea0bd34aceb77492a1656d9fb3','动力节点CRM-P75-10','2021-01-20','2021-01-20','0','123','2021-01-20 15:40:47','张三','2021-01-20 16:07:45','张三'),('6430a2a1c38c487ba5f323c344ffdd1f','40f6cdea0bd34aceb77492a1656d9fb3','动力节点CRM-P755','2021-01-19','2021-01-19','0','冲冲冲','2021-01-19 01:10:54','张三','2021-01-20 16:21:30','张三'),('86027242d8644ab1bd22646e0edf84e1','06f5fc056eac41558a964f96daa7f27c','刘猛','2022-02-01','2022-02-05','2000','测试用例','2022-02-08 17:10:44','张三',NULL,NULL),('f7ec5b4787ac47c2b52e876c3e575fb5','40f6cdea0bd34aceb77492a1656d9fb3','动力节点CRM-P80','2021-01-19','2021-01-19','0','十天搞定CRM冲！','2021-01-19 15:39:45','张三',NULL,NULL);
/*!40000 ALTER TABLE `tbl_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity_remark`
--

DROP TABLE IF EXISTS `tbl_activity_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activity_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL COMMENT '0表示未修改，1表示已修改',
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity_remark`
--

LOCK TABLES `tbl_activity_remark` WRITE;
/*!40000 ALTER TABLE `tbl_activity_remark` DISABLE KEYS */;
INSERT INTO `tbl_activity_remark` VALUES ('284e3f5cecb24a2fa7bd84184afc9ffa','？？？？？','2022-02-08 17:11:20','张三',NULL,NULL,'0','86027242d8644ab1bd22646e0edf84e1'),('6430a2a1c38c487ba5f323c344ffdd14','备注4（P75）','2021-01-20 18:40:47','张三',NULL,NULL,'0','f7ec5b4787ac47c2b52e876c3e575fb5');
/*!40000 ALTER TABLE `tbl_activity_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clue`
--

DROP TABLE IF EXISTS `tbl_clue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_clue` (
  `id` char(32) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `owner` char(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clue`
--

LOCK TABLES `tbl_clue` WRITE;
/*!40000 ALTER TABLE `tbl_clue` DISABLE KEYS */;
INSERT INTO `tbl_clue` VALUES ('af7203a3b31342539664c79fb9a4dd65','张宇阳','先生','06f5fc056eac41558a964f96daa7f27c','测试公司','学生','1057869258@qq.com','18888888888','eqqzyy.com','18813325264','未知','未知','张宇阳','2022-01-29 10:01:45',NULL,NULL,'测试测试','','',''),('af7203a3b31342539664c79fb9a4dd66','刘猛','先生','06f5fc056eac41558a964f96daa7f27c','字节跳动','职员','1057869258@qq.com','111111111','eqqzyy.com','18813327512','未知','未知','张宇阳','2022-01-29 10:01:45',NULL,NULL,'测试测试',NULL,NULL,NULL),('af7203a3b31342539664c79fb9a4dd67','晨晨','先生','06f5fc056eac41558a964f96daa7f27c','中交一局','职员','1057869258@qq.com','111111111','eqqzyy.com','18549622186','未知','未知','张宇阳','2022-01-29 10:01:45',NULL,NULL,'测试测试',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_clue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clue_activity_relation`
--

DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_clue_activity_relation` (
  `id` char(32) NOT NULL,
  `clueId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clue_activity_relation`
--

LOCK TABLES `tbl_clue_activity_relation` WRITE;
/*!40000 ALTER TABLE `tbl_clue_activity_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clue_activity_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clue_remark`
--

DROP TABLE IF EXISTS `tbl_clue_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_clue_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `clueId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clue_remark`
--

LOCK TABLES `tbl_clue_remark` WRITE;
/*!40000 ALTER TABLE `tbl_clue_remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clue_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacts`
--

DROP TABLE IF EXISTS `tbl_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contacts` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `birth` char(10) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacts`
--

LOCK TABLES `tbl_contacts` WRITE;
/*!40000 ALTER TABLE `tbl_contacts` DISABLE KEYS */;
INSERT INTO `tbl_contacts` VALUES ('aad0728e996f420382ef74d687dbb34a','40f6cdea0bd34aceb77492a1656d9fb3','内部研讨会','3b858b4d8a9241f49adbefcee32ba90b','雷军','先生','LeiJun@qq.com','18888888888','CEO',NULL,'张三','2021-01-29 01:53:18',NULL,NULL,'干翻华为','小爱同学你好','2021-02-01','天津市小米集团路小米集团有限公司'),('cb7a1c6471524401bd57cf2c3908bbff','40f6cdea0bd34aceb77492a1656d9fb3','合作伙伴研讨会','f803ed1490a841769dbe75f1389e9252','刘猛','先生','lm@qq.com','120','董事长',NULL,'刘猛','2022-02-09 09:31:22',NULL,NULL,'mmm','mmm','2022-01-28','前期lm'),('d9255b7ba44b47238a38c6038e0d34de','40f6cdea0bd34aceb77492a1656d9fb3','公开媒介','202de56b264b4daab4dd5bb8918518f6','董明珠','女士','dongmingzhu@126.com','13333333333','CEO',NULL,'张三','2021-01-29 23:20:16',NULL,NULL,'雷军，打赌吗','赌资一个亿','2021-02-01','上海格力路格力集团'),('f813162a9a6445de8ceb2b6115c8a27b','40f6cdea0bd34aceb77492a1656d9fb3','合作伙伴','9cb43d197d5a4df8ae58f27e0a216bf7','马云','先生','mayun@qq.com','13888888888','CEO',NULL,'张三','2021-01-28 02:00:02',NULL,NULL,'干翻华为','无','2021-02-01','北京市阿里巴巴路阿里巴巴集团'),('fadbec6aa3774bf2b8782e5a2d3af153','40f6cdea0bd34aceb77492a1656d9fb3','合作伙伴研讨会','995e231cce32456d9cf3d1c2e6f287c0','王健林','先生','wangjianlin@163.com','13666666666','CEO',NULL,'张三','2021-01-28 02:13:40',NULL,NULL,'永远相信美好的事情将要发生','无','2021-02-02','北京市万达路万达集团有限公司');
/*!40000 ALTER TABLE `tbl_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacts_activity_relation`
--

DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contacts_activity_relation` (
  `id` char(32) NOT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacts_activity_relation`
--

LOCK TABLES `tbl_contacts_activity_relation` WRITE;
/*!40000 ALTER TABLE `tbl_contacts_activity_relation` DISABLE KEYS */;
INSERT INTO `tbl_contacts_activity_relation` VALUES ('01372ddce4964f4a956a9eb21d803b29','f813162a9a6445de8ceb2b6115c8a27b','84c5f525874244b6bd5a7c9bc73d36f9'),('8b973469179c4f40abe6696ea0b9a03f','fadbec6aa3774bf2b8782e5a2d3af153','f7ec5b4787ac47c2b52e876c3e575fb5'),('9fa12aa204374a79a6630254d8b2864a','f813162a9a6445de8ceb2b6115c8a27b','4c33a084fe044646b631390280033c0d'),('d8dc4e3da07946c5803c0d631ca35d76','f813162a9a6445de8ceb2b6115c8a27b','6430a2a1c38c487ba5f323c344ffdd1f');
/*!40000 ALTER TABLE `tbl_contacts_activity_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacts_remark`
--

DROP TABLE IF EXISTS `tbl_contacts_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contacts_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacts_remark`
--

LOCK TABLES `tbl_contacts_remark` WRITE;
/*!40000 ALTER TABLE `tbl_contacts_remark` DISABLE KEYS */;
INSERT INTO `tbl_contacts_remark` VALUES ('2507e63b387042a6a35b9c4828aaad30','备注3（属于马云）','张三','2021-01-28 02:00:02',NULL,NULL,'0','f813162a9a6445de8ceb2b6115c8a27b'),('3b5e195c99c6405e905f426926a7c2df','备注4（属于王健林）','张三','2021-01-28 02:13:40',NULL,NULL,'0','fadbec6aa3774bf2b8782e5a2d3af153'),('b1cee005a89d40f08d9db2ea39b88845','备注1（属于马云）','张三','2021-01-28 02:00:02',NULL,NULL,'0','f813162a9a6445de8ceb2b6115c8a27b'),('b312051776414312805614602f9df80c','备注2（属于马云）','张三','2021-01-28 02:00:02',NULL,NULL,'0','f813162a9a6445de8ceb2b6115c8a27b');
/*!40000 ALTER TABLE `tbl_contacts_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES ('07fa2f5471da4661b0776868bafd1d23','40f6cdea0bd34aceb77492a1656d9fb3','猪八戒',NULL,NULL,'张三','2021-01-29 23:23:41',NULL,NULL,'甜啊','2021-02-04',NULL,NULL),('202de56b264b4daab4dd5bb8918518f6','40f6cdea0bd34aceb77492a1656d9fb3','格力','www.geli.com','021-33333333','张三','2021-01-29 23:20:16',NULL,NULL,'赌资一个亿','2021-02-01','雷军，打赌吗','上海格力路格力集团'),('3b858b4d8a9241f49adbefcee32ba90b','40f6cdea0bd34aceb77492a1656d9fb3','小米集团','www.mi.com','022-88888888','张三','2021-01-29 01:53:18',NULL,NULL,'小爱同学你好','2021-02-01','干翻华为','天津市小米集团路小米集团有限公司'),('4db545613a3a45c6bf2288d3b939795d','40f6cdea0bd34aceb77492a1656d9fb3','',NULL,NULL,'张三','2021-02-01 13:02:18',NULL,NULL,'2','2021-02-04',NULL,NULL),('995e231cce32456d9cf3d1c2e6f287c0','40f6cdea0bd34aceb77492a1656d9fb3','万达集团','www.wanda.com','010-66666666','张三','2021-01-28 02:13:40',NULL,NULL,'无','2021-02-02','永远相信美好的事情将要发生','北京市万达路万达集团有限公司'),('9cb43d197d5a4df8ae58f27e0a216bf7','40f6cdea0bd34aceb77492a1656d9fb3','阿里巴巴','www.alibaba.com','010-88888888','张三','2021-01-28 02:00:02',NULL,NULL,'无','2021-02-01','干翻华为','北京市阿里巴巴路阿里巴巴集团'),('f803ed1490a841769dbe75f1389e9252','40f6cdea0bd34aceb77492a1656d9fb3','字节','lm@163.com','110','刘猛','2022-02-09 09:31:22',NULL,NULL,'mmm','2022-01-28','mmm','前期lm');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer_remark`
--

DROP TABLE IF EXISTS `tbl_customer_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_remark`
--

LOCK TABLES `tbl_customer_remark` WRITE;
/*!40000 ALTER TABLE `tbl_customer_remark` DISABLE KEYS */;
INSERT INTO `tbl_customer_remark` VALUES ('179a37c58a964d0dbbf0981a9dd8c42e','备注3（属于马云）','张三','2021-01-28 02:00:02',NULL,NULL,'0','9cb43d197d5a4df8ae58f27e0a216bf7'),('1c7412d9bd9e4b44889337aa18b2af79','备注2（属于马云）','张三','2021-01-28 02:00:02',NULL,NULL,'0','9cb43d197d5a4df8ae58f27e0a216bf7'),('251c2ed3e33e4e9b9a43ef0e039799b2','备注4（属于王健林）','张三','2021-01-28 02:13:40',NULL,NULL,'0','995e231cce32456d9cf3d1c2e6f287c0'),('ebeda91a851f4b3cbc55c5b002f3378b','备注1（属于马云）','张三','2021-01-28 02:00:02',NULL,NULL,'0','9cb43d197d5a4df8ae58f27e0a216bf7');
/*!40000 ALTER TABLE `tbl_customer_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dic_type`
--

DROP TABLE IF EXISTS `tbl_dic_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dic_type` (
  `code` varchar(255) NOT NULL COMMENT '编码是主键，不能为空，不能含有中文。',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dic_type`
--

LOCK TABLES `tbl_dic_type` WRITE;
/*!40000 ALTER TABLE `tbl_dic_type` DISABLE KEYS */;
INSERT INTO `tbl_dic_type` VALUES ('appellation','称呼',''),('clueState','线索状态',''),('returnPriority','回访优先级',''),('returnState','回访状态',''),('source','来源',''),('stage','阶段',''),('transactionType','交易类型','');
/*!40000 ALTER TABLE `tbl_dic_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dic_value`
--

DROP TABLE IF EXISTS `tbl_dic_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dic_value` (
  `id` char(32) NOT NULL COMMENT '主键，采用UUID',
  `value` varchar(255) DEFAULT NULL COMMENT '不能为空，并且要求同一个字典类型下字典值不能重复，具有唯一性。',
  `text` varchar(255) DEFAULT NULL COMMENT '可以为空',
  `orderNo` varchar(255) DEFAULT NULL COMMENT '可以为空，但不为空的时候，要求必须是正整数',
  `typeCode` varchar(255) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dic_value`
--

LOCK TABLES `tbl_dic_value` WRITE;
/*!40000 ALTER TABLE `tbl_dic_value` DISABLE KEYS */;
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55','虚假线索','虚假线索','4','clueState'),('0fe33840c6d84bf78df55d49b169a894','销售邮件','销售邮件','8','source'),('12302fd42bd349c1bb768b19600e6b20','交易会','交易会','11','source'),('1615f0bb3e604552a86cde9a2ad45bea','最高','最高','2','returnPriority'),('176039d2a90e4b1a81c5ab8707268636','教授','教授','5','appellation'),('1e0bd307e6ee425599327447f8387285','将来联系','将来联系','2','clueState'),('2173663b40b949ce928db92607b5fe57','丢失线索','丢失线索','5','clueState'),('2876690b7e744333b7f1867102f91153','未启动','未启动','1','returnState'),('29805c804dd94974b568cfc9017b2e4c','07成交','07成交','7','stage'),('310e6a49bd8a4962b3f95a1d92eb76f4','试图联系','试图联系','1','clueState'),('31539e7ed8c848fc913e1c2c93d76fd1','博士123','博士123','4','appellation'),('37ef211719134b009e10b7108194cf46','01资质审查','01资质审查','1','stage'),('391807b5324d4f16bd58c882750ee632','08丢失的线索','08丢失的线索','8','stage'),('3a39605d67da48f2a3ef52e19d243953','聊天','聊天','14','source'),('474ab93e2e114816abf3ffc596b19131','低','低','3','returnPriority'),('48512bfed26145d4a38d3616e2d2cf79','广告','广告','1','source'),('4d03a42898684135809d380597ed3268','合作伙伴研讨会','合作伙伴研讨会','9','source'),('59795c49896947e1ab61b7312bd0597c','先生','先生','1','appellation'),('5c6e9e10ca414bd499c07b886f86202a','高','高','1','returnPriority'),('67165c27076e4c8599f42de57850e39c','夫人','夫人','2','appellation'),('68a1b1e814d5497a999b8f1298ace62b','09因竞争丢失关闭','09因竞争丢失关闭','9','stage'),('6b86f215e69f4dbd8a2daa22efccf0cf','web调研','web调研','13','source'),('72f13af8f5d34134b5b3f42c5d477510','合作伙伴','合作伙伴','6','source'),('7c07db3146794c60bf975749952176df','未联系','未联系','6','clueState'),('86c56aca9eef49058145ec20d5466c17','内部研讨会','内部研讨会','10','source'),('9095bda1f9c34f098d5b92fb870eba17','进行中','进行中','3','returnState'),('954b410341e7433faa468d3c4f7cf0d2','已有业务','已有业务','1','transactionType'),('966170ead6fa481284b7d21f90364984','已联系','已联系','3','clueState'),('96b03f65dec748caa3f0b6284b19ef2f','推迟','推迟','2','returnState'),('97d1128f70294f0aac49e996ced28c8a','新业务','新业务','2','transactionType'),('9ca96290352c40688de6596596565c12','完成','完成','4','returnState'),('9e6d6e15232549af853e22e703f3e015','需要条件','需要条件','7','clueState'),('9ff57750fac04f15b10ce1bbb5bb8bab','02需求分析','02需求分析','2','stage'),('a70dc4b4523040c696f4421462be8b2f','等待某人','等待某人','5','returnState'),('a83e75ced129421dbf11fab1f05cf8b4','推销电话','推销电话','2','source'),('ab8472aab5de4ae9b388b2f1409441c1','常规','常规','5','returnPriority'),('ab8c2a3dc05f4e3dbc7a0405f721b040','05提案/报价','05提案/报价','5','stage'),('b924d911426f4bc5ae3876038bc7e0ad','web下载','web下载','12','source'),('c13ad8f9e2f74d5aa84697bb243be3bb','03价值建议','03价值建议','3','stage'),('c83c0be184bc40708fd7b361b6f36345','最低','最低','4','returnPriority'),('db867ea866bc44678ac20c8a4a8bfefb','员工介绍','员工介绍','3','source'),('e44be1d99158476e8e44778ed36f4355','04确定决策者','04确定决策者','4','stage'),('e5f383d2622b4fc0959f4fe131dafc80','女士','女士','3','appellation'),('e81577d9458f4e4192a44650a3a3692b','06谈判/复审','06谈判/复审','6','stage'),('fb65d7fdb9c6483db02713e6bc05dd19','在线商场','在线商场','5','source'),('fd677cc3b5d047d994e16f6ece4d3d45','公开媒介','公开媒介','7','source'),('ff802a03ccea4ded8731427055681d48','外部介绍','外部介绍','4','source');
/*!40000 ALTER TABLE `tbl_dic_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tran`
--

DROP TABLE IF EXISTS `tbl_tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tran` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tran`
--

LOCK TABLES `tbl_tran` WRITE;
/*!40000 ALTER TABLE `tbl_tran` DISABLE KEYS */;
INSERT INTO `tbl_tran` VALUES ('059c5c9b27e04ca085c9695ff1463f0e','40f6cdea0bd34aceb77492a1656d9fb3','200','交易2','2021-01-28','4db545613a3a45c6bf2288d3b939795d','02需求分析','已有业务','内部研讨会','84c5f525874244b6bd5a7c9bc73d36f9','f813162a9a6445de8ceb2b6115c8a27b','张三','2021-02-01 13:02:18',NULL,NULL,'2','2','2021-02-04'),('4eec1397de764e70994115a3b2cb94bf','40f6cdea0bd34aceb77492a1656d9fb3','100000000','小目标计划','2021-01-29','9cb43d197d5a4df8ae58f27e0a216bf7','01资质审查','已有业务','合作伙伴','84c5f525874244b6bd5a7c9bc73d36f9','f813162a9a6445de8ceb2b6115c8a27b','张三','2021-01-29 23:11:46','张三','2021-03-08 00:08:15','不想还花呗......','马云：那就不还了！！！','2021-02-01'),('b2a53f73dada4a15b1b3fef193e24874','40f6cdea0bd34aceb77492a1656d9fb3','400','交易4','2021-02-01','4db545613a3a45c6bf2288d3b939795d','05提案/报价','已有业务','推销电话','84c5f525874244b6bd5a7c9bc73d36f9','f813162a9a6445de8ceb2b6115c8a27b','张三','2021-02-01 13:03:00',NULL,NULL,'4','4','2021-02-17'),('bdcfa3c7f4ee4376919b6c6047bea367','40f6cdea0bd34aceb77492a1656d9fb3','300','交易3','2021-01-28','4db545613a3a45c6bf2288d3b939795d','05提案/报价','已有业务','交易会','84c5f525874244b6bd5a7c9bc73d36f9','f813162a9a6445de8ceb2b6115c8a27b','张三','2021-02-01 13:02:44',NULL,NULL,'3','3','2021-02-01'),('c01c5a9754b941f88ac109839a193f60','40f6cdea0bd34aceb77492a1656d9fb3','100000000','猪八戒找闰土买西瓜','2021-01-28','07fa2f5471da4661b0776868bafd1d23','01资质审查','新业务','外部介绍','84c5f525874244b6bd5a7c9bc73d36f9','f813162a9a6445de8ceb2b6115c8a27b','张三','2021-01-29 23:23:41',NULL,NULL,'最近瓜真多','甜啊','2021-02-04'),('d6ea2da3dcdf45aca9bb0efe0f0d19ff','40f6cdea0bd34aceb77492a1656d9fb3','100','交易1','2021-01-28','9cb43d197d5a4df8ae58f27e0a216bf7','01资质审查','已有业务','web调研','84c5f525874244b6bd5a7c9bc73d36f9','f813162a9a6445de8ceb2b6115c8a27b','张三','2021-02-01 13:01:59',NULL,NULL,'1','1','1899-12-19');
/*!40000 ALTER TABLE `tbl_tran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tran_history`
--

DROP TABLE IF EXISTS `tbl_tran_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tran_history` (
  `id` char(32) NOT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tran_history`
--

LOCK TABLES `tbl_tran_history` WRITE;
/*!40000 ALTER TABLE `tbl_tran_history` DISABLE KEYS */;
INSERT INTO `tbl_tran_history` VALUES ('0126d600627546d3978ce67b1d9a0198',NULL,'100000000','2021-01-29','2021-03-08 00:08:10','张三','4eec1397de764e70994115a3b2cb94bf'),('03fee1b828b8408cbacb8bd09fa8fec1',NULL,'100000000','2021-01-29','2021-01-31 23:24:02','张三','4eec1397de764e70994115a3b2cb94bf'),('044ed307dca44b859f9854f73de7eea5',NULL,'100000000','2021-01-29','2021-03-08 00:08:13','张三','4eec1397de764e70994115a3b2cb94bf'),('0a937f5de55d41d98ebea4aa636f9b5b',NULL,'100000000','2021-01-29','2021-01-31 23:24:16','张三','4eec1397de764e70994115a3b2cb94bf'),('1c5fb490c25040b4b9195c2ae487d07d',NULL,'100000000','2021-01-29','2021-03-08 00:08:12','张三','4eec1397de764e70994115a3b2cb94bf'),('2a386a58119a47b5be783eb0355865a1','06谈判/复审','100000000','2021-01-29','2021-01-29 23:11:46','张三','4eec1397de764e70994115a3b2cb94bf'),('37c0600880aa4814be779398947f556c','02需求分析','200','2021-01-28','2021-02-01 13:02:18','张三','059c5c9b27e04ca085c9695ff1463f0e'),('3fe912f1e43747aaa038fd5782e19ac3',NULL,'100000000','2021-01-29','2021-01-31 23:18:50','张三','4eec1397de764e70994115a3b2cb94bf'),('41207b4f0f844dd58ee829b411770bab',NULL,'100000000','2021-01-29','2021-01-31 23:22:55','张三','4eec1397de764e70994115a3b2cb94bf'),('49cb7b42c5204b55adb2cbb9c0bf1c72','05提案/报价','400','2021-02-01','2021-02-01 13:03:00','张三','b2a53f73dada4a15b1b3fef193e24874'),('4b610a0d175a407ca8f397622a3f4a02',NULL,'100000000','2021-01-29','2021-03-08 00:08:08','张三','4eec1397de764e70994115a3b2cb94bf'),('4e0f3a4d83154672b07f15332b4baa82','01资质审查','100000000','2021-01-28','2021-01-29 01:53:18','张三','44094f2a5446410eb175dae5d0807e99'),('5ab538886f2d4fa78808252c69846e3d',NULL,'100000000','2021-01-29','2021-01-31 22:31:37','张三','4eec1397de764e70994115a3b2cb94bf'),('6f0d0d97c28f4597a4c55c83332bba23',NULL,'100000000','2021-01-29','2021-01-31 23:18:59','张三','4eec1397de764e70994115a3b2cb94bf'),('74cfa4b8a9dd449d9f6dd126544f0484','06谈判/复审','100000000','2021-02-01','2021-01-29 23:20:16','张三','233cd18e70c04e8e95e1b72cc955ea4a'),('798a44cdc542484a9bd9e518784413fb',NULL,'100000000','2021-01-29','2021-03-08 00:08:15','张三','4eec1397de764e70994115a3b2cb94bf'),('8cd4ced43e334aebba7669e74114619b',NULL,'100000000','2021-01-29','2021-01-31 22:36:08','张三','4eec1397de764e70994115a3b2cb94bf'),('a2010ad1c1ca457a9e89f3158c38942a',NULL,'100000000','2021-01-29','2021-03-08 00:08:13','张三','4eec1397de764e70994115a3b2cb94bf'),('b40ed9a651fe4a629e9ef368242ef7dc',NULL,'100000000','2021-01-29','2021-03-08 00:08:09','张三','4eec1397de764e70994115a3b2cb94bf'),('ba94814658e44dc7b4898889b6f9fbc3',NULL,'100000000','2021-01-29','2021-01-31 22:42:40','张三','4eec1397de764e70994115a3b2cb94bf'),('bd84a3dbdba146009c9ca7c718b50ae9',NULL,'100000000','2021-01-29','2021-01-31 23:24:07','张三','4eec1397de764e70994115a3b2cb94bf'),('bd9d7938ac3f4e72b8311000b25ffd7c','05提案/报价','300','2021-01-28','2021-02-01 13:02:44','张三','bdcfa3c7f4ee4376919b6c6047bea367'),('ca42081c8dfd46a9bca47ad4db07002e','01资质审查','100000000','2021-01-28','2021-01-29 23:23:41','张三','c01c5a9754b941f88ac109839a193f60'),('d64ae6a244154cafaa7f2c27d10bb17d',NULL,'100000000','2021-01-29','2021-03-08 00:08:07','张三','4eec1397de764e70994115a3b2cb94bf'),('dc014cd53b7e456cbcff501493202ac8',NULL,'100000000','2021-01-29','2021-03-08 00:08:14','张三','4eec1397de764e70994115a3b2cb94bf'),('e0aa494250e141bdb3e13a9b687bcc38',NULL,'100000000','2021-01-29','2021-03-08 00:08:05','张三','4eec1397de764e70994115a3b2cb94bf'),('f0381463ecf14023bfc620cc982e1f8b','01资质审查','100','2021-01-28','2021-02-01 13:01:59','张三','d6ea2da3dcdf45aca9bb0efe0f0d19ff');
/*!40000 ALTER TABLE `tbl_tran_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tran_remark`
--

DROP TABLE IF EXISTS `tbl_tran_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tran_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tran_remark`
--

LOCK TABLES `tbl_tran_remark` WRITE;
/*!40000 ALTER TABLE `tbl_tran_remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tran_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` char(32) NOT NULL COMMENT 'uuid\n            ',
  `loginAct` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL COMMENT '密码不能采用明文存储，采用密文，MD5加密之后的数据',
  `email` varchar(255) DEFAULT NULL,
  `expireTime` char(19) DEFAULT NULL COMMENT '失效时间为空的时候表示永不失效，失效时间为2018-10-10 10:10:10，则表示在该时间之前该账户可用。',
  `lockState` char(1) DEFAULT NULL COMMENT '锁定状态为空时表示启用，为0时表示锁定，为1时表示启用。',
  `deptno` char(4) DEFAULT NULL,
  `allowIps` varchar(255) DEFAULT NULL COMMENT '允许访问的IP为空时表示IP地址永不受限，允许访问的IP可以是一个，也可以是多个，当多个IP地址的时候，采用半角逗号分隔。允许IP是192.168.100.2，表示该用户只能在IP地址为192.168.100.2的机器上使用。',
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('06f5fc056eac41558a964f96daa7f27c','zyy','张宇阳','202cb962ac59075b964b07152d234b70','zyy@163.com','2022-11-27 21:50:05','1','A001','192.168.1.1','2018-11-22 12:11:40','李四',NULL,NULL),('40f6cdea0bd34aceb77492a1656d9fb3','zs','张三','202cb962ac59075b964b07152d234b70','zs@qq.com','2022-11-27 21:50:05','1','A001','192.168.1.1,192.168.1.2,127.0.0.1','2021-11-22 11:37:34','寮犱笁',NULL,NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'crm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-11 11:45:14
