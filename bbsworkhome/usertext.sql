/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : wangzhe

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-04 01:14:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `usertext`
-- ----------------------------
DROP TABLE IF EXISTS `usertext`;
CREATE TABLE `usertext` (
  `textid` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`textid`,`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertext
-- ----------------------------
