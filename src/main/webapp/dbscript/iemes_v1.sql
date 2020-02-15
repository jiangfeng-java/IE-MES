/*
Navicat MySQL Data Transfer

Source Server         : huawei
Source Server Version : 50641
Source Host           : 139.159.227.133:3306
Source Database       : iemes_v1

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2018-10-25 14:16:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ly_buttom
-- ----------------------------
DROP TABLE IF EXISTS `ly_buttom`;
CREATE TABLE `ly_buttom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `buttom` varchar(200) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_buttom
-- ----------------------------
INSERT INTO `ly_buttom` VALUES ('1', '新增', '<button type=\"button\" id=\"addFun\" class=\"btn btn-primary marR10\"><span class=\"glyphicon glyphicon-plus\"></span> 新增</button>', '');
INSERT INTO `ly_buttom` VALUES ('2', '编辑', '<button type=\"button\" id=\"editFun\" class=\"btn btn-info marR10\"><span class=\"glyphicon glyphicon-edit\"></span> 编辑</button>', null);
INSERT INTO `ly_buttom` VALUES ('3', '删除', '<button type=\"button\" id=\"delFun\" class=\"btn btn-danger marR10\"><span class=\"glyphicon glyphicon-trash\"></span> 删除</button>', null);
INSERT INTO `ly_buttom` VALUES ('4', '上传', '<button type=\"button\" id=\"upLoad\" class=\"btn btn-primary marR10\"><span class=\"glyphicon glyphicon-cloud-upload\"></span> 上传</button>', null);
INSERT INTO `ly_buttom` VALUES ('5', '下载', '<button type=\"button\" id=\"downLoad\" class=\"btn btn-primary marR10\"><span class=\"glyphicon glyphicon-cloud-download\"></span> 下载</button>', null);
INSERT INTO `ly_buttom` VALUES ('6', '上移', '<button type=\"button\" id=\"lyGridUp\" class=\"btn btn-success marR10\"><span class=\"glyphicon glyphicon-arrow-up\"></span> 上移</button>', null);
INSERT INTO `ly_buttom` VALUES ('7', '下移', '<button type=\"button\" id=\"lyGridDown\" class=\"btn btn btn-grey marR10\"><span class=\"glyphicon glyphicon-arrow-down\"></span> 下移</button>', null);
INSERT INTO `ly_buttom` VALUES ('8', '分配权限', '<button type=\"button\" id=\"permissions\" class=\"btn btn btn-grey marR10\"><span class=\"glyphicon glyphicon-cog\"></span> 分配权限</button>', null);
INSERT INTO `ly_buttom` VALUES ('9', '检索', '<button type=\"button\" class=\"btn btn-default\" id=\"search\"><span class=\"glyphicon glyphicon-search\"></span> 检索</button>', null);
INSERT INTO `ly_buttom` VALUES ('10', '保存', '<button type=\"button\" class=\"btn btn-success\" id=\"save\"><span class=\"glyphicon glyphicon-floppy-save\"></span> 保存</button>', null);

-- ----------------------------
-- Table structure for ly_item
-- ----------------------------
DROP TABLE IF EXISTS `ly_item`;
CREATE TABLE `ly_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_no` varchar(255) NOT NULL COMMENT '物料编号',
  `item_name` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `bom_no` varchar(255) DEFAULT NULL COMMENT '物料的BOM',
  `by_user` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `site` varchar(255) DEFAULT NULL,
  `state` int(1) NOT NULL,
  `item_type` varchar(255) DEFAULT NULL COMMENT '物料类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_item
-- ----------------------------
INSERT INTO `ly_item` VALUES ('70', 'PCB-20170514a001', 'PCB板', 'PCB板原材料', 'PCB-20170514b001', 'admin', '2017-05-14 22:34:28', 'PCB-20170514', '1', 'machining');
INSERT INTO `ly_item` VALUES ('71', 'PCB-20170514a002', '标签', '对PCB贴标', 'PCB-20170514b001', 'admin', '2017-05-14 22:34:39', 'PCB-20170514', '1', 'machining');
INSERT INTO `ly_item` VALUES ('72', 'PCB-20170514a003', '锡膏', '对PCB涂抹锡膏', 'PCB-20170514b001', 'admin', '2017-05-14 22:34:49', 'PCB-20170514', '1', 'machining');
INSERT INTO `ly_item` VALUES ('73', 'PCB-20170514a004', 'CPU', '贴在PCB上', 'PCB-20170514b001', 'admin', '2017-05-14 22:34:59', 'PCB-20170514', '1', 'machining');
INSERT INTO `ly_item` VALUES ('75', 'item_gk89_xigao', 'gk89物料的锡膏', 'gk89物料的锡膏', null, 'admin', '2017-08-31 10:02:01', 'test', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('76', 'item_gk89_xigao2', 'gk89物料的锡膏2', 'gk89物料的锡膏2', null, 'admin', '2017-08-31 10:02:58', 'test', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('77', 'item_gk89_gongtong', 'item_gk89_gongtong', 'item_gk89_gongtong', null, 'admin', '2017-08-31 10:03:17', 'test', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('78', 'item_gk89_wsfd', 'item_gk89_wsfd', 'item_gk89_wsfd', null, 'admin', '2017-08-31 10:03:28', 'test', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('79', 'item_gk89_f23', 'item_gk89_f23', 'item_gk89_f23', null, 'admin', '2017-08-31 10:03:40', 'test', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('80', 'item_gk89', 'item_gk89', 'item_gk89', 'itemList_gk89', 'admin', '2017-08-31 10:05:48', 'test', '1', 'machining');
INSERT INTO `ly_item` VALUES ('81', 'item_gk89_I_396', 'item_gk89_I_396', 'item_gk89_I_396', null, 'admin', '2017-09-02 11:05:19', 'gk89', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('82', 'item_gk89_D_387', 'item_gk89_D_387', 'item_gk89_D_387', null, 'admin', '2017-09-02 11:05:31', 'gk89', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('83', 'item_gk89_J_90', 'item_gk89_J_90', 'item_gk89_J_90', null, 'admin', '2017-09-02 11:05:43', 'gk89', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('84', 'itemMain_gk89_Z_552', 'itemMain_gk89_Z_552', 'itemMain_gk89_Z_552', 'itemBom_gk89_P_763', 'admin', '2017-09-02 11:10:28', 'gk89', '1', 'machining');
INSERT INTO `ly_item` VALUES ('85', 'XR_DM_LT120PCBA001', 'DM手机LT120主板', 'DM手机LT120主板', 'XR_DM_BOM_LT120PCBA001', 'admin', '2017-09-20 13:39:34', '*', '1', 'machining');
INSERT INTO `ly_item` VALUES ('86', 'XR_ITEM_XG', '锡膏', '锡膏', null, 'admin', '2017-09-20 13:04:26', '*', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('87', 'XR_ITEM_LTPCB001', 'LTPCB', 'LTPCB', null, 'admin', '2017-09-20 13:05:20', '*', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('88', 'XR_ITEM_R82PZ', '82欧姆排阻', '82欧姆排阻', null, 'admin', '2017-09-20 13:09:32', '*', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('89', 'XR_DM_SWGGS2F-Y', '继电阻', '含极性继电阻', null, 'admin', '2017-09-20 13:11:14', '*', '1', 'purchase');
INSERT INTO `ly_item` VALUES ('90', '111', '2323', '1323', '2323', 'admin', '2017-09-25 10:20:10', '*', '1', 'machining');

-- ----------------------------
-- Table structure for ly_item_bom
-- ----------------------------
DROP TABLE IF EXISTS `ly_item_bom`;
CREATE TABLE `ly_item_bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_bom_no` varchar(255) NOT NULL COMMENT '物料清单NO',
  `item_bom_name` varchar(255) NOT NULL COMMENT '物料清单名称',
  `item_bom_desc` varchar(255) DEFAULT NULL COMMENT '物料清单描述',
  `by_user` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `site` varchar(255) DEFAULT NULL,
  `state` int(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_item_bom
-- ----------------------------
INSERT INTO `ly_item_bom` VALUES ('22', 'XR_DM_BOM_LT120PCBA001', 'DM手机LT120主板BOM', 'DM手机LT120主板BOM', 'admin', '2017-09-20 13:15:59', '*', '1');
INSERT INTO `ly_item_bom` VALUES ('30', '1212', '3333', '1313', 'admin', '2017-09-25 09:35:28', '*', '1');

-- ----------------------------
-- Table structure for ly_item_bom_relation
-- ----------------------------
DROP TABLE IF EXISTS `ly_item_bom_relation`;
CREATE TABLE `ly_item_bom_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_bom_no` varchar(255) NOT NULL COMMENT '物料清单NO',
  `item_no` varchar(255) NOT NULL COMMENT '物料号',
  `use_number` varchar(255) DEFAULT '1' COMMENT '消耗数量',
  `balance_up` varchar(255) DEFAULT NULL COMMENT '结存上限',
  `balance_down` varchar(255) DEFAULT NULL COMMENT '结存下限',
  `site` varchar(255) NOT NULL COMMENT '站点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_item_bom_relation
-- ----------------------------
INSERT INTO `ly_item_bom_relation` VALUES ('102', 'bom01', 'hk', '1', '10', '2', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('106', 'SJ_BOM', 'SJ_01', '1', '10', '5', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('107', 'SJ_BOM', 'SJ_02', '1', '10', '5', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('108', 'SJ_BOM', 'SJ_03', '1', '10', '5', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('113', 'PCB-20170514b001', 'PCB-20170514a001', '1', '10', '2', 'PCB-20170514');
INSERT INTO `ly_item_bom_relation` VALUES ('114', 'PCB-20170514b001', 'PCB-20170514a002', '1', '10', '2', 'PCB-20170514');
INSERT INTO `ly_item_bom_relation` VALUES ('115', 'PCB-20170514b001', 'PCB-20170514a003', '1', '10', '2', 'PCB-20170514');
INSERT INTO `ly_item_bom_relation` VALUES ('116', 'PCB-20170514b001', 'PCB-20170514a004', '1', '10', '2', 'PCB-20170514');
INSERT INTO `ly_item_bom_relation` VALUES ('117', 'itemList_gk89', 'item_gk89_xigao', '1', '10', '2', 'test');
INSERT INTO `ly_item_bom_relation` VALUES ('118', 'itemList_gk89', 'item_gk89_xigao2', '2', '10', '5', 'test');
INSERT INTO `ly_item_bom_relation` VALUES ('119', 'itemList_gk89', 'item_gk89_gongtong', '3', '10', '2', 'test');
INSERT INTO `ly_item_bom_relation` VALUES ('120', 'itemList_gk89', 'item_gk89_wsfd', '9', '10', '5', 'test');
INSERT INTO `ly_item_bom_relation` VALUES ('121', 'itemList_gk89', 'item_gk89_f23', '3', '10', '3', 'test');
INSERT INTO `ly_item_bom_relation` VALUES ('128', 'itemBom_gk89_P_763', 'item_gk89_I_396', '1', '10', '3', 'gk89');
INSERT INTO `ly_item_bom_relation` VALUES ('129', 'itemBom_gk89_P_763', 'item_gk89_D_387', '1', '3', '1', 'gk89');
INSERT INTO `ly_item_bom_relation` VALUES ('130', 'itemBom_gk89_P_763', 'item_gk89_J_90', '1', '12', '6', 'gk89');
INSERT INTO `ly_item_bom_relation` VALUES ('135', 'XR_DM_BOM_LT120PCBA001', 'XR_ITEM_XG', '1', '3', '1', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('136', 'XR_DM_BOM_LT120PCBA001', 'XR_ITEM_LTPCB001', '1', '50', '10', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('137', 'XR_DM_BOM_LT120PCBA001', 'XR_ITEM_R82PZ', '2', '50', '30', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('138', 'XR_DM_BOM_LT120PCBA001', 'XR_DM_SWGGS2F-Y', '2', '50', '30', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('140', '1212', 'XR_ITEM_LTPCB001', '5', '50', '20', '*');
INSERT INTO `ly_item_bom_relation` VALUES ('141', '1212', 'XR_DM_SWGGS2F-Y', '6', '59', '30', '*');

-- ----------------------------
-- Table structure for ly_log
-- ----------------------------
DROP TABLE IF EXISTS `ly_log`;
CREATE TABLE `ly_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `methods` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_log
-- ----------------------------

-- ----------------------------
-- Table structure for ly_nc_code
-- ----------------------------
DROP TABLE IF EXISTS `ly_nc_code`;
CREATE TABLE `ly_nc_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_code` varchar(255) NOT NULL COMMENT '不合格代码',
  `nc_code_desc` varchar(255) DEFAULT NULL COMMENT '不合格代码描述',
  `state` varchar(255) NOT NULL COMMENT '不合格代码状态',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_nc_code
-- ----------------------------
INSERT INTO `ly_nc_code` VALUES ('25', '11', '11', '1', 'sukeyu', 'sukeyu', '2017-04-23 00:20:46');
INSERT INTO `ly_nc_code` VALUES ('26', '222', '222', '1', 'sukeyu', 'sukeyu', '2017-04-23 00:21:01');
INSERT INTO `ly_nc_code` VALUES ('33', 'gk89_nc01', 'gk89_nc01', '1', 'test', 'admin', '2017-08-31 10:06:56');
INSERT INTO `ly_nc_code` VALUES ('34', 'gk89_nc02', 'gk89_nc02', '1', 'test', 'admin', '2017-08-31 10:07:00');
INSERT INTO `ly_nc_code` VALUES ('35', 'gk89_nc03', 'gk89_nc03', '1', 'test', 'admin', '2017-08-31 10:07:05');
INSERT INTO `ly_nc_code` VALUES ('36', 'gk89_nc04', 'gk89_nc04', '1', 'test', 'admin', '2017-08-31 10:07:09');
INSERT INTO `ly_nc_code` VALUES ('37', 'gk89_nc05', 'gk89_nc05', '1', 'test', 'admin', '2017-08-31 10:07:13');
INSERT INTO `ly_nc_code` VALUES ('38', 'gk89_nc06', 'gk89_nc06', '1', 'test', 'admin', '2017-08-31 10:07:18');
INSERT INTO `ly_nc_code` VALUES ('39', 'gk89_nc07', 'gk89_nc07', '1', 'test', 'admin', '2017-08-31 10:07:22');
INSERT INTO `ly_nc_code` VALUES ('40', 'gk89_nc08', 'gk89_nc08', '1', 'test', 'admin', '2017-08-31 10:07:26');
INSERT INTO `ly_nc_code` VALUES ('41', 'gk89_nc09', 'gk89_nc09', '1', 'test', 'admin', '2017-08-31 10:07:31');
INSERT INTO `ly_nc_code` VALUES ('42', 'gk89_nc10', 'gk89_nc10', '1', 'test', 'admin', '2017-08-31 10:07:37');
INSERT INTO `ly_nc_code` VALUES ('43', 'gk89_ncCode_H852', 'gk89_ncCode_H852', '1', 'gk89', 'admin', '2017-09-02 11:12:58');
INSERT INTO `ly_nc_code` VALUES ('44', 'gk89_ncCode_Q914', 'gk89_ncCode_Q914', '1', 'gk89', 'admin', '2017-09-02 11:13:12');
INSERT INTO `ly_nc_code` VALUES ('45', 'gk89_ncCode_W4', 'gk89_ncCode_W4', '1', 'gk89', 'admin', '2017-09-02 11:13:23');
INSERT INTO `ly_nc_code` VALUES ('46', 'gk89_ncCode_Z696', 'gk89_ncCode_Z696', '1', 'gk89', 'admin', '2017-09-02 11:13:36');
INSERT INTO `ly_nc_code` VALUES ('47', 'XR_NC_BP_001', '锡桥', '1', '*', 'admin', '2017-09-20 13:19:22');
INSERT INTO `ly_nc_code` VALUES ('48', 'XR_NC_REFLOW_001', '溫度偏高', '1', '*', 'admin', '2017-09-20 13:21:26');
INSERT INTO `ly_nc_code` VALUES ('49', 'XR_NC_OPTP_001', '元件偏位', '1', '*', 'admin', '2017-09-20 13:22:44');

-- ----------------------------
-- Table structure for ly_nc_code_group
-- ----------------------------
DROP TABLE IF EXISTS `ly_nc_code_group`;
CREATE TABLE `ly_nc_code_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_code_group_no` varchar(255) NOT NULL COMMENT '不合格组代码',
  `nc_code_group_desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `state` int(1) NOT NULL DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_nc_code_group
-- ----------------------------
INSERT INTO `ly_nc_code_group` VALUES ('19', '11', '11', 'sukeyu', 'sukeyu', '1', '2017-04-23 00:20:38');
INSERT INTO `ly_nc_code_group` VALUES ('25', 'gk89_ncgroup01', 'gk89_ncgroup01', 'test', 'admin', '1', '2017-08-31 10:07:58');
INSERT INTO `ly_nc_code_group` VALUES ('26', 'gk89_ncCodeGroup_L877', 'gk89_ncCodeGroup_L877', 'gk89', 'admin', '1', '2017-09-02 11:12:41');
INSERT INTO `ly_nc_code_group` VALUES ('27', 'XR_NCGROUP_SMT', '鑫锐SMT工艺统一不良代码组', '*', 'admin', '1', '2017-09-20 13:23:22');

-- ----------------------------
-- Table structure for ly_nc_code_relation
-- ----------------------------
DROP TABLE IF EXISTS `ly_nc_code_relation`;
CREATE TABLE `ly_nc_code_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_code_group` varchar(255) NOT NULL COMMENT '不合格代码组NO',
  `nc_code` varchar(255) NOT NULL COMMENT '不合格代码',
  `site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_nc_code_relation
-- ----------------------------
INSERT INTO `ly_nc_code_relation` VALUES ('25', '11', '11', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('26', '2222', '222', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('27', 'nc01', 'ncc01', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('28', 'nc01', 'ncc02', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('29', 'WG_NC', 'HK_NC', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('30', 'ZL_NC', 'WIFI_NC', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('31', 'gk89_ncgroup01', 'gk89_nc01', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('32', 'gk89_ncgroup01', 'gk89_nc02', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('33', 'gk89_ncgroup01', 'gk89_nc03', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('34', 'gk89_ncgroup01', 'gk89_nc04', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('35', 'gk89_ncgroup01', 'gk89_nc05', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('36', '', 'gk89_nc06', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('37', '', 'gk89_nc07', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('38', '', 'gk89_nc08', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('39', '', 'gk89_nc09', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('40', '', 'gk89_nc10', 'test');
INSERT INTO `ly_nc_code_relation` VALUES ('41', 'gk89_ncCodeGroup_L877', 'gk89_ncCode_H852', 'gk89');
INSERT INTO `ly_nc_code_relation` VALUES ('42', 'gk89_ncCodeGroup_L877', 'gk89_ncCode_Q914', 'gk89');
INSERT INTO `ly_nc_code_relation` VALUES ('43', 'gk89_ncCodeGroup_L877', 'gk89_ncCode_W4', 'gk89');
INSERT INTO `ly_nc_code_relation` VALUES ('44', 'gk89_ncCodeGroup_L877', 'gk89_ncCode_Z696', 'gk89');
INSERT INTO `ly_nc_code_relation` VALUES ('45', 'XR_NCGROUP_SMT', 'XR_NC_BP_001', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('46', 'XR_NCGROUP_SMT', 'XR_NC_REFLOW_001', '*');
INSERT INTO `ly_nc_code_relation` VALUES ('47', 'XR_NCGROUP_SMT', 'XR_NC_OPTP_001', '*');

-- ----------------------------
-- Table structure for ly_nc_repair
-- ----------------------------
DROP TABLE IF EXISTS `ly_nc_repair`;
CREATE TABLE `ly_nc_repair` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sfc` varchar(255) DEFAULT NULL COMMENT 'sfc',
  `shoporder` varchar(255) DEFAULT NULL COMMENT '工单',
  `workcenter` varchar(255) DEFAULT NULL COMMENT '车间',
  `workcenter_child` varchar(255) DEFAULT NULL COMMENT '产线',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作',
  `repair_desc` varchar(255) DEFAULT NULL COMMENT '处置说明',
  `site` varchar(255) DEFAULT NULL COMMENT '站点',
  `nc_code` varchar(255) DEFAULT NULL COMMENT '不良代码',
  `nc_code_group` varchar(255) DEFAULT NULL COMMENT '不良代码组',
  `by_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_nc_repair
-- ----------------------------
INSERT INTO `ly_nc_repair` VALUES ('1', '11', 'gd01', 'w01', 'wl01', 'p02', '维修', '*', 'ncc01', 'nc01', null, null);
INSERT INTO `ly_nc_repair` VALUES ('2', '3333', 'gd01', 'w01', 'wl01', 'op01', 'weiixu', '*', 'ncc02', 'nc01', null, null);
INSERT INTO `ly_nc_repair` VALUES ('3', '22', 'gd01', 'w01', 'wl01', 'op01', '', '*', 'ncc02', 'nc01', null, null);
INSERT INTO `ly_nc_repair` VALUES ('4', 'sfc45656774864567897', 'gk89_2017-08-31', 'gk89_workcenter', 'gb89_workline', 'gk89_operation_aoi', '', 'test', 'gk89_nc01', 'gk89_ncgroup01', null, null);
INSERT INTO `ly_nc_repair` VALUES ('13', 'sfc20170904181717000000', 'shopOrder_gk89_L827', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', '报废掉了', 'gk89', 'gk89_ncCode_Z696', 'gk89_ncCodeGroup_L877', null, null);
INSERT INTO `ly_nc_repair` VALUES ('15', 'sfc20170904181717000001', 'shopOrder_gk89_L827', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', '跳到第三步', 'gk89', 'gk89_ncCode_H852', 'gk89_ncCodeGroup_L877', null, null);
INSERT INTO `ly_nc_repair` VALUES ('16', 'sfc20170904181717000002', 'shopOrder_gk89_L827', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', 'sfc20170904181717000002报废 了', 'gk89', 'gk89_ncCode_Z696', 'gk89_ncCodeGroup_L877', null, null);
INSERT INTO `ly_nc_repair` VALUES ('20', 'sfc20170904181717000003', 'shopOrder_gk89_L827', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', '1111', 'gk89', 'gk89_ncCode_Q914', 'gk89_ncCodeGroup_L877', null, null);
INSERT INTO `ly_nc_repair` VALUES ('21', 'sfc20170904181717000003', 'shopOrder_gk89_L827', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', 'sfc20170904181717000003      111', 'gk89', 'gk89_ncCode_Q914', 'gk89_ncCodeGroup_L877', null, null);
INSERT INTO `ly_nc_repair` VALUES ('22', 'sfc20170904181717000004', 'shopOrder_gk89_L827', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', 'dddddddddddddd', 'gk89', 'gk89_ncCode_Z696', 'gk89_ncCodeGroup_L877', null, null);
INSERT INTO `ly_nc_repair` VALUES ('23', 'sfc20170905214351000001', 'shopOrder_gk89_U381', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'operation_gk89_AOI_762', '跳到第一步。。。。。。。。。。。。。。', 'gk89', 'gk89_ncCode_Z696', 'gk89_ncCodeGroup_L877', 'admin', '2017-09-05 22:37:01');
INSERT INTO `ly_nc_repair` VALUES ('24', 'sfc20170920133354000001', 'XR_DM_201709180001', 'XR_WORKCENTER_01', 'XR_WORKLINE_01', 'XR_OPT_SMT_AOIOP', '检修无误', '*', 'XR_NC_REFLOW_001', 'XR_NCGROUP_SMT', 'admin', '2017-09-20 13:42:49');

-- ----------------------------
-- Table structure for ly_operation
-- ----------------------------
DROP TABLE IF EXISTS `ly_operation`;
CREATE TABLE `ly_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_no` varchar(255) NOT NULL,
  `operation_description` varchar(255) DEFAULT NULL,
  `workcenter` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `byUser` varchar(255) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(1) NOT NULL,
  `operation_type` varchar(255) NOT NULL COMMENT '操作类型（正常、维修、测试）；',
  `default_resource` varchar(255) DEFAULT NULL COMMENT '缺省资源',
  `resoucre_type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_operation
-- ----------------------------
INSERT INTO `ly_operation` VALUES ('90', '001', '001', '2222', 'sukeyu', 'sukeyu', '2017-04-23 00:16:15', '1', 'common', '001', 'default');
INSERT INTO `ly_operation` VALUES ('99', 'PCB-20170514001', '自动上板机', 'PCB-2017051400', 'PCB-20170514', 'admin', '2017-05-21 12:48:59', '1', 'common', 'PCB-20170514001', 'default');
INSERT INTO `ly_operation` VALUES ('100', 'PCB-20170514002', '自动贴标机', 'PCB-2017051401', 'PCB-20170514', 'admin', '2017-05-14 22:28:27', '1', 'common', 'PCB-20170514002', 'default');
INSERT INTO `ly_operation` VALUES ('101', 'PCB-20170514003', '自动印刷机', 'PCB-2017051401', 'PCB-20170514', 'admin', '2017-05-14 22:28:41', '1', 'common', 'PCB-20170514003', 'default');
INSERT INTO `ly_operation` VALUES ('102', 'PCB-20170514004', '高速贴片机', 'PCB-2017051401', 'PCB-20170514', 'admin', '2017-05-14 22:28:55', '1', 'common', 'PCB-20170514004', 'default');
INSERT INTO `ly_operation` VALUES ('103', 'gk89_operation_sb', 'gk89上板操作', 'gb89_workline', 'test', 'admin', '2017-08-31 09:58:40', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('104', 'gk89_operation_yinshua', 'gk89印刷操作', 'gb89_workline', 'test', 'admin', '2017-08-31 09:59:12', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('105', 'gk89_operation_aoi', 'gk89 aoi操作', 'gb89_workline', 'test', 'admin', '2017-08-31 09:59:37', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('106', 'operation_gk89_SB_150', 'operation_gk89_SB_150', 'workline_gk89_E_73', 'gk89', 'admin', '2017-09-02 11:02:24', '1', 'common', 'resource_gk89_SBJ_438', 'default');
INSERT INTO `ly_operation` VALUES ('107', 'operation_gk89_TB_64', 'operation_gk89_TB_64', 'workline_gk89_E_73', 'gk89', 'admin', '2017-09-02 11:02:32', '1', 'common', 'resource_gk89_TBJ_960', 'default');
INSERT INTO `ly_operation` VALUES ('108', 'operation_gk89_AOI_762', 'operation_gk89_AOI_762', 'workline_gk89_E_73', 'gk89', 'admin', '2017-09-02 11:02:40', '1', 'common', 'resource_gk89_AOI_601', 'default');
INSERT INTO `ly_operation` VALUES ('109', 'XR_OPT_SMT_YSOP', '鑫锐SMT产线印刷操作', 'XR_WORKLINE_01', '*', 'admin', '2017-09-20 12:53:21', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('110', 'XR_OPT_SMT_TPOP', '鑫锐SMT产线贴片操作', 'XR_WORKLINE_01', '*', 'admin', '2017-09-20 12:54:40', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('111', 'XR_OPT_SMT_SPIOP', '鑫锐SMT产线SPI操作', 'XR_WORKLINE_01', '*', 'admin', '2017-09-20 12:55:26', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('112', 'XR_OPT_SMT_HLHOP', '鑫锐SMT产线回流焊操作', 'XR_WORKLINE_01', '*', 'admin', '2017-09-20 12:55:56', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('113', 'XR_OPT_SMT_AOIOP', '鑫锐SMT产线AOI操作', 'XR_WORKLINE_01', '*', 'admin', '2017-09-20 12:56:26', '1', 'common', null, 'default');
INSERT INTO `ly_operation` VALUES ('115', '12', 'wqweer', 'XR_WORKLINE_01', '*', 'admin', '2017-09-21 09:47:07', '1', 'common', 'XR_RES_YSJZ003', 'default');

-- ----------------------------
-- Table structure for ly_operation_pod
-- ----------------------------
DROP TABLE IF EXISTS `ly_operation_pod`;
CREATE TABLE `ly_operation_pod` (
  `operation_no` varchar(255) NOT NULL COMMENT '操作',
  `pod_button_no` varchar(255) NOT NULL COMMENT 'POD功能按钮',
  PRIMARY KEY (`operation_no`,`pod_button_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_operation_pod
-- ----------------------------
INSERT INTO `ly_operation_pod` VALUES ('100', '25');
INSERT INTO `ly_operation_pod` VALUES ('100', '26');
INSERT INTO `ly_operation_pod` VALUES ('100', '27');
INSERT INTO `ly_operation_pod` VALUES ('101', '25');
INSERT INTO `ly_operation_pod` VALUES ('101', '26');
INSERT INTO `ly_operation_pod` VALUES ('101', '27');
INSERT INTO `ly_operation_pod` VALUES ('102', '25');
INSERT INTO `ly_operation_pod` VALUES ('102', '26');
INSERT INTO `ly_operation_pod` VALUES ('102', '27');
INSERT INTO `ly_operation_pod` VALUES ('103', '25');
INSERT INTO `ly_operation_pod` VALUES ('103', '26');
INSERT INTO `ly_operation_pod` VALUES ('104', '25');
INSERT INTO `ly_operation_pod` VALUES ('104', '26');
INSERT INTO `ly_operation_pod` VALUES ('104', '27');
INSERT INTO `ly_operation_pod` VALUES ('105', '25');
INSERT INTO `ly_operation_pod` VALUES ('105', '26');
INSERT INTO `ly_operation_pod` VALUES ('105', '27');
INSERT INTO `ly_operation_pod` VALUES ('105', '28');
INSERT INTO `ly_operation_pod` VALUES ('106', '25');
INSERT INTO `ly_operation_pod` VALUES ('106', '26');
INSERT INTO `ly_operation_pod` VALUES ('107', '25');
INSERT INTO `ly_operation_pod` VALUES ('107', '26');
INSERT INTO `ly_operation_pod` VALUES ('107', '27');
INSERT INTO `ly_operation_pod` VALUES ('108', '25');
INSERT INTO `ly_operation_pod` VALUES ('108', '26');
INSERT INTO `ly_operation_pod` VALUES ('108', '28');
INSERT INTO `ly_operation_pod` VALUES ('109', '25');
INSERT INTO `ly_operation_pod` VALUES ('109', '26');
INSERT INTO `ly_operation_pod` VALUES ('110', '25');
INSERT INTO `ly_operation_pod` VALUES ('110', '26');
INSERT INTO `ly_operation_pod` VALUES ('110', '27');
INSERT INTO `ly_operation_pod` VALUES ('111', '25');
INSERT INTO `ly_operation_pod` VALUES ('111', '26');
INSERT INTO `ly_operation_pod` VALUES ('111', '28');
INSERT INTO `ly_operation_pod` VALUES ('112', '25');
INSERT INTO `ly_operation_pod` VALUES ('112', '26');
INSERT INTO `ly_operation_pod` VALUES ('113', '25');
INSERT INTO `ly_operation_pod` VALUES ('113', '26');
INSERT INTO `ly_operation_pod` VALUES ('113', '28');
INSERT INTO `ly_operation_pod` VALUES ('115', '25');
INSERT INTO `ly_operation_pod` VALUES ('115', '26');
INSERT INTO `ly_operation_pod` VALUES ('90', '25');
INSERT INTO `ly_operation_pod` VALUES ('90', '26');
INSERT INTO `ly_operation_pod` VALUES ('90', '27');
INSERT INTO `ly_operation_pod` VALUES ('90', '28');
INSERT INTO `ly_operation_pod` VALUES ('99', '25');
INSERT INTO `ly_operation_pod` VALUES ('99', '26');

-- ----------------------------
-- Table structure for ly_operation_resource
-- ----------------------------
DROP TABLE IF EXISTS `ly_operation_resource`;
CREATE TABLE `ly_operation_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operationResource_no` varchar(255) NOT NULL COMMENT '资源名称',
  `operationResource_desc` varchar(255) DEFAULT NULL,
  `operation` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `byUser` varchar(255) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_operation_resource
-- ----------------------------
INSERT INTO `ly_operation_resource` VALUES ('45', '001', '001', '001', 'sukeyu', 'sukeyu', '2017-04-23 00:14:31', '1');
INSERT INTO `ly_operation_resource` VALUES ('48', 'PCB-20170514001', '自动上板机', 'PCB-20170514002', 'PCB-20170514', 'admin', '2017-05-21 12:48:20', '1');
INSERT INTO `ly_operation_resource` VALUES ('49', 'PCB-20170514002', '自动贴标机', 'PCB-20170514002', 'PCB-20170514', 'admin', '2017-05-14 22:24:37', '1');
INSERT INTO `ly_operation_resource` VALUES ('50', 'PCB-20170514003', '自动印刷机', 'PCB-20170514003', 'PCB-20170514', 'admin', '2017-05-14 22:25:05', '1');
INSERT INTO `ly_operation_resource` VALUES ('51', 'PCB-20170514004', '高速贴片机', 'PCB-20170514004', 'PCB-20170514', 'admin', '2017-05-14 22:25:44', '1');
INSERT INTO `ly_operation_resource` VALUES ('52', 'gk89_resource_sb', 'gk89_resource_sb', 'gk89_operation_sb', 'test', 'admin', '2017-08-31 10:00:09', '1');
INSERT INTO `ly_operation_resource` VALUES ('53', 'gk89_resource_yinshua', 'gk89_resource_yinshua', 'gk89_operation_yinshua', 'test', 'admin', '2017-08-31 10:00:21', '1');
INSERT INTO `ly_operation_resource` VALUES ('54', 'gk89_resource_aoi', 'gk89_resource_aoi', 'gk89_operation_aoi', 'test', 'admin', '2017-08-31 10:00:31', '1');
INSERT INTO `ly_operation_resource` VALUES ('55', 'resource_gk89_SBJ_438', 'resource_gk89_SBJ_438', 'operation_gk89_SB_150', 'gk89', 'admin', '2017-09-02 11:01:27', '1');
INSERT INTO `ly_operation_resource` VALUES ('56', 'resource_gk89_TBJ_960', 'resource_gk89_TBJ_960', 'operation_gk89_TB_64', 'gk89', 'admin', '2017-09-02 11:01:48', '1');
INSERT INTO `ly_operation_resource` VALUES ('57', 'resource_gk89_AOI_601', 'resource_gk89_AOI_601', 'operation_gk89_AOI_762', 'gk89', 'admin', '2017-09-02 11:02:04', '1');
INSERT INTO `ly_operation_resource` VALUES ('58', 'XR_RES_YSJZ003', '鑫锐一号产线3号印刷机', 'XR_OPT_SMT_YSOP', '*', 'admin', '2017-09-20 12:57:24', '1');
INSERT INTO `ly_operation_resource` VALUES ('59', 'XR_RES_SPIZ001', '鑫锐一号产线1号SPI设备', '12', '*', 'admin', '2017-09-21 09:50:08', '1');
INSERT INTO `ly_operation_resource` VALUES ('60', 'XR_RES_GSTPJZ001', '鑫锐一号产线贴片机', 'XR_OPT_SMT_TPOP', '*', 'admin', '2017-09-20 12:58:42', '1');
INSERT INTO `ly_operation_resource` VALUES ('61', 'XR_RES_HLHZ001', '鑫锐一号产线回流焊', 'XR_OPT_SMT_HLHOP', '*', 'admin', '2017-09-20 12:59:09', '1');
INSERT INTO `ly_operation_resource` VALUES ('62', 'XR_RES_AOIZ001', '鑫锐一号产线AOI设备', 'XR_OPT_SMT_AOIOP', '*', 'admin', '2017-09-20 12:59:28', '1');
INSERT INTO `ly_operation_resource` VALUES ('63', '1', '好用', 'XR_OPT_SMT_AOIOP', '*', 'admin', '2017-09-21 11:03:49', '1');

-- ----------------------------
-- Table structure for ly_pod_button
-- ----------------------------
DROP TABLE IF EXISTS `ly_pod_button`;
CREATE TABLE `ly_pod_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pod_button_no` varchar(255) NOT NULL COMMENT 'POD按钮编号',
  `pod_button_name` varchar(255) NOT NULL COMMENT 'POD按钮名称',
  `pod_function` varchar(255) NOT NULL COMMENT 'POD按钮方法地址',
  `pod_icon` varchar(255) NOT NULL COMMENT 'POD按钮样式',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_pod_button
-- ----------------------------
INSERT INTO `ly_pod_button` VALUES ('25', 'start', '开始', 'start', 'btn btn-primary marR10', '*', 'admin', '2017-03-20 16:04:39');
INSERT INTO `ly_pod_button` VALUES ('26', 'finish', '完成', 'finish', 'btn btn-success', '*', 'admin', '2017-03-20 16:05:29');
INSERT INTO `ly_pod_button` VALUES ('27', 'assembling', '装配', 'assembling', 'btn btn-info', '*', 'admin', '2017-03-20 16:05:49');
INSERT INTO `ly_pod_button` VALUES ('28', 'recode_nccode', '记录不良', 'recode_nccode', 'btn btn-warning', '*', 'admin', '2017-03-20 16:06:14');

-- ----------------------------
-- Table structure for ly_pod_function
-- ----------------------------
DROP TABLE IF EXISTS `ly_pod_function`;
CREATE TABLE `ly_pod_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pod_function_no` varchar(255) NOT NULL COMMENT 'POD功能NO',
  `pod_function_name` varchar(255) NOT NULL COMMENT 'POD功能名称',
  `pod_function_url` varchar(255) NOT NULL COMMENT 'PDD资源路径',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_pod_function
-- ----------------------------
INSERT INTO `ly_pod_function` VALUES ('15', 'start', 'start', 'assemblingStart()', '*', '2017-08-31 10:24:48', 'admin');
INSERT INTO `ly_pod_function` VALUES ('16', 'finish', 'finish', 'assemblingFinish()', '*', '2017-08-31 10:25:02', 'admin');
INSERT INTO `ly_pod_function` VALUES ('17', 'recode_nccode', 'recode_nccode', 'recode_nccode_ui()', '*', '2017-08-31 10:25:17', 'admin');
INSERT INTO `ly_pod_function` VALUES ('18', 'assembling', 'assembling', 'assemblingUI()', '*', '2017-08-31 10:25:41', 'admin');

-- ----------------------------
-- Table structure for ly_process_route
-- ----------------------------
DROP TABLE IF EXISTS `ly_process_route`;
CREATE TABLE `ly_process_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_route` text NOT NULL COMMENT '工艺路线',
  `process_route_type` text COMMENT '工艺路线类型',
  `process_route_desc` text COMMENT '工艺路线描述',
  `state` decimal(1,0) NOT NULL COMMENT '状态',
  `allowpass` decimal(1,0) DEFAULT NULL COMMENT '是否允许跳过',
  `data` longtext NOT NULL COMMENT '工艺路线数据',
  `siteBo` text NOT NULL COMMENT '站点',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` text NOT NULL COMMENT '创建人',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` text COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_process_route
-- ----------------------------
INSERT INTO `ly_process_route` VALUES ('74', '2017051400a', null, 'PCB贴片', '1', '1', '{\"title\":\"工艺路线绘制\",\"nodes\":{\"PCB-20170514001\":{\"name\":\"PCB-20170514001\",\"left\":101,\"top\":84,\"type\":\"PCB-20170514001\",\"width\":86,\"height\":24,\"alt\":true},\"PCB-20170514002\":{\"name\":\"PCB-20170514002\",\"left\":100,\"top\":157,\"type\":\"PCB-20170514002\",\"width\":86,\"height\":24,\"alt\":true},\"PCB-20170514003\":{\"name\":\"PCB-20170514003\",\"left\":101,\"top\":221,\"type\":\"PCB-20170514003\",\"width\":86,\"height\":24,\"alt\":true},\"PCB-20170514004\":{\"name\":\"PCB-20170514004\",\"left\":99,\"top\":283,\"type\":\"PCB-20170514004\",\"width\":86,\"height\":24,\"alt\":true}},\"lines\":{\"demo_line_2\":{\"type\":\"sl\",\"from\":\"PCB-20170514002\",\"to\":\"PCB-20170514003\",\"name\":\"\"},\"demo_line_3\":{\"type\":\"sl\",\"from\":\"PCB-20170514003\",\"to\":\"PCB-20170514004\",\"name\":\"\"},\"demo_line_4\":{\"type\":\"sl\",\"from\":\"PCB-20170514001\",\"to\":\"PCB-20170514002\",\"name\":\"\",\"alt\":true}},\"areas\":{},\"initNum\":5}', 'PCB-20170514', '2017-05-21 12:50:43', 'admin', null, null);
INSERT INTO `ly_process_route` VALUES ('75', 'gk89', null, 'gk89工艺路线', '1', '1', '{\"title\":\"工艺路线绘制\",\"nodes\":{\"gk89_operation_sb\":{\"name\":\"gk89_operation_sb\",\"left\":242,\"top\":144,\"type\":\"gk89_operation_sb\",\"width\":86,\"height\":24,\"alt\":true},\"gk89_operation_yinshua\":{\"name\":\"gk89_operation_yinshua\",\"left\":242,\"top\":258,\"type\":\"gk89_operation_yinshua\",\"width\":86,\"height\":24,\"alt\":true},\"gk89_operation_aoi\":{\"name\":\"gk89_operation_aoi\",\"left\":237,\"top\":379,\"type\":\"gk89_operation_aoi\",\"width\":86,\"height\":24,\"alt\":true}},\"lines\":{\"demo_line_1\":{\"type\":\"sl\",\"from\":\"gk89_operation_sb\",\"to\":\"gk89_operation_yinshua\",\"name\":\"\"},\"demo_line_2\":{\"type\":\"sl\",\"from\":\"gk89_operation_yinshua\",\"to\":\"gk89_operation_aoi\",\"name\":\"\"}},\"areas\":{},\"initNum\":3}', 'test', '2017-09-01 09:50:23', 'admin', null, null);
INSERT INTO `ly_process_route` VALUES ('76', 'processRoute_gk89_C_637', null, 'processRoute_gk89_C_637', '1', '1', '{\"title\":\"工艺路线绘制\",\"nodes\":{\"operation_gk89_SB_150\":{\"name\":\"operation_gk89_SB_150\",\"left\":266,\"top\":110,\"type\":\"operation_gk89_SB_150\",\"width\":201,\"height\":46,\"alt\":true},\"operation_gk89_TB_64\":{\"name\":\"operation_gk89_TB_64\",\"left\":278,\"top\":199,\"type\":\"operation_gk89_TB_64\",\"width\":215,\"height\":57,\"alt\":true},\"operation_gk89_AOI_762\":{\"name\":\"operation_gk89_AOI_762\",\"left\":290,\"top\":296,\"type\":\"operation_gk89_AOI_762\",\"width\":213,\"height\":47,\"alt\":true}},\"lines\":{\"demo_line_1\":{\"type\":\"sl\",\"from\":\"operation_gk89_SB_150\",\"to\":\"operation_gk89_TB_64\",\"name\":\"\"},\"demo_line_2\":{\"type\":\"sl\",\"from\":\"operation_gk89_TB_64\",\"to\":\"operation_gk89_AOI_762\",\"name\":\"\"}},\"areas\":{},\"initNum\":3}', 'gk89', '2017-09-06 16:47:53', 'admin', null, null);
INSERT INTO `ly_process_route` VALUES ('77', 'XR_FLOW_SMT001', null, '鑫锐SMT板工艺路线', '1', '1', '{\"title\":\"工艺路线绘制\",\"nodes\":{\"XR_OPT_SMT_YSOP\":{\"name\":\"XR_OPT_SMT_YSOP\",\"left\":103,\"top\":67,\"type\":\"XR_OPT_SMT_YSOP\",\"width\":184,\"height\":24,\"alt\":true},\"XR_OPT_SMT_TPOP\":{\"name\":\"XR_OPT_SMT_TPOP\",\"left\":225,\"top\":336,\"type\":\"XR_OPT_SMT_TPOP\",\"width\":256,\"height\":33,\"alt\":true},\"XR_OPT_SMT_SPIOP\":{\"name\":\"XR_OPT_SMT_SPIOP\",\"left\":123,\"top\":194,\"type\":\"XR_OPT_SMT_SPIOP\",\"width\":191,\"height\":24,\"alt\":true},\"XR_OPT_SMT_HLHOP\":{\"name\":\"XR_OPT_SMT_HLHOP\",\"left\":121,\"top\":467,\"type\":\"XR_OPT_SMT_HLHOP\",\"width\":246,\"height\":28,\"alt\":true},\"XR_OPT_SMT_AOIOP\":{\"name\":\"XR_OPT_SMT_AOIOP\",\"left\":283,\"top\":571,\"type\":\"XR_OPT_SMT_AOIOP\",\"width\":218,\"height\":24,\"alt\":true}},\"lines\":{\"demo_line_1\":{\"type\":\"tb\",\"M\":142.5,\"from\":\"XR_OPT_SMT_YSOP\",\"to\":\"XR_OPT_SMT_SPIOP\",\"name\":\"\"},\"demo_line_2\":{\"type\":\"tb\",\"M\":279.25,\"from\":\"XR_OPT_SMT_SPIOP\",\"to\":\"XR_OPT_SMT_TPOP\",\"name\":\"\"},\"demo_line_3\":{\"type\":\"tb\",\"M\":412.75,\"from\":\"XR_OPT_SMT_TPOP\",\"to\":\"XR_OPT_SMT_HLHOP\",\"name\":\"\"},\"demo_line_4\":{\"type\":\"tb\",\"M\":528,\"from\":\"XR_OPT_SMT_HLHOP\",\"to\":\"XR_OPT_SMT_AOIOP\",\"name\":\"\"}},\"areas\":{\"demo_area_5\":{\"name\":\"area_5\",\"left\":542,\"top\":96,\"color\":\"yellow\",\"width\":200,\"height\":100,\"alt\":true},\"demo_area_6\":{\"name\":\"area_6\",\"left\":624,\"top\":373,\"color\":\"blue\",\"width\":200,\"height\":100,\"alt\":true}},\"initNum\":7}', '*', '2017-09-21 09:43:30', 'admin', null, null);

-- ----------------------------
-- Table structure for ly_resources
-- ----------------------------
DROP TABLE IF EXISTS `ly_resources`;
CREATE TABLE `ly_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(4) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `ishide` int(3) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_resources
-- ----------------------------
INSERT INTO `ly_resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '12', 'fa-desktop', '0', '系统基础管理');
INSERT INTO `ly_resources` VALUES ('2', '用户管理', '1', 'account', '1', '/user/list.shtml', '2', null, '0', null);
INSERT INTO `ly_resources` VALUES ('3', '角色管理', '1', 'role', '1', '/role/list.shtml', '7', 'fa-list', '0', '组管理');
INSERT INTO `ly_resources` VALUES ('4', '菜单管理', '1', 'ly_resources', '1', '/resources/list.shtml', '12', 'fa-list-alt', '0', '菜单管理');
INSERT INTO `ly_resources` VALUES ('5', '新增用户', '2', 'account_add', '2', '/user/addUI.shtml', '3', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('6', '修改用户', '2', 'account_edit', '2', '/user/editUI.shtml', '4', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('7', '删除用户', '2', 'account_delete', '2', '/user/deleteById.shtml', '5', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/role/addUI.shtml', '8', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addRole&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/role/editUI.shtml', '9', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editRole&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/role/delete.shtml', '10', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delRole&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('11', '分配权限', '3', 'role_perss', '2', '/resources/permissions.shtml', '11', '无', '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-cog&quot;&gt;&lt;/span&gt;&nbsp;分配权限&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('25', '登陆信息管理', '0', 'ly_login', '0', 'ly_login', '13', 'fa-calendar', '0', '登陆信息管理');
INSERT INTO `ly_resources` VALUES ('26', '用户登录记录', '25', 'ly_log_list', '1', '/userlogin/listUI.shtml', '19', null, '0', '用户登录记录');
INSERT INTO `ly_resources` VALUES ('27', '操作日志管理', '0', 'ly_log', '0', 'ly_log', '14', 'fa-picture-o', '0', '操作日志管理');
INSERT INTO `ly_resources` VALUES ('28', '日志查询', '27', 'ly_log', '1', '/log/list.shtml', '21', null, '0', null);
INSERT INTO `ly_resources` VALUES ('29', '新增菜单资源', '4', 'ly_resources_add', '2', '/resources/addUI.shtml', '13', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('30', '修改菜单资源', '4', 'ly_resources_edit', '2', '/resources/editUI.shtml', '14', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('31', '删除菜单资源', '4', 'ly_resources_delete', '2', '/resources/delete.shtml', '15', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('34', '分配权限', '2', 'permissions', '2', '/resources/permissions.shtml', '6', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-cog&quot;&gt;&lt;/span&gt;分配权限&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('37', '车间基础建模', '0', 'base_data', '0', 'base_data', '1', 'fa-desktop', '0', '车间数据维护');
INSERT INTO `ly_resources` VALUES ('38', '生产计划管理', '0', 'product_plan', '0', 'product_plan', '3', null, '0', '生产计划管理');
INSERT INTO `ly_resources` VALUES ('39', '生产过程控制', '0', 'process_control', '0', 'process_control', '4', null, '0', '生产过程控制');
INSERT INTO `ly_resources` VALUES ('40', '产品质量管理', '0', 'quality', '0', 'quality', '5', null, '0', '产品质量管理');
INSERT INTO `ly_resources` VALUES ('41', '车间库存管理', '0', 'inventory', '0', 'inventory', '6', null, '0', '车间库存管理');
INSERT INTO `ly_resources` VALUES ('45', '车间看板管理', '0', 'pad', '0', 'pad', '10', null, '0', '车间看板管理');
INSERT INTO `ly_resources` VALUES ('46', '数据分析报表', '0', 'report', '0', 'report', '11', null, '0', '数据分析报表');
INSERT INTO `ly_resources` VALUES ('47', '生产物料控制', '0', 'item', '0', 'item', '2', null, '0', '生产物料控制');
INSERT INTO `ly_resources` VALUES ('48', '物料维护', '47', 'item_manager', '1', '/item_resource/item_list.shtml', null, null, '0', '物料管理');
INSERT INTO `ly_resources` VALUES ('49', '物料清单维护', '47', 'itembom_manager', '1', '/item_resource/bom_list.shtml', null, null, '0', '物料清单管理');
INSERT INTO `ly_resources` VALUES ('50', '工作中心', '37', 'workcenter', '1', '/workshop/workcenter_list.shtml', null, null, '0', '工作中心');
INSERT INTO `ly_resources` VALUES ('51', '操作维护', '37', 'operation', '1', '/workshop/operation_list.shtml', null, null, '0', '操作维护');
INSERT INTO `ly_resources` VALUES ('52', '资源维护', '37', 'operation_resource', '1', '/workshop/operation_resource_list.shtml', null, null, '0', '资源维护');
INSERT INTO `ly_resources` VALUES ('53', '工艺路线', '37', 'routing', '1', '/workshop/routing_list.shtml', null, null, '0', '工艺路线');
INSERT INTO `ly_resources` VALUES ('56', '计划工单维护', '38', 'shoporder_make', '1', '/product_plan/shoporder_maintenance_list.shtml', null, null, '0', '生产工单下达');
INSERT INTO `ly_resources` VALUES ('57', '站点维护', '37', 'site', '1', '/workshop/site_list.shtml', null, null, '0', '站点维护');
INSERT INTO `ly_resources` VALUES ('75', '车间库存接收', '41', 'get_item', '1', '/workshop_inventory/workshop_inventory_list.shtml', null, null, '0', '车间领料操作面板');
INSERT INTO `ly_resources` VALUES ('79', 'SOP操作手册维护', '42', 'sop', '1', '/sop', null, null, '0', 'SOP操作手册维护');
INSERT INTO `ly_resources` VALUES ('82', '不合格组维护', '40', 'nc_group', '1', '/nc_group/nc_group_list.shtml', null, null, '0', '不合格组维护');
INSERT INTO `ly_resources` VALUES ('83', '不合格代码维护', '40', 'nc_code', '1', '/qc/nc_list.shtml', null, null, '0', '不合格代码维护');
INSERT INTO `ly_resources` VALUES ('85', '设备数据采集维护', '43', 'data_gather', '1', '/data_gather', null, null, '0', '数据采集点维护');
INSERT INTO `ly_resources` VALUES ('87', '设备基础信息维护', '43', 'machine', '1', '/machine', null, null, '0', '设备维护');
INSERT INTO `ly_resources` VALUES ('88', '班次维护', '44', 'Shift', '1', '/Shift', null, null, '0', '班次维护');
INSERT INTO `ly_resources` VALUES ('90', '车间物料消耗看板', '45', 'kanban', '1', '/kanban/kanbanUI.shtml', null, null, '0', '看板维护');
INSERT INTO `ly_resources` VALUES ('94', '生产进度报表', '46', 'scheduler_report', '1', '/report/scheduler_reportUi.shtml', null, null, '0', '生产进度报表');
INSERT INTO `ly_resources` VALUES ('99', '车间库存报表', '46', 'in_inventory_report', '1', '/report/inventory_reportUi.shtml', null, null, '0', '车间库存报表');
INSERT INTO `ly_resources` VALUES ('101', '检索工作中心', '50', 'workcenter_search', '2', '/workshop/searchUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('102', '新增工作中心', '50', 'workcenter_add', '2', '/workshop/workcenter_add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('103', '修改工作中心', '50', 'workcenter_edit', '2', '/workshop/workcenter_edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('104', '删除工作中心', '50', 'workcenter_delete', '2', '/workshop/deleteUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('105', '查询站点', '57', 'site_search', '2', 'site/search', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('106', '添加站点', '57', 'site_add', '2', 'site/add', null, '', '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('107', '修改站点', '57', 'site_edit', '2', 'site/edit', null, '', '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('108', '删除站点', '57', 'site_delete', '2', 'site/delete', null, '', '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('109', '添加工艺路线', '53', 'process_route_add', '2', 'process_route/add', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('110', '修改工艺路线', '53', 'process_route_edit', '2', 'process_route/edit', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('111', '删除工艺路线', '53', 'process_route_delete', '2', 'process_route/delete', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('112', '检索操作', '51', 'search_operation', '2', '/workshop/search_operation.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('113', '新增操作', '51', 'app_operation', '2', '/workshop/operation_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('114', '编辑操作', '51', 'edit_operation', '2', '/workshop/operation_editUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('115', '删除操作', '51', 'delete_operation', '2', '/workshop/operation_deleteUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('116', '检索资源', '52', 'search_operationResource', '2', '/workshop/operation_resource_searchUI.shtml', null, null, '0', '&lt;button&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&nbsp;type=&quot;button&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('117', '新增资源', '52', 'add_operation_resource', '2', '/workshop/operation_resource_addUI.shtml', null, null, '0', '&lt;button&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&nbsp;id=&quot;addFun&quot;&nbsp;type=&quot;button&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('118', '编辑资源', '52', 'edit_operation_resource', '2', '/workshop/operation_resource_editUI.shtml', null, null, '0', '&lt;button&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&nbsp;id=&quot;editFun&quot;&nbsp;type=&quot;button&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('119', '删除资源', '52', 'delete_operation_resource', '2', '/workshop/operation_resource_deleteUI.shtml', null, null, '0', '&lt;button&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&nbsp;id=&quot;delFun&quot;&nbsp;type=&quot;button&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('120', '检索物料', '48', 'search_item', '2', '/item_resource/item/item_list.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('121', '新增物料', '48', 'add_item', '2', '/item_resource/item/item_add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('122', '编辑物料', '48', 'edit_item', '2', '/item_resource/item/item_edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('123', '删除物料', '48', 'delete_item', '2', '/item_resource/item/item_delete.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('124', '检索规则', '54', 'search_sfcRule', '2', '/product_plan/search_sfcRule', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('125', '新增规则', '54', 'add_sfcRule', '2', '/product_plan/add_sfcRule', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('126', '编辑规则', '54', 'edit_sfcRule', '2', '/product_plan/edit_sfcRule', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('127', '删除规则', '54', 'delete_sfcRule', '2', '/product_plan/delete_sfcRule', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('128', '检索工单', '56', 'search_shoporder', '2', '/product_plan/search_shoporder', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('129', '新增工单', '56', 'add_shoporder', '2', '/product_plan/add_shoporder', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('130', '生产操作员面板-功能维护', '39', 'pod_function', '1', '/produce/podfunction_list.shtml', null, null, '0', 'pod功能维护菜单');
INSERT INTO `ly_resources` VALUES ('131', '新增pod功能', '130', 'pod_function_add', '2', '/produce/pod_function_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('132', '编辑pod功能', '130', 'pod_function_edit', '2', '/produce/pod_function_editUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('133', '删除pod功能', '130', 'pod_function_del', '2', '/produce/pod_function_deleteEntity.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('134', '生产操作员面板-按钮维护', '39', 'pod_button', '1', '/produce/pod_button_list.shtml', null, null, '0', 'pod按钮维护');
INSERT INTO `ly_resources` VALUES ('135', '新增pod按钮', '134', 'pod_button_add', '2', '/produce/pod_button_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('136', '编辑pod按钮', '134', 'pod_button_edit', '2', '/produce/pod_button_editUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('137', '删除pod按钮', '134', 'pod_button_del', '2', '/produce/pod_button_deleteEntity.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('139', '检索BOM', '49', 'search_bom', '2', '/search_bom', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('140', '新增BOM', '49', 'add_bom', '2', '/item_resource/bom_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('141', '编辑BOM', '49', 'edit_bom', '2', '/item_resource/bom_editUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('142', '删除BOM', '49', 'delete_bom', '2', '/item_resource/bom_deleteUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('143', '检索不合格组', '82', 'search_nc_group', '2', '/search_nc_group', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('144', '新增不合格组', '82', 'add_nc_group', '2', '/nc_group/nc_group_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('145', '编辑不合格组', '82', 'edit_nc_group', '2', '/nc_group/nc_group_editUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('146', '删除不合格组', '82', 'delete_nc_group', '2', '/nc_group/nc_group_deleteEntity.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('147', '检索不合格代码', '83', 'search_nc_code', '2', '/qc/nc_list.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('148', '新增不合格代码', '83', 'add_nc_code', '2', '/qc/nc_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('149', '编辑不合格代码', '83', 'edit_nc_code', '2', '/qc/nc_editUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-edit&quot;&gt;&lt;/span&gt;&nbsp;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('150', '删除不合格代码', '83', 'delete_nc_code', '2', '/qc/nc_deleteEntity.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-trash&quot;&gt;&lt;/span&gt;&nbsp;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('151', '生产操作员面板-操作', '39', 'pod_panel', '1', '/produce/assemble_pod.shtml', null, null, '0', '生产操作员面板');
INSERT INTO `ly_resources` VALUES ('152', '检索库存', '75', 'search_inventory', '2', '/workshop_inventory/workshop_inventory_findByPage.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;class=&quot;btn&nbsp;btn-default&quot;&nbsp;id=&quot;search&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-search&quot;&gt;&lt;/span&gt;&nbsp;检索&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('153', '接收库存', '75', 'add_inventory', '2', '/workshop_inventory/workshop_inventory_addUI.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;&lt;span&nbsp;class=&quot;glyphicon&nbsp;glyphicon-plus&quot;&gt;&lt;/span&gt;&nbsp;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('169', '计划工单下达', '38', 'shoporder_Issued', '1', '/plan/shoporder_Issued.shtml', null, null, '0', '订单下达');
INSERT INTO `ly_resources` VALUES ('170', '不合格品处置', '40', 'nc_handle', '1', '/qc/nc_handle.shtml', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('174', '生产记录报表', '46', 'prouction_record_report', '1', '/report/productionRecord_reportUI.shtml', null, null, '0', '生产记录报表');
INSERT INTO `ly_resources` VALUES ('175', 'SFC装配信息追溯报表', '46', 'prouction_record_report', '1', '/report/sfc_assemblyInfo_listUI.shtml', null, 'scheduler_reportUi', '0', 'SFC装配信息追溯报表');

-- ----------------------------
-- Table structure for ly_resource_type
-- ----------------------------
DROP TABLE IF EXISTS `ly_resource_type`;
CREATE TABLE `ly_resource_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_type_no` varchar(255) NOT NULL COMMENT '资源类型编号',
  `resource_type_desc` varchar(255) NOT NULL COMMENT '资源类型说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_resource_type
-- ----------------------------

-- ----------------------------
-- Table structure for ly_res_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_res_role`;
CREATE TABLE `ly_res_role` (
  `resId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`resId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_res_role
-- ----------------------------
INSERT INTO `ly_res_role` VALUES ('1', '1');
INSERT INTO `ly_res_role` VALUES ('2', '1');
INSERT INTO `ly_res_role` VALUES ('3', '1');
INSERT INTO `ly_res_role` VALUES ('4', '1');
INSERT INTO `ly_res_role` VALUES ('5', '1');
INSERT INTO `ly_res_role` VALUES ('6', '1');
INSERT INTO `ly_res_role` VALUES ('7', '1');
INSERT INTO `ly_res_role` VALUES ('8', '1');
INSERT INTO `ly_res_role` VALUES ('9', '1');
INSERT INTO `ly_res_role` VALUES ('10', '1');
INSERT INTO `ly_res_role` VALUES ('11', '1');
INSERT INTO `ly_res_role` VALUES ('25', '1');
INSERT INTO `ly_res_role` VALUES ('26', '1');
INSERT INTO `ly_res_role` VALUES ('27', '1');
INSERT INTO `ly_res_role` VALUES ('28', '1');
INSERT INTO `ly_res_role` VALUES ('29', '1');
INSERT INTO `ly_res_role` VALUES ('30', '1');
INSERT INTO `ly_res_role` VALUES ('31', '1');
INSERT INTO `ly_res_role` VALUES ('34', '1');
INSERT INTO `ly_res_role` VALUES ('37', '1');
INSERT INTO `ly_res_role` VALUES ('38', '1');
INSERT INTO `ly_res_role` VALUES ('39', '1');
INSERT INTO `ly_res_role` VALUES ('40', '1');
INSERT INTO `ly_res_role` VALUES ('41', '1');
INSERT INTO `ly_res_role` VALUES ('45', '1');
INSERT INTO `ly_res_role` VALUES ('46', '1');
INSERT INTO `ly_res_role` VALUES ('47', '1');
INSERT INTO `ly_res_role` VALUES ('48', '1');
INSERT INTO `ly_res_role` VALUES ('49', '1');
INSERT INTO `ly_res_role` VALUES ('50', '1');
INSERT INTO `ly_res_role` VALUES ('51', '1');
INSERT INTO `ly_res_role` VALUES ('52', '1');
INSERT INTO `ly_res_role` VALUES ('53', '1');
INSERT INTO `ly_res_role` VALUES ('56', '1');
INSERT INTO `ly_res_role` VALUES ('57', '1');
INSERT INTO `ly_res_role` VALUES ('75', '1');
INSERT INTO `ly_res_role` VALUES ('79', '1');
INSERT INTO `ly_res_role` VALUES ('82', '1');
INSERT INTO `ly_res_role` VALUES ('83', '1');
INSERT INTO `ly_res_role` VALUES ('85', '1');
INSERT INTO `ly_res_role` VALUES ('87', '1');
INSERT INTO `ly_res_role` VALUES ('88', '1');
INSERT INTO `ly_res_role` VALUES ('90', '1');
INSERT INTO `ly_res_role` VALUES ('94', '1');
INSERT INTO `ly_res_role` VALUES ('99', '1');
INSERT INTO `ly_res_role` VALUES ('101', '1');
INSERT INTO `ly_res_role` VALUES ('102', '1');
INSERT INTO `ly_res_role` VALUES ('103', '1');
INSERT INTO `ly_res_role` VALUES ('104', '1');
INSERT INTO `ly_res_role` VALUES ('105', '1');
INSERT INTO `ly_res_role` VALUES ('106', '1');
INSERT INTO `ly_res_role` VALUES ('107', '1');
INSERT INTO `ly_res_role` VALUES ('108', '1');
INSERT INTO `ly_res_role` VALUES ('109', '1');
INSERT INTO `ly_res_role` VALUES ('110', '1');
INSERT INTO `ly_res_role` VALUES ('111', '1');
INSERT INTO `ly_res_role` VALUES ('112', '1');
INSERT INTO `ly_res_role` VALUES ('113', '1');
INSERT INTO `ly_res_role` VALUES ('114', '1');
INSERT INTO `ly_res_role` VALUES ('115', '1');
INSERT INTO `ly_res_role` VALUES ('116', '1');
INSERT INTO `ly_res_role` VALUES ('117', '1');
INSERT INTO `ly_res_role` VALUES ('118', '1');
INSERT INTO `ly_res_role` VALUES ('119', '1');
INSERT INTO `ly_res_role` VALUES ('120', '1');
INSERT INTO `ly_res_role` VALUES ('121', '1');
INSERT INTO `ly_res_role` VALUES ('122', '1');
INSERT INTO `ly_res_role` VALUES ('123', '1');
INSERT INTO `ly_res_role` VALUES ('124', '1');
INSERT INTO `ly_res_role` VALUES ('125', '1');
INSERT INTO `ly_res_role` VALUES ('126', '1');
INSERT INTO `ly_res_role` VALUES ('127', '1');
INSERT INTO `ly_res_role` VALUES ('128', '1');
INSERT INTO `ly_res_role` VALUES ('129', '1');
INSERT INTO `ly_res_role` VALUES ('130', '1');
INSERT INTO `ly_res_role` VALUES ('131', '1');
INSERT INTO `ly_res_role` VALUES ('132', '1');
INSERT INTO `ly_res_role` VALUES ('133', '1');
INSERT INTO `ly_res_role` VALUES ('134', '1');
INSERT INTO `ly_res_role` VALUES ('135', '1');
INSERT INTO `ly_res_role` VALUES ('136', '1');
INSERT INTO `ly_res_role` VALUES ('137', '1');
INSERT INTO `ly_res_role` VALUES ('139', '1');
INSERT INTO `ly_res_role` VALUES ('140', '1');
INSERT INTO `ly_res_role` VALUES ('141', '1');
INSERT INTO `ly_res_role` VALUES ('142', '1');
INSERT INTO `ly_res_role` VALUES ('143', '1');
INSERT INTO `ly_res_role` VALUES ('144', '1');
INSERT INTO `ly_res_role` VALUES ('145', '1');
INSERT INTO `ly_res_role` VALUES ('146', '1');
INSERT INTO `ly_res_role` VALUES ('147', '1');
INSERT INTO `ly_res_role` VALUES ('148', '1');
INSERT INTO `ly_res_role` VALUES ('149', '1');
INSERT INTO `ly_res_role` VALUES ('150', '1');
INSERT INTO `ly_res_role` VALUES ('151', '1');
INSERT INTO `ly_res_role` VALUES ('152', '1');
INSERT INTO `ly_res_role` VALUES ('153', '1');
INSERT INTO `ly_res_role` VALUES ('157', '1');
INSERT INTO `ly_res_role` VALUES ('158', '1');
INSERT INTO `ly_res_role` VALUES ('159', '1');
INSERT INTO `ly_res_role` VALUES ('160', '1');
INSERT INTO `ly_res_role` VALUES ('161', '1');
INSERT INTO `ly_res_role` VALUES ('162', '1');
INSERT INTO `ly_res_role` VALUES ('164', '1');
INSERT INTO `ly_res_role` VALUES ('165', '1');
INSERT INTO `ly_res_role` VALUES ('166', '1');
INSERT INTO `ly_res_role` VALUES ('167', '1');
INSERT INTO `ly_res_role` VALUES ('169', '1');
INSERT INTO `ly_res_role` VALUES ('170', '1');
INSERT INTO `ly_res_role` VALUES ('174', '1');
INSERT INTO `ly_res_role` VALUES ('175', '1');

-- ----------------------------
-- Table structure for ly_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES ('1', '0', '管理员', 'admin', '管理员');

-- ----------------------------
-- Table structure for ly_route_step
-- ----------------------------
DROP TABLE IF EXISTS `ly_route_step`;
CREATE TABLE `ly_route_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `process_route` text NOT NULL COMMENT '工艺路线',
  `operation` text NOT NULL COMMENT '操作',
  `next_operation` varchar(255) NOT NULL COMMENT '下一个操作',
  `state` int(1) NOT NULL COMMENT '状态，0：正常,1：真，2：假',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `operation_order` int(1) DEFAULT NULL COMMENT '顺序标识：0、首操作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_route_step
-- ----------------------------
INSERT INTO `ly_route_step` VALUES ('191', 'Router001', 'P1', 'P2', '1', '*', null);
INSERT INTO `ly_route_step` VALUES ('195', '2017051400a', 'PCB-20170514002', 'PCB-20170514003', '0', 'PCB-20170514', null);
INSERT INTO `ly_route_step` VALUES ('196', '2017051400a', 'PCB-20170514003', 'PCB-20170514004', '0', 'PCB-20170514', null);
INSERT INTO `ly_route_step` VALUES ('197', '2017051400a', 'PCB-20170514001', 'PCB-20170514002', '0', 'PCB-20170514', null);
INSERT INTO `ly_route_step` VALUES ('201', 'gk89', 'gk89_operation_sb', 'gk89_operation_yinshua', '0', 'test', '0');
INSERT INTO `ly_route_step` VALUES ('202', 'gk89', 'gk89_operation_yinshua', 'gk89_operation_aoi', '0', 'test', null);
INSERT INTO `ly_route_step` VALUES ('205', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', 'operation_gk89_TB_64', '0', 'gk89', '0');
INSERT INTO `ly_route_step` VALUES ('206', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', 'operation_gk89_AOI_762', '0', 'gk89', null);
INSERT INTO `ly_route_step` VALUES ('211', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', 'XR_OPT_SMT_SPIOP', '0', '*', '0');
INSERT INTO `ly_route_step` VALUES ('212', 'XR_FLOW_SMT001', 'XR_OPT_SMT_SPIOP', 'XR_OPT_SMT_TPOP', '0', '*', null);
INSERT INTO `ly_route_step` VALUES ('213', 'XR_FLOW_SMT001', 'XR_OPT_SMT_TPOP', 'XR_OPT_SMT_HLHOP', '0', '*', null);
INSERT INTO `ly_route_step` VALUES ('214', 'XR_FLOW_SMT001', 'XR_OPT_SMT_HLHOP', 'XR_OPT_SMT_AOIOP', '0', '*', null);

-- ----------------------------
-- Table structure for ly_sfc_assembly
-- ----------------------------
DROP TABLE IF EXISTS `ly_sfc_assembly`;
CREATE TABLE `ly_sfc_assembly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL COMMENT '站点',
  `operation` varbinary(255) NOT NULL DEFAULT '字段值区分大小写用varbinary' COMMENT '操作',
  `sfc` varchar(255) NOT NULL COMMENT 'SFC',
  `batch` varchar(255) NOT NULL COMMENT '物料批次',
  `item_sfc` varchar(255) NOT NULL COMMENT '物料SFC',
  `item` varchar(255) NOT NULL COMMENT '物料号',
  `use_num` int(11) NOT NULL COMMENT '消耗数量',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_sfc_assembly
-- ----------------------------
INSERT INTO `ly_sfc_assembly` VALUES ('78', '*', 0x6F703031, '11', '', 'houke001', 'hk', '1', 'admin', '2017-04-24 00:23:16');
INSERT INTO `ly_sfc_assembly` VALUES ('79', 'test', 0x676B38395F6F7065726174696F6E5F79696E73687561, 'sfc4565677486456456', '', 'sfc201708310003', 'item_gk89_f23', '1', 'admin', '2017-08-31 10:33:27');
INSERT INTO `ly_sfc_assembly` VALUES ('80', 'test', 0x676B38395F6F7065726174696F6E5F79696E73687561, 'sfc20170901114938000030', '', 'item_gk89_xigao24564564566', 'item_gk89_xigao2', '1', 'admin', '2017-09-02 10:29:33');
INSERT INTO `ly_sfc_assembly` VALUES ('81', 'test', 0x676B38395F6F7065726174696F6E5F79696E73687561, 'sfc20170901114938000030', '', 'sfc2017083100010', 'item_gk89_xigao2', '1', 'admin', '2017-09-02 10:30:05');
INSERT INTO `ly_sfc_assembly` VALUES ('114', 'gk89', 0x6F7065726174696F6E5F676B38395F54425F3634, 'sfc20170904175035000000', 'item_batch_20170904', 'sfc_gk89_885594A', 'item_gk89_D_387', '1', 'admin', '2017-09-04 17:53:54');
INSERT INTO `ly_sfc_assembly` VALUES ('115', 'gk89', 0x6F7065726174696F6E5F676B38395F54425F3634, 'sfc20170904175035000000', 'item_batch_20170904', 'sfc_gk89_178332C', 'item_gk89_I_396', '1', 'admin', '2017-09-04 17:54:01');
INSERT INTO `ly_sfc_assembly` VALUES ('116', 'gk89', 0x6F7065726174696F6E5F676B38395F54425F3634, 'sfc20170904175035000000', 'item_batch_20170904', 'sfc_gk89_959942Z', 'item_gk89_J_90', '1', 'admin', '2017-09-04 17:54:07');
INSERT INTO `ly_sfc_assembly` VALUES ('117', 'gk89', 0x6F7065726174696F6E5F676B38395F54425F3634, 'sfc20170905214351000001', 'item_batch_20170905', 'sfc_gk89_162428C', 'item_gk89_D_387', '1', 'admin', '2017-09-05 22:23:02');
INSERT INTO `ly_sfc_assembly` VALUES ('118', 'gk89', 0x6F7065726174696F6E5F676B38395F54425F3634, 'sfc20170905214351000001', 'item_batch_20170905', 'sfc_gk89_120823A', 'item_gk89_I_396', '1', 'admin', '2017-09-05 22:23:18');
INSERT INTO `ly_sfc_assembly` VALUES ('119', 'gk89', 0x6F7065726174696F6E5F676B38395F54425F3634, 'sfc20170905214351000001', 'item_batch_20170905', 'sfc_gk89_428547H', 'item_gk89_J_90', '1', 'admin', '2017-09-05 22:23:28');
INSERT INTO `ly_sfc_assembly` VALUES ('120', '*', 0x58525F4F50545F534D545F54504F50, 'sfc20170920133354000001', 'item_batch_20170920', 'XR_DM_SWGGS2F-Y201709030001', 'XR_DM_SWGGS2F-Y', '1', 'admin', '2017-09-20 13:40:22');
INSERT INTO `ly_sfc_assembly` VALUES ('121', '*', 0x58525F4F50545F534D545F54504F50, 'sfc20170920133354000001', 'item_batch_20170920', 'XR_DM_SWGGS2F-Y201709030005', 'XR_DM_SWGGS2F-Y', '1', 'admin', '2017-09-20 13:40:41');
INSERT INTO `ly_sfc_assembly` VALUES ('122', '*', 0x58525F4F50545F534D545F54504F50, 'sfc20170920133354000001', 'item_batch_20170920', 'XR_ITEM_LTPCB201709030002', 'XR_ITEM_LTPCB001', '1', 'admin', '2017-09-20 13:41:16');
INSERT INTO `ly_sfc_assembly` VALUES ('123', '*', 0x58525F4F50545F534D545F54504F50, 'sfc20170920133354000001', 'item_batch_20170920', 'XR_ITEM_XG201709030008', 'XR_ITEM_XG', '1', 'admin', '2017-09-20 13:41:32');

-- ----------------------------
-- Table structure for ly_sfc_nc
-- ----------------------------
DROP TABLE IF EXISTS `ly_sfc_nc`;
CREATE TABLE `ly_sfc_nc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfc` varchar(255) NOT NULL COMMENT 'SFC',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `operation` varchar(255) NOT NULL COMMENT '操作',
  `nc_code` varchar(255) NOT NULL COMMENT '不合格代码',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `create_time` date NOT NULL COMMENT '创建时间',
  `shoporder` varchar(255) NOT NULL COMMENT '工单',
  `resource` varchar(255) NOT NULL COMMENT '设备、资源',
  `nc_code_group` varchar(255) NOT NULL COMMENT '不合格代码组',
  `status` int(1) NOT NULL COMMENT '状态：0、未处理；1、已处理',
  `repair_type` int(1) DEFAULT NULL COMMENT '处置方式：0、维修；1、报废',
  `repair_id` varchar(255) DEFAULT NULL COMMENT '处置表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_sfc_nc
-- ----------------------------
INSERT INTO `ly_sfc_nc` VALUES ('11', '11', '*', 'p02', 'ncc01', 'admin', '2017-04-24', 'gd01', 'r02', 'nc01', '1', null, null);
INSERT INTO `ly_sfc_nc` VALUES ('12', '22', '*', 'op01', 'ncc02', 'admin', '2017-04-24', 'gd01', 'r01', 'nc01', '0', null, null);
INSERT INTO `ly_sfc_nc` VALUES ('13', '3333', '*', 'op01', 'ncc02', 'admin', '2017-04-24', 'gd01', 'r01', 'nc01', '0', null, null);
INSERT INTO `ly_sfc_nc` VALUES ('14', 'ssss', '*', 'op01', 'ncc02', 'admin', '2017-07-24', 'gd01', 'r01', 'WG_NC', '0', null, null);
INSERT INTO `ly_sfc_nc` VALUES ('22', 'sfc20170904181717000000', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_Z696', 'admin', '2017-09-04', 'shopOrder_gk89_L827', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '13');
INSERT INTO `ly_sfc_nc` VALUES ('24', 'sfc20170904181717000001', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_H852', 'admin', '2017-09-04', 'shopOrder_gk89_L827', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '15');
INSERT INTO `ly_sfc_nc` VALUES ('25', 'sfc20170904181717000002', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_Z696', 'admin', '2017-09-04', 'shopOrder_gk89_L827', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '16');
INSERT INTO `ly_sfc_nc` VALUES ('26', 'sfc20170904181717000003', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_Q914', 'admin', '2017-09-04', 'shopOrder_gk89_L827', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '20');
INSERT INTO `ly_sfc_nc` VALUES ('27', 'sfc20170904181717000003', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_Q914', 'admin', '2017-09-04', 'shopOrder_gk89_L827', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '20');
INSERT INTO `ly_sfc_nc` VALUES ('28', 'sfc20170904181717000004', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_Z696', 'admin', '2017-09-04', 'shopOrder_gk89_L827', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '22');
INSERT INTO `ly_sfc_nc` VALUES ('29', 'sfc20170905214351000001', 'gk89', 'operation_gk89_AOI_762', 'gk89_ncCode_Z696', 'admin', '2017-09-05', 'shopOrder_gk89_U381', 'resource_gk89_AOI_601', 'gk89_ncCodeGroup_L877', '1', '1', '23');
INSERT INTO `ly_sfc_nc` VALUES ('30', 'sfc20170920133354000001', '*', 'XR_OPT_SMT_AOIOP', 'XR_NC_REFLOW_001', 'admin', '2017-09-20', 'XR_DM_201709180001', 'XR_RES_AOIZ001', 'XR_NCGROUP_SMT', '1', '1', '24');

-- ----------------------------
-- Table structure for ly_sfc_step
-- ----------------------------
DROP TABLE IF EXISTS `ly_sfc_step`;
CREATE TABLE `ly_sfc_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfc` varchar(255) NOT NULL COMMENT 'SFC',
  `process_route` varchar(255) NOT NULL COMMENT '工艺路线',
  `operation` varchar(255) NOT NULL COMMENT '操作',
  `status` varchar(255) NOT NULL COMMENT '状态：0、创建；1、生产中；2、已完成；3、报废；4、记录不良状态中',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `byUser` varchar(255) NOT NULL COMMENT '创建人',
  `finishTime` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  `workcenter` varchar(255) DEFAULT NULL COMMENT '产线，不能为车间',
  `shoporder` varchar(255) NOT NULL COMMENT '工单',
  `site` varchar(255) NOT NULL COMMENT '站点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_sfc_step
-- ----------------------------
INSERT INTO `ly_sfc_step` VALUES ('213', '11', 'gy001', 'op01', '2', '2017-04-24 00:22:53', 'admin', '2017-04-24 00:00:00', 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('214', '11', 'gy001', 'p02', '2', '2017-04-24 00:23:23', 'admin', null, 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('215', '11', 'gy001', 'p02', '1', '2017-04-24 00:42:52', 'admin', null, 'w01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('216', '22', 'gy001', 'op01', '2', '2017-04-24 00:44:12', 'admin', null, 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('217', '3333', 'gy001', 'op01', '2', '2017-04-24 00:53:36', 'admin', null, 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('218', '3333', 'gy001', 'op01', '1', '2017-04-24 00:54:32', 'admin', null, 'w01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('219', '44', 'gy001', 'op01', '2', '2017-04-24 01:11:18', 'admin', '2017-04-24 00:00:00', 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('220', '44', 'gy001', 'p02', '2', '2017-04-24 01:11:20', 'admin', '2017-04-24 00:00:00', 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('221', '22', 'gy001', 'op01', '1', '2017-04-24 02:05:12', 'admin', null, 'w01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('222', 'SFC20170514d001', '2017051400a', 'PCB-20170514001', '2', '2017-05-14 22:42:34', 'admin', '2017-05-14 00:00:00', 'PCB-2017051401', 'PCB-20170514c001', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('223', 'SFC20170514d001', '2017051400a', 'PCB-20170514002', '2', '2017-05-14 22:42:48', 'admin', '2017-05-14 00:00:00', 'PCB-2017051401', 'PCB-20170514c001', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('224', 'SFC20170514d001', '2017051400a', 'PCB-20170514003', '2', '2017-05-14 22:45:17', 'admin', '2017-05-14 00:00:00', 'PCB-2017051401', 'PCB-20170514c001', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('225', 'SFC20170514d001', '2017051400a', 'PCB-20170514004', '2', '2017-05-14 22:48:43', 'admin', '2017-05-14 00:00:00', 'PCB-2017051401', 'PCB-20170514c001', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('226', 'sssdas', 'gy001', 'op01', '2', '2017-05-17 22:25:18', 'admin', '2017-05-17 00:00:00', 'L1', 'gd002', '*');
INSERT INTO `ly_sfc_step` VALUES ('227', 'sssdas', 'gy001', 'p02', '2', '2017-05-17 22:25:20', 'admin', '2017-05-17 00:00:00', 'L1', 'gd002', '*');
INSERT INTO `ly_sfc_step` VALUES ('228', '20170521', '2017051400a', 'PCB-20170514001', '2', '2017-05-21 12:57:30', 'admin', '2017-05-21 00:00:00', 'PCB-2017051401', '12344556', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('229', '20170521', '2017051400a', 'PCB-20170514002', '2', '2017-05-21 12:57:37', 'admin', '2017-05-21 00:00:00', 'PCB-2017051401', '12344556', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('230', '20170521', '2017051400a', 'PCB-20170514003', '0', '2017-05-21 12:58:38', 'admin', null, 'PCB-2017051401', '12344556', 'PCB-20170514');
INSERT INTO `ly_sfc_step` VALUES ('231', 'ssss', 'gy001', 'op01', '4', '2017-07-24 10:13:43', 'admin', null, 'wl01', 'gd01', '*');
INSERT INTO `ly_sfc_step` VALUES ('232', 'sfc45656774864567897', 'gk89', 'gk89_operation_sb', '2', '2017-08-31 10:26:52', 'admin', '2017-08-31 00:00:00', 'gb89_workline', 'gk89_2017-08-31', 'test');
INSERT INTO `ly_sfc_step` VALUES ('233', 'sfc45656774864567897', 'gk89', 'gk89_operation_yinshua', '2', '2017-08-31 10:27:14', 'admin', '2017-08-31 00:00:00', 'gb89_workline', 'gk89_2017-08-31', 'test');
INSERT INTO `ly_sfc_step` VALUES ('234', 'sfc45656774864567897', 'gk89', 'gk89_operation_aoi', '2', '2017-08-31 10:29:00', 'admin', '2017-08-31 00:00:00', 'gb89_workline', 'gk89_2017-08-31', 'test');
INSERT INTO `ly_sfc_step` VALUES ('235', 'sfc4565677486456456', 'gk89', 'gk89_operation_sb', '2', '2017-08-31 10:31:50', 'admin', '2017-08-31 00:00:00', 'gb89_workline', 'gk89_2017-08-31', 'test');
INSERT INTO `ly_sfc_step` VALUES ('236', 'sfc4565677486456456', 'gk89', 'gk89_operation_yinshua', '2', '2017-08-31 10:31:55', 'admin', '2017-08-31 00:00:00', 'gb89_workline', 'gk89_2017-08-31', 'test');
INSERT INTO `ly_sfc_step` VALUES ('237', 'sfc4565677486456456', 'gk89', 'gk89_operation_aoi', '2', '2017-08-31 10:35:06', 'admin', '2017-08-31 00:00:00', 'gb89_workline', 'gk89_2017-08-31', 'test');
INSERT INTO `ly_sfc_step` VALUES ('348', 'sfc20170901114938000030', 'gk89', 'gk89_operation_sb', '2', '2017-09-01 11:49:38', 'admin', '2017-09-02 00:00:00', null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('349', 'sfc20170901114938000031', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('350', 'sfc20170901114938000032', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('351', 'sfc20170901114938000033', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('352', 'sfc20170901114938000034', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('353', 'sfc20170901114938000035', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('354', 'sfc20170901114938000036', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('355', 'sfc20170901114938000037', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('356', 'sfc20170901114938000038', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('357', 'sfc20170901114938000039', 'gk89', 'gk89_operation_sb', '0', '2017-09-01 11:49:38', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('358', 'sfc20170901114938000030', 'gk89', 'gk89_operation_yinshua', '1', '2017-09-02 10:28:36', 'admin', null, null, '11111', 'test');
INSERT INTO `ly_sfc_step` VALUES ('415', 'sfc20170904181717000000', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 18:17:17', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('416', 'sfc20170904181717000001', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 20:21:13', 'admin', '2017-09-04 20:22:13', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('417', 'sfc20170904181717000002', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 18:17:17', 'admin', '2017-09-04 21:10:10', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('418', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 18:17:17', 'admin', '2017-09-04 21:12:58', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('419', 'sfc20170904181717000004', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 18:17:17', 'admin', '2017-09-04 21:30:05', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('420', 'sfc20170904181717000005', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-04 18:17:17', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('421', 'sfc20170904181717000006', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-04 18:17:17', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('422', 'sfc20170904181717000007', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-04 18:17:17', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('423', 'sfc20170904181717000008', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-04 18:17:17', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('424', 'sfc20170904181717000009', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-04 18:17:17', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('425', 'sfc20170904181717000000', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 18:17:59', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('426', 'sfc20170904181717000000', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '3', '2017-09-04 19:54:58', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('430', 'sfc20170904181717000001', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 20:22:13', 'admin', '2017-09-04 20:23:18', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('431', 'sfc20170904181717000001', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '2', '2017-09-04 21:02:36', 'admin', '2017-09-04 21:08:20', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('433', 'sfc20170904181717000002', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 21:10:10', 'admin', '2017-09-04 21:11:40', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('434', 'sfc20170904181717000002', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '3', '2017-09-04 21:11:40', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('435', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 21:12:58', 'admin', '2017-09-04 21:13:11', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('436', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '2', '2017-09-04 21:22:46', 'admin', '2017-09-04 21:24:31', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('439', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 21:24:32', 'admin', '2017-09-04 21:25:06', 'workcenter_gk89_Q_907', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('440', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 21:25:06', 'admin', '2017-09-04 21:28:02', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('441', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '2', '2017-09-04 21:28:02', 'admin', '2017-09-04 21:28:35', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('442', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-04 21:28:35', 'admin', '2017-09-04 21:28:53', 'workcenter_gk89_Q_907', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('443', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 21:28:53', 'admin', '2017-09-04 21:29:10', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('444', 'sfc20170904181717000003', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '2', '2017-09-04 21:29:10', 'admin', '2017-09-04 21:29:21', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('445', 'sfc20170904181717000004', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-04 21:30:05', 'admin', '2017-09-04 21:30:34', 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('446', 'sfc20170904181717000004', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '3', '2017-09-04 21:30:34', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_L827', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('447', 'sfc20170905214351000000', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-05 21:43:51', 'admin', '2017-09-05 21:54:52', 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('448', 'sfc20170905214351000001', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-05 21:43:51', 'admin', '2017-09-05 22:13:29', 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('449', 'sfc20170905214351000002', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('450', 'sfc20170905214351000003', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('451', 'sfc20170905214351000004', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('452', 'sfc20170905214351000005', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('453', 'sfc20170905214351000006', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('454', 'sfc20170905214351000007', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('455', 'sfc20170905214351000008', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('456', 'sfc20170905214351000009', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('457', 'sfc20170905214351000010', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('458', 'sfc20170905214351000011', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('459', 'sfc20170905214351000012', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('460', 'sfc20170905214351000013', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('461', 'sfc20170905214351000014', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('462', 'sfc20170905214351000015', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('463', 'sfc20170905214351000016', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('464', 'sfc20170905214351000017', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('465', 'sfc20170905214351000018', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('466', 'sfc20170905214351000019', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '0', '2017-09-05 21:43:51', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('467', 'sfc20170905214351000000', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '1', '2017-09-05 21:54:52', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('468', 'sfc20170905214351000001', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-05 22:13:29', 'admin', '2017-09-05 22:23:35', 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('469', 'sfc20170905214351000001', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '2', '2017-09-05 22:23:35', 'admin', '2017-09-05 22:37:01', 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('470', 'sfc20170905214351000001', 'processRoute_gk89_C_637', 'operation_gk89_SB_150', '2', '2017-09-05 22:37:01', 'admin', '2017-09-05 22:37:35', 'workcenter_gk89_Q_907', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('471', 'sfc20170905214351000001', 'processRoute_gk89_C_637', 'operation_gk89_TB_64', '2', '2017-09-05 22:37:35', 'admin', '2017-09-05 22:37:52', 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('472', 'sfc20170905214351000001', 'processRoute_gk89_C_637', 'operation_gk89_AOI_762', '1', '2017-09-05 22:37:52', 'admin', null, 'workline_gk89_E_73', 'shopOrder_gk89_U381', 'gk89');
INSERT INTO `ly_sfc_step` VALUES ('473', 'sfc20170920133354000000', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '2', '2017-09-20 13:33:54', 'admin', '2017-09-20 13:35:04', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('474', 'sfc20170920133354000001', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '2', '2017-09-20 13:33:54', 'admin', '2017-09-20 13:38:17', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('475', 'sfc20170920133354000002', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('476', 'sfc20170920133354000003', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('477', 'sfc20170920133354000004', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('478', 'sfc20170920133354000005', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('479', 'sfc20170920133354000006', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('480', 'sfc20170920133354000007', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('481', 'sfc20170920133354000008', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('482', 'sfc20170920133354000009', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('483', 'sfc20170920133354000010', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('484', 'sfc20170920133354000011', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('485', 'sfc20170920133354000012', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('486', 'sfc20170920133354000013', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('487', 'sfc20170920133354000014', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('488', 'sfc20170920133354000015', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('489', 'sfc20170920133354000016', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('490', 'sfc20170920133354000017', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('491', 'sfc20170920133354000018', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('492', 'sfc20170920133354000019', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('493', 'sfc20170920133354000020', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('494', 'sfc20170920133354000021', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('495', 'sfc20170920133354000022', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('496', 'sfc20170920133354000023', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('497', 'sfc20170920133354000024', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('498', 'sfc20170920133354000025', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('499', 'sfc20170920133354000026', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('500', 'sfc20170920133354000027', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('501', 'sfc20170920133354000028', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('502', 'sfc20170920133354000029', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-20 13:33:54', 'admin', null, 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('503', 'sfc20170920133354000000', 'XR_FLOW_SMT001', 'XR_OPT_SMT_SPIOP', '2', '2017-09-20 13:35:04', 'admin', '2017-09-20 13:35:46', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('504', 'sfc20170920133354000000', 'XR_FLOW_SMT001', 'XR_OPT_SMT_TPOP', '2', '2017-09-20 13:35:46', 'admin', '2017-09-20 13:36:07', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('505', 'sfc20170920133354000000', 'XR_FLOW_SMT001', 'XR_OPT_SMT_HLHOP', '2', '2017-09-20 13:36:07', 'admin', '2017-09-20 13:36:35', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('506', 'sfc20170920133354000000', 'XR_FLOW_SMT001', 'XR_OPT_SMT_AOIOP', '2', '2017-09-20 13:36:35', 'admin', '2017-09-20 13:36:54', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('507', 'sfc20170920133354000001', 'XR_FLOW_SMT001', 'XR_OPT_SMT_SPIOP', '2', '2017-09-20 13:38:17', 'admin', '2017-09-20 13:38:33', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('508', 'sfc20170920133354000001', 'XR_FLOW_SMT001', 'XR_OPT_SMT_TPOP', '2', '2017-09-20 13:38:33', 'admin', '2017-09-20 13:41:37', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('509', 'sfc20170920133354000001', 'XR_FLOW_SMT001', 'XR_OPT_SMT_HLHOP', '2', '2017-09-20 13:41:37', 'admin', '2017-09-20 13:41:57', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('510', 'sfc20170920133354000001', 'XR_FLOW_SMT001', 'XR_OPT_SMT_AOIOP', '2', '2017-09-20 13:41:57', 'admin', '2017-09-20 13:42:49', 'XR_WORKLINE_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('511', 'sfc20170920133354000001', 'XR_FLOW_SMT001', 'XR_OPT_SMT_AOIOP', '2', '2017-09-20 13:42:50', 'admin', '2017-09-20 13:42:57', 'XR_WORKCENTER_01', 'XR_DM_201709180001', '*');
INSERT INTO `ly_sfc_step` VALUES ('512', 'sfc20170922115714000030', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-22 11:57:14', 'admin', null, 'XR_WORKLINE_01', '333', '*');
INSERT INTO `ly_sfc_step` VALUES ('513', 'sfc20170922115714000031', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-22 11:57:14', 'admin', null, 'XR_WORKLINE_01', '333', '*');
INSERT INTO `ly_sfc_step` VALUES ('514', 'sfc20170922115714000032', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-22 11:57:14', 'admin', null, 'XR_WORKLINE_01', '333', '*');
INSERT INTO `ly_sfc_step` VALUES ('515', 'sfc20170922115714000033', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-22 11:57:14', 'admin', null, 'XR_WORKLINE_01', '333', '*');
INSERT INTO `ly_sfc_step` VALUES ('516', 'sfc20170922115714000034', 'XR_FLOW_SMT001', 'XR_OPT_SMT_YSOP', '0', '2017-09-22 11:57:14', 'admin', null, 'XR_WORKLINE_01', '333', '*');

-- ----------------------------
-- Table structure for ly_shoporder
-- ----------------------------
DROP TABLE IF EXISTS `ly_shoporder`;
CREATE TABLE `ly_shoporder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shoporder_no` varchar(255) NOT NULL COMMENT '工单号',
  `shoporder_start_date` datetime NOT NULL COMMENT '工单开始时间',
  `shoporder_end_date` datetime NOT NULL COMMENT '工单结束时间',
  `process_route` varchar(255) NOT NULL COMMENT '工艺路线',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoporder_type` varchar(255) DEFAULT NULL COMMENT '工单类型',
  `shoporder_status` varchar(255) NOT NULL COMMENT '工单状态',
  `shoporder_item` varchar(255) NOT NULL COMMENT '成品物料',
  `shoporder_numbers` varchar(255) NOT NULL COMMENT '工单数量',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `status` int(1) NOT NULL COMMENT '工单状态：0、创建；1、已下达；2、生产中；3、已完成；4、关闭；5、挂起；6、已删除',
  `workcenter` varchar(255) DEFAULT NULL COMMENT '车间',
  `workline` varchar(255) DEFAULT NULL COMMENT '产线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_shoporder
-- ----------------------------
INSERT INTO `ly_shoporder` VALUES ('54', 'gd01', '2017-04-18 00:00:00', '2017-04-25 00:00:00', 'gy001', 'admin', '2017-05-14 22:42:34', null, '1', 'sj', '10', '*', '2', 'w01', 'wl01');
INSERT INTO `ly_shoporder` VALUES ('55', 'PCB-20170514c001', '2017-05-15 10:00:00', '2017-05-15 22:00:00', '2017051400a', 'admin', '2017-05-17 22:25:18', null, '1', 'PCB-20170514a001', '5', 'PCB-20170514', '1', 'PCB-2017051400', 'PCB-2017051401');
INSERT INTO `ly_shoporder` VALUES ('56', 'gd002', '2017-05-11 22:00:00', '2017-05-19 22:00:00', 'gy001', 'admin', '2017-05-21 12:57:30', null, '1', 'HW_SJ', '15', '*', '1', 'W1', 'L1');
INSERT INTO `ly_shoporder` VALUES ('57', 'gd003', '2017-05-12 22:00:00', '2017-05-19 22:00:00', 'gy001', 'admin', '2017-05-21 12:57:30', null, '1', 'HW_SJ', '21', '*', '1', null, null);
INSERT INTO `ly_shoporder` VALUES ('58', 'gd004', '2017-05-12 22:00:00', '2017-05-27 22:00:00', 'Router001', 'admin', '2017-05-21 12:57:30', null, '1', 'sj', '5', '*', '1', null, null);
INSERT INTO `ly_shoporder` VALUES ('59', '12344556', '2017-05-21 12:00:00', '2017-05-21 14:00:00', '2017051400a', 'admin', '2017-05-21 12:56:37', null, '1', 'PCB-20170514a001', '5', 'PCB-20170514', '1', 'PCB-2017051400', 'PCB-2017051401');
INSERT INTO `ly_shoporder` VALUES ('60', 'gk89_2017-08-31', '2017-08-25 10:00:00', '2017-09-22 10:00:00', 'gk89', 'admin', '2017-08-31 10:13:57', null, '1', 'item_gk89', '3', 'test', '2', 'gk89_workcenter', 'gb89_workline');
INSERT INTO `ly_shoporder` VALUES ('61', '11111', '2017-08-26 10:00:00', '2017-11-24 10:00:00', 'gk89', 'admin', '2017-09-01 11:49:38', null, '1', 'item_gk89', '10', 'test', '1', 'gk89_workcenter', 'gb89_workline');
INSERT INTO `ly_shoporder` VALUES ('63', 'shopOrder_gk89_L827', '2017-08-29 17:00:00', '2017-09-04 17:00:00', 'processRoute_gk89_C_637', 'admin', '2017-09-05 21:41:48', null, '1', 'itemMain_gk89_Z_552', '10', 'gk89', '2', 'workcenter_gk89_Q_907', 'workline_gk89_E_73');
INSERT INTO `ly_shoporder` VALUES ('64', 'shopOrder_gk89_U381', '2017-08-30 21:00:00', '2017-09-05 21:00:00', 'processRoute_gk89_C_637', 'admin', '2017-09-05 21:43:51', null, '1', 'itemMain_gk89_Z_552', '20', 'gk89', '1', 'workcenter_gk89_Q_907', 'workline_gk89_E_73');
INSERT INTO `ly_shoporder` VALUES ('65', 'XR_DM_201709180001', '2017-09-14 13:00:00', '2017-09-23 13:00:00', 'XR_FLOW_SMT001', 'admin', '2017-09-20 13:33:55', null, '1', 'XR_DM_LT120PCBA001', '30', '*', '1', 'XR_WORKCENTER_01', 'XR_WORKLINE_01');
INSERT INTO `ly_shoporder` VALUES ('66', '333', '2017-09-16 11:00:00', '2017-09-27 11:00:00', 'XR_FLOW_SMT001', 'admin', '2017-09-22 11:57:15', null, '1', 'XR_DM_LT120PCBA001', '5', '*', '1', 'XR_WORKCENTER_01', 'XR_WORKLINE_01');

-- ----------------------------
-- Table structure for ly_shoporder_sfc
-- ----------------------------
DROP TABLE IF EXISTS `ly_shoporder_sfc`;
CREATE TABLE `ly_shoporder_sfc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shoporderId` varchar(255) NOT NULL COMMENT '工单号',
  `sfc` varchar(255) NOT NULL COMMENT 'SFC',
  `status` int(1) NOT NULL COMMENT 'SFC状态：0、创建；1、生产中；2、已完成；3、报废；4、记录不良状态中',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `finish_time` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  `site` varchar(255) NOT NULL COMMENT '站点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_shoporder_sfc
-- ----------------------------
INSERT INTO `ly_shoporder_sfc` VALUES ('90', 'gd01', '11', '1', '2017-04-24 00:00:00', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('91', 'gd01', '22', '1', '2017-04-24 00:00:00', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('92', 'gd01', '3333', '1', '2017-04-24 00:00:00', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('93', 'gd01', '44', '2', '2017-04-24 00:00:00', '2017-04-24 00:00:00', '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('94', 'PCB-20170514c001', 'SFC20170514d001', '2', '2017-05-14 00:00:00', '2017-05-14 00:00:00', 'PCB-20170514');
INSERT INTO `ly_shoporder_sfc` VALUES ('95', 'gd002', 'sssdas', '2', '2017-05-17 00:00:00', '2017-05-17 00:00:00', '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('96', '12344556', '20170521', '1', '2017-05-21 00:00:00', null, 'PCB-20170514');
INSERT INTO `ly_shoporder_sfc` VALUES ('97', 'gd01', 'ssss', '1', '2017-07-24 00:00:00', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('98', 'gk89_2017-08-31', 'sfc45656774864567897', '2', '2017-09-04 17:54:55', '2017-09-04 17:54:55', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('99', 'gk89_2017-08-31', 'sfc4565677486456456', '2', '2017-09-04 17:54:55', '2017-09-04 17:54:55', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('210', '11111', 'sfc20170901114938000030', '2', '2017-09-02 15:36:20', '2017-09-02 00:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('211', '11111', 'sfc20170901114938000031', '2', '2017-09-02 15:36:20', '2017-09-02 01:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('212', '11111', 'sfc20170901114938000032', '2', '2017-09-02 15:36:20', '2017-09-02 02:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('213', '11111', 'sfc20170901114938000033', '2', '2017-09-02 15:36:21', '2017-09-02 02:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('214', '11111', 'sfc20170901114938000034', '2', '2017-09-02 15:36:21', '2017-09-02 02:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('215', '11111', 'sfc20170901114938000035', '2', '2017-09-02 15:36:21', '2017-09-02 03:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('216', '11111', 'sfc20170901114938000036', '2', '2017-09-02 15:36:21', '2017-09-02 04:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('217', '11111', 'sfc20170901114938000037', '2', '2017-09-02 15:36:21', '2017-09-02 05:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('218', '11111', 'sfc20170901114938000038', '2', '2017-09-02 15:36:21', '2017-09-02 06:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('219', '11111', 'sfc20170901114938000039', '2', '2017-09-02 15:36:21', '2017-09-02 08:00:00', 'test');
INSERT INTO `ly_shoporder_sfc` VALUES ('260', 'shopOrder_gk89_L827', 'sfc20170904181717000000', '3', '2017-09-04 19:55:04', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('261', 'shopOrder_gk89_L827', 'sfc20170904181717000001', '2', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('262', 'shopOrder_gk89_L827', 'sfc20170904181717000002', '3', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('263', 'shopOrder_gk89_L827', 'sfc20170904181717000003', '2', '2017-09-04 21:22:54', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('264', 'shopOrder_gk89_L827', 'sfc20170904181717000004', '3', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('265', 'shopOrder_gk89_L827', 'sfc20170904181717000005', '0', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('266', 'shopOrder_gk89_L827', 'sfc20170904181717000006', '0', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('267', 'shopOrder_gk89_L827', 'sfc20170904181717000007', '0', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('268', 'shopOrder_gk89_L827', 'sfc20170904181717000008', '0', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('269', 'shopOrder_gk89_L827', 'sfc20170904181717000009', '0', '2017-09-04 18:17:17', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('270', 'shopOrder_gk89_U381', 'sfc20170905214351000000', '1', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('271', 'shopOrder_gk89_U381', 'sfc20170905214351000001', '1', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('272', 'shopOrder_gk89_U381', 'sfc20170905214351000002', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('273', 'shopOrder_gk89_U381', 'sfc20170905214351000003', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('274', 'shopOrder_gk89_U381', 'sfc20170905214351000004', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('275', 'shopOrder_gk89_U381', 'sfc20170905214351000005', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('276', 'shopOrder_gk89_U381', 'sfc20170905214351000006', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('277', 'shopOrder_gk89_U381', 'sfc20170905214351000007', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('278', 'shopOrder_gk89_U381', 'sfc20170905214351000008', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('279', 'shopOrder_gk89_U381', 'sfc20170905214351000009', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('280', 'shopOrder_gk89_U381', 'sfc20170905214351000010', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('281', 'shopOrder_gk89_U381', 'sfc20170905214351000011', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('282', 'shopOrder_gk89_U381', 'sfc20170905214351000012', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('283', 'shopOrder_gk89_U381', 'sfc20170905214351000013', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('284', 'shopOrder_gk89_U381', 'sfc20170905214351000014', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('285', 'shopOrder_gk89_U381', 'sfc20170905214351000015', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('286', 'shopOrder_gk89_U381', 'sfc20170905214351000016', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('287', 'shopOrder_gk89_U381', 'sfc20170905214351000017', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('288', 'shopOrder_gk89_U381', 'sfc20170905214351000018', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('289', 'shopOrder_gk89_U381', 'sfc20170905214351000019', '0', '2017-09-05 21:43:51', null, 'gk89');
INSERT INTO `ly_shoporder_sfc` VALUES ('290', 'XR_DM_201709180001', 'sfc20170920133354000000', '2', '2017-09-20 13:33:54', '2017-09-20 13:36:55', '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('291', 'XR_DM_201709180001', 'sfc20170920133354000001', '2', '2017-09-20 13:33:54', '2017-09-20 13:42:58', '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('292', 'XR_DM_201709180001', 'sfc20170920133354000002', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('293', 'XR_DM_201709180001', 'sfc20170920133354000003', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('294', 'XR_DM_201709180001', 'sfc20170920133354000004', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('295', 'XR_DM_201709180001', 'sfc20170920133354000005', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('296', 'XR_DM_201709180001', 'sfc20170920133354000006', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('297', 'XR_DM_201709180001', 'sfc20170920133354000007', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('298', 'XR_DM_201709180001', 'sfc20170920133354000008', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('299', 'XR_DM_201709180001', 'sfc20170920133354000009', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('300', 'XR_DM_201709180001', 'sfc20170920133354000010', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('301', 'XR_DM_201709180001', 'sfc20170920133354000011', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('302', 'XR_DM_201709180001', 'sfc20170920133354000012', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('303', 'XR_DM_201709180001', 'sfc20170920133354000013', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('304', 'XR_DM_201709180001', 'sfc20170920133354000014', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('305', 'XR_DM_201709180001', 'sfc20170920133354000015', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('306', 'XR_DM_201709180001', 'sfc20170920133354000016', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('307', 'XR_DM_201709180001', 'sfc20170920133354000017', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('308', 'XR_DM_201709180001', 'sfc20170920133354000018', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('309', 'XR_DM_201709180001', 'sfc20170920133354000019', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('310', 'XR_DM_201709180001', 'sfc20170920133354000020', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('311', 'XR_DM_201709180001', 'sfc20170920133354000021', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('312', 'XR_DM_201709180001', 'sfc20170920133354000022', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('313', 'XR_DM_201709180001', 'sfc20170920133354000023', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('314', 'XR_DM_201709180001', 'sfc20170920133354000024', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('315', 'XR_DM_201709180001', 'sfc20170920133354000025', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('316', 'XR_DM_201709180001', 'sfc20170920133354000026', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('317', 'XR_DM_201709180001', 'sfc20170920133354000027', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('318', 'XR_DM_201709180001', 'sfc20170920133354000028', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('319', 'XR_DM_201709180001', 'sfc20170920133354000029', '0', '2017-09-20 13:33:54', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('320', '333', 'sfc20170922115714000030', '0', '2017-09-22 11:57:14', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('321', '333', 'sfc20170922115714000031', '0', '2017-09-22 11:57:14', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('322', '333', 'sfc20170922115714000032', '0', '2017-09-22 11:57:14', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('323', '333', 'sfc20170922115714000033', '0', '2017-09-22 11:57:14', null, '*');
INSERT INTO `ly_shoporder_sfc` VALUES ('324', '333', 'sfc20170922115714000034', '0', '2017-09-22 11:57:14', null, '*');

-- ----------------------------
-- Table structure for ly_site
-- ----------------------------
DROP TABLE IF EXISTS `ly_site`;
CREATE TABLE `ly_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `siteDescription` varchar(255) DEFAULT NULL,
  `byUser` varchar(255) NOT NULL,
  `siteName` varchar(255) NOT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(1) DEFAULT NULL COMMENT '0不可用，1可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_site
-- ----------------------------
INSERT INTO `ly_site` VALUES ('19', '*', '默认站点', 'admin', '*', '2016-12-28 18:11:18', '1');

-- ----------------------------
-- Table structure for ly_user
-- ----------------------------
DROP TABLE IF EXISTS `ly_user`;
CREATE TABLE `ly_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `credentialsSalt` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `locked` varchar(3) DEFAULT '0',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  `site` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_user
-- ----------------------------
INSERT INTO `ly_user` VALUES ('3', 'admin', 'admin', '78e21a6eb88529eab722793a448ed394', '4157c3feef4a6ed91b2c28cf4392f2d1', '3434', '0', '2017-09-04 14:09:44', '0', '*');

-- ----------------------------
-- Table structure for ly_userlogin
-- ----------------------------
DROP TABLE IF EXISTS `ly_userlogin`;
CREATE TABLE `ly_userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `accountName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `loginIP` varchar(40) DEFAULT NULL COMMENT '登录IP',
  PRIMARY KEY (`id`),
  KEY `ly_user_loginlist` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2881 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_userlogin
-- ----------------------------
INSERT INTO `ly_userlogin` VALUES ('143', '3', 'admin', '2016-11-30 23:14:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('144', '3', 'admin', '2016-11-30 23:21:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('145', '3', 'admin', '2016-11-30 23:38:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('146', '3', 'admin', '2016-11-30 23:47:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('147', '3', 'admin', '2016-12-01 00:10:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('148', '3', 'admin', '2016-12-01 00:20:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('149', '3', 'admin', '2016-12-01 00:44:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('150', '3', 'admin', '2016-12-01 00:47:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('151', '3', 'admin', '2016-12-01 01:18:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('152', '3', 'admin', '2016-12-01 01:19:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('153', '3', 'admin', '2016-12-01 15:34:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('154', '3', 'admin', '2016-12-01 15:34:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('155', '3', 'admin', '2016-12-01 17:03:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('156', '3', 'admin', '2016-12-02 09:23:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('157', '3', 'admin', '2016-12-02 10:37:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('158', '3', 'admin', '2016-12-02 14:53:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('159', '3', 'admin', '2016-12-02 14:54:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('160', '3', 'admin', '2016-12-03 17:07:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('161', '3', 'admin', '2016-12-03 17:57:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('162', '3', 'admin', '2016-12-03 19:51:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('163', '3', 'admin', '2016-12-04 18:04:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('164', '3', 'admin', '2016-12-06 20:17:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('165', '3', 'admin', '2016-12-06 22:35:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('166', '3', 'admin', '2016-12-06 22:47:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('167', '3', 'admin', '2016-12-09 12:46:24', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('168', '3', 'admin', '2016-12-09 12:46:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('169', '3', 'admin', '2016-12-09 16:05:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('170', '3', 'admin', '2016-12-09 16:16:25', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('171', '3', 'admin', '2016-12-09 16:35:57', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('172', '3', 'admin', '2016-12-09 18:24:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('173', '3', 'admin', '2016-12-09 20:32:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('174', '3', 'admin', '2016-12-09 20:42:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('175', '3', 'admin', '2016-12-09 20:52:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('176', '3', 'admin', '2016-12-09 23:52:07', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('177', '3', 'admin', '2016-12-09 23:53:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('178', '3', 'admin', '2016-12-09 23:59:25', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('179', '3', 'admin', '2016-12-10 00:07:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('180', '3', 'admin', '2016-12-10 00:07:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('181', '3', 'admin', '2016-12-10 00:08:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('182', '3', 'admin', '2016-12-10 00:10:41', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('183', '3', 'admin', '2016-12-10 00:11:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('184', '3', 'admin', '2016-12-10 00:15:13', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('185', '3', 'admin', '2016-12-10 00:17:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('186', '3', 'admin', '2016-12-10 00:18:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('187', '3', 'admin', '2016-12-10 00:19:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('188', '3', 'admin', '2016-12-10 00:21:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('189', '3', 'admin', '2016-12-10 00:26:39', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('190', '3', 'admin', '2016-12-10 00:26:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('191', '3', 'admin', '2016-12-10 00:57:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('192', '3', 'admin', '2016-12-10 01:00:24', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('193', '3', 'admin', '2016-12-10 01:03:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('194', '3', 'admin', '2016-12-10 01:06:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('195', '3', 'admin', '2016-12-10 01:21:42', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('196', '3', 'admin', '2016-12-10 01:26:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('197', '3', 'admin', '2016-12-10 01:31:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('198', '3', 'admin', '2016-12-10 17:17:45', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('199', '3', 'admin', '2016-12-10 17:30:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('200', '3', 'admin', '2016-12-10 18:02:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('201', '3', 'admin', '2016-12-10 18:15:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('202', '3', 'admin', '2016-12-10 18:35:39', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('203', '3', 'admin', '2016-12-10 19:10:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('204', '3', 'admin', '2016-12-10 19:13:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('205', '3', 'admin', '2016-12-10 19:28:27', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('206', '3', 'admin', '2016-12-11 02:31:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('207', '3', 'admin', '2016-12-11 02:40:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('208', '3', 'admin', '2016-12-11 02:42:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('209', '3', 'admin', '2016-12-11 02:43:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('210', '3', 'admin', '2016-12-11 02:52:25', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('211', '3', 'admin', '2016-12-11 03:01:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('212', '3', 'admin', '2016-12-11 03:16:43', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('213', '3', 'admin', '2016-12-11 04:53:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('214', '3', 'admin', '2016-12-11 19:58:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('215', '3', 'admin', '2016-12-11 21:36:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('216', '3', 'admin', '2016-12-12 12:38:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('217', '3', 'admin', '2016-12-12 12:38:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('218', '3', 'admin', '2016-12-13 00:45:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('219', '3', 'admin', '2016-12-13 23:04:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('220', '3', 'admin', '2016-12-13 23:06:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('221', '3', 'admin', '2016-12-14 22:39:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('222', '3', 'admin', '2016-12-14 23:03:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('223', '3', 'admin', '2016-12-14 23:07:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('224', '3', 'admin', '2016-12-14 23:11:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('225', '3', 'admin', '2016-12-14 23:21:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('226', '3', 'admin', '2016-12-14 23:22:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('227', '3', 'admin', '2016-12-14 23:22:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('228', '3', 'admin', '2016-12-14 23:27:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('229', '5', 'zhanghao', '2016-12-14 23:35:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('230', '3', 'admin', '2016-12-14 23:36:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('231', '6', 'huahao', '2016-12-14 23:38:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('232', '3', 'admin', '2016-12-16 23:04:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('233', '3', 'admin', '2016-12-17 02:08:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('234', '3', 'admin', '2016-12-17 22:40:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('235', '3', 'admin', '2016-12-17 23:12:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('236', '3', 'admin', '2016-12-17 23:37:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('237', '3', 'admin', '2016-12-17 23:50:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('238', '3', 'admin', '2016-12-17 23:58:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('239', '3', 'admin', '2016-12-18 09:12:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('240', '3', 'admin', '2016-12-18 09:21:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('241', '3', 'admin', '2016-12-18 12:48:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('242', '3', 'admin', '2016-12-18 15:30:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('243', '3', 'admin', '2016-12-18 15:37:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('244', '3', 'admin', '2016-12-18 15:47:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('245', '3', 'admin', '2016-12-18 15:48:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('246', '3', 'admin', '2016-12-18 15:50:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('247', '3', 'admin', '2016-12-18 15:50:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('248', '3', 'admin', '2016-12-18 16:18:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('249', '3', 'admin', '2016-12-18 16:29:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('250', '3', 'admin', '2016-12-18 16:35:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('251', '3', 'admin', '2016-12-18 17:36:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('252', '3', 'admin', '2016-12-18 18:08:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('253', '3', 'admin', '2016-12-18 20:50:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('254', '3', 'admin', '2016-12-18 21:13:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('255', '3', 'admin', '2016-12-18 21:15:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('256', '3', 'admin', '2016-12-18 21:17:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('257', '3', 'admin', '2016-12-18 21:19:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('258', '3', 'admin', '2016-12-18 21:34:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('259', '3', 'admin', '2016-12-18 22:10:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('260', '3', 'admin', '2016-12-18 22:43:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('261', '3', 'admin', '2016-12-18 22:58:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('262', '3', 'admin', '2016-12-18 23:29:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('263', '3', 'admin', '2016-12-18 23:40:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('264', '3', 'admin', '2016-12-18 23:41:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('265', '3', 'admin', '2016-12-19 00:50:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('266', '3', 'admin', '2016-12-19 01:16:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('267', '3', 'admin', '2016-12-19 23:56:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('268', '3', 'admin', '2016-12-20 16:25:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('269', '3', 'admin', '2016-12-20 17:23:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('270', '3', 'admin', '2016-12-20 17:57:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('271', '3', 'admin', '2016-12-20 18:21:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('272', '3', 'admin', '2016-12-20 20:00:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('273', '3', 'admin', '2016-12-20 20:00:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('274', '3', 'admin', '2016-12-20 20:00:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('275', '3', 'admin', '2016-12-20 20:02:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('276', '3', 'admin', '2016-12-20 20:06:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('277', '3', 'admin', '2016-12-20 20:12:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('278', '3', 'admin', '2016-12-20 20:19:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('279', '3', 'admin', '2016-12-20 20:27:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('280', '3', 'admin', '2016-12-20 20:30:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('281', '3', 'admin', '2016-12-20 20:35:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('282', '3', 'admin', '2016-12-20 20:47:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('283', '3', 'admin', '2016-12-20 21:38:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('284', '3', 'admin', '2016-12-20 22:12:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('285', '3', 'admin', '2016-12-20 22:22:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('286', '3', 'admin', '2016-12-20 22:40:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('287', '3', 'admin', '2016-12-20 23:15:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('288', '3', 'admin', '2016-12-21 01:10:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('289', '3', 'admin', '2016-12-21 01:58:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('290', '3', 'admin', '2016-12-21 02:03:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('291', '3', 'admin', '2016-12-21 02:05:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('292', '3', 'admin', '2016-12-21 02:23:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('293', '3', 'admin', '2016-12-21 02:27:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('294', '3', 'admin', '2016-12-21 02:44:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('295', '3', 'admin', '2016-12-21 02:47:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('296', '3', 'admin', '2016-12-21 02:49:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('297', '3', 'admin', '2016-12-21 03:16:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('298', '3', 'admin', '2016-12-21 03:22:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('299', '3', 'admin', '2016-12-21 12:35:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('300', '3', 'admin', '2016-12-21 14:32:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('301', '3', 'admin', '2016-12-21 14:36:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('302', '3', 'admin', '2016-12-21 14:40:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('303', '3', 'admin', '2016-12-21 14:45:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('304', '3', 'admin', '2016-12-21 19:34:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('305', '3', 'admin', '2016-12-21 19:50:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('306', '3', 'admin', '2016-12-21 20:07:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('307', '3', 'admin', '2016-12-21 20:07:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('308', '3', 'admin', '2016-12-21 20:08:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('309', '3', 'admin', '2016-12-21 20:30:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('310', '3', 'admin', '2016-12-21 20:47:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('311', '3', 'admin', '2016-12-21 20:52:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('312', '3', 'admin', '2016-12-21 20:52:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('313', '3', 'admin', '2016-12-21 21:19:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('314', '3', 'admin', '2016-12-21 21:20:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('315', '3', 'admin', '2016-12-21 21:28:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('316', '3', 'admin', '2016-12-21 22:08:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('317', '3', 'admin', '2016-12-21 22:28:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('318', '3', 'admin', '2016-12-21 22:30:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('319', '3', 'admin', '2016-12-21 22:41:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('320', '3', 'admin', '2016-12-21 23:14:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('321', '3', 'admin', '2016-12-21 23:29:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('322', '3', 'admin', '2016-12-21 23:41:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('323', '3', 'admin', '2016-12-22 00:13:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('324', '3', 'admin', '2016-12-22 01:33:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('325', '3', 'admin', '2016-12-22 02:16:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('326', '3', 'admin', '2016-12-22 02:37:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('327', '3', 'admin', '2016-12-22 02:42:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('328', '3', 'admin', '2016-12-22 02:44:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('329', '3', 'admin', '2016-12-22 02:50:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('330', '3', 'admin', '2016-12-22 02:56:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('331', '3', 'admin', '2016-12-22 03:03:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('332', '3', 'admin', '2016-12-22 03:10:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('333', '3', 'admin', '2016-12-22 03:13:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('334', '3', 'admin', '2016-12-22 03:22:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('335', '3', 'admin', '2016-12-22 03:33:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('336', '3', 'admin', '2016-12-22 04:21:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('337', '3', 'admin', '2016-12-22 04:23:47', '116.4.154.116');
INSERT INTO `ly_userlogin` VALUES ('338', '3', 'admin', '2016-12-22 04:28:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('339', '3', 'admin', '2016-12-22 05:22:29', '223.104.22.54');
INSERT INTO `ly_userlogin` VALUES ('340', '3', 'admin', '2016-12-22 05:22:50', '223.104.22.54');
INSERT INTO `ly_userlogin` VALUES ('341', '3', 'admin', '2016-12-22 05:23:26', '223.104.22.54');
INSERT INTO `ly_userlogin` VALUES ('342', '3', 'admin', '2016-12-22 05:23:34', '223.104.22.54');
INSERT INTO `ly_userlogin` VALUES ('343', '3', 'admin', '2016-12-22 05:23:42', '223.104.22.54');
INSERT INTO `ly_userlogin` VALUES ('344', '3', 'admin', '2016-12-22 05:29:45', '113.16.150.1');
INSERT INTO `ly_userlogin` VALUES ('345', '3', 'admin', '2016-12-22 08:35:33', '113.16.150.136');
INSERT INTO `ly_userlogin` VALUES ('346', '3', 'admin', '2016-12-22 09:17:28', '113.16.150.1');
INSERT INTO `ly_userlogin` VALUES ('347', '3', 'admin', '2016-12-22 09:59:21', '223.104.22.54');
INSERT INTO `ly_userlogin` VALUES ('348', '3', 'admin', '2016-12-22 12:52:40', '117.136.39.233');
INSERT INTO `ly_userlogin` VALUES ('349', '3', 'admin', '2016-12-22 12:53:24', '14.152.69.151');
INSERT INTO `ly_userlogin` VALUES ('350', '3', 'admin', '2016-12-22 18:27:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('351', '3', 'admin', '2016-12-24 20:46:59', '223.104.1.131');
INSERT INTO `ly_userlogin` VALUES ('352', '3', 'admin', '2016-12-24 21:46:25', '59.40.14.10');
INSERT INTO `ly_userlogin` VALUES ('353', '3', 'admin', '2016-12-24 22:33:16', '223.104.1.131');
INSERT INTO `ly_userlogin` VALUES ('354', '3', 'admin', '2016-12-24 23:28:51', '223.104.1.131');
INSERT INTO `ly_userlogin` VALUES ('355', '3', 'admin', '2016-12-25 00:50:35', '223.104.1.131');
INSERT INTO `ly_userlogin` VALUES ('356', '3', 'admin', '2016-12-25 01:32:47', '223.104.1.131');
INSERT INTO `ly_userlogin` VALUES ('357', '3', 'admin', '2016-12-25 02:04:16', '223.104.1.131');
INSERT INTO `ly_userlogin` VALUES ('358', '3', 'admin', '2016-12-26 02:04:53', '14.156.106.74');
INSERT INTO `ly_userlogin` VALUES ('359', '3', 'admin', '2016-12-26 23:13:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('360', '3', 'admin', '2016-12-27 00:13:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('361', '3', 'admin', '2016-12-27 12:46:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('362', '3', 'admin', '2016-12-27 13:07:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('363', '3', 'admin', '2016-12-27 23:16:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('364', '3', 'admin', '2016-12-28 00:01:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('365', '3', 'admin', '2016-12-28 00:01:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('366', '3', 'admin', '2016-12-28 16:35:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('367', '3', 'admin', '2016-12-28 18:04:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('368', '3', 'admin', '2016-12-28 20:11:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('369', '3', 'admin', '2016-12-28 20:49:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('370', '3', 'admin', '2016-12-28 20:54:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('371', '3', 'admin', '2016-12-28 20:59:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('372', '3', 'admin', '2016-12-28 21:01:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('373', '3', 'admin', '2016-12-28 21:07:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('374', '3', 'admin', '2016-12-28 21:10:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('375', '3', 'admin', '2016-12-28 21:22:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('376', '3', 'admin', '2016-12-28 21:25:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('377', '3', 'admin', '2016-12-28 21:33:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('378', '3', 'admin', '2016-12-30 20:46:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('379', '3', 'admin', '2016-12-30 20:52:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('380', '3', 'admin', '2016-12-30 20:53:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('381', '3', 'admin', '2016-12-30 21:08:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('382', '3', 'admin', '2016-12-30 22:35:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('383', '3', 'admin', '2016-12-30 23:09:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('384', '3', 'admin', '2016-12-31 19:59:03', '14.156.107.71');
INSERT INTO `ly_userlogin` VALUES ('385', '3', 'admin', '2016-12-31 20:05:00', '120.197.198.37');
INSERT INTO `ly_userlogin` VALUES ('386', '3', 'admin', '2016-12-31 20:05:28', '120.197.198.37');
INSERT INTO `ly_userlogin` VALUES ('387', '3', 'admin', '2016-12-31 20:06:13', '120.197.198.37');
INSERT INTO `ly_userlogin` VALUES ('388', '3', 'admin', '2016-12-31 20:06:20', '120.197.198.38');
INSERT INTO `ly_userlogin` VALUES ('389', '3', 'admin', '2016-12-31 20:06:43', '120.197.198.38');
INSERT INTO `ly_userlogin` VALUES ('390', '3', 'admin', '2016-12-31 20:40:19', '120.197.198.49');
INSERT INTO `ly_userlogin` VALUES ('391', '3', 'admin', '2016-12-31 20:48:24', '120.197.198.61');
INSERT INTO `ly_userlogin` VALUES ('392', '3', 'admin', '2016-12-31 21:20:41', '14.156.107.71');
INSERT INTO `ly_userlogin` VALUES ('393', '3', 'admin', '2017-01-01 09:51:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('394', '3', 'admin', '2017-01-01 10:41:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('395', '3', 'admin', '2017-01-01 14:52:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('396', '3', 'admin', '2017-01-01 14:57:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('397', '3', 'admin', '2017-01-01 20:46:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('398', '3', 'admin', '2017-01-01 20:46:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('399', '3', 'admin', '2017-01-01 20:47:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('400', '3', 'admin', '2017-01-01 20:55:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('401', '3', 'admin', '2017-01-01 20:57:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('402', '3', 'admin', '2017-01-01 21:02:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('403', '3', 'admin', '2017-01-02 02:42:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('404', '3', 'admin', '2017-01-02 08:33:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('405', '3', 'admin', '2017-01-02 08:48:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('406', '3', 'admin', '2017-01-02 08:48:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('407', '3', 'admin', '2017-01-02 08:48:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('408', '3', 'admin', '2017-01-02 08:51:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('409', '3', 'admin', '2017-01-02 08:57:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('410', '3', 'admin', '2017-01-02 09:00:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('411', '3', 'admin', '2017-01-02 09:04:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('412', '3', 'admin', '2017-01-02 09:09:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('413', '3', 'admin', '2017-01-02 09:11:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('414', '3', 'admin', '2017-01-02 09:12:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('415', '3', 'admin', '2017-01-02 09:13:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('416', '3', 'admin', '2017-01-02 09:17:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('417', '3', 'admin', '2017-01-02 09:27:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('418', '3', 'admin', '2017-01-02 09:50:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('419', '3', 'admin', '2017-01-02 09:59:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('420', '3', 'admin', '2017-01-02 10:01:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('421', '3', 'admin', '2017-01-02 10:14:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('422', '3', 'admin', '2017-01-02 10:31:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('423', '3', 'admin', '2017-01-02 10:32:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('424', '3', 'admin', '2017-01-02 10:33:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('425', '3', 'admin', '2017-01-02 10:35:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('426', '3', 'admin', '2017-01-02 10:36:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('427', '3', 'admin', '2017-01-02 10:39:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('428', '3', 'admin', '2017-01-02 10:40:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('429', '3', 'admin', '2017-01-02 10:43:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('430', '3', 'admin', '2017-01-02 10:45:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('431', '3', 'admin', '2017-01-02 10:47:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('432', '3', 'admin', '2017-01-02 10:52:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('433', '3', 'admin', '2017-01-02 10:54:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('434', '3', 'admin', '2017-01-02 10:58:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('435', '3', 'admin', '2017-01-02 11:04:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('436', '3', 'admin', '2017-01-02 11:27:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('437', '3', 'admin', '2017-01-02 11:40:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('438', '3', 'admin', '2017-01-02 11:46:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('439', '3', 'admin', '2017-01-02 11:48:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('440', '3', 'admin', '2017-01-02 11:50:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('441', '3', 'admin', '2017-01-02 11:51:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('442', '3', 'admin', '2017-01-02 11:52:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('443', '3', 'admin', '2017-01-02 11:56:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('444', '3', 'admin', '2017-01-02 11:57:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('445', '3', 'admin', '2017-01-02 11:57:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('446', '3', 'admin', '2017-01-02 12:08:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('447', '3', 'admin', '2017-01-02 12:13:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('448', '3', 'admin', '2017-01-02 12:31:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('449', '3', 'admin', '2017-01-02 13:15:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('450', '3', 'admin', '2017-01-02 14:56:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('451', '3', 'admin', '2017-01-02 15:04:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('452', '3', 'admin', '2017-01-02 15:29:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('453', '3', 'admin', '2017-01-02 16:17:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('454', '3', 'admin', '2017-01-02 16:17:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('455', '3', 'admin', '2017-01-02 16:17:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('456', '3', 'admin', '2017-01-02 16:17:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('457', '3', 'admin', '2017-01-02 17:49:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('458', '3', 'admin', '2017-01-02 17:55:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('459', '3', 'admin', '2017-01-02 18:19:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('460', '3', 'admin', '2017-01-02 18:28:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('461', '3', 'admin', '2017-01-02 18:30:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('462', '3', 'admin', '2017-01-02 18:33:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('463', '3', 'admin', '2017-01-02 18:36:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('464', '3', 'admin', '2017-01-02 18:43:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('465', '3', 'admin', '2017-01-02 20:42:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('466', '3', 'admin', '2017-01-02 20:58:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('467', '3', 'admin', '2017-01-02 21:08:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('468', '3', 'admin', '2017-01-02 21:29:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('469', '3', 'admin', '2017-01-02 21:35:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('470', '3', 'admin', '2017-01-02 21:46:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('471', '3', 'admin', '2017-01-02 21:47:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('472', '3', 'admin', '2017-01-02 21:57:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('473', '3', 'admin', '2017-01-02 22:18:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('474', '3', 'admin', '2017-01-02 22:46:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('475', '3', 'admin', '2017-01-02 22:51:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('476', '3', 'admin', '2017-01-02 22:53:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('477', '3', 'admin', '2017-01-02 22:54:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('478', '3', 'admin', '2017-01-03 11:25:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('479', '3', 'admin', '2017-01-03 14:22:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('480', '3', 'admin', '2017-01-03 14:43:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('481', '3', 'admin', '2017-01-03 15:15:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('482', '3', 'admin', '2017-01-03 16:16:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('483', '3', 'admin', '2017-01-03 17:06:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('484', '3', 'admin', '2017-01-03 17:56:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('485', '3', 'admin', '2017-01-03 21:00:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('486', '3', 'admin', '2017-01-03 21:33:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('487', '3', 'admin', '2017-01-03 21:37:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('488', '3', 'admin', '2017-01-03 21:39:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('489', '3', 'admin', '2017-01-03 21:55:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('490', '3', 'admin', '2017-01-03 21:59:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('491', '3', 'admin', '2017-01-03 22:31:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('492', '3', 'admin', '2017-01-03 22:34:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('493', '3', 'admin', '2017-01-03 22:46:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('494', '3', 'admin', '2017-01-03 22:52:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('495', '3', 'admin', '2017-01-03 22:58:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('496', '3', 'admin', '2017-01-03 23:04:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('497', '3', 'admin', '2017-01-03 23:09:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('498', '3', 'admin', '2017-01-03 23:11:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('499', '3', 'admin', '2017-01-03 23:21:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('500', '3', 'admin', '2017-01-03 23:36:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('501', '3', 'admin', '2017-01-04 00:19:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('502', '3', 'admin', '2017-01-04 00:49:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('503', '3', 'admin', '2017-01-04 00:51:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('504', '3', 'admin', '2017-01-04 00:51:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('505', '3', 'admin', '2017-01-04 01:10:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('506', '3', 'admin', '2017-01-04 01:27:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('507', '3', 'admin', '2017-01-04 02:01:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('508', '3', 'admin', '2017-01-04 02:07:32', '113.78.166.38');
INSERT INTO `ly_userlogin` VALUES ('509', '3', 'admin', '2017-01-04 02:15:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('510', '3', 'admin', '2017-01-04 10:58:08', '112.98.10.223');
INSERT INTO `ly_userlogin` VALUES ('511', '3', 'admin', '2017-01-04 11:02:02', '106.39.189.75');
INSERT INTO `ly_userlogin` VALUES ('512', '3', 'admin', '2017-01-04 15:06:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('513', '3', 'admin', '2017-01-04 15:55:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('514', '3', 'admin', '2017-01-04 16:27:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('515', '3', 'admin', '2017-01-04 17:15:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('516', '3', 'admin', '2017-01-04 17:25:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('517', '3', 'admin', '2017-01-04 17:44:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('518', '3', 'admin', '2017-01-04 17:57:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('519', '3', 'admin', '2017-01-04 18:14:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('520', '3', 'admin', '2017-01-04 19:09:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('521', '3', 'admin', '2017-01-04 21:35:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('522', '3', 'admin', '2017-01-04 21:49:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('523', '3', 'admin', '2017-01-04 21:51:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('524', '3', 'admin', '2017-01-04 22:12:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('525', '3', 'admin', '2017-01-04 22:17:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('526', '3', 'admin', '2017-01-04 22:21:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('527', '3', 'admin', '2017-01-04 22:31:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('528', '3', 'admin', '2017-01-04 22:37:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('529', '3', 'admin', '2017-01-04 23:05:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('530', '3', 'admin', '2017-01-04 23:06:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('531', '3', 'admin', '2017-01-04 23:31:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('532', '3', 'admin', '2017-01-04 23:41:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('533', '3', 'admin', '2017-01-04 23:44:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('534', '3', 'admin', '2017-01-04 23:59:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('535', '3', 'admin', '2017-01-05 00:07:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('536', '3', 'admin', '2017-01-05 00:11:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('537', '3', 'admin', '2017-01-05 00:11:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('538', '3', 'admin', '2017-01-05 00:16:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('539', '3', 'admin', '2017-01-05 01:58:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('540', '3', 'admin', '2017-01-05 03:08:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('541', '3', 'admin', '2017-01-05 03:12:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('542', '3', 'admin', '2017-01-05 03:30:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('543', '3', 'admin', '2017-01-05 03:34:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('544', '3', 'admin', '2017-01-05 03:42:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('545', '3', 'admin', '2017-01-05 03:49:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('546', '3', 'admin', '2017-01-05 03:52:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('547', '3', 'admin', '2017-01-05 03:55:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('548', '3', 'admin', '2017-01-05 03:57:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('549', '3', 'admin', '2017-01-05 04:10:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('550', '3', 'admin', '2017-01-05 04:20:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('551', '3', 'admin', '2017-01-05 04:25:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('552', '3', 'admin', '2017-01-05 07:22:59', '183.12.240.214');
INSERT INTO `ly_userlogin` VALUES ('553', '3', 'admin', '2017-01-05 07:30:57', '183.12.240.214');
INSERT INTO `ly_userlogin` VALUES ('554', '3', 'admin', '2017-01-05 09:22:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('555', '3', 'admin', '2017-01-05 09:25:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('556', '3', 'admin', '2017-01-05 10:24:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('557', '3', 'admin', '2017-01-05 10:26:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('558', '3', 'admin', '2017-01-05 10:38:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('559', '3', 'admin', '2017-01-05 10:41:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('560', '3', 'admin', '2017-01-05 10:52:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('561', '3', 'admin', '2017-01-05 11:48:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('562', '3', 'admin', '2017-01-05 11:53:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('563', '3', 'admin', '2017-01-05 11:53:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('564', '3', 'admin', '2017-01-05 11:54:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('565', '3', 'admin', '2017-01-05 14:26:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('566', '3', 'admin', '2017-01-05 14:33:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('567', '3', 'admin', '2017-01-05 14:38:22', '119.136.82.34');
INSERT INTO `ly_userlogin` VALUES ('568', '3', 'admin', '2017-01-05 14:38:47', '119.136.82.34');
INSERT INTO `ly_userlogin` VALUES ('569', '3', 'admin', '2017-01-05 14:55:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('570', '3', 'admin', '2017-01-05 15:49:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('571', '3', 'admin', '2017-01-05 18:08:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('572', '3', 'admin', '2017-01-05 18:11:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('573', '3', 'admin', '2017-01-05 18:15:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('574', '3', 'admin', '2017-01-05 18:19:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('575', '3', 'admin', '2017-01-05 18:24:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('576', '3', 'admin', '2017-01-05 18:34:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('577', '3', 'admin', '2017-01-05 18:39:32', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('578', '3', 'admin', '2017-01-05 18:39:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('579', '3', 'admin', '2017-01-05 18:52:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('580', '3', 'admin', '2017-01-05 20:02:42', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('581', '3', 'admin', '2017-01-05 20:02:42', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('582', '3', 'admin', '2017-01-05 20:02:43', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('583', '3', 'admin', '2017-01-05 20:02:44', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('584', '3', 'admin', '2017-01-05 20:02:44', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('585', '3', 'admin', '2017-01-05 20:02:44', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('586', '3', 'admin', '2017-01-05 20:02:44', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('587', '3', 'admin', '2017-01-05 20:02:45', '27.38.17.110');
INSERT INTO `ly_userlogin` VALUES ('588', '3', 'admin', '2017-01-05 21:23:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('589', '3', 'admin', '2017-01-05 21:30:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('590', '3', 'admin', '2017-01-05 22:50:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('591', '3', 'admin', '2017-01-05 22:52:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('592', '3', 'admin', '2017-01-05 22:57:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('593', '3', 'admin', '2017-01-05 23:08:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('594', '3', 'admin', '2017-01-05 23:14:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('595', '3', 'admin', '2017-01-06 01:14:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('596', '3', 'admin', '2017-01-06 01:18:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('597', '3', 'admin', '2017-01-06 10:03:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('598', '3', 'admin', '2017-01-06 12:25:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('599', '3', 'admin', '2017-01-06 12:36:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('600', '3', 'admin', '2017-01-06 12:55:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('601', '3', 'admin', '2017-01-06 13:03:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('602', '3', 'admin', '2017-01-08 09:36:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('603', '3', 'admin', '2017-01-08 10:05:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('604', '3', 'admin', '2017-01-08 10:26:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('605', '3', 'admin', '2017-01-08 10:37:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('606', '3', 'admin', '2017-01-08 10:41:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('607', '3', 'admin', '2017-01-08 10:53:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('608', '3', 'admin', '2017-01-08 11:02:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('609', '3', 'admin', '2017-01-08 11:04:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('610', '3', 'admin', '2017-01-08 11:25:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('611', '3', 'admin', '2017-01-08 11:32:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('612', '3', 'admin', '2017-01-08 11:54:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('613', '3', 'admin', '2017-01-08 11:56:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('614', '3', 'admin', '2017-01-08 11:57:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('615', '3', 'admin', '2017-01-08 11:57:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('616', '3', 'admin', '2017-01-08 12:12:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('617', '3', 'admin', '2017-01-08 13:06:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('618', '3', 'admin', '2017-01-08 21:24:22', '117.136.40.39');
INSERT INTO `ly_userlogin` VALUES ('619', '3', 'admin', '2017-01-08 21:30:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('620', '3', 'admin', '2017-01-09 10:55:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('621', '3', 'admin', '2017-01-09 22:57:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('622', '3', 'admin', '2017-01-10 00:30:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('623', '3', 'admin', '2017-01-10 01:13:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('624', '3', 'admin', '2017-01-10 01:33:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('625', '3', 'admin', '2017-01-10 01:41:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('626', '3', 'admin', '2017-01-10 23:05:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('627', '3', 'admin', '2017-01-10 23:37:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('628', '3', 'admin', '2017-01-10 23:48:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('629', '3', 'admin', '2017-01-10 23:49:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('630', '3', 'admin', '2017-01-10 23:50:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('631', '3', 'admin', '2017-01-10 23:54:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('632', '3', 'admin', '2017-01-10 23:59:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('633', '3', 'admin', '2017-01-11 00:01:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('634', '3', 'admin', '2017-01-11 00:10:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('635', '3', 'admin', '2017-01-11 00:12:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('636', '3', 'admin', '2017-01-11 00:16:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('637', '3', 'admin', '2017-01-11 00:17:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('638', '3', 'admin', '2017-01-11 00:30:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('639', '3', 'admin', '2017-01-11 01:18:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('640', '3', 'admin', '2017-01-11 01:29:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('641', '3', 'admin', '2017-01-11 03:17:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('642', '3', 'admin', '2017-01-11 03:27:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('643', '3', 'admin', '2017-01-11 03:57:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('644', '3', 'admin', '2017-01-11 16:33:04', '223.104.90.92');
INSERT INTO `ly_userlogin` VALUES ('645', '3', 'admin', '2017-01-11 16:33:04', '223.104.90.92');
INSERT INTO `ly_userlogin` VALUES ('646', '3', 'admin', '2017-01-11 16:33:04', '223.104.90.92');
INSERT INTO `ly_userlogin` VALUES ('647', '3', 'admin', '2017-01-11 16:33:04', '223.104.90.92');
INSERT INTO `ly_userlogin` VALUES ('648', '3', 'admin', '2017-01-11 16:33:05', '223.104.90.92');
INSERT INTO `ly_userlogin` VALUES ('649', '3', 'admin', '2017-01-11 16:33:08', '223.104.90.92');
INSERT INTO `ly_userlogin` VALUES ('650', '3', 'admin', '2017-01-11 22:48:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('651', '3', 'admin', '2017-01-11 23:22:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('652', '3', 'admin', '2017-01-11 23:28:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('653', '3', 'admin', '2017-01-11 23:33:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('654', '3', 'admin', '2017-01-12 06:15:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('655', '3', 'admin', '2017-01-12 06:16:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('656', '3', 'admin', '2017-01-12 06:16:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('657', '3', 'admin', '2017-01-12 06:33:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('658', '3', 'admin', '2017-01-12 06:45:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('659', '3', 'admin', '2017-01-12 07:27:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('660', '3', 'admin', '2017-01-12 07:31:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('661', '3', 'admin', '2017-01-12 07:44:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('662', '3', 'admin', '2017-01-12 07:50:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('663', '3', 'admin', '2017-01-12 08:42:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('664', '3', 'admin', '2017-01-12 10:41:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('665', '3', 'admin', '2017-01-12 10:49:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('666', '3', 'admin', '2017-01-12 10:50:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('667', '3', 'admin', '2017-01-12 12:52:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('668', '3', 'admin', '2017-01-12 12:54:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('669', '3', 'admin', '2017-01-12 14:02:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('670', '3', 'admin', '2017-01-12 14:27:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('671', '3', 'admin', '2017-01-12 14:29:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('672', '3', 'admin', '2017-01-12 14:45:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('673', '3', 'admin', '2017-01-12 14:49:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('674', '3', 'admin', '2017-01-14 23:18:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('675', '3', 'admin', '2017-01-15 03:02:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('676', '3', 'admin', '2017-01-15 08:10:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('677', '3', 'admin', '2017-01-15 10:25:05', '223.104.90.73');
INSERT INTO `ly_userlogin` VALUES ('678', '3', 'admin', '2017-01-16 00:30:23', '113.16.140.214');
INSERT INTO `ly_userlogin` VALUES ('679', '3', 'admin', '2017-01-16 08:44:26', '223.104.91.76');
INSERT INTO `ly_userlogin` VALUES ('680', '3', 'admin', '2017-01-23 22:02:10', '14.220.120.118');
INSERT INTO `ly_userlogin` VALUES ('681', '3', 'admin', '2017-01-23 22:10:58', '14.220.120.118');
INSERT INTO `ly_userlogin` VALUES ('682', '3', 'admin', '2017-01-23 22:38:13', '223.73.191.16');
INSERT INTO `ly_userlogin` VALUES ('683', '3', 'admin', '2017-02-03 15:57:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('684', '3', 'admin', '2017-02-03 15:58:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('685', '3', 'admin', '2017-02-09 21:10:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('686', '3', 'admin', '2017-02-09 21:30:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('687', '3', 'admin', '2017-02-09 21:30:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('688', '3', 'admin', '2017-02-14 22:51:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('689', '3', 'admin', '2017-02-14 23:13:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('690', '3', 'admin', '2017-02-15 21:02:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('691', '3', 'admin', '2017-02-15 22:06:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('692', '3', 'admin', '2017-02-15 22:09:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('693', '3', 'admin', '2017-02-15 22:49:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('694', '3', 'admin', '2017-02-15 23:09:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('695', '3', 'admin', '2017-02-15 23:59:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('696', '3', 'admin', '2017-02-16 00:02:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('697', '3', 'admin', '2017-02-16 00:04:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('698', '3', 'admin', '2017-02-16 00:11:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('699', '3', 'admin', '2017-02-16 00:15:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('700', '3', 'admin', '2017-02-16 00:21:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('701', '3', 'admin', '2017-02-16 15:27:52', '27.38.177.134');
INSERT INTO `ly_userlogin` VALUES ('702', '3', 'admin', '2017-02-16 15:39:28', '27.38.177.134');
INSERT INTO `ly_userlogin` VALUES ('703', '3', 'admin', '2017-02-16 16:22:34', '27.38.176.32');
INSERT INTO `ly_userlogin` VALUES ('704', '3', 'admin', '2017-02-16 16:22:40', '27.38.176.32');
INSERT INTO `ly_userlogin` VALUES ('705', '8', 'sukeyu', '2017-02-16 16:23:23', '27.38.176.32');
INSERT INTO `ly_userlogin` VALUES ('706', '3', 'admin', '2017-02-16 16:23:34', '163.125.210.32');
INSERT INTO `ly_userlogin` VALUES ('707', '3', 'admin', '2017-02-16 21:13:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('708', '3', 'admin', '2017-02-16 21:32:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('709', '3', 'admin', '2017-02-16 21:38:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('710', '3', 'admin', '2017-02-16 21:40:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('711', '3', 'admin', '2017-02-16 21:40:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('712', '3', 'admin', '2017-02-16 21:41:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('713', '3', 'admin', '2017-02-16 21:48:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('714', '3', 'admin', '2017-02-16 22:33:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('715', '3', 'admin', '2017-02-16 22:41:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('716', '3', 'admin', '2017-02-16 22:43:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('717', '3', 'admin', '2017-02-16 23:01:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('718', '3', 'admin', '2017-02-16 23:25:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('719', '3', 'admin', '2017-02-16 23:26:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('720', '3', 'admin', '2017-02-16 23:31:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('721', '3', 'admin', '2017-02-16 23:36:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('722', '3', 'admin', '2017-02-16 23:44:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('723', '3', 'admin', '2017-02-16 23:51:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('724', '3', 'admin', '2017-02-16 23:54:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('725', '3', 'admin', '2017-02-17 00:00:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('726', '3', 'admin', '2017-02-17 00:20:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('727', '3', 'admin', '2017-02-17 23:38:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('728', '3', 'admin', '2017-02-18 01:14:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('729', '3', 'admin', '2017-02-18 01:39:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('730', '3', 'admin', '2017-02-18 02:15:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('731', '3', 'admin', '2017-02-18 02:26:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('732', '3', 'admin', '2017-02-18 02:40:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('733', '3', 'admin', '2017-02-18 13:59:13', '27.38.176.32');
INSERT INTO `ly_userlogin` VALUES ('734', '3', 'admin', '2017-02-18 14:34:00', '27.46.7.169');
INSERT INTO `ly_userlogin` VALUES ('735', '3', 'admin', '2017-02-18 14:41:08', '58.251.169.64');
INSERT INTO `ly_userlogin` VALUES ('736', '3', 'admin', '2017-02-18 14:59:21', '58.251.169.64');
INSERT INTO `ly_userlogin` VALUES ('737', '3', 'admin', '2017-02-18 15:00:10', '27.46.7.186');
INSERT INTO `ly_userlogin` VALUES ('738', '3', 'admin', '2017-02-18 15:05:26', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('739', '3', 'admin', '2017-02-18 15:36:14', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('740', '3', 'admin', '2017-02-18 15:42:20', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('741', '3', 'admin', '2017-02-18 15:47:35', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('742', '3', 'admin', '2017-02-18 15:50:31', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('743', '3', 'admin', '2017-02-18 15:54:24', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('744', '3', 'admin', '2017-02-18 16:01:56', '27.46.7.180');
INSERT INTO `ly_userlogin` VALUES ('745', '3', 'admin', '2017-02-18 16:18:29', '27.38.176.116');
INSERT INTO `ly_userlogin` VALUES ('746', '3', 'admin', '2017-02-18 16:21:44', '27.38.176.116');
INSERT INTO `ly_userlogin` VALUES ('747', '3', 'admin', '2017-02-18 16:22:49', '27.38.176.116');
INSERT INTO `ly_userlogin` VALUES ('748', '3', 'admin', '2017-02-18 16:27:40', '27.38.176.116');
INSERT INTO `ly_userlogin` VALUES ('749', '3', 'admin', '2017-02-18 16:29:06', '163.125.243.51');
INSERT INTO `ly_userlogin` VALUES ('750', '3', 'admin', '2017-02-18 17:22:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('751', '3', 'admin', '2017-02-18 17:25:29', '163.125.243.25');
INSERT INTO `ly_userlogin` VALUES ('752', '3', 'admin', '2017-02-18 18:03:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('753', '3', 'admin', '2017-02-18 18:32:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('754', '3', 'admin', '2017-02-18 19:12:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('755', '3', 'admin', '2017-02-18 19:13:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('756', '3', 'admin', '2017-02-18 19:22:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('757', '3', 'admin', '2017-02-18 19:24:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('758', '3', 'admin', '2017-02-18 19:29:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('759', '3', 'admin', '2017-02-18 19:33:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('760', '3', 'admin', '2017-02-18 19:35:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('761', '3', 'admin', '2017-02-19 08:38:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('762', '3', 'admin', '2017-02-19 08:40:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('763', '3', 'admin', '2017-02-19 08:56:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('764', '3', 'admin', '2017-02-19 09:25:40', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('765', '3', 'admin', '2017-02-19 09:41:22', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('766', '3', 'admin', '2017-02-19 09:41:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('767', '3', 'admin', '2017-02-19 10:37:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('768', '3', 'admin', '2017-02-19 10:48:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('769', '3', 'admin', '2017-02-19 10:54:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('770', '3', 'admin', '2017-02-19 13:01:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('771', '3', 'admin', '2017-02-19 13:14:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('772', '3', 'admin', '2017-02-19 13:18:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('773', '3', 'admin', '2017-02-19 13:59:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('774', '3', 'admin', '2017-02-19 14:00:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('775', '3', 'admin', '2017-02-19 14:00:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('776', '3', 'admin', '2017-02-19 14:03:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('777', '3', 'admin', '2017-02-19 14:20:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('778', '3', 'admin', '2017-02-19 14:21:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('779', '3', 'admin', '2017-02-19 14:28:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('780', '3', 'admin', '2017-02-19 14:43:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('781', '3', 'admin', '2017-02-19 15:12:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('782', '3', 'admin', '2017-02-19 15:37:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('783', '3', 'admin', '2017-02-19 15:39:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('784', '3', 'admin', '2017-02-19 18:25:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('785', '3', 'admin', '2017-02-19 19:22:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('786', '3', 'admin', '2017-02-19 19:24:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('787', '3', 'admin', '2017-02-19 20:50:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('788', '3', 'admin', '2017-02-19 21:38:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('789', '3', 'admin', '2017-02-19 21:38:43', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('790', '3', 'admin', '2017-02-19 21:39:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('791', '3', 'admin', '2017-02-19 21:43:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('792', '3', 'admin', '2017-02-19 22:13:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('793', '3', 'admin', '2017-02-19 22:14:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('794', '3', 'admin', '2017-02-19 22:18:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('795', '3', 'admin', '2017-02-19 22:24:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('796', '3', 'admin', '2017-02-19 22:32:21', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('797', '3', 'admin', '2017-02-19 22:32:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('798', '3', 'admin', '2017-02-19 22:38:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('799', '3', 'admin', '2017-02-19 22:47:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('800', '3', 'admin', '2017-02-19 22:49:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('801', '3', 'admin', '2017-02-19 22:54:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('802', '3', 'admin', '2017-02-19 22:58:30', '59.40.86.147');
INSERT INTO `ly_userlogin` VALUES ('803', '3', 'admin', '2017-02-19 23:08:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('804', '3', 'admin', '2017-02-19 23:11:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('805', '3', 'admin', '2017-02-19 23:13:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('806', '3', 'admin', '2017-02-19 23:22:03', '59.40.86.204');
INSERT INTO `ly_userlogin` VALUES ('807', '3', 'admin', '2017-02-19 23:22:08', '59.40.86.204');
INSERT INTO `ly_userlogin` VALUES ('808', '3', 'admin', '2017-02-20 00:13:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('809', '3', 'admin', '2017-02-20 19:59:45', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('810', '3', 'admin', '2017-02-20 20:00:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('811', '3', 'admin', '2017-02-20 20:17:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('812', '3', 'admin', '2017-02-20 20:20:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('813', '3', 'admin', '2017-02-20 20:46:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('814', '3', 'admin', '2017-02-20 21:09:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('815', '3', 'admin', '2017-02-20 21:11:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('816', '3', 'admin', '2017-02-20 21:18:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('817', '3', 'admin', '2017-02-20 21:19:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('818', '3', 'admin', '2017-02-20 22:09:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('819', '3', 'admin', '2017-02-20 22:32:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('820', '3', 'admin', '2017-02-20 22:33:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('821', '3', 'admin', '2017-02-20 23:02:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('822', '3', 'admin', '2017-02-20 23:03:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('823', '3', 'admin', '2017-02-20 23:21:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('824', '3', 'admin', '2017-02-20 23:42:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('825', '3', 'admin', '2017-02-20 23:57:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('826', '3', 'admin', '2017-02-21 00:03:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('827', '3', 'admin', '2017-02-21 00:12:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('828', '3', 'admin', '2017-02-21 00:46:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('829', '3', 'admin', '2017-02-21 00:50:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('830', '3', 'admin', '2017-02-21 00:54:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('831', '3', 'admin', '2017-02-21 00:57:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('832', '3', 'admin', '2017-02-21 01:00:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('833', '3', 'admin', '2017-02-21 01:03:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('834', '3', 'admin', '2017-02-21 18:51:27', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('835', '3', 'admin', '2017-02-21 18:54:25', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('836', '3', 'admin', '2017-02-21 19:42:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('837', '3', 'admin', '2017-02-21 19:56:09', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('838', '3', 'admin', '2017-02-21 19:56:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('839', '3', 'admin', '2017-02-21 20:02:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('840', '3', 'admin', '2017-02-21 20:14:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('841', '3', 'admin', '2017-02-21 20:15:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('842', '3', 'admin', '2017-02-21 20:22:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('843', '3', 'admin', '2017-02-21 20:23:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('844', '3', 'admin', '2017-02-21 20:25:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('845', '3', 'admin', '2017-02-21 20:46:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('846', '3', 'admin', '2017-02-21 21:03:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('847', '3', 'admin', '2017-02-21 21:04:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('848', '3', 'admin', '2017-02-21 21:06:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('849', '3', 'admin', '2017-02-21 21:08:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('850', '3', 'admin', '2017-02-21 21:14:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('851', '3', 'admin', '2017-02-21 21:20:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('852', '3', 'admin', '2017-02-21 21:20:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('853', '3', 'admin', '2017-02-21 21:25:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('854', '3', 'admin', '2017-02-21 21:30:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('855', '3', 'admin', '2017-02-21 21:31:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('856', '3', 'admin', '2017-02-21 21:45:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('857', '3', 'admin', '2017-02-21 21:46:17', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('858', '3', 'admin', '2017-02-21 21:48:47', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('859', '3', 'admin', '2017-02-21 22:00:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('860', '3', 'admin', '2017-02-21 22:25:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('861', '3', 'admin', '2017-02-21 22:34:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('862', '3', 'admin', '2017-02-21 22:34:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('863', '3', 'admin', '2017-02-21 23:06:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('864', '3', 'admin', '2017-02-21 23:12:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('865', '3', 'admin', '2017-02-21 23:14:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('866', '3', 'admin', '2017-02-21 23:16:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('867', '3', 'admin', '2017-02-21 23:25:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('868', '3', 'admin', '2017-02-21 23:31:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('869', '3', 'admin', '2017-02-21 23:59:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('870', '3', 'admin', '2017-02-22 00:04:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('871', '3', 'admin', '2017-02-22 00:13:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('872', '3', 'admin', '2017-02-22 00:18:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('873', '3', 'admin', '2017-02-22 00:20:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('874', '3', 'admin', '2017-02-22 00:25:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('875', '3', 'admin', '2017-02-22 00:32:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('876', '3', 'admin', '2017-02-22 00:35:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('877', '3', 'admin', '2017-02-22 00:37:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('878', '3', 'admin', '2017-02-22 19:09:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('879', '3', 'admin', '2017-02-22 20:01:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('880', '3', 'admin', '2017-02-22 20:30:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('881', '3', 'admin', '2017-02-22 20:39:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('882', '3', 'admin', '2017-02-22 20:40:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('883', '3', 'admin', '2017-02-22 20:43:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('884', '3', 'admin', '2017-02-22 21:09:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('885', '3', 'admin', '2017-02-22 21:12:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('886', '3', 'admin', '2017-02-22 21:14:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('887', '3', 'admin', '2017-02-22 21:21:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('888', '3', 'admin', '2017-02-22 21:22:43', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('889', '3', 'admin', '2017-02-22 21:30:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('890', '3', 'admin', '2017-02-22 21:39:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('891', '3', 'admin', '2017-02-22 21:53:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('892', '3', 'admin', '2017-02-22 22:02:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('893', '3', 'admin', '2017-02-22 22:10:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('894', '3', 'admin', '2017-02-22 22:10:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('895', '3', 'admin', '2017-02-22 23:06:17', '113.12.102.80');
INSERT INTO `ly_userlogin` VALUES ('896', '3', 'admin', '2017-02-24 20:51:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('897', '3', 'admin', '2017-02-24 20:53:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('898', '3', 'admin', '2017-02-24 21:21:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('899', '3', 'admin', '2017-02-24 22:46:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('900', '3', 'admin', '2017-02-24 22:46:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('901', '3', 'admin', '2017-02-24 22:47:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('902', '3', 'admin', '2017-02-24 22:48:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('903', '3', 'admin', '2017-02-24 22:51:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('904', '3', 'admin', '2017-02-24 22:51:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('905', '3', 'admin', '2017-02-24 22:51:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('906', '3', 'admin', '2017-02-24 22:54:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('907', '3', 'admin', '2017-02-24 22:55:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('908', '3', 'admin', '2017-02-24 23:03:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('909', '3', 'admin', '2017-02-24 23:20:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('910', '3', 'admin', '2017-02-24 23:22:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('911', '3', 'admin', '2017-02-24 23:23:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('912', '3', 'admin', '2017-02-24 23:31:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('913', '3', 'admin', '2017-02-24 23:34:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('914', '3', 'admin', '2017-02-24 23:35:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('915', '3', 'admin', '2017-02-24 23:35:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('916', '3', 'admin', '2017-02-24 23:37:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('917', '3', 'admin', '2017-02-24 23:48:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('918', '3', 'admin', '2017-02-24 23:48:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('919', '3', 'admin', '2017-02-24 23:48:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('920', '3', 'admin', '2017-02-25 00:27:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('921', '3', 'admin', '2017-02-25 09:12:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('922', '3', 'admin', '2017-02-25 09:12:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('923', '3', 'admin', '2017-02-25 09:14:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('924', '3', 'admin', '2017-02-25 09:37:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('925', '3', 'admin', '2017-02-25 09:47:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('926', '3', 'admin', '2017-02-25 09:47:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('927', '3', 'admin', '2017-02-25 09:47:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('928', '3', 'admin', '2017-02-25 09:55:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('929', '3', 'admin', '2017-02-25 10:23:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('930', '3', 'admin', '2017-02-25 10:27:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('931', '3', 'admin', '2017-02-25 11:43:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('932', '3', 'admin', '2017-02-27 14:17:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('933', '3', 'admin', '2017-02-27 14:21:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('934', '3', 'admin', '2017-02-27 21:23:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('935', '3', 'admin', '2017-02-27 23:01:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('936', '3', 'admin', '2017-02-27 23:09:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('937', '3', 'admin', '2017-02-27 23:14:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('938', '3', 'admin', '2017-02-27 23:15:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('939', '3', 'admin', '2017-02-27 23:38:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('940', '3', 'admin', '2017-02-27 23:38:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('941', '3', 'admin', '2017-02-27 23:41:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('942', '3', 'admin', '2017-02-28 00:05:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('943', '3', 'admin', '2017-02-28 00:05:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('944', '3', 'admin', '2017-02-28 00:06:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('945', '3', 'admin', '2017-02-28 00:10:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('946', '3', 'admin', '2017-02-28 00:12:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('947', '3', 'admin', '2017-02-28 00:18:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('948', '3', 'admin', '2017-02-28 00:21:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('949', '3', 'admin', '2017-02-28 00:21:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('950', '3', 'admin', '2017-02-28 00:23:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('951', '3', 'admin', '2017-02-28 00:25:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('952', '3', 'admin', '2017-02-28 00:30:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('953', '3', 'admin', '2017-02-28 00:31:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('954', '3', 'admin', '2017-02-28 00:37:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('955', '3', 'admin', '2017-02-28 00:39:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('956', '3', 'admin', '2017-02-28 00:42:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('957', '3', 'admin', '2017-02-28 18:05:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('958', '3', 'admin', '2017-02-28 18:16:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('959', '3', 'admin', '2017-02-28 18:25:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('960', '3', 'admin', '2017-02-28 18:37:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('961', '3', 'admin', '2017-02-28 18:46:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('962', '3', 'admin', '2017-02-28 18:48:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('963', '3', 'admin', '2017-02-28 18:54:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('964', '3', 'admin', '2017-02-28 19:11:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('965', '3', 'admin', '2017-02-28 19:11:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('966', '3', 'admin', '2017-02-28 19:14:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('967', '3', 'admin', '2017-02-28 19:18:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('968', '3', 'admin', '2017-02-28 20:49:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('969', '3', 'admin', '2017-02-28 20:52:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('970', '3', 'admin', '2017-02-28 21:08:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('971', '3', 'admin', '2017-02-28 21:24:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('972', '3', 'admin', '2017-02-28 21:27:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('973', '3', 'admin', '2017-02-28 21:30:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('974', '3', 'admin', '2017-02-28 21:37:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('975', '3', 'admin', '2017-02-28 21:42:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('976', '3', 'admin', '2017-02-28 23:44:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('977', '3', 'admin', '2017-03-01 17:12:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('978', '3', 'admin', '2017-03-01 20:49:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('979', '3', 'admin', '2017-03-01 20:57:59', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('980', '3', 'admin', '2017-03-01 21:03:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('981', '3', 'admin', '2017-03-01 21:19:59', '14.220.122.210');
INSERT INTO `ly_userlogin` VALUES ('982', '3', 'admin', '2017-03-01 21:27:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('983', '3', 'admin', '2017-03-01 21:27:33', '14.220.122.210');
INSERT INTO `ly_userlogin` VALUES ('984', '3', 'admin', '2017-03-01 21:37:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('985', '3', 'admin', '2017-03-01 21:44:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('986', '3', 'admin', '2017-03-01 21:50:07', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('987', '3', 'admin', '2017-03-01 21:52:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('988', '3', 'admin', '2017-03-01 21:55:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('989', '3', 'admin', '2017-03-01 21:56:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('990', '3', 'admin', '2017-03-01 21:57:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('991', '3', 'admin', '2017-03-01 21:58:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('992', '3', 'admin', '2017-03-01 22:00:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('993', '3', 'admin', '2017-03-01 22:03:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('994', '3', 'admin', '2017-03-01 22:04:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('995', '3', 'admin', '2017-03-01 22:06:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('996', '3', 'admin', '2017-03-01 22:07:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('997', '3', 'admin', '2017-03-01 22:10:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('998', '3', 'admin', '2017-03-01 22:13:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('999', '3', 'admin', '2017-03-01 22:18:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1000', '3', 'admin', '2017-03-01 22:27:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1001', '3', 'admin', '2017-03-01 22:27:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1002', '3', 'admin', '2017-03-01 22:28:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1003', '3', 'admin', '2017-03-01 22:31:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1004', '3', 'admin', '2017-03-01 22:39:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1005', '3', 'admin', '2017-03-01 22:40:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1006', '3', 'admin', '2017-03-01 22:43:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1007', '3', 'admin', '2017-03-01 22:43:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1008', '3', 'admin', '2017-03-01 22:44:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1009', '3', 'admin', '2017-03-01 22:46:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1010', '3', 'admin', '2017-03-01 22:51:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1011', '3', 'admin', '2017-03-01 22:53:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1012', '3', 'admin', '2017-03-01 23:10:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1013', '3', 'admin', '2017-03-01 23:17:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1014', '3', 'admin', '2017-03-01 23:18:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1015', '3', 'admin', '2017-03-01 23:23:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1016', '3', 'admin', '2017-03-01 23:23:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1017', '3', 'admin', '2017-03-01 23:24:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1018', '3', 'admin', '2017-03-01 23:25:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1019', '3', 'admin', '2017-03-01 23:25:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1020', '3', 'admin', '2017-03-01 23:32:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1021', '3', 'admin', '2017-03-01 23:34:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1022', '3', 'admin', '2017-03-01 23:54:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1023', '3', 'admin', '2017-03-01 23:55:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1024', '3', 'admin', '2017-03-01 23:57:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1025', '3', 'admin', '2017-03-01 23:57:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1026', '3', 'admin', '2017-03-01 23:58:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1027', '3', 'admin', '2017-03-02 00:00:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1028', '3', 'admin', '2017-03-02 00:00:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1029', '3', 'admin', '2017-03-02 00:03:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1030', '3', 'admin', '2017-03-02 00:03:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1031', '3', 'admin', '2017-03-02 00:03:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1032', '3', 'admin', '2017-03-02 00:05:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1033', '3', 'admin', '2017-03-02 00:07:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1034', '3', 'admin', '2017-03-02 00:09:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1035', '3', 'admin', '2017-03-02 00:20:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1036', '3', 'admin', '2017-03-02 00:58:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1037', '3', 'admin', '2017-03-02 00:59:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1038', '3', 'admin', '2017-03-02 01:00:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1039', '3', 'admin', '2017-03-02 01:04:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1040', '3', 'admin', '2017-03-02 01:06:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1041', '3', 'admin', '2017-03-02 01:10:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1042', '3', 'admin', '2017-03-02 01:10:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1043', '3', 'admin', '2017-03-02 01:12:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1044', '3', 'admin', '2017-03-02 08:45:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1045', '3', 'admin', '2017-03-02 09:28:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1046', '3', 'admin', '2017-03-02 15:42:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1047', '3', 'admin', '2017-03-02 18:42:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1048', '3', 'admin', '2017-03-02 18:56:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1049', '3', 'admin', '2017-03-02 19:05:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1050', '3', 'admin', '2017-03-02 19:08:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1051', '3', 'admin', '2017-03-02 19:09:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1052', '3', 'admin', '2017-03-02 19:10:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1053', '3', 'admin', '2017-03-02 19:13:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1054', '3', 'admin', '2017-03-02 19:17:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1055', '3', 'admin', '2017-03-02 19:30:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1056', '3', 'admin', '2017-03-02 19:53:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1057', '3', 'admin', '2017-03-02 19:55:19', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1058', '3', 'admin', '2017-03-02 20:09:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1059', '3', 'admin', '2017-03-02 20:28:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1060', '3', 'admin', '2017-03-02 20:30:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1061', '3', 'admin', '2017-03-02 20:32:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1062', '3', 'admin', '2017-03-02 20:33:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1063', '3', 'admin', '2017-03-02 20:50:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1064', '3', 'admin', '2017-03-02 21:02:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1065', '3', 'admin', '2017-03-02 21:10:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1066', '3', 'admin', '2017-03-02 21:13:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1067', '3', 'admin', '2017-03-02 21:15:46', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1068', '3', 'admin', '2017-03-02 21:18:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1069', '3', 'admin', '2017-03-02 21:21:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1070', '3', 'admin', '2017-03-02 21:23:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1071', '3', 'admin', '2017-03-02 21:23:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1072', '3', 'admin', '2017-03-02 21:39:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1073', '3', 'admin', '2017-03-02 21:40:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1074', '3', 'admin', '2017-03-02 21:42:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1075', '3', 'admin', '2017-03-02 21:42:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1076', '3', 'admin', '2017-03-02 21:50:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1077', '3', 'admin', '2017-03-02 21:52:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1078', '3', 'admin', '2017-03-02 21:54:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1079', '3', 'admin', '2017-03-02 21:56:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1080', '3', 'admin', '2017-03-02 21:59:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1081', '3', 'admin', '2017-03-02 21:59:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1082', '3', 'admin', '2017-03-02 22:04:40', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1083', '3', 'admin', '2017-03-02 22:11:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1084', '3', 'admin', '2017-03-02 22:16:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1085', '3', 'admin', '2017-03-02 22:26:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1086', '3', 'admin', '2017-03-02 22:39:22', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1087', '3', 'admin', '2017-03-02 23:22:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1088', '3', 'admin', '2017-03-02 23:26:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1089', '3', 'admin', '2017-03-02 23:29:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1090', '3', 'admin', '2017-03-02 23:43:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1091', '3', 'admin', '2017-03-02 23:53:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1092', '3', 'admin', '2017-03-02 23:59:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1093', '3', 'admin', '2017-03-03 00:02:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1094', '3', 'admin', '2017-03-03 00:09:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1095', '3', 'admin', '2017-03-03 00:16:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1096', '3', 'admin', '2017-03-03 00:17:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1097', '3', 'admin', '2017-03-03 00:25:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1098', '3', 'admin', '2017-03-03 00:26:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1099', '3', 'admin', '2017-03-03 10:16:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1100', '3', 'admin', '2017-03-03 10:47:38', '117.136.79.200');
INSERT INTO `ly_userlogin` VALUES ('1101', '3', 'admin', '2017-03-03 10:56:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1102', '3', 'admin', '2017-03-03 12:01:59', '117.136.79.200');
INSERT INTO `ly_userlogin` VALUES ('1103', '3', 'admin', '2017-03-03 12:40:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1104', '3', 'admin', '2017-03-04 09:41:00', '223.104.63.221');
INSERT INTO `ly_userlogin` VALUES ('1105', '3', 'admin', '2017-03-04 09:45:15', '223.104.63.221');
INSERT INTO `ly_userlogin` VALUES ('1106', '3', 'admin', '2017-03-04 09:46:20', '223.104.63.221');
INSERT INTO `ly_userlogin` VALUES ('1107', '3', 'admin', '2017-03-04 14:00:39', '223.104.1.158');
INSERT INTO `ly_userlogin` VALUES ('1108', '3', 'admin', '2017-03-04 14:56:04', '223.104.1.158');
INSERT INTO `ly_userlogin` VALUES ('1109', '3', 'admin', '2017-03-04 21:48:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1110', '3', 'admin', '2017-03-05 21:37:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1111', '3', 'admin', '2017-03-05 22:04:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1112', '3', 'admin', '2017-03-05 22:13:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1113', '3', 'admin', '2017-03-05 22:55:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1114', '3', 'admin', '2017-03-05 22:55:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1115', '3', 'admin', '2017-03-05 22:58:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1116', '3', 'admin', '2017-03-05 23:06:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1117', '3', 'admin', '2017-03-05 23:12:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1118', '3', 'admin', '2017-03-05 23:15:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1119', '3', 'admin', '2017-03-05 23:20:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1120', '3', 'admin', '2017-03-05 23:22:07', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1121', '3', 'admin', '2017-03-05 23:29:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1122', '3', 'admin', '2017-03-05 23:34:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1123', '3', 'admin', '2017-03-05 23:36:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1124', '3', 'admin', '2017-03-05 23:40:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1125', '3', 'admin', '2017-03-06 00:15:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1126', '3', 'admin', '2017-03-06 00:18:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1127', '3', 'admin', '2017-03-06 00:22:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1128', '3', 'admin', '2017-03-06 00:23:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1129', '3', 'admin', '2017-03-06 20:54:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1130', '3', 'admin', '2017-03-06 21:04:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1131', '3', 'admin', '2017-03-06 21:17:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1132', '3', 'admin', '2017-03-06 21:24:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1133', '3', 'admin', '2017-03-06 21:30:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1134', '3', 'admin', '2017-03-07 20:20:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1135', '3', 'admin', '2017-03-07 20:32:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1136', '3', 'admin', '2017-03-07 20:34:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1137', '3', 'admin', '2017-03-07 20:57:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1138', '3', 'admin', '2017-03-07 20:59:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1139', '3', 'admin', '2017-03-07 21:04:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1140', '3', 'admin', '2017-03-07 21:18:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1141', '3', 'admin', '2017-03-07 21:23:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1142', '3', 'admin', '2017-03-07 21:24:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1143', '3', 'admin', '2017-03-07 21:58:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1144', '3', 'admin', '2017-03-07 22:21:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1145', '3', 'admin', '2017-03-07 23:03:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1146', '3', 'admin', '2017-03-07 23:03:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1147', '3', 'admin', '2017-03-08 10:16:54', '183.12.243.6');
INSERT INTO `ly_userlogin` VALUES ('1148', '3', 'admin', '2017-03-08 15:42:04', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1149', '3', 'admin', '2017-03-08 18:41:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1150', '3', 'admin', '2017-03-08 20:40:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1151', '3', 'admin', '2017-03-08 21:23:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1152', '3', 'admin', '2017-03-08 21:57:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1153', '3', 'admin', '2017-03-08 22:08:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1154', '3', 'admin', '2017-03-08 22:38:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1155', '3', 'admin', '2017-03-08 22:41:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1156', '3', 'admin', '2017-03-08 22:46:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1157', '3', 'admin', '2017-03-08 22:47:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1158', '3', 'admin', '2017-03-08 22:47:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1159', '3', 'admin', '2017-03-09 00:05:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1160', '3', 'admin', '2017-03-09 00:28:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1161', '3', 'admin', '2017-03-09 01:15:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1162', '3', 'admin', '2017-03-09 19:01:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1163', '3', 'admin', '2017-03-09 19:01:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1164', '3', 'admin', '2017-03-09 19:02:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1165', '3', 'admin', '2017-03-09 19:04:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1166', '3', 'admin', '2017-03-09 19:07:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1167', '3', 'admin', '2017-03-09 19:13:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1168', '3', 'admin', '2017-03-09 19:14:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1169', '3', 'admin', '2017-03-09 19:18:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1170', '3', 'admin', '2017-03-09 19:22:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1171', '3', 'admin', '2017-03-09 19:29:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1172', '3', 'admin', '2017-03-09 19:32:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1173', '3', 'admin', '2017-03-09 19:33:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1174', '3', 'admin', '2017-03-09 19:34:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1175', '3', 'admin', '2017-03-09 19:51:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1176', '3', 'admin', '2017-03-09 19:52:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1177', '3', 'admin', '2017-03-09 20:04:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1178', '3', 'admin', '2017-03-09 20:07:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1179', '3', 'admin', '2017-03-09 21:41:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1180', '3', 'admin', '2017-03-09 23:08:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1181', '3', 'admin', '2017-03-10 00:49:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1182', '3', 'admin', '2017-03-10 00:53:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1183', '3', 'admin', '2017-03-10 08:37:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1184', '3', 'admin', '2017-03-10 09:04:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1185', '3', 'admin', '2017-03-10 10:52:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1186', '3', 'admin', '2017-03-10 12:27:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1187', '3', 'admin', '2017-03-10 14:08:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1188', '3', 'admin', '2017-03-10 14:38:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1189', '3', 'admin', '2017-03-10 14:56:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1190', '3', 'admin', '2017-03-10 15:05:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1191', '3', 'admin', '2017-03-10 15:14:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1192', '3', 'admin', '2017-03-10 16:12:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1193', '3', 'admin', '2017-03-10 16:21:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1194', '3', 'admin', '2017-03-10 16:23:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1195', '3', 'admin', '2017-03-10 16:32:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1196', '3', 'admin', '2017-03-10 17:38:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1197', '3', 'admin', '2017-03-10 18:22:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1198', '3', 'admin', '2017-03-10 19:56:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1199', '3', 'admin', '2017-03-10 19:57:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1200', '3', 'admin', '2017-03-10 22:19:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1201', '3', 'admin', '2017-03-10 22:20:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1202', '3', 'admin', '2017-03-10 22:46:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1203', '3', 'admin', '2017-03-10 23:20:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1204', '3', 'admin', '2017-03-10 23:37:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1205', '3', 'admin', '2017-03-11 00:11:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1206', '3', 'admin', '2017-03-11 11:32:59', '120.77.147.255');
INSERT INTO `ly_userlogin` VALUES ('1207', '3', 'admin', '2017-03-11 11:41:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1208', '3', 'admin', '2017-03-11 11:42:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1209', '3', 'admin', '2017-03-11 13:22:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1210', '3', 'admin', '2017-03-11 13:33:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1211', '3', 'admin', '2017-03-11 13:36:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1212', '3', 'admin', '2017-03-11 14:26:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1213', '3', 'admin', '2017-03-11 14:31:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1214', '3', 'admin', '2017-03-11 14:35:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1215', '3', 'admin', '2017-03-11 14:39:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1216', '3', 'admin', '2017-03-11 14:39:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1217', '3', 'admin', '2017-03-11 14:41:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1218', '3', 'admin', '2017-03-11 14:44:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1219', '3', 'admin', '2017-03-11 14:49:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1220', '3', 'admin', '2017-03-11 14:50:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1221', '3', 'admin', '2017-03-11 14:55:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1222', '3', 'admin', '2017-03-11 14:56:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1223', '3', 'admin', '2017-03-11 14:59:04', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1224', '3', 'admin', '2017-03-11 15:03:37', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1225', '3', 'admin', '2017-03-11 15:09:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1226', '3', 'admin', '2017-03-11 15:10:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1227', '3', 'admin', '2017-03-11 15:10:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1228', '3', 'admin', '2017-03-11 15:12:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1229', '3', 'admin', '2017-03-11 15:20:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1230', '3', 'admin', '2017-03-11 15:23:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1231', '3', 'admin', '2017-03-11 15:37:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1232', '3', 'admin', '2017-03-11 15:44:28', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1233', '3', 'admin', '2017-03-11 15:46:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1234', '3', 'admin', '2017-03-11 15:46:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1235', '3', 'admin', '2017-03-11 15:46:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1236', '3', 'admin', '2017-03-11 15:51:04', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1237', '3', 'admin', '2017-03-11 15:53:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1238', '3', 'admin', '2017-03-11 15:54:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1239', '3', 'admin', '2017-03-11 16:09:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1240', '3', 'admin', '2017-03-11 16:12:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1241', '3', 'admin', '2017-03-11 16:13:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1242', '3', 'admin', '2017-03-11 16:16:13', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1243', '3', 'admin', '2017-03-11 16:19:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1244', '3', 'admin', '2017-03-11 16:23:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1245', '3', 'admin', '2017-03-11 16:23:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1246', '3', 'admin', '2017-03-11 16:36:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1247', '3', 'admin', '2017-03-11 16:42:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1248', '3', 'admin', '2017-03-11 16:48:46', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1249', '3', 'admin', '2017-03-11 16:57:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1250', '3', 'admin', '2017-03-11 17:03:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1251', '3', 'admin', '2017-03-11 17:10:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1252', '3', 'admin', '2017-03-11 17:13:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1253', '3', 'admin', '2017-03-11 17:16:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1254', '3', 'admin', '2017-03-11 17:17:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1255', '3', 'admin', '2017-03-11 17:18:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1256', '3', 'admin', '2017-03-11 17:25:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1257', '3', 'admin', '2017-03-11 17:27:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1258', '3', 'admin', '2017-03-11 17:29:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1259', '3', 'admin', '2017-03-11 17:43:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1260', '3', 'admin', '2017-03-11 17:46:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1261', '3', 'admin', '2017-03-11 18:06:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1262', '3', 'admin', '2017-03-11 18:08:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1263', '3', 'admin', '2017-03-11 18:22:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1264', '3', 'admin', '2017-03-11 18:24:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1265', '3', 'admin', '2017-03-11 18:36:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1266', '3', 'admin', '2017-03-11 18:51:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1267', '3', 'admin', '2017-03-11 19:19:09', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1268', '3', 'admin', '2017-03-11 20:06:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1269', '3', 'admin', '2017-03-11 20:12:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1270', '3', 'admin', '2017-03-11 20:15:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1271', '3', 'admin', '2017-03-11 20:24:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1272', '3', 'admin', '2017-03-11 20:26:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1273', '3', 'admin', '2017-03-11 20:30:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1274', '3', 'admin', '2017-03-11 20:35:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1275', '3', 'admin', '2017-03-11 20:36:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1276', '3', 'admin', '2017-03-11 20:37:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1277', '3', 'admin', '2017-03-11 20:40:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1278', '3', 'admin', '2017-03-11 20:54:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1279', '3', 'admin', '2017-03-11 20:56:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1280', '3', 'admin', '2017-03-11 21:23:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1281', '3', 'admin', '2017-03-11 21:53:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1282', '3', 'admin', '2017-03-11 22:06:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1283', '3', 'admin', '2017-03-11 22:14:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1284', '3', 'admin', '2017-03-11 22:18:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1285', '3', 'admin', '2017-03-11 22:34:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1286', '3', 'admin', '2017-03-11 22:53:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1287', '3', 'admin', '2017-03-11 23:02:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1288', '3', 'admin', '2017-03-11 23:12:02', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1289', '3', 'admin', '2017-03-11 23:26:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1290', '3', 'admin', '2017-03-11 23:29:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1291', '3', 'admin', '2017-03-11 23:32:47', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1292', '3', 'admin', '2017-03-11 23:33:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1293', '3', 'admin', '2017-03-11 23:44:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1294', '3', 'admin', '2017-03-11 23:54:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1295', '3', 'admin', '2017-03-11 23:56:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1296', '3', 'admin', '2017-03-12 00:02:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1297', '3', 'admin', '2017-03-12 00:18:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1298', '3', 'admin', '2017-03-12 00:32:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1299', '3', 'admin', '2017-03-12 00:42:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1300', '3', 'admin', '2017-03-12 01:01:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1301', '3', 'admin', '2017-03-12 01:06:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1302', '3', 'admin', '2017-03-12 01:10:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1303', '3', 'admin', '2017-03-12 01:13:41', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1304', '3', 'admin', '2017-03-12 01:18:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1305', '3', 'admin', '2017-03-12 01:22:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1306', '3', 'admin', '2017-03-12 01:50:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1307', '3', 'admin', '2017-03-12 02:06:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1308', '3', 'admin', '2017-03-12 02:19:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1309', '3', 'admin', '2017-03-12 02:26:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1310', '3', 'admin', '2017-03-12 02:32:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1311', '3', 'admin', '2017-03-12 02:34:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1312', '3', 'admin', '2017-03-12 02:35:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1313', '3', 'admin', '2017-03-12 02:36:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1314', '3', 'admin', '2017-03-12 02:37:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1315', '3', 'admin', '2017-03-12 02:52:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1316', '3', 'admin', '2017-03-12 03:19:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1317', '3', 'admin', '2017-03-12 03:53:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1318', '3', 'admin', '2017-03-12 04:04:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1319', '3', 'admin', '2017-03-12 04:15:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1320', '3', 'admin', '2017-03-12 04:19:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1321', '3', 'admin', '2017-03-12 11:24:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1322', '3', 'admin', '2017-03-12 11:52:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1323', '3', 'admin', '2017-03-12 13:18:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1324', '3', 'admin', '2017-03-12 13:18:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1325', '3', 'admin', '2017-03-12 13:32:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1326', '3', 'admin', '2017-03-12 13:36:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1327', '3', 'admin', '2017-03-12 13:48:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1328', '3', 'admin', '2017-03-12 13:51:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1329', '3', 'admin', '2017-03-12 13:57:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1330', '3', 'admin', '2017-03-12 14:00:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1331', '3', 'admin', '2017-03-12 14:02:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1332', '3', 'admin', '2017-03-12 14:22:17', '120.77.147.255');
INSERT INTO `ly_userlogin` VALUES ('1333', '3', 'admin', '2017-03-12 14:34:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1334', '3', 'admin', '2017-03-12 14:39:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1335', '3', 'admin', '2017-03-12 14:56:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1336', '3', 'admin', '2017-03-12 15:06:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1337', '3', 'admin', '2017-03-12 16:09:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1338', '3', 'admin', '2017-03-12 16:10:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1339', '3', 'admin', '2017-03-12 16:36:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1340', '3', 'admin', '2017-03-12 16:38:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1341', '3', 'admin', '2017-03-12 16:48:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1342', '3', 'admin', '2017-03-12 16:53:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1343', '3', 'admin', '2017-03-12 17:14:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1344', '3', 'admin', '2017-03-12 17:25:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1345', '3', 'admin', '2017-03-12 17:30:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1346', '3', 'admin', '2017-03-12 17:32:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1347', '3', 'admin', '2017-03-12 17:34:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1348', '3', 'admin', '2017-03-12 17:58:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1349', '3', 'admin', '2017-03-12 18:16:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1350', '3', 'admin', '2017-03-12 18:32:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1351', '3', 'admin', '2017-03-12 19:02:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1352', '3', 'admin', '2017-03-12 19:31:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1353', '3', 'admin', '2017-03-12 19:35:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1354', '3', 'admin', '2017-03-12 21:36:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1355', '3', 'admin', '2017-03-12 21:43:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1356', '3', 'admin', '2017-03-13 21:03:32', '14.220.123.137');
INSERT INTO `ly_userlogin` VALUES ('1357', '3', 'admin', '2017-03-13 22:28:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1358', '3', 'admin', '2017-03-13 22:35:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1359', '3', 'admin', '2017-03-13 22:46:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1360', '3', 'admin', '2017-03-13 22:47:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1361', '3', 'admin', '2017-03-13 22:51:59', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1362', '3', 'admin', '2017-03-13 23:00:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1363', '3', 'admin', '2017-03-13 23:01:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1364', '3', 'admin', '2017-03-13 23:02:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1365', '3', 'admin', '2017-03-13 23:21:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1366', '3', 'admin', '2017-03-14 00:29:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1367', '3', 'admin', '2017-03-14 10:41:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1368', '3', 'admin', '2017-03-14 10:49:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1369', '3', 'admin', '2017-03-14 11:09:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1370', '3', 'admin', '2017-03-14 12:24:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1371', '3', 'admin', '2017-03-14 12:28:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1372', '3', 'admin', '2017-03-14 19:41:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1373', '3', 'admin', '2017-03-14 20:07:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1374', '3', 'admin', '2017-03-14 20:12:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1375', '3', 'admin', '2017-03-14 20:12:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1376', '3', 'admin', '2017-03-14 20:13:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1377', '3', 'admin', '2017-03-14 21:09:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1378', '3', 'admin', '2017-03-14 21:29:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1379', '3', 'admin', '2017-03-14 22:04:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1380', '3', 'admin', '2017-03-14 22:13:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1381', '3', 'admin', '2017-03-14 22:14:41', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1382', '3', 'admin', '2017-03-14 22:18:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1383', '3', 'admin', '2017-03-14 22:21:50', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1384', '3', 'admin', '2017-03-14 22:33:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1385', '3', 'admin', '2017-03-14 22:44:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1386', '3', 'admin', '2017-03-14 22:50:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1387', '3', 'admin', '2017-03-14 23:07:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1388', '3', 'admin', '2017-03-14 23:43:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1389', '3', 'admin', '2017-03-14 23:44:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1390', '3', 'admin', '2017-03-14 23:45:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1391', '3', 'admin', '2017-03-15 02:14:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1392', '3', 'admin', '2017-03-15 02:36:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1393', '3', 'admin', '2017-03-15 14:15:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1394', '3', 'admin', '2017-03-15 16:11:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1395', '3', 'admin', '2017-03-15 17:13:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1396', '3', 'admin', '2017-03-15 17:28:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1397', '3', 'admin', '2017-03-15 17:32:02', '183.12.236.83');
INSERT INTO `ly_userlogin` VALUES ('1398', '3', 'admin', '2017-03-15 18:00:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1399', '3', 'admin', '2017-03-15 18:00:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1400', '3', 'admin', '2017-03-15 20:16:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1401', '3', 'admin', '2017-03-15 20:21:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1402', '3', 'admin', '2017-03-15 20:40:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1403', '3', 'admin', '2017-03-15 20:47:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1404', '3', 'admin', '2017-03-15 20:48:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1405', '3', 'admin', '2017-03-15 20:50:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1406', '3', 'admin', '2017-03-15 21:06:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1407', '3', 'admin', '2017-03-15 21:09:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1408', '3', 'admin', '2017-03-15 21:11:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1409', '3', 'admin', '2017-03-15 21:12:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1410', '3', 'admin', '2017-03-15 21:15:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1411', '3', 'admin', '2017-03-15 21:30:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1412', '3', 'admin', '2017-03-15 21:32:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1413', '3', 'admin', '2017-03-15 21:43:36', '103.228.209.254');
INSERT INTO `ly_userlogin` VALUES ('1414', '3', 'admin', '2017-03-15 21:52:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1415', '3', 'admin', '2017-03-15 21:55:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1416', '3', 'admin', '2017-03-15 22:13:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1417', '3', 'admin', '2017-03-15 22:14:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1418', '3', 'admin', '2017-03-15 22:22:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1419', '3', 'admin', '2017-03-15 22:24:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1420', '3', 'admin', '2017-03-15 22:27:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1421', '3', 'admin', '2017-03-15 22:39:40', '183.12.236.83');
INSERT INTO `ly_userlogin` VALUES ('1422', '3', 'admin', '2017-03-15 22:41:19', '14.220.123.169');
INSERT INTO `ly_userlogin` VALUES ('1423', '3', 'admin', '2017-03-15 22:46:12', '14.220.123.169');
INSERT INTO `ly_userlogin` VALUES ('1424', '3', 'admin', '2017-03-15 22:53:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1425', '3', 'admin', '2017-03-15 22:57:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1426', '3', 'admin', '2017-03-15 23:00:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1427', '3', 'admin', '2017-03-15 23:04:30', '14.220.123.169');
INSERT INTO `ly_userlogin` VALUES ('1428', '3', 'admin', '2017-03-15 23:06:11', '103.228.209.254');
INSERT INTO `ly_userlogin` VALUES ('1429', '3', 'admin', '2017-03-15 23:07:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1430', '3', 'admin', '2017-03-15 23:20:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1431', '3', 'admin', '2017-03-15 23:30:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1432', '3', 'admin', '2017-03-15 23:48:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1433', '3', 'admin', '2017-03-15 23:55:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1434', '3', 'admin', '2017-03-15 23:57:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1435', '3', 'admin', '2017-03-16 00:01:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1436', '3', 'admin', '2017-03-16 00:03:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1437', '3', 'admin', '2017-03-16 00:05:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1438', '3', 'admin', '2017-03-16 00:24:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1439', '3', 'admin', '2017-03-16 07:56:19', '103.228.209.254');
INSERT INTO `ly_userlogin` VALUES ('1440', '3', 'admin', '2017-03-16 09:26:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1441', '3', 'admin', '2017-03-16 10:11:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1442', '3', 'admin', '2017-03-16 10:14:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1443', '3', 'admin', '2017-03-16 10:18:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1444', '3', 'admin', '2017-03-16 10:29:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1445', '3', 'admin', '2017-03-16 11:33:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1446', '3', 'admin', '2017-03-16 11:43:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1447', '3', 'admin', '2017-03-16 11:52:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1448', '3', 'admin', '2017-03-16 13:15:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1449', '3', 'admin', '2017-03-16 13:18:50', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1450', '3', 'admin', '2017-03-16 13:22:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1451', '3', 'admin', '2017-03-16 13:25:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1452', '3', 'admin', '2017-03-16 13:50:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1453', '3', 'admin', '2017-03-16 14:33:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1454', '3', 'admin', '2017-03-16 15:01:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1455', '3', 'admin', '2017-03-16 16:10:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1456', '3', 'admin', '2017-03-16 16:19:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1457', '3', 'admin', '2017-03-16 16:34:37', '117.136.97.8');
INSERT INTO `ly_userlogin` VALUES ('1458', '3', 'admin', '2017-03-16 16:45:13', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1459', '3', 'admin', '2017-03-16 17:19:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1460', '3', 'admin', '2017-03-16 17:24:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1461', '3', 'admin', '2017-03-16 17:30:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1462', '3', 'admin', '2017-03-16 17:38:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1463', '3', 'admin', '2017-03-16 18:27:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1464', '3', 'admin', '2017-03-16 18:30:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1465', '3', 'admin', '2017-03-16 20:08:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1466', '3', 'admin', '2017-03-16 20:33:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1467', '3', 'admin', '2017-03-16 20:37:57', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1468', '3', 'admin', '2017-03-16 21:03:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1469', '3', 'admin', '2017-03-16 21:22:13', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1470', '3', 'admin', '2017-03-16 21:39:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1471', '3', 'admin', '2017-03-16 21:44:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1472', '3', 'admin', '2017-03-16 21:58:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1473', '3', 'admin', '2017-03-16 22:26:06', '14.220.123.69');
INSERT INTO `ly_userlogin` VALUES ('1474', '3', 'admin', '2017-03-16 22:45:40', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1475', '3', 'admin', '2017-03-16 22:47:04', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1476', '3', 'admin', '2017-03-16 22:58:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1477', '3', 'admin', '2017-03-16 23:12:23', '14.220.123.69');
INSERT INTO `ly_userlogin` VALUES ('1478', '3', 'admin', '2017-03-16 23:12:25', '183.12.242.138');
INSERT INTO `ly_userlogin` VALUES ('1479', '3', 'admin', '2017-03-16 23:13:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1480', '3', 'admin', '2017-03-16 23:33:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1481', '3', 'admin', '2017-03-16 23:39:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1482', '3', 'admin', '2017-03-16 23:55:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1483', '3', 'admin', '2017-03-17 00:15:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1484', '3', 'admin', '2017-03-17 00:17:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1485', '3', 'admin', '2017-03-17 00:19:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1486', '3', 'admin', '2017-03-17 00:26:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1487', '3', 'admin', '2017-03-17 00:44:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1488', '3', 'admin', '2017-03-17 00:45:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1489', '3', 'admin', '2017-03-17 00:47:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1490', '3', 'admin', '2017-03-17 01:02:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1491', '3', 'admin', '2017-03-17 01:09:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1492', '3', 'admin', '2017-03-17 01:12:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1493', '3', 'admin', '2017-03-17 01:17:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1494', '3', 'admin', '2017-03-17 01:22:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1495', '3', 'admin', '2017-03-17 01:31:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1496', '3', 'admin', '2017-03-17 01:36:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1497', '3', 'admin', '2017-03-17 02:04:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1498', '3', 'admin', '2017-03-17 02:29:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1499', '3', 'admin', '2017-03-17 03:05:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1500', '3', 'admin', '2017-03-17 03:36:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1501', '3', 'admin', '2017-03-17 03:42:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1502', '3', 'admin', '2017-03-17 03:51:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1503', '3', 'admin', '2017-03-17 03:55:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1504', '3', 'admin', '2017-03-17 09:32:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1505', '3', 'admin', '2017-03-17 09:40:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1506', '3', 'admin', '2017-03-17 10:27:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1507', '3', 'admin', '2017-03-17 10:30:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1508', '3', 'admin', '2017-03-17 10:39:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1509', '3', 'admin', '2017-03-17 11:08:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1510', '3', 'admin', '2017-03-17 14:02:22', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1511', '3', 'admin', '2017-03-17 14:35:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1512', '3', 'admin', '2017-03-17 14:40:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1513', '3', 'admin', '2017-03-17 14:53:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1514', '3', 'admin', '2017-03-17 14:59:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1515', '3', 'admin', '2017-03-17 15:04:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1516', '3', 'admin', '2017-03-17 15:56:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1517', '3', 'admin', '2017-03-17 16:15:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1518', '3', 'admin', '2017-03-17 20:17:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1519', '3', 'admin', '2017-03-17 20:30:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1520', '3', 'admin', '2017-03-17 20:38:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1521', '3', 'admin', '2017-03-17 20:40:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1522', '3', 'admin', '2017-03-17 20:42:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1523', '3', 'admin', '2017-03-17 20:47:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1524', '3', 'admin', '2017-03-17 20:54:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1525', '3', 'admin', '2017-03-17 21:08:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1526', '3', 'admin', '2017-03-17 21:16:40', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1527', '3', 'admin', '2017-03-17 21:20:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1528', '3', 'admin', '2017-03-17 21:20:03', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1529', '3', 'admin', '2017-03-17 21:26:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1530', '3', 'admin', '2017-03-17 21:39:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1531', '3', 'admin', '2017-03-17 22:22:49', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1532', '3', 'admin', '2017-03-17 22:23:37', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1533', '3', 'admin', '2017-03-17 22:28:31', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1534', '3', 'admin', '2017-03-17 22:30:19', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1535', '3', 'admin', '2017-03-17 22:44:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1536', '3', 'admin', '2017-03-17 22:49:19', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1537', '3', 'admin', '2017-03-17 22:50:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1538', '3', 'admin', '2017-03-17 22:55:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1539', '3', 'admin', '2017-03-17 22:59:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1540', '3', 'admin', '2017-03-17 23:07:06', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1541', '3', 'admin', '2017-03-17 23:14:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1542', '3', 'admin', '2017-03-17 23:15:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1543', '3', 'admin', '2017-03-17 23:16:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1544', '3', 'admin', '2017-03-17 23:17:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1545', '3', 'admin', '2017-03-17 23:23:39', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1546', '3', 'admin', '2017-03-17 23:25:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1547', '3', 'admin', '2017-03-17 23:32:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1548', '3', 'admin', '2017-03-17 23:33:09', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1549', '3', 'admin', '2017-03-17 23:34:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1550', '3', 'admin', '2017-03-17 23:35:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1551', '3', 'admin', '2017-03-17 23:36:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1552', '3', 'admin', '2017-03-17 23:39:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1553', '3', 'admin', '2017-03-17 23:42:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1554', '3', 'admin', '2017-03-17 23:44:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1555', '3', 'admin', '2017-03-17 23:49:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1556', '3', 'admin', '2017-03-17 23:58:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1557', '3', 'admin', '2017-03-18 00:08:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1558', '3', 'admin', '2017-03-18 00:14:25', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1559', '3', 'admin', '2017-03-18 00:15:02', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1560', '3', 'admin', '2017-03-18 00:15:45', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1561', '3', 'admin', '2017-03-18 00:16:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1562', '3', 'admin', '2017-03-18 00:23:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1563', '3', 'admin', '2017-03-18 00:28:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1564', '3', 'admin', '2017-03-18 00:40:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1565', '3', 'admin', '2017-03-18 00:42:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1566', '3', 'admin', '2017-03-18 00:48:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1567', '3', 'admin', '2017-03-18 00:49:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1568', '3', 'admin', '2017-03-18 00:50:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1569', '3', 'admin', '2017-03-18 00:53:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1570', '3', 'admin', '2017-03-18 00:55:51', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1571', '3', 'admin', '2017-03-18 00:56:35', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1572', '3', 'admin', '2017-03-18 01:00:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1573', '3', 'admin', '2017-03-18 01:03:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1574', '3', 'admin', '2017-03-18 01:03:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1575', '3', 'admin', '2017-03-18 01:13:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1576', '3', 'admin', '2017-03-18 01:14:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1577', '3', 'admin', '2017-03-18 01:14:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1578', '3', 'admin', '2017-03-18 01:20:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1579', '3', 'admin', '2017-03-18 01:20:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1580', '3', 'admin', '2017-03-18 01:23:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1581', '3', 'admin', '2017-03-18 01:24:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1582', '3', 'admin', '2017-03-18 01:24:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1583', '3', 'admin', '2017-03-18 01:25:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1584', '3', 'admin', '2017-03-18 01:27:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1585', '3', 'admin', '2017-03-18 01:27:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1586', '3', 'admin', '2017-03-18 01:34:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1587', '3', 'admin', '2017-03-18 01:37:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1588', '3', 'admin', '2017-03-18 01:38:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1589', '3', 'admin', '2017-03-18 01:38:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1590', '3', 'admin', '2017-03-18 01:40:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1591', '3', 'admin', '2017-03-18 01:42:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1592', '3', 'admin', '2017-03-18 01:45:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1593', '3', 'admin', '2017-03-18 01:49:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1594', '3', 'admin', '2017-03-18 01:54:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1595', '3', 'admin', '2017-03-18 02:00:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1596', '3', 'admin', '2017-03-18 02:26:10', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1597', '3', 'admin', '2017-03-18 02:26:27', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1598', '3', 'admin', '2017-03-18 02:31:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1599', '3', 'admin', '2017-03-18 02:38:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1600', '3', 'admin', '2017-03-18 02:47:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1601', '3', 'admin', '2017-03-18 02:47:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1602', '3', 'admin', '2017-03-18 02:56:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1603', '3', 'admin', '2017-03-18 03:03:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1604', '3', 'admin', '2017-03-18 03:09:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1605', '3', 'admin', '2017-03-18 03:12:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1606', '3', 'admin', '2017-03-18 03:13:14', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1607', '3', 'admin', '2017-03-18 03:20:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1608', '3', 'admin', '2017-03-18 03:21:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1609', '3', 'admin', '2017-03-18 03:21:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1610', '3', 'admin', '2017-03-18 03:21:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1611', '3', 'admin', '2017-03-18 03:22:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1612', '3', 'admin', '2017-03-18 03:23:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1613', '3', 'admin', '2017-03-18 03:24:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1614', '3', 'admin', '2017-03-18 03:24:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1615', '3', 'admin', '2017-03-18 03:34:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1616', '3', 'admin', '2017-03-18 03:38:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1617', '3', 'admin', '2017-03-18 03:38:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1618', '3', 'admin', '2017-03-18 03:41:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1619', '3', 'admin', '2017-03-18 03:44:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1620', '3', 'admin', '2017-03-18 03:45:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1621', '3', 'admin', '2017-03-18 03:48:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1622', '3', 'admin', '2017-03-18 04:05:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1623', '3', 'admin', '2017-03-18 04:07:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1624', '3', 'admin', '2017-03-18 04:16:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1625', '3', 'admin', '2017-03-18 04:34:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1626', '3', 'admin', '2017-03-18 04:35:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1627', '3', 'admin', '2017-03-18 04:38:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1628', '3', 'admin', '2017-03-18 04:38:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1629', '3', 'admin', '2017-03-18 04:40:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1630', '3', 'admin', '2017-03-18 04:49:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1631', '3', 'admin', '2017-03-18 04:50:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1632', '3', 'admin', '2017-03-18 04:57:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1633', '3', 'admin', '2017-03-18 04:59:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1634', '3', 'admin', '2017-03-18 05:02:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1635', '3', 'admin', '2017-03-18 09:17:02', '103.228.209.149');
INSERT INTO `ly_userlogin` VALUES ('1636', '3', 'admin', '2017-03-18 09:40:19', '103.228.209.149');
INSERT INTO `ly_userlogin` VALUES ('1637', '3', 'admin', '2017-03-18 10:57:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1638', '3', 'admin', '2017-03-18 10:57:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1639', '3', 'admin', '2017-03-18 10:59:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1640', '3', 'admin', '2017-03-18 11:05:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1641', '3', 'admin', '2017-03-18 11:06:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1642', '3', 'admin', '2017-03-18 11:16:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1643', '3', 'admin', '2017-03-18 11:20:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1644', '3', 'admin', '2017-03-18 11:24:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1645', '3', 'admin', '2017-03-18 11:27:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1646', '3', 'admin', '2017-03-18 11:27:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1647', '3', 'admin', '2017-03-18 11:42:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1648', '3', 'admin', '2017-03-18 11:44:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1649', '3', 'admin', '2017-03-18 11:53:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1650', '3', 'admin', '2017-03-18 11:56:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1651', '3', 'admin', '2017-03-18 12:02:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1652', '3', 'admin', '2017-03-18 12:03:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1653', '3', 'admin', '2017-03-18 12:04:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1654', '3', 'admin', '2017-03-18 12:10:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1655', '3', 'admin', '2017-03-18 12:12:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1656', '3', 'admin', '2017-03-18 12:13:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1657', '3', 'admin', '2017-03-18 12:15:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1658', '3', 'admin', '2017-03-18 12:18:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1659', '3', 'admin', '2017-03-18 12:23:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1660', '3', 'admin', '2017-03-18 12:51:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1661', '3', 'admin', '2017-03-18 12:53:14', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1662', '3', 'admin', '2017-03-18 13:14:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1663', '3', 'admin', '2017-03-18 13:30:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1664', '3', 'admin', '2017-03-18 14:13:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1665', '3', 'admin', '2017-03-18 14:19:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1666', '3', 'admin', '2017-03-18 14:21:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1667', '3', 'admin', '2017-03-18 14:22:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1668', '3', 'admin', '2017-03-18 14:58:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1669', '3', 'admin', '2017-03-18 15:20:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1670', '3', 'admin', '2017-03-18 15:23:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1671', '3', 'admin', '2017-03-18 15:26:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1672', '3', 'admin', '2017-03-18 15:26:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1673', '3', 'admin', '2017-03-18 15:29:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1674', '3', 'admin', '2017-03-18 15:29:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1675', '3', 'admin', '2017-03-18 15:35:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1676', '3', 'admin', '2017-03-18 15:36:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1677', '3', 'admin', '2017-03-18 15:41:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1678', '3', 'admin', '2017-03-18 15:42:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1679', '3', 'admin', '2017-03-18 15:43:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1680', '3', 'admin', '2017-03-18 15:46:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1681', '3', 'admin', '2017-03-18 15:52:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1682', '3', 'admin', '2017-03-18 15:57:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1683', '3', 'admin', '2017-03-18 16:06:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1684', '3', 'admin', '2017-03-18 16:06:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1685', '3', 'admin', '2017-03-18 16:08:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1686', '3', 'admin', '2017-03-18 16:08:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1687', '3', 'admin', '2017-03-18 16:09:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1688', '3', 'admin', '2017-03-18 16:10:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1689', '3', 'admin', '2017-03-18 16:14:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1690', '3', 'admin', '2017-03-18 16:16:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1691', '3', 'admin', '2017-03-18 16:21:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1692', '3', 'admin', '2017-03-18 16:22:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1693', '3', 'admin', '2017-03-18 16:26:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1694', '3', 'admin', '2017-03-18 16:30:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1695', '3', 'admin', '2017-03-18 16:35:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1696', '3', 'admin', '2017-03-18 16:49:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1697', '3', 'admin', '2017-03-18 16:49:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1698', '3', 'admin', '2017-03-18 16:51:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1699', '3', 'admin', '2017-03-18 16:52:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1700', '3', 'admin', '2017-03-18 17:20:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1701', '3', 'admin', '2017-03-18 17:22:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1702', '3', 'admin', '2017-03-18 17:41:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1703', '3', 'admin', '2017-03-18 18:11:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1704', '3', 'admin', '2017-03-18 18:18:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1705', '3', 'admin', '2017-03-18 18:24:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1706', '3', 'admin', '2017-03-18 18:25:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1707', '3', 'admin', '2017-03-18 18:39:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1708', '3', 'admin', '2017-03-18 18:48:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1709', '3', 'admin', '2017-03-18 19:04:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1710', '3', 'admin', '2017-03-18 19:26:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1711', '3', 'admin', '2017-03-18 19:36:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1712', '3', 'admin', '2017-03-18 19:41:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1713', '3', 'admin', '2017-03-18 19:51:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1714', '3', 'admin', '2017-03-18 19:55:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1715', '3', 'admin', '2017-03-18 19:56:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1716', '3', 'admin', '2017-03-18 20:01:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1717', '3', 'admin', '2017-03-18 20:03:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1718', '3', 'admin', '2017-03-18 20:05:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1719', '3', 'admin', '2017-03-18 20:05:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1720', '3', 'admin', '2017-03-18 20:06:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1721', '3', 'admin', '2017-03-18 20:08:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1722', '3', 'admin', '2017-03-18 20:10:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1723', '3', 'admin', '2017-03-18 20:10:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1724', '3', 'admin', '2017-03-18 20:13:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1725', '3', 'admin', '2017-03-18 20:15:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1726', '3', 'admin', '2017-03-18 20:15:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1727', '3', 'admin', '2017-03-18 20:16:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1728', '3', 'admin', '2017-03-18 20:17:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1729', '3', 'admin', '2017-03-18 20:22:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1730', '3', 'admin', '2017-03-18 20:22:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1731', '3', 'admin', '2017-03-18 20:23:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1732', '3', 'admin', '2017-03-18 20:24:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1733', '3', 'admin', '2017-03-18 20:26:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1734', '3', 'admin', '2017-03-18 20:34:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1735', '3', 'admin', '2017-03-18 20:36:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1736', '3', 'admin', '2017-03-18 20:37:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1737', '3', 'admin', '2017-03-18 20:39:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1738', '3', 'admin', '2017-03-18 20:40:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1739', '3', 'admin', '2017-03-18 20:48:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1740', '3', 'admin', '2017-03-18 20:48:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1741', '3', 'admin', '2017-03-18 20:53:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1742', '3', 'admin', '2017-03-18 20:53:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1743', '3', 'admin', '2017-03-18 20:53:36', '183.12.240.203');
INSERT INTO `ly_userlogin` VALUES ('1744', '3', 'admin', '2017-03-18 20:57:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1745', '3', 'admin', '2017-03-18 21:11:00', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1746', '3', 'admin', '2017-03-18 21:12:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1747', '3', 'admin', '2017-03-18 21:12:53', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1748', '3', 'admin', '2017-03-18 21:46:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1749', '3', 'admin', '2017-03-18 21:47:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1750', '3', 'admin', '2017-03-18 21:59:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1751', '3', 'admin', '2017-03-18 22:00:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1752', '3', 'admin', '2017-03-18 22:16:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1753', '3', 'admin', '2017-03-18 22:17:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1754', '3', 'admin', '2017-03-18 22:19:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1755', '3', 'admin', '2017-03-18 22:22:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1756', '3', 'admin', '2017-03-18 22:25:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1757', '3', 'admin', '2017-03-18 22:25:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1758', '3', 'admin', '2017-03-18 22:31:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1759', '3', 'admin', '2017-03-18 22:40:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1760', '3', 'admin', '2017-03-18 22:49:22', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1761', '3', 'admin', '2017-03-18 22:50:06', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1762', '3', 'admin', '2017-03-18 23:09:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1763', '3', 'admin', '2017-03-18 23:09:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1764', '3', 'admin', '2017-03-18 23:13:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1765', '3', 'admin', '2017-03-18 23:17:37', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1766', '3', 'admin', '2017-03-18 23:22:01', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1767', '3', 'admin', '2017-03-18 23:22:08', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1768', '3', 'admin', '2017-03-18 23:32:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1769', '3', 'admin', '2017-03-18 23:33:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1770', '3', 'admin', '2017-03-18 23:33:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1771', '3', 'admin', '2017-03-18 23:45:46', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1772', '3', 'admin', '2017-03-18 23:59:22', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1773', '3', 'admin', '2017-03-19 00:01:18', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1774', '3', 'admin', '2017-03-19 00:02:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1775', '3', 'admin', '2017-03-19 00:07:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1776', '3', 'admin', '2017-03-19 00:08:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1777', '3', 'admin', '2017-03-19 00:17:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1778', '3', 'admin', '2017-03-19 00:21:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1779', '3', 'admin', '2017-03-19 00:21:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1780', '3', 'admin', '2017-03-19 00:23:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1781', '3', 'admin', '2017-03-19 00:28:17', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1782', '3', 'admin', '2017-03-19 00:46:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1783', '3', 'admin', '2017-03-19 00:48:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1784', '3', 'admin', '2017-03-19 01:47:19', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1785', '3', 'admin', '2017-03-19 01:54:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1786', '3', 'admin', '2017-03-19 02:06:28', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1787', '3', 'admin', '2017-03-19 02:06:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1788', '3', 'admin', '2017-03-19 02:23:37', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1789', '3', 'admin', '2017-03-19 02:24:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1790', '3', 'admin', '2017-03-19 02:24:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1791', '3', 'admin', '2017-03-19 02:26:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1792', '3', 'admin', '2017-03-19 02:27:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1793', '3', 'admin', '2017-03-19 02:37:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1794', '3', 'admin', '2017-03-19 02:37:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1795', '3', 'admin', '2017-03-19 02:44:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1796', '3', 'admin', '2017-03-19 02:44:19', '14.220.123.103');
INSERT INTO `ly_userlogin` VALUES ('1797', '3', 'admin', '2017-03-19 02:47:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1798', '3', 'admin', '2017-03-19 03:08:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1799', '3', 'admin', '2017-03-19 03:08:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1800', '3', 'admin', '2017-03-19 03:23:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1801', '3', 'admin', '2017-03-19 03:23:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1802', '3', 'admin', '2017-03-19 13:37:12', '14.220.121.109');
INSERT INTO `ly_userlogin` VALUES ('1803', '3', 'admin', '2017-03-19 13:47:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1804', '3', 'admin', '2017-03-19 13:47:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1805', '3', 'admin', '2017-03-19 14:14:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1806', '3', 'admin', '2017-03-19 14:15:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1807', '3', 'admin', '2017-03-19 14:16:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1808', '3', 'admin', '2017-03-19 14:33:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1809', '3', 'admin', '2017-03-19 14:58:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1810', '3', 'admin', '2017-03-19 14:59:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1811', '3', 'admin', '2017-03-19 15:00:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1812', '3', 'admin', '2017-03-19 15:01:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1813', '3', 'admin', '2017-03-19 15:24:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1814', '3', 'admin', '2017-03-19 15:33:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1815', '3', 'admin', '2017-03-19 15:43:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1816', '3', 'admin', '2017-03-19 15:51:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1817', '3', 'admin', '2017-03-19 16:03:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1818', '3', 'admin', '2017-03-19 22:29:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1819', '3', 'admin', '2017-03-19 23:06:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1820', '3', 'admin', '2017-03-19 23:14:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1821', '3', 'admin', '2017-03-19 23:20:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1822', '3', 'admin', '2017-03-19 23:48:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1823', '3', 'admin', '2017-03-20 00:02:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1824', '3', 'admin', '2017-03-20 00:08:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1825', '3', 'admin', '2017-03-20 00:09:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1826', '3', 'admin', '2017-03-20 00:18:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1827', '3', 'admin', '2017-03-20 00:23:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1828', '27', 'test00002', '2017-03-20 00:38:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1829', '3', 'admin', '2017-03-20 00:39:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1830', '3', 'admin', '2017-03-20 00:55:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1831', '3', 'admin', '2017-03-20 00:55:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1832', '3', 'admin', '2017-03-20 00:58:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1833', '3', 'admin', '2017-03-20 00:58:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1834', '3', 'admin', '2017-03-20 01:02:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1835', '3', 'admin', '2017-03-20 01:04:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1836', '3', 'admin', '2017-03-20 01:05:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1837', '3', 'admin', '2017-03-20 01:06:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1838', '3', 'admin', '2017-03-20 01:06:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1839', '3', 'admin', '2017-03-20 01:29:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1840', '3', 'admin', '2017-03-20 01:37:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1841', '27', 'test00002', '2017-03-20 01:39:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1842', '27', 'test00002', '2017-03-20 01:40:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1843', '3', 'admin', '2017-03-20 01:40:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1844', '27', 'test00002', '2017-03-20 01:41:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1845', '3', 'admin', '2017-03-20 01:43:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1846', '27', 'test00002', '2017-03-20 01:49:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1847', '3', 'admin', '2017-03-20 01:50:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1848', '3', 'admin', '2017-03-20 01:56:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1849', '28', 'jayce', '2017-03-20 01:56:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1850', '3', 'admin', '2017-03-20 01:56:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1851', '3', 'admin', '2017-03-20 02:01:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1852', '3', 'admin', '2017-03-20 02:03:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1853', '3', 'admin', '2017-03-20 02:07:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1854', '3', 'admin', '2017-03-20 02:11:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1855', '3', 'admin', '2017-03-20 02:28:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1856', '3', 'admin', '2017-03-20 02:59:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1857', '3', 'admin', '2017-03-20 09:04:59', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1858', '3', 'admin', '2017-03-20 09:16:44', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1859', '29', 'gd001', '2017-03-20 09:17:51', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1860', '3', 'admin', '2017-03-20 09:18:15', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1861', '29', 'gd001', '2017-03-20 09:20:01', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1862', '3', 'admin', '2017-03-20 09:20:12', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1863', '29', 'gd001', '2017-03-20 09:22:07', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1864', '29', 'gd001', '2017-03-20 09:23:38', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1865', '3', 'admin', '2017-03-20 09:23:47', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1866', '3', 'admin', '2017-03-20 09:24:00', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1867', '29', 'gd001', '2017-03-20 09:24:52', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1868', '3', 'admin', '2017-03-20 09:26:39', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1869', '30', 'gn001', '2017-03-20 09:30:24', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1870', '3', 'admin', '2017-03-20 09:30:41', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1871', '3', 'admin', '2017-03-20 09:31:21', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1872', '30', 'gn001', '2017-03-20 09:31:57', '112.97.51.26');
INSERT INTO `ly_userlogin` VALUES ('1873', '3', 'admin', '2017-03-20 09:47:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1874', '3', 'admin', '2017-03-20 09:51:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1875', '3', 'admin', '2017-03-20 10:02:35', '116.7.20.102');
INSERT INTO `ly_userlogin` VALUES ('1876', '3', 'admin', '2017-03-20 10:11:35', '116.7.20.102');
INSERT INTO `ly_userlogin` VALUES ('1877', '3', 'admin', '2017-03-20 10:21:28', '116.7.20.102');
INSERT INTO `ly_userlogin` VALUES ('1878', '3', 'admin', '2017-03-20 10:34:13', '116.7.20.102');
INSERT INTO `ly_userlogin` VALUES ('1879', '3', 'admin', '2017-03-20 11:11:00', '14.220.122.71');
INSERT INTO `ly_userlogin` VALUES ('1880', '3', 'admin', '2017-03-20 11:12:03', '14.220.122.71');
INSERT INTO `ly_userlogin` VALUES ('1881', '3', 'admin', '2017-03-20 11:56:55', '113.16.142.72');
INSERT INTO `ly_userlogin` VALUES ('1882', '3', 'admin', '2017-03-20 11:58:06', '14.220.122.71');
INSERT INTO `ly_userlogin` VALUES ('1883', '3', 'admin', '2017-03-20 14:59:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1884', '3', 'admin', '2017-03-20 15:28:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1885', '29', 'gd001', '2017-03-20 22:24:01', '113.16.140.208');
INSERT INTO `ly_userlogin` VALUES ('1886', '29', 'gd001', '2017-03-20 22:25:27', '113.16.140.208');
INSERT INTO `ly_userlogin` VALUES ('1887', '29', 'gd001', '2017-03-20 23:31:00', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1888', '3', 'admin', '2017-03-20 23:51:06', '14.220.120.91');
INSERT INTO `ly_userlogin` VALUES ('1889', '3', 'admin', '2017-03-20 23:55:56', '113.16.140.208');
INSERT INTO `ly_userlogin` VALUES ('1890', '3', 'admin', '2017-03-21 00:04:39', '14.220.120.91');
INSERT INTO `ly_userlogin` VALUES ('1891', '3', 'admin', '2017-03-21 00:22:23', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1892', '3', 'admin', '2017-03-21 00:36:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1893', '29', 'gd001', '2017-03-21 00:45:56', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1894', '29', 'gd001', '2017-03-21 00:46:55', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1895', '29', 'gd001', '2017-03-21 00:48:32', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1896', '29', 'gd001', '2017-03-21 00:49:48', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1897', '3', 'admin', '2017-03-21 00:50:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1898', '3', 'admin', '2017-03-21 01:00:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1899', '3', 'admin', '2017-03-21 01:08:02', '14.220.120.91');
INSERT INTO `ly_userlogin` VALUES ('1900', '29', 'gd001', '2017-03-21 01:08:16', '223.104.22.195');
INSERT INTO `ly_userlogin` VALUES ('1901', '3', 'admin', '2017-03-21 01:18:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1902', '3', 'admin', '2017-03-21 01:19:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1903', '3', 'admin', '2017-03-21 01:20:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1904', '3', 'admin', '2017-03-21 01:24:44', '14.220.120.91');
INSERT INTO `ly_userlogin` VALUES ('1905', '3', 'admin', '2017-03-21 01:37:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1906', '3', 'admin', '2017-03-21 01:37:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1907', '3', 'admin', '2017-03-21 01:41:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1908', '3', 'admin', '2017-03-21 01:43:10', '14.220.120.91');
INSERT INTO `ly_userlogin` VALUES ('1909', '3', 'admin', '2017-03-21 01:45:23', '14.220.120.91');
INSERT INTO `ly_userlogin` VALUES ('1910', '3', 'admin', '2017-03-21 08:23:28', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1911', '3', 'admin', '2017-03-21 08:25:27', '113.16.142.116');
INSERT INTO `ly_userlogin` VALUES ('1912', '3', 'admin', '2017-03-21 08:59:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1913', '3', 'admin', '2017-03-21 09:38:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1914', '3', 'admin', '2017-03-21 10:24:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1915', '3', 'admin', '2017-03-21 10:34:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1916', '3', 'admin', '2017-03-21 10:53:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1917', '3', 'admin', '2017-03-21 12:57:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1918', '3', 'admin', '2017-03-21 12:59:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1919', '3', 'admin', '2017-03-21 13:01:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1920', '3', 'admin', '2017-03-21 13:16:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1921', '3', 'admin', '2017-03-21 13:22:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1922', '3', 'admin', '2017-03-21 13:24:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1923', '3', 'admin', '2017-03-21 13:27:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1924', '29', 'gd001', '2017-03-21 13:45:43', '113.12.102.197');
INSERT INTO `ly_userlogin` VALUES ('1925', '29', 'gd001', '2017-03-21 14:30:42', '113.12.102.197');
INSERT INTO `ly_userlogin` VALUES ('1926', '3', 'admin', '2017-03-21 15:14:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1927', '3', 'admin', '2017-03-21 15:39:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1928', '30', 'gn001', '2017-03-21 15:53:09', '223.104.91.98');
INSERT INTO `ly_userlogin` VALUES ('1929', '30', 'gn001', '2017-03-21 16:12:10', '219.159.159.146');
INSERT INTO `ly_userlogin` VALUES ('1930', '30', 'gn001', '2017-03-21 16:17:17', '223.104.91.98');
INSERT INTO `ly_userlogin` VALUES ('1931', '3', 'admin', '2017-03-22 15:28:37', '219.159.159.146');
INSERT INTO `ly_userlogin` VALUES ('1932', '3', 'admin', '2017-03-22 15:31:33', '219.159.159.146');
INSERT INTO `ly_userlogin` VALUES ('1933', '3', 'admin', '2017-03-22 20:32:01', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1934', '3', 'admin', '2017-03-22 21:19:49', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1935', '29', 'gd001', '2017-03-22 23:48:46', '113.16.142.72');
INSERT INTO `ly_userlogin` VALUES ('1936', '3', 'admin', '2017-03-23 20:57:36', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1937', '3', 'admin', '2017-03-23 21:19:00', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1938', '3', 'admin', '2017-03-23 21:22:38', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1939', '3', 'admin', '2017-03-23 21:23:38', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1940', '3', 'admin', '2017-03-23 21:25:15', '113.16.143.131');
INSERT INTO `ly_userlogin` VALUES ('1941', '3', 'admin', '2017-03-25 15:34:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1942', '3', 'admin', '2017-03-26 15:33:54', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1943', '3', 'admin', '2017-03-26 15:35:07', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1944', '3', 'admin', '2017-03-26 15:36:33', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1945', '3', 'admin', '2017-03-26 15:36:45', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1946', '3', 'admin', '2017-03-26 15:36:55', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1947', '3', 'admin', '2017-03-26 16:06:24', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1948', '3', 'admin', '2017-03-26 16:08:00', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1949', '3', 'admin', '2017-03-26 16:19:50', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1950', '3', 'admin', '2017-03-26 16:20:48', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1951', '32', 'wangjiwen', '2017-03-26 16:22:59', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1952', '3', 'admin', '2017-03-26 16:23:39', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1953', '32', 'wangjiwen', '2017-03-26 16:30:07', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1954', '3', 'admin', '2017-03-26 16:30:22', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1955', '32', 'wangjiwen', '2017-03-26 16:31:13', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1956', '3', 'admin', '2017-03-26 16:32:04', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1957', '33', 'wangjiwen1', '2017-03-26 16:35:44', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1958', '3', 'admin', '2017-03-26 16:36:09', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1959', '3', 'admin', '2017-03-26 16:47:28', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1960', '30', 'gn001', '2017-03-26 16:56:04', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1961', '29', 'gd001', '2017-03-26 16:57:10', '183.12.242.107');
INSERT INTO `ly_userlogin` VALUES ('1962', '3', 'admin', '2017-03-27 08:47:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1963', '3', 'admin', '2017-03-27 08:47:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1964', '3', 'admin', '2017-03-27 15:37:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1965', '3', 'admin', '2017-03-27 16:06:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1966', '3', 'admin', '2017-03-27 20:42:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1967', '3', 'admin', '2017-03-27 20:59:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1968', '3', 'admin', '2017-03-27 21:01:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1969', '3', 'admin', '2017-03-27 21:01:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1970', '3', 'admin', '2017-03-27 21:02:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1971', '3', 'admin', '2017-03-27 21:15:23', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1972', '3', 'admin', '2017-03-27 21:16:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('1973', '3', 'admin', '2017-03-28 11:39:31', '117.136.98.244');
INSERT INTO `ly_userlogin` VALUES ('1974', '3', 'admin', '2017-03-28 11:40:14', '183.12.237.10');
INSERT INTO `ly_userlogin` VALUES ('1975', '3', 'admin', '2017-03-28 11:40:23', '183.12.237.10');
INSERT INTO `ly_userlogin` VALUES ('1976', '3', 'admin', '2017-03-29 12:04:02', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1977', '3', 'admin', '2017-03-30 22:53:32', '14.220.122.199');
INSERT INTO `ly_userlogin` VALUES ('1978', '3', 'admin', '2017-03-30 22:53:53', '14.220.122.199');
INSERT INTO `ly_userlogin` VALUES ('1979', '3', 'admin', '2017-03-31 01:28:03', '14.220.122.199');
INSERT INTO `ly_userlogin` VALUES ('1980', '3', 'admin', '2017-04-06 10:44:09', '117.136.97.46');
INSERT INTO `ly_userlogin` VALUES ('1981', '3', 'admin', '2017-04-06 15:40:08', '117.136.97.62');
INSERT INTO `ly_userlogin` VALUES ('1982', '3', 'admin', '2017-04-06 15:42:24', '117.136.97.62');
INSERT INTO `ly_userlogin` VALUES ('1983', '3', 'admin', '2017-04-07 09:59:11', '117.136.97.49');
INSERT INTO `ly_userlogin` VALUES ('1984', '3', 'admin', '2017-04-07 21:04:20', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1985', '3', 'admin', '2017-04-07 21:04:34', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1986', '3', 'admin', '2017-04-07 22:22:33', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1987', '3', 'admin', '2017-04-07 22:23:00', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1988', '3', 'admin', '2017-04-07 22:23:16', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1989', '3', 'admin', '2017-04-07 22:23:23', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1990', '3', 'admin', '2017-04-07 22:25:19', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1991', '3', 'admin', '2017-04-07 22:27:11', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1992', '3', 'admin', '2017-04-07 22:27:48', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1993', '3', 'admin', '2017-04-07 22:27:54', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1994', '3', 'admin', '2017-04-07 22:30:46', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1995', '3', 'admin', '2017-04-08 11:42:38', '14.220.123.159');
INSERT INTO `ly_userlogin` VALUES ('1996', '3', 'admin', '2017-04-09 22:20:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('1997', '3', 'admin', '2017-04-09 22:21:08', '14.220.121.1');
INSERT INTO `ly_userlogin` VALUES ('1998', '3', 'admin', '2017-04-11 14:18:08', '183.12.240.170');
INSERT INTO `ly_userlogin` VALUES ('1999', '3', 'admin', '2017-04-15 14:05:30', '14.220.122.197');
INSERT INTO `ly_userlogin` VALUES ('2000', '3', 'admin', '2017-04-15 14:53:55', '183.12.243.104');
INSERT INTO `ly_userlogin` VALUES ('2001', '3', 'admin', '2017-04-15 14:54:11', '183.12.243.104');
INSERT INTO `ly_userlogin` VALUES ('2002', '3', 'admin', '2017-04-15 14:55:00', '183.12.243.104');
INSERT INTO `ly_userlogin` VALUES ('2003', '3', 'admin', '2017-04-15 14:55:09', '183.12.243.104');
INSERT INTO `ly_userlogin` VALUES ('2004', '3', 'admin', '2017-04-16 22:26:29', '183.12.243.104');
INSERT INTO `ly_userlogin` VALUES ('2005', '3', 'admin', '2017-04-16 22:28:18', '14.220.122.254');
INSERT INTO `ly_userlogin` VALUES ('2006', '3', 'admin', '2017-04-16 22:36:00', '14.220.122.254');
INSERT INTO `ly_userlogin` VALUES ('2007', '3', 'admin', '2017-04-16 22:37:08', '14.220.122.254');
INSERT INTO `ly_userlogin` VALUES ('2008', '3', 'admin', '2017-04-19 21:20:41', '183.12.243.132');
INSERT INTO `ly_userlogin` VALUES ('2009', '3', 'admin', '2017-04-19 21:31:13', '14.220.120.8');
INSERT INTO `ly_userlogin` VALUES ('2010', '3', 'admin', '2017-04-21 21:39:12', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2011', '36', 'wj123456', '2017-04-21 21:40:20', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2012', '3', 'admin', '2017-04-21 21:42:00', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2013', '3', 'admin', '2017-04-21 21:53:23', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2014', '3', 'admin', '2017-04-22 01:16:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2015', '36', 'wj123456', '2017-04-22 01:18:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2016', '36', 'wj123456', '2017-04-22 01:26:30', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2017', '36', 'wj123456', '2017-04-22 01:28:03', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2018', '3', 'admin', '2017-04-22 02:15:40', '183.61.51.226');
INSERT INTO `ly_userlogin` VALUES ('2019', '3', 'admin', '2017-04-22 02:16:13', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2020', '3', 'admin', '2017-04-22 16:54:02', '27.46.4.254');
INSERT INTO `ly_userlogin` VALUES ('2021', '3', 'admin', '2017-04-22 16:54:09', '183.61.51.179');
INSERT INTO `ly_userlogin` VALUES ('2022', '3', 'admin', '2017-04-22 19:00:08', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2023', '37', 'sukeyu', '2017-04-22 19:07:08', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2024', '3', 'admin', '2017-04-22 19:08:17', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2025', '3', 'admin', '2017-04-22 21:15:52', '27.46.4.232');
INSERT INTO `ly_userlogin` VALUES ('2026', '3', 'admin', '2017-04-22 23:49:50', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2027', '37', 'sukeyu', '2017-04-22 23:50:05', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2028', '3', 'admin', '2017-04-22 23:51:07', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2029', '37', 'sukeyu', '2017-04-22 23:51:42', '61.141.73.53');
INSERT INTO `ly_userlogin` VALUES ('2030', '3', 'admin', '2017-04-23 00:06:12', '14.220.121.190');
INSERT INTO `ly_userlogin` VALUES ('2031', '3', 'admin', '2017-04-23 15:50:56', '163.125.98.25');
INSERT INTO `ly_userlogin` VALUES ('2032', '3', 'admin', '2017-04-23 22:15:47', '14.220.123.68');
INSERT INTO `ly_userlogin` VALUES ('2033', '3', 'admin', '2017-04-23 22:18:04', '14.220.123.68');
INSERT INTO `ly_userlogin` VALUES ('2034', '3', 'admin', '2017-04-23 23:08:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2035', '3', 'admin', '2017-04-23 23:28:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2036', '3', 'admin', '2017-04-23 23:48:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2037', '3', 'admin', '2017-04-23 23:57:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2038', '3', 'admin', '2017-04-24 00:14:15', '14.220.123.68');
INSERT INTO `ly_userlogin` VALUES ('2039', '3', 'admin', '2017-04-24 00:30:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2040', '3', 'admin', '2017-04-24 00:40:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2041', '3', 'admin', '2017-04-24 00:52:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2042', '3', 'admin', '2017-04-24 01:29:40', '14.220.123.68');
INSERT INTO `ly_userlogin` VALUES ('2043', '3', 'admin', '2017-04-24 01:38:59', '14.220.123.68');
INSERT INTO `ly_userlogin` VALUES ('2044', '3', 'admin', '2017-04-24 01:42:21', '14.220.123.68');
INSERT INTO `ly_userlogin` VALUES ('2045', '3', 'admin', '2017-04-24 22:35:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2046', '3', 'admin', '2017-04-24 22:49:42', '14.220.120.187');
INSERT INTO `ly_userlogin` VALUES ('2047', '3', 'admin', '2017-04-24 23:11:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2048', '3', 'admin', '2017-04-24 23:19:36', '14.220.120.187');
INSERT INTO `ly_userlogin` VALUES ('2049', '3', 'admin', '2017-04-24 23:31:25', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2050', '3', 'admin', '2017-04-25 00:09:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2051', '3', 'admin', '2017-04-25 00:10:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2052', '3', 'admin', '2017-04-25 00:15:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2053', '3', 'admin', '2017-04-25 00:17:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2054', '3', 'admin', '2017-04-25 00:24:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2055', '3', 'admin', '2017-05-01 17:39:15', '163.125.98.153');
INSERT INTO `ly_userlogin` VALUES ('2056', '3', 'admin', '2017-05-03 20:31:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2057', '3', 'admin', '2017-05-03 20:56:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2058', '3', 'admin', '2017-05-03 21:44:12', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2059', '3', 'admin', '2017-05-03 21:57:30', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2060', '3', 'admin', '2017-05-03 21:57:55', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2061', '3', 'admin', '2017-05-03 21:59:18', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2062', '3', 'admin', '2017-05-03 21:59:38', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2063', '3', 'admin', '2017-05-03 22:00:40', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2064', '3', 'admin', '2017-05-04 00:12:05', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2065', '3', 'admin', '2017-05-04 00:16:29', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2066', '3', 'admin', '2017-05-04 00:17:14', '14.220.123.1');
INSERT INTO `ly_userlogin` VALUES ('2067', '3', 'admin', '2017-05-04 21:08:22', '14.220.121.183');
INSERT INTO `ly_userlogin` VALUES ('2068', '3', 'admin', '2017-05-04 22:19:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2069', '3', 'admin', '2017-05-04 22:21:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2070', '3', 'admin', '2017-05-04 22:34:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2071', '3', 'admin', '2017-05-04 22:37:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2072', '3', 'admin', '2017-05-04 22:45:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2073', '3', 'admin', '2017-05-04 22:47:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2074', '3', 'admin', '2017-05-04 22:52:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2075', '3', 'admin', '2017-05-04 22:56:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2076', '3', 'admin', '2017-05-05 00:10:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2077', '3', 'admin', '2017-05-05 00:13:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2078', '3', 'admin', '2017-05-05 00:30:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2079', '3', 'admin', '2017-05-05 00:41:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2080', '3', 'admin', '2017-05-05 00:50:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2081', '3', 'admin', '2017-05-05 00:52:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2082', '3', 'admin', '2017-05-05 00:57:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2083', '3', 'admin', '2017-05-05 00:59:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2084', '3', 'admin', '2017-05-05 01:02:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2085', '3', 'admin', '2017-05-05 01:04:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2086', '3', 'admin', '2017-05-05 01:07:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2087', '3', 'admin', '2017-05-05 01:12:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2088', '3', 'admin', '2017-05-05 01:14:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2089', '3', 'admin', '2017-05-05 01:19:53', '14.220.121.183');
INSERT INTO `ly_userlogin` VALUES ('2090', '3', 'admin', '2017-05-05 10:41:27', '116.7.20.174');
INSERT INTO `ly_userlogin` VALUES ('2091', '3', 'admin', '2017-05-06 21:28:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2092', '3', 'admin', '2017-05-06 21:40:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2093', '3', 'admin', '2017-05-06 21:44:00', '14.220.123.92');
INSERT INTO `ly_userlogin` VALUES ('2094', '3', 'admin', '2017-05-08 14:36:31', '116.7.20.149');
INSERT INTO `ly_userlogin` VALUES ('2095', '3', 'admin', '2017-05-11 19:03:40', '116.7.20.170');
INSERT INTO `ly_userlogin` VALUES ('2096', '3', 'admin', '2017-05-12 20:24:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2097', '3', 'admin', '2017-05-12 22:11:01', '14.220.121.37');
INSERT INTO `ly_userlogin` VALUES ('2098', '3', 'admin', '2017-05-12 22:43:40', '14.220.121.37');
INSERT INTO `ly_userlogin` VALUES ('2099', '3', 'admin', '2017-05-12 22:44:20', '14.220.121.37');
INSERT INTO `ly_userlogin` VALUES ('2100', '3', 'admin', '2017-05-12 22:44:57', '14.220.121.37');
INSERT INTO `ly_userlogin` VALUES ('2101', '3', 'admin', '2017-05-14 12:26:07', '14.220.120.99');
INSERT INTO `ly_userlogin` VALUES ('2102', '3', 'admin', '2017-05-14 21:59:45', '116.7.22.103');
INSERT INTO `ly_userlogin` VALUES ('2103', '3', 'admin', '2017-05-14 22:05:57', '116.7.22.103');
INSERT INTO `ly_userlogin` VALUES ('2104', '3', 'admin', '2017-05-14 22:36:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2105', '3', 'admin', '2017-05-14 23:15:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2106', '3', 'admin', '2017-05-14 23:25:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2107', '3', 'admin', '2017-05-14 23:25:33', '14.220.120.99');
INSERT INTO `ly_userlogin` VALUES ('2108', '3', 'admin', '2017-05-14 23:29:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2109', '3', 'admin', '2017-05-15 00:02:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2110', '3', 'admin', '2017-05-15 00:17:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2111', '3', 'admin', '2017-05-15 00:28:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2112', '3', 'admin', '2017-05-16 20:24:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2113', '3', 'admin', '2017-05-16 20:45:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2114', '3', 'admin', '2017-05-16 20:46:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2115', '3', 'admin', '2017-05-16 20:48:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2116', '3', 'admin', '2017-05-16 20:49:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2117', '3', 'admin', '2017-05-16 20:50:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2118', '3', 'admin', '2017-05-16 20:53:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2119', '3', 'admin', '2017-05-16 20:54:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2120', '3', 'admin', '2017-05-16 20:55:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2121', '3', 'admin', '2017-05-16 20:57:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2122', '3', 'admin', '2017-05-16 21:00:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2123', '3', 'admin', '2017-05-16 21:00:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2124', '3', 'admin', '2017-05-16 21:01:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2125', '3', 'admin', '2017-05-16 21:02:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2126', '3', 'admin', '2017-05-16 21:02:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2127', '3', 'admin', '2017-05-16 21:02:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2128', '3', 'admin', '2017-05-16 21:38:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2129', '3', 'admin', '2017-05-16 21:39:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2130', '3', 'admin', '2017-05-16 21:49:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2131', '3', 'admin', '2017-05-16 21:49:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2132', '3', 'admin', '2017-05-16 21:51:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2133', '3', 'admin', '2017-05-16 21:52:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2134', '3', 'admin', '2017-05-16 21:55:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2135', '3', 'admin', '2017-05-16 21:56:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2136', '3', 'admin', '2017-05-16 22:08:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2137', '3', 'admin', '2017-05-16 22:17:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2138', '3', 'admin', '2017-05-16 22:22:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2139', '3', 'admin', '2017-05-16 22:36:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2140', '3', 'admin', '2017-05-16 22:49:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2141', '3', 'admin', '2017-05-16 22:52:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2142', '3', 'admin', '2017-05-16 23:00:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2143', '3', 'admin', '2017-05-17 21:36:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2144', '3', 'admin', '2017-05-17 22:13:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2145', '3', 'admin', '2017-05-17 22:18:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2146', '3', 'admin', '2017-05-17 22:21:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2147', '3', 'admin', '2017-05-17 22:22:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2148', '3', 'admin', '2017-05-17 22:28:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2149', '3', 'admin', '2017-05-17 22:38:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2150', '3', 'admin', '2017-05-17 22:42:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2151', '3', 'admin', '2017-05-17 22:48:47', '14.220.121.85');
INSERT INTO `ly_userlogin` VALUES ('2152', '3', 'admin', '2017-05-17 23:02:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2153', '3', 'admin', '2017-05-17 23:42:05', '14.220.121.85');
INSERT INTO `ly_userlogin` VALUES ('2154', '3', 'admin', '2017-05-17 23:44:38', '14.220.121.85');
INSERT INTO `ly_userlogin` VALUES ('2155', '3', 'admin', '2017-05-18 00:47:02', '112.97.54.161');
INSERT INTO `ly_userlogin` VALUES ('2156', '3', 'admin', '2017-05-18 00:47:25', '112.97.54.161');
INSERT INTO `ly_userlogin` VALUES ('2157', '3', 'admin', '2017-05-19 21:24:16', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2158', '3', 'admin', '2017-05-19 21:27:39', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2159', '3', 'admin', '2017-05-19 21:46:02', '58.101.6.174');
INSERT INTO `ly_userlogin` VALUES ('2160', '3', 'admin', '2017-05-19 21:46:59', '58.101.6.174');
INSERT INTO `ly_userlogin` VALUES ('2161', '3', 'admin', '2017-05-20 15:55:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2162', '3', 'admin', '2017-05-20 15:56:16', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2163', '3', 'admin', '2017-05-20 17:11:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2164', '3', 'admin', '2017-05-20 17:11:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2165', '3', 'admin', '2017-05-20 17:11:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2166', '3', 'admin', '2017-05-20 17:16:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2167', '3', 'admin', '2017-05-20 17:21:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2168', '3', 'admin', '2017-05-20 17:23:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2169', '3', 'admin', '2017-05-20 17:27:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2170', '3', 'admin', '2017-05-20 17:50:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2171', '3', 'admin', '2017-05-20 17:53:29', '112.97.227.80');
INSERT INTO `ly_userlogin` VALUES ('2172', '3', 'admin', '2017-05-20 18:05:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2173', '3', 'admin', '2017-05-20 18:24:21', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2174', '3', 'admin', '2017-05-20 18:25:14', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2175', '3', 'admin', '2017-05-20 18:25:22', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2176', '3', 'admin', '2017-05-20 18:26:16', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2177', '3', 'admin', '2017-05-20 18:27:19', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2178', '3', 'admin', '2017-05-20 18:28:45', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2179', '3', 'admin', '2017-05-20 18:29:38', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2180', '3', 'admin', '2017-05-20 18:31:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2181', '3', 'admin', '2017-05-20 18:31:49', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2182', '3', 'admin', '2017-05-20 18:31:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2183', '3', 'admin', '2017-05-20 18:32:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2184', '3', 'admin', '2017-05-20 18:36:25', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2185', '3', 'admin', '2017-05-20 18:36:37', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2186', '3', 'admin', '2017-05-21 12:17:54', '14.220.122.112');
INSERT INTO `ly_userlogin` VALUES ('2187', '3', 'admin', '2017-05-21 12:37:14', '222.52.151.86');
INSERT INTO `ly_userlogin` VALUES ('2188', '3', 'admin', '2017-05-21 12:43:49', '222.52.151.86');
INSERT INTO `ly_userlogin` VALUES ('2189', '3', 'admin', '2017-05-21 12:45:46', '222.52.151.86');
INSERT INTO `ly_userlogin` VALUES ('2190', '3', 'admin', '2017-05-21 13:05:31', '222.52.151.86');
INSERT INTO `ly_userlogin` VALUES ('2191', '3', 'admin', '2017-05-22 09:25:56', '112.97.55.36');
INSERT INTO `ly_userlogin` VALUES ('2192', '3', 'admin', '2017-05-24 13:30:28', '223.104.22.80');
INSERT INTO `ly_userlogin` VALUES ('2193', '3', 'admin', '2017-05-24 14:44:28', '112.97.63.75');
INSERT INTO `ly_userlogin` VALUES ('2194', '3', 'admin', '2017-05-24 14:44:50', '112.97.63.75');
INSERT INTO `ly_userlogin` VALUES ('2195', '3', 'admin', '2017-05-29 23:17:24', '14.220.121.13');
INSERT INTO `ly_userlogin` VALUES ('2196', '3', 'admin', '2017-05-29 23:18:25', '14.220.121.13');
INSERT INTO `ly_userlogin` VALUES ('2197', '3', 'admin', '2017-05-30 14:42:31', '14.220.123.59');
INSERT INTO `ly_userlogin` VALUES ('2198', '3', 'admin', '2017-05-30 14:50:49', '14.220.123.59');
INSERT INTO `ly_userlogin` VALUES ('2199', '3', 'admin', '2017-05-30 14:50:55', '14.220.123.59');
INSERT INTO `ly_userlogin` VALUES ('2200', '3', 'admin', '2017-06-04 18:48:28', '113.91.32.191');
INSERT INTO `ly_userlogin` VALUES ('2201', '3', 'admin', '2017-06-06 21:08:01', '14.220.120.60');
INSERT INTO `ly_userlogin` VALUES ('2202', '3', 'admin', '2017-06-07 00:57:03', '14.220.120.60');
INSERT INTO `ly_userlogin` VALUES ('2203', '3', 'admin', '2017-06-07 01:11:57', '14.220.120.60');
INSERT INTO `ly_userlogin` VALUES ('2204', '3', 'admin', '2017-06-07 11:57:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2205', '3', 'admin', '2017-06-07 22:21:25', '14.220.121.50');
INSERT INTO `ly_userlogin` VALUES ('2206', '3', 'admin', '2017-06-18 23:24:24', '14.220.120.87');
INSERT INTO `ly_userlogin` VALUES ('2207', '3', 'admin', '2017-06-19 01:19:23', '14.220.120.87');
INSERT INTO `ly_userlogin` VALUES ('2208', '3', 'admin', '2017-06-23 10:32:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2209', '3', 'admin', '2017-06-23 10:40:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2210', '3', 'admin', '2017-06-23 11:09:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2211', '3', 'admin', '2017-06-23 11:22:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2212', '3', 'admin', '2017-06-23 11:31:49', '183.12.238.242');
INSERT INTO `ly_userlogin` VALUES ('2213', '3', 'admin', '2017-06-24 16:51:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2214', '3', 'admin', '2017-06-24 17:03:52', '14.220.120.49');
INSERT INTO `ly_userlogin` VALUES ('2215', '3', 'admin', '2017-06-24 17:05:30', '14.220.120.49');
INSERT INTO `ly_userlogin` VALUES ('2216', '3', 'admin', '2017-06-25 13:31:17', '14.220.122.116');
INSERT INTO `ly_userlogin` VALUES ('2217', '3', 'admin', '2017-06-27 11:03:33', '14.220.123.142');
INSERT INTO `ly_userlogin` VALUES ('2218', '3', 'admin', '2017-06-27 11:13:46', '119.103.189.217');
INSERT INTO `ly_userlogin` VALUES ('2219', '3', 'admin', '2017-06-27 11:22:51', '119.103.189.217');
INSERT INTO `ly_userlogin` VALUES ('2220', '3', 'admin', '2017-06-28 01:22:45', '14.220.120.165');
INSERT INTO `ly_userlogin` VALUES ('2221', '3', 'admin', '2017-07-05 00:54:26', '14.220.123.15');
INSERT INTO `ly_userlogin` VALUES ('2222', '3', 'admin', '2017-07-05 00:56:31', '14.220.123.15');
INSERT INTO `ly_userlogin` VALUES ('2223', '3', 'admin', '2017-07-05 00:58:14', '14.220.123.15');
INSERT INTO `ly_userlogin` VALUES ('2224', '3', 'admin', '2017-07-05 08:58:30', '183.62.230.175');
INSERT INTO `ly_userlogin` VALUES ('2225', '3', 'admin', '2017-07-05 11:00:48', '14.220.123.15');
INSERT INTO `ly_userlogin` VALUES ('2226', '3', 'admin', '2017-07-06 16:50:57', '14.220.123.167');
INSERT INTO `ly_userlogin` VALUES ('2227', '3', 'admin', '2017-07-06 19:55:13', '14.220.123.167');
INSERT INTO `ly_userlogin` VALUES ('2228', '3', 'admin', '2017-07-11 22:16:47', '14.220.121.246');
INSERT INTO `ly_userlogin` VALUES ('2229', '3', 'admin', '2017-07-15 21:11:22', '117.136.40.226');
INSERT INTO `ly_userlogin` VALUES ('2230', '3', 'admin', '2017-07-15 21:12:02', '117.136.40.226');
INSERT INTO `ly_userlogin` VALUES ('2231', '3', 'admin', '2017-07-15 21:13:01', '117.136.40.226');
INSERT INTO `ly_userlogin` VALUES ('2232', '3', 'admin', '2017-07-15 21:13:44', '117.136.40.226');
INSERT INTO `ly_userlogin` VALUES ('2233', '3', 'admin', '2017-07-15 22:04:38', '117.136.40.226');
INSERT INTO `ly_userlogin` VALUES ('2234', '3', 'admin', '2017-07-16 16:31:45', '220.112.14.231');
INSERT INTO `ly_userlogin` VALUES ('2235', '3', 'admin', '2017-07-16 16:37:14', '220.112.14.231');
INSERT INTO `ly_userlogin` VALUES ('2236', '3', 'admin', '2017-07-16 16:41:17', '220.112.14.231');
INSERT INTO `ly_userlogin` VALUES ('2237', '3', 'admin', '2017-07-17 11:27:40', '58.49.42.155');
INSERT INTO `ly_userlogin` VALUES ('2238', '3', 'admin', '2017-07-17 11:28:23', '58.49.42.155');
INSERT INTO `ly_userlogin` VALUES ('2239', '3', 'admin', '2017-07-17 11:46:33', '14.152.69.140');
INSERT INTO `ly_userlogin` VALUES ('2240', '3', 'admin', '2017-07-17 12:25:55', '183.62.230.175');
INSERT INTO `ly_userlogin` VALUES ('2241', '3', 'admin', '2017-07-17 12:37:52', '183.12.237.83');
INSERT INTO `ly_userlogin` VALUES ('2242', '3', 'admin', '2017-07-17 12:38:09', '183.12.237.83');
INSERT INTO `ly_userlogin` VALUES ('2243', '3', 'admin', '2017-07-18 20:24:55', '223.104.1.186');
INSERT INTO `ly_userlogin` VALUES ('2244', '3', 'admin', '2017-07-19 18:53:50', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2245', '3', 'admin', '2017-07-23 12:42:10', '113.91.37.135');
INSERT INTO `ly_userlogin` VALUES ('2246', '3', 'admin', '2017-07-24 10:12:58', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2247', '3', 'admin', '2017-07-24 12:34:46', '113.91.36.164');
INSERT INTO `ly_userlogin` VALUES ('2248', '3', 'admin', '2017-07-24 12:36:23', '113.91.36.164');
INSERT INTO `ly_userlogin` VALUES ('2249', '3', 'admin', '2017-07-24 12:37:19', '113.91.36.164');
INSERT INTO `ly_userlogin` VALUES ('2250', '3', 'admin', '2017-07-24 12:40:00', '113.91.36.164');
INSERT INTO `ly_userlogin` VALUES ('2251', '3', 'admin', '2017-07-28 19:48:36', '14.220.120.204');
INSERT INTO `ly_userlogin` VALUES ('2252', '3', 'admin', '2017-08-02 11:30:53', '14.220.123.65');
INSERT INTO `ly_userlogin` VALUES ('2253', '38', 'guest', '2017-08-02 11:34:09', '14.220.123.65');
INSERT INTO `ly_userlogin` VALUES ('2254', '38', 'guest', '2017-08-02 11:45:42', '111.221.201.46');
INSERT INTO `ly_userlogin` VALUES ('2255', '38', 'guest', '2017-08-02 13:25:32', '14.220.123.65');
INSERT INTO `ly_userlogin` VALUES ('2256', '38', 'guest', '2017-08-02 16:57:56', '111.221.201.46');
INSERT INTO `ly_userlogin` VALUES ('2257', '38', 'guest', '2017-08-02 21:59:48', '14.220.123.65');
INSERT INTO `ly_userlogin` VALUES ('2258', '3', 'admin', '2017-08-08 14:13:46', '14.220.122.246');
INSERT INTO `ly_userlogin` VALUES ('2259', '3', 'admin', '2017-08-13 21:26:23', '183.12.238.17');
INSERT INTO `ly_userlogin` VALUES ('2260', '3', 'admin', '2017-08-13 23:44:38', '183.12.238.17');
INSERT INTO `ly_userlogin` VALUES ('2261', '3', 'admin', '2017-08-16 15:02:07', '14.220.123.27');
INSERT INTO `ly_userlogin` VALUES ('2262', '3', 'admin', '2017-08-16 15:25:45', '14.220.123.27');
INSERT INTO `ly_userlogin` VALUES ('2263', '3', 'admin', '2017-08-16 15:48:59', '14.220.123.27');
INSERT INTO `ly_userlogin` VALUES ('2264', '3', 'admin', '2017-08-17 10:01:28', '14.220.123.27');
INSERT INTO `ly_userlogin` VALUES ('2265', '3', 'admin', '2017-08-17 18:14:33', '14.220.123.27');
INSERT INTO `ly_userlogin` VALUES ('2266', '3', 'admin', '2017-08-18 09:56:58', '14.220.122.148');
INSERT INTO `ly_userlogin` VALUES ('2267', '3', 'admin', '2017-08-18 09:59:27', '14.220.122.148');
INSERT INTO `ly_userlogin` VALUES ('2268', '3', 'admin', '2017-08-18 14:40:49', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2269', '3', 'admin', '2017-08-21 22:05:48', '121.15.41.199');
INSERT INTO `ly_userlogin` VALUES ('2270', '3', 'admin', '2017-08-21 22:13:06', '14.17.37.43');
INSERT INTO `ly_userlogin` VALUES ('2271', '3', 'admin', '2017-08-22 09:13:34', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2272', '3', 'admin', '2017-08-22 09:19:02', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2273', '3', 'admin', '2017-08-22 09:20:30', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2274', '3', 'admin', '2017-08-25 11:26:16', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2275', '3', 'admin', '2017-08-25 13:44:18', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2276', '3', 'admin', '2017-08-25 17:39:06', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2277', '3', 'admin', '2017-08-25 21:02:37', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2278', '3', 'admin', '2017-08-25 21:33:57', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2279', '3', 'admin', '2017-08-25 21:34:16', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2280', '3', 'admin', '2017-08-25 22:02:06', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2281', '3', 'admin', '2017-08-25 22:05:35', '14.220.123.196');
INSERT INTO `ly_userlogin` VALUES ('2282', '3', 'admin', '2017-08-27 17:03:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2283', '3', 'admin', '2017-08-27 17:30:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2284', '3', 'admin', '2017-08-27 18:35:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2285', '3', 'admin', '2017-08-27 20:49:48', '14.220.121.226');
INSERT INTO `ly_userlogin` VALUES ('2286', '3', 'admin', '2017-08-28 09:44:00', '14.220.123.17');
INSERT INTO `ly_userlogin` VALUES ('2287', '3', 'admin', '2017-08-29 09:06:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2288', '3', 'admin', '2017-08-29 15:55:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2289', '3', 'admin', '2017-08-29 19:52:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2290', '3', 'admin', '2017-08-29 19:56:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2291', '3', 'admin', '2017-08-30 09:14:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2292', '3', 'admin', '2017-08-30 11:33:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2293', '3', 'admin', '2017-08-30 19:44:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2294', '3', 'admin', '2017-08-31 09:51:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2295', '3', 'admin', '2017-08-31 09:54:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2296', '3', 'admin', '2017-08-31 09:54:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2297', '3', 'admin', '2017-08-31 11:02:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2298', '3', 'admin', '2017-08-31 11:19:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2299', '3', 'admin', '2017-08-31 14:01:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2300', '3', 'admin', '2017-08-31 14:08:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2301', '3', 'admin', '2017-08-31 16:40:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2302', '3', 'admin', '2017-08-31 17:09:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2303', '3', 'admin', '2017-08-31 18:26:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2304', '3', 'admin', '2017-08-31 18:30:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2305', '3', 'admin', '2017-08-31 20:29:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2306', '3', 'admin', '2017-08-31 21:12:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2307', '3', 'admin', '2017-08-31 21:12:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2308', '3', 'admin', '2017-09-01 08:40:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2309', '3', 'admin', '2017-09-01 09:12:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2310', '3', 'admin', '2017-09-01 09:44:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2311', '3', 'admin', '2017-09-01 09:46:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2312', '3', 'admin', '2017-09-01 09:49:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2313', '3', 'admin', '2017-09-01 09:50:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2314', '3', 'admin', '2017-09-01 09:56:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2315', '3', 'admin', '2017-09-01 09:59:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2316', '3', 'admin', '2017-09-01 10:05:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2317', '3', 'admin', '2017-09-01 10:08:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2318', '3', 'admin', '2017-09-01 10:13:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2319', '3', 'admin', '2017-09-01 10:18:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2320', '3', 'admin', '2017-09-01 10:21:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2321', '3', 'admin', '2017-09-01 10:25:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2322', '3', 'admin', '2017-09-01 10:26:47', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2323', '3', 'admin', '2017-09-01 10:30:39', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2324', '3', 'admin', '2017-09-01 10:32:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2325', '3', 'admin', '2017-09-01 10:33:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2326', '3', 'admin', '2017-09-01 10:38:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2327', '3', 'admin', '2017-09-01 10:52:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2328', '3', 'admin', '2017-09-01 10:52:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2329', '3', 'admin', '2017-09-01 11:21:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2330', '3', 'admin', '2017-09-01 11:31:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2331', '3', 'admin', '2017-09-01 11:35:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2332', '3', 'admin', '2017-09-01 11:38:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2333', '3', 'admin', '2017-09-01 11:43:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2334', '3', 'admin', '2017-09-01 11:43:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2335', '3', 'admin', '2017-09-01 12:43:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2336', '3', 'admin', '2017-09-01 13:06:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2337', '3', 'admin', '2017-09-01 14:15:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2338', '3', 'admin', '2017-09-01 14:19:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2339', '3', 'admin', '2017-09-01 14:29:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2340', '3', 'admin', '2017-09-01 14:31:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2341', '3', 'admin', '2017-09-01 14:33:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2342', '3', 'admin', '2017-09-01 14:36:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2343', '3', 'admin', '2017-09-01 14:40:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2344', '3', 'admin', '2017-09-02 10:07:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2345', '3', 'admin', '2017-09-02 10:19:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2346', '3', 'admin', '2017-09-02 10:32:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2347', '3', 'admin', '2017-09-02 10:32:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2348', '3', 'admin', '2017-09-02 10:36:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2349', '3', 'admin', '2017-09-02 10:43:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2350', '3', 'admin', '2017-09-02 11:26:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2351', '3', 'admin', '2017-09-02 15:24:24', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2352', '3', 'admin', '2017-09-02 16:01:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2353', '3', 'admin', '2017-09-02 16:03:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2354', '3', 'admin', '2017-09-02 17:35:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2355', '3', 'admin', '2017-09-02 17:37:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2356', '3', 'admin', '2017-09-02 17:39:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2357', '3', 'admin', '2017-09-02 17:40:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2358', '3', 'admin', '2017-09-02 17:41:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2359', '3', 'admin', '2017-09-02 17:42:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2360', '3', 'admin', '2017-09-02 17:46:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2361', '3', 'admin', '2017-09-02 17:57:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2362', '3', 'admin', '2017-09-02 18:00:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2363', '3', 'admin', '2017-09-02 18:08:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2364', '3', 'admin', '2017-09-02 18:36:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2365', '3', 'admin', '2017-09-02 18:44:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2366', '3', 'admin', '2017-09-02 18:51:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2367', '3', 'admin', '2017-09-02 18:56:45', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2368', '3', 'admin', '2017-09-02 19:06:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2369', '3', 'admin', '2017-09-02 19:08:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2370', '3', 'admin', '2017-09-02 21:07:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2371', '3', 'admin', '2017-09-02 21:25:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2372', '3', 'admin', '2017-09-02 21:26:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2373', '3', 'admin', '2017-09-02 21:41:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2374', '3', 'admin', '2017-09-02 22:07:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2375', '3', 'admin', '2017-09-02 22:22:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2376', '3', 'admin', '2017-09-02 22:36:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2377', '3', 'admin', '2017-09-02 22:38:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2378', '3', 'admin', '2017-09-02 22:40:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2379', '3', 'admin', '2017-09-02 22:43:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2380', '3', 'admin', '2017-09-02 22:46:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2381', '3', 'admin', '2017-09-02 22:47:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2382', '3', 'admin', '2017-09-02 22:49:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2383', '3', 'admin', '2017-09-02 22:49:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2384', '3', 'admin', '2017-09-02 22:49:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2385', '3', 'admin', '2017-09-02 22:54:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2386', '3', 'admin', '2017-09-02 23:00:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2387', '3', 'admin', '2017-09-02 23:01:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2388', '3', 'admin', '2017-09-02 23:03:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2389', '3', 'admin', '2017-09-02 23:04:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2390', '3', 'admin', '2017-09-02 23:06:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2391', '3', 'admin', '2017-09-02 23:17:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2392', '3', 'admin', '2017-09-02 23:21:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2393', '3', 'admin', '2017-09-02 23:22:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2394', '3', 'admin', '2017-09-02 23:22:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2395', '3', 'admin', '2017-09-02 23:22:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2396', '3', 'admin', '2017-09-02 23:32:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2397', '3', 'admin', '2017-09-02 23:48:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2398', '3', 'admin', '2017-09-03 16:41:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2399', '3', 'admin', '2017-09-03 16:52:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2400', '3', 'admin', '2017-09-04 09:12:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2401', '3', 'admin', '2017-09-04 09:13:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2402', '3', 'admin', '2017-09-04 09:15:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2403', '3', 'admin', '2017-09-04 09:27:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2404', '3', 'admin', '2017-09-04 09:29:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2405', '3', 'admin', '2017-09-04 09:31:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2406', '3', 'admin', '2017-09-04 09:36:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2407', '3', 'admin', '2017-09-04 09:36:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2408', '3', 'admin', '2017-09-04 10:09:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2409', '3', 'admin', '2017-09-04 11:03:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2410', '3', 'admin', '2017-09-04 11:26:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2411', '3', 'admin', '2017-09-04 11:36:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2412', '3', 'admin', '2017-09-04 11:46:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2413', '3', 'admin', '2017-09-04 11:50:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2414', '3', 'admin', '2017-09-04 11:50:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2415', '3', 'admin', '2017-09-04 12:00:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2416', '3', 'admin', '2017-09-04 12:00:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2417', '3', 'admin', '2017-09-04 12:01:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2418', '3', 'admin', '2017-09-04 13:58:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2419', '3', 'admin', '2017-09-04 14:00:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2420', '3', 'admin', '2017-09-04 14:05:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2421', '3', 'admin', '2017-09-04 14:10:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2422', '3', 'admin', '2017-09-04 14:15:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2423', '3', 'admin', '2017-09-04 14:19:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2424', '3', 'admin', '2017-09-04 14:26:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2425', '3', 'admin', '2017-09-04 14:37:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2426', '3', 'admin', '2017-09-04 14:48:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2427', '3', 'admin', '2017-09-04 14:49:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2428', '3', 'admin', '2017-09-04 15:14:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2429', '3', 'admin', '2017-09-04 15:19:57', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2430', '3', 'admin', '2017-09-04 15:25:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2431', '3', 'admin', '2017-09-04 15:31:59', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2432', '3', 'admin', '2017-09-04 15:37:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2433', '3', 'admin', '2017-09-04 15:40:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2434', '3', 'admin', '2017-09-04 15:41:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2435', '3', 'admin', '2017-09-04 15:50:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2436', '3', 'admin', '2017-09-04 15:54:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2437', '3', 'admin', '2017-09-04 16:14:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2438', '3', 'admin', '2017-09-04 16:16:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2439', '3', 'admin', '2017-09-04 16:19:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2440', '3', 'admin', '2017-09-04 16:20:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2441', '3', 'admin', '2017-09-04 16:26:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2442', '3', 'admin', '2017-09-04 16:32:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2443', '3', 'admin', '2017-09-04 16:35:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2444', '3', 'admin', '2017-09-04 16:46:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2445', '3', 'admin', '2017-09-04 17:10:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2446', '3', 'admin', '2017-09-04 17:15:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2447', '3', 'admin', '2017-09-04 17:18:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2448', '3', 'admin', '2017-09-04 17:20:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2449', '3', 'admin', '2017-09-04 17:22:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2450', '3', 'admin', '2017-09-04 17:23:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2451', '3', 'admin', '2017-09-04 17:30:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2452', '3', 'admin', '2017-09-04 17:42:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2453', '3', 'admin', '2017-09-04 17:47:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2454', '3', 'admin', '2017-09-04 17:49:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2455', '3', 'admin', '2017-09-04 17:52:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2456', '3', 'admin', '2017-09-04 18:02:43', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2457', '3', 'admin', '2017-09-04 18:06:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2458', '3', 'admin', '2017-09-04 18:13:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2459', '3', 'admin', '2017-09-04 18:16:02', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2460', '3', 'admin', '2017-09-04 18:18:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2461', '3', 'admin', '2017-09-04 18:20:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2462', '3', 'admin', '2017-09-04 18:22:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2463', '3', 'admin', '2017-09-04 18:31:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2464', '3', 'admin', '2017-09-04 18:33:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2465', '3', 'admin', '2017-09-04 18:36:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2466', '3', 'admin', '2017-09-04 18:37:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2467', '3', 'admin', '2017-09-04 19:45:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2468', '3', 'admin', '2017-09-04 19:49:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2469', '3', 'admin', '2017-09-04 20:01:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2470', '3', 'admin', '2017-09-04 20:05:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2471', '3', 'admin', '2017-09-04 20:08:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2472', '3', 'admin', '2017-09-04 20:10:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2473', '3', 'admin', '2017-09-04 20:14:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2474', '3', 'admin', '2017-09-04 20:19:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2475', '3', 'admin', '2017-09-04 20:21:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2476', '3', 'admin', '2017-09-04 20:25:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2477', '3', 'admin', '2017-09-04 20:32:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2478', '3', 'admin', '2017-09-04 20:33:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2479', '3', 'admin', '2017-09-04 20:41:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2480', '3', 'admin', '2017-09-04 20:45:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2481', '3', 'admin', '2017-09-04 20:58:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2482', '3', 'admin', '2017-09-04 21:04:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2483', '3', 'admin', '2017-09-04 21:07:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2484', '3', 'admin', '2017-09-04 21:07:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2485', '3', 'admin', '2017-09-04 21:11:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2486', '3', 'admin', '2017-09-04 21:15:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2487', '3', 'admin', '2017-09-04 21:17:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2488', '3', 'admin', '2017-09-04 21:19:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2489', '3', 'admin', '2017-09-04 21:21:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2490', '3', 'admin', '2017-09-04 21:22:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2491', '3', 'admin', '2017-09-04 21:23:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2492', '3', 'admin', '2017-09-04 21:24:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2493', '3', 'admin', '2017-09-04 21:27:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2494', '3', 'admin', '2017-09-04 21:28:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2495', '3', 'admin', '2017-09-04 21:30:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2496', '3', 'admin', '2017-09-04 21:30:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2497', '3', 'admin', '2017-09-04 21:36:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2498', '3', 'admin', '2017-09-04 21:36:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2499', '3', 'admin', '2017-09-04 21:45:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2500', '3', 'admin', '2017-09-04 21:53:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2501', '3', 'admin', '2017-09-04 22:53:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2502', '3', 'admin', '2017-09-04 22:56:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2503', '3', 'admin', '2017-09-04 22:56:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2504', '3', 'admin', '2017-09-04 22:56:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2505', '3', 'admin', '2017-09-04 22:56:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2506', '3', 'admin', '2017-09-04 23:02:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2507', '3', 'admin', '2017-09-04 23:05:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2508', '3', 'admin', '2017-09-04 23:22:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2509', '3', 'admin', '2017-09-04 23:36:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2510', '3', 'admin', '2017-09-04 23:39:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2511', '3', 'admin', '2017-09-04 23:42:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2512', '3', 'admin', '2017-09-04 23:44:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2513', '3', 'admin', '2017-09-04 23:55:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2514', '3', 'admin', '2017-09-05 00:11:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2515', '3', 'admin', '2017-09-05 00:12:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2516', '3', 'admin', '2017-09-05 00:15:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2517', '3', 'admin', '2017-09-05 00:39:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2518', '3', 'admin', '2017-09-05 00:43:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2519', '3', 'admin', '2017-09-05 00:44:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2520', '3', 'admin', '2017-09-05 00:45:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2521', '3', 'admin', '2017-09-05 00:48:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2522', '3', 'admin', '2017-09-05 00:50:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2523', '3', 'admin', '2017-09-05 00:51:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2524', '3', 'admin', '2017-09-05 00:59:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2525', '3', 'admin', '2017-09-05 01:07:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2526', '3', 'admin', '2017-09-05 01:09:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2527', '3', 'admin', '2017-09-05 09:09:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2528', '3', 'admin', '2017-09-05 09:16:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2529', '3', 'admin', '2017-09-05 10:26:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2530', '3', 'admin', '2017-09-05 10:28:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2531', '3', 'admin', '2017-09-05 10:33:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2532', '3', 'admin', '2017-09-05 10:36:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2533', '3', 'admin', '2017-09-05 10:37:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2534', '3', 'admin', '2017-09-05 11:09:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2535', '3', 'admin', '2017-09-05 11:11:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2536', '3', 'admin', '2017-09-05 11:16:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2537', '3', 'admin', '2017-09-05 11:22:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2538', '3', 'admin', '2017-09-05 11:23:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2539', '3', 'admin', '2017-09-05 11:26:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2540', '3', 'admin', '2017-09-05 11:38:09', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2541', '3', 'admin', '2017-09-05 11:40:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2542', '3', 'admin', '2017-09-05 11:44:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2543', '3', 'admin', '2017-09-05 11:48:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2544', '3', 'admin', '2017-09-05 11:54:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2545', '3', 'admin', '2017-09-05 11:55:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2546', '3', 'admin', '2017-09-05 12:00:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2547', '3', 'admin', '2017-09-05 12:02:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2548', '3', 'admin', '2017-09-05 12:05:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2549', '3', 'admin', '2017-09-05 12:07:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2550', '3', 'admin', '2017-09-05 12:11:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2551', '3', 'admin', '2017-09-05 12:14:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2552', '3', 'admin', '2017-09-05 13:58:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2553', '3', 'admin', '2017-09-05 14:08:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2554', '3', 'admin', '2017-09-05 14:10:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2555', '3', 'admin', '2017-09-05 14:23:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2556', '3', 'admin', '2017-09-05 14:30:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2557', '3', 'admin', '2017-09-05 14:36:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2558', '3', 'admin', '2017-09-05 14:38:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2559', '3', 'admin', '2017-09-05 14:40:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2560', '3', 'admin', '2017-09-05 14:41:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2561', '3', 'admin', '2017-09-05 14:44:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2562', '3', 'admin', '2017-09-05 14:46:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2563', '3', 'admin', '2017-09-05 14:47:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2564', '3', 'admin', '2017-09-05 14:49:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2565', '3', 'admin', '2017-09-05 14:51:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2566', '3', 'admin', '2017-09-05 14:53:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2567', '3', 'admin', '2017-09-05 14:57:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2568', '3', 'admin', '2017-09-05 15:02:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2569', '3', 'admin', '2017-09-05 15:07:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2570', '3', 'admin', '2017-09-05 15:09:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2571', '3', 'admin', '2017-09-05 15:13:19', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2572', '3', 'admin', '2017-09-05 15:13:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2573', '3', 'admin', '2017-09-05 15:17:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2574', '3', 'admin', '2017-09-05 15:21:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2575', '3', 'admin', '2017-09-05 15:24:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2576', '3', 'admin', '2017-09-05 15:26:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2577', '3', 'admin', '2017-09-05 15:34:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2578', '3', 'admin', '2017-09-05 15:42:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2579', '3', 'admin', '2017-09-05 15:43:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2580', '3', 'admin', '2017-09-05 15:45:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2581', '3', 'admin', '2017-09-05 15:45:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2582', '3', 'admin', '2017-09-05 15:50:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2583', '3', 'admin', '2017-09-05 15:53:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2584', '3', 'admin', '2017-09-05 15:55:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2585', '3', 'admin', '2017-09-05 15:57:21', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2586', '3', 'admin', '2017-09-05 15:58:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2587', '3', 'admin', '2017-09-05 16:00:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2588', '3', 'admin', '2017-09-05 16:02:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2589', '3', 'admin', '2017-09-05 16:02:07', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2590', '3', 'admin', '2017-09-05 16:04:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2591', '3', 'admin', '2017-09-05 16:05:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2592', '3', 'admin', '2017-09-05 16:08:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2593', '3', 'admin', '2017-09-05 16:11:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2594', '3', 'admin', '2017-09-05 16:35:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2595', '3', 'admin', '2017-09-05 16:39:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2596', '3', 'admin', '2017-09-05 16:42:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2597', '3', 'admin', '2017-09-05 16:49:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2598', '3', 'admin', '2017-09-05 16:55:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2599', '3', 'admin', '2017-09-05 16:56:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2600', '3', 'admin', '2017-09-05 16:58:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2601', '3', 'admin', '2017-09-05 17:00:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2602', '3', 'admin', '2017-09-05 17:02:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2603', '3', 'admin', '2017-09-05 17:06:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2604', '3', 'admin', '2017-09-05 17:08:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2605', '3', 'admin', '2017-09-05 17:08:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2606', '3', 'admin', '2017-09-05 17:11:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2607', '3', 'admin', '2017-09-05 17:11:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2608', '3', 'admin', '2017-09-05 17:13:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2609', '3', 'admin', '2017-09-05 17:17:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2610', '3', 'admin', '2017-09-05 17:34:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2611', '3', 'admin', '2017-09-05 17:36:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2612', '3', 'admin', '2017-09-05 17:56:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2613', '3', 'admin', '2017-09-05 19:20:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2614', '3', 'admin', '2017-09-05 19:22:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2615', '3', 'admin', '2017-09-05 19:30:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2616', '3', 'admin', '2017-09-05 19:32:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2617', '3', 'admin', '2017-09-05 19:37:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2618', '3', 'admin', '2017-09-05 19:44:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2619', '3', 'admin', '2017-09-05 19:48:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2620', '3', 'admin', '2017-09-05 20:00:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2621', '3', 'admin', '2017-09-05 20:01:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2622', '3', 'admin', '2017-09-05 20:01:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2623', '3', 'admin', '2017-09-05 20:04:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2624', '3', 'admin', '2017-09-05 20:09:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2625', '3', 'admin', '2017-09-05 20:11:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2626', '3', 'admin', '2017-09-05 20:12:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2627', '3', 'admin', '2017-09-05 20:14:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2628', '3', 'admin', '2017-09-05 20:15:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2629', '3', 'admin', '2017-09-05 20:18:55', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2630', '3', 'admin', '2017-09-05 20:25:04', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2631', '3', 'admin', '2017-09-05 20:28:12', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2632', '3', 'admin', '2017-09-05 20:31:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2633', '3', 'admin', '2017-09-05 20:32:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2634', '3', 'admin', '2017-09-05 20:52:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2635', '3', 'admin', '2017-09-05 20:53:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2636', '3', 'admin', '2017-09-05 20:58:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2637', '3', 'admin', '2017-09-05 21:07:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2638', '3', 'admin', '2017-09-05 21:32:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2639', '3', 'admin', '2017-09-05 21:42:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2640', '3', 'admin', '2017-09-05 22:34:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2641', '3', 'admin', '2017-09-05 22:50:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2642', '3', 'admin', '2017-09-06 08:57:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2643', '3', 'admin', '2017-09-06 09:25:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2644', '3', 'admin', '2017-09-06 09:29:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2645', '3', 'admin', '2017-09-06 09:37:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2646', '3', 'admin', '2017-09-06 09:37:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2647', '3', 'admin', '2017-09-06 09:39:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2648', '3', 'admin', '2017-09-06 09:40:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2649', '3', 'admin', '2017-09-06 09:52:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2650', '3', 'admin', '2017-09-06 10:37:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2651', '3', 'admin', '2017-09-06 11:37:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2652', '3', 'admin', '2017-09-06 11:44:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2653', '3', 'admin', '2017-09-06 15:39:33', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2654', '3', 'admin', '2017-09-06 15:44:27', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2655', '3', 'admin', '2017-09-06 15:46:53', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2656', '3', 'admin', '2017-09-06 15:47:14', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2657', '3', 'admin', '2017-09-06 15:50:13', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2658', '3', 'admin', '2017-09-06 15:51:26', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2659', '3', 'admin', '2017-09-06 15:53:28', '183.62.230.174');
INSERT INTO `ly_userlogin` VALUES ('2660', '3', 'admin', '2017-09-06 16:05:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2661', '3', 'admin', '2017-09-06 16:05:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2662', '3', 'admin', '2017-09-06 16:07:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2663', '3', 'admin', '2017-09-06 16:07:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2664', '3', 'admin', '2017-09-06 16:11:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2665', '3', 'admin', '2017-09-06 16:11:14', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2666', '3', 'admin', '2017-09-06 16:15:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2667', '3', 'admin', '2017-09-06 16:15:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2668', '3', 'admin', '2017-09-06 16:16:49', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2669', '3', 'admin', '2017-09-06 16:28:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2670', '3', 'admin', '2017-09-06 16:28:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2671', '3', 'admin', '2017-09-06 16:29:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2672', '3', 'admin', '2017-09-06 16:47:10', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2673', '3', 'admin', '2017-09-06 19:36:32', '14.220.122.34');
INSERT INTO `ly_userlogin` VALUES ('2674', '3', 'admin', '2017-09-06 19:55:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2675', '3', 'admin', '2017-09-06 19:59:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2676', '3', 'admin', '2017-09-06 20:37:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2677', '3', 'admin', '2017-09-06 20:38:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2678', '3', 'admin', '2017-09-07 09:02:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2679', '3', 'admin', '2017-09-07 09:21:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2680', '3', 'admin', '2017-09-07 09:22:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2681', '3', 'admin', '2017-09-07 09:33:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2682', '3', 'admin', '2017-09-07 09:38:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2683', '3', 'admin', '2017-09-07 10:00:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2684', '3', 'admin', '2017-09-07 10:36:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2685', '3', 'admin', '2017-09-07 11:11:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2686', '3', 'admin', '2017-09-07 11:12:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2687', '3', 'admin', '2017-09-07 11:15:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2688', '3', 'admin', '2017-09-07 11:30:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2689', '3', 'admin', '2017-09-07 11:33:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2690', '3', 'admin', '2017-09-07 16:02:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2691', '3', 'admin', '2017-09-07 16:21:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2692', '3', 'admin', '2017-09-07 17:57:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2693', '3', 'admin', '2017-09-07 17:57:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2694', '3', 'admin', '2017-09-07 18:59:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2695', '3', 'admin', '2017-09-07 19:22:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2696', '3', 'admin', '2017-09-07 19:39:22', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2697', '3', 'admin', '2017-09-07 19:49:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2698', '3', 'admin', '2017-09-07 19:58:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2699', '3', 'admin', '2017-09-07 20:10:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2700', '3', 'admin', '2017-09-07 20:55:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2701', '3', 'admin', '2017-09-07 21:22:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2702', '3', 'admin', '2017-09-08 08:33:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2703', '3', 'admin', '2017-09-08 08:38:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2704', '3', 'admin', '2017-09-08 11:28:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2705', '3', 'admin', '2017-09-08 12:02:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2706', '3', 'admin', '2017-09-08 13:43:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2707', '3', 'admin', '2017-09-08 14:36:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2708', '3', 'admin', '2017-09-08 14:39:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2709', '3', 'admin', '2017-09-08 15:26:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2710', '3', 'admin', '2017-09-08 15:29:20', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2711', '3', 'admin', '2017-09-08 16:17:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2712', '3', 'admin', '2017-09-08 16:20:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2713', '3', 'admin', '2017-09-08 17:34:05', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2714', '3', 'admin', '2017-09-08 18:15:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2715', '3', 'admin', '2017-09-08 18:20:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2716', '3', 'admin', '2017-09-08 18:23:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2717', '3', 'admin', '2017-09-08 18:27:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2718', '3', 'admin', '2017-09-08 18:28:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2719', '3', 'admin', '2017-09-08 18:34:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2720', '3', 'admin', '2017-09-08 19:15:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2721', '3', 'admin', '2017-09-08 19:16:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2722', '3', 'admin', '2017-09-08 19:19:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2723', '3', 'admin', '2017-09-08 20:26:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2724', '3', 'admin', '2017-09-09 09:24:19', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2725', '3', 'admin', '2017-09-09 10:56:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2726', '3', 'admin', '2017-09-09 11:04:35', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2727', '3', 'admin', '2017-09-09 11:07:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2728', '3', 'admin', '2017-09-09 12:16:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2729', '3', 'admin', '2017-09-09 13:46:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2730', '3', 'admin', '2017-09-09 15:34:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2731', '3', 'admin', '2017-09-09 15:59:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2732', '3', 'admin', '2017-09-09 16:00:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2733', '3', 'admin', '2017-09-09 16:02:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2734', '3', 'admin', '2017-09-09 19:07:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2735', '3', 'admin', '2017-09-09 23:37:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2736', '3', 'admin', '2017-09-10 18:41:31', '183.12.241.83');
INSERT INTO `ly_userlogin` VALUES ('2737', '3', 'admin', '2017-09-10 18:41:58', '183.12.241.83');
INSERT INTO `ly_userlogin` VALUES ('2738', '3', 'admin', '2017-09-11 09:18:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2739', '3', 'admin', '2017-09-11 11:09:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2740', '3', 'admin', '2017-09-11 11:26:56', '14.220.120.160');
INSERT INTO `ly_userlogin` VALUES ('2741', '3', 'admin', '2017-09-11 14:05:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2742', '3', 'admin', '2017-09-11 18:19:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2743', '3', 'admin', '2017-09-11 18:36:46', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2744', '3', 'admin', '2017-09-11 19:53:11', '192.168.1.100');
INSERT INTO `ly_userlogin` VALUES ('2745', '3', 'admin', '2017-09-11 19:54:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2746', '3', 'admin', '2017-09-11 21:04:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2747', '3', 'admin', '2017-09-11 21:24:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2748', '3', 'admin', '2017-09-11 21:36:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2749', '3', 'admin', '2017-09-11 23:21:38', '14.220.120.160');
INSERT INTO `ly_userlogin` VALUES ('2750', '3', 'admin', '2017-09-11 23:28:47', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2751', '3', 'admin', '2017-09-11 23:30:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2752', '3', 'admin', '2017-09-11 23:31:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2753', '3', 'admin', '2017-09-12 09:20:52', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2754', '3', 'admin', '2017-09-12 10:19:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2755', '3', 'admin', '2017-09-12 12:03:11', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2756', '3', 'admin', '2017-09-12 14:06:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2757', '3', 'admin', '2017-09-12 14:45:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2758', '3', 'admin', '2017-09-12 15:24:10', '192.168.1.105');
INSERT INTO `ly_userlogin` VALUES ('2759', '3', 'admin', '2017-09-12 16:50:48', '192.168.1.105');
INSERT INTO `ly_userlogin` VALUES ('2760', '3', 'admin', '2017-09-12 17:20:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2761', '3', 'admin', '2017-09-12 17:22:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2762', '3', 'admin', '2017-09-12 19:22:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2763', '3', 'admin', '2017-09-12 19:41:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2764', '3', 'admin', '2017-09-12 19:43:33', '192.168.1.105');
INSERT INTO `ly_userlogin` VALUES ('2765', '3', 'admin', '2017-09-12 19:44:20', '192.168.1.105');
INSERT INTO `ly_userlogin` VALUES ('2766', '3', 'admin', '2017-09-12 19:44:27', '192.168.1.105');
INSERT INTO `ly_userlogin` VALUES ('2767', '3', 'admin', '2017-09-12 19:44:44', '192.168.1.105');
INSERT INTO `ly_userlogin` VALUES ('2768', '3', 'admin', '2017-09-12 20:07:45', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2769', '3', 'admin', '2017-09-12 20:18:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2770', '3', 'admin', '2017-09-12 20:30:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2771', '3', 'admin', '2017-09-12 21:31:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2772', '3', 'admin', '2017-09-13 09:27:16', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2773', '3', 'admin', '2017-09-13 09:27:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2774', '3', 'admin', '2017-09-13 09:56:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2775', '3', 'admin', '2017-09-13 14:44:22', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2776', '3', 'admin', '2017-09-13 15:31:16', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2777', '3', 'admin', '2017-09-13 19:22:17', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2778', '3', 'admin', '2017-09-13 23:20:48', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2779', '3', 'admin', '2017-09-14 09:09:08', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2780', '3', 'admin', '2017-09-14 14:02:17', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2781', '3', 'admin', '2017-09-14 19:22:20', '14.220.120.6');
INSERT INTO `ly_userlogin` VALUES ('2782', '3', 'admin', '2017-09-15 09:30:42', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2783', '3', 'admin', '2017-09-15 10:05:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2784', '3', 'admin', '2017-09-15 10:15:39', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2785', '3', 'admin', '2017-09-15 14:08:34', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2786', '3', 'admin', '2017-09-15 14:09:02', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2787', '3', 'admin', '2017-09-15 17:15:19', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2788', '3', 'admin', '2017-09-15 17:16:13', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2789', '3', 'admin', '2017-09-15 17:29:54', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2790', '3', 'admin', '2017-09-15 19:09:55', '14.220.120.36');
INSERT INTO `ly_userlogin` VALUES ('2791', '3', 'admin', '2017-09-16 23:10:57', '117.136.79.127');
INSERT INTO `ly_userlogin` VALUES ('2792', '3', 'admin', '2017-09-16 23:11:15', '117.136.79.127');
INSERT INTO `ly_userlogin` VALUES ('2793', '3', 'admin', '2017-09-16 23:11:33', '117.136.79.127');
INSERT INTO `ly_userlogin` VALUES ('2794', '3', 'admin', '2017-09-16 23:15:10', '116.25.106.134');
INSERT INTO `ly_userlogin` VALUES ('2795', '3', 'admin', '2017-09-18 14:52:30', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2796', '3', 'admin', '2017-09-19 14:44:12', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2797', '3', 'admin', '2017-09-19 19:58:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2798', '3', 'admin', '2017-09-20 10:18:07', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2799', '3', 'admin', '2017-09-20 11:10:15', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2800', '3', 'admin', '2017-09-20 11:10:33', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2801', '3', 'admin', '2017-09-20 11:20:04', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2802', '3', 'admin', '2017-09-20 11:48:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2803', '3', 'admin', '2017-09-20 11:55:24', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2804', '3', 'admin', '2017-09-20 12:02:27', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2805', '3', 'admin', '2017-09-20 12:20:19', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2806', '3', 'admin', '2017-09-20 12:45:54', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2807', '3', 'admin', '2017-09-20 13:44:17', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2808', '3', 'admin', '2017-09-20 13:45:54', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2809', '3', 'admin', '2017-09-20 16:01:37', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2810', '3', 'admin', '2017-09-20 18:16:25', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2811', '3', 'admin', '2017-09-20 18:17:39', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2812', '3', 'admin', '2017-09-20 18:18:01', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2813', '3', 'admin', '2017-09-20 18:18:11', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2814', '3', 'admin', '2017-09-20 18:20:43', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2815', '3', 'admin', '2017-09-20 18:20:45', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2816', '3', 'admin', '2017-09-20 18:24:04', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2817', '3', 'admin', '2017-09-20 18:27:40', '14.220.123.109');
INSERT INTO `ly_userlogin` VALUES ('2818', '3', 'admin', '2017-09-20 21:08:34', '171.213.58.170');
INSERT INTO `ly_userlogin` VALUES ('2819', '3', 'admin', '2017-09-20 21:11:27', '171.213.58.170');
INSERT INTO `ly_userlogin` VALUES ('2820', '3', 'admin', '2017-09-20 21:23:23', '171.213.58.170');
INSERT INTO `ly_userlogin` VALUES ('2821', '3', 'admin', '2017-09-20 21:23:56', '171.213.58.170');
INSERT INTO `ly_userlogin` VALUES ('2822', '3', 'admin', '2017-09-21 09:31:11', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2823', '3', 'admin', '2017-09-21 09:35:31', '14.220.122.222');
INSERT INTO `ly_userlogin` VALUES ('2824', '3', 'admin', '2017-09-21 10:53:33', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2825', '3', 'admin', '2017-09-21 18:18:44', '14.220.122.222');
INSERT INTO `ly_userlogin` VALUES ('2826', '3', 'admin', '2017-09-22 00:06:44', '14.220.122.222');
INSERT INTO `ly_userlogin` VALUES ('2827', '3', 'admin', '2017-09-22 09:10:18', '14.220.122.222');
INSERT INTO `ly_userlogin` VALUES ('2828', '3', 'admin', '2017-09-22 09:12:07', '14.220.122.222');
INSERT INTO `ly_userlogin` VALUES ('2829', '3', 'admin', '2017-09-22 10:23:39', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2830', '3', 'admin', '2017-09-22 10:24:42', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2831', '3', 'admin', '2017-09-22 16:13:48', '171.212.114.51');
INSERT INTO `ly_userlogin` VALUES ('2832', '3', 'admin', '2017-09-25 09:12:49', '14.220.120.45');
INSERT INTO `ly_userlogin` VALUES ('2833', '3', 'admin', '2017-09-25 09:28:50', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2834', '3', 'admin', '2017-09-25 11:38:41', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2835', '3', 'admin', '2017-09-25 13:15:44', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2836', '3', 'admin', '2017-09-25 13:22:43', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2837', '3', 'admin', '2017-09-26 11:33:39', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2838', '3', 'admin', '2017-09-26 15:32:03', '14.220.120.45');
INSERT INTO `ly_userlogin` VALUES ('2839', '3', 'admin', '2017-09-27 14:57:49', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2840', '3', 'admin', '2017-09-28 10:32:46', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2841', '3', 'admin', '2017-09-28 18:04:19', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2842', '3', 'admin', '2017-09-29 10:24:11', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2843', '3', 'admin', '2017-09-30 10:21:43', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2844', '3', 'admin', '2017-09-30 11:25:48', '171.212.121.71');
INSERT INTO `ly_userlogin` VALUES ('2845', '3', 'admin', '2017-10-08 14:46:44', '171.212.113.182');
INSERT INTO `ly_userlogin` VALUES ('2846', '3', 'admin', '2017-10-09 15:40:31', '171.212.113.182');
INSERT INTO `ly_userlogin` VALUES ('2847', '3', 'admin', '2017-10-10 16:16:19', '183.62.230.175');
INSERT INTO `ly_userlogin` VALUES ('2848', '3', 'admin', '2017-10-11 16:09:46', '14.220.122.239');
INSERT INTO `ly_userlogin` VALUES ('2849', '3', 'admin', '2017-10-11 16:10:54', '171.212.113.182');
INSERT INTO `ly_userlogin` VALUES ('2850', '3', 'admin', '2017-10-11 16:41:39', '14.220.122.239');
INSERT INTO `ly_userlogin` VALUES ('2851', '3', 'admin', '2017-10-12 18:12:18', '14.220.122.239');
INSERT INTO `ly_userlogin` VALUES ('2852', '3', 'admin', '2017-10-13 15:16:29', '14.220.122.175');
INSERT INTO `ly_userlogin` VALUES ('2853', '3', 'admin', '2017-10-13 15:22:12', '14.220.122.175');
INSERT INTO `ly_userlogin` VALUES ('2854', '3', 'admin', '2017-10-14 16:21:31', '14.220.122.175');
INSERT INTO `ly_userlogin` VALUES ('2855', '3', 'admin', '2017-10-18 11:58:02', '14.220.120.249');
INSERT INTO `ly_userlogin` VALUES ('2856', '3', 'admin', '2017-10-18 11:58:12', '14.220.120.249');
INSERT INTO `ly_userlogin` VALUES ('2857', '3', 'admin', '2017-10-20 16:01:50', '14.220.120.108');
INSERT INTO `ly_userlogin` VALUES ('2858', '3', 'admin', '2017-10-21 10:17:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2859', '3', 'admin', '2017-12-22 12:54:23', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2860', '3', 'admin', '2017-12-22 12:54:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2861', '3', 'admin', '2017-12-22 13:07:13', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2862', '3', 'admin', '2017-12-22 13:34:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2863', '3', 'admin', '2017-12-22 13:36:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2864', '3', 'admin', '2017-12-22 13:36:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2865', '3', 'admin', '2017-12-22 13:36:33', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2866', '3', 'admin', '2017-12-22 13:36:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2867', '3', 'admin', '2018-10-24 19:44:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2868', '3', 'admin', '2018-10-24 22:32:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2869', '3', 'admin', '2018-10-24 22:32:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2870', '3', 'admin', '2018-10-24 22:44:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2871', '3', 'admin', '2018-10-24 23:48:06', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2872', '3', 'admin', '2018-10-24 23:51:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2873', '3', 'admin', '2018-10-24 23:53:41', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2874', '3', 'admin', '2018-10-24 23:58:19', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2875', '3', 'admin', '2018-10-25 00:00:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2876', '3', 'admin', '2018-10-25 00:06:32', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2877', '3', 'admin', '2018-10-25 00:13:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2878', '3', 'admin', '2018-10-25 00:22:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('2879', '3', 'admin', '2018-10-25 00:26:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('2880', '3', 'admin', '2018-10-25 13:57:58', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for ly_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_user_role`;
CREATE TABLE `ly_user_role` (
  `userId` bigint(63) NOT NULL,
  `roleId` bigint(63) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_user_role
-- ----------------------------
INSERT INTO `ly_user_role` VALUES ('3', '1');

-- ----------------------------
-- Table structure for ly_workcenter
-- ----------------------------
DROP TABLE IF EXISTS `ly_workcenter`;
CREATE TABLE `ly_workcenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workcenter_no` varchar(255) NOT NULL,
  `workcenter_name` varchar(255) NOT NULL,
  `workcenter_description` varchar(255) DEFAULT NULL,
  `site` varchar(255) NOT NULL,
  `byUser` varchar(255) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(1) NOT NULL,
  `workcenter_class` varchar(255) DEFAULT NULL COMMENT '工作中心层级（车间、生产线、工位）',
  `workcenter_type` varchar(255) DEFAULT NULL COMMENT '工作中心类型（装配、生产、调度、装运、转移）',
  `workcenter_version` varchar(255) DEFAULT '' COMMENT '版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_workcenter
-- ----------------------------
INSERT INTO `ly_workcenter` VALUES ('90', '1111', 'sukeyu', null, 'sukeyu', 'sukeyu', '2017-04-22 23:53:27', '1', 'workshop', 'assembly', 'B');
INSERT INTO `ly_workcenter` VALUES ('91', '111111', '11111', null, 'sukeyu', 'sukeyu', '2017-04-22 23:55:45', '1', 'workshop', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('92', '1111111', '111111', '1111111', 'sukeyu', 'sukeyu', '2017-04-23 00:03:33', '1', 'station', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('93', '2222', '2222', '2222', 'sukeyu', 'sukeyu', '2017-04-23 00:04:00', '1', 'production_line', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('100', 'PCB-2017051400', 'PCB-2017051400', 'PCB-2017051400', 'PCB-20170514', 'admin', '2017-05-14 22:10:10', '1', 'workshop', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('101', 'PCB-2017051401', 'PCB-2017051401', 'PCB-2017051401', 'PCB-20170514', 'admin', '2017-05-14 22:11:48', '1', 'production_line', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('103', 'gk89_workcenter', 'gk89生产车间', 'gk89生产车间', 'test', 'admin', '2017-08-31 09:56:09', '1', 'workshop', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('104', 'gb89_workline', 'gk89生产线', 'gk89车间下的某条产线', 'test', 'admin', '2017-08-31 09:56:45', '1', 'production_line', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('105', 'workcenter_gk89_Q_907', 'workcenter_gk89_Q_907', 'workcenter_gk89_Q_907', 'gk89', 'admin', '2017-09-02 10:56:26', '1', 'workshop', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('106', 'workline_gk89_E_73', 'workline_gk89_E_73', 'workline_gk89_E_73', 'gk89', 'admin', '2017-09-02 10:56:45', '1', 'production_line', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('107', 'XR_WORKCENTER_01', '鑫锐一号车间', '鑫锐一号车间', '*', 'admin', '2017-09-20 12:48:28', '1', 'workshop', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('108', 'XR_WORKLINE_01', '鑫锐一号SMT线', '鑫锐一号SMT线', '*', 'admin', '2017-09-20 12:49:37', '1', 'production_line', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('109', '122', '334', '3434', '*', 'admin', '2017-09-25 09:56:10', '1', 'station', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('110', '234567890-=', '232', '23', '11', 'admin', '2017-09-25 11:39:15', '1', 'workshop', 'assembly', 'A');
INSERT INTO `ly_workcenter` VALUES ('111', '123456789', '34567', null, '*', 'admin', '2017-09-25 14:36:46', '1', 'production_line', 'assembly', 'A');

-- ----------------------------
-- Table structure for ly_workcenter_relation
-- ----------------------------
DROP TABLE IF EXISTS `ly_workcenter_relation`;
CREATE TABLE `ly_workcenter_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workcenter` varchar(255) NOT NULL COMMENT '工作中心',
  `workcenter_child` varchar(255) NOT NULL COMMENT '子工作中心',
  `site` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_workcenter_relation
-- ----------------------------
INSERT INTO `ly_workcenter_relation` VALUES ('28', '1111', '1111111', 'sukeyu');
INSERT INTO `ly_workcenter_relation` VALUES ('29', '111111', '2222', 'sukeyu');
INSERT INTO `ly_workcenter_relation` VALUES ('30', 'w001', 'w002', '*');
INSERT INTO `ly_workcenter_relation` VALUES ('31', 'w01', 'wl01', '*');
INSERT INTO `ly_workcenter_relation` VALUES ('32', 'W1', 'L1', '*');
INSERT INTO `ly_workcenter_relation` VALUES ('33', 'PCB-2017051400', 'PCB-2017051401', 'PCB-20170514');
INSERT INTO `ly_workcenter_relation` VALUES ('34', 'gk89_workcenter', 'gb89_workline', 'test');
INSERT INTO `ly_workcenter_relation` VALUES ('35', 'workcenter_gk89_Q_907', 'workline_gk89_E_73', 'gk89');
INSERT INTO `ly_workcenter_relation` VALUES ('36', 'XR_WORKCENTER_01', 'XR_WORKLINE_01', '*');

-- ----------------------------
-- Table structure for ly_workshop_inventory
-- ----------------------------
DROP TABLE IF EXISTS `ly_workshop_inventory`;
CREATE TABLE `ly_workshop_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL COMMENT '物料编号',
  `item_sfc` varchar(255) NOT NULL COMMENT '物料的SFC',
  `batch` varchar(255) DEFAULT NULL COMMENT '物料批次',
  `receive` int(11) NOT NULL COMMENT '接收数量',
  `by_user` varchar(255) NOT NULL COMMENT '创建人',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_workshop_inventory
-- ----------------------------
INSERT INTO `ly_workshop_inventory` VALUES ('115', 'item_gk89_xigao', 'sfc201708310001', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('116', 'item_gk89_xigao', 'sfc201708310002', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('117', 'item_gk89_xigao', 'sfc201708310003', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('118', 'item_gk89_xigao', 'sfc201708310004', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('119', 'item_gk89_xigao', 'sfc201708310005', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('120', 'item_gk89_xigao', 'sfc201708310006', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('121', 'item_gk89_xigao', 'sfc201708310007', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('122', 'item_gk89_xigao', 'sfc201708310008', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('123', 'item_gk89_xigao', 'sfc201708310009', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('124', 'item_gk89_xigao', 'sfc201708310010', null, '1', 'admin', 'test', '2017-08-31 10:09:33');
INSERT INTO `ly_workshop_inventory` VALUES ('125', 'item_gk89_xigao2', 'sfc201708310001', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('126', 'item_gk89_xigao2', 'sfc201708310002', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('127', 'item_gk89_xigao2', 'sfc201708310003', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('128', 'item_gk89_xigao2', 'sfc201708310004', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('129', 'item_gk89_xigao2', 'sfc201708310005', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('130', 'item_gk89_xigao2', 'sfc201708310006', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('131', 'item_gk89_xigao2', 'sfc20170831000', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('132', 'item_gk89_xigao2', 'sfc201708310008', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('133', 'item_gk89_xigao2', 'sfc201708310009', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('134', 'item_gk89_xigao2', 'sfc2017083100010', null, '1', 'admin', 'test', '2017-08-31 10:10:29');
INSERT INTO `ly_workshop_inventory` VALUES ('135', 'item_gk89_gongtong', 'sfc201708310001', null, '1', 'admin', 'test', '2017-08-31 10:10:49');
INSERT INTO `ly_workshop_inventory` VALUES ('136', 'item_gk89_wsfd', 'sfc201708310001', null, '1', 'admin', 'test', '2017-08-31 10:11:08');
INSERT INTO `ly_workshop_inventory` VALUES ('137', 'item_gk89_wsfd', 'sfc20170831000', null, '1', 'admin', 'test', '2017-08-31 10:11:08');
INSERT INTO `ly_workshop_inventory` VALUES ('138', 'item_gk89_wsfd', 'sfc20170831002', null, '1', 'admin', 'test', '2017-08-31 10:11:08');
INSERT INTO `ly_workshop_inventory` VALUES ('139', 'item_gk89_wsfd', 'sfc20170831003', null, '1', 'admin', 'test', '2017-08-31 10:11:08');
INSERT INTO `ly_workshop_inventory` VALUES ('140', 'item_gk89_f23', 'sfc201708310001', null, '1', 'admin', 'test', '2017-08-31 10:11:23');
INSERT INTO `ly_workshop_inventory` VALUES ('141', 'item_gk89_f23', 'sfc201708310002', null, '1', 'admin', 'test', '2017-08-31 10:11:23');
INSERT INTO `ly_workshop_inventory` VALUES ('142', 'item_gk89_f23', 'sfc201708310003', null, '1', 'admin', 'test', '2017-08-31 10:11:23');
INSERT INTO `ly_workshop_inventory` VALUES ('143', 'item_gk89', 'sfc201708310001', null, '1', 'admin', 'test', '2017-08-31 10:11:35');
INSERT INTO `ly_workshop_inventory` VALUES ('144', 'item_gk89', 'sfc201708310002', null, '1', 'admin', 'test', '2017-08-31 10:11:35');
INSERT INTO `ly_workshop_inventory` VALUES ('145', 'item_gk89', 'sfc20170831000', null, '1', 'admin', 'test', '2017-08-31 10:11:35');
INSERT INTO `ly_workshop_inventory` VALUES ('146', 'item_gk89', 'sfc201708310004', null, '1', 'admin', 'test', '2017-08-31 10:11:35');
INSERT INTO `ly_workshop_inventory` VALUES ('147', 'item_gk89_xigao2', 'item_gk89_xigao24564564566', 'item_batch_20170901', '1', 'admin', 'test', '2017-09-01 14:19:38');
INSERT INTO `ly_workshop_inventory` VALUES ('148', 'item_gk89_I_396', 'sfc_gk89_178332C', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:36:46');
INSERT INTO `ly_workshop_inventory` VALUES ('149', 'item_gk89_I_396', 'sfc_gk89_538817P', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:36:46');
INSERT INTO `ly_workshop_inventory` VALUES ('150', 'item_gk89_I_396', 'sfc_gk89_120823A', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:36:46');
INSERT INTO `ly_workshop_inventory` VALUES ('151', 'item_gk89_I_396', 'sfc_gk89_416991R', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:36:46');
INSERT INTO `ly_workshop_inventory` VALUES ('152', 'item_gk89_I_396', 'sfc_gk89_777435J', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:36:46');
INSERT INTO `ly_workshop_inventory` VALUES ('153', 'item_gk89_I_396', 'sfc_gk89_532578W', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:36:46');
INSERT INTO `ly_workshop_inventory` VALUES ('154', 'item_gk89_D_387', 'sfc_gk89_885594A', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:37:58');
INSERT INTO `ly_workshop_inventory` VALUES ('155', 'item_gk89_D_387', 'sfc_gk89_162428C', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:37:58');
INSERT INTO `ly_workshop_inventory` VALUES ('156', 'item_gk89_D_387', 'sfc_gk89_185066B', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:37:58');
INSERT INTO `ly_workshop_inventory` VALUES ('157', 'item_gk89_D_387', 'sfc_gk89_937980B', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:37:58');
INSERT INTO `ly_workshop_inventory` VALUES ('158', 'item_gk89_J_90', 'sfc_gk89_26504T', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:38:44');
INSERT INTO `ly_workshop_inventory` VALUES ('159', 'item_gk89_J_90', 'sfc_gk89_959942Z', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:38:44');
INSERT INTO `ly_workshop_inventory` VALUES ('160', 'item_gk89_J_90', 'sfc_gk89_892075E', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:38:44');
INSERT INTO `ly_workshop_inventory` VALUES ('161', 'item_gk89_J_90', 'sfc_gk89_428547H', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:38:44');
INSERT INTO `ly_workshop_inventory` VALUES ('162', 'item_gk89_J_90', 'sfc_gk89_40963N', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:38:44');
INSERT INTO `ly_workshop_inventory` VALUES ('163', 'item_gk89_D_387', 'sfc_gk89_554369N', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:42:41');
INSERT INTO `ly_workshop_inventory` VALUES ('164', 'item_gk89_D_387', 'sfc_gk89_332633I', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:42:41');
INSERT INTO `ly_workshop_inventory` VALUES ('165', 'item_gk89_D_387', 'sfc_gk89_769679F', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:42:41');
INSERT INTO `ly_workshop_inventory` VALUES ('166', 'item_gk89_D_387', 'sfc_gk89_833124V', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:42:41');
INSERT INTO `ly_workshop_inventory` VALUES ('167', 'item_gk89_I_396', 'sfc_gk89_768401J', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:45:04');
INSERT INTO `ly_workshop_inventory` VALUES ('168', 'item_gk89_I_396', 'sfc_gk89_240858C', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:45:04');
INSERT INTO `ly_workshop_inventory` VALUES ('169', 'item_gk89_I_396', 'sfc_gk89_629923C', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:45:04');
INSERT INTO `ly_workshop_inventory` VALUES ('170', 'item_gk89_I_396', 'sfc_gk89_747970B', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:45:04');
INSERT INTO `ly_workshop_inventory` VALUES ('171', 'item_gk89_J_90', 'sfc_gk89_520253R', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('172', 'item_gk89_J_90', 'sfc_gk89_752509T', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('173', 'item_gk89_J_90', 'sfc_gk89_940952G', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('174', 'item_gk89_J_90', 'sfc_gk89_51333M', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('175', 'item_gk89_J_90', 'sfc_gk89_567323A', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('176', 'item_gk89_J_90', 'sfc_gk89_290933M', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('177', 'item_gk89_J_90', 'sfc_gk89_249557Z', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 11:47:55');
INSERT INTO `ly_workshop_inventory` VALUES ('178', 'item_gk89_D_387', 'sfc_gk89_203515L', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 22:45:24');
INSERT INTO `ly_workshop_inventory` VALUES ('179', 'item_gk89_I_396', 'sfc_gk89_484168W', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 23:19:31');
INSERT INTO `ly_workshop_inventory` VALUES ('180', 'item_gk89_I_396', 'sfc_gk89_858043X', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 23:19:31');
INSERT INTO `ly_workshop_inventory` VALUES ('181', 'item_gk89_D_387', 'sfc_gk89_831618N', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 23:19:49');
INSERT INTO `ly_workshop_inventory` VALUES ('182', 'item_gk89_D_387', 'sfc_gk89_831618N', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 23:20:06');
INSERT INTO `ly_workshop_inventory` VALUES ('183', 'item_gk89_J_90', 'sfc_gk89_3136V', 'item_batch_20170902', '1', 'admin', 'gk89', '2017-09-02 23:20:06');
INSERT INTO `ly_workshop_inventory` VALUES ('184', 'XR_ITEM_XG', 'XR_ITEM_XG201709030001', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('185', 'XR_ITEM_XG', 'XR_ITEM_XG201709030002', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('186', 'XR_ITEM_XG', 'XR_ITEM_XG201709030003', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('187', 'XR_ITEM_XG', 'XR_ITEM_XG201709030004', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('188', 'XR_ITEM_XG', 'XR_ITEM_XG201709030005', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('189', 'XR_ITEM_XG', 'XR_ITEM_XG201709030008', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('190', 'XR_ITEM_XG', 'XR_ITEM_XG201709030006', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:25:29');
INSERT INTO `ly_workshop_inventory` VALUES ('193', 'XR_ITEM_LTPCB001', 'XR_ITEM_LTPCB201709030001', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:06');
INSERT INTO `ly_workshop_inventory` VALUES ('194', 'XR_ITEM_LTPCB001', 'XR_ITEM_LTPCB201709030002', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:06');
INSERT INTO `ly_workshop_inventory` VALUES ('198', 'XR_ITEM_LTPCB001', 'XR_ITEM_LTPCB201709030006', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:06');
INSERT INTO `ly_workshop_inventory` VALUES ('199', 'XR_ITEM_R82PZ', 'XR_ITEM_R82PZ0001', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:44');
INSERT INTO `ly_workshop_inventory` VALUES ('200', 'XR_ITEM_R82PZ', 'XR_ITEM_R82PZ0002', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:44');
INSERT INTO `ly_workshop_inventory` VALUES ('201', 'XR_ITEM_R82PZ', 'XR_ITEM_R82PZ0003', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:44');
INSERT INTO `ly_workshop_inventory` VALUES ('202', 'XR_ITEM_R82PZ', 'XR_ITEM_R82PZ0004', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:44');
INSERT INTO `ly_workshop_inventory` VALUES ('203', 'XR_ITEM_R82PZ', 'XR_ITEM_R82PZ0005', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:26:44');
INSERT INTO `ly_workshop_inventory` VALUES ('204', 'XR_DM_SWGGS2F-Y', 'XR_DM_SWGGS2F-Y201709030001', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:27:18');
INSERT INTO `ly_workshop_inventory` VALUES ('205', 'XR_DM_SWGGS2F-Y', 'XR_DM_SWGGS2F-Y201709030002', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:27:18');
INSERT INTO `ly_workshop_inventory` VALUES ('206', 'XR_DM_SWGGS2F-Y', 'XR_DM_SWGGS2F-Y201709030003', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:27:18');
INSERT INTO `ly_workshop_inventory` VALUES ('207', 'XR_DM_SWGGS2F-Y', 'XR_DM_SWGGS2F-Y201709030004', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:27:18');
INSERT INTO `ly_workshop_inventory` VALUES ('208', 'XR_DM_SWGGS2F-Y', 'XR_DM_SWGGS2F-Y201709030005', 'item_batch_20170920', '1', 'admin', '*', '2017-09-20 13:27:18');
