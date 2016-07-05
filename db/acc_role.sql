/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : system-manage

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-07-05 14:29:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acc_role
-- ----------------------------
DROP TABLE IF EXISTS `acc_role`;
CREATE TABLE `acc_role` (
  `acc_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`acc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acc_role
-- ----------------------------
INSERT INTO `acc_role` VALUES ('1', '1');
INSERT INTO `acc_role` VALUES ('1', '2');
INSERT INTO `acc_role` VALUES ('1', '3');
INSERT INTO `acc_role` VALUES ('33', '3');
INSERT INTO `acc_role` VALUES ('34', '2');
INSERT INTO `acc_role` VALUES ('34', '3');
INSERT INTO `acc_role` VALUES ('35', '3');
INSERT INTO `acc_role` VALUES ('36', '4');
INSERT INTO `acc_role` VALUES ('37', '1');
INSERT INTO `acc_role` VALUES ('37', '2');
INSERT INTO `acc_role` VALUES ('37', '3');
INSERT INTO `acc_role` VALUES ('40', '3');

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  `cityId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_name` (`accountName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'root', 'Y6nw6nu5gFB5a2SehUgYRQ==', '0', '根账号', '1', '2014-04-15 16:17:03', '0', null);
INSERT INTO `account` VALUES ('33', '00', 'KcPuo/MF1rgj9WKsS+NSFw==', null, '00', '1', '2014-04-15 16:41:57', '0', null);
INSERT INTO `account` VALUES ('34', 'test', 'CY9rzUYh03PK3k6DJie09g==', null, 'test', '1', '2015-08-08 21:18:39', '0', '3');
INSERT INTO `account` VALUES ('35', 'hujihong', 'GvQFzpVbQgE6qjlXRWUxgg==', null, 'hujihong', '1', '2015-02-07 03:44:39', '0', null);
INSERT INTO `account` VALUES ('36', 'audit', '4QrcOUm6Wau+VuBX8g+IPg==', null, '下单审核', '1', '2015-06-03 19:23:29', '0', null);

-- ----------------------------
-- Table structure for ly_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES ('1', '1', '根账号', 'root', '拥有所有权限1');
INSERT INTO `ly_role` VALUES ('2', '1', '管理员', 'admin', '管理系统权限');
INSERT INTO `ly_role` VALUES ('3', '1', '普通角色', 'simple', '普通角色');
INSERT INTO `ly_role` VALUES ('4', '1', '审核管理员', 'audit', '下单审核');

-- ----------------------------
-- Table structure for res_roles
-- ----------------------------
DROP TABLE IF EXISTS `res_roles`;
CREATE TABLE `res_roles` (
  `role_id` int(11) NOT NULL,
  `resc_id` int(11) NOT NULL,
  PRIMARY KEY (`resc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_roles
-- ----------------------------
INSERT INTO `res_roles` VALUES ('1', '1');
INSERT INTO `res_roles` VALUES ('2', '1');
INSERT INTO `res_roles` VALUES ('1', '2');
INSERT INTO `res_roles` VALUES ('2', '2');
INSERT INTO `res_roles` VALUES ('1', '3');
INSERT INTO `res_roles` VALUES ('2', '3');
INSERT INTO `res_roles` VALUES ('1', '4');
INSERT INTO `res_roles` VALUES ('2', '4');
INSERT INTO `res_roles` VALUES ('1', '5');
INSERT INTO `res_roles` VALUES ('2', '5');
INSERT INTO `res_roles` VALUES ('1', '6');
INSERT INTO `res_roles` VALUES ('2', '6');
INSERT INTO `res_roles` VALUES ('1', '7');
INSERT INTO `res_roles` VALUES ('2', '7');
INSERT INTO `res_roles` VALUES ('4', '7');
INSERT INTO `res_roles` VALUES ('1', '8');
INSERT INTO `res_roles` VALUES ('2', '8');
INSERT INTO `res_roles` VALUES ('4', '8');
INSERT INTO `res_roles` VALUES ('1', '9');
INSERT INTO `res_roles` VALUES ('2', '9');
INSERT INTO `res_roles` VALUES ('1', '10');
INSERT INTO `res_roles` VALUES ('2', '10');
INSERT INTO `res_roles` VALUES ('4', '10');
INSERT INTO `res_roles` VALUES ('1', '11');
INSERT INTO `res_roles` VALUES ('2', '11');
INSERT INTO `res_roles` VALUES ('1', '12');
INSERT INTO `res_roles` VALUES ('2', '12');
INSERT INTO `res_roles` VALUES ('1', '13');
INSERT INTO `res_roles` VALUES ('2', '13');
INSERT INTO `res_roles` VALUES ('1', '14');
INSERT INTO `res_roles` VALUES ('2', '14');
INSERT INTO `res_roles` VALUES ('1', '16');
INSERT INTO `res_roles` VALUES ('2', '16');
INSERT INTO `res_roles` VALUES ('1', '17');
INSERT INTO `res_roles` VALUES ('2', '17');
INSERT INTO `res_roles` VALUES ('1', '18');
INSERT INTO `res_roles` VALUES ('2', '18');
INSERT INTO `res_roles` VALUES ('1', '19');
INSERT INTO `res_roles` VALUES ('2', '19');
INSERT INTO `res_roles` VALUES ('1', '20');
INSERT INTO `res_roles` VALUES ('2', '20');
INSERT INTO `res_roles` VALUES ('1', '31');
INSERT INTO `res_roles` VALUES ('2', '31');
INSERT INTO `res_roles` VALUES ('1', '32');
INSERT INTO `res_roles` VALUES ('2', '32');
INSERT INTO `res_roles` VALUES ('1', '33');
INSERT INTO `res_roles` VALUES ('2', '33');
INSERT INTO `res_roles` VALUES ('1', '34');
INSERT INTO `res_roles` VALUES ('2', '34');
INSERT INTO `res_roles` VALUES ('1', '35');
INSERT INTO `res_roles` VALUES ('2', '35');
INSERT INTO `res_roles` VALUES ('3', '35');
INSERT INTO `res_roles` VALUES ('1', '36');
INSERT INTO `res_roles` VALUES ('2', '36');
INSERT INTO `res_roles` VALUES ('3', '36');
INSERT INTO `res_roles` VALUES ('1', '37');
INSERT INTO `res_roles` VALUES ('2', '37');
INSERT INTO `res_roles` VALUES ('3', '37');
INSERT INTO `res_roles` VALUES ('1', '38');
INSERT INTO `res_roles` VALUES ('2', '38');
INSERT INTO `res_roles` VALUES ('3', '38');
INSERT INTO `res_roles` VALUES ('1', '39');
INSERT INTO `res_roles` VALUES ('2', '39');
INSERT INTO `res_roles` VALUES ('1', '40');
INSERT INTO `res_roles` VALUES ('2', '40');
INSERT INTO `res_roles` VALUES ('1', '41');
INSERT INTO `res_roles` VALUES ('2', '41');
INSERT INTO `res_roles` VALUES ('1', '42');
INSERT INTO `res_roles` VALUES ('2', '42');
INSERT INTO `res_roles` VALUES ('1', '43');
INSERT INTO `res_roles` VALUES ('2', '43');
INSERT INTO `res_roles` VALUES ('1', '44');
INSERT INTO `res_roles` VALUES ('2', '44');
INSERT INTO `res_roles` VALUES ('1', '45');
INSERT INTO `res_roles` VALUES ('2', '45');
INSERT INTO `res_roles` VALUES ('1', '46');
INSERT INTO `res_roles` VALUES ('2', '46');
INSERT INTO `res_roles` VALUES ('1', '47');
INSERT INTO `res_roles` VALUES ('2', '47');
INSERT INTO `res_roles` VALUES ('1', '49');
INSERT INTO `res_roles` VALUES ('2', '49');
INSERT INTO `res_roles` VALUES ('1', '50');
INSERT INTO `res_roles` VALUES ('2', '50');
INSERT INTO `res_roles` VALUES ('1', '51');
INSERT INTO `res_roles` VALUES ('2', '51');
INSERT INTO `res_roles` VALUES ('1', '53');
INSERT INTO `res_roles` VALUES ('2', '53');
INSERT INTO `res_roles` VALUES ('1', '54');
INSERT INTO `res_roles` VALUES ('2', '54');
INSERT INTO `res_roles` VALUES ('1', '55');
INSERT INTO `res_roles` VALUES ('2', '55');
INSERT INTO `res_roles` VALUES ('1', '57');
INSERT INTO `res_roles` VALUES ('2', '57');
INSERT INTO `res_roles` VALUES ('1', '58');
INSERT INTO `res_roles` VALUES ('2', '58');
INSERT INTO `res_roles` VALUES ('1', '59');
INSERT INTO `res_roles` VALUES ('2', '59');
INSERT INTO `res_roles` VALUES ('1', '60');
INSERT INTO `res_roles` VALUES ('2', '60');
INSERT INTO `res_roles` VALUES ('1', '61');
INSERT INTO `res_roles` VALUES ('2', '61');
INSERT INTO `res_roles` VALUES ('1', '62');
INSERT INTO `res_roles` VALUES ('2', '62');
INSERT INTO `res_roles` VALUES ('1', '63');
INSERT INTO `res_roles` VALUES ('2', '63');
INSERT INTO `res_roles` VALUES ('1', '64');
INSERT INTO `res_roles` VALUES ('2', '64');
INSERT INTO `res_roles` VALUES ('1', '65');
INSERT INTO `res_roles` VALUES ('2', '65');
INSERT INTO `res_roles` VALUES ('1', '97');
INSERT INTO `res_roles` VALUES ('2', '97');
INSERT INTO `res_roles` VALUES ('1', '98');
INSERT INTO `res_roles` VALUES ('2', '98');
INSERT INTO `res_roles` VALUES ('1', '99');
INSERT INTO `res_roles` VALUES ('2', '99');
INSERT INTO `res_roles` VALUES ('1', '100');
INSERT INTO `res_roles` VALUES ('2', '100');
INSERT INTO `res_roles` VALUES ('1', '101');
INSERT INTO `res_roles` VALUES ('2', '101');
INSERT INTO `res_roles` VALUES ('1', '102');
INSERT INTO `res_roles` VALUES ('2', '102');
INSERT INTO `res_roles` VALUES ('1', '103');
INSERT INTO `res_roles` VALUES ('2', '103');
INSERT INTO `res_roles` VALUES ('1', '104');
INSERT INTO `res_roles` VALUES ('2', '104');
INSERT INTO `res_roles` VALUES ('1', '105');
INSERT INTO `res_roles` VALUES ('2', '105');
INSERT INTO `res_roles` VALUES ('1', '106');
INSERT INTO `res_roles` VALUES ('2', '106');
INSERT INTO `res_roles` VALUES ('1', '107');
INSERT INTO `res_roles` VALUES ('2', '107');
INSERT INTO `res_roles` VALUES ('1', '108');
INSERT INTO `res_roles` VALUES ('2', '108');
INSERT INTO `res_roles` VALUES ('1', '109');
INSERT INTO `res_roles` VALUES ('2', '109');
INSERT INTO `res_roles` VALUES ('1', '110');
INSERT INTO `res_roles` VALUES ('2', '110');
INSERT INTO `res_roles` VALUES ('1', '112');
INSERT INTO `res_roles` VALUES ('2', '112');
INSERT INTO `res_roles` VALUES ('1', '113');
INSERT INTO `res_roles` VALUES ('2', '113');
INSERT INTO `res_roles` VALUES ('1', '115');
INSERT INTO `res_roles` VALUES ('2', '115');
INSERT INTO `res_roles` VALUES ('1', '116');
INSERT INTO `res_roles` VALUES ('2', '116');
INSERT INTO `res_roles` VALUES ('1', '117');
INSERT INTO `res_roles` VALUES ('2', '117');
INSERT INTO `res_roles` VALUES ('1', '118');
INSERT INTO `res_roles` VALUES ('2', '118');
INSERT INTO `res_roles` VALUES ('1', '119');
INSERT INTO `res_roles` VALUES ('2', '119');
INSERT INTO `res_roles` VALUES ('4', '119');
INSERT INTO `res_roles` VALUES ('1', '124');
INSERT INTO `res_roles` VALUES ('2', '124');
INSERT INTO `res_roles` VALUES ('1', '125');
INSERT INTO `res_roles` VALUES ('2', '125');
INSERT INTO `res_roles` VALUES ('1', '1111');
INSERT INTO `res_roles` VALUES ('2', '1111');
INSERT INTO `res_roles` VALUES ('1', '1112');
INSERT INTO `res_roles` VALUES ('2', '1112');
INSERT INTO `res_roles` VALUES ('4', '1112');
INSERT INTO `res_roles` VALUES ('1', '1113');
INSERT INTO `res_roles` VALUES ('2', '1113');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '48', '系统基础管理');
INSERT INTO `resources` VALUES ('2', '账号管理', '1', 'account', '1', '/background/account/list.html', '49', '账号管理');
INSERT INTO `resources` VALUES ('3', '角色管理', '1', 'role', '1', '/background/role/list.html', '53', '角色管理');
INSERT INTO `resources` VALUES ('4', '菜单管理', '1', 'resources', '1', '/background/resources/list.html', '58', '菜单查询');
INSERT INTO `resources` VALUES ('5', '新增账号', '2', 'account_add', '2', '/background/account/addUI.html', '50', '新增账号');
INSERT INTO `resources` VALUES ('6', '修改账号', '2', 'account_edit', '2', '/background/account/editUI.html', '51', '修改账号');
INSERT INTO `resources` VALUES ('7', '删除账号', '2', 'account_delete', '2', '/background/account/deleteById.html', '52', '删除账号');
INSERT INTO `resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/background/role/addUI.html', '54', '部门/科组的新增');
INSERT INTO `resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/background/role/editUI.html', '55', '部门/科组的修改');
INSERT INTO `resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/background/role/delete.html', '56', '部门/科组的删除');
INSERT INTO `resources` VALUES ('11', '角色授权', '3', 'role_perss', '2', '/background/menu/permissions.html', '57', '菜单授权');
INSERT INTO `resources` VALUES ('12', '数据字典管理', '0', 'dic_manager', '0', 'dic_manager', '66', '数据字典管理');
INSERT INTO `resources` VALUES ('13', '字典类型', '12', 'dic_type', '1', '/background/dicType/list.html', '70', '字典类型');
INSERT INTO `resources` VALUES ('14', '字典维护', '12', 'dic', '1', '/background/dic/list.html', '67', '字典维护');
INSERT INTO `resources` VALUES ('16', '修改字典', '14', 'dic_edit', '2', '/background/dic/editUI.html', '68', '修改字典');
INSERT INTO `resources` VALUES ('17', '删除字典', '14', 'dic_delete', '2', '/background/dic/delete.html', '69', '删除字典');
INSERT INTO `resources` VALUES ('18', '新增字典类型', '13', 'dicType_add', '2', '/background/dicType/addUI.html', '71', '新增字典类型');
INSERT INTO `resources` VALUES ('19', '修改字典类型', '13', 'dicType_edit', '2', '/background/dicType/editUI.html', '72', '修改字典类型');
INSERT INTO `resources` VALUES ('20', '删除字典类型', '13', 'dicType_delete', '2', '/background/dicType/delete.html', '73', '删除字典类型');
INSERT INTO `resources` VALUES ('31', '服务器配置管理', '0', 'server', '0', 'server', '44', '服务器配置管理');
INSERT INTO `resources` VALUES ('32', '预警设置', '31', 'ser_warn', '1', '/background/serverInfo/forecast.html', '45', '预警设置');
INSERT INTO `resources` VALUES ('33', '状态列表', '31', 'ser_list', '1', '/background/serverInfo/list.html', '46', '状态列表');
INSERT INTO `resources` VALUES ('34', '服务器状态', '31', 'ser_statu', '1', '/background/serverInfo/show.html', '47', '服务器状态');
INSERT INTO `resources` VALUES ('35', '登陆信息管理', '0', 'login', '0', 'login', '62', '登陆信息管理');
INSERT INTO `resources` VALUES ('36', '用户登录记录', '35', 'log_list', '1', '/background/userLoginList/query.html', '63', '用户登录记录');
INSERT INTO `resources` VALUES ('37', '操作日志管理', '0', 'log', '0', 'log', '64', '操作日志管理');
INSERT INTO `resources` VALUES ('38', '日志查询', '37', 'log', '1', '/background/log/list.html', '65', '日志查询');
INSERT INTO `resources` VALUES ('39', '新增菜单资源', '4', 'resources_add', '2', '/background/resources/addUI.html', '59', '新增菜单资源');
INSERT INTO `resources` VALUES ('40', '修改菜单资源', '4', 'resources_edit', '2', '/background/resources/editUI.html', '60', '修改菜单资源');
INSERT INTO `resources` VALUES ('41', '删除菜单资源', '4', 'resources_delete', '2', '/background/resources/delete.html', '61', '删除菜单资源');
INSERT INTO `resources` VALUES ('42', '基本信息管理', '0', 'info', '0', 'info', '0', '基本信息管理');
INSERT INTO `resources` VALUES ('43', '业务人员管理', '42', 'salesman', '1', '/background/salesman/list.html', '1', '业务人员管理');
INSERT INTO `resources` VALUES ('44', '新增业务员', '43', 'salesman_add', '2', '/background/salesman/addUI.html', '2', '新增业务员');
INSERT INTO `resources` VALUES ('45', '修改业务员', '43', 'salesman_edit', '2', '/background/salesman/editUI.html', '3', '修改业务员');
INSERT INTO `resources` VALUES ('46', '删除业务员', '43', 'salesman_delete', '2', '/background/salesman/deleteById.html', '4', '删除业务员');
INSERT INTO `resources` VALUES ('47', '布种信息管理', '42', 'cloth', '1', '/background/cloth/list.html', '5', '布种信息管理');
INSERT INTO `resources` VALUES ('49', '厂商&仓库', '42', 'factory', '1', '/background/factory/list.html', '6', '工厂信息管理');
INSERT INTO `resources` VALUES ('50', '工艺信息管理', '42', 'technology', '1', '/background/technology/list.html', '7', '工艺信息管理');
INSERT INTO `resources` VALUES ('51', '开版', '0', 'sampleInput', '0', 'sample', '36', '开版查询、开版录入');
INSERT INTO `resources` VALUES ('53', '开版查询', '51', 'sample', '1', '/background/sample/list.html', '39', '开版查询、开版录入');
INSERT INTO `resources` VALUES ('54', '开版进度', '51', 'sampleProcess', '1', '/background/sampleProcess/list.html', '38', '');
INSERT INTO `resources` VALUES ('55', '开版进度查询', '51', 'sampleProcessList', '1', '/background/sampleProcessList/list.html', '37', '');
INSERT INTO `resources` VALUES ('57', '下单', '0', 'order', '', '', '26', '');
INSERT INTO `resources` VALUES ('58', '下单预录入', '57', 'input', '1', '/background/input/list.html', '27', '');
INSERT INTO `resources` VALUES ('59', '下单录入', '57', 'inputsummary', '1', '/background/inputsummary/list.html', '28', '预下单录入汇总表');
INSERT INTO `resources` VALUES ('60', '下单录入汇总查询', '57', 'ordersummary', '1', '/background/ordersummary/list.html', '29', '下单录入汇总查询');
INSERT INTO `resources` VALUES ('61', '回货进度', '0', 'process', '1', '', '32', null);
INSERT INTO `resources` VALUES ('62', '回货进度', '61', 'process', '2', '/background/process/list.html', '35', null);
INSERT INTO `resources` VALUES ('63', '回货进度查询', '61', 'processList', '2', '/background/processList/list.html', '33', '回货进度查询');
INSERT INTO `resources` VALUES ('64', '回货进度查询-门市', '61', 'processListMs', '2', '/background/processListMs/list.html', '34', '回货进度查询-门市');
INSERT INTO `resources` VALUES ('65', '备注管理', '42', 'mark', '1', '/background/mark/list.html', '14', '备注管理');
INSERT INTO `resources` VALUES ('97', ' 坯布采购单', '42', 'allowance', '1', '/background/allowance/list.html', '8', ' 坯布余量信息管理');
INSERT INTO `resources` VALUES ('98', '花色基本资料', '42', 'flower', '1', '/background/flower/list.html', '10', '花色基本资料');
INSERT INTO `resources` VALUES ('99', '其它信息管理', '0', 'other', '0', 'other', '16', '其它信息管理');
INSERT INTO `resources` VALUES ('100', '记事本管理', '99', 'notebook', '1', '/background/notebook/list.html', '17', '记事本管理');
INSERT INTO `resources` VALUES ('101', '布种价格管理', '42', 'price', '1', '/background/price/list.html', '11', '布种价格管理');
INSERT INTO `resources` VALUES ('102', '打印下单管理', '0', 'print', '0', 'print', '18', '打印下单管理');
INSERT INTO `resources` VALUES ('103', '打印下单', '102', 'printsummary', '1', '/background/printsummary/list.html', '19', '打印下单');
INSERT INTO `resources` VALUES ('104', '打印通知', '102', 'notify', '1', '/background/notify/list.html', '20', '打印通知');
INSERT INTO `resources` VALUES ('105', '编号对应表', '42', 'code', '1', '/background/code/list.html', '12', '编号对应表');
INSERT INTO `resources` VALUES ('106', '导入导出报表', '0', 'report', '0', 'report', '21', '导入导出报表');
INSERT INTO `resources` VALUES ('107', '下单报表(布种)', '106', 'exportClothExcel', '1', '/background/report/exportCloth.html', '22', '下单报表(布种)');
INSERT INTO `resources` VALUES ('108', '下单报表(工厂)', '106', 'exportFactoryExcel', '1', '/background/report/exportFactory.html', '23', '下单报表(工厂)');
INSERT INTO `resources` VALUES ('109', '报表导出页面', '106', 'list', '1', '/background/report/list.html', '24', '报表导出页面');
INSERT INTO `resources` VALUES ('110', '备份管理', '106', 'db', '1', '/background/db/list.html', '25', '备份管理');
INSERT INTO `resources` VALUES ('112', '坯布供应商', '42', 'supplier', '1', '/background/supplier/list.html', '15', '坯布供应商');
INSERT INTO `resources` VALUES ('113', '控制管理', '42', 'password', '1', '/background/password/list.html', '13', '控制管理');
INSERT INTO `resources` VALUES ('115', '退货管理', '0', 'unsub', '', 'unsub', '40', '退货管理');
INSERT INTO `resources` VALUES ('116', '退货次品预登记', '115', 'unsubInput', '1', '/background/unsubInput/list.html', '41', '退货次品预登记');
INSERT INTO `resources` VALUES ('117', '次品验货', '115', 'examine', '1', '/background/examine/list.html', '42', '次品验货');
INSERT INTO `resources` VALUES ('118', '退货次品登记', '115', 'register', '1', '/background/register/list.html', '43', '退货次品登记');
INSERT INTO `resources` VALUES ('119', '单据审核', '0', 'audit', '', 'audit', '30', '单据审核');
INSERT INTO `resources` VALUES ('124', '胚布调拨单', '0', 'diaobo', null, 'diaobo', '0', '胚布调拨单');
INSERT INTO `resources` VALUES ('125', '胚布调拨单', '124', 'diaobo', '1', '/background/diaobo/list.html', '0', '胚布调拨单');
INSERT INTO `resources` VALUES ('1111', '坯布盘点单', '42', 'clothManage', '1', '/background/clothManage/list.html', null, '坯布管理');
INSERT INTO `resources` VALUES ('1112', '下单审核', '119', 'orderAudit', '1', '/background/orderAudit/list.html', '31', '下单审核');
INSERT INTO `resources` VALUES ('1113', '分点管理', '42', 'city', '1', '/background/city/list.html', '10', '分点管理');
