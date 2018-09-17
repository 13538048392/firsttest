/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : easy_love

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-09-17 18:37:51
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
  `birth_date` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `wechat` varchar(255) NOT NULL,
  `hometown` varchar(50) NOT NULL DEFAULT '',
  `height` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'cm',
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'kg',
  `worker` varchar(255) NOT NULL,
  `salary` varchar(20) NOT NULL DEFAULT '0' COMMENT '月收入',
  `education` varchar(30) NOT NULL,
  `face` varchar(255) NOT NULL,
  `create_time` varchar(255) NOT NULL,
  `lover_hometown` varchar(50) NOT NULL DEFAULT ''' ''',
  `lover_height` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lover_weight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lover_worker` varchar(255) NOT NULL DEFAULT ''' ''',
  `lover_salary` varchar(255) NOT NULL DEFAULT ''' ''',
  `lover_education` varchar(255) NOT NULL DEFAULT ''' ''',
  `age_range` varchar(255) NOT NULL DEFAULT ''' ''',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of love_member
-- ----------------------------
INSERT INTO `love_member` VALUES ('1', ' 刘伟', '18', '2000-1-1', 'male', ' 13538048392', ' 13538048392', ' 景德镇', '178', '75', ' 程序员', '12-15K', '本科', '', '2018-09-12 10:22:47', '', '0', '0', '', '请选择', '请选择', '无特定要求');
INSERT INTO `love_member` VALUES ('2', '刘伟', '26', '1992-3-22', 'male', '13538048392', '13538048392', '景德镇', '178', '75', '程序员', '12-15K', '本科', '20180912\\a2488ace398106a58070e4066a163f3b.jpg', '2018-09-12 11:05:57', '江西', '160', '45', '老师', '10K', '本科', '25-30');
