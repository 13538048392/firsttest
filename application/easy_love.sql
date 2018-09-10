/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : easy_love

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-09-10 17:22:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `love_member`
-- ----------------------------
DROP TABLE IF EXISTS `love_member`;
CREATE TABLE `love_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `tel` char(11) NOT NULL,
  `wechat` varchar(255) NOT NULL,
  `hometown` varchar(50) NOT NULL DEFAULT '',
  `height` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'cm',
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'kg',
  `worker` varchar(255) NOT NULL,
  `salary` varchar(20) NOT NULL DEFAULT '0' COMMENT '月收入',
  `education` varchar(30) NOT NULL,
  `face` varchar(255) NOT NULL,
  `lover_hometown` varchar(50) NOT NULL DEFAULT ''' ''',
  `lover_height` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lover_weight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lover_worker` varchar(255) NOT NULL DEFAULT ''' ''',
  `lover_salary` varchar(255) NOT NULL DEFAULT ''' ''',
  `lover_education` varchar(255) NOT NULL DEFAULT ''' ''',
  `age_range` varchar(255) NOT NULL DEFAULT ''' ''',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of love_member
-- ----------------------------
