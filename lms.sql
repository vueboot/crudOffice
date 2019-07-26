/*
 Navicat Premium Data Transfer

 Source Server         : c2c
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : lms

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 26/07/2019 15:05:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bs_user
-- ----------------------------
DROP TABLE IF EXISTS `bs_user`;
CREATE TABLE `bs_user`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `student_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `enable_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 启用状态',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `department_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门id',
  `time_of_entry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '入职时间',
  `form_of_employment` int(1) NOT NULL COMMENT '聘用形式',
  `work_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `form_of_management` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理形式',
  `working_city` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作城市',
  `correction_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转正时间',
  `in_service_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在职状态',
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业id',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_user
-- ----------------------------
INSERT INTO `bs_user` VALUES ('1', '13702197777', 'ww', 'kdyg111', '1', '2019-07-02 16:00:08', '1', '2019-07-02 16:00:13', 1, '1', '1', '1', '2019-07-02 16:00:20', '1', '1001', '天津工业大学', '408', 'saasAdmin');
INSERT INTO `bs_user` VALUES ('100000000000020', '13800958000', 'xx', 'kdyg111', '1', '2019-06-28 13:18:36', '1', '2019-06-28 13:18:45', 1, '12', '1', '1', '2019-06-28 13:19:01', '1', '1001', '天津工业大学', '410', 'user');
INSERT INTO `bs_user` VALUES ('10000000000004', '13702337284', 'cc', 'kdyg111', '1', '2019-06-28 13:16:12', '1', '2019-06-18 13:16:16', 1, '1', '1', '1', '2019-06-28 13:16:21', '1', '1001', '天津工业大学', '408', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000005', '13800133000', 'ee', 'kdyg111', '1', '2019-06-28 13:18:36', '1', '2019-06-28 13:18:45', 1, '12', '1', '1', '2019-06-28 13:19:01', '1', '1001', '天津工业大学', '405', 'user');
INSERT INTO `bs_user` VALUES ('10000000000006', '137021971244', 'ff', 'kdyg111', '1', '2019-06-11 12:44:20', '1', '2019-06-28 12:44:59', 1, '1', '1', '1', '2019-06-28 12:44:35', '1', '1001', '天津工业大学', '410', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000007', '13702197285', 'gg', 'kdyg111', '1', '2019-06-28 13:15:06', '1', '2019-06-28 13:15:11', 1, '1', '1', '1', '2019-06-28 13:15:18', '1', '1001', '天津工业大学', '408', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000009', '13702197214', 'ii', 'kdyg111', '1', '2019-06-28 13:16:12', '1', '2019-06-18 13:16:16', 1, '1', '1', '1', '2019-06-28 13:16:21', '1', '1001', '天津工业大学', '405', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000011', '13702197771', 'kk', 'kdyg111', '1', '2019-06-11 12:44:20', '1', '2019-06-28 12:44:59', 1, '1', '1', '1', '2019-06-28 12:44:35', '1', '1001', '天津工业大学', '410', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000012', '13702197277', 'll', 'kdyg111', '1', '2019-06-28 13:15:06', '1', '2019-06-28 13:15:11', 1, '1', '1', '1', '2019-06-28 13:15:18', '1', '1001', '天津工业大学', '408', 'user');
INSERT INTO `bs_user` VALUES ('10000000000013', '13702197248', 'mm', 'kdyg111', '1', '2019-06-28 13:15:40', '1', '2019-06-28 13:15:45', 1, '1', '1', '1', '2019-06-28 13:15:51', '1', '1001', '天津工业大学', '405', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000014', '13702197298', 'nn', 'kdyg111', '1', '2019-06-28 13:16:12', '1', '2019-06-18 13:16:16', 1, '1', '1', '1', '2019-06-28 13:16:21', '1', '1001', '天津工业大学', '410', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000015', '13800138050', 'oo', 'kdyg111', '1', '2019-07-01 13:18:36', '1', '2019-07-02 13:18:45', 1, '12', '1', '1', '2019-07-01 13:19:01', '1', '1001', '天津工业大学', '408', 'user');
INSERT INTO `bs_user` VALUES ('10000000000016', '13702199286', 'pp', 'kdyg111', '1', '2019-06-11 12:44:20', '1', '2019-06-28 12:44:59', 1, '1', '1', '1', '2019-06-28 12:44:35', '1', '1001', '天津工业大学', '405', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000017', '13702337285', 'qq', 'kdyg111', '1', '2019-06-28 13:15:06', '1', '2019-06-28 13:15:11', 1, '1', '1', '1', '2019-06-28 13:15:18', '1', '1001', '天津工业大学', '410', 'coAdmin');
INSERT INTO `bs_user` VALUES ('10000000000018', '137021327284', 'bbrr', 'kdyg111', '1', '2019-06-28 13:15:40', '1', '2019-06-28 13:15:45', 1, '1', '1', '1', '2019-06-28 13:15:51', '1', '1001', '天津工业大学', '408', 'user');
INSERT INTO `bs_user` VALUES ('10000000000019', '13702217284', 'ss', 'kdyg111', '1', '2019-06-28 13:16:12', '1', '2019-06-18 13:16:16', 1, '1', '1', '1', '2019-06-28 13:16:21', '1', '1001', '天津工业大学', '405', 'user');
INSERT INTO `bs_user` VALUES ('1152933481651302400', '18', 'zhangsan', '95a12f8c30ba24dc4d4bc114de86a795', '1', '2019-07-21 21:28:57', '000', '2019-07-21 21:28:57', 1, '1', '1', 'Tianjin', '2019-07-21 21:28:57', '1', '1001', '天津工业大学', '000', 'user');
INSERT INTO `bs_user` VALUES ('2', '23702197777', 'ww', 'kdyg111', '1', '2019-07-02 16:00:08', '1', '2019-07-02 16:00:13', 1, '1', '1', '1', '2019-07-02 16:00:20', '1', '1001', '天津工业大学', '410', 'coAdmin');
INSERT INTO `bs_user` VALUES ('3', '33702197777', 'ww', 'kdyg111', '1', '2019-07-02 16:00:08', '1', '2019-07-02 16:00:13', 1, '1', '1', '1', '2019-07-02 16:00:20', '1', '1001', '天津工业大学', '408', 'user');

-- ----------------------------
-- Table structure for co_company
-- ----------------------------
DROP TABLE IF EXISTS `co_company`;
CREATE TABLE `co_company`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `manager_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录id',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前版本',
  `renewal_date` datetime(0) NOT NULL COMMENT '续期时间',
  `expiration_date` datetime(0) NOT NULL COMMENT '到期时间',
  `company_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司地区',
  `company_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司地址',
  `business_license_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '营业执照',
  `legal_representative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表',
  `company_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司电话',
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `company_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司规模',
  `industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属行业',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `audit_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核状态',
  `state` tinyint(2) NOT NULL COMMENT '当前余额',
  `balance` double(255, 0) NOT NULL COMMENT '当前余额',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_company
-- ----------------------------
INSERT INTO `co_company` VALUES ('1001', '计算机科学与软件学院', '1', '1.1', '2019-06-12 16:01:50', '2019-06-12 16:01:55', '6500', 'TianJin', '0', '0', '300387', 'qishli4609@qq.com', '1', '1', '1', '1', 1, 1, '2019-06-20 16:02:57');

-- ----------------------------
-- Table structure for co_department
-- ----------------------------
DROP TABLE IF EXISTS `co_department`;
CREATE TABLE `co_department`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业ID',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级部门ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门编码',
  `manager_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人ID',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门负责人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_department
-- ----------------------------
INSERT INTO `co_department` VALUES ('1', '001', '171001', 'ttt', 'ttt', '4', '4', '2019-06-26 21:19:32', '1');
INSERT INTO `co_department` VALUES ('1146816986491846656', '1001', '1144911226304348160', '408', '123', NULL, '111', '2019-07-05 00:24:11', '111');
INSERT INTO `co_department` VALUES ('2', '1001', '171001', '技术部', '1', '1', '1', '2019-06-20 13:41:38', '1');
INSERT INTO `co_department` VALUES ('3', '1001', '171001', '财务部', '3', '3', '3', '2019-06-21 10:25:27', '3');
INSERT INTO `co_department` VALUES ('4', '1001', '171001', '研发部', '4', '4', '4', '2019-06-21 10:39:04', '4');

-- ----------------------------
-- Table structure for email_msg
-- ----------------------------
DROP TABLE IF EXISTS `email_msg`;
CREATE TABLE `email_msg`  (
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_msg
-- ----------------------------
INSERT INTO `email_msg` VALUES ('1711630000', 'lisi', '409', '申请加入');
INSERT INTO `email_msg` VALUES ('1711630403', 'FYJ', '408', '申请加入');

-- ----------------------------
-- Table structure for pe_permission
-- ----------------------------
DROP TABLE IF EXISTS `pe_permission`;
CREATE TABLE `pe_permission`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `type` int(255) NOT NULL COMMENT '权限类型',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限描述',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮数量',
  `en_visible` int(255) NOT NULL COMMENT '是否查询全部权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_permission
-- ----------------------------
INSERT INTO `pe_permission` VALUES ('1148808875260760064', '教师管理', 1, 'studentManager', '管理教师', '0', 1);
INSERT INTO `pe_permission` VALUES ('1148829390058725376', '教师添加', 2, 'API-TEACHER-ADD', '添加教师', '1148808875260760064', 1);
INSERT INTO `pe_permission` VALUES ('1149188728409464832', '教师删除', 2, 'API-TEACHER-DELETE', '教师删除', '1148808875260760064', 1);
INSERT INTO `pe_permission` VALUES ('1149190452083859456', '删除学生', 1, 'API-USER-DELETE', '删除学生', '0', 1);
INSERT INTO `pe_permission` VALUES ('1149292626818277376', '删除学生', 3, 'API-USER-DELETE', '删除学生', '1149190452083859456', 1);
INSERT INTO `pe_permission` VALUES ('1149623077697126400', '查看学生', 1, 'API-USER-GET', '查看学生信息', '0', 1);
INSERT INTO `pe_permission` VALUES ('1149623512419958784', '查看学生信息', 3, 'API-USER-GET', '查看学生信息', '1149623077697126400', 1);

-- ----------------------------
-- Table structure for pe_permission_api
-- ----------------------------
DROP TABLE IF EXISTS `pe_permission_api`;
CREATE TABLE `pe_permission_api`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `api_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接',
  `api_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求类型',
  `api_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_permission_api
-- ----------------------------
INSERT INTO `pe_permission_api` VALUES ('10000000000000', '1', '1', '1');
INSERT INTO `pe_permission_api` VALUES ('1149292626818277376', '/user/{id}', '3', '3');
INSERT INTO `pe_permission_api` VALUES ('1149623512419958784', '/sys/user/{id}', '3', '3');

-- ----------------------------
-- Table structure for pe_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `pe_permission_menu`;
CREATE TABLE `pe_permission_menu`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '展示图标',
  `menu_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '排序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_permission_menu
-- ----------------------------
INSERT INTO `pe_permission_menu` VALUES ('10000000000000', '1', '1');
INSERT INTO `pe_permission_menu` VALUES ('1148808875260760064', '1', '1');
INSERT INTO `pe_permission_menu` VALUES ('1149190452083859456', '1', '1');
INSERT INTO `pe_permission_menu` VALUES ('1149623077697126400', '1', '3');

-- ----------------------------
-- Table structure for pe_permission_point
-- ----------------------------
DROP TABLE IF EXISTS `pe_permission_point`;
CREATE TABLE `pe_permission_point`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮class',
  `point_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮图标',
  `point_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_permission_point
-- ----------------------------
INSERT INTO `pe_permission_point` VALUES ('10000000000000', '1', '1', '1');
INSERT INTO `pe_permission_point` VALUES ('1148829390058725376', '1', '1', '1');
INSERT INTO `pe_permission_point` VALUES ('1148959539714519040', '1', '1', '1');
INSERT INTO `pe_permission_point` VALUES ('1149188728409464832', '申请删除教师', '1', '1');

-- ----------------------------
-- Table structure for pe_role
-- ----------------------------
DROP TABLE IF EXISTS `pe_role`;
CREATE TABLE `pe_role`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '说明',
  `company_Id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_role
-- ----------------------------
INSERT INTO `pe_role` VALUES ('1', '院长', '院长', '1001');
INSERT INTO `pe_role` VALUES ('1145235197210030080', '实验室负责老师', '实验室负责老师', '1001');
INSERT INTO `pe_role` VALUES ('1145235248858689536', '实验室老师', '实验室老师', '1001');
INSERT INTO `pe_role` VALUES ('1148512196540157952', '实验室负责人', '实验室负责人', '1001');

-- ----------------------------
-- Table structure for pe_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `pe_role_permission`;
CREATE TABLE `pe_role_permission`  (
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_role_permission
-- ----------------------------
INSERT INTO `pe_role_permission` VALUES ('1145235197210030080', '1149188728409464832');
INSERT INTO `pe_role_permission` VALUES ('1145235248858689536', '1149190452083859456');
INSERT INTO `pe_role_permission` VALUES ('1', '1149188728409464832');
INSERT INTO `pe_role_permission` VALUES ('1', '1148829390058725376');
INSERT INTO `pe_role_permission` VALUES ('1', '1149623512419958784');
INSERT INTO `pe_role_permission` VALUES ('1', '1149190452083859456');
INSERT INTO `pe_role_permission` VALUES ('1', '1148808875260760064');
INSERT INTO `pe_role_permission` VALUES ('1', '1149292626818277376');
INSERT INTO `pe_role_permission` VALUES ('1', '1149623077697126400');

-- ----------------------------
-- Table structure for pe_user_role
-- ----------------------------
DROP TABLE IF EXISTS `pe_user_role`;
CREATE TABLE `pe_user_role`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_user_role
-- ----------------------------
INSERT INTO `pe_user_role` VALUES ('1', '1');
INSERT INTO `pe_user_role` VALUES ('10000000000019', '1145235197210030080');
INSERT INTO `pe_user_role` VALUES ('2', '1146617613237518336');
INSERT INTO `pe_user_role` VALUES ('3', '1145235248858689536');

SET FOREIGN_KEY_CHECKS = 1;
