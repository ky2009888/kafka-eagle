/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : ke

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-12-10 16:53:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ke_alarm_clusters
-- ----------------------------
DROP TABLE IF EXISTS `ke_alarm_clusters`;
CREATE TABLE `ke_alarm_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cluster` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `alarm_group` varchar(255) DEFAULT NULL,
  `alarm_times` int(11) DEFAULT NULL,
  `alarm_max_times` int(11) DEFAULT NULL,
  `alarm_level` varchar(255) DEFAULT NULL,
  `is_normal` varchar(255) DEFAULT NULL,
  `is_enable` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `modify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_alarm_config
-- ----------------------------
DROP TABLE IF EXISTS `ke_alarm_config`;
CREATE TABLE `ke_alarm_config` (
  `cluster` varchar(255) DEFAULT NULL,
  `alarm_group` varchar(255) DEFAULT NULL,
  `alarm_type` varchar(255) DEFAULT NULL,
  `alarm_url` varchar(255) DEFAULT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `alarm_address` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `modify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_alarm_consumer
-- ----------------------------
DROP TABLE IF EXISTS `ke_alarm_consumer`;
CREATE TABLE `ke_alarm_consumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `lag` bigint(20) DEFAULT NULL,
  `alarm_group` varchar(255) DEFAULT NULL,
  `alarm_times` int(11) DEFAULT NULL,
  `alarm_max_times` int(11) DEFAULT NULL,
  `alarm_level` varchar(255) DEFAULT NULL,
  `is_normal` varchar(255) DEFAULT NULL,
  `is_enable` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `modify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_connect_config
-- ----------------------------
DROP TABLE IF EXISTS `ke_connect_config`;
CREATE TABLE `ke_connect_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cluster` varchar(255) DEFAULT NULL,
  `connect_uri` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `alive` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `modify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_consumer_bscreen
-- ----------------------------
DROP TABLE IF EXISTS `ke_consumer_bscreen`;
CREATE TABLE `ke_consumer_bscreen` (
  `cluster` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `logsize` bigint(20) DEFAULT NULL,
  `difflogsize` bigint(20) DEFAULT NULL,
  `offsets` bigint(255) DEFAULT NULL,
  `diffoffsets` bigint(255) DEFAULT NULL,
  `lag` bigint(255) DEFAULT NULL,
  `timespan` bigint(20) DEFAULT NULL,
  `tm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_consumer_group
-- ----------------------------
DROP TABLE IF EXISTS `ke_consumer_group`;
CREATE TABLE `ke_consumer_group` (
  `cluster` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_consumer_group_summary
-- ----------------------------
DROP TABLE IF EXISTS `ke_consumer_group_summary`;
CREATE TABLE `ke_consumer_group_summary` (
  `cluster` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `topic_number` int(11) DEFAULT NULL,
  `coordinator` varchar(255) DEFAULT NULL,
  `active_topic` int(11) DEFAULT NULL,
  `active_thread_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_logsize
-- ----------------------------
DROP TABLE IF EXISTS `ke_logsize`;
CREATE TABLE `ke_logsize` (
  `cluster` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `logsize` bigint(20) DEFAULT NULL,
  `diffval` bigint(20) DEFAULT NULL,
  `timespan` bigint(20) DEFAULT NULL,
  `tm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_metrics
-- ----------------------------
DROP TABLE IF EXISTS `ke_metrics`;
CREATE TABLE `ke_metrics` (
  `cluster` varchar(255) DEFAULT NULL,
  `broker` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `timespan` bigint(20) DEFAULT NULL,
  `tm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_metrics_offline
-- ----------------------------
DROP TABLE IF EXISTS `ke_metrics_offline`;
CREATE TABLE `ke_metrics_offline` (
  `cluster` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `one` varchar(255) DEFAULT NULL,
  `mean` varchar(255) DEFAULT NULL,
  `five` varchar(255) DEFAULT NULL,
  `fifteen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_p_role
-- ----------------------------
DROP TABLE IF EXISTS `ke_p_role`;
CREATE TABLE `ke_p_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_describer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_resources
-- ----------------------------
DROP TABLE IF EXISTS `ke_resources`;
CREATE TABLE `ke_resources` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `ke_role_resource`;
CREATE TABLE `ke_role_resource` (
  `role_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_sql_history
-- ----------------------------
DROP TABLE IF EXISTS `ke_sql_history`;
CREATE TABLE `ke_sql_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `ksql` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `spend_time` bigint(20) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `tm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_topic_offsets
-- ----------------------------
DROP TABLE IF EXISTS `ke_topic_offsets`;
CREATE TABLE `ke_topic_offsets` (
  `cluster` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `logsize` double DEFAULT NULL,
  `offsets` varchar(255) DEFAULT NULL,
  `lag` varchar(255) DEFAULT NULL,
  `timespan` datetime DEFAULT NULL,
  `tm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_topic_rank
-- ----------------------------
DROP TABLE IF EXISTS `ke_topic_rank`;
CREATE TABLE `ke_topic_rank` (
  `cluster` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `tkey` varchar(255) DEFAULT NULL,
  `tvalue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_users
-- ----------------------------
DROP TABLE IF EXISTS `ke_users`;
CREATE TABLE `ke_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtxno` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ke_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ke_user_role`;
CREATE TABLE `ke_user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `ke`.`ke_users` (`id`, `rtxno`, `username`, `password`, `email`, `realname`) VALUES ('1', '1000', 'admin', '123456', 'admin@email.com', 'Administrator');
