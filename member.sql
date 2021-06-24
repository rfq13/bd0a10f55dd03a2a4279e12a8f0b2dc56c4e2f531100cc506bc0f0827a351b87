/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : member

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 24/06/2021 13:50:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (0, 'root', 0);
INSERT INTO `member` VALUES (1, 'William', 0);
INSERT INTO `member` VALUES (2, 'Jessica', 0);
INSERT INTO `member` VALUES (3, 'Samantha', 0);
INSERT INTO `member` VALUES (4, 'Maya', 0);
INSERT INTO `member` VALUES (5, 'Richard', 1);
INSERT INTO `member` VALUES (6, 'Ryan', 1);
INSERT INTO `member` VALUES (7, 'Marge', 2);
INSERT INTO `member` VALUES (8, 'James', 3);
INSERT INTO `member` VALUES (9, 'April', 3);
INSERT INTO `member` VALUES (10, 'Charles', 3);
INSERT INTO `member` VALUES (11, 'Gerald', 4);
INSERT INTO `member` VALUES (12, 'Andrea', 4);
INSERT INTO `member` VALUES (13, 'Summer', 5);
INSERT INTO `member` VALUES (14, 'Geraldine', 7);
INSERT INTO `member` VALUES (15, 'John', 7);
INSERT INTO `member` VALUES (16, 'Bach', 9);
INSERT INTO `member` VALUES (17, 'Dean', 12);
INSERT INTO `member` VALUES (18, 'Andre', 12);
INSERT INTO `member` VALUES (19, 'Josephine', 12);
INSERT INTO `member` VALUES (20, 'Drake', 14);
INSERT INTO `member` VALUES (21, 'Neil', 18);
INSERT INTO `member` VALUES (22, 'Derp', 21);
INSERT INTO `member` VALUES (23, 'Derpina', 22);

SET FOREIGN_KEY_CHECKS = 1;
