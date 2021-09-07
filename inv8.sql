/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.40.83
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : inv8

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 07/09/2021 15:11:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attdances
-- ----------------------------
DROP TABLE IF EXISTS `attdances`;
CREATE TABLE `attdances`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `att_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'HARDWARE', 'hardware', '2021-09-07 04:10:52', '2021-09-07 04:10:52');
INSERT INTO `categories` VALUES (2, 'SOFTWARE', 'software', '2021-09-07 04:11:14', '2021-09-07 04:11:14');
INSERT INTO `categories` VALUES (3, 'PERIPERAL', 'periperal', '2021-09-07 04:11:24', '2021-09-07 04:11:24');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shope_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `account_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'Haris Rifai', 'harisrifai@anggunkreasi.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (2, 'Shannon Stokes', 'bfritsch@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (3, 'Salvador Bahringer Sr.', 'dibbert.mae@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (4, 'Nikolas Lowe', 'randi.gutmann@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (5, 'Deon Tillman', 'ledner.mazie@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (6, 'Dr. Demond Lemke V', 'ncremin@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (7, 'Raymond Kuhlman', 'reinger.tia@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (8, 'Rollin Gottlieb I', 'anna22@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (9, 'Dillon Rath', 'verona.schumm@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (10, 'Rosalinda Gislason', 'cremin.orlando@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (11, 'Don Kilback', 'xheller@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (12, 'Haris Rifai', 'harisrifai@anggunkreasi.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (13, 'Prof. Flavio Shields', 'paul00@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (14, 'Dr. Dax Bartoletti I', 'dessie34@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (15, 'Helen Rippin', 'clemmie.huels@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (16, 'Brain Glover', 'bud.blanda@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (17, 'Arjun Hackett IV', 'elton.trantow@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (18, 'Sammie Berge', 'nicolas.beaulah@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (19, 'Flavio Breitenberg', 'xcarroll@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (20, 'Prof. Edd Hand MD', 'eileen21@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (21, 'Cecelia Weimann', 'qhickle@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (22, 'Norval Lesch', 'mohr.antwan@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (23, 'Lily Shanahan', 'jena.cassin@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (24, 'Lupe Smitham', 'vandervort.blanche@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (25, 'Ludwig Hettinger', 'alisa.macejkovic@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (26, 'Retha Romaguera IV', 'fermin.ratke@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (27, 'Jovany Pouros', 'oaltenwerth@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (28, 'Asia Kassulke II', 'casey65@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (29, 'Myah Haag', 'mathew.schamberger@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (30, 'Erica Yost', 'wjacobson@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (31, 'Marjolaine Reichert', 'janae23@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (32, 'Bette Volkman', 'lenny.mante@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (33, 'Janiya Rice', 'theodora74@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (34, 'Kaela Raynor IV', 'jadyn.little@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (35, 'Keenan Connelly', 'tamia.jacobson@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (36, 'Caleb Reynolds', 'lowell05@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (37, 'Clyde Sanford', 'arnoldo.mante@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (38, 'Layne Sanford II', 'effertz.darlene@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (39, 'Prof. Travon Weissnat IV', 'dangelo.cummings@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (40, 'Dr. Toni Casper', 'earlene.tremblay@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (41, 'Claire Kilback', 'fstanton@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (42, 'Dr. Narciso Feeney PhD', 'michael.langworth@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (43, 'Susan Hauck', 'eloy.bauch@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (44, 'Mitchel Padberg', 'matt03@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (45, 'Prof. Danny Beahan MD', 'breana96@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (46, 'Mrs. Amelia Lebsack PhD', 'roberta.marvin@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (47, 'Aidan Bogisich', 'kenneth27@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (48, 'Dalton Roberts', 'dickens.mckenna@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (49, 'Dr. Celia Feest', 'cwintheiser@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (50, 'Prof. David Barton', 'ffunk@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (51, 'Terrell Klocko IV', 'lernser@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (52, 'Ivy Kunze', 'ekirlin@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (53, 'Jody Bashirian IV', 'xzieme@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (54, 'Dr. Priscilla Rath III', 'bryce33@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (55, 'Melba Hills IV', 'kweimann@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (56, 'Mr. Lukas Kuhn', 'chadrick99@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (57, 'Nasir Gerhold', 'ischamberger@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (58, 'Cyrus Sawayn', 'bspencer@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (59, 'Prof. Louisa Gottlieb I', 'reggie48@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (60, 'Mr. Nasir Conroy', 'leanna88@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (61, 'Donnell Collins', 'koss.dedric@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (62, 'Jaylen Emmerich IV', 'lexi29@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (63, 'Hollie Murray', 'gregory.larkin@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (64, 'Kamron Schumm Sr.', 'qwehner@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (65, 'Mr. Keeley Tillman DDS', 'susie10@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (66, 'Maegan Sauer', 'laverne.lueilwitz@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (67, 'Cathy Jacobi', 'chad.krajcik@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (68, 'Jennings Botsford', 'alena.schamberger@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (69, 'Mrs. Agnes Murray', 'dgerlach@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (70, 'Prof. Christine Bogan MD', 'ywisozk@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (71, 'Grace Rowe', 'vdoyle@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (72, 'Carroll Zulauf', 'lemke.elenora@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (73, 'Dr. Jaleel Ziemann DDS', 'aturcotte@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (74, 'Verlie Walker', 'grady.precious@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (75, 'Mrs. Tamara Parisian DDS', 'kiera.langworth@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (76, 'Favian Bartoletti', 'rebeka.marks@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (77, 'Mr. Christop Osinski', 'mante.brandyn@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (78, 'Prof. Jayme Hickle PhD', 'mkoss@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (79, 'Sheridan Lynch', 'vebert@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (80, 'Prof. Alexzander Senger', 'noemi.runte@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (81, 'Leanna Marvin I', 'ebony81@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (82, 'Lue Mante', 'walker.aglae@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (83, 'Autumn Klocko DDS', 'sylvester.hagenes@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (84, 'Mrs. Harmony Jerde DDS', 'sarai66@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (85, 'Arjun Kautzer', 'sam.cummings@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (86, 'Grant Schneider Sr.', 'pjerde@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (87, 'Ms. Della Green Jr.', 'eliezer.waelchi@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (88, 'Arlo Howe', 'roob.marianna@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (89, 'Adell Kling III', 'zbode@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (90, 'Xavier DuBuque', 'wklein@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (91, 'Verna Terry I', 'sanford.lloyd@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (92, 'Jalyn Herman DVM', 'sfriesen@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (93, 'Icie Kreiger', 'bechtelar.jackson@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (94, 'Lacey Wintheiser', 'rodger.armstrong@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (95, 'Austyn Bahringer', 'josiane.hagenes@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (96, 'Prof. Gustave Harris I', 'kautzer.mara@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (97, 'Miss Haylee Veum Sr.', 'kris.farrell@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (98, 'Darian Stehr', 'jeremie66@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (99, 'Bernadine Mann PhD', 'myah.mann@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (100, 'Jazlyn Buckridge', 'kacie.waelchi@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (101, 'Roberta Wolf', 'sporer.elna@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (102, 'Nicholaus Larkin', 'rroberts@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (103, 'Korbin Konopelski IV', 'lbalistreri@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (104, 'Kenya Hammes', 'gutkowski.alba@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (105, 'Ms. Ruthe Gislason DVM', 'rwolff@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (106, 'Prof. Alba Hodkiewicz V', 'stiedemann.lelah@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (107, 'Amber Mosciski', 'qsanford@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (108, 'Prof. Porter Hartmann III', 'utowne@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (109, 'Rolando Gaylord', 'ethelyn.simonis@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (110, 'Kolby Rodriguez', 'crice@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (111, 'Carole Kutch', 'dpredovic@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (112, 'Lou Sipes', 'dave.turcotte@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (113, 'Javon Barton', 'tressa32@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (114, 'Onie Halvorson Sr.', 'fhudson@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (115, 'Dolores Ullrich', 'otilia.cassin@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (116, 'Miss Dejah Luettgen', 'bernhard99@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (117, 'Rodrigo Stark', 'kihn.marvin@example.org', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (118, 'Casandra Grimes V', 'price.ambrose@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (119, 'Judson Kuhic', 'kaitlyn.mraz@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (120, 'Prof. Benjamin Pouros', 'isabell12@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (121, 'Arnold Mills', 'kaycee07@example.com', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');
INSERT INTO `customers` VALUES (122, 'Paris Thompson', 'kilback.miller@example.net', '08179730808', 'Bantul Yogyakarta', '53089f9a4be86ec8d9e4378c315419ff.gif', 'Toko Indonesia', '22335521254452', '94585855855', 'DANAMON', 'YOGYAKARTA', 'BANTUL', '2021-09-07 07:55:21', '2021-09-07 07:55:21');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exprience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (3, 'Nikolas Lowe', 'randi.gutmann@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (4, 'Deon Tillman', 'ledner.mazie@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (5, 'Dr. Demond Lemke V', 'ncremin@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (6, 'Raymond Kuhlman', 'reinger.tia@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (7, 'Rollin Gottlieb I', 'anna22@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (8, 'Dillon Rath', 'verona.schumm@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (9, 'Rosalinda Gislason', 'cremin.orlando@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (10, 'Don Kilback', 'xheller@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (11, 'Haris Rifai', 'harisrifai@anggunkreasi.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '9500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (12, 'Prof. Flavio Shields', 'paul00@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (13, 'Dr. Dax Bartoletti I', 'dessie34@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (14, 'Helen Rippin', 'clemmie.huels@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (15, 'Brain Glover', 'bud.blanda@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (16, 'Arjun Hackett IV', 'elton.trantow@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (17, 'Sammie Berge', 'nicolas.beaulah@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (18, 'Flavio Breitenberg', 'xcarroll@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (19, 'Prof. Edd Hand MD', 'eileen21@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (20, 'Cecelia Weimann', 'qhickle@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (21, 'Norval Lesch', 'mohr.antwan@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (22, 'Lily Shanahan', 'jena.cassin@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (23, 'Lupe Smitham', 'vandervort.blanche@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (24, 'Ludwig Hettinger', 'alisa.macejkovic@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (25, 'Retha Romaguera IV', 'fermin.ratke@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '7500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (26, 'Jovany Pouros', 'oaltenwerth@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (27, 'Asia Kassulke II', 'casey65@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (28, 'Myah Haag', 'mathew.schamberger@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (29, 'Erica Yost', 'wjacobson@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (30, 'Marjolaine Reichert', 'janae23@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (31, 'Bette Volkman', 'lenny.mante@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (32, 'Janiya Rice', 'theodora74@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (33, 'Kaela Raynor IV', 'jadyn.little@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (34, 'Keenan Connelly', 'tamia.jacobson@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (35, 'Caleb Reynolds', 'lowell05@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (36, 'Clyde Sanford', 'arnoldo.mante@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (37, 'Layne Sanford II', 'effertz.darlene@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (38, 'Prof. Travon Weissnat IV', 'dangelo.cummings@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (39, 'Dr. Toni Casper', 'earlene.tremblay@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (40, 'Claire Kilback', 'fstanton@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (41, 'Dr. Narciso Feeney PhD', 'michael.langworth@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (42, 'Susan Hauck', 'eloy.bauch@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '12500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (43, 'Mitchel Padberg', 'matt03@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (44, 'Prof. Danny Beahan MD', 'breana96@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (45, 'Mrs. Amelia Lebsack PhD', 'roberta.marvin@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (46, 'Aidan Bogisich', 'kenneth27@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (47, 'Dalton Roberts', 'dickens.mckenna@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (48, 'Dr. Celia Feest', 'cwintheiser@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (49, 'Prof. David Barton', 'ffunk@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (50, 'Terrell Klocko IV', 'lernser@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (51, 'Ivy Kunze', 'ekirlin@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (52, 'Jody Bashirian IV', 'xzieme@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (53, 'Dr. Priscilla Rath III', 'bryce33@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (54, 'Melba Hills IV', 'kweimann@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (55, 'Mr. Lukas Kuhn', 'chadrick99@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (56, 'Nasir Gerhold', 'ischamberger@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (57, 'Cyrus Sawayn', 'bspencer@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (58, 'Prof. Louisa Gottlieb I', 'reggie48@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (59, 'Mr. Nasir Conroy', 'leanna88@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (60, 'Donnell Collins', 'koss.dedric@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (61, 'Jaylen Emmerich IV', 'lexi29@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (62, 'Hollie Murray', 'gregory.larkin@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (63, 'Kamron Schumm Sr.', 'qwehner@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (64, 'Mr. Keeley Tillman DDS', 'susie10@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (65, 'Maegan Sauer', 'laverne.lueilwitz@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (66, 'Cathy Jacobi', 'chad.krajcik@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (67, 'Jennings Botsford', 'alena.schamberger@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (68, 'Mrs. Agnes Murray', 'dgerlach@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (69, 'Prof. Christine Bogan MD', 'ywisozk@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (70, 'Grace Rowe', 'vdoyle@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (71, 'Carroll Zulauf', 'lemke.elenora@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (72, 'Dr. Jaleel Ziemann DDS', 'aturcotte@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (73, 'Verlie Walker', 'grady.precious@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (74, 'Mrs. Tamara Parisian DDS', 'kiera.langworth@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (75, 'Favian Bartoletti', 'rebeka.marks@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (76, 'Mr. Christop Osinski', 'mante.brandyn@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (77, 'Prof. Jayme Hickle PhD', 'mkoss@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (78, 'Sheridan Lynch', 'vebert@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (79, 'Prof. Alexzander Senger', 'noemi.runte@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (80, 'Leanna Marvin I', 'ebony81@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (81, 'Lue Mante', 'walker.aglae@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (82, 'Autumn Klocko DDS', 'sylvester.hagenes@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (83, 'Mrs. Harmony Jerde DDS', 'sarai66@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (84, 'Arjun Kautzer', 'sam.cummings@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (85, 'Grant Schneider Sr.', 'pjerde@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (86, 'Ms. Della Green Jr.', 'eliezer.waelchi@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (87, 'Arlo Howe', 'roob.marianna@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (88, 'Adell Kling III', 'zbode@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (89, 'Xavier DuBuque', 'wklein@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (90, 'Verna Terry I', 'sanford.lloyd@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (91, 'Jalyn Herman DVM', 'sfriesen@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (92, 'Icie Kreiger', 'bechtelar.jackson@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (93, 'Lacey Wintheiser', 'rodger.armstrong@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (94, 'Austyn Bahringer', 'josiane.hagenes@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (95, 'Prof. Gustave Harris I', 'kautzer.mara@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (96, 'Miss Haylee Veum Sr.', 'kris.farrell@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (97, 'Darian Stehr', 'jeremie66@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (98, 'Bernadine Mann PhD', 'myah.mann@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (99, 'Jazlyn Buckridge', 'kacie.waelchi@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (100, 'Roberta Wolf', 'sporer.elna@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (101, 'Nicholaus Larkin', 'rroberts@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (102, 'Korbin Konopelski IV', 'lbalistreri@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (103, 'Kenya Hammes', 'gutkowski.alba@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (104, 'Ms. Ruthe Gislason DVM', 'rwolff@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (105, 'Prof. Alba Hodkiewicz V', 'stiedemann.lelah@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (106, 'Amber Mosciski', 'qsanford@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (107, 'Prof. Porter Hartmann III', 'utowne@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (108, 'Rolando Gaylord', 'ethelyn.simonis@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (109, 'Kolby Rodriguez', 'crice@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (110, 'Carole Kutch', 'dpredovic@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (111, 'Lou Sipes', 'dave.turcotte@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (112, 'Javon Barton', 'tressa32@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (113, 'Onie Halvorson Sr.', 'fhudson@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (114, 'Dolores Ullrich', 'otilia.cassin@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (115, 'Miss Dejah Luettgen', 'bernhard99@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (116, 'Rodrigo Stark', 'kihn.marvin@example.org', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (117, 'Casandra Grimes V', 'price.ambrose@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (118, 'Judson Kuhic', 'kaitlyn.mraz@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (119, 'Prof. Benjamin Pouros', 'isabell12@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (120, 'Arnold Mills', 'kaycee07@example.com', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');
INSERT INTO `employees` VALUES (121, 'Paris Thompson', 'kilback.miller@example.net', '2323445325342', 'Bantul Yogyakarta', '', '2', '', '2500000', '1', 'yogyakarta', '2021-09-07 12:49:06', '2021-09-07 12:49:06');

-- ----------------------------
-- Table structure for expenses
-- ----------------------------
DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of expenses
-- ----------------------------
INSERT INTO `expenses` VALUES (1, 'Buy Water', '20000', 'September', '2021', '07-09-21', '2021-09-07 04:13:07', '2021-09-07 04:13:07');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_12_10_155557_create_employees_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_12_12_085832_create_customers_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_12_13_132254_create_suppliers_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_12_13_134145_create_salaries_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_12_15_035923_create_pay_salaries_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_12_15_050607_create_categories_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_12_15_054603_create_products_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_12_16_141820_create_expenses_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_12_16_201412_create_attdances_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_12_23_064253_create_settings_table', 1);
INSERT INTO `migrations` VALUES (14, '2020_12_25_185335_create_orders_table', 1);
INSERT INTO `migrations` VALUES (15, '2020_12_25_185818_create_orderdetails_table', 1);

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitcost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES (1, 1, 1, '23', '12000', '333960', NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `due` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 12, '07-09-21', 'success', '23', '276,000.00', '57,960.00', '333,960.00', 'Due', '400000', '232', NULL, NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_salaries
-- ----------------------------
DROP TABLE IF EXISTS `pay_salaries`;
CREATE TABLE `pay_salaries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employeee_id` bigint(20) NOT NULL,
  `salary_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `advance_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `sup_id` bigint(20) NOT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_garage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Djie Sam Soe', 3, 1, '234', '2222', '234', '77aaba4c0916ef76ad4b412d0932fcc6.png', '2021-09-07', '2021-10-07', '9500', '12000', '2021-09-07 08:05:12', '2021-09-07 08:05:12');

-- ----------------------------
-- Table structure for salaries
-- ----------------------------
DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) NOT NULL,
  `month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `advance_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'Anggun Kreasi', 'Bantul YK', 'info@anggunkreasi.com', '0274-225522', '58cb335873d39d2d29565bf665515b11.png', 'Yogyakarta', 'Indonesia', '55752', '2021-09-07 12:39:36', '2021-09-07 05:42:13');

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shope_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `account_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 'Haris Rifai', 'harisrifai@anggunkreasi.com', '08179730808', 'Bantul Yogyakarta', 'd8c1852e1532bacdda00d0f26c8641ff.gif', 'Toko Lima Supllier', '231', '321233222222', 'BCA', 'Bantul', '2', 'Candidasa', '2021-09-07 08:00:04', '2021-09-07 08:00:04');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Shannon Stokes', 'bfritsch@example.net', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zwaQrHnZJc', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (2, 'Salvador Bahringer Sr.', 'dibbert.mae@example.com', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DDP2Nx44CB', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (3, 'Nikolas Lowe', 'randi.gutmann@example.net', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4RW1d1q6OE', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (4, 'Deon Tillman', 'ledner.mazie@example.com', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FCb8GwPCvU', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (5, 'Dr. Demond Lemke V', 'ncremin@example.com', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YDtlhWGyu8', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (6, 'Raymond Kuhlman', 'reinger.tia@example.net', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c5A6owRrmX', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (7, 'Rollin Gottlieb I', 'anna22@example.org', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1scYXyPoWz', '2021-09-07 02:03:30', '2021-09-07 02:03:30');
INSERT INTO `users` VALUES (8, 'Dillon Rath', 'verona.schumm@example.net', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'anBfjkICxo', '2021-09-07 02:03:31', '2021-09-07 02:03:31');
INSERT INTO `users` VALUES (9, 'Rosalinda Gislason', 'cremin.orlando@example.net', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uO9oiPf9tQ', '2021-09-07 02:03:31', '2021-09-07 02:03:31');
INSERT INTO `users` VALUES (10, 'Don Kilback', 'xheller@example.com', '2021-09-07 02:03:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mdIK2yZH0h', '2021-09-07 02:03:31', '2021-09-07 02:03:31');
INSERT INTO `users` VALUES (11, 'Haris Rifai', 'harisrifai@anggunkreasi.com', NULL, '$2y$10$g3BYsVfds110wAUqtyIYj.mjdeevltt3Vr3NRHaXGl10N2RORTB/a', NULL, '2021-09-07 02:24:23', '2021-09-07 02:24:23');
INSERT INTO `users` VALUES (12, 'Prof. Flavio Shields', 'paul00@example.org', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZXLVpwjRNcECk0oWzZCLwkXCM6ALx0UW1IYPbOR68uU9tExLJ8r89Shwm1chXSj68rvrjkBkXIjPPXscnQuRRQNNiL60uzqjAije', '2021-09-07 05:44:27', '2021-09-07 05:44:27');
INSERT INTO `users` VALUES (13, 'Dr. Dax Bartoletti I', 'dessie34@example.org', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'piJW8CND6i6ZhX3ezezBNTIVg8hx01dYkAq9UNiFrHfPwXG1dzKZeiwoU06EO32ouE6qr95kXTMzKVMVrdgulBpOhZhSsolrUIeh', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (14, 'Helen Rippin', 'clemmie.huels@example.com', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r9B2ZqebhxoPwsUF8uXBuqIQM9uPYIa1ojCgy6hrcobZ2GDsHQhbx2PbiyNTxFlR0FXseAjLAsiIBEG8sNjjUsDoql94o4BHLPYY', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (15, 'Brain Glover', 'bud.blanda@example.org', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r9NskZVTNITfrirpGjMLHwG8A7hucvakXgtrnYxeEd36NMBkKDTZl3d9VABzftjBARotOTtpfwJZNZ55ZZoORJbZpfEwcwuSEnlM', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (16, 'Arjun Hackett IV', 'elton.trantow@example.net', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c3gZ7oEQ7Uy7Y3scLpaNn6ROmocjAk2YEG38Bo9GfSycwVoHdbBHiSJBqJiwOf15ytamwWN7lo1tz3TepXs6nKL3TJgIIO1CNa5y', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (17, 'Sammie Berge', 'nicolas.beaulah@example.net', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FkqXS3xC7pdXcq0UxKZN9k3iP9cMPOOhdHIvxno2CvNIJyg4ixBV9OPntXWg3siuG5515aK0CJ34xKne95rMdixSMMaepLmk6mTT', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (18, 'Flavio Breitenberg', 'xcarroll@example.net', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bzRM8LlKNuDfPWQNnPx1uKgsGgbekR9g0YOYqOB1OsP0wvb3K4eVuhtsyhGwLXLG5rrdXLrpZ0GyDK7sjs3AIX0II9RMvcRdMdnq', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (19, 'Prof. Edd Hand MD', 'eileen21@example.org', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kxDLkerV5SOshuyO825pikoS4hWX6gxWmWFShzrGpcZZsjatPgOFDzZ5UZolBNnKaXxnI0ZXHgKg6omsA7i2COLvnxRaDbKSFIFi', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (20, 'Cecelia Weimann', 'qhickle@example.net', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M6gwUqHAUXBzyYjHqZ3qIjixPdfONo2v4h8dk4RZTchAWbrOBN6sx2E90yEpTY1c9BQH3Z3nwMUPm46dgLYb687neJaM3uPDWO8a', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (21, 'Norval Lesch', 'mohr.antwan@example.com', '2021-09-07 05:44:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x5ZON4j26PyZd9XBSF8X5EZY7h92WCYaBDg6XsPANtU1niZZROIpw8vWUxgVmW23ZiU1s11oLUfI5MIcD7mPKZH8JfP5k9CiPmoZ', '2021-09-07 05:44:28', '2021-09-07 05:44:28');
INSERT INTO `users` VALUES (22, 'Lily Shanahan', 'jena.cassin@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lhy6yQIAQ2UI1eWvjDVcpv6pinkX8Bc4VW77h5JZGu5tUPhPZ2lr2513CQp81QdiOj27MncGwBD0UOhDcDfIWbITNcv7m2uOKtsr', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (23, 'Lupe Smitham', 'vandervort.blanche@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6lcnB20Iuw3d6U4VQYWVVn40So3ea3vln1sffvBt9hOFl041bvPxoUgCsT2UAzzOHWuCriddt5pGgrpjEAfWDlnTREYyENYx9tGp', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (24, 'Ludwig Hettinger', 'alisa.macejkovic@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sSMHlW9PE7Uld5t3JKiKqtXBaYYiZYK89WQ67f7bVzyfOqfNCxqLfuEHrG1Cr75dLJcJgaf31HQfkoR2dLpeTvZj77BfRCNb5t9q', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (25, 'Retha Romaguera IV', 'fermin.ratke@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qTrOR89pPpM5MviUBmrFNlcDiQRqHhXueJ4VoET0lqwSj1jbDAcgz2L6XfSQHK8nYScZqlGndIjkkJMKhroCOuUm1dtHlb5fBKKN', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (26, 'Jovany Pouros', 'oaltenwerth@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A356KvUnQa7uD3YTpQW1x8cq9QngXgH6EB9LwvGccuxnRE9AHJ2vDpqKWXin38ItMA3neqUXvamSHMvWojvxonYqzOgSRNVhzsHj', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (27, 'Asia Kassulke II', 'casey65@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I2K1vOK2h3KEtydc96as5tjjvxDj2vRKtqaq1UwNt8VpEKhuFr7wHH6FKqcSrX1bHaHjwfODqrsEgxdPyKBCVn7IRcen0BdEaJQZ', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (28, 'Myah Haag', 'mathew.schamberger@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AZBQj0N8usqDFTMjkohcigPSyfmTwoln2RPWcKjuZQyo2II32m4ifSwoWyJ6mXKzy83dy3KfBmpaCBY2jXHqKhS7sbLom8PK8boc', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (29, 'Erica Yost', 'wjacobson@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2DgILXroVhq84GNprelxP2i5U7gakpHa3lVv4RUcJn0tj1sPv0KbhZAsDsWBC3ivWXJAeg1LhyWIaEEv2ns6YRfJlXv7mm4oNok8', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (30, 'Marjolaine Reichert', 'janae23@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5TFPmrTvnAGgf0zg96qnZb1FxD3xbxydwOh7osFEOxNyBpyIhNe2rCJGEgrM4TurIwsSjrMl7sD8IgER1NcyzckunCbotuLMrcTj', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (31, 'Bette Volkman', 'lenny.mante@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D2WwBfayGXqJ6ELwKTpFPxkLvl5dVCyEPtPnsW1FEl3l2w55PdututzaDSjwiWlr8pSaSs0F5CYOntYuk9QpscfXYoPpqLPBQ0xG', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (32, 'Janiya Rice', 'theodora74@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vMt6c9xanpPJUgtEOsOQk3zOb1KlqrxMx76PqATf9LVo2klevHx0znEsIHyQRsNNxV7yFIew5PXm3FWQ8gKfsbqFYYZsSaiBdnbk', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (33, 'Kaela Raynor IV', 'jadyn.little@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dOOPtyegYYUsrqyrNpQTQ1Ef3UdYD8czYOOA79wj4WWjXr4Ay04xkTgvkxm1s6xzSW6P0RMd6sgQ1Jn7IztHZEh8Z1MN5Bf7ZIVL', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (34, 'Keenan Connelly', 'tamia.jacobson@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4fFXq2xYHWWxx0h7VtF0dbEbkVE4LFHcLZ7WKtV8nbErlB5UUMHzWPWAIEwvEXkBHfWc1pZVWmGytOaNnbsRJUojrzzT0OYKb8KB', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (35, 'Caleb Reynolds', 'lowell05@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vbVU1wzilep4mSmiN0Fqsw5nK6aDACJaSegG2gwoFsuDF6WtYjWb7EXpp7ZVs3KEagBybeQipSyD2jDLSJf316MMnhuuJsVsD2Dw', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (36, 'Clyde Sanford', 'arnoldo.mante@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'REDaEkZnUmOtx3giGYRgfnaOieZebzvHxKtkJVVd0nQ9CpoZ5qCl61pwq2yFAV1dYOyu2KiL8peyGyuS9ULSCzBsfLdmlXnx28Yd', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (37, 'Layne Sanford II', 'effertz.darlene@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bn89UUOzZgwtXUJHKoknoBx1sfkIUVSqu0yLJewz3JIiVFEpVzPvMCLLp6wt2XnaDCutBF60bDDRvt5GM70osKsJ8sMhJS3e97Tq', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (38, 'Prof. Travon Weissnat IV', 'dangelo.cummings@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uBXeJudMyreP4UbHuELQ3mMUjLbBgHTK8UhXRbxvKP0Vjo686tNk7vOxTlbCrLI0rVgxHIujCVfSaw1jkrDNr7Qu5KqoFDmd3mIV', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (39, 'Dr. Toni Casper', 'earlene.tremblay@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ECsZFvVqUKgIYJLrq0396XgEuRSafz3BHibsK9zW7RcOZRHTxAVU2JT5CwuBfCT5SpSgZubsiY7Fzh0fB7Zy7nNXVSJn3Dw3JEia', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (40, 'Claire Kilback', 'fstanton@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2iTybC1KeXkduGSx4BwV2ZTV1XSATj97xBGfadOo0jq3KvmiZGYO0fMKkSpIhuQM5QHlmLCBTCMX5AggYvSfB4ayp7UD9YOr19cf', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (41, 'Dr. Narciso Feeney PhD', 'michael.langworth@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nKi5HgA0fFv91Ro4aIlz2ewkhvr1t7EDIbqJwBjyyJmDRNreoclI1yXqhIHI0LGho8VQA8E0l9tfb6dHjTjmkRpsYbtsx1yPjr8z', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (42, 'Susan Hauck', 'eloy.bauch@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tRtMgNRkcIXjiGWfuGTNxrV1gda5PArXvi40rTpEfVWWZpVeUMB2l0oFxVRPw2zsSg3wVhi9HjWxVg1grqnipusSZuEYFfPHkb1H', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (43, 'Mitchel Padberg', 'matt03@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NVuZt3rucFkHsfFqbPzsknCwME6WFOwPMm1SKjVXdMifIWpJrjS5QcRTe83MIB8GYsVUUO7De8ePWTHGaDMQAI9omORssLqBu3KH', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (44, 'Prof. Danny Beahan MD', 'breana96@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vPEKbRNeMYSUHnT1iYVZMLPZG8JWR6pXBO1NqvoV848sCu9oEOy7LP5lWmgRSfvb1gMuKTOOYBoMgEvsiqqbfXyieCBToupxR3W3', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (45, 'Mrs. Amelia Lebsack PhD', 'roberta.marvin@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bLMoQG2wpfBolRgUkkBb7CuwKku9E3uqgsHUMO1neXUbf7zkSVcK9K6Rd4yWLUu1oTXR0mLTTCdsg4IylAfdTthkysqEORFHGWEL', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (46, 'Aidan Bogisich', 'kenneth27@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xhjo7HQLv66RuQMBmdPzVtDUBvxLVSIm4NyFCk3kzEJjDAy2xeTuOylzBxScbJtpUXklom38EuWTTxnxhcilWXTmb26Z05Lx0VBb', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (47, 'Dalton Roberts', 'dickens.mckenna@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dLpOAq9cnpxk7gplARtN9UJyp2M0x37DP2yqHzkRO5uT7AV5UtLqIgMzAL2MEHVKkCUhGvvbh49SAahvR6IHbwcmrh614wiqS6Zr', '2021-09-07 05:44:51', '2021-09-07 05:44:51');
INSERT INTO `users` VALUES (48, 'Dr. Celia Feest', 'cwintheiser@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2iOUBaeYtxsBVyDDzvvdCKnrtHzNAFGRe5OcVUGloCyHtaFlTTHmTGghl4lCS4J8xFOc8idTI9zu92dtOGq5yuMrxZi6Eqtw7GpH', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (49, 'Prof. David Barton', 'ffunk@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dAXPgQPrC6Y5LwmnkwFp6l0Y5VJ0o5xUgpaloMBGrR8p3IJ41StKYlbkgkL5rcNEfv2nhL7D8o1iMPYT54FVHGQYIe1ZseFKmI17', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (50, 'Terrell Klocko IV', 'lernser@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vs0WuGALC8noHHbBfLa0mzCwxtSEofvH5joWKD7EwXQ2PdEniZ8rNymUbxeTQSmy0SYB9MkqISrGlS6m644Fh07miIQHLrKejdOv', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (51, 'Ivy Kunze', 'ekirlin@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'roFVFS8ALqIIOUeZWvWGrGuSKc2z6xsqafinUvcUnk7ssOCCUhhuUtrtRU7UeVWhHG0cn8tNs7XLC4VEF9hcxwmHLF2uZ51eMPgM', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (52, 'Jody Bashirian IV', 'xzieme@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y0exDbVgXrUdqf1MBqU0YlDDGRBkiYNT5m4EgDfe2GQCYNppMMeRCVStlokT8IDmscwy61OZq8ikpunp1NOnJF9SiS2UTdnr43ie', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (53, 'Dr. Priscilla Rath III', 'bryce33@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DMv9dLRGra1ugiks2ClX6oAAPFwfm7yXMELB33g0cYUA78LctR04x6SSecygmmFoJb1T2BzBOJkBHPUr5miboSyCS0vo40QRlODq', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (54, 'Melba Hills IV', 'kweimann@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cR2xOiS0oWmqRt73SzUIY3j4eilHVFEUqNdTwk0MXUEuQwW5ku3Fm8l0X0qZVqpx2cVKV1Yvhd2CEFuX8e2yiCantCsCw1lfYAg3', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (55, 'Mr. Lukas Kuhn', 'chadrick99@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mhhOUc9wagO6BidxjPVm4yDZpA9TQsIlRBcwFa7IPfRUFjYVz61o1OEJXHw7bQcW8nQ3GHaT7qQaLk0vBVkjsblFbbbXMH719ob2', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (56, 'Nasir Gerhold', 'ischamberger@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rtVWLK2kfSo6Nz117LlzkA6zmJwDwIhRVNfBGqvf399e0soDlQg9Zv5JYNBpyYUx0ty7JvMz8mpYaSoi19p1NZ51TUDb5pO7prYV', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (57, 'Cyrus Sawayn', 'bspencer@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y22KwxXHTKRLbrxf81ho3jn74s4bxJKAAYoTJ9zRLw1hsb6uUtNmYwq71a54zL5gSxjakl5ws7eo2dtH5aMq9RJtIiesj3aEVZnD', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (58, 'Prof. Louisa Gottlieb I', 'reggie48@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Ul10DNVGycC06eYv9EtDwdxyyovBrvvgu3DJbyAdgKfx2XYKwejLgbyJbFwGiKjKN5foPkd5uMyhGf7vHMblLH1bm93H0B6txFs', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (59, 'Mr. Nasir Conroy', 'leanna88@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dpnjrP0zZW9BVHfVGflyOp1U3I9QRujXI4Q64cDQlWNSezwxj96e7bRfTP6GPjRA60ZFifRQz05u2STtV1JP6BiVsBSSMW2RBzLM', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (60, 'Donnell Collins', 'koss.dedric@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JaCW6NFevDYMgqILS7BVbXRQeFzzyaBYB2u0hjGv0hdaf2Efta6QhLsIhDTwkmUWnUqvxA4pwAJEtapy6kBq5zcGaRuML5mygjRD', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (61, 'Jaylen Emmerich IV', 'lexi29@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sLJnWRzvR28N0v52jyZaALLmHsyciLIQ4xNpLIR10EuKXLr9qPsYjrLjAOLsBefrzHwZk78q5nkc4JjiUeKCoCZgIr03i17iJfoD', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (62, 'Hollie Murray', 'gregory.larkin@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pcmc7Uo8z8YUG6llUoezp5NMQ8j34w9PV84CJYBXkfCvzNOhtJIOmUAUsvE2ivotvLYaSdoHVhA98qchk9DUzs4b8oeuZDYskxvE', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (63, 'Kamron Schumm Sr.', 'qwehner@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KKi2GMHZlHIw0ut4LUBvqZoKgsB3CtXr6MDwmFG4F4OmjHqwxvBpZvSxuE7LvyMWlxrX5LXSN2i5jwGBxqLPxEu1YJbFNpTWBWhM', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (64, 'Mr. Keeley Tillman DDS', 'susie10@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jJCAy4D9S16MEbMu90mDyCGJhRIHTTFxmdWRKALKu1W6W1Tvspx9xMrfYHOCxXHSawf8xS994m63vpdA1uwbAedMndpVJ3HXq0Eg', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (65, 'Maegan Sauer', 'laverne.lueilwitz@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yBlRULGseKnFQPZp7Myo5DwbS9ObedhoFQmwXTipCdCAlY2hdZNwKkb2N9c7R9MOoxgdruiR1bXaBEDyPni6NSX7AawK1qulCJDY', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (66, 'Cathy Jacobi', 'chad.krajcik@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jupgnk0X32PCyI9kJ9d6OFzwqQfFF4Yf70l1CQGjAMd2VwoA7MusAFN1axxMgbgMADCPkPW1TePMl5AcssIFxa93iNQU0lvsyMYz', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (67, 'Jennings Botsford', 'alena.schamberger@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2JoC6FI7Jad33FgSy6tsa1gUwBIMUv5jg0yzMwfk3ovknKhm37tHfVkOstQyszpCFMm1IroMGiNc3INdlDn2Txu1dw6qhqbJ50w8', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (68, 'Mrs. Agnes Murray', 'dgerlach@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sFp8MXnHUi2Li6jLbTgA6WFknIs0apKSlyZQBi0525fQHTkmn3zU4JcxuDYl5uuyJnV5pkCpsfSNcGw4TCYDWyHG6RCJUWKVicRV', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (69, 'Prof. Christine Bogan MD', 'ywisozk@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FRszjlmPgW8NI13MaigcRnGYxoogHxSotgcMWPyvOaN8jyIjIsTtchaOnFVwOQNwCKZoFN1V0yv52THCKjgTxUnCoDnMYVJigqpO', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (70, 'Grace Rowe', 'vdoyle@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1WLEZjTaiW2JqKJzFRBe4X1QtM0UJiYKHjBQq4Mp60Wn7c5t2UDZBEYxKAKg1xiHf9U9fwYyN5OCRToTtvhQTU2FDgAmRHokVG4Q', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (71, 'Carroll Zulauf', 'lemke.elenora@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CFgWqTYFbUTyM7L8W53P6bRUmqmqSFrhD7o4dd5Du26lUc1rHX3Ie5RWw6MaH3wgcl5KSW5omdzjBCkVtZ2NZKjYrsW6wII7UqNj', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (72, 'Dr. Jaleel Ziemann DDS', 'aturcotte@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2TtiaywIin0zS1rWYzy6MwOVMq40Qzrs2OxFUjEqNQ72V4TEtAGTg0nQZpc0D8bpgwseMEHmyoeEBcUFEyUBPHDHZQR1ySCVNKVm', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (73, 'Verlie Walker', 'grady.precious@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CwkU2U8A4tDsBgfbIarD8KSfjhzXgURjsvd6hFURYYs5kXoob4XMUPSepAQGWSQiiaKHZxgIYscQ6yxpArODo7OnWJE616pXhPFF', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (74, 'Mrs. Tamara Parisian DDS', 'kiera.langworth@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nF8yZMwMvNkDVbDJeKSezjeKuFbCqfgG1afPmunbNfSABbQNZqQd5OiFGpAJEZAQLOOY2bPJzHamPclqKKCPPMyMtvAW5vSzmh5c', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (75, 'Favian Bartoletti', 'rebeka.marks@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IYkuZXYPoTe1dKPouZNhsX6MMUiY6KyXfC61WYDSdK853Lioa7BGWi5On6HGP5ejWs0qq2XACyoUXSdDnv8CE48qZwIamFMilXbE', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (76, 'Mr. Christop Osinski', 'mante.brandyn@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NUhSitxMdfRJ7RtFyETeLQQwrMJlrLAR82Lpg15yVUN33PMNKppK3adyh3lGaPF8IcswLEeQqFv3t44wk8LSlFOom8dVbGdanyZN', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (77, 'Prof. Jayme Hickle PhD', 'mkoss@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y1xrvuliTmtkGcKoDF2QIyVvepu13mdsPK0TQcXYg1R7zftjgx1W5K3W6uHnyBKUuVb4YSLDN8tKMjMqlSX5b40jOz12eSbWGPHK', '2021-09-07 05:44:52', '2021-09-07 05:44:52');
INSERT INTO `users` VALUES (78, 'Sheridan Lynch', 'vebert@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dsVpGst6F2Ix7DR8U2XncmLs12prtmkE9AARfQKkU4gMQxudCkRnASJ6Af7bRvbIJtpMtgLTztJUHXBuXzoE38GbsFyUGl3iS5jY', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (79, 'Prof. Alexzander Senger', 'noemi.runte@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fEGVYmlGkEKsTJE3t5rZ61TtweGXib2Q0OmAqvkGiDW6c0RNIJL2426dnLDKnsvFC1gdEpypznZlEblcP7I5e6wmYJCHmrSGPYrk', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (80, 'Leanna Marvin I', 'ebony81@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5hk5ZEPTscPmk3iJsv6eAI98CC9oiVEZZFqqVzkES6ttUvLOj01iepuGj4ScYsoxKHFyCcC5OV7H2FgJlIUuzpW7gSOAucnHCtHL', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (81, 'Lue Mante', 'walker.aglae@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zXSzTEAdNPcNV87zIfOLPF01oag0V4hL3PCbMkesq8HvUJdUGZf1pg4LhmiNazZj22yGtmhrtwSjiVJSzv4S9DDzsjBoyOBWucgN', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (82, 'Autumn Klocko DDS', 'sylvester.hagenes@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cY9oleIbiIuC6bjNHBh21RHAjSEpwgMr71l0b18kA0btGOWDcde76ecjv8OQ7k4wIf8VFDXgrxhET2oXpwlN1wxyNS5sO5LC8Pn0', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (83, 'Mrs. Harmony Jerde DDS', 'sarai66@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RKiRSvLZf39XrSVmrsDDM0tDHBcK9jVliLZZrUbMdBhNoTK9GGobCVGNLGhSxEhQ9QwJHsLfzyrMno5PyyKikOTcpDzbg5L3V2Fe', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (84, 'Arjun Kautzer', 'sam.cummings@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pfboa4twatESG4bEp7yyFFjyDYHhONWqxdJqme6DpLqc64qmRF2qg5oa2ttnvSTpaTegU83oxE7d0BNgcyHkP6xo39ljZHuTVQzm', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (85, 'Grant Schneider Sr.', 'pjerde@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qjH0lWYg19DxNyOTG8tdfM938BxZTl9DQfCHtCuwqDgOBderL990BNJIFtvMRgNadWayrx6qQWuWRIRTEIYSmZZMpM7VieGZBp3n', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (86, 'Ms. Della Green Jr.', 'eliezer.waelchi@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fPT0dLFPQ2xbFMdClZToUaCRP65NAYU6UCVCZh6oJtcxVy4O503w0xuyUpWBbuGycOM4FwJB5muxaPfdqs6oONg1qpOSdP7WJOjB', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (87, 'Arlo Howe', 'roob.marianna@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gyfjsgO5jJdHk1hmpCHP1Mo4iAtSUMY2dWkJv6hfrv6qPlQb4emxippS0iB864misxz9J07E0mTxAI1xGdWNurmOOOTnvSes3DiL', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (88, 'Adell Kling III', 'zbode@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WqhP1r7lskwYCTQrnBVQJ1YjKxlVGRmBq66cZKoilrNr92zsfD77Weu0kb3f6xYlz19QiaYcBUyWORAdjEDT1DNUeTESrRqneCAg', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (89, 'Xavier DuBuque', 'wklein@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ccqTXnno6b0rbOoHrrfVJOx63ZwIZXYpwunehxaG8AhI6QthG0GpRBhN9ou4VkUj4XftHHpTapaahFohoHiMO6kwfRUOHidC7Fku', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (90, 'Verna Terry I', 'sanford.lloyd@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pz4znljyoneoeY7X4H6ZFQ98CeCFXcmHVO8xFT3XusKjjK53dXH3sj2XOKW1sLplMAy7MieF50XnEcAGb3R0va3zxVDZybXYelmM', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (91, 'Jalyn Herman DVM', 'sfriesen@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i581qMmzgA6br88SJ3tSgab9X8BbUqLAhIjzwoYDbln6fM1TflvPqH0FLsHZVeRINk1KvgWXdwpR2oPqJjQoMRGeQHuwOn2FwcY2', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (92, 'Icie Kreiger', 'bechtelar.jackson@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k1oXdvB8PqSli9e5BVaTuuWQDuyoBwll3ObKFKek0FIdXXQ30lwOQoL2eLkwK0GWEI40v0VVy0yhOLWgKh4ldBlBy34jjHZ6Ohlt', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (93, 'Lacey Wintheiser', 'rodger.armstrong@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jFj07js1mxas2tLynBou13szkJBaTRxxel9qvDVkmCCu60vwysjcPrJ9PxrTGkvOhqZyDTe9FIEMFLt2suIsTWTd4d21WcqPhAb8', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (94, 'Austyn Bahringer', 'josiane.hagenes@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AWF0gncHX2LpRtzzRub5MrOubpJr0r0ojzbOJxo7m57fJ0lQsTSAht04h0joD8PpAqNR8TLEXYAQ7AUPRi4CFwhwIiZ3D3B0krto', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (95, 'Prof. Gustave Harris I', 'kautzer.mara@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'agQGF7w84wyvIS03axQBgZVcVQGRxLDdLUqXgEagm0d4foFM04rSQdq1SO8vFHMJ7kJ9X0nFr4fwFrj7NHRmxiw34TyQpTQMsia7', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (96, 'Miss Haylee Veum Sr.', 'kris.farrell@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UzFEX4JTOkIVP1HFmFic5l4223o0ECrfI0W5fHNrFWTMarSdbqbD5RbXGA5pTBUl3kxIB870CunpCozkczvva42sH63WnHBKstv9', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (97, 'Darian Stehr', 'jeremie66@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2T7FFw0zyPcvhGSxNJEKVxiC7WCgXAeyOLZqaQE3rWUQIjxkAOKY7LVE3aBkdYMFTS6x0wmsdy9yVcyEs0fDSYWnQOQN2OZD1Qi3', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (98, 'Bernadine Mann PhD', 'myah.mann@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hwM2Od8ITW0u9nQeo7zdY3tsoSZRdi7SEloAsGboaSFnJv1dNVOYjBVJ5Gl8boc6H36UenSQHTO4lBrJSMQ9gT1FnmG24ud5Vsx2', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (99, 'Jazlyn Buckridge', 'kacie.waelchi@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aYPAX75KZ6YgnCaWaSO0ivDcMvcepGirt6GOvrslh0vj0rNLHP648zjtMudEfI7aYhrAWiWRxy5FkbQidI31stb63JUgkIx0jL2O', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (100, 'Roberta Wolf', 'sporer.elna@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IZjkNgxl8dOrStysFCnVVi8AwVUTt9m1qyPazDVuJMUupy0Fo4Jt5GeAbafLqXv8RNiSAjxgCM9kIUzaGPTWyeNq2FIuOplrHTEo', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (101, 'Nicholaus Larkin', 'rroberts@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '41nRiCrem4DVBY7YISZ7NddeuLonYPAjljcqrjGkId5SeTgiPkIqEgFmPtPloT59hygieGStkAL38fM9yq3pq3wZ0w1HVX5HPAWX', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (102, 'Korbin Konopelski IV', 'lbalistreri@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hP7brwISnNoecALL5RslXzkvlbylyih1op3sfyHq6X8ktB4oC97xbPWAaDo6MVODliWWS1OKkWigqT968hLzLWafGfMS2l0rffV3', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (103, 'Kenya Hammes', 'gutkowski.alba@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TDhHINrGEzGXdlXMqLyZqZt2KpQDBaTFnND7VTyz1ukWc21nU4XjZuYQb1uZ2lJIQSHr9HFc3vb9kcBik7F7ddX8CE65Ks1yztRb', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (104, 'Ms. Ruthe Gislason DVM', 'rwolff@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5ae62QVSTHGCVGoWmErOyhrT507ozQtdqqfFz4xGHOmppUXVtdbTEL5wtsohZszMXQJPGmuN5cIt8lgUBoqXd6NmNRbMznjfG9zX', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (105, 'Prof. Alba Hodkiewicz V', 'stiedemann.lelah@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mBdaC5cLOrZbYHhfn3sIiHXIMoTo82TvHen2bukou1kSq4nAkDXVZYNCMKGxjkrtya573jTHeFnb9SCejvEvXb9Rgo1LOIHO9e62', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (106, 'Amber Mosciski', 'qsanford@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tFX58w5iZB3fTB2RbhWUoyakALwwG8fw23BgtaEihlqQAmaKl4xdkYeaRwPFyDAp3TGy6mwvEo6ZVcQQfQEpcrGRfbarCT7Ajkmd', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (107, 'Prof. Porter Hartmann III', 'utowne@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QwVGJl8KuChWXesGOqniBbn8kbeNfn1e3LMGMg3Dw13uuCy0ovtbjnId6wbOkxwN4lzDD0WxozOevgYlpvSf85JZ0GqWqlJlfI1r', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (108, 'Rolando Gaylord', 'ethelyn.simonis@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'inLDxOAFDsol2BtRI7mSECNrx43fvpUcZWLjN20haR7ai9q0DLGIjhFY0wDUxCYU1Hp3yTA2FwMRE2ZzgCsgB7t5qs3jU5E9KTpx', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (109, 'Kolby Rodriguez', 'crice@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nrBPLbdlcjwnMj9nZ0lmH0cvKlCKE62GwgwlenlhmxC4Q4JTLss7lfYNU74Gpn9A40VKDcFmm8GpNXMzKxLjCn1FfiIQD3DXgHrK', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (110, 'Carole Kutch', 'dpredovic@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tlpkriePPP763fgHCByBoGldfiEiWd2fOONaqAUPjCmqaeQoeGetE9uWkNjwP3sbeNGvlTp5mzqQPyAENwEKTI4xQu1JEgAnBEN5', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (111, 'Lou Sipes', 'dave.turcotte@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sANYYtBhpz3m8LbwdlZhKiAFORGeGEyciZOjHmRAKQ4SYCv4U2yQoYl4kJZiZrvkVVYYtpxRQWtUc48fqdeOwhu0w6So3qZnvBry', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (112, 'Javon Barton', 'tressa32@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qZiOXHGM0judQwtwgvNKSGL1cUgXrTL8u50IaE9nhTjoN2GkqrNeMY2AcZDw8ZZYCoJ9RI4lqst3GnpP9skH5l0MpQ5mg6GtBFch', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (113, 'Onie Halvorson Sr.', 'fhudson@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'weBR6LNhNVuQ2QBK8e8MmApZFZwNxXzTfeaOzAfMMkGC1He2DceQLY3GrDc2299bUEKnZb6CdQutMSoi94f8h3zq7h5SFhPJs1kK', '2021-09-07 05:44:53', '2021-09-07 05:44:53');
INSERT INTO `users` VALUES (114, 'Dolores Ullrich', 'otilia.cassin@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dfFgBrfTXI6Dt7QxZDTRyAAInqo0kHX5XLxBvANFngNrBKUX5UkVCGYRVB5dzmso3DofwW6xJ2h4M5tRHSxArTD9GSVmtbNS1Trz', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (115, 'Miss Dejah Luettgen', 'bernhard99@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H9C8z0d93hz3lK3kM9g3WHl01tuN6xtY7Es63HZjNKNqUlUkagbBvZEShk38sbhjFzZGChPtENHruTE9g9mCTn4MhDrskLmuOJKt', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (116, 'Rodrigo Stark', 'kihn.marvin@example.org', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nzmX7NczZnfFYsctzIhXBAHBPG0OPtIlBLahUCDR0pj0tBFBbLv1V0xBYp0ZTgdWHca6mZ05Ktq6keu67iXNGmPDGXzBG4h9jh2X', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (117, 'Casandra Grimes V', 'price.ambrose@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nZMDRe1wBdWpQ1QylLMgctCaiVyZ0Y5dtOKgGsECLkGB4V5QNqwmqDw1ODRfy4VA7yPDCMFkvtNY5vqKUz3g00bT69wn6shWsc4L', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (118, 'Judson Kuhic', 'kaitlyn.mraz@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0DcE3tK8dANCqDhXGADywfZClUFIaBERwUx4YZCmqcHgpnOCi6ZCroNZctSkT6yQTItb5NnYB5We4a0FW42KBXKsLRFVb7NJWnpC', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (119, 'Prof. Benjamin Pouros', 'isabell12@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RYv9UkKmjeuJRFthk0ursdi2xXY7lRY8c8d94ZuXdwT0Ty9KTTDVuWMFhgOp8kWpA08vUiACQGEzJC5ooONAdwWnJOy1J9Kc9I8j', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (120, 'Arnold Mills', 'kaycee07@example.com', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AjpErH0PzXL4LJWOdfE7tBM9wyULjDZ8nimVc3zIpu2zwDSycaUpIf1OobLGdhH4XuPSswsY8GdQ55gmSiciaCpYJrKJZQPp6vgn', '2021-09-07 05:44:54', '2021-09-07 05:44:54');
INSERT INTO `users` VALUES (121, 'Paris Thompson', 'kilback.miller@example.net', '2021-09-07 05:44:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zWjkuQG2iQCEUDng1V2T3aBhjopDy09hZ5QlisnN73MysCClDJF54lLhp6NEdhatZ4lPdObpfSkYoXQ0vNFhorGwuIO7mEIfy86e', '2021-09-07 05:44:54', '2021-09-07 05:44:54');

SET FOREIGN_KEY_CHECKS = 1;
