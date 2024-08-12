/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_face

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 04/07/2024 20:53:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add doctor', 18, 'add_doctor');
INSERT INTO `auth_permission` VALUES (70, 'Can change doctor', 18, 'change_doctor');
INSERT INTO `auth_permission` VALUES (71, 'Can delete doctor', 18, 'delete_doctor');
INSERT INTO `auth_permission` VALUES (72, 'Can view doctor', 18, 'view_doctor');
INSERT INTO `auth_permission` VALUES (73, 'Can add feedback', 19, 'add_feedback');
INSERT INTO `auth_permission` VALUES (74, 'Can change feedback', 19, 'change_feedback');
INSERT INTO `auth_permission` VALUES (75, 'Can delete feedback', 19, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (76, 'Can view feedback', 19, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1720097066542.jpeg', 'https://m3u8player.org', '2024-07-04 20:44:28.744942');
INSERT INTO `b_ad` VALUES (2, 'ad/1720097073010.jpeg', 'https://m3u8player.org', '2024-07-04 20:44:35.128398');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '化妆', '2024-07-04 20:24:38.512256');
INSERT INTO `b_classification` VALUES (2, '美体', '2024-07-04 20:24:44.032801');
INSERT INTO `b_classification` VALUES (3, '理疗', '2024-07-04 20:24:53.193642');
INSERT INTO `b_classification` VALUES (4, '微整形', '2024-07-04 20:24:59.798156');
INSERT INTO `b_classification` VALUES (5, '美容', '2024-07-04 20:25:14.251900');
INSERT INTO `b_classification` VALUES (6, '美甲', '2024-07-04 20:25:20.031659');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '1111111', '2024-07-04 20:42:48.986078', 1, 2, 3);
INSERT INTO `b_comment` VALUES (2, '2222', '2024-07-04 20:43:23.927901', 2, 2, 3);
INSERT INTO `b_comment` VALUES (3, '233', '2024-07-04 20:43:57.737258', 0, 2, 3);

-- ----------------------------
-- Table structure for b_doctor
-- ----------------------------
DROP TABLE IF EXISTS `b_doctor`;
CREATE TABLE `b_doctor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhicheng` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_doctor
-- ----------------------------
INSERT INTO `b_doctor` VALUES (1, '刘文静', '高级美容师', '性格活泼，擅长脸部美容', 'cover/1720095940465.png', '2024-07-04 20:26:00.434866');
INSERT INTO `b_doctor` VALUES (2, '韩慧慧', '高级美容师', '擅长美容', 'cover/1720096592145.png', '2024-07-04 20:36:44.761274');
INSERT INTO `b_doctor` VALUES (3, '刘丽丽', '美容师', '擅长脸部美容', 'cover/1720096615487.png', '2024-07-04 20:37:05.616249');
INSERT INTO `b_doctor` VALUES (4, '张美丽', '美容师', '擅长美容', 'cover/1720096632091.jpeg', '2024-07-04 20:37:24.269116');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈', '刘', '222011@gmail.com', '333534', '2024-07-04 20:45:11.933518');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-04 20:24:05.723705');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-04 20:39:57.070068');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '啊啊啊啊啊', '2024-07-04 20:44:41.744586');
INSERT INTO `b_notice` VALUES (2, '测试通知223', '哈哈哈', '2024-07-04 20:44:48.170466');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 784 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-04 20:22:10.222537', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-04 20:22:10.223544', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-04 20:22:10.227531', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-04 20:22:35.800569', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-04 20:22:35.810579', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-04 20:22:36.854632', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-04 20:22:36.858871', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-04 20:22:36.861870', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-04 20:23:28.705144', '/myapp/admin/doctor/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-04 20:23:28.709165', '/myapp/admin/doctor/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-04 20:23:28.721153', '/myapp/admin/doctor/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-04 20:24:05.737865', '/myapp/admin/adminLogin', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-04 20:24:06.225938', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-04 20:24:06.227912', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-04 20:24:06.238856', '/myapp/admin/doctor/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-04 20:24:09.051680', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-04 20:24:17.958113', '/myapp/admin/user/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-04 20:24:17.999802', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-04 20:24:21.064322', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-04 20:24:22.341613', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-04 20:24:22.346220', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-04 20:24:22.355204', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-04 20:24:23.338862', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-04 20:24:38.520285', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-04 20:24:38.580930', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-04 20:24:44.045648', '/myapp/admin/classification/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-04 20:24:44.068724', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-04 20:24:53.199688', '/myapp/admin/classification/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-04 20:24:53.233363', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-04 20:24:59.801154', '/myapp/admin/classification/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-04 20:24:59.854554', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-04 20:25:14.264581', '/myapp/admin/classification/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-04 20:25:14.298119', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-04 20:25:20.036669', '/myapp/admin/classification/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-04 20:25:20.066182', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-04 20:25:25.653731', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-04 20:26:00.439856', '/myapp/admin/doctor/create', 'POST', NULL, '400');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-04 20:26:00.484778', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-04 20:26:03.412412', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-04 20:26:04.150954', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-04 20:26:04.155965', '/myapp/admin/doctor/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-04 20:26:04.161952', '/myapp/admin/doctor/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-04 20:26:36.422312', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-04 20:26:36.427342', '/myapp/admin/doctor/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-04 20:26:36.430425', '/myapp/admin/doctor/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-04 20:26:38.860363', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-04 20:26:39.668135', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-04 20:26:39.673766', '/myapp/admin/doctor/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-04 20:26:39.676756', '/myapp/admin/doctor/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-04 20:30:25.069148', '/myapp/admin/thing/create', 'POST', NULL, '91');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-04 20:30:25.139213', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-04 20:31:35.596035', '/upload/cover/1720096194615.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-04 20:31:39.549618', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-04 20:31:39.616284', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-04 20:32:55.725012', '/myapp/admin/thing/list', 'GET', NULL, '212');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-04 20:33:19.562471', '/myapp/admin/thing/update', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-04 20:33:19.830235', '/myapp/admin/thing/list', 'GET', NULL, '215');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-04 20:33:30.778854', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-04 20:33:30.982428', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-04 20:33:42.477454', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-04 20:33:42.729190', '/myapp/admin/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-04 20:33:59.975220', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-04 20:34:00.151415', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-04 20:34:13.584745', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-04 20:34:13.793546', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-04 20:34:26.257387', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-04 20:34:26.480764', '/myapp/admin/thing/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-04 20:34:38.135973', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-04 20:34:38.282548', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-04 20:34:47.309649', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-04 20:34:47.569811', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-04 20:34:52.164618', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-04 20:34:52.320392', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-04 20:35:05.129000', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-04 20:35:05.343294', '/myapp/admin/thing/list', 'GET', NULL, '185');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-04 20:35:10.563961', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-04 20:35:10.780737', '/myapp/admin/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-04 20:35:26.126366', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-04 20:35:26.345339', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-04 20:35:37.760331', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-04 20:35:37.947483', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-04 20:35:42.442946', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-04 20:35:42.679631', '/myapp/admin/thing/list', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-04 20:35:50.301921', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-04 20:36:16.378199', '/myapp/admin/doctor/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-04 20:36:44.766830', '/myapp/admin/doctor/create', 'POST', NULL, '394');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-04 20:36:44.808404', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-04 20:37:05.621243', '/myapp/admin/doctor/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-04 20:37:05.665252', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-04 20:37:24.276285', '/myapp/admin/doctor/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-04 20:37:24.349018', '/myapp/admin/doctor/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-04 20:37:27.766123', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-04 20:37:28.479154', '/myapp/admin/doctor/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-04 20:37:28.484399', '/myapp/admin/doctor/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-04 20:37:28.626907', '/myapp/admin/doctor/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-04 20:37:29.675205', '/upload/cover/1720096194615.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-04 20:37:34.147280', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-04 20:37:34.401767', '/myapp/admin/thing/list', 'GET', NULL, '197');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-04 20:37:38.431663', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-04 20:37:38.628959', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-04 20:37:42.299902', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-04 20:37:42.578001', '/myapp/admin/thing/list', 'GET', NULL, '210');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-04 20:37:46.095025', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-04 20:37:46.269333', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-04 20:37:51.890033', '/myapp/admin/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-04 20:37:53.712329', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-04 20:37:54.733646', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-04 20:37:54.737178', '/myapp/admin/doctor/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-04 20:37:54.889641', '/myapp/admin/doctor/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-04 20:37:58.523856', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-04 20:38:00.701447', '/myapp/admin/doctor/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-04 20:38:02.962164', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-04 20:38:03.048840', '/myapp/index/thing/getRecommend', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-04 20:38:04.814835', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-04 20:38:04.818833', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-04 20:38:04.901802', '/myapp/index/thing/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-04 20:38:07.319648', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-04 20:38:07.327101', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-04 20:38:07.447789', '/myapp/admin/classification/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-04 20:38:12.257822', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-04 20:38:12.445431', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-04 20:38:17.887919', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-04 20:38:18.147013', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-04 20:38:23.500441', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-04 20:38:23.811636', '/myapp/admin/thing/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-04 20:38:29.298805', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-04 20:38:29.560077', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-04 20:38:35.752696', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-04 20:38:36.008430', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-04 20:38:42.015813', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-04 20:38:42.243656', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-04 20:38:48.083228', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-04 20:38:48.394291', '/myapp/admin/thing/list', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-04 20:38:55.623545', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-04 20:38:55.884105', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-04 20:39:01.104834', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-04 20:39:01.383841', '/myapp/admin/thing/list', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-04 20:39:07.720014', '/myapp/admin/thing/update', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-04 20:39:07.940595', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-04 20:39:16.909744', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-04 20:39:17.150490', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-04 20:39:20.437460', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-04 20:39:20.489814', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-04 20:39:20.495277', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-04 20:39:20.897567', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-04 20:39:20.944792', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-04 20:39:20.964423', '/upload/cover/1720096714459.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-04 20:39:20.977731', '/upload/cover/1720096714459.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-04 20:39:20.985886', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-04 20:39:20.993629', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-04 20:39:20.999628', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-04 20:39:21.009800', '/upload/cover/1720096696173.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-04 20:39:21.013801', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-04 20:39:21.015210', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-04 20:39:28.865138', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-04 20:39:29.593658', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-04 20:39:30.321149', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-04 20:39:31.145332', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-04 20:39:31.710165', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-04 20:39:32.359541', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-04 20:39:33.144068', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-04 20:39:33.955235', '/myapp/index/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-04 20:39:40.478126', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-04 20:39:41.346431', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-04 20:39:43.114194', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-04 20:39:43.118195', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-04 20:39:43.135687', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-04 20:39:43.165127', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-04 20:39:43.220977', '/myapp/index/thing/detail', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-04 20:39:54.315253', '/myapp/index/user/register', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-04 20:39:57.075801', '/myapp/index/user/login', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-04 20:39:57.141571', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-04 20:39:57.167876', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-04 20:39:57.173845', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-04 20:39:57.214791', '/myapp/index/user/info', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-04 20:39:57.259343', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-04 20:39:57.264803', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-04 20:39:57.265799', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-04 20:39:57.265799', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-04 20:39:57.268875', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-04 20:39:57.270318', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-04 20:39:57.287452', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-04 20:39:57.288468', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-04 20:39:58.334403', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-04 20:39:58.353402', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-04 20:39:58.387012', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-04 20:39:58.407960', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-04 20:39:58.424552', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-04 20:39:58.476496', '/myapp/admin/ad/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-04 20:40:00.062405', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-04 20:40:00.069344', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-04 20:40:00.082352', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-04 20:40:00.148937', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-04 20:40:00.755724', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-04 20:40:00.768725', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-04 20:40:00.774724', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-04 20:40:00.789214', '/myapp/index/thing/detail', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-04 20:40:00.820393', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-04 20:40:00.872694', '/myapp/index/thing/detail', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-04 20:40:01.757008', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-04 20:40:01.761017', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-04 20:40:01.770177', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-04 20:40:01.825966', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-04 20:40:02.814212', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-04 20:40:02.813212', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-04 20:40:02.818730', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-04 20:40:02.862378', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-04 20:40:02.909077', '/myapp/index/thing/detail', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-04 20:40:02.932714', '/myapp/index/thing/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-04 20:40:03.843493', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-04 20:40:03.850222', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-04 20:40:03.860166', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-04 20:40:03.933042', '/myapp/index/user/info', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-04 20:40:04.896903', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-04 20:40:04.897917', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-04 20:40:04.910711', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-04 20:40:04.940581', '/myapp/index/thing/detail', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-04 20:40:04.976578', '/myapp/index/thing/detail', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-04 20:40:05.036343', '/myapp/index/thing/detail', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-04 20:40:05.763190', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-04 20:40:05.773181', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-04 20:40:05.786152', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-04 20:40:05.854963', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-04 20:40:06.553665', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-04 20:40:06.560669', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-04 20:40:06.577632', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-04 20:40:06.585635', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-04 20:40:06.644270', '/myapp/index/comment/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-04 20:40:06.687632', '/myapp/index/comment/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-04 20:40:07.437142', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-04 20:40:07.445162', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-04 20:40:07.449167', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-04 20:40:07.530843', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-04 20:40:08.164844', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-04 20:40:08.172305', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-04 20:40:08.173687', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-04 20:40:08.215694', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-04 20:40:08.244999', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-04 20:40:08.291978', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-04 20:40:08.300683', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-04 20:40:08.337727', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-04 20:40:08.339726', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-04 20:40:08.339726', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-04 20:40:09.093395', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-04 20:40:09.100442', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-04 20:40:09.113589', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-04 20:40:09.183681', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-04 20:40:09.229574', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-04 20:40:09.230559', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-04 20:40:09.238045', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-04 20:40:09.241052', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-04 20:40:09.245044', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-04 20:40:09.250046', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-04 20:40:09.258252', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-04 20:40:09.832312', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-04 20:40:09.848312', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-04 20:40:09.844324', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-04 20:40:09.868766', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-04 20:40:09.898790', '/myapp/index/thing/detail', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-04 20:40:09.930797', '/myapp/index/thing/detail', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-04 20:40:10.547576', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-04 20:40:10.558165', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-04 20:40:10.566070', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-04 20:40:10.642966', '/myapp/index/user/info', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-04 20:40:12.010462', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-04 20:40:12.023533', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-04 20:40:12.031137', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-04 20:40:12.043684', '/myapp/index/thing/detail', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-04 20:40:12.100273', '/myapp/index/thing/detail', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-04 20:40:12.160032', '/myapp/index/thing/detail', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-04 20:40:12.955552', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-04 20:40:12.971641', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-04 20:40:12.978628', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-04 20:40:13.072285', '/myapp/index/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-04 20:40:15.000148', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-04 20:40:15.007149', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-04 20:40:15.021165', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-04 20:40:15.039956', '/myapp/index/thing/detail', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-04 20:40:15.098513', '/myapp/index/thing/detail', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-04 20:40:15.152804', '/myapp/index/thing/detail', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-04 20:40:15.904754', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-04 20:40:15.909812', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-04 20:40:15.916601', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-04 20:40:15.990126', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-04 20:40:18.082553', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-04 20:40:18.091568', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-04 20:40:18.099253', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-04 20:40:18.103272', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-04 20:40:18.168114', '/myapp/index/user/info', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-04 20:40:18.244716', '/myapp/index/user/info', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-04 20:40:22.202724', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-04 20:40:22.208933', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-04 20:40:22.218394', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-04 20:40:22.225716', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-04 20:40:22.265311', '/myapp/index/user/info', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-04 20:40:22.320962', '/myapp/index/user/info', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-04 20:40:32.305265', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-04 20:40:32.315274', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-04 20:40:32.319263', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-04 20:40:32.338823', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-04 20:40:32.400081', '/myapp/admin/ad/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-04 20:40:32.447253', '/myapp/admin/ad/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-04 20:40:37.331610', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-04 20:40:37.342617', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-04 20:40:37.349650', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-04 20:40:37.370850', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-04 20:40:37.401351', '/myapp/admin/ad/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-04 20:40:37.462620', '/myapp/admin/ad/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-04 20:40:48.825915', '/myapp/index/order/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-04 20:40:49.024947', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-04 20:40:49.035723', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-04 20:40:51.519573', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-04 20:40:51.528804', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-04 20:40:51.535824', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-04 20:40:51.559171', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-04 20:40:51.566175', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-04 20:40:51.575556', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-04 20:41:06.039365', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-04 20:41:06.042366', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-04 20:41:06.051407', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-04 20:41:06.129365', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-04 20:41:06.169867', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-04 20:41:06.172260', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-04 20:41:06.173236', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-04 20:41:06.173236', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-04 20:41:06.174232', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-04 20:41:06.175726', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-04 20:41:06.190681', '/upload/cover/1720096734254.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-04 20:41:06.198315', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-04 20:41:06.198315', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-04 20:41:06.199685', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-04 20:41:06.899725', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-04 20:41:06.904512', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-04 20:41:06.911174', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-04 20:41:06.920167', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-04 20:41:06.963239', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-04 20:41:07.012897', '/myapp/index/comment/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-04 20:41:09.587752', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-04 20:41:09.598248', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-04 20:41:09.691609', '/myapp/index/thing/getRecommend', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-04 20:41:10.557484', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-04 20:41:10.566470', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-04 20:41:10.575698', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-04 20:41:10.624069', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-04 20:41:33.382192', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-04 20:41:33.410506', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-04 20:41:33.473158', '/myapp/index/thing/getRecommend', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-04 20:41:34.148476', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-04 20:41:34.153462', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-04 20:41:34.171485', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-04 20:41:34.238961', '/myapp/index/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-04 20:41:34.866198', '/myapp/index/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-04 20:41:34.868169', '/myapp/index/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-04 20:41:34.871256', '/myapp/index/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-04 20:41:34.911245', '/upload/cover/1720095940465.png', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-04 20:41:34.911245', '/upload/cover/1720095940465.png', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-04 20:41:34.913181', '/upload/cover/1720095940465.png', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-04 20:41:34.914259', '/upload/cover/1720095940465.png', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-04 20:41:43.095320', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-04 20:41:43.099506', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-04 20:41:43.108002', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-04 20:41:43.111564', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-04 20:41:43.134017', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-04 20:41:43.150816', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-04 20:41:44.454139', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-04 20:41:45.781739', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-04 20:41:46.479829', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-04 20:41:47.359899', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-04 20:41:47.362897', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-04 20:41:47.378147', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-04 20:41:47.441996', '/myapp/index/classification/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-04 20:41:47.477347', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-04 20:41:47.478816', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-04 20:41:47.479841', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-04 20:41:47.481838', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-04 20:41:47.483285', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-04 20:41:47.486072', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-04 20:41:47.503057', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-04 20:41:47.505510', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-04 20:41:47.506521', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-04 20:41:47.514844', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-04 20:41:48.326009', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-04 20:41:48.334035', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-04 20:41:48.345121', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-04 20:41:48.359599', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-04 20:41:48.404826', '/myapp/index/comment/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-04 20:41:48.432705', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-04 20:41:49.206931', '/myapp/index/thing/addWishUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-04 20:41:49.259026', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-04 20:41:49.618333', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-04 20:41:49.672473', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-04 20:41:50.359607', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-04 20:41:50.371607', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-04 20:41:50.417781', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-04 20:41:50.451740', '/myapp/index/thing/getRecommend', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-04 20:41:51.142577', '/myapp/index/thing/addWishUser', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-04 20:41:51.191276', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-04 20:41:51.642084', '/myapp/index/thing/addCollectUser', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-04 20:41:51.723757', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-04 20:41:53.730333', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-04 20:41:53.742390', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-04 20:41:53.781908', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-04 20:41:53.806906', '/myapp/index/thing/getRecommend', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-04 20:41:54.545341', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-04 20:41:54.603685', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-04 20:41:55.185045', '/myapp/index/thing/addCollectUser', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-04 20:41:55.220746', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-04 20:41:56.964092', '/myapp/index/thing/getWishThingList', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-04 20:41:56.980457', '/myapp/index/thing/getWishThingList', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-04 20:41:57.029702', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-04 20:41:57.055916', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-04 20:41:57.062998', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-04 20:41:57.076744', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-04 20:41:59.189438', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-04 20:42:01.354298', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-04 20:42:01.361314', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-04 20:42:01.369869', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-04 20:42:01.380516', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-04 20:42:01.421025', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-04 20:42:01.431042', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-04 20:42:01.446238', '/upload/cover/1720096194615.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-04 20:42:01.453865', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-04 20:42:03.077434', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-04 20:42:03.142987', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-04 20:42:04.954692', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-04 20:42:16.190750', '/myapp/index/user/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-04 20:42:17.217981', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-04 20:42:17.232817', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-04 20:42:17.271233', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-04 20:42:17.294743', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-04 20:42:17.310740', '/myapp/index/user/info', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-04 20:42:17.311742', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-04 20:42:17.329810', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-04 20:42:19.435089', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-04 20:42:19.441074', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-04 20:42:19.449081', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-04 20:42:19.523863', '/myapp/index/classification/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-04 20:42:19.560856', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-04 20:42:19.563912', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-04 20:42:19.564862', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-04 20:42:19.564862', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-04 20:42:19.566957', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-04 20:42:19.587440', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-04 20:42:19.587440', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-04 20:42:19.589443', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-04 20:42:19.589443', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-04 20:42:19.606461', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-04 20:42:26.509472', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-04 20:42:32.287388', '/myapp/admin/order/cancel_order', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-04 20:42:32.371449', '/myapp/admin/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-04 20:42:39.680027', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-04 20:42:39.683343', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-04 20:42:39.783690', '/myapp/admin/classification/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-04 20:42:40.091759', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-04 20:42:40.922424', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-04 20:42:41.702112', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-04 20:42:44.271719', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-04 20:42:44.279098', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-04 20:42:44.283559', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-04 20:42:44.297388', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-04 20:42:44.322584', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-04 20:42:44.343566', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-04 20:42:48.991066', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-04 20:42:49.038111', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-04 20:42:50.588423', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-04 20:42:51.960567', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-04 20:42:55.409928', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-04 20:42:55.416139', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-04 20:42:55.429243', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-04 20:42:55.448637', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-04 20:42:55.458084', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-04 20:42:55.475847', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-04 20:42:55.490825', '/upload/cover/1720096691013.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-04 20:42:55.494849', '/upload/cover/1720096691013.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-04 20:42:55.512356', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-04 20:42:55.513367', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-04 20:42:55.513367', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-04 20:42:55.513367', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-04 20:42:58.689058', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-04 20:43:05.907533', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-04 20:43:23.943945', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-04 20:43:23.984896', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-04 20:43:26.218520', '/myapp/index/comment/like', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-04 20:43:26.264102', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-04 20:43:26.971640', '/myapp/index/comment/like', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-04 20:43:27.020053', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-04 20:43:27.820683', '/myapp/index/comment/like', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-04 20:43:27.877995', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-04 20:43:35.409650', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-04 20:43:35.862749', '/myapp/admin/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-04 20:43:57.739255', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-04 20:43:57.769509', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-04 20:44:00.860967', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-04 20:44:01.483496', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-04 20:44:05.961399', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-04 20:44:05.983772', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-04 20:44:06.032322', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-04 20:44:06.064750', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-04 20:44:06.072916', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-04 20:44:07.154647', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-04 20:44:07.159233', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-04 20:44:07.161568', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-04 20:44:07.174392', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-04 20:44:07.202967', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-04 20:44:07.207916', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-04 20:44:07.224599', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-04 20:44:16.408561', '/myapp/index/order/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-04 20:44:16.494052', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-04 20:44:16.501081', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-04 20:44:17.833260', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-04 20:44:17.853619', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-04 20:44:17.912493', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-04 20:44:17.935029', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-04 20:44:17.947699', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-04 20:44:17.960149', '/myapp/index/user/info', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-04 20:44:19.557485', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-04 20:44:20.012023', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-04 20:44:21.683393', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-04 20:44:22.475300', '/myapp/admin/notice/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-04 20:44:22.755464', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-04 20:44:28.761068', '/myapp/admin/ad/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-04 20:44:28.789381', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-04 20:44:28.839490', '/upload/ad/1720097066542.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-04 20:44:35.144319', '/myapp/admin/ad/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-04 20:44:35.203285', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-04 20:44:35.242317', '/upload/ad/1720097073010.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-04 20:44:36.166854', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-04 20:44:41.750630', '/myapp/admin/notice/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-04 20:44:41.777244', '/myapp/admin/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-04 20:44:48.174832', '/myapp/admin/notice/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-04 20:44:48.197818', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-04 20:44:51.658582', '/myapp/admin/overview/count', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-04 20:44:52.835859', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-04 20:44:55.008165', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1070');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-04 20:44:56.941900', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-04 20:44:56.947901', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-04 20:44:56.971558', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-04 20:44:57.041114', '/myapp/index/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-04 20:44:57.075920', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-04 20:44:57.083808', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-04 20:44:57.089798', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-04 20:44:57.089798', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-04 20:44:57.089798', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-04 20:44:57.091236', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-04 20:44:57.112187', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-04 20:44:57.127421', '/upload/cover/1720096734254.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-04 20:44:57.130438', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-04 20:44:57.134434', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-04 20:44:57.135433', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-04 20:45:00.167291', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-04 20:45:00.181079', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-04 20:45:00.190607', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-04 20:45:11.942532', '/myapp/index/feedback/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-04 20:45:13.822796', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-04 20:45:13.840572', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-04 20:45:14.926181', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-04 20:45:15.423613', '/myapp/admin/feedback/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-04 20:45:17.803129', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-04 20:45:18.471014', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-04 20:45:19.210376', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-04 20:45:20.077437', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-04 20:45:20.083320', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-04 20:45:20.225776', '/myapp/admin/classification/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-04 20:45:25.802457', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-04 20:45:26.661555', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-04 20:45:28.278856', '/myapp/admin/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-04 20:45:30.055563', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-04 20:45:31.109997', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-04 20:45:31.117456', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-04 20:45:31.251825', '/myapp/admin/classification/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-04 20:45:38.400204', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-04 20:45:38.407014', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-04 20:45:38.440328', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-04 20:45:39.730004', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-04 20:45:39.739974', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-04 20:45:39.771099', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-04 20:45:39.824809', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-04 20:45:41.944272', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-04 20:45:43.097171', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-04 20:45:48.229575', '/myapp/index/doctor/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-04 20:45:48.236097', '/myapp/index/doctor/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-04 20:45:48.245134', '/myapp/index/doctor/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-04 20:45:48.282683', '/upload/cover/1720095940465.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-04 20:45:48.283702', '/upload/cover/1720095940465.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-04 20:45:48.284700', '/upload/cover/1720095940465.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-04 20:45:48.287685', '/upload/cover/1720095940465.png', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-04 20:45:51.365902', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-04 20:45:51.372899', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-04 20:45:51.377899', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-04 20:45:51.452358', '/myapp/index/user/info', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-04 20:46:43.673073', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-04 20:46:43.680982', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-04 20:46:43.699934', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-04 20:46:43.710550', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-04 20:46:43.739760', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-04 20:46:43.745165', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-04 20:46:43.766047', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-04 20:46:43.775847', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-04 20:46:47.174891', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-04 20:46:47.178187', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-04 20:46:47.192550', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-04 20:46:48.001873', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-04 20:46:48.007804', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-04 20:46:48.016063', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-04 20:46:48.056369', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-04 20:46:48.089398', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-04 20:46:48.091671', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-04 20:46:48.091671', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-04 20:46:48.091671', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-04 20:46:48.092950', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-04 20:46:48.104721', '/upload/cover/1720096707911.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-04 20:46:48.111539', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-04 20:46:48.129559', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-04 20:46:48.130725', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-04 20:46:48.131734', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-04 20:46:48.132241', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-04 20:46:48.141145', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-04 20:46:50.588612', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-04 20:46:50.595723', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-04 20:46:50.618848', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-04 20:46:51.146974', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-04 20:46:51.154065', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-04 20:46:51.157964', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-04 20:46:51.219520', '/myapp/index/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-04 20:47:02.609904', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-04 20:47:02.617903', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-04 20:47:02.630299', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-04 20:47:02.691242', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-04 20:47:51.953822', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-04 20:47:51.962372', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-04 20:47:52.059440', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-04 20:47:52.081389', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-04 20:47:54.300777', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-04 20:47:54.305761', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-04 20:47:54.313790', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-04 20:47:54.335887', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-04 20:47:54.373242', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-04 20:47:54.400354', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-04 20:47:54.402365', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-04 20:47:54.402365', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-04 20:47:54.403365', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-04 20:47:54.404364', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-04 20:47:54.411337', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-04 20:47:54.426147', '/upload/cover/1720096726544.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-04 20:47:54.430985', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-04 20:47:54.433316', '/upload/cover/1720096746558.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-04 20:47:54.434331', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-04 20:47:54.446288', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-04 20:48:28.488695', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-04 20:48:28.496360', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-04 20:48:28.678146', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-04 20:48:28.682146', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-04 20:48:30.856714', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-04 20:48:30.862087', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-04 20:48:30.883672', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-04 20:48:30.893659', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-04 20:48:30.950504', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-04 20:48:30.970768', '/upload/cover/1720096194615.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-04 20:48:33.818588', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-04 20:48:33.824609', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-04 20:48:33.862597', '/myapp/index/thing/getRecommend', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-04 20:48:34.629810', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-04 20:48:34.633872', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-04 20:48:34.641488', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-04 20:48:34.711428', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-04 20:48:55.700573', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-04 20:48:55.724806', '/myapp/index/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-04 20:48:55.729824', '/myapp/index/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-04 20:48:55.790382', '/myapp/index/classification/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-04 20:48:55.825408', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-04 20:48:55.826427', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-04 20:48:55.826427', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-04 20:48:55.854831', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-04 20:48:55.856828', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-04 20:48:55.856828', '/upload/cover/1720096720475.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-04 20:48:55.887533', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-04 20:48:55.889790', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-04 20:48:55.889790', '/upload/cover/1720096739829.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-04 20:48:55.912802', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-04 20:48:55.913799', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-04 20:48:56.602280', '/myapp/admin/doctor/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-04 20:48:56.606294', '/myapp/admin/doctor/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-04 20:48:56.695235', '/myapp/admin/doctor/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-04 20:49:15.165637', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-04 20:49:15.171741', '/myapp/index/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-04 20:49:15.193523', '/myapp/index/classification/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-04 20:49:15.241844', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-04 20:49:15.242847', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-04 20:49:15.980093', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-04 20:49:15.985467', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-04 20:49:16.099502', '/myapp/admin/doctor/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-04 20:50:01.149240', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-04 20:50:02.174243', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-04 20:50:03.935164', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-04 20:50:07.651580', '/myapp/admin/user/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-04 20:50:10.720125', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-04 20:50:14.339904', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-04 20:50:14.379478', '/upload/ad/1720097066542.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-04 20:50:14.380481', '/upload/ad/1720097066542.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-04 20:50:15.287455', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-04 20:50:18.101306', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-04 20:50:19.069046', '/myapp/admin/feedback/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-04 20:50:20.912829', '/myapp/admin/feedback/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-04 20:50:21.095796', '/myapp/admin/feedback/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-04 20:50:22.206750', '/myapp/admin/overview/count', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-04 20:50:24.919696', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-04 20:50:24.931446', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-04 20:50:25.083709', '/myapp/admin/classification/list', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-04 20:50:46.427803', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-04 20:50:46.431812', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-04 20:50:46.460063', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-04 20:50:47.208329', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-04 20:50:47.213303', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-04 20:50:47.235990', '/myapp/index/classification/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-04 20:50:47.287488', '/myapp/index/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-04 20:50:49.298061', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-04 20:50:49.726027', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-04 20:50:50.248446', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-04 20:50:52.240933', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-04 20:50:54.073159', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-04 20:50:54.985646', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-04 20:50:55.876179', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-04 20:51:00.117011', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-04 20:51:00.130429', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-04 20:51:00.162851', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-04 20:51:00.166843', '/upload/avatar/1720096929524.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-04 20:51:00.192453', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-04 20:51:00.194783', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-04 20:51:00.197797', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-04 20:51:00.198791', '/upload/cover/1720096755559.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-04 20:51:00.946652', '/myapp/index/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-04 20:51:00.950128', '/myapp/index/doctor/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-04 20:51:00.976869', '/upload/cover/1720095940465.png', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-04 20:51:00.977965', '/upload/cover/1720095940465.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-04 20:51:00.979031', '/upload/cover/1720095940465.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-04 20:51:00.981288', '/upload/cover/1720095940465.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-04 20:51:00.982309', '/upload/cover/1720095940465.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-04 20:51:01.983065', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-04 20:51:01.987067', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-04 20:51:02.029552', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-04 20:51:02.033607', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-04 20:51:02.040558', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-04 20:51:02.055526', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-04 20:51:04.931362', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-04 20:51:04.956910', '/upload/cover/1720096691013.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-04 20:51:04.958888', '/upload/cover/1720096691013.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-04 20:51:05.623530', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-04 20:51:05.637296', '/upload/cover/1720096194615.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-04 20:51:06.424768', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-04 20:51:06.445782', '/upload/cover/1720096702175.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-04 20:51:06.917857', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-04 20:51:07.718335', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-04 20:51:08.935653', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-04 20:51:09.782117', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-04 20:51:10.139516', '/myapp/index/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-04 20:51:11.484438', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-04 20:51:12.139874', '/myapp/index/comment/listMyComments', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-04 20:51:19.301509', '/myapp/index/user/updatePwd', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-04 20:51:26.663299', '/myapp/index/user/updatePwd', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-04 20:51:28.428539', '/myapp/index/user/updatePwd', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-04 20:51:33.978218', '/myapp/index/user/updatePwd', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-04 20:51:35.551635', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-04 20:51:36.014915', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-04 20:51:44.098566', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-04 20:51:44.103922', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-04 20:51:44.116902', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-04 20:51:44.198238', '/myapp/index/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-04 20:51:44.224501', '/upload/cover/1720096734254.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-04 20:51:44.225818', '/upload/cover/1720096734254.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-04 20:51:44.225818', '/upload/cover/1720096734254.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-04 20:51:44.244009', '/upload/cover/1720096734254.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-04 20:51:55.146274', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-04 20:51:56.701707', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-04 20:51:58.794303', '/myapp/admin/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-04 20:52:34.327152', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-04 20:52:43.631930', '/myapp/admin/user/create', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-04 20:52:43.692883', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-04 20:52:50.964108', '/myapp/admin/user/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-04 20:52:51.011102', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-04 20:52:57.775536', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-04 20:52:58.801285', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-04 20:52:58.805842', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-04 20:52:58.935703', '/myapp/admin/doctor/list', 'GET', NULL, '141');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1720096848786', 1, '2', '2024-07-04 20:40:48.804700', '陈慧琳', '', '13211111222', '', 4, 3);
INSERT INTO `b_order` VALUES (2, '1720097056377', 1, '1', '2024-07-04 20:44:16.389264', '韩路', '', '8887766666', '', 4, 3);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (2, 1, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 3, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 11, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 4, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 5, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 6, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 12, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 10, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 1, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 2, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (13, 4, 2, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youxiaoqi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `shiyong` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tishi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctor_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_thing_doctor_id_2a5153a4_fk_b_doctor_id`(`doctor_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_doctor_id_2a5153a4_fk_b_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `b_doctor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '法式美甲', 'cover/1720096194615.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 5, 0, 1, 0, 6, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (2, '法式脸部美容', 'cover/1720096691013.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '222', '一周内', '0', '2024-07-04 20:30:25.047133', 6, 0, 1, 1, 5, NULL, 3, '青年女生', '保持脸部清洁', 4);
INSERT INTO `b_thing` VALUES (3, '法式微整形', 'cover/1720096696173.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 5, 0, 1, 1, 4, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (4, '中式理疗', 'cover/1720096702175.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '180', '一周内', '0', '2024-07-04 20:30:25.047133', 7, 0, 0, 0, 3, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (5, '花朵美体', 'cover/1720096707911.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 1, 0, 0, 0, 2, NULL, 3, '青年女生', '保持脸部清洁', 3);
INSERT INTO `b_thing` VALUES (6, '正规化妆', 'cover/1720096714459.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 1, 0, 0, 0, 1, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (7, '法式化妆', 'cover/1720096720475.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 0, 0, 0, 0, 1, NULL, 3, '青年女生', '保持脸部清洁', 2);
INSERT INTO `b_thing` VALUES (8, '法式美容22', 'cover/1720096726544.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '124', '一周内', '0', '2024-07-04 20:30:25.047133', 0, 0, 0, 0, 5, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (9, '法式理疗', 'cover/1720096734254.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 1, 0, 0, 0, 3, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (10, '法式美甲2223', 'cover/1720096739829.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 1, 0, 0, 0, 6, NULL, 3, '青年女生', '保持脸部清洁', 3);
INSERT INTO `b_thing` VALUES (11, '脸部美容99', 'cover/1720096746558.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 1, 0, 0, 0, 5, NULL, 3, '青年女生', '保持脸部清洁', 1);
INSERT INTO `b_thing` VALUES (12, '法式美甲服务', 'cover/1720096755559.jpeg', '脸部美容是人们在追求美丽和自信的过程中常见的美容项目之一。通过脸部美容可以改善皮肤质地、提升面部轮廓、减少皱纹和松弛等问题，让肌肤看起来更加健康年轻。\r\n\r\n脸部美容包括多种项目，常见的包括深层清洁护理、面部按摩、护肤品SPA护理、面部填充、肉毒杆菌注射、激光护理等。不同的项目针对不同的皮肤问题，可以根据个人需求选择适合自己的美容方案。\r\n\r\n1. 深层清洁护理：深层清洁护理是一种通过清洁面部皮肤深层毛孔的护理项目，可以去除多余油脂和污垢，减少黑头粉刺，促进皮肤新陈代谢，让肌肤更加清爽通透。这种护理通常由专业美容师进行，包括洁面、去角质、蒸脸、按摩等步骤。\r\n\r\n2. 面部按摩护理：面部按摩护理可以帮助提升面部肌肤血液循环，促进面部淋巴排毒，缓解面部肌肉紧张和疲劳，让面部肌肤更有光泽和弹性。按摩手法轻柔且有力度，可以促进皮肤吸收护肤品成分，提升护理效果。\r\n\r\n3. 护肤品SPA护理：SPA护理是一种结合了特殊的护肤品和按摩手法的面部护理项目，可以为皮肤提供深层滋养和保湿，修复受损细胞，减少皱纹和暗沉。SPA护理通常包括清洁、面膜、按摩等步骤，可以根据不同皮肤类型选择不同的护理产品。\r\n\r\n4. 面部填充和肉毒杆菌注射：面部填充是通过注射适量的填充剂来填补皱纹和凹陷部位，让面部线条更加丰满和年轻。肉毒杆菌注射则可以减轻肌肉收缩，减少皱纹的形成，让面部看起来更加紧致和年轻。\r\n\r\n5. 激光护理：激光护理是一种通过激光技术来改善皮肤问题的护理项目，可以用于去除色斑、痘疤、皱纹等，提升皮肤的整体质量和光泽度。激光护理通常需要在专业美容医疗机构进行，操作前需要进行皮肤评估和术前准备。\r\n\r\n脸部美容项目的价格因具体项目和美容院品牌而有所不同，消费者在选择脸部美容项目时应根据自身皮肤需求和预算做出合理选择。在接受脸部美容护理时，建议选择正规专业的美容机构，避免因不当护理导致皮肤问题。愿每位追求美丽的人们都能拥有年轻健康、动人容颜！', '125', '一周内', '0', '2024-07-04 20:30:25.047133', 1, 0, 0, 0, 6, NULL, 3, '青年女生', '保持脸部清洁', 1);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (3, 2, 3);
INSERT INTO `b_thing_collect` VALUES (1, 3, 3);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 1, 3);
INSERT INTO `b_thing_wish` VALUES (3, 2, 3);
INSERT INTO `b_thing_wish` VALUES (1, 3, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-04 20:24:17.953163', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'hhhhkkk', 'avatar/1720096929524.jpeg', '999', NULL, NULL, NULL, '2024-07-04 20:39:54.309249', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-04 20:52:43.615626', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-04 20:52:50.958099', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'doctor');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-04 20:18:32.497865');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-04 20:18:33.143800');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-04 20:18:33.265686');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-04 20:18:33.279684');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-04 20:18:33.290684');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-04 20:18:33.457965');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-04 20:18:33.534626');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-04 20:18:33.608100');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-04 20:18:33.623127');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-04 20:18:33.694019');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-04 20:18:33.700030');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-04 20:18:33.711032');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-04 20:18:33.772881');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-04 20:18:33.860171');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-04 20:18:33.928947');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-04 20:18:33.943383');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-04 20:18:34.018836');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-04 20:18:35.635649');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-04 20:18:35.735450');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-04 20:18:36.047343');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-04 20:18:36.220249');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240623_1722', '2024-07-04 20:18:37.197420');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_doctor', '2024-07-04 20:18:37.288940');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2024-07-04 20:18:37.385087');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
