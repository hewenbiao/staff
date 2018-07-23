/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.26-log : Database - b2b2c
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`b2b2c` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `b2b2c`;

/*Table structure for table `back_user` */

DROP TABLE IF EXISTS `back_user`;

CREATE TABLE `back_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `backUserName` varchar(50) DEFAULT NULL COMMENT '后台用户名称',
  `roleId` int(11) DEFAULT NULL COMMENT '角色主键',
  `backPassWord` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `back_user` */

insert  into `back_user`(`id`,`backUserName`,`roleId`,`backPassWord`) values (1,'youhu',1,'123456');

/*Table structure for table `delivery_time` */

DROP TABLE IF EXISTS `delivery_time`;

CREATE TABLE `delivery_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `timeName` varchar(255) DEFAULT NULL COMMENT '配送时间名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `delivery_time` */

insert  into `delivery_time`(`id`,`timeName`) values (1,'仅工作日送货'),(2,'仅周末送货'),(3,'工作日/周末/假日均可');

/*Table structure for table `discount_coupon` */

DROP TABLE IF EXISTS `discount_coupon`;

CREATE TABLE `discount_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `money` float(9,2) DEFAULT NULL COMMENT '优惠金额',
  `issue` varchar(50) DEFAULT NULL COMMENT '发行店铺',
  `use` float(9,2) DEFAULT NULL COMMENT '满足金额',
  `validTime` datetime DEFAULT NULL COMMENT '有效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `discount_coupon` */

insert  into `discount_coupon`(`id`,`money`,`issue`,`use`,`validTime`) values (1,10.00,'自营商',80.00,'2018-10-01 21:58:25'),(2,20.00,'自营商',150.00,'2018-11-01 21:59:05'),(3,30.00,'自营商',200.00,'2019-01-01 21:59:27');

/*Table structure for table `discount_coupon_state` */

DROP TABLE IF EXISTS `discount_coupon_state`;

CREATE TABLE `discount_coupon_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `stateName` varchar(20) DEFAULT NULL COMMENT '优惠券状态名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `discount_coupon_state` */

insert  into `discount_coupon_state`(`id`,`stateName`) values (1,'未使用'),(2,'已过期'),(3,'已使用');

/*Table structure for table `distribution_way` */

DROP TABLE IF EXISTS `distribution_way`;

CREATE TABLE `distribution_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dbtName` varchar(50) DEFAULT NULL COMMENT '配送方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `distribution_way` */

insert  into `distribution_way`(`id`,`dbtName`) values (1,'普通快递'),(2,'顺丰快递'),(3,'圆通快递');

/*Table structure for table `invoice_content` */

DROP TABLE IF EXISTS `invoice_content`;

CREATE TABLE `invoice_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(200) DEFAULT NULL COMMENT '发票内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `invoice_content` */

insert  into `invoice_content`(`id`,`content`) values (1,'明细'),(2,'办公用品'),(3,'电脑配件'),(4,'耗材'),(5,'其他');

/*Table structure for table `invoice_type` */

DROP TABLE IF EXISTS `invoice_type`;

CREATE TABLE `invoice_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `invoiceType` varchar(50) DEFAULT NULL COMMENT '发票类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `invoice_type` */

insert  into `invoice_type`(`id`,`invoiceType`) values (1,'普通发票[1%]'),(2,'增值税发票[1.5%]');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `userAddressId` int(11) DEFAULT NULL COMMENT '用户地址主键',
  `createTime` datetime DEFAULT NULL COMMENT '下单时间',
  `cost` float(9,2) DEFAULT NULL COMMENT '订单总金额',
  `serialNumber` varchar(200) DEFAULT NULL COMMENT '订单号',
  `deliveryTimeId` int(11) DEFAULT NULL COMMENT '配送时间主键',
  `paymentStatusId` int(11) DEFAULT NULL COMMENT '付款状态主键',
  `paymentWayId` int(11) DEFAULT NULL COMMENT '支付方式主键',
  `distributionWayId` int(11) DEFAULT NULL COMMENT '配送方式主键',
  `userTiscountCouponId` int(11) DEFAULT NULL COMMENT '优惠券主键',
  `invoiceTypeId` int(11) DEFAULT NULL COMMENT '发票类型主键',
  `invoiceContentId` int(11) DEFAULT NULL COMMENT '发票内容主键',
  `leaveWord` varchar(200) DEFAULT NULL COMMENT '留言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`userId`,`userAddressId`,`createTime`,`cost`,`serialNumber`,`deliveryTimeId`,`paymentStatusId`,`paymentWayId`,`distributionWayId`,`userTiscountCouponId`,`invoiceTypeId`,`invoiceContentId`,`leaveWord`) values (1,1,2,'2018-07-12 11:59:50',5210.00,'64336CEA93C94FC3A7FD00D07E79FF0F',2,1,2,1,2,2,2,'好处'),(2,1,1,'2018-07-12 23:13:15',9854.00,'D7F9064ACD8F443CA7DEA0AC743695C8',2,1,2,1,1,1,1,'我要优惠'),(3,1,2,'2018-07-13 17:24:32',2230.00,'5337172976184CDF910469E66075D3E7',1,1,2,1,0,0,0,''),(4,1,2,'2018-07-13 18:01:13',2383.00,'1D5A354F5B9C4BC2B6139A89D24B4782',2,1,1,1,0,0,0,''),(5,1,1,'2018-07-14 18:46:15',6073.00,'895104E992D245008E6227B437FB1E09',1,2,1,1,0,1,5,''),(6,1,1,'2018-07-14 19:31:13',184.00,'AF7CD10E25374D0F9CFCCFC232F5F0E1',3,1,1,1,0,0,0,''),(7,1,1,'2018-07-14 19:34:16',264.00,'2C6A02DF1F17462695CA285B58732D79',3,1,1,1,0,0,0,''),(8,1,1,'2018-07-14 20:14:30',244.00,'0858C1AAFA4F480BA10EF8FFAC19AB9F',3,1,1,1,0,0,0,''),(9,1,1,'2018-07-14 20:37:11',503.00,'C8C56C8A06EA4B9F8DFD895BA82D61AE',3,1,1,1,0,0,0,''),(10,1,1,'2018-07-14 20:39:47',3230.00,'23E0123A87DB4ECAAEDA2B045C86FF20',3,1,1,1,0,0,0,''),(11,1,1,'2018-07-14 20:44:54',3230.00,'EF6CE9818586443CBA383D44FD744918',3,2,1,1,0,0,0,''),(12,1,2,'2018-07-15 14:30:54',4873.00,'126185CBC9D8487DBC63B0F728D2771F',2,1,2,1,0,0,0,''),(13,1,2,'2018-07-16 19:06:59',3230.00,'889D425D6C904AA9B0E641E3AE9444EB',2,2,1,1,0,0,0,''),(14,2,4,'2018-07-17 15:43:16',3822.00,'C0719F0694D14EA2A7612C79B8A386B7',2,1,1,1,0,0,0,''),(15,2,4,'2018-07-17 15:45:15',3822.00,'CA9B17B888AE4FFCB67A1FEF636629FB',2,1,1,1,0,0,0,''),(16,2,4,'2018-07-17 16:04:06',551.00,'917E21538B4D424CA11B71CB528ED5F9',2,2,1,1,0,0,0,''),(17,2,4,'2018-07-17 16:08:23',353.00,'5CD890CBED634FADAD3ED1AB84BF810D',1,2,2,1,0,0,0,''),(18,2,4,'2018-07-20 13:47:14',543.00,'E3F4BE00F92340A4A2B05DAAAAE713DB',2,1,2,1,0,0,0,'');

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderId` int(11) DEFAULT NULL COMMENT '订单主键',
  `productId` int(11) DEFAULT NULL COMMENT '产品主键',
  `quantity` int(11) DEFAULT NULL COMMENT '产品数量',
  `cost` float(9,1) DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

insert  into `order_detail`(`id`,`orderId`,`productId`,`quantity`,`cost`) values (1,2,736,1,9699.0),(2,2,794,1,180.0),(3,3,716,1,2245.0),(4,4,740,1,2398.0),(5,5,739,1,6088.0),(6,6,768,1,199.0),(7,7,769,1,279.0),(8,8,774,1,259.0),(9,9,774,2,518.0),(10,10,714,1,3245.0),(11,11,714,1,3245.0),(12,12,741,1,4888.0),(13,13,715,1,3245.0),(14,14,735,1,3837.0),(15,15,735,1,3837.0),(16,16,770,1,368.0),(17,16,771,1,198.0),(18,17,770,1,368.0),(19,18,773,1,299.0),(20,18,774,1,259.0);

/*Table structure for table `payment_status` */

DROP TABLE IF EXISTS `payment_status`;

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `statusName` varchar(50) DEFAULT NULL COMMENT '付款状态名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `payment_status` */

insert  into `payment_status`(`id`,`statusName`) values (1,'未付款'),(2,'已付款');

/*Table structure for table `payment_way` */

DROP TABLE IF EXISTS `payment_way`;

CREATE TABLE `payment_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wayName` varchar(50) DEFAULT NULL COMMENT '支付方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `payment_way` */

insert  into `payment_way`(`id`,`wayName`) values (1,'支付宝'),(2,'货到付款');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `description` varchar(255) DEFAULT NULL COMMENT '产品描述',
  `price` float(9,1) DEFAULT NULL COMMENT '价格',
  `bazaarPrice` float(9,1) DEFAULT NULL COMMENT '市场价格',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `categoryLevel1Id` int(11) DEFAULT NULL COMMENT '分类1',
  `categoryLevel2Id` int(11) DEFAULT NULL COMMENT '分类2',
  `categoryLevel3Id` int(11) DEFAULT NULL COMMENT '分类3',
  `fileName` varchar(255) DEFAULT NULL COMMENT '文件名',
  `salesVolume` int(11) DEFAULT NULL COMMENT '销售量',
  `evaluateSales` int(11) DEFAULT NULL COMMENT '评价次数',
  `giveIntegral` int(11) DEFAULT NULL COMMENT '赠送积分',
  `model` varchar(5) DEFAULT NULL COMMENT '型号',
  `colour` varchar(5) DEFAULT NULL COMMENT '颜色',
  `isDelete` int(1) DEFAULT NULL COMMENT '1：正常0：下架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`description`,`price`,`bazaarPrice`,`stock`,`categoryLevel1Id`,`categoryLevel2Id`,`categoryLevel3Id`,`fileName`,`salesVolume`,`evaluateSales`,`giveIntegral`,`model`,`colour`,`isDelete`) values (710,'Haier/海尔 XQG70-B12866电商/7公斤全自动变频滚筒洗衣机','\\N',3245.0,3894.0,1998,618,634,0,'125_thumb_G_1437525897177.jpg',2000,3000,800,'\\N','\\N',1),(711,'SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜','\\N',5245.0,6294.0,2000,618,634,0,'123_thumb_G_1437525706093.jpg',300,4000,900,'\\N','\\N',1),(712,'Midea/美的 KFR-26GW/WJBA3@ 大1匹智能云除甲醛除湿冷暖变频空调','\\N',2694.0,2245.0,2100,618,634,0,'121_thumb_G_1437525509791.jpg',270,2099,500,'\\N','\\N',1),(713,'Gree/格力 KFR-72LW/(72596)FNAa-A3 变频3P立式柜机空调Q铂','\\N',6400.0,7680.0,2221,618,634,0,'128_thumb_G_1437526271316.jpg',260,3006,200,'\\N','\\N',1),(714,'Midea/美的 MB60-VT1010H 全自动波轮洗衣机6公斤不锈钢','\\N',3245.0,3894.0,2000,618,634,0,'126_thumb_G_1437525951501.jpg',500,1000,300,'\\N','\\N',1),(715,'Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱','\\N',3245.0,3894.0,1999,618,634,0,'124_thumb_G_1437525834721.jpg',300,3020,350,'\\N','\\N',1),(716,'二级大2P智能云定频冷暖柜机空调','\\N',2245.0,2694.0,1995,618,634,0,'122_thumb_G_1437525597541.jpg',400,700,150,'\\N','\\N',1),(717,'Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机','\\N',2245.0,2694.0,2000,618,635,0,'118_thumb_G_1437524872711.jpg',400,3020,200,'\\N','\\N',1),(718,'海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保','\\N',500.0,600.0,2218,618,635,0,'86_thumb_G_1437522610059.jpg',260,2099,100,'\\N','\\N',1),(719,'家用静音办公室空调加湿器 香薰迷你大容量净化特价','\\N',100.0,120.0,2215,618,635,0,'88_thumb_G_1437522788663.jpg',260,2099,70,'\\N','\\N',1),(720,'海尔ZB401G 家用小型床铺除螨仪床上除螨机吸尘器紫外线杀菌','\\N',399.0,478.7,2217,618,635,0,'91_thumb_G_1437522939065.jpg',2000,3000,170,'\\N','\\N',1),(721,'除湿机家用抽湿机20B地下室别墅吸湿器除湿器','\\N',999.0,1199.0,100,618,635,0,'97_thumb_G_1437523257758.jpg',500,3020,220,'\\N','\\N',1),(722,'美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶','\\N',159.0,197.0,2220,618,635,0,'101_thumb_G_1437523379443.jpg',300,3020,240,'\\N','\\N',1),(723,'Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品','\\N',359.0,430.0,2021,618,635,0,'103_thumb_G_1437523455426.jpg',400,2099,267,'\\N','\\N',1),(724,'格力遥控落地扇 家用静音电风扇 7.5小时定时 办公室学生扇 电扇','\\N',199.0,238.0,2000,618,636,0,'89_thumb_G_1437522853745.jpg',500,2099,120,'\\N','\\N',1),(725,'美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G','\\N',500.0,600.0,1991,618,636,0,'85_thumb_G_1437522493859.jpg',260,3006,300,'\\N','\\N',1),(726,'电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用','\\N',99.0,118.8,1800,618,636,0,'94_thumb_G_1437523136659.jpg',300,3000,50,'\\N','\\N',1),(727,'家用高端直饮净水器WP4160厨房自来水前置过滤器智能净水机','\\N',599.0,718.0,1500,618,636,0,'93_thumb_G_1437523047489.jpg',260,3020,350,'\\N','\\N',1),(728,'JYL-D022料理机家用多功能榨汁辅食搅拌机电动绞肉','\\N',236.0,283.0,1600,618,636,0,'106_thumb_G_1437523569985.jpg',260,2099,180,'\\N','\\N',1),(729,'电饼铛 美的 JCN30A蛋糕机 正品悬浮双面加热 家用煎烤机烙饼锅','\\N',234.0,280.8,1000,618,637,0,'112_thumb_G_1437524004579.jpg',260,1000,225,'\\N','\\N',1),(730,'CKTF-32GS上下独立控温 多功能电烤箱家用烘焙烤箱 正品特价','\\N',254.0,304.0,2219,618,637,0,'117_thumb_G_1437524390888.jpg',260,3020,165,'\\N','\\N',1),(731,'酸奶机家用全自动8个陶瓷分杯正品特价','\\N',59.0,70.8,1250,618,637,0,'115_thumb_G_1437524170488.jpg',500,3020,35,'\\N','\\N',1),(732,'电炖锅砂锅炖盅煮粥煲汤养生紫砂陶瓷','\\N',254.0,304.0,1350,618,637,0,'116_thumb_G_1437524258255.jpg',2099,3020,185,'\\N','\\N',1),(733,'养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品','\\N',336.0,403.2,2218,618,637,0,'110_thumb_G_1437523812526.jpg',500,1000,125,'\\N','\\N',1),(734,'米酒机酸奶机全自动家用不锈钢正品包邮','\\N',89.0,106.8,2300,618,637,0,'114_thumb_G_1437524086723.jpg',300,3020,45,'\\N','\\N',1),(735,'HTC One M9w 联通4G手机 乌金灰','\\N',3837.0,4200.0,2999,619,638,0,'162_thumb_G_1437530928053.jpg',260,3020,399,'\\N','\\N',1),(736,'摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机','\\N',9699.0,11638.8,2997,619,638,0,'175_thumb_G_1437531671882.jpg',260,3006,500,'\\N','\\N',1),(737,'【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡','\\N',2199.0,2300.0,3000,619,638,0,'147_thumb_G_1437530142553.jpg',300,3020,200,'\\N','\\N',1),(738,'朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机','\\N',899.0,999.0,2993,619,638,0,'168_thumb_G_1437531325629.jpg',500,3000,130,'\\N','\\N',1),(739,'三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机','\\N',6088.0,6300.0,2497,619,638,0,'155_thumb_G_1437530585448.jpg',260,3000,280,'\\N','\\N',1),(740,'小米（MI）小米Note 移动联通双4G 特别版(16G ROM)','\\N',2398.0,2500.0,102,619,638,0,'143_thumb_G_1437529603664.jpg',260,700,120,'\\N','\\N',1),(741,'苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机','\\N',4888.0,5000.0,1598,619,638,0,'100_thumb_G_1437523484060.jpg',2000,3020,270,'\\N','\\N',1),(742,'苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机','\\N',5888.0,6825.5,4488,619,638,0,'113_thumb_G_1437524324289.jpg',300,700,600,'\\N','\\N',1),(743,'幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑','\\N',19.9,22.0,2986,619,639,0,'183_thumb_G_1437532716802.jpg',3003,3020,20,'\\N','\\N',1),(744,'Genuinetek 手机信号放大器DS2H_A手机信号增强器移动联通接收器全套','\\N',248.0,258.0,2999,619,639,0,'192_thumb_G_1437533248578.jpg',300,3020,60,'\\N','\\N',1),(745,'SENBOWE 安卓系统遥控摄像视频间谍汽车玩具 白色','\\N',348.0,358.0,2999,619,639,0,'188_thumb_G_1437532927406.jpg',3000,3006,70,'\\N','\\N',1),(746,'赛鲸 常青藤懒人手机支架 床上床头支架 万向调节 太空蓝',NULL,29.9,32.0,2998,619,639,0,'185_thumb_G_1437532813329.jpg',1230,3020,10,NULL,NULL,1),(747,'PowerCube魔方插座接线板 创意多功能荷兰Allocacoc模方插座 办公神器 ',NULL,49.0,55.0,2999,619,640,0,'203_thumb_G_1437534951257.jpg',300,500,25,NULL,NULL,1),(748,'安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记本台式电脑音箱 音响',NULL,29.0,33.0,3000,619,640,0,'202_thumb_G_1437534795824.jpg',2000,3020,25,NULL,NULL,1),(749,'爱度ay819无线蓝牙音箱便携迷你小音响插卡u盘低音炮电脑笔记本音箱 白',NULL,148.0,155.0,2997,619,640,0,'199_thumb_G_1437534382441.jpg',222,3020,55,NULL,NULL,1),(750,'X-Vibe3.0 酷丸第三代共振音箱 智能互动音响 创意迷你胶囊便携式共振音',NULL,98.0,115.0,2995,619,640,0,'201_thumb_G_1437534649147.jpg',5333,6778,45,NULL,NULL,1),(751,'索爱（soaiy）S-20 便携式蓝牙数码插卡智能音箱 青春版 珍珠白',NULL,299.0,333.0,3000,619,640,0,'205_thumb_G_1437535334565.jpg',300,2355,120,NULL,NULL,1),(752,'雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床',NULL,333.0,399.5,4349,621,642,0,'140_thumb_G_1437528915082.jpg',248,2545,60,NULL,NULL,1),(753,'优雅100 经典设计款全棉斜纹印花四件套',NULL,189.0,226.7,4546,621,642,0,'139_thumb_G_1437528892306.jpg',999,2543,90,NULL,NULL,1),(754,'LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基',NULL,399.0,478.7,4660,621,642,0,'137_thumb_G_1437528855059.jpg',666,888,100,NULL,NULL,1),(755,'全是美 小户型梳妆台 欧式梳妆台 现代 简约',NULL,888.0,1065.6,45641,621,642,0,'130_thumb_G_1437527119516.jpg',1500,3000,188,NULL,NULL,1),(756,'摩登生活 法式梳妆台欧式梳妆台实木梳妆台',NULL,1233.0,1479.6,5641,621,642,0,'131_thumb_G_1437527214145.jpg',2000,2878,288,NULL,NULL,1),(757,'铂尼诗 家具 床 皮床 卧室家具套装',NULL,3388.0,4065.6,6771,621,642,0,'129_thumb_G_1437527006289.jpg',2100,2236,388,NULL,NULL,1),(758,'柏年好禾 家具 欧式床 真皮实木床 法式田园公主床',NULL,2098.0,2517.6,451,621,642,0,'120_thumb_G_1437525234301.jpg',1500,2545,258,NULL,NULL,1),(759,'艾生活 真皮床双人床 独特围边 精细做工 卧室家具',NULL,3260.0,3912.0,65534,621,642,0,'119_thumb_G_1437525155564.jpg',2222,3020,488,NULL,NULL,1),(760,'乐和居 双人床 床 榻榻米床 头层真皮',NULL,2999.0,3598.7,5887,621,643,0,'223_thumb_G_1437586798114.jpg',3333,4565,588,NULL,NULL,1),(761,'中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床',NULL,4600.0,5520.0,5887,621,643,0,'224_thumb_G_1437586899394.jpg',0,0,788,NULL,NULL,1),(762,'美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床',NULL,1390.0,1668.0,43451,621,643,0,'222_thumb_G_1437586485852.jpg',0,0,260,NULL,NULL,1),(763,'剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56',NULL,299.0,358.8,3333,621,643,0,'228_thumb_G_1437587380356.jpg',0,0,280,NULL,NULL,1),(764,'亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心',NULL,239.0,286.8,3333,621,643,0,'226_thumb_G_1437587179362.jpg',0,0,210,NULL,NULL,1),(765,'樱之歌 52头 紫玉情缘 餐具套装',NULL,239.0,286.8,333,621,643,0,'225_thumb_G_1437587108986.jpg',0,0,210,NULL,NULL,1),(766,'可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套',NULL,99.0,118.8,3322,621,643,0,'231_thumb_G_1437587773545.jpg',0,0,220,NULL,NULL,1),(767,'Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选',NULL,116.0,139.0,3331,621,643,0,'229_thumb_G_1437587547996.jpg',0,0,65,NULL,NULL,1),(768,'高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装',NULL,199.0,238.7,1848,622,648,0,'51_thumb_G_1437519866381.jpg',0,0,99,NULL,NULL,1),(769,'夏装新款修身假两件无袖绣花蕾丝连衣裙',NULL,279.0,334.8,100,622,648,0,'33_thumb_G_1437507221390.jpg',0,0,199,NULL,NULL,1),(770,'夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙',NULL,368.0,441.5,378,622,648,0,'34_thumb_G_1437507487587.jpg',0,0,288,NULL,NULL,1),(771,'荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风短裙A字连衣裙',NULL,198.0,237.6,425,622,648,0,'36_thumb_G_1437508564664.jpg',0,0,99,NULL,NULL,1),(772,'高端2015夏装新款修身淑坊女女装蕾丝短袖复古森女连衣裙装',NULL,178.0,213.6,1587,622,648,0,'38_thumb_G_1437514275132.jpg',0,0,88,NULL,NULL,1),(773,'伊芙丽秋装新款翻领小西装女 2015新款 西装外套女春秋',NULL,299.0,358.8,199,622,648,0,'40_thumb_G_1437515363345.jpg',0,0,99,NULL,NULL,1),(774,'2015新款修身开衫短款七分袖小西装女薄网纱披肩防晒衫小外套女夏',NULL,259.0,310.8,289,622,648,0,'42_thumb_G_1437515742056.jpg',0,0,128,NULL,NULL,1),(775,'2015夏装韩版修身白色小西装女薄外套',NULL,399.0,478.7,298,622,648,0,'45_thumb_G_1437516035103.jpg',0,0,199,NULL,NULL,1),(776,'真丝睡衣女士夏季桑蚕丝绸春秋家居服性感吊带睡裙',NULL,199.0,238.7,1000,622,649,0,'71_thumb_G_1437521951345.jpg',0,0,99,NULL,NULL,1),(777,'一米画纱桑蚕丝吊带睡裙女夏季纯色真丝睡衣',NULL,88.0,100.0,1000,622,649,0,'82_thumb_G_1437522300426.jpg',0,0,58,NULL,NULL,1),(778,'真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣',NULL,199.0,238.8,1000,622,649,0,'71_thumb_G_1437521951345.jpg',0,0,99,NULL,NULL,1),(779,'2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙',NULL,299.0,238.8,1000,622,649,0,'56_thumb_G_1437520837769.jpg',0,0,99,NULL,NULL,1),(780,'大码薄款女士真丝睡衣女夏季丝绸性感100%桑蚕丝睡裙',NULL,199.0,238.8,1000,622,648,0,'82_thumb_G_1437522300426.jpg',0,0,99,NULL,NULL,1),(781,'100%桑蚕丝两件套夏季短袖真丝睡衣女套装',NULL,88.0,100.0,1000,622,648,0,'78_thumb_G_1437522187316.jpg',0,0,99,NULL,NULL,1),(782,'纱桑蚕丝真丝睡衣女士夏季纯色吊带睡裙',NULL,199.0,238.8,1000,622,648,0,'70_thumb_G_1437521749240.jpg',0,0,99,NULL,NULL,1),(783,'夏季性感吊带真丝睡裙100%桑蚕丝深V睡衣女士纯色蕾丝家居服女',NULL,199.0,238.8,1000,622,648,0,'69_thumb_G_1437521666394.jpg',0,0,99,NULL,NULL,1),(784,'与狼共舞短袖T恤 2015夏装新款 男士Polo衫 男装纯棉翻领',NULL,199.0,238.8,999,622,649,0,'95_thumb_G_1437523157627.jpg',0,0,99,NULL,NULL,1),(785,'人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤',NULL,299.0,358.8,1000,622,649,0,'92_thumb_G_1437523024248.jpg',0,0,199,NULL,NULL,1),(786,'2015新款男装 男士夏季多彩短袖polo衫男 休闲双层立领T恤',NULL,99.0,118.8,1000,622,649,0,'90_thumb_G_1437523731725.jpg',0,0,49,NULL,NULL,1),(787,'2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领多彩polo衫潮',NULL,149.0,178.7,1000,622,649,0,'96_thumb_G_1437523830530.jpg',0,0,88,NULL,NULL,1),(788,'纯棉弹力修身男装商务短袖',NULL,149.0,178.7,1000,622,649,0,'_thumb_P_1438047799582.jpg',0,0,88,NULL,NULL,1),(789,'法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣',NULL,149.0,178.7,1000,622,649,0,'105_thumb_G_1437523502682.jpg',0,0,88,NULL,NULL,1),(790,'纯棉牛仔拼接修身男Polo衫',NULL,149.0,178.7,999,622,649,0,'99_thumb_G_1437523325748.jpg',0,0,88,NULL,NULL,1),(791,'Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮',NULL,149.0,178.7,999,622,649,0,'102_thumb_G_1437523460978.jpg',0,0,88,NULL,NULL,1),(792,'Dior迪奥 限量版彩妆盘 眼影 粉饼 睫毛膏 腮红 唇彩',NULL,529.0,634.0,2000,623,654,0,'152_thumb_G_1437530333924.jpg',0,0,299,NULL,NULL,1),(793,'卡姿兰彩妆套装 睫毛膏粉饼眉粉眉笔 专柜初学者化妆套装',NULL,490.0,588.0,2000,623,654,0,'149_thumb_G_1437530202440.jpg',0,0,288,NULL,NULL,1),(794,'Dior迪奥唇膏/变色润唇膏/粉红魅惑润唇膏3.5g 润唇蜜/口红 唇彩 唇膏',NULL,180.0,216.0,2000,623,654,0,'136_thumb_G_1437528720014.jpg',0,0,99,NULL,NULL,1),(795,'迪奥(Dior) EDT CD 花漾甜心女士香水100ML',NULL,790.0,948.0,2000,623,654,0,'169_thumb_G_1437531448738.jpg',0,0,399,NULL,NULL,1),(796,'迪奥真我香水50ml',NULL,953.0,1143.0,2000,623,654,0,'135_thumb_G_1437528636775.jpg',0,0,488,NULL,NULL,1),(797,'迪奥新魅惑淡香水5ml',NULL,129.0,154.0,2000,623,654,0,'134_thumb_G_1437528500701.jpg',0,0,78,NULL,NULL,1),(798,'Dior迪奥女士香水豪华礼物套装 礼盒套装*真我*甜心*魅惑各5ML',NULL,580.0,696.0,2000,623,654,0,'173_thumb_G_1437531646299.jpg',0,0,188,NULL,NULL,1),(799,'资生堂红色蜜露精华化妆液125ml 补水保湿爽肤水',NULL,480.0,567.0,1999,623,655,0,'84_thumb_G_1437522463415.jpg',0,0,188,NULL,NULL,1),(800,'相宜本草光彩立现睡眠面膜(净白莹润)135g',NULL,30.0,36.0,2000,623,655,0,'133_thumb_G_1437528350250.jpg',0,0,10,NULL,NULL,1),(801,'相宜本草红景天3件套（洁面膏100g+精华水120ml+精华乳120g',NULL,173.0,207.0,2000,623,655,0,'132_thumb_G_1437528103895.jpg',0,0,48,NULL,NULL,1),(802,'雅诗兰黛护肤礼盒（眼霜15ML+柔肤霜15ML+晚霜15ML+精华露7ML',NULL,545.0,1089.0,2000,623,655,0,'108_thumb_G_1437523652983.jpg',0,0,288,NULL,NULL,1),(803,'雅诗兰黛（Estee Lauder）肌透修护眼部精华霜15ml',NULL,379.0,560.0,2000,623,655,0,'98_thumb_G_1437523250241.jpg',0,0,138,NULL,NULL,1),(804,'shiseido资生堂 新漾美肌亮润眼霜15mL提拉 紧致去黑眼圈眼袋',NULL,360.0,432.0,2000,623,655,0,'73_thumb_G_1437521912159.jpg',0,0,128,NULL,NULL,1),(805,'shiseido/资生堂 限量悦薇珀翡基础护理套装 抗老祛黄 面部护理',NULL,777.0,730.0,66,623,655,0,'77_thumb_G_1437522146544.jpg',0,0,288,NULL,NULL,1),(806,'兰芝夜间修护睡眠面膜70ml',NULL,193.0,231.0,2000,623,655,0,'142_thumb_G_1437529449611.jpg',0,0,58,NULL,NULL,1),(807,'水之密语 凝润水护护发素600ml',NULL,68.0,81.0,2000,623,656,0,'146_thumb_G_1437530004681.jpg',0,0,28,NULL,NULL,1),(808,'海飞丝去屑洗发露(海洋活力型)750ml',NULL,81.0,97.0,2000,623,656,0,'145_thumb_G_1437529875442.jpg',0,0,38,NULL,NULL,1),(809,'欧莱雅角质顺滑去屑洗发露200ml',NULL,22.0,26.0,2000,623,656,0,'loading.gif',0,0,8,NULL,NULL,1),(810,'L’OREAL/欧莱雅 洗发护发套装',NULL,98.0,117.0,2000,623,656,0,'164_thumb_G_1437531039732.jpg',0,0,68,NULL,NULL,1),(811,'欧莱雅(L’OREAL)多效修复超值洗护套装',NULL,60.0,72.0,2000,623,656,0,'161_thumb_G_1437530711935.jpg',0,0,10,NULL,NULL,1),(812,'欧莱雅透明质酸水润洗发露400ml*2+透明质酸水润润发乳400ml',NULL,75.0,90.0,2000,623,656,0,'163_thumb_G_1437530957991.jpg',0,0,25,NULL,NULL,1),(813,'L’OREAL/欧莱雅 精油润养洗发露700ml',NULL,40.0,48.0,2000,623,656,0,'158_thumb_G_1437530565110.jpg',0,0,38,NULL,NULL,1),(814,'沙宣垂坠质感润发乳750ml',NULL,90.0,108.0,2000,623,656,0,'153_thumb_G_1437530435593.jpg',0,0,68,NULL,NULL,1),(815,'洋河海之蓝42度480ml',NULL,129.0,154.0,111,624,659,0,'254_thumb_G_1456451004329.jpg',0,0,25,NULL,NULL,1),(816,'ROM威士忌鸡尾酒青柠味预调酒275ml',NULL,12.9,15.4,1111,624,659,0,'255_thumb_G_1456451111974.jpg',0,0,5,NULL,NULL,1),(817,'女儿红6年陈350ML 整箱6瓶装',NULL,159.0,190.0,111,624,659,0,'256_thumb_G_1456451184573.jpg',0,0,35,NULL,NULL,1),(818,'RIO锐澳伏特加鸡尾酒-宾治(混合水果)275ml瓶',NULL,10.5,12.0,1,624,659,0,'268_thumb_G_1456452475405.jpg',0,0,5,NULL,NULL,1),(819,'江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水',NULL,198.0,237.0,1,624,659,0,'271_thumb_G_1456452775873.jpg',0,0,39,NULL,NULL,1),(820,'江鼎 白酒衡水老白干大青花50度高度白酒500ML',NULL,118.0,141.0,1,624,659,0,'272_thumb_G_1456452879681.jpg',0,0,49,NULL,NULL,1),(821,'酒仙网 大成·澜爵2009珍藏版品丽珠干红葡萄酒750ml 红酒 国产酒水',NULL,39.0,46.0,1,624,659,0,'269_thumb_G_1456452562968.jpg',0,0,18,NULL,NULL,1),(822,'雀巢 中老年奶粉 850g雀巢',NULL,75.0,90.0,111,624,660,0,'262_thumb_G_1456451850522.jpg',0,0,20,NULL,NULL,1),(823,'维维 维他型豆奶粉 560g',NULL,15.9,19.0,111,624,660,0,'261_thumb_G_1456451756248.jpg',0,0,10,NULL,NULL,1),(824,'伊利 女士高铁高钙奶粉 400g',NULL,32.8,39.0,1111,624,660,0,'260_thumb_G_1456451682591.jpg',0,0,10,NULL,NULL,1),(825,'伊利 学生高锌高钙奶粉400g',NULL,32.0,38.0,111,624,660,0,'263_thumb_G_1456451965817.jpg',0,0,10,NULL,NULL,1),(826,'藏原蜜语 高原土蜂蜜野生百花蜜糖500g*2瓶 天然无添加',NULL,49.0,58.8,111,624,660,0,'264_thumb_G_1456452043487.jpg',0,0,25,NULL,NULL,1),(827,'恒寿堂 蜜炼柠檬茶大瓶装850g/瓶',NULL,32.0,38.0,111,624,660,0,'265_thumb_G_1456452231528.jpg',0,0,15,NULL,NULL,1),(828,'艺福堂 茗茶 红糖姜茶 女人茶 袋泡茶 速溶姜茶花茶125g/盒*2',NULL,29.0,34.0,1,624,660,0,'267_thumb_G_1456452393137.jpg',0,0,22,NULL,NULL,1),(829,'雅士利 优怡高钙高铁奶粉 400g',NULL,37.0,44.0,1,624,660,0,'266_thumb_G_1456452313192.jpg',0,0,27,NULL,NULL,1),(830,'七喜冰爽柠檬汽水330ml*24（整箱）',NULL,43.7,52.0,1111,624,660,0,'253_thumb_G_1456450820776.jpg',0,0,30,NULL,NULL,1),(831,'1.25L雪碧+1.25L美汁源果粒橙',NULL,9.9,11.0,1111,624,661,0,'252_thumb_G_1456450660879.jpg',0,0,5,NULL,NULL,1),(832,'汇源 100%苹果果汁 1L/盒',NULL,15.9,19.0,111,624,661,0,'258_thumb_G_1456451394456.jpg',0,0,5,NULL,NULL,1),(833,'汇源 乐乐园 100%复合果蔬汁 5+7 125ml*16包',NULL,29.0,35.0,111,624,661,0,'257_thumb_G_1456451288943.jpg',0,0,15,NULL,NULL,1),(834,'舒达源天然苏打水400ml*24',NULL,209.0,250.7,111,624,661,0,'259_thumb_G_1456451555948.jpg',0,0,50,NULL,NULL,1),(835,'康师傅优悦水550ml*24瓶（整箱）',NULL,19.9,23.0,1,624,661,0,'273_thumb_G_1456452987184.jpg',0,0,15,NULL,NULL,1),(836,'水动乐柠檬味600ml',NULL,3.9,4.0,1,624,661,0,'275_thumb_G_1456453296341.jpg',0,0,2,NULL,NULL,1),(837,'可口可乐 碳酸饮料 汽水 1.25L',NULL,4.2,5.0,1,624,661,0,'274_thumb_G_1456453088662.jpg',0,0,2,NULL,NULL,1),(838,'诺优能(Nutrilon) 幼儿配方奶粉 3段(12-24个月幼儿适用)',NULL,159.0,190.7,4551,628,663,0,'148_thumb_G_1437530157610.jpg',0,0,58,NULL,NULL,1),(839,'美素力（frisolac）金装婴儿配方奶粉 1段（0-6个月婴儿适用',NULL,222.0,266.4,6781,628,663,0,'154_thumb_G_1437530449742.jpg',0,0,122,NULL,NULL,1),(840,'惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉',NULL,211.0,253.2,5671,628,663,0,'150_thumb_G_1437530289196.jpg',0,0,54,NULL,NULL,1),(841,'惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉 1段 900克',NULL,203.0,243.6,1566,628,663,0,'210_thumb_G_1437583822170.jpg',0,0,30,NULL,NULL,1),(842,'伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用)',NULL,358.0,429.5,1000,628,663,0,'211_thumb_G_1437584133612.jpg',0,0,58,NULL,NULL,1),(843,'飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉',NULL,226.0,271.2,1000,628,663,0,'212_thumb_G_1437584420342.jpg',0,0,56,NULL,NULL,1),(844,'雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）',NULL,151.0,181.2,15644,628,663,0,'208_thumb_G_1437583379285.jpg',0,0,50,NULL,NULL,1),(845,'雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克',NULL,278.0,333.5,15656,628,663,0,'210_thumb_G_1437583822170.jpg',0,0,78,NULL,NULL,1),(846,'哈罗闪sanosan婴儿洗发露沐浴乳二合一',NULL,26.0,31.2,8999,628,665,0,'216_thumb_G_1437585478147.jpg',0,0,15,NULL,NULL,1),(847,'润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装',NULL,13.5,16.2,6788,628,665,0,'220_thumb_G_1437585995276.jpg',0,0,14,NULL,NULL,1),(848,'恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶',NULL,59.0,70.0,676,628,665,0,'naiping_thumb_G_1437585757292.jpg',0,0,19,NULL,NULL,1),(849,'欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴桶大号',NULL,178.0,213.6,8999,628,665,0,'218_thumb_G_1437585757292.jpg',0,0,78,NULL,NULL,1),(850,'盈泰 充气游泳池家庭成人大型超大号儿童游泳池',NULL,198.0,237.6,8999,628,665,0,'217_thumb_G_1437585667325.jpg',0,0,88,NULL,NULL,1),(851,'易简 专业婴儿儿童理发器 充电防水静音/HK668A(小鱼',NULL,89.0,106.8,6788,628,665,0,'221_thumb_G_1437586129474.jpg',0,0,28,NULL,NULL,1),(861,'日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g',NULL,12.0,14.3,1996,629,NULL,0,'30_thumb_G_1437506667557.jpg',0,0,5,NULL,NULL,1),(862,'意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖',NULL,380.0,456.0,1995,629,NULL,0,'29_thumb_G_1437506331258.jpg',0,0,100,NULL,NULL,1),(863,'进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】【代写贺卡】七夕礼物生',NULL,40.0,50.0,100,629,NULL,0,'28_thumb_G_1437506346326.jpg',0,0,60,NULL,NULL,1),(864,'Ferrero/费列罗 意大利进口威化榛果巧克力30粒礼盒装 生日礼物送女友情',NULL,79.0,95.0,1998,629,NULL,0,'27_thumb_G_1437506372309.jpg',0,0,20,NULL,NULL,1),(865,'韩国进口X-5花生夹心巧克力棒盒装（24根）864g',NULL,50.0,60.0,2000,629,NULL,0,'26_thumb_G_1437505984631.jpg',0,0,20,NULL,NULL,1),(866,'德运Devondale 脱脂高钙奶粉1kg',NULL,49.0,66.0,100,629,NULL,0,'74_thumb_G_1437521987425.jpg',0,0,20,NULL,NULL,1),(867,'波兰 进口牛奶 日昇（MLEKOVITA）全脂牛奶1L*12盒',NULL,109.0,130.0,1999,629,NULL,0,'72_thumb_G_1437521848992.jpg',0,0,20,NULL,NULL,1),(868,'新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱',NULL,109.0,130.0,2000,629,NULL,0,'68_thumb_G_1437521651986.jpg',0,0,20,NULL,NULL,1),(869,'澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装',NULL,109.0,130.0,2000,629,NULL,0,'62_thumb_G_1437521071878.jpg',0,0,20,NULL,NULL,1),(870,'德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12',NULL,119.0,130.0,1999,629,NULL,0,'60_thumb_G_1437520982494.jpg',0,0,20,NULL,NULL,1);

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '产品分类名称',
  `parentId` int(11) DEFAULT NULL COMMENT '父级id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8;

/*Data for the table `product_category` */

insert  into `product_category`(`id`,`name`,`parentId`,`type`) values (618,'家用电器',0,1),(619,'手机、数码、通信',0,1),(620,'电脑、办公',0,1),(621,'家居、家具、家装、厨具',0,1),(622,'男装、女装、内衣、珠宝',0,1),(623,'个护化妆、清洁用品',0,1),(624,'酒类饮料',0,1),(625,'鞋靴、箱包、钟表、奢侈品 ',0,1),(626,'运动户外',0,1),(627,'汽车、汽车用品 ',0,1),(628,'母婴、玩具乐器',0,1),(629,'食品、酒类、生鲜、特产',0,1),(630,'营养保健',0,1),(631,'图书、音像、电子书',0,1),(632,'彩票、旅行、充值、票务 ',0,1),(633,'理财、众筹、白条、保险 ',0,1),(634,'大家电',618,2),(635,'生活电器',618,2),(636,'厨房电器',618,2),(637,'个护健康',618,2),(638,'热卖手机',619,2),(639,'手机配件',619,2),(640,'数码影音',619,2),(641,'智能设备',619,2),(642,'家纺\r\n',621,2),(643,'家具',621,2),(644,'厨具',621,2),(645,'灯具',621,2),(646,'家装软饰',621,2),(647,'生活日用',621,2),(648,'女装馆',622,2),(649,'内衣馆',622,2),(650,'男装馆',622,2),(651,'户外鞋服',622,2),(652,'女鞋馆',622,2),(653,'箱包馆',622,2),(654,'香水彩妆',623,2),(655,'面部护肤',623,2),(656,'洗发护发',623,2),(657,'身体护肤',623,2),(658,'口腔护理',623,2),(659,'酒水',624,2),(660,'冲调饮品',624,2),(661,'饮料饮品',624,2),(662,'茗茶',624,2),(663,'孕婴奶粉',628,2),(664,'营养/辅食',628,2),(665,'孕婴洗护',628,2),(666,'喂养用品',628,2),(667,'车床/床品',628,2),(668,'孕妈专区',628,2),(669,'进口水果',629,2),(670,'糖果巧克力',629,2),(671,'牛奶乳品',629,2),(672,'坚果炒货',629,2),(673,'蜜饯果干',629,2),(674,'平板电视',634,3),(675,'空调冰箱',634,3),(676,'洗衣机',634,3),(677,'家庭影院',634,3),(678,'烟机/灶具',634,3),(679,'热水器',634,3),(680,'消毒柜/洗碗机',634,3),(681,'冷柜/冰吧',634,3),(682,'电风扇',635,3),(683,'净化器',635,3),(684,'加湿器',635,3),(685,'吸尘器',635,3),(686,'挂烫机/熨斗',635,3),(687,'取暖电器',635,3),(688,'饮水机',635,3),(689,'其它生活电器',635,3),(690,'电饭煲',636,3),(691,'微波炉',636,3),(692,'电磁炉',636,3),(693,'电饼铛/烧烤盘',636,3),(694,'电炖锅',636,3),(695,'果蔬解毒机',636,3),(696,'养生壶/煎药壶',636,3),(697,'其它厨房电器',636,3),(698,'剃须刀',637,3),(699,'电吹风',637,3),(700,'按摩椅',637,3),(701,'足浴盆',637,3),(702,'健康秤/厨房秤',637,3),(703,'血糖仪',637,3),(704,'计步器/脂肪检测',637,3),(705,'其它健康电器',637,3),(706,'三星盖乐世',638,3),(707,'iPhone',638,3),(708,'小米特供',638,3),(709,'魅族手机',638,3),(710,'华为荣耀',638,3),(711,'联通4G',638,3),(712,'电信4G',638,3),(713,'移动4G',638,3),(714,'电池',639,3),(715,'移动电源',639,3),(716,'蓝牙耳机',639,3),(717,'充电器',639,3),(718,'创意配件',639,3),(719,'手机饰品',639,3),(720,'手机耳机',639,3),(721,'保护套',639,3),(722,'数码相机',640,3),(723,'单反相机',640,3),(724,'拍立得',640,3),(725,'运动相机',640,3),(726,'摄像机',640,3),(727,'户外器材',640,3),(728,'数码相框',640,3),(729,'影棚器材',640,3),(730,'智能手环',641,3),(731,'智能手表',641,3),(732,'智能眼镜',641,3),(733,'运动跟踪器',641,3),(734,'智能家居',641,3),(735,'体感车',641,3),(736,'床品套件',642,3),(737,'被子',642,3),(738,'蚊帐',642,3),(739,'凉席',642,3),(740,'床单被罩',642,3),(741,'毛巾浴巾',642,3),(742,'床垫/床褥',642,3),(743,'窗帘/窗纱',642,3),(744,'卧室家具',643,3),(745,'客厅家具',643,3),(746,'餐厅家具',643,3),(747,'书房家具',643,3),(748,'储物家具',643,3),(749,'阳台/户外',643,3),(750,'沙发',643,3),(751,'鞋架/衣帽架',643,3),(752,'烹饪锅具',644,3),(753,'刀剪菜板',644,3),(754,'厨房配件',644,3),(755,'水具酒具',644,3),(756,'餐具',644,3),(757,'茶具/咖啡具',644,3),(758,'台灯',645,3),(759,'吸顶灯',645,3),(760,'筒灯射灯',645,3),(761,'LED灯',645,3),(762,'落地灯',645,3),(763,'应急灯/手电',645,3),(764,'装饰灯',645,3),(765,'吊灯',645,3),(766,'桌布/罩件',646,3),(767,'地毯地垫',646,3),(768,'沙发垫套/椅垫',646,3),(769,'帘艺隔断',646,3),(770,'相框/照片墙',646,3),(771,'装饰字画',646,3),(772,'墙贴/装饰贴',646,3),(773,'摆件花瓶',646,3),(774,'收纳用品',647,3),(775,'雨伞雨具',647,3),(776,'浴室用品',647,3),(777,'缝纫/针织用品',647,3),(778,'洗晒/熨烫',647,3),(779,'净化除味',647,3),(780,'连衣裙',648,3),(781,'连体裤',648,3),(782,'棉麻T恤',648,3),(783,'时尚套装',648,3),(784,'复古旗袍',648,3),(785,'牛仔裤',648,3),(786,'短外套',648,3),(787,'防晒衫',648,3),(788,'聚拢文胸',649,3),(789,'薄款文胸',649,3),(790,'无钢圈文胸',649,3),(791,'女士内裤',649,3),(792,'男士内裤',649,3),(793,'夏季睡衣',649,3),(794,'性感睡衣',649,3),(795,'瘦腿袜',649,3),(796,'休闲裤',650,3),(797,'牛仔裤',650,3),(798,'夹克',650,3),(799,'风衣',650,3),(800,'针织衫',650,3),(801,'长袖衬衫',650,3),(802,'休闲短裤',650,3),(803,'POLO衫',650,3),(804,'跑步鞋',651,3),(805,'篮球鞋',651,3),(806,'帆布鞋',651,3),(807,'羽毛球鞋',651,3),(808,'迷彩裤',651,3),(809,'沙滩鞋',651,3),(810,'钓鱼服',651,3),(811,'登山鞋',651,3),(812,'高跟凉拖',652,3),(813,'平底鞋',652,3),(814,'高跟鞋',652,3),(815,'坡跟单鞋',652,3),(816,'浅口单鞋',652,3),(817,'帆布鞋',652,3),(818,'乐福鞋',652,3),(819,'松糕鞋',652,3),(820,'单肩女包',653,3),(821,'手提女包',653,3),(822,'女士钱包',653,3),(823,'男士双肩',653,3),(824,'男士钱包',653,3),(825,'旅行箱',653,3),(826,'拉杆箱',653,3),(827,'拉杆包',653,3),(828,'香水',654,3),(829,'底妆',654,3),(830,'腮红',654,3),(831,'眼部',654,3),(832,'唇部',654,3),(833,'美甲',654,3),(834,'美容工具',654,3),(835,'套装',654,3),(836,'清洁',655,3),(837,'护肤',655,3),(838,'面膜',655,3),(839,'剃须',655,3),(840,'套装',655,3),(841,'洗发',656,3),(842,'护发',656,3),(843,'染发',656,3),(844,'造型',656,3),(845,'假发',656,3),(846,'套装',656,3),(847,'沐浴',657,3),(848,'润肤',657,3),(849,'颈部',657,3),(850,'手足',657,3),(851,'纤体塑形',657,3),(852,'美胸',657,3),(853,'套装',657,3),(854,'牙膏/牙粉',658,3),(855,'牙刷/牙线',658,3),(856,'漱口水',658,3),(857,'套装',658,3),(858,'白酒',659,3),(859,'啤酒',659,3),(860,'葡萄酒/果酒',659,3),(861,'黄酒/米酒',659,3),(862,'养生酒',659,3),(863,'预调酒',659,3),(864,'蜂蜜',660,3),(865,'成人奶粉',660,3),(866,'豆浆/豆奶粉',660,3),(867,'茶叶',660,3),(868,'奶茶',660,3),(869,'麦片谷物',660,3),(870,'咖啡',660,3),(871,'果味冲调',660,3),(872,'果蔬汁',661,3),(873,'茶饮料',661,3),(874,'碳酸饮料',661,3),(875,'功能饮料',661,3),(876,'纯牛奶',661,3),(877,'酸奶',661,3),(878,'风味奶',661,3),(879,'植物蛋白饮料',661,3),(880,'铁观音',662,3),(881,'普洱',662,3),(882,'龙井',662,3),(883,'绿茶',662,3),(884,'红茶',662,3),(885,'花果茶',662,3),(886,'养生茶',662,3),(887,'其他茶',662,3),(888,'特配奶粉',663,3),(889,'孕妈奶粉',663,3),(890,'pre段',663,3),(891,'1段',663,3),(892,'2段',663,3),(893,'3段',663,3),(894,'米粉',664,3),(895,'果汁/泥',664,3),(896,'面食类',664,3),(897,'宝宝零食',664,3),(898,'DHA',664,3),(899,'清火开胃',664,3),(900,'钙铁锌',664,3),(901,'益生菌',664,3),(902,'洗衣液/皂',665,3),(903,'宝宝沐浴',665,3),(904,'儿童防晒',665,3),(905,'防蚊/驱蚊',665,3),(906,'爽身粉',665,3),(907,'奶瓶清洗',665,3),(908,'孕妇护肤',665,3),(909,'奶嘴奶瓶',666,3),(910,'驱蚊用品',666,3),(911,'浴室用品',666,3),(912,'水壶/水杯',666,3),(913,'吸奶器',666,3),(914,'理发器',666,3),(915,'防溢乳垫',666,3),(916,'安全座椅',667,3),(917,'手推车',667,3),(918,'婴儿床',667,3),(919,'餐椅',667,3),(920,'三轮车',667,3),(921,'儿童家具',667,3),(922,'睡袋/抱被',667,3),(923,'凉席/蚊帐',667,3),(924,'孕妇裙',668,3),(925,'打底裤',668,3),(926,'防辐射服',668,3),(927,'腰凳',668,3),(928,'妈咪包',668,3),(929,'收腹带',668,3),(930,'哺乳文胸',668,3),(931,'孕妇内裤',668,3),(932,'释迦芭乐',669,3),(933,'樱桃车厘子',669,3),(934,'芒果桃李',669,3),(935,'龙眼荔枝',669,3),(936,'提子葡萄',669,3),(937,'奇异果猕猴桃',669,3),(938,'凤梨蓝莓',669,3),(939,'榴莲山竹',669,3),(940,'巧克力',670,3),(941,'口香糖',670,3),(942,'棒棒糖',670,3),(943,'软糖',670,3),(944,'奶糖',670,3),(945,'QQ糖',670,3),(946,'果冻',670,3),(947,'常温奶',671,3),(948,'乳饮料',671,3),(949,'儿童奶',671,3),(950,'酸奶',671,3),(951,'豆奶',671,3),(952,'低脂奶',671,3),(953,'全脂奶',671,3),(954,'成人奶粉',671,3),(955,'核桃',672,3),(956,'夏威夷果',672,3),(957,'碧根果',672,3),(958,'开心果',672,3),(959,'腰果',672,3),(960,'瓜子',672,3),(961,'花生',672,3),(962,'杏仁',672,3),(963,'红枣',673,3),(964,'莓类',673,3),(965,'葡萄干',673,3),(966,'芒果干',673,3),(967,'香蕉干',673,3),(968,'山楂片',673,3),(969,'橄榄',673,3),(970,'其他',673,3);

/*Table structure for table `product_evaluation` */

DROP TABLE IF EXISTS `product_evaluation`;

CREATE TABLE `product_evaluation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `productId` int(11) DEFAULT NULL COMMENT '产品主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `eContent` varchar(255) DEFAULT NULL COMMENT '评价内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product_evaluation` */

/*Table structure for table `recharge_status` */

DROP TABLE IF EXISTS `recharge_status`;

CREATE TABLE `recharge_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rsName` varchar(200) DEFAULT NULL COMMENT '充值状态名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recharge_status` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roleName` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`roleName`) values (1,'admin'),(2,'user'),(3,'member');

/*Table structure for table `transaction_type` */

DROP TABLE IF EXISTS `transaction_type`;

CREATE TABLE `transaction_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `transactionName` varchar(50) DEFAULT NULL COMMENT '交易类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction_type` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `sex` int(2) DEFAULT NULL COMMENT '性别，1：男，0：女',
  `birthday` datetime DEFAULT NULL COMMENT '出生时间',
  `headPortrait` varchar(255) DEFAULT NULL COMMENT '头像文件',
  `email` varchar(80) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`password`,`phone`,`sex`,`birthday`,`headPortrait`,`email`) values (1,'admin','123456','13422952290',1,'1989-02-02 16:47:53','#','940354330@qq.com'),(2,'sad','e10adc3949ba59abbe56e057f20f883e','13422953190',NULL,NULL,NULL,NULL),(3,'wqe','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL),(4,'ew','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL),(5,'dd','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_address` */

DROP TABLE IF EXISTS `user_address`;

CREATE TABLE `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `consignee` varchar(255) DEFAULT NULL COMMENT '收货人',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `addressPhone` varchar(11) DEFAULT NULL COMMENT '收货电话号码',
  `postcode` int(10) DEFAULT NULL COMMENT '邮政编号',
  `isDefault` int(2) DEFAULT '0' COMMENT '是否是默认地址1：yes，0：no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user_address` */

insert  into `user_address`(`id`,`userId`,`consignee`,`address`,`addressPhone`,`postcode`,`isDefault`) values (1,1,'阿铭','北京-北京-东城区','18234256475',100000,1),(2,1,'龙儿-护','安徽-安庆-大观区','15582412512',246000,0),(4,2,'糊糊','天津-蝴蝶-北街','13245784587',12451,0);

/*Table structure for table `user_balance` */

DROP TABLE IF EXISTS `user_balance`;

CREATE TABLE `user_balance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `money` float(9,2) DEFAULT NULL COMMENT '用户余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_balance` */

/*Table structure for table `user_commodity` */

DROP TABLE IF EXISTS `user_commodity`;

CREATE TABLE `user_commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `productId` int(11) DEFAULT NULL COMMENT '产品主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_commodity` */

/*Table structure for table `user_discount_coupon` */

DROP TABLE IF EXISTS `user_discount_coupon`;

CREATE TABLE `user_discount_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `dcId` int(11) DEFAULT NULL COMMENT '优惠券主键',
  `dcsId` int(11) DEFAULT NULL COMMENT '优惠券状态主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user_discount_coupon` */

insert  into `user_discount_coupon`(`id`,`userId`,`dcId`,`dcsId`) values (1,1,1,1),(2,1,2,1),(3,1,3,1);

/*Table structure for table `user_integral` */

DROP TABLE IF EXISTS `user_integral`;

CREATE TABLE `user_integral` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `integral` int(11) DEFAULT NULL COMMENT '用户积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_integral` */

/*Table structure for table `user_invoice` */

DROP TABLE IF EXISTS `user_invoice`;

CREATE TABLE `user_invoice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `invoiceTypeId` int(11) DEFAULT NULL COMMENT '发票类型主键',
  `invoiceContentId` int(11) DEFAULT NULL COMMENT '发票内容主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_invoice` */

/*Table structure for table `user_recharge_record` */

DROP TABLE IF EXISTS `user_recharge_record`;

CREATE TABLE `user_recharge_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `money` float(9,1) DEFAULT NULL COMMENT '充值金额',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `paymentWayId` int(11) DEFAULT NULL COMMENT '支付方式主键',
  `createTime` datetime DEFAULT NULL COMMENT '充值时间',
  `rechargeStatusId` int(11) DEFAULT NULL COMMENT '充值状态主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_recharge_record` */

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `roleId` int(11) DEFAULT NULL COMMENT '角色主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

/*Table structure for table `user_transaction` */

DROP TABLE IF EXISTS `user_transaction`;

CREATE TABLE `user_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `createTime` datetime DEFAULT NULL COMMENT '用户交易时间',
  `transactionTypeId` int(11) DEFAULT NULL COMMENT '交易类型主键',
  `ttMoney` float(9,2) DEFAULT NULL COMMENT '交易金额',
  `ttRemark` varchar(255) DEFAULT NULL COMMENT '交易备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_transaction` */

/*Table structure for table `ss` */

DROP TABLE IF EXISTS `ss`;

/*!50001 DROP VIEW IF EXISTS `ss` */;
/*!50001 DROP TABLE IF EXISTS `ss` */;

/*!50001 CREATE TABLE  `ss`(
 `id` int(11) ,
 `timeName` varchar(255) 
)*/;

/*View structure for view ss */

/*!50001 DROP TABLE IF EXISTS `ss` */;
/*!50001 DROP VIEW IF EXISTS `ss` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ss` AS select `delivery_time`.`id` AS `id`,`delivery_time`.`timeName` AS `timeName` from `delivery_time` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
