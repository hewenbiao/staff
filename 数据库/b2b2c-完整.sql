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

/*Table structure for table `delivery_time` */

DROP TABLE IF EXISTS `delivery_time`;

CREATE TABLE `delivery_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `timeName` varchar(255) DEFAULT NULL COMMENT '配送时间名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `delivery_time` */

/*Table structure for table `discount_coupon` */

DROP TABLE IF EXISTS `discount_coupon`;

CREATE TABLE `discount_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `money` float(9,2) DEFAULT NULL COMMENT '优惠金额',
  `issue` varchar(50) DEFAULT NULL COMMENT '发行店铺',
  `use` float(9,2) DEFAULT NULL COMMENT '满足金额',
  `validTime` datetime DEFAULT NULL COMMENT '有效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `discount_coupon` */

/*Table structure for table `discount_coupon_state` */

DROP TABLE IF EXISTS `discount_coupon_state`;

CREATE TABLE `discount_coupon_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `stateName` varchar(20) DEFAULT NULL COMMENT '优惠券状态名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `discount_coupon_state` */

/*Table structure for table `distribution_way` */

DROP TABLE IF EXISTS `distribution_way`;

CREATE TABLE `distribution_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dbtName` varchar(50) DEFAULT NULL COMMENT '配送方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `distribution_way` */

/*Table structure for table `invoice_content` */

DROP TABLE IF EXISTS `invoice_content`;

CREATE TABLE `invoice_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(200) DEFAULT NULL COMMENT '发票内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoice_content` */

/*Table structure for table `invoice_type` */

DROP TABLE IF EXISTS `invoice_type`;

CREATE TABLE `invoice_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `invoiceType` varchar(50) DEFAULT NULL COMMENT '发票类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoice_type` */

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderId` int(11) DEFAULT NULL COMMENT '订单主键',
  `productId` int(11) DEFAULT NULL COMMENT '产品主键',
  `quantity` int(11) DEFAULT NULL COMMENT '产品数量',
  `cost` float(9,1) DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

/*Table structure for table `payment_status` */

DROP TABLE IF EXISTS `payment_status`;

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `statusName` varchar(50) DEFAULT NULL COMMENT '付款状态名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payment_status` */

/*Table structure for table `payment_way` */

DROP TABLE IF EXISTS `payment_way`;

CREATE TABLE `payment_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wayName` varchar(50) DEFAULT NULL COMMENT '支付方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payment_way` */

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
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`description`,`price`,`bazaarPrice`,`stock`,`categoryLevel1Id`,`categoryLevel2Id`,`categoryLevel3Id`,`fileName`,`salesVolume`,`evaluateSales`,`giveIntegral`,`model`,`colour`,`isDelete`) values (710,'海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保',NULL,500.0,600.0,200,NULL,NULL,NULL,'86_thumb_P_1437522610654.jpg',0,0,500,NULL,NULL,1);

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '产品分类名称',
  `parentId` int(11) DEFAULT NULL COMMENT '父级id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

/*Data for the table `product_category` */

insert  into `product_category`(`id`,`name`,`parentId`,`type`) values (618,'家用电器',0,1),(619,'手机、数码、通信',0,1),(620,'电脑、办公',0,1),(621,'家居、家具、家装、厨具',0,1),(622,'男装、女装、内衣、珠宝',0,1),(623,'个护化妆、清洁用品',0,1),(624,'酒类饮料',0,1),(625,'鞋靴、箱包、钟表、奢侈品 ',0,1),(626,'运动户外',0,1),(627,'汽车、汽车用品 ',0,1),(628,'母婴、玩具乐器',0,1),(629,'食品、酒类、生鲜、特产',0,1),(630,'营养保健',0,1),(631,'图书、音像、电子书',0,1),(632,'彩票、旅行、充值、票务 ',0,1),(633,'理财、众筹、白条、保险 ',0,1),(634,'大家电',618,2),(635,'生活电器',618,2),(636,'厨房电器',618,2),(637,'个护健康',618,2),(638,'热卖手机',619,2),(639,'热卖手机',619,2),(640,'数码影音',619,2),(641,'智能设备',619,2),(642,'家纺\r\n',621,2),(643,'家具',621,2),(644,'厨具',621,2),(645,'灯具',621,2),(646,'家装软饰',621,2),(647,'生活日用',621,2),(648,'女装馆',622,2),(649,'内衣馆',622,2),(650,'男装馆',622,2),(651,'户外鞋服',622,2),(652,'女鞋馆',622,2),(653,'箱包馆',622,2),(654,'香水彩妆',623,2),(655,'面部护肤',623,2),(656,'洗发护发',623,2),(657,'身体护肤',623,2),(658,'口腔护理',623,2),(659,'酒水',624,2),(660,'冲调饮品',624,2),(661,'饮料饮品',624,2),(662,'茗茶',624,2),(663,'孕婴奶粉',628,2),(664,'营养/辅食',628,2),(665,'孕婴洗护',628,2),(666,'喂养用品',628,2),(667,'车床/床品',628,2),(668,'孕妈专区',628,2),(669,'进口水果',629,2),(670,'糖果巧克力',629,2),(671,'牛奶乳品',629,2),(672,'坚果炒货',629,2),(673,'蜜饯果干',629,2),(674,'平板电视',634,3),(675,'空调冰箱',634,3),(676,'洗衣机',634,3),(677,'家庭影院',634,3),(678,'烟机/灶具',634,3),(679,'热水器',634,3),(680,'消毒柜/洗碗机',634,3),(681,'冷柜/冰吧',634,3),(682,'电风扇',635,3),(683,'净化器',635,3),(684,'加湿器',635,3),(685,'吸尘器',635,3),(686,'挂烫机/熨斗',635,3),(687,'取暖电器',635,3),(688,'饮水机',635,3),(689,'其它生活电器',635,3),(690,'电饭煲',636,3),(691,'微波炉',636,3),(692,'电磁炉',636,3),(693,'电饼铛/烧烤盘',636,3),(694,'电炖锅',636,3),(695,'果蔬解毒机',636,3),(696,'养生壶/煎药壶',636,3),(697,'其它厨房电器',636,3),(698,'剃须刀',637,3),(699,'电吹风',637,3),(700,'按摩椅',637,3),(701,'足浴盆',637,3),(702,'健康秤/厨房秤',637,3),(703,'血糖仪',637,3),(704,'计步器/脂肪检测',637,3),(705,'其它健康电器',637,3),(706,'三星盖乐世',638,3),(707,'iPhone',638,3),(708,'小米特供',638,3),(709,'魅族手机',638,3),(710,'华为荣耀',638,3),(711,'联通4G',638,3),(712,'电信4G',638,3),(713,'移动4G',638,3),(714,'电池',639,3),(715,'移动电源',639,3),(716,'蓝牙耳机',639,3),(717,'充电器',639,3),(718,'创意配件',639,3),(719,'手机饰品',639,3),(720,'手机耳机',639,3),(721,'保护套',639,3),(722,'数码相机',640,3),(723,'单反相机',640,3),(724,'拍立得',640,3),(725,'运动相机',640,3),(726,'摄像机',640,3),(727,'户外器材',640,3),(728,'数码相框',640,3),(729,'影棚器材',640,3),(730,'智能手环',641,3),(731,'智能手表',641,3),(732,'智能眼镜',641,3),(733,'运动跟踪器',641,3),(734,'智能家居',641,3),(735,'体感车',641,3),(736,'床品套件',642,3),(737,'被子',642,3),(738,'蚊帐',642,3),(739,'凉席',642,3),(740,'床单被罩',642,3),(741,'毛巾浴巾',642,3),(742,'床垫/床褥',642,3),(743,'窗帘/窗纱',642,3),(744,'卧室家具',643,3),(745,'客厅家具',643,3),(746,'餐厅家具',643,3),(747,'书房家具',643,3),(748,'储物家具',643,3),(749,'阳台/户外',643,3),(750,'沙发',643,3),(751,'鞋架/衣帽架',643,3),(752,'烹饪锅具',644,3),(753,'刀剪菜板',644,3),(754,'厨房配件',644,3),(755,'水具酒具',644,3),(756,'餐具',644,3),(757,'茶具/咖啡具',644,3),(758,'台灯',645,3),(759,'吸顶灯',645,3),(760,'筒灯射灯',645,3),(761,'LED灯',645,3),(762,'落地灯',645,3),(763,'应急灯/手电',645,3),(764,'装饰灯',645,3),(765,'吊灯',645,3),(766,'桌布/罩件',646,3),(767,'地毯地垫',646,3),(768,'沙发垫套/椅垫',646,3),(769,'帘艺隔断',646,3),(770,'相框/照片墙',646,3),(771,'装饰字画',646,3),(772,'墙贴/装饰贴',646,3),(773,'摆件花瓶',646,3),(774,'收纳用品',647,3),(775,'雨伞雨具',647,3),(776,'浴室用品',647,3),(777,'缝纫/针织用品',647,3),(778,'洗晒/熨烫',647,3),(779,'净化除味',647,3),(780,'连衣裙',648,3),(781,'连体裤',648,3),(782,'棉麻T恤',648,3),(783,'时尚套装',648,3),(784,'复古旗袍',648,3),(785,'牛仔裤',648,3),(786,'短外套',648,3),(787,'防晒衫',648,3),(788,'聚拢文胸',649,3),(789,'薄款文胸',649,3),(790,'无钢圈文胸',649,3),(791,'女士内裤',649,3),(792,'男士内裤',649,3),(793,'夏季睡衣',649,3),(794,'性感睡衣',649,3),(795,'瘦腿袜',649,3),(796,'休闲裤',650,3),(797,'牛仔裤',650,3),(798,'夹克',650,3),(799,'风衣',650,3),(800,'针织衫',650,3),(801,'长袖衬衫',650,3),(802,'休闲短裤',650,3),(803,'POLO衫',650,3),(804,'跑步鞋',651,3),(805,'篮球鞋',651,3),(806,'帆布鞋',651,3),(807,'羽毛球鞋',651,3),(808,'迷彩裤',651,3),(809,'沙滩鞋',651,3),(810,'钓鱼服',651,3),(811,'登山鞋',651,3),(812,'高跟凉拖',652,3),(813,'平底鞋',652,3),(814,'高跟鞋',652,3),(815,'坡跟单鞋',652,3),(816,'浅口单鞋',652,3),(817,'帆布鞋',652,3),(818,'乐福鞋',652,3),(819,'松糕鞋',652,3),(820,'单肩女包',653,3),(821,'手提女包',653,3),(822,'女士钱包',653,3),(823,'男士双肩',653,3),(824,'男士钱包',653,3),(825,'旅行箱',653,3),(826,'拉杆箱',653,3),(827,'拉杆包',653,3),(828,'香水',654,3),(829,'底妆',654,3),(830,'腮红',654,3),(831,'眼部',654,3),(832,'唇部',654,3),(833,'美甲',654,3),(834,'美容工具',654,3),(835,'套装',654,3),(836,'清洁',655,3),(837,'护肤',655,3),(838,'面膜',655,3),(839,'剃须',655,3),(840,'套装',655,3),(841,'洗发',656,3),(842,'护发',656,3),(843,'染发',656,3),(844,'造型',656,3),(845,'假发',656,3),(846,'套装',656,3),(847,'沐浴',657,3),(848,'润肤',657,3),(849,'颈部',657,3),(850,'手足',657,3),(851,'纤体塑形',657,3),(852,'美胸',657,3),(853,'套装',657,3),(854,'牙膏/牙粉',658,3),(855,'牙刷/牙线',658,3),(856,'漱口水',658,3),(857,'套装',658,3),(858,'白酒',659,3),(859,'啤酒',659,3),(860,'葡萄酒/果酒',659,3),(861,'黄酒/米酒',659,3),(862,'养生酒',659,3),(863,'预调酒',659,3),(864,'蜂蜜',660,3),(865,'成人奶粉',660,3),(866,'豆浆/豆奶粉',660,3),(867,'茶叶',660,3),(868,'奶茶',660,3),(869,'麦片谷物',660,3),(870,'咖啡',660,3),(871,'果味冲调',660,3),(872,'果蔬汁',661,3),(873,'茶饮料',661,3),(874,'碳酸饮料',661,3),(875,'功能饮料',661,3),(876,'纯牛奶',661,3),(877,'酸奶',661,3),(878,'风味奶',661,3),(879,'植物蛋白饮料',661,3),(880,'铁观音',662,3),(881,'普洱',662,3),(882,'龙井',662,3),(883,'绿茶',662,3),(884,'红茶',662,3),(885,'花果茶',662,3),(886,'养生茶',662,3),(887,'其他茶',662,3),(888,'特配奶粉',663,3),(889,'孕妈奶粉',663,3),(890,'pre段',663,3),(891,'1段',663,3),(892,'2段',663,3),(893,'3段',663,3),(894,'米粉',664,3),(895,'果汁/泥',664,3),(896,'面食类',664,3),(897,'宝宝零食',664,3),(898,'DHA',664,3),(899,'清火开胃',664,3),(900,'钙铁锌',664,3),(901,'益生菌',664,3),(902,'洗衣液/皂',665,3),(903,'宝宝沐浴',665,3),(904,'儿童防晒',665,3),(905,'防蚊/驱蚊',665,3),(906,'爽身粉',665,3),(907,'奶瓶清洗',665,3),(908,'孕妇护肤',665,3),(909,'奶嘴奶瓶',666,3),(910,'驱蚊用品',666,3),(911,'浴室用品',666,3),(912,'水壶/水杯',666,3),(913,'吸奶器',666,3),(914,'理发器',666,3),(915,'防溢乳垫',666,3),(916,'安全座椅',667,3),(917,'手推车',667,3),(918,'婴儿床',667,3),(919,'餐椅',667,3),(920,'三轮车',667,3),(921,'儿童家具',667,3),(922,'睡袋/抱被',667,3),(923,'凉席/蚊帐',667,3),(924,'孕妇裙',668,3),(925,'打底裤',668,3),(926,'防辐射服',668,3),(927,'腰凳',668,3),(928,'妈咪包',668,3),(929,'收腹带',668,3),(930,'哺乳文胸',668,3),(931,'孕妇内裤',668,3),(932,'释迦芭乐',669,3),(933,'樱桃车厘子',669,3),(934,'芒果桃李',669,3),(935,'龙眼荔枝',669,3),(936,'提子葡萄',669,3),(937,'奇异果猕猴桃',669,3),(938,'凤梨蓝莓',669,3),(939,'榴莲山竹',669,3),(940,'巧克力',670,3),(941,'口香糖',670,3),(942,'棒棒糖',670,3),(943,'软糖',670,3),(944,'奶糖',670,3),(945,'QQ糖',670,3),(946,'果冻',670,3),(947,'常温奶',671,3),(948,'乳饮料',671,3),(949,'儿童奶',671,3),(950,'酸奶',671,3),(951,'豆奶',671,3),(952,'低脂奶',671,3),(953,'全脂奶',671,3),(954,'成人奶粉',671,3),(955,'核桃',672,3),(956,'夏威夷果',672,3),(957,'碧根果',672,3),(958,'开心果',672,3),(959,'腰果',672,3),(960,'瓜子',672,3),(961,'花生',672,3),(962,'杏仁',672,3),(963,'红枣',673,3),(964,'莓类',673,3),(965,'葡萄干',673,3),(966,'芒果干',673,3),(967,'香蕉干',673,3),(968,'山楂片',673,3),(969,'橄榄',673,3),(970,'其他',673,3);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*Table structure for table `user_address` */

DROP TABLE IF EXISTS `user_address`;

CREATE TABLE `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) DEFAULT NULL COMMENT '用户主键',
  `consignee` varchar(255) DEFAULT NULL COMMENT '收货人',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `addressPhone` varchar(11) DEFAULT NULL COMMENT '收货电话号码',
  `postcode` int(10) DEFAULT NULL COMMENT '邮政编号',
  `isDefault` int(2) DEFAULT NULL COMMENT '是否是默认地址1：yes，0：no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_address` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_discount_coupon` */

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
