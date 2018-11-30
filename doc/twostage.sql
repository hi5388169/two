/*
Navicat MySQL Data Transfer

Source Server         : mydatebase
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : twostage

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-11-30 19:46:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for main
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `floor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main
-- ----------------------------
INSERT INTO `main` VALUES ('1', '../img/l1-1.jpg', '../img/nike.jpg', '1');
INSERT INTO `main` VALUES ('2', '../img/l1-2.jpg', '../img/adi.jpg', '1');
INSERT INTO `main` VALUES ('3', '../img/l1-3.jpg', '../img/syc.jpg', '1');
INSERT INTO `main` VALUES ('4', '../img/l1-4.jpg', '../img/neo.jpg', '1');
INSERT INTO `main` VALUES ('5', '../img/l1-5.jpg', '../img/B.png', '1');
INSERT INTO `main` VALUES ('6', '../img/l1-6.jpg', '../img/puma.jpg', '1');
INSERT INTO `main` VALUES ('12', '../img/l2-1.jpg', '../img/neo.jpg', '2');
INSERT INTO `main` VALUES ('11', '../img/l2-2-1.jpg', '../img/syc.jpg', '2');
INSERT INTO `main` VALUES ('10', '../img/l2-3.jpg', '../img/adi.jpg', '2');
INSERT INTO `main` VALUES ('9', '../img/l2-4.jpg', '../img/nike.jpg', '2');
INSERT INTO `main` VALUES ('7', null, '../img/vans.jpg', '1');
INSERT INTO `main` VALUES ('8', null, '../img/dc.png', '1');
INSERT INTO `main` VALUES ('13', '../img/l2-5.jpg', '../img/B.png', '2');
INSERT INTO `main` VALUES ('14', '../img/l2-6.jpg', '../img/puma.jpg', '2');
INSERT INTO `main` VALUES ('15', null, '../img/vans.jpg', '2');
INSERT INTO `main` VALUES ('16', null, '../img/dc.png', '2');
INSERT INTO `main` VALUES ('17', '../img/f3-1.jpg', '../img/nike.jpg', '3');
INSERT INTO `main` VALUES ('18', '../img/f3-2.jpg', '../img/adi.jpg', '3');
INSERT INTO `main` VALUES ('19', '../img/f3-3.jpg', '../img/syc.jpg', '3');
INSERT INTO `main` VALUES ('20', '../img/f3-4.jpg', '../img/neo.jpg', '3');
INSERT INTO `main` VALUES ('21', '../img/f3-5.jpg', '../img/B.png', '3');
INSERT INTO `main` VALUES ('22', '../img/f3-6.jpg', '../img/puma.jpg', '3');
INSERT INTO `main` VALUES ('23', null, '../img/vans.jpg', '3');
INSERT INTO `main` VALUES ('24', null, '../img/dc.png', '3');
INSERT INTO `main` VALUES ('25', '../img/f4-1.jpg', '../img/nike.jpg', '4');
INSERT INTO `main` VALUES ('26', '../img/f4-2.jpg', '../img/adi.jpg', '4');
INSERT INTO `main` VALUES ('27', '../img/f4-3.jpg', '../img/syc.jpg', '4');
INSERT INTO `main` VALUES ('28', '../img/f4-4.jpg', '../img/neo.jpg', '4');
INSERT INTO `main` VALUES ('29', '../img/f4-5.jpg', '../img/B.png', '4');
INSERT INTO `main` VALUES ('30', '../img/f4-6.jpg', '../img/puma.jpg', '4');
INSERT INTO `main` VALUES ('31', null, '../img/vans.jpg', '4');
INSERT INTO `main` VALUES ('32', null, '../img/dc.png', '4');
INSERT INTO `main` VALUES ('33', '../img/f5-1.jpg', '../img/nike.jpg', '5');
INSERT INTO `main` VALUES ('34', '../img/f5-2.jpg', '../img/adi.jpg', '5');
INSERT INTO `main` VALUES ('35', '../img/f5-3.jpg', '../img/syc.jpg', '5');
INSERT INTO `main` VALUES ('36', '../img/f5-4.jpg', '../img/neo.jpg', '5');
INSERT INTO `main` VALUES ('37', '../img/f5-5.jpg', '../img/B.png', '5');
INSERT INTO `main` VALUES ('38', '../img/f5-6.jpg', '../img/puma.jpg', '5');
INSERT INTO `main` VALUES ('39', null, '../img/vans.jpg', '5');
INSERT INTO `main` VALUES ('40', null, '../img/dc.png', '5');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `goodstitle` varchar(255) NOT NULL,
  `goodstotal` varchar(255) NOT NULL,
  `goodsnum` varchar(255) NOT NULL,
  `goodsid` varchar(255) NOT NULL,
  `goodsprice` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('73', '18270815311', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '269', '1', '107', '269.00', '../img/img5-1.jpg');
INSERT INTO `orderlist` VALUES ('74', '18270815396', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '894', '6', '27', '149.00', '../img/img3-1.jpg');
INSERT INTO `orderlist` VALUES ('71', '18270815311', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '387', '3', '157', '129.00', '../img/img1-1.jpg');
INSERT INTO `orderlist` VALUES ('80', '18270815396', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '398', '2', '8', '199.00', '../img/img2-1.jpg');
INSERT INTO `orderlist` VALUES ('79', '18270815300', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '269', '1', '17', '269.00', '../img/img5-1.jpg');
INSERT INTO `orderlist` VALUES ('76', '18270815396', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '269', '1', '17', '269.00', '../img/img5-1.jpg');
INSERT INTO `orderlist` VALUES ('78', '18270815396', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '129', '1', '19', '129.00', '../img/img1-1.jpg');
INSERT INTO `orderlist` VALUES ('81', '18270815301', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '1345', '5', '11', '269.00', '../img/img5-1.jpg');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `title1` varchar(255) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `img6` varchar(255) DEFAULT NULL,
  `img7` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `footage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('2', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('3', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('4', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('5', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('6', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('7', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('8', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('9', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('10', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('11', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('12', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('13', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('14', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('15', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('16', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('17', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('18', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('19', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('20', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('21', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('22', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('23', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('24', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('25', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('26', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('27', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('28', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('29', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('30', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('31', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('32', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('33', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('34', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('35', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('36', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('37', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('38', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('39', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('40', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('41', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('42', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('43', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('44', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('45', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('46', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('47', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('48', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('49', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('50', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('51', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('52', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('53', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('54', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('55', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('56', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('57', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('58', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('59', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('60', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('61', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('62', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('63', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('64', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('65', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('66', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('67', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('68', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('69', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('70', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('71', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('72', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('73', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('74', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('75', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('76', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('77', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('78', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('79', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('80', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('81', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('82', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('83', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('84', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('85', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('86', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('87', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('88', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('89', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('90', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('91', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('92', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('93', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('94', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('95', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('96', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('97', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('98', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('99', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('100', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('101', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('102', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('103', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('104', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('105', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('106', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('107', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('108', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('109', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('110', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('111', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('112', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('113', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('114', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('115', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('116', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('117', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('118', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('119', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('120', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('121', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('122', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('123', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('124', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('125', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('126', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('127', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('128', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('129', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('130', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('131', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('132', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('133', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('134', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('135', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('136', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('137', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('138', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('139', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('140', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('141', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('142', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('143', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('144', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('145', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('146', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('147', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('148', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('149', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('150', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('151', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('152', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('153', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('154', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('155', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('156', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('157', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('158', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('159', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('160', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('161', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('162', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('163', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('164', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('165', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('166', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('167', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('168', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('169', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('170', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('171', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('172', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('173', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('174', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('175', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('176', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('177', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('178', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('179', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('180', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');
INSERT INTO `product` VALUES ('181', 'LINING李宁 休闲鞋 男 藏黑蓝+新基础黑', '李宁休闲鞋男鞋新活力系列Easy City轻便半掌气垫夏季运动鞋GLAL007', '../img/img1-1.jpg', '../img/img1-2.jpg', '../img/img1-3.jpg', '../img/img1-4.jpg', '../img/img1-5.jpg', '../img/img1-6.jpg', '../img/img1-7.jpg', '￥129.00', '尺码:43');
INSERT INTO `product` VALUES ('182', '帆布鞋 中性 黑色', 'DCSHOECOUSA新款运动鞋一脚蹬TRASE SLIP ON休闲帆布滑板ADYS300184-WHT', '../img/img2-1.jpg', '../img/img2-2.jpg', '../img/img2-3.jpg', '../img/img2-4.jpg', '../img/img2-5.jpg', '../img/img2-6.jpg', '../img/img2-7.jpg', '￥199.00', '尺码:36');
INSERT INTO `product` VALUES ('183', 'adidas阿迪达斯 休闲鞋 男 骑士绿+一号黑+霓虹橙', 'adidas阿迪达斯童休闲男小童4-10岁低帮魔术贴凉鞋AF3877', '../img/img3-1.jpg', '../img/img3-2.jpg', '../img/img3-3.jpg', '../img/img3-4.jpg', '../img/img3-5.jpg', null, null, '￥149.00', '尺码:34');
INSERT INTO `product` VALUES ('184', 'neo阿迪达斯 休闲鞋 男 学院藏青蓝+亮白+太阳能蓝', 'adidas阿迪达斯NEO运动生活男鞋运动鞋休闲鞋F98959', '../img/img4-1.jpg', '../img/img4-2.jpg', '../img/img4-3.jpg', '../img/img4-4.jpg', '../img/img4-5.jpg', '../img/img4-6.jpg', '../img/img4-7.jpg', '￥229.00', '尺码:43');
INSERT INTO `product` VALUES ('185', 'ASICS亚瑟士 休闲鞋 中性 黑色+蓝色', '亚瑟士ASICS童休闲鞋运动鞋运动鞋C6D3N-9045', '../img/img5-1.jpg', '../img/img5-2.jpg', '../img/img5-3.jpg', '../img/img5-4.jpg', '../img/img5-5.jpg', '../img/img5-6.jpg', '../img/img5-7.jpg', '￥269.00', '尺码:19.5');
INSERT INTO `product` VALUES ('186', 'adidas阿迪达斯 休闲鞋 男 白+亮黄荧光+一号黑', '阿迪达斯adidas童鞋男婴童0-4岁秋冬款毛毛虫小海马童鞋儿童跑步鞋AQ2778', '../img/img6-1.jpg', '../img/img6-2.jpg', '../img/img6-3.jpg', '../img/img6-4.jpg', '../img/img6-5.jpg', '../img/img6-6.jpg', '../img/img6-7.jpg', '￥169.00', '尺码:23');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18270815396', '1234');
INSERT INTO `user` VALUES ('2', '18921532167', '1234');
INSERT INTO `user` VALUES ('3', '18921532166', '1234');
INSERT INTO `user` VALUES ('4', '18270815399', '1234');
INSERT INTO `user` VALUES ('5', '18270815391', '1234');
INSERT INTO `user` VALUES ('6', '18270815392', '1234');
INSERT INTO `user` VALUES ('7', '18270815393', '1234');
INSERT INTO `user` VALUES ('8', '18270815398', '1234');
INSERT INTO `user` VALUES ('9', '18270815311', '1234');
INSERT INTO `user` VALUES ('10', '18270815312', '1234');
INSERT INTO `user` VALUES ('11', '18270815313', '1234');
INSERT INTO `user` VALUES ('12', '18270815314', '1234');
INSERT INTO `user` VALUES ('13', '18270815315', '1234');
INSERT INTO `user` VALUES ('14', '18270815316', '1234');
INSERT INTO `user` VALUES ('15', '18210815317', '1234');
INSERT INTO `user` VALUES ('16', '18270815318', '1234');
INSERT INTO `user` VALUES ('17', '18270815319', '1234');
INSERT INTO `user` VALUES ('18', '18270815310', '1234');
INSERT INTO `user` VALUES ('19', '18270815390', '1234');
INSERT INTO `user` VALUES ('20', '18270815322', 'qwer');
INSERT INTO `user` VALUES ('21', '18270815323', 'qwer');
INSERT INTO `user` VALUES ('22', '18270815324', '1234');
INSERT INTO `user` VALUES ('23', '18270815328', '1234');
INSERT INTO `user` VALUES ('24', '18270815326', '1234');
INSERT INTO `user` VALUES ('25', '18270815331', '1234');
INSERT INTO `user` VALUES ('26', '18270815320', '1234');
INSERT INTO `user` VALUES ('27', '18270815300', '1234');
INSERT INTO `user` VALUES ('28', '18270815301', '1234');
SET FOREIGN_KEY_CHECKS=1;
