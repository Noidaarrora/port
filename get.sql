-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: testing
-- ------------------------------------------------------
-- Server version	10.3.24-MariaDB-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `testing`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `testing` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `testing`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add register',7,'add_register'),(26,'Can change register',7,'change_register'),(27,'Can delete register',7,'delete_register'),(28,'Can view register',7,'view_register'),(29,'Can add login',8,'add_login'),(30,'Can change login',8,'change_login'),(31,'Can delete login',8,'delete_login'),(32,'Can view login',8,'view_login');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'portfolio','login'),(7,'portfolio','register'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-17 20:09:11.964513'),(2,'auth','0001_initial','2021-09-17 20:09:12.231390'),(3,'admin','0001_initial','2021-09-17 20:09:12.864696'),(4,'admin','0002_logentry_remove_auto_add','2021-09-17 20:09:13.038021'),(5,'admin','0003_logentry_add_action_flag_choices','2021-09-17 20:09:13.120661'),(6,'contenttypes','0002_remove_content_type_name','2021-09-17 20:09:13.344195'),(7,'auth','0002_alter_permission_name_max_length','2021-09-17 20:09:13.432250'),(8,'auth','0003_alter_user_email_max_length','2021-09-17 20:09:13.481617'),(9,'auth','0004_alter_user_username_opts','2021-09-17 20:09:13.525952'),(10,'auth','0005_alter_user_last_login_null','2021-09-17 20:09:13.625851'),(11,'auth','0006_require_contenttypes_0002','2021-09-17 20:09:13.633352'),(12,'auth','0007_alter_validators_add_error_messages','2021-09-17 20:09:13.676556'),(13,'auth','0008_alter_user_username_max_length','2021-09-17 20:09:13.795529'),(14,'auth','0009_alter_user_last_name_max_length','2021-09-17 20:09:13.901894'),(15,'auth','0010_alter_group_name_max_length','2021-09-17 20:09:13.952968'),(16,'auth','0011_update_proxy_permissions','2021-09-17 20:09:14.008323'),(17,'portfolio','0001_initial','2021-09-17 20:09:14.076527'),(18,'sessions','0001_initial','2021-09-17 20:09:14.253460');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1b97zxghbvioxs047ju2z7tvay10upsr','YWRmNjcwMjg1YmViZjE2YmRjNjQ3YTBlYzdmZDRiYjAwMDE0NzZjMzp7Im1ha2VyQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 14:45:24.487250'),('1m4tat6q5y6snmn1ujjgfgynxy75u8ai','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:12:17.128973'),('23tdqr77b8kx2h3dsbdvgb5bee0888hq','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:55:41.914741'),('3tkvm8djufcl9usw94qifdgv0df4czd7','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:39:11.816922'),('444hcmcbcxsnhttv4xwrhkbd265wwfq3','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:32:06.127375'),('4l8vi0a2pt74h9bhad9i7875j0uylcyg','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:33:37.774314'),('4varjzkjks7vyp6l6jk0jlhzeaa3tqjd','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:50:03.858675'),('4wh0596vg3pqli312z7ea32wol75ogef','MjZiNGFmNjVjZTM2YzIzMzhmMGJkYTU4NzAxY2YyNmNkMTAyZWFhYTp7IkxvZ2dlZElOIjoiQVVUSE9SSVpFRCJ9','2021-10-02 20:34:22.716154'),('5uhflm33eyxyx98q2q3xprzau8hg9eua','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:33:02.330730'),('61ngh13m8w9poe96697c2jwfngo32zkp','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:00:56.986456'),('63rre8aa03fmnlngnbrifc28k4oci4ha','M2U2ZGY1NzE5NWRiOWUxOWZlY2U4NTUxMTRlMzllMzgyYzU5MDBhZTp7InRlbXBAZ21haWwuY29tIjoiQVVUSE9SSVpFRCJ9','2021-10-02 14:56:54.825363'),('6peq0ob5qi06tjztiz9ty5r2zaj4if0m','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:52:04.375747'),('74icruinojrv75a493p1rhtvqbl1b5tr','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:35:00.011411'),('7l33euiry8wlgbsj9lkkjhydtk8gg927','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:04:40.112399'),('84fwo8z1472ohar5yxx1zcs5csm1rl93','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:05:59.887160'),('8o6saljvoesmr8bnckdy2m33dj2dxzvf','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 17:56:23.950569'),('9nhv9vkm2km3klbpjzucrhd7xrvdq00x','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:42:11.865205'),('9t94y9yczhqxnp0b9mtx0kntimwkvge5','ZmY3NjA4MDg1N2IyZWI0MzJkMDIyMjQ2M2I4MzZiOTY3Y2RmNDNhZDp7InRpZ2h0QGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:23:37.336531'),('afvpypz9o85w4ikhs2q6ad18utf1pqol','M2Y1NTdiMDdjOTQ1ODRmYTZjMWQ0OWJkNDYwM2E3OGZhY2VlNWMxYTp7InVzZXJuYW1lIjoiQVVUSE9SSVpFRCJ9','2021-10-02 14:34:05.703468'),('dv6vi92oqjom10b5ky7zny9b10rdn7k6','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:39:44.807224'),('ehxj5d12pw70yh3epz8t4tdz870ev3h0','M2Y1NTdiMDdjOTQ1ODRmYTZjMWQ0OWJkNDYwM2E3OGZhY2VlNWMxYTp7InVzZXJuYW1lIjoiQVVUSE9SSVpFRCJ9','2021-10-02 14:40:06.473077'),('evy5ihc8ke663zrprm9uzchxxpx45n85','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:35:25.518552'),('gimn3fkkifzo5yfy5lxkq6bcute0dvk8','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:04:58.740129'),('hyqe8azljsz33z3yp2l3o6tln0u46r12','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:54:45.601283'),('i4jymtvwcbavwy7ijga7xrpkpve6t9hg','ZTVmMWNhOWZiZTI1NDMwM2IyNjk3MjQwYWIxZDE1YWMxMzE0M2Q5ODp7Im9wQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 20:59:21.357361'),('j9hy1qqhg5a1ay7k9dixy0ch4q4yas9b','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:53:54.604181'),('jiq025h7pnrconcs6t0cfbb65i1117ok','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:41:27.736095'),('ke8n447maizuvl55gmko5645xxzkqlc7','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:04:13.118476'),('kfa2z6yrswx9omy5hgwpp40gejop5bzi','M2Y1NTdiMDdjOTQ1ODRmYTZjMWQ0OWJkNDYwM2E3OGZhY2VlNWMxYTp7InVzZXJuYW1lIjoiQVVUSE9SSVpFRCJ9','2021-10-02 14:42:10.580952'),('n1ir9xbr3q8zbasu89v6licina2w0nyl','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:30:16.495067'),('nsikmx1tk9pc4eel78fod8lsyixupwd1','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 14:58:08.594334'),('o6mv21a9mtwwfr5hqcf9pglaaxlcsgyu','M2Y1NTdiMDdjOTQ1ODRmYTZjMWQ0OWJkNDYwM2E3OGZhY2VlNWMxYTp7InVzZXJuYW1lIjoiQVVUSE9SSVpFRCJ9','2021-10-02 13:43:36.110609'),('ohrmd8l2rzrnp2s6xhmxtswfra9dxa99','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:40:06.779656'),('psp5sjtif8ffysjgth1ukwh19oiay836','M2Y1NTdiMDdjOTQ1ODRmYTZjMWQ0OWJkNDYwM2E3OGZhY2VlNWMxYTp7InVzZXJuYW1lIjoiQVVUSE9SSVpFRCJ9','2021-10-02 14:38:37.138772'),('px48xwpyax83mshpwpz0br0c6b4ym9zs','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:55:19.297068'),('qhst60o0gg5mlgmvs0vsk5eo555ze5mw','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 16:14:10.164335'),('qkq8ufb2i3w35iuh7jj6rsheebwwrtpw','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:55:53.631227'),('r5pbti6ks83hzdvo8osfhmdwibu0fkxa','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 17:30:06.724336'),('r79l9ei2caz48rr9mckkt3hor38e2bx8','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:38:36.162272'),('rth6m3u81373tgd9kxuu8sx8vs94j3wr','M2Y1NTdiMDdjOTQ1ODRmYTZjMWQ0OWJkNDYwM2E3OGZhY2VlNWMxYTp7InVzZXJuYW1lIjoiQVVUSE9SSVpFRCJ9','2021-10-02 14:44:32.306639'),('t81sqcc58tyfv4hw9lrw5xt56yp8f1iu','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 18:01:34.763693'),('umzrtfackg36qpt2t5skaa19572liymv','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 18:00:35.511162'),('uom93z2kivgo66un62e58ww0sphcw3d9','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:37:22.674495'),('v4l5nc1gzbu4lmtv81ah4p9ys2kaw7no','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:27:46.975723'),('xv89uunvvdiaem748vd3nqzj71hhrd8u','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:36:17.030531'),('ym2tthpmr7lr4pqlbz9y992ni308wv4q','Y2Y5MDJjZTcxNmExZjFjZjQyMjU4ZTA4MjlkOWRjODkwN2UxMTY5NDp7ImlvQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:51:42.950042'),('zo3hjjw73gunnrnn2ptwlncvhp2r1fcd','ZGI5M2I1NWRhMWFkNTI3Njk3OTBmNjJmYWZmMWVjNzhiMWMxMDM4NTp7InlvdXRoQGdtYWlsLmNvbSI6IkFVVEhPUklaRUQifQ==','2021-10-02 15:05:52.823490');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_login`
--

DROP TABLE IF EXISTS `portfolio_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) NOT NULL,
  `username_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_login_username_id_81366a60_fk_portfolio` (`username_id`),
  CONSTRAINT `portfolio_login_username_id_81366a60_fk_portfolio` FOREIGN KEY (`username_id`) REFERENCES `portfolio_register` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_login`
--

LOCK TABLES `portfolio_login` WRITE;
/*!40000 ALTER TABLE `portfolio_login` DISABLE KEYS */;
INSERT INTO `portfolio_login` VALUES (21,'tuper','testing@gmail.com'),(22,'tuper','maker@gmail.com'),(23,'100','temp@gmail.com'),(24,'100','io@gmail.com'),(25,'100','youth@gmail.com'),(26,'100','tight@gmail.com'),(27,'pl','op@gmail.com'),(28,'india','test@mail.com');
/*!40000 ALTER TABLE `portfolio_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_register`
--

DROP TABLE IF EXISTS `portfolio_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_register` (
  `firstname` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_register`
--

LOCK TABLES `portfolio_register` WRITE;
/*!40000 ALTER TABLE `portfolio_register` DISABLE KEYS */;
INSERT INTO `portfolio_register` VALUES ('www','io@gmail.com','100'),('maker','maker@gmail.com','tuper'),('testing','op@gmail.com','pl'),('Maker','temp@gmail.com','100'),('testing','test@mail.com','india'),('testing','testing@gmail.com','tuper'),('tight','tight@gmail.com','100'),('youth','youth@gmail.com','100');
/*!40000 ALTER TABLE `portfolio_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19  3:13:17
