
-- 用户表
CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 商品表
CREATE TABLE `goods` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock` int(3) NOT NULL,
  `img1` varchar(50) DEFAULT NULL,
  `img2` varchar(50) DEFAULT NULL,
  `img3` varchar(50) DEFAULT NULL,
  `img4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 购物车
CREATE TABLE `cart` (
  `id` varchar(10) NOT NULL,
  `gid` varchar(10) NOT NULL,
  `img` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `price` double(10,0) NOT NULL,
  `num` int(3) NOT NULL,
  KEY `cart_user` (`id`),
  CONSTRAINT `cart_user` FOREIGN KEY (`id`) REFERENCES `user` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



