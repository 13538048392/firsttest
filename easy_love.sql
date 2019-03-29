/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : easy_love

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 29/03/2019 18:54:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for love_active
-- ----------------------------
DROP TABLE IF EXISTS `love_active`;
CREATE TABLE `love_active`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活的时间',
  `active_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动地址',
  `cat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动封面图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of love_active
-- ----------------------------
INSERT INTO `love_active` VALUES (1, '红树林', '2019年3月29日 19：30', '深圳湾公园地铁 D2出口', '户外活动', '20190329\\b1810f674f863305a6fd4003b3bc0939.jpg', '<p>温馨提示：</p><p>1，以找对象为目标，以开心为目的</p><p>2.各自需要花时间思考一下，想找什么样的对象，有哪些要求，能给对方什么</p><p>费用：100元/人</p><p>报名方式：</p><p>&nbsp; &nbsp; 加微信好友：</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Xxpxiao 13143408005</p><p>&nbsp; &nbsp; 发信息：报名人 +手机号</p><p>&nbsp; &nbsp; 预交30元，即报名成功</p><p><', '2019-03-29 16:49:53');
INSERT INTO `love_active` VALUES (2, '牛逼活动', '1月七日', '铜锣湾', '户外活动', '20190329\\3a5bcd12d9c91a81f03fc0c2cf439167.jpg', '<p>哈哈哈哈</p>', '2019-03-29 17:30:32');

-- ----------------------------
-- Table structure for love_active_image
-- ----------------------------
DROP TABLE IF EXISTS `love_active_image`;
CREATE TABLE `love_active_image`  (
  `active_id` int(11) NOT NULL COMMENT '活动id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动图片'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for love_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `love_admin_user`;
CREATE TABLE `love_admin_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login_time` int(10) UNSIGNED NOT NULL,
  `listorder` int(8) NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0普通的，-1删除的，1正常的',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of love_admin_user
-- ----------------------------
INSERT INTO `love_admin_user` VALUES (1, 'Lwroot', 'bfd7bf18c2900cddc3ae25ff0f9d4099', '127.0.0.1', 1553826854, 0, 1, 0, 1553826854);
INSERT INTO `love_admin_user` VALUES (2, '', 'aa1cd52b96d0be34e5f73a1b6bc5fda1', '', 0, 0, 1, 0, 0);
INSERT INTO `love_admin_user` VALUES (3, '', 'aa1cd52b96d0be34e5f73a1b6bc5fda1', '', 0, 0, 1, 0, 0);
INSERT INTO `love_admin_user` VALUES (4, '', 'aa1cd52b96d0be34e5f73a1b6bc5fda1', '', 0, 0, 1, 0, 0);
INSERT INTO `love_admin_user` VALUES (5, 'hannan', 'bfd7bf18c2900cddc3ae25ff0f9d4099', '127.0.0.1', 1537957668, 0, 1, 0, 1537957668);
INSERT INTO `love_admin_user` VALUES (6, 'hannan', 'bfd7bf18c2900cddc3ae25ff0f9d4099', '', 0, 0, 1, 1537176464, 1537176464);

-- ----------------------------
-- Table structure for love_member
-- ----------------------------
DROP TABLE IF EXISTS `love_member`;
CREATE TABLE `love_member`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` tinyint(4) NOT NULL,
  `birth_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hometown` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `remark_count` int(11) NULL DEFAULT 0,
  `height` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'cm',
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'kg',
  `worker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salary` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '月收入',
  `education` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `face` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lover_hometown` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\' \'',
  `lover_height` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lover_weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lover_worker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\' \'',
  `lover_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\' \'',
  `lover_education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\' \'',
  `age_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\' \'',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of love_member
-- ----------------------------
INSERT INTO `love_member` VALUES (5, '刘伟', 27, '1992-2-19', 'male', '13538048392', '13538048392', '景德镇', 0, 178, 75, '程序员', '15-20K', '本科', '20190127/18c5c8d011c0a24be1418bc2c15b0663.jpg', '2019-01-27 15:42:58', '中国', 175, 50, '老师', '10K', '本科', '25-30');
INSERT INTO `love_member` VALUES (6, '刘伟22', 19, '2000-2-6', 'male', '13538048392', '13538048392', '景德镇', 0, 178, 75, '电饭锅', '8-10K', '本科', '20190128/d2340c316928309ef7e6cca1bccc6ca3.jpg', '2019-01-28 08:42:09', '', 0, 0, '', '请选择', '请选择', '无特定要求');
INSERT INTO `love_member` VALUES (7, '刘伟1', 29, '1990-2-19', 'male', '13538048392', '13538048392', '江西', 0, 178, 75, '程序员', '12-15K', '本科', '20190130/41bf4a68ce0781821695b35b36f085ea.jpg', '2019-01-30 18:28:37', '中国', 165, 55, '老师', '12K', '本科', '25-30');

-- ----------------------------
-- Table structure for love_member_remark
-- ----------------------------
DROP TABLE IF EXISTS `love_member_remark`;
CREATE TABLE `love_member_remark`  (
  `member_id` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of love_member_remark
-- ----------------------------
INSERT INTO `love_member_remark` VALUES (8, 'haha', NULL);
INSERT INTO `love_member_remark` VALUES (8, '润喉糖', 1549857588);
INSERT INTO `love_member_remark` VALUES (8, '异步', 1549857675);
INSERT INTO `love_member_remark` VALUES (8, '异步', 1549862528);
INSERT INTO `love_member_remark` VALUES (8, '个办法', 1549862551);
INSERT INTO `love_member_remark` VALUES (8, '更不能', 1549862621);
INSERT INTO `love_member_remark` VALUES (6, 'reye', 1549863945);

SET FOREIGN_KEY_CHECKS = 1;
