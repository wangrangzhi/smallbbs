/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : wangzhe

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-03 14:54:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wangzhe', '123456', '1');
