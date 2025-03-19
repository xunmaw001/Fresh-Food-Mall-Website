/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : ssmz4664

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-13 14:00:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605246946368 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2020-11-13 12:43:08', '1', '云南省昆明市宜良县汤池街道下竹园', '小吴', '16456589788', '是');
INSERT INTO `address` VALUES ('2', '2020-11-13 12:43:08', '2', '地址2', '收货人2', '电话2', '是否默认地址[是/否]2');
INSERT INTO `address` VALUES ('3', '2020-11-13 12:43:08', '3', '地址3', '收货人3', '电话3', '是否默认地址[是/否]3');
INSERT INTO `address` VALUES ('1605246946367', '2020-11-13 13:55:46', '1605246895317', '四川省阿坝藏族羌族自治州马尔康市松岗镇', '小刘', '16549878988', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'xinpinshangshi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605247028673 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '2020-11-13 12:43:08', '商品表名1', '1', '1', '商品名称1', 'http://localhost:8080/ssmz4664/upload/cart_picture1.jpg', '1', '1', '1');
INSERT INTO `cart` VALUES ('2', '2020-11-13 12:43:08', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/ssmz4664/upload/cart_picture2.jpg', '2', '2', '2');
INSERT INTO `cart` VALUES ('3', '2020-11-13 12:43:08', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/ssmz4664/upload/cart_picture3.jpg', '3', '3', '3');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605247168743 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-11-13 12:43:08', '1', '1', '提问1', '回复1', '0');
INSERT INTO `chat` VALUES ('2', '2020-11-13 12:43:08', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-11-13 12:43:08', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('1605245889641', '2020-11-13 13:38:09', '1', null, '年后', null, '0');
INSERT INTO `chat` VALUES ('1605245892995', '2020-11-13 13:38:12', '1', null, '你好', null, '0');
INSERT INTO `chat` VALUES ('1605246868416', '2020-11-13 13:54:28', '1', '1', null, '你好  有什么帮到您', null);
INSERT INTO `chat` VALUES ('1605247168742', '2020-11-13 13:59:28', '1605246895317', null, '用户在这里跟管理员咨询', null, '1');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '2020-11-13 12:43:08', 'picture1', 'http://localhost:8080/ssmz4664/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', '2020-11-13 12:43:08', 'picture2', 'http://localhost:8080/ssmz4664/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', '2020-11-13 12:43:08', 'picture3', 'http://localhost:8080/ssmz4664/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', '2020-11-13 12:43:08', 'picture4', 'http://localhost:8080/ssmz4664/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', '2020-11-13 12:43:08', 'picture5', 'http://localhost:8080/ssmz4664/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', '2020-11-13 12:43:08', 'homepage', null);

-- ----------------------------
-- Table structure for discussshangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605247023938 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------
INSERT INTO `discussshangpinxinxi` VALUES ('1', '2020-11-13 12:43:08', '1', '评论内容1', '1');
INSERT INTO `discussshangpinxinxi` VALUES ('2', '2020-11-13 12:43:08', '2', '评论内容2', '2');
INSERT INTO `discussshangpinxinxi` VALUES ('3', '2020-11-13 12:43:08', '3', '评论内容3', '3');
INSERT INTO `discussshangpinxinxi` VALUES ('1605247023937', '2020-11-13 13:57:03', '2', '1', '1605246895317');

-- ----------------------------
-- Table structure for discussxinpinshangshi
-- ----------------------------
DROP TABLE IF EXISTS `discussxinpinshangshi`;
CREATE TABLE `discussxinpinshangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新品上市评论表';

-- ----------------------------
-- Records of discussxinpinshangshi
-- ----------------------------
INSERT INTO `discussxinpinshangshi` VALUES ('1', '2020-11-13 12:43:08', '1', '评论内容1', '1');
INSERT INTO `discussxinpinshangshi` VALUES ('2', '2020-11-13 12:43:08', '2', '评论内容2', '2');
INSERT INTO `discussxinpinshangshi` VALUES ('3', '2020-11-13 12:43:08', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for discusszhekoushangpin
-- ----------------------------
DROP TABLE IF EXISTS `discusszhekoushangpin`;
CREATE TABLE `discusszhekoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='折扣商品评论表';

-- ----------------------------
-- Records of discusszhekoushangpin
-- ----------------------------
INSERT INTO `discusszhekoushangpin` VALUES ('1', '2020-11-13 12:43:08', '1', '评论内容1', '1');
INSERT INTO `discusszhekoushangpin` VALUES ('2', '2020-11-13 12:43:08', '2', '评论内容2', '2');
INSERT INTO `discusszhekoushangpin` VALUES ('3', '2020-11-13 12:43:08', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2020-11-13 12:43:08', '标题1', 'http://localhost:8080/ssmz4664/upload/1605245712731.jpg', '<p>内容1</p>');
INSERT INTO `news` VALUES ('2', '2020-11-13 12:43:08', '标题2', 'http://localhost:8080/ssmz4664/upload/1605245723035.jpg', '<p>内容2</p>');
INSERT INTO `news` VALUES ('3', '2020-11-13 12:43:08', '标题3', 'http://localhost:8080/ssmz4664/upload/1605245732859.jpg', '<p>内容3</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'xinpinshangshi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1605247050575 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2020-11-13 12:43:08', '订单id1', '商品表名1', '1', '1', '商品名称1', 'http://localhost:8080/ssmz4664/upload/orders_picture1.jpg', '1', '1', '1', '1', '1', '1', '状态1', '地址1');
INSERT INTO `orders` VALUES ('2', '2020-11-13 12:43:08', '订单id2', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/ssmz4664/upload/orders_picture2.jpg', '2', '2', '2', '2', '2', '2', '状态2', '地址2');
INSERT INTO `orders` VALUES ('3', '2020-11-13 12:43:08', '订单id3', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/ssmz4664/upload/orders_picture3.jpg', '3', '3', '3', '3', '3', '3', '状态3', '地址3');
INSERT INTO `orders` VALUES ('1605245860617', '2020-11-13 13:37:39', '2020111313345591700494', 'shangpinxinxi', '1', '3', '商品名称3', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian3.jpg', '1', '20', '20', '20', '20', '1', '已发货', '云南省昆明市宜良县汤池街道下竹园');
INSERT INTO `orders` VALUES ('1605245873850', '2020-11-13 13:37:53', '202011131335972403954', 'zhekoushangpin', '1', '1605245478149', '商品名称1', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian1.jpg', '1', '18', '18', '18', '18', '1', '已支付', '云南省昆明市宜良县汤池街道下竹园');
INSERT INTO `orders` VALUES ('1605247041873', '2020-11-13 13:57:21', '2020111313572120942207', 'zhekoushangpin', '1605246895317', '1605246810948', '商品名称3', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian3.jpg', '1', '16', '16', '16', '16', '1', '已完成', '四川省阿坝藏族羌族自治州马尔康市松岗镇');
INSERT INTO `orders` VALUES ('1605247050574', '2020-11-13 13:57:29', '2020111313572967316490', 'shangpinxinxi', '1605246895317', '2', '商品名称2', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian2.jpg', '3', '68', '68', '204', '204', '1', '已完成', '四川省阿坝藏族羌族自治州马尔康市松岗镇');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1605245662937 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('1', '2020-11-13 12:43:08', '国产水果');
INSERT INTO `shangpinfenlei` VALUES ('2', '2020-11-13 12:43:08', '进口水果');
INSERT INTO `shangpinfenlei` VALUES ('3', '2020-11-13 12:43:08', '牛肉');
INSERT INTO `shangpinfenlei` VALUES ('1605245662936', '2020-11-13 13:34:22', '其它');

-- ----------------------------
-- Table structure for shangpinleixing
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1605246741202 DEFAULT CHARSET=utf8 COMMENT='商品类型';

-- ----------------------------
-- Records of shangpinleixing
-- ----------------------------
INSERT INTO `shangpinleixing` VALUES ('1', '2020-11-13 12:43:08', '新鲜水果');
INSERT INTO `shangpinleixing` VALUES ('2', '2020-11-13 12:43:08', '鲜肉蛋禽');
INSERT INTO `shangpinleixing` VALUES ('3', '2020-11-13 12:43:08', '速食速冻');
INSERT INTO `shangpinleixing` VALUES ('1605245614043', '2020-11-13 13:33:33', '粮油副食');
INSERT INTO `shangpinleixing` VALUES ('1605245622765', '2020-11-13 13:33:42', '水产海鲜');
INSERT INTO `shangpinleixing` VALUES ('1605246741201', '2020-11-13 13:52:20', '酒水');

-- ----------------------------
-- Table structure for shangpinpingjia
-- ----------------------------
DROP TABLE IF EXISTS `shangpinpingjia`;
CREATE TABLE `shangpinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinpingfen` varchar(200) DEFAULT NULL COMMENT '商品评分',
  `fuwupingfen` varchar(200) DEFAULT NULL COMMENT '服务评分',
  `wuliupingfen` varchar(200) DEFAULT NULL COMMENT '物流评分',
  `pingjia` longtext COMMENT '评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605247145429 DEFAULT CHARSET=utf8 COMMENT='商品评价';

-- ----------------------------
-- Records of shangpinpingjia
-- ----------------------------
INSERT INTO `shangpinpingjia` VALUES ('1', '2020-11-13 12:43:08', '商品名称1', '类型1', 'http://localhost:8080/ssmz4664/upload/shangpinpingjia_tupian1.jpg', '1', '1', '1', '评价1', '2020-11-13', '备注1', '用户名1', '否', '');
INSERT INTO `shangpinpingjia` VALUES ('2', '2020-11-13 12:43:08', '商品名称2', '类型2', 'http://localhost:8080/ssmz4664/upload/shangpinpingjia_tupian2.jpg', '1', '1', '1', '评价2', '2020-11-13', '备注2', '用户名2', '否', '');
INSERT INTO `shangpinpingjia` VALUES ('3', '2020-11-13 12:43:08', '商品名称3', '类型3', 'http://localhost:8080/ssmz4664/upload/shangpinpingjia_tupian3.jpg', '1', '1', '1', '评价3', '2020-11-13', '备注3', '用户名3', '否', '');
INSERT INTO `shangpinpingjia` VALUES ('1605245912297', '2020-11-13 13:38:31', '商品名称1', '类型1', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian1.jpg', '4', '4', '4', '<p>11</p>', '2020-11-18', '', '001', '是', '收到 谢谢');
INSERT INTO `shangpinpingjia` VALUES ('1605247145428', '2020-11-13 13:59:05', '商品名称3', '类型3', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian3.jpg', '5', '5', '5', '<p>非常好</p>', null, '', '000', '', '');

-- ----------------------------
-- Table structure for shangpinxilei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxilei`;
CREATE TABLE `shangpinxilei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xilei` varchar(200) NOT NULL COMMENT '细类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xilei` (`xilei`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品细类';

-- ----------------------------
-- Records of shangpinxilei
-- ----------------------------
INSERT INTO `shangpinxilei` VALUES ('1', '2020-11-13 12:43:08', '其它');
INSERT INTO `shangpinxilei` VALUES ('2', '2020-11-13 12:43:08', '精品蔬菜');
INSERT INTO `shangpinxilei` VALUES ('3', '2020-11-13 12:43:08', '豆类制品');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `xilei` varchar(200) DEFAULT NULL COMMENT '细类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1', '2020-11-13 12:43:08', '商品名称1', '类型1', '分类1', '细类1', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian1.jpg', '规格1', '产地1', '品牌1', '<p>详情1</p>', '2020-11-13 13:30:51', '2', '22');
INSERT INTO `shangpinxinxi` VALUES ('2', '2020-11-13 12:43:08', '商品名称2', '类型2', '分类2', '细类2', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian2.jpg', '规格2', '产地2', '品牌2', '<p>详情2</p>', '2020-11-13 13:57:29', '9', '68');
INSERT INTO `shangpinxinxi` VALUES ('3', '2020-11-13 12:43:08', '商品名称3', '类型3', '分类3', '细类3', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian3.jpg', '规格3', '产地3', '品牌3', '<p>详情3</p>', '2020-11-13 13:37:39', '6', '20');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605247027322 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1', '2020-11-13 12:43:08', '1', '1', '表名1', '收藏名称1', 'http://localhost:8080/ssmz4664/upload/storeup_picture1.jpg');
INSERT INTO `storeup` VALUES ('2', '2020-11-13 12:43:08', '2', '2', '表名2', '收藏名称2', 'http://localhost:8080/ssmz4664/upload/storeup_picture2.jpg');
INSERT INTO `storeup` VALUES ('3', '2020-11-13 12:43:08', '3', '3', '表名3', '收藏名称3', 'http://localhost:8080/ssmz4664/upload/storeup_picture3.jpg');
INSERT INTO `storeup` VALUES ('1605245882467', '2020-11-13 13:38:01', '1', '3', 'xinpinshangshi', '商品名称3', 'http://localhost:8080/ssmz4664/upload/xinpinshangshi_tupian3.jpg');
INSERT INTO `storeup` VALUES ('1605247027321', '2020-11-13 13:57:06', '1605246895317', '2', 'shangpinxinxi', '商品名称2', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian2.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'u7rfy492jp2hzhwb7g7vie7yx67623o1', '2020-11-13 13:30:26', '2020-11-13 14:58:19');
INSERT INTO `token` VALUES ('2', '1', '001', 'yonghu', '用户', 'jqh02jgppqmltnje7xcdbp757hs0bqwo', '2020-11-13 13:36:52', '2020-11-13 14:50:50');
INSERT INTO `token` VALUES ('3', '1605246895317', '000', 'yonghu', '用户', 'q0tg6r02yd36gs6tflmkj5h3irpvmn1f', '2020-11-13 13:55:00', '2020-11-13 14:59:14');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '管理员', '2020-11-13 12:43:08');

-- ----------------------------
-- Table structure for xinpinshangshi
-- ----------------------------
DROP TABLE IF EXISTS `xinpinshangshi`;
CREATE TABLE `xinpinshangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `xilei` varchar(200) DEFAULT NULL COMMENT '细类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `xiangqing` longtext COMMENT '详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新品上市';

-- ----------------------------
-- Records of xinpinshangshi
-- ----------------------------
INSERT INTO `xinpinshangshi` VALUES ('1', '2020-11-13 12:43:08', '商品名称1', '类型1', '分类1', '细类1', 'http://localhost:8080/ssmz4664/upload/xinpinshangshi_tupian1.jpg', '规格1', '品牌1', '产地1', '<p>详情1</p>', '35');
INSERT INTO `xinpinshangshi` VALUES ('2', '2020-11-13 12:43:08', '商品名称2', '类型2', '分类2', '细类2', 'http://localhost:8080/ssmz4664/upload/xinpinshangshi_tupian2.jpg', '规格2', '品牌2', '产地2', '<p>详情2</p>', '20');
INSERT INTO `xinpinshangshi` VALUES ('3', '2020-11-13 12:43:08', '商品名称3', '类型3', '分类3', '细类3', 'http://localhost:8080/ssmz4664/upload/xinpinshangshi_tupian3.jpg', '规格3', '品牌3', '产地3', '<p>详情3</p>', '30');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1605246895318 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-11-13 12:43:08', '001', '001', '小吴', '男', 'http://localhost:8080/ssmz4664/upload/yonghu_touxiang1.jpg', '13823888881', '773890001@qq.com', '1163');
INSERT INTO `yonghu` VALUES ('2', '2020-11-13 12:43:08', '002', '002', '小邹', '女', 'http://localhost:8080/ssmz4664/upload/yonghu_touxiang2.jpg', '13823888882', '773890002@qq.com', '2');
INSERT INTO `yonghu` VALUES ('3', '2020-11-13 12:43:08', '003', '003', '小叶', '女', 'http://localhost:8080/ssmz4664/upload/yonghu_touxiang3.jpg', '13823888883', '773890003@qq.com', '3');
INSERT INTO `yonghu` VALUES ('1605246895317', '2020-11-13 13:54:55', '000', '000', '小刘', '女', 'http://localhost:8080/ssmz4664/upload/1605246910137.jpg', '16549878988', '4612@123.com', '1780');

-- ----------------------------
-- Table structure for zhekoushangpin
-- ----------------------------
DROP TABLE IF EXISTS `zhekoushangpin`;
CREATE TABLE `zhekoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `xilei` varchar(200) DEFAULT NULL COMMENT '细类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `xiangqing` longtext COMMENT '详情',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605246810949 DEFAULT CHARSET=utf8 COMMENT='折扣商品';

-- ----------------------------
-- Records of zhekoushangpin
-- ----------------------------
INSERT INTO `zhekoushangpin` VALUES ('1', '2020-11-13 12:43:08', '商品名称1', '类型1', '分类1', '细类1', 'http://localhost:8080/ssmz4664/upload/zhekoushangpin_tupian1.jpg', '规格1', '产地1', '品牌1', '详情1', '2020-11-13 12:43:08', '1', '1', '1');
INSERT INTO `zhekoushangpin` VALUES ('2', '2020-11-13 12:43:08', '商品名称2', '类型2', '分类2', '细类2', 'http://localhost:8080/ssmz4664/upload/zhekoushangpin_tupian2.jpg', '规格2', '产地2', '品牌2', '详情2', '2020-11-13 12:43:08', '2', '2', '2');
INSERT INTO `zhekoushangpin` VALUES ('3', '2020-11-13 12:43:08', '商品名称3', '类型3', '分类3', '细类3', 'http://localhost:8080/ssmz4664/upload/zhekoushangpin_tupian3.jpg', '规格3', '产地3', '品牌3', '详情3', '2020-11-13 12:43:08', '3', '3', '3');
INSERT INTO `zhekoushangpin` VALUES ('1605245478149', '2020-11-13 13:31:17', '商品名称1', '类型1', '分类1', '细类1', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian1.jpg', '规格1', '产地1', '品牌1', '<p>详情1</p>', '2020-11-17 00:00:00', '18', '1', '19');
INSERT INTO `zhekoushangpin` VALUES ('1605246810948', '2020-11-13 13:53:30', '商品名称3', '类型3', '分类3', '细类3', 'http://localhost:8080/ssmz4664/upload/shangpinxinxi_tupian3.jpg', '规格3', '产地3', '品牌3', '<p>倒计时代表时间结束后  这个折扣的就买不了了</p>', '2020-11-18 00:00:00', '16', '1', '29');
