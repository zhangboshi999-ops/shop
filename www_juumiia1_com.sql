-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-08-28 19:15:35
-- 服务器版本： 5.7.40-log
-- PHP 版本： 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `www_juumiia1_com`
--

-- --------------------------------------------------------

--
-- 表的结构 `xy_ad`
--

CREATE TABLE `xy_ad` (
  `ad_id` int(10) UNSIGNED NOT NULL,
  `ad_logo` varchar(100) NOT NULL,
  `ad_url` varchar(100) NOT NULL,
  `ad_type` varchar(10) NOT NULL DEFAULT 'pc' COMMENT '广告类型(pc/h5)',
  `ad_position` varchar(15) NOT NULL,
  `ad_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '广告显示状态',
  `ad_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_ad`
--

INSERT INTO `xy_ad` (`ad_id`, `ad_logo`, `ad_url`, `ad_type`, `ad_position`, `ad_state`, `ad_order`, `category_id`) VALUES
(33, 'attachment/2026-03/2026030115103017721v.jpg', '', 'pc', 'index_jdt', 1, 0, 0),
(32, 'attachment/2026-03/2026030115102017703q.jpg', '', 'pc', 'index_jdt', 1, 0, 0),
(31, 'attachment/2026-03/2026030115100917756d.gif', '', 'pc', 'index_jdt', 1, 0, 0),
(30, 'attachment/2026-03/2026030115093617773j.jpg', '', 'h5', 'index_jdt', 1, 0, 0),
(29, 'attachment/2026-03/2026030115092817787w.jpg', '', 'h5', 'index_jdt', 1, 0, 0),
(28, 'attachment/2026-03/2026030115091617751a.gif', '', 'h5', 'index_jdt', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_admin`
--

CREATE TABLE `xy_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL COMMENT '管理id',
  `admin_name` varchar(20) NOT NULL COMMENT '管理名',
  `admin_pw` varchar(32) NOT NULL COMMENT '管理密码',
  `admin_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理注册时间',
  `admin_ltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理上次登录时间',
  `adminlevel_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_admin`
--

INSERT INTO `xy_admin` (`admin_id`, `admin_name`, `admin_pw`, `admin_atime`, `admin_ltime`, `adminlevel_id`) VALUES
(1, 'admin', '662be8a28444fe9b80595f92b8493fc4', 1269059337, 1780658371, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_adminlevel`
--

CREATE TABLE `xy_adminlevel` (
  `adminlevel_id` smallint(5) UNSIGNED NOT NULL COMMENT '管理等级id',
  `adminlevel_name` varchar(20) NOT NULL COMMENT '管理等级名称',
  `adminlevel_modact` text NOT NULL COMMENT '管理等级权限',
  `adminlevel_menumark` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_adminlevel`
--

INSERT INTO `xy_adminlevel` (`adminlevel_id`, `adminlevel_name`, `adminlevel_modact`, `adminlevel_menumark`) VALUES
(1, '总管理员', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_article`
--

CREATE TABLE `xy_article` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `article_name` varchar(100) NOT NULL,
  `article_text` text NOT NULL,
  `article_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article_clicknum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_article`
--

INSERT INTO `xy_article` (`article_id`, `article_name`, `article_text`, `article_atime`, `article_clicknum`, `class_id`) VALUES
(1, '关于逍遥', '<p style=\"text-align: center;\">这是小逍遥商城的第一篇公告。<br/></p><p>什么玩意都没有啊！</p><p>是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\"><img src=\"/attachment/2020-01/1579167053.jpg\" title=\"1579167053.jpg\" alt=\"11 - 副本.jpg\"/></p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p style=\"white-space: normal;\">这是小逍遥商城的第一篇公告。</p><p style=\"white-space: normal;\">什么玩意都没有啊！</p><p style=\"white-space: normal;\">是吗？我不知道啊，真的是这样吗？ssssss</p><p><br/></p>', 1576488300, 1756, 1),
(2, '逍遥B2C商城系统v1.0版演示站上线', '<p>逍遥B2C商城系统v1.0版演示站上线</p><p><video class=\"edui-upload-video  vjs-default-skin video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"http://test.szkandk.cn/xy/attachment/2020-03/2020033117504815824r.mp4\" data-setup=\"{}\"></video></p>', 1576488360, 1731, 1),
(5, '购物指南', '填写购物指南吧', 1576488540, 56, 4),
(6, '支付方式', '在这里填写支付方式', 1576488540, 58, 4),
(7, '常见问题', '在这里填写常见问题', 1576488540, 42, 4),
(8, '配送时间及运费', '在这里填写配送时间及运费', 1576488540, 294, 5),
(9, '验货与签收', '<a target=\"_blank\" href=\"http://www.phpshe.com\" title=\"PHPSHE/haoshop商城系统\">请在此填写相关内容</a>', 1406564220, 178, 5),
(10, '订单查询', '在这里填写订单查询<span id=\"__kindeditor_bookmark_start_1__\"></span>', 1576488540, 34, 5),
(11, '售后政策', '在这里填写售后政策', 1576488600, 66, 6),
(12, '退货说明', '<a target=\"_blank\" href=\"http://www.phpshe.com\" title=\"PHPSHE/haoshop商城系统\">请在此填写相关内容</a>', 1406564400, 7, 6),
(13, '取消订单', '在这里填写取消订单操作说明', 1576488600, 13, 6),
(14, '公司简介', '在这里填写公司简介', 1576488600, 148, 7),
(15, '联系我们', '在这里填写联系我们', 1576488600, 39, 7),
(16, '诚聘英才', '在这里填写内容', 1576488660, 61, 7),
(17, '货到付款', '在这里填写货到付款说明', 1576488660, 63, 12),
(18, '在线支付', '在这里填写在线支付内容', 1576488660, 14, 12),
(19, '邮局汇款', '在这里填写邮局汇款', 1576488660, 18, 12),
(20, '公司转账', '在这里填写公司转帐内容', 1576488660, 4, 12);

-- --------------------------------------------------------

--
-- 表的结构 `xy_ask`
--

CREATE TABLE `xy_ask` (
  `ask_id` int(10) UNSIGNED NOT NULL,
  `ask_text` text NOT NULL,
  `ask_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ask_replytext` text NOT NULL,
  `ask_replytime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ask_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) NOT NULL COMMENT '商品名称',
  `product_logo` varchar(100) NOT NULL COMMENT '商品logo',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_ip` char(15) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_brand`
--

CREATE TABLE `xy_brand` (
  `brand_id` smallint(5) UNSIGNED NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `brand_logo` varchar(255) NOT NULL COMMENT '品牌图片',
  `brand_text` varchar(255) NOT NULL COMMENT '品牌介绍',
  `brand_word` char(1) NOT NULL COMMENT '品牌首字母',
  `brand_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_brand`
--

INSERT INTO `xy_brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_text`, `brand_word`, `brand_order`) VALUES
(4, '九阳', 'attachment/brand/4.jpg', '九阳', 'J', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_cart`
--

CREATE TABLE `xy_cart` (
  `cart_id` int(10) UNSIGNED NOT NULL,
  `cart_act` varchar(10) NOT NULL DEFAULT 'cart' COMMENT '购买方式(cart加入购物车/buy立即购买)',
  `cart_type` varchar(10) NOT NULL,
  `cart_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_guid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '唯一id',
  `product_name` varchar(100) NOT NULL,
  `product_rule` varchar(255) NOT NULL COMMENT '规格数据集',
  `product_logo` varchar(100) NOT NULL,
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `huodong_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pintuan_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_cart`
--

-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- (cleared by user request: data of `xy_cart`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_cashout`
--

CREATE TABLE `xy_cashout` (
  `cashout_id` int(10) UNSIGNED NOT NULL,
  `cashout_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `cashout_fee` decimal(5,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '提现手续费',
  `cashout_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cashout_ptime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结算日期',
  `cashout_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cashout_ip` char(15) NOT NULL COMMENT '用户ip',
  `cashout_bankname` varchar(20) NOT NULL,
  `cashout_banknum` varchar(50) NOT NULL,
  `cashout_banktname` varchar(10) NOT NULL,
  `cashout_bankaddress` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_cashout`
--

-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- (cleared by user request: data of `xy_cashout`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_category`
--

CREATE TABLE `xy_category` (
  `category_id` smallint(5) UNSIGNED NOT NULL,
  `category_pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `category_name` varchar(30) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_keys` varchar(255) NOT NULL,
  `category_desc` varchar(255) NOT NULL,
  `category_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `category_icon` varchar(150) DEFAULT NULL COMMENT '分类图标'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_category`
--

INSERT INTO `xy_category` (`category_id`, `category_pid`, `category_name`, `category_title`, `category_keys`, `category_desc`, `category_order`, `category_icon`) VALUES
(1, 0, 'Product repurchase', '', '', '', 0, ''),
(4, 3, '奶粉', '', '', '', 0, 'attachment/2020-02/2020021122385715894x.jpg'),
(5, 3, '营养辅食', '', '', '', 0, 'attachment/2020-02/2020021122393915818c.jpg'),
(11, 10, '厨房小电', '', '', '', 0, 'attachment/2020-02/2020021117430815821c.jpg'),
(12, 10, '个护健康', '', '', '', 0, 'attachment/2020-02/2020021117434915896p.png'),
(13, 10, '冰箱', '', '', '', 0, 'attachment/2020-02/2020021117442515813d.jpg'),
(15, 14, '电脑整机', '', '', '', 0, 'attachment/2020-02/2020021117481215843u.jpg'),
(16, 14, '外设产品', '', '', '', 0, 'attachment/2020-02/2020021117485115816v.jpg'),
(17, 14, '电脑配件', '', '', '', 0, 'attachment/2020-02/2020021117493215838w.jpg'),
(19, 18, '拔草推荐', '', '', '', 0, 'attachment/2020-02/2020021117542915868l.jpg'),
(20, 18, '面部护肤', '', '', '', 0, 'attachment/2020-02/2020021117550115857r.jpg'),
(21, 18, '男士护肤', '', '', '', 0, 'attachment/2020-02/2020021122373315841d.jpg'),
(22, 18, '香水', '', '', '', 0, 'attachment/2020-02/2020021122380715879h.jpg'),
(24, 23, '文学', '', '', '', 0, 'attachment/2020-02/2020021122403515824e.jpg'),
(25, 23, '童书', '', '', '', 0, 'attachment/2020-02/2020021122410815859h.jpg'),
(26, 23, '教材辅导', '', '', '', 0, 'attachment/2020-02/2020021122413515877k.jpg'),
(28, 27, '健身训练', '', '', '', 0, 'attachment/2020-02/2020021122422915876e.jpg'),
(29, 27, '运动服饰', '', '', '', 0, 'attachment/2020-02/2020021122425615815f.jpg'),
(30, 27, '户外装备', '', '', '', 0, 'attachment/2020-02/2020021122432915857u.jpg'),
(32, 31, '休闲食品', '', '', '', 0, 'attachment/2020-02/2020021122442015835j.jpg'),
(33, 31, '新鲜水果', '', '', '', 0, 'attachment/2020-02/2020021122453515889i.jpg'),
(34, 31, '粮油调味', '', '', '', 0, 'attachment/2020-02/2020021122460715855m.jpg'),
(36, 35, '汽车装饰', '', '', '', 0, 'attachment/2020-02/2020021122512915841n.jpg'),
(37, 35, '美容清洗', '', '', '', 0, 'attachment/2020-02/2020021122520315843x.jpg'),
(38, 35, '车载电器', '', '', '', 0, 'attachment/2020-02/2020021122523015896b.jpg'),
(39, 35, '维修保养', '', '', '', 0, 'attachment/2020-02/2020021122530615854s.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `xy_class`
--

CREATE TABLE `xy_class` (
  `class_id` smallint(5) UNSIGNED NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `class_type` varchar(10) NOT NULL DEFAULT 'news' COMMENT '分类类型',
  `class_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_class`
--

INSERT INTO `xy_class` (`class_id`, `class_name`, `class_type`, `class_order`) VALUES
(1, '网站公告', 'news', 0),
(2, '新闻动态', 'news', 1),
(4, '用户指南', 'help', 1),
(5, '配送方式', 'help', 2),
(6, '售后服务', 'help', 4),
(7, '关于我们', 'help', 5),
(12, '支付方式', 'help', 3);

-- --------------------------------------------------------

--
-- 表的结构 `xy_collect`
--

CREATE TABLE `xy_collect` (
  `collect_id` int(10) UNSIGNED NOT NULL,
  `collect_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_collect`
--

-- (cleared by user request: data of `xy_collect`)
-- (cleared by user request: data of `xy_collect`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_comment`
--

CREATE TABLE `xy_comment` (
  `comment_id` int(10) UNSIGNED NOT NULL COMMENT '留言id',
  `comment_star` tinyint(1) UNSIGNED NOT NULL DEFAULT '5' COMMENT '评价星级',
  `comment_text` text NOT NULL COMMENT '留言内容',
  `comment_logo` text NOT NULL COMMENT '评价晒图',
  `comment_atime` int(10) NOT NULL DEFAULT '0' COMMENT '留言时间',
  `comment_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否回复(0/1)',
  `comment_reply_text` text NOT NULL COMMENT '回复内容',
  `comment_reply_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '回复时间',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单id',
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) NOT NULL COMMENT '商品名称',
  `product_logo` varchar(100) NOT NULL COMMENT '商品logo',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '接受方用户id',
  `user_name` varchar(20) NOT NULL,
  `user_logo` varchar(100) NOT NULL COMMENT '用户头像',
  `user_ip` char(15) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_express`
--

CREATE TABLE `xy_express` (
  `express_id` smallint(5) UNSIGNED NOT NULL COMMENT '快递模板id',
  `express_name` varchar(30) NOT NULL COMMENT '快递模板名',
  `express_logo` varchar(100) NOT NULL COMMENT '快递模板logo',
  `express_tag` text NOT NULL COMMENT '快递模板信息',
  `express_width` int(10) UNSIGNED NOT NULL,
  `express_height` int(10) UNSIGNED NOT NULL,
  `express_width_px` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '像素宽',
  `express_height_px` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '像素高',
  `express_x` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'x轴偏移量',
  `express_y` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'y轴偏移量',
  `express_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `express_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '启用状态',
  `express_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '255'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_getpw`
--

CREATE TABLE `xy_getpw` (
  `getpw_id` int(10) UNSIGNED NOT NULL,
  `getpw_token` char(32) NOT NULL,
  `getpw_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `getpw_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '绑定日期',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_huodong`
--

CREATE TABLE `xy_huodong` (
  `huodong_id` int(10) UNSIGNED NOT NULL COMMENT '活动自增id',
  `huodong_tag` varchar(10) NOT NULL COMMENT '活动价格标签',
  `huodong_type` varchar(10) NOT NULL DEFAULT 'zhekou' COMMENT '活动类型(zhekou/pintuan)',
  `huodong_desc` varchar(30) NOT NULL COMMENT '活动描述',
  `huodong_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动开始日期',
  `huodong_stime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `huodong_etime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动结束日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_huodong`
--

INSERT INTO `xy_huodong` (`huodong_id`, `huodong_tag`, `huodong_type`, `huodong_desc`, `huodong_atime`, `huodong_stime`, `huodong_etime`) VALUES
(49, '限时拼团', 'pintuan', '', 1582010452, 1582010400, 1608880800);

-- --------------------------------------------------------

--
-- 表的结构 `xy_huodongdata`
--

CREATE TABLE `xy_huodongdata` (
  `huodongdata_id` int(10) UNSIGNED NOT NULL,
  `huodong_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `huodong_tag` varchar(10) NOT NULL,
  `huodong_type` varchar(10) NOT NULL COMMENT '活动类型(zhekou/pintuan)',
  `huodong_stime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `huodong_etime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_name` varchar(100) NOT NULL,
  `product_logo` varchar(100) NOT NULL,
  `product_smoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `product_zhe` float UNSIGNED NOT NULL DEFAULT '0' COMMENT '折扣率',
  `product_ptnum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '拼团人数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_iplog`
--

CREATE TABLE `xy_iplog` (
  `iplog_id` int(10) UNSIGNED NOT NULL COMMENT 'ip记录id',
  `iplog_ip` char(15) NOT NULL COMMENT 'ip记录ip',
  `iplog_ipname` varchar(20) NOT NULL COMMENT '验证码上传省份',
  `iplog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ip记录时间',
  `iplog_adate` date NOT NULL COMMENT 'ip记录日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_iplog`
--

-- (cleared by user request: data of `xy_iplog`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_link`
--

CREATE TABLE `xy_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT '友情链接id',
  `link_name` varchar(50) NOT NULL COMMENT '友情链接名称',
  `link_url` varchar(100) NOT NULL COMMENT '友情链接url',
  `link_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '友情链接排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_menu`
--

CREATE TABLE `xy_menu` (
  `menu_id` smallint(5) UNSIGNED NOT NULL COMMENT '导航id',
  `menu_name` varchar(20) NOT NULL COMMENT '导航名称',
  `menu_type` char(3) NOT NULL DEFAULT 'sys' COMMENT '导航类型',
  `menu_url` varchar(50) NOT NULL COMMENT '导航链接',
  `menu_target` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '新标签打开',
  `menu_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '导航排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_menu`
--

INSERT INTO `xy_menu` (`menu_id`, `menu_name`, `menu_type`, `menu_url`, `menu_target`, `menu_order`) VALUES
(1, '品牌专区', 'sys', 'brand-list', 0, 1),
(2, '领券中心', 'sys', 'quan-list', 0, 2),
(3, '限时折扣', 'sys', 'huodong-zhekou', 0, 3),
(4, '限时拼团', 'sys', 'huodong-pintuan', 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `xy_moneylog`
--

CREATE TABLE `xy_moneylog` (
  `moneylog_id` int(10) UNSIGNED NOT NULL,
  `moneylog_type` varchar(10) NOT NULL,
  `moneylog_in` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '收入',
  `moneylog_out` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '支出',
  `moneylog_now` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '当前结余',
  `moneylog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '时间',
  `moneylog_text` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_moneylog`
--

-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- (cleared by user request: data of `xy_moneylog`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_notice`
--

CREATE TABLE `xy_notice` (
  `notice_id` int(10) UNSIGNED NOT NULL,
  `notice_name` varchar(20) NOT NULL COMMENT '通知名称',
  `notice_type` varchar(20) NOT NULL COMMENT '通知类型',
  `notice_obj` varchar(5) NOT NULL COMMENT '通知对象',
  `notice_sms_text` varchar(255) NOT NULL,
  `notice_sms_templateid` varchar(20) DEFAULT NULL COMMENT '短信模板ID',
  `notice_sms_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `notice_email_name` varchar(100) NOT NULL COMMENT '邮件标题',
  `notice_email_text` text NOT NULL COMMENT '邮件内容',
  `notice_email_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '通知状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_notice`
--

INSERT INTO `xy_notice` (`notice_id`, `notice_name`, `notice_type`, `notice_obj`, `notice_sms_text`, `notice_sms_templateid`, `notice_sms_state`, `notice_email_name`, `notice_email_text`, `notice_email_state`) VALUES
(1, '用户下单', 'order_add', 'user', '下单通知：订单${order_id}提交成功，请及时付款！', '', 0, '下单通知：订单{order_id}提交成功，请及时付款！', '<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>\n<p>\n	<br />\n</p>', 0),
(2, '订单付款', 'order_pay', 'user', '付款通知：订单${order_id}付款成功，祝您生活愉快！', '', 0, '付款通知：订单{order_id}付款成功，祝您生活愉快！', '<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>\n<p>\n	<br />\n</p>', 0),
(3, '订单发货', 'order_send', 'user', '发货通知：订单${order_id}已发货，请注意接收！', '', 0, '发货通知：订单{order_id}已发货，请注意接收！', '<p>\n	快递公司：{order_wl_name}，运单编号：{order_wl_id}<span class=\"tag_gray fl mar5 mab5\" style=\"line-height:20px;\"></span>，如有问题请及时联系！\n</p>', 0),
(4, '订单关闭', 'order_close', 'user', '关闭通知：订单${order_id}已关闭，原因：${order_closetext}', '', 0, '关闭通知：订单{order_id}已关闭，原因：{order_closetext}', '订单金额：{order_money}元\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>\n<p>\n	<br />\n</p>', 0),
(5, '用户下单', 'order_add', 'admin', '新订单通知：${order_id}，金额：${order_money}元，姓名：${user_tname}，电话：${user_phone}，请注意查看！', '', 0, '新订单通知：{order_id}，金额：{order_money}元，姓名：{user_tname}，电话：{user_phone}，请注意查看！', '<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>', 0),
(6, '订单付款', 'order_pay', 'admin', '关闭通知：订单${order_id}已关闭，原因：${order_closetext}', '', 0, '付款通知：订单{order_id}付款成功，请及时安排发货！', '<p>\n	订单金额：{order_money}元\n</p>\n<p>\n	收货姓名：{user_tname}\n</p>\n<p>\n	联系电话：{user_phone}\n</p>\n<p>\n	收货地址：{user_address}\n</p>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_noticelog`
--

CREATE TABLE `xy_noticelog` (
  `noticelog_id` int(10) UNSIGNED NOT NULL COMMENT '通知记录id',
  `noticelog_type` varchar(5) NOT NULL DEFAULT 'email',
  `noticelog_user` varchar(30) NOT NULL COMMENT '通知对象',
  `noticelog_name` varchar(100) NOT NULL COMMENT '通知名称',
  `noticelog_text` text NOT NULL COMMENT '通知内容',
  `noticelog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '录入时间',
  `noticelog_stime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '通知时间',
  `noticelog_state` varchar(10) NOT NULL DEFAULT 'new' COMMENT '通知状态',
  `noticelog_error` varchar(50) NOT NULL COMMENT '失败提醒'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_order`
--

CREATE TABLE `xy_order` (
  `order_id` bigint(15) UNSIGNED NOT NULL COMMENT '订单id',
  `order_outid` varchar(50) NOT NULL COMMENT '第三方支付订单号',
  `order_type` varchar(10) NOT NULL COMMENT '订单类型(fixed/pintuan)',
  `order_virtual` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否虚拟商品订单',
  `order_name` varchar(50) NOT NULL,
  `order_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `order_product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `order_quan_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_quan_name` varchar(30) NOT NULL,
  `order_quan_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_point_get` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `order_point_use` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `order_point_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `order_wl_id` varchar(20) NOT NULL,
  `order_wl_name` varchar(20) NOT NULL,
  `order_wl_money` decimal(5,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `order_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下单时间',
  `order_ptime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '付款时间',
  `order_stime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发货时间',
  `order_ftime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '完成时间',
  `order_payment` varchar(10) NOT NULL DEFAULT 'alipay_js' COMMENT '支付方式类型',
  `order_payment_name` varchar(20) NOT NULL COMMENT '支付方式名称',
  `order_comment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `order_state` varchar(10) NOT NULL DEFAULT 'wpay',
  `order_pstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '付款状态',
  `order_sstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发货状态',
  `order_text` varchar(255) NOT NULL COMMENT '订单留言',
  `order_closetext` varchar(255) NOT NULL COMMENT '订单关闭原因',
  `huodong_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动id',
  `pintuan_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0' COMMENT '拼团id',
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tname` varchar(10) NOT NULL,
  `user_phone` char(11) NOT NULL COMMENT '用户手机',
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(255) NOT NULL COMMENT '用户地址',
  `order_product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_order`
--

-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- (cleared by user request: data of `xy_order`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_orderdata`
--

CREATE TABLE `xy_orderdata` (
  `orderdata_id` int(10) UNSIGNED NOT NULL COMMENT '订单数据id',
  `order_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单id',
  `product_guid` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品id',
  `product_name` varchar(50) NOT NULL COMMENT '订单名称',
  `product_rule` varchar(255) NOT NULL,
  `product_logo` varchar(200) NOT NULL COMMENT '商品logo',
  `product_money` decimal(10,1) NOT NULL DEFAULT '0.0',
  `product_jjmoney` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '加减价格',
  `product_allmoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) UNSIGNED NOT NULL,
  `refund_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0',
  `refund_state` varchar(10) NOT NULL,
  `prorule_key` varchar(30) NOT NULL COMMENT '规格id组合',
  `prorule_name` varchar(255) NOT NULL COMMENT '规格名称组合',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_orderdata`
--

-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- (cleared by user request: data of `xy_orderdata`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_order_pay`
--

CREATE TABLE `xy_order_pay` (
  `order_id` varchar(25) NOT NULL COMMENT '订单id',
  `order_outid` varchar(50) NOT NULL,
  `order_name` varchar(50) NOT NULL,
  `order_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `order_state` varchar(10) NOT NULL DEFAULT 'wpay',
  `order_payment` varchar(10) NOT NULL DEFAULT 'alipay_js' COMMENT '支付方式类型',
  `order_payment_name` varchar(20) NOT NULL COMMENT '支付方式名称',
  `order_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下单时间',
  `order_ptime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '付款时间',
  `order_pstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '付款状态',
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_payment`
--

CREATE TABLE `xy_payment` (
  `payment_id` tinyint(3) UNSIGNED NOT NULL,
  `payment_name` varchar(10) NOT NULL,
  `payment_type` varchar(15) NOT NULL,
  `payment_desc` varchar(255) NOT NULL COMMENT '支付描述',
  `payment_model` text NOT NULL,
  `payment_config` text NOT NULL,
  `payment_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `payment_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_payment`
--

INSERT INTO `xy_payment` (`payment_id`, `payment_name`, `payment_type`, `payment_desc`, `payment_model`, `payment_config`, `payment_order`, `payment_state`) VALUES
(1, 'balance', 'balance', '使用帐户余额支付，只有会员才能使用。', '', '', 0, 1),
(2, '支付宝', 'alipay', '即时到帐接口，买家交易金额直接转入卖家支付宝账户。', 'a:5:{s:10:\"alipay_pid\";a:2:{s:4:\"name\";s:18:\"合作者身份Pid\";s:4:\"type\";s:4:\"text\";}s:10:\"alipay_key\";a:2:{s:4:\"name\";s:18:\"安全校验码Key\";s:4:\"type\";s:4:\"text\";}s:12:\"alipay_appid\";a:2:{s:4:\"name\";s:20:\"支付宝应用APPid\";s:4:\"type\";s:4:\"text\";}s:17:\"alipay_public_key\";a:2:{s:4:\"name\";s:15:\"支付宝公钥\";s:4:\"type\";s:8:\"textarea\";}s:21:\"alipay_my_private_key\";a:2:{s:4:\"name\";s:15:\"开发者私钥\";s:4:\"type\";s:8:\"textarea\";}}', 'a:5:{s:10:\"alipay_pid\";s:16:\"2088121065809893\";s:10:\"alipay_key\";s:32:\"wdvfe1who1sa6cchu7e7du756t6zodf9\";s:12:\"alipay_appid\";s:16:\"2016012601122018\";s:17:\"alipay_public_key\";s:392:\"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoJrdxe7XnMYYmg+xqJbEcFWCDEOA6zeKuHRs3KJ6qjO+iZQP78/shBUAL/hHnSSjOakGf0yIQEn888KMG2AWoD4tv8hmEmoewL2CACbEwwxfQiSqvJhWcbFxDizY1gTFzRclGBw5FzBdeaHG66rmZuLcUSIewKwRgCo++/jmzsI8s9nOhOpXhu4APbadb8EhWzxaQA2fcFxAf/ExnF0gabBJ/Z/urtQhIcvhK1wTEgsM/u70bNSOFd6MP6uH2t6kqTfkFC939t/KScnCOh1VAmw69RlMpAiCRsT5HzFL6GdSeSw1xJcPa/0GeKzSodd/eM9Np3kEnlwqsWfW90NXJwIDAQAB\";s:21:\"alipay_my_private_key\";s:1592:\"MIIEpQIBAAKCAQEAnzRdAOBQJaQoKlpZ9ONY3w+GTh+/jiPzGi5w0vWX58NSXL8YJ6ctm9B0CMEYShdaTxIZ6n1Uw71N6NZAe2YMBq7lLzS5TNV/wjvGDwOkJyHNKUMR1uGrba0XuodNEpZe+yhjq0z+6o9Lg68y9yBJ1HCY6D2js6unSmVbBwn81WRHyrwqrOX9qjyvrhzazZnASvNay6/3pt7NBNInE5RViYkRIXG3VurECC87hPJqQwSiS8ppChNuCBBnXcyS6R8PjckwoBP+kN6BfTR2/EvWEaIatV1cFeeGUVQyiZe/18rvx7+lgK6znvTLnkc92OX/ZtWV+Y43ppGNW5XJkdtr5wIDAQABAoIBAHjmgg5NSnAbZqkrLg9Lq0zR9FNVxtmBsXbbd7Cs8yv854opUIWkbn1aYxPW18REUb+kZmvtu7ZeB1Ffi15qk41ruf4MUv/nTntJe1IhmMJi5/OCzIRbohzLCy8K2tvXt8+Rz4biFOA568XYAaMsMQUUcPpE/RFPtN5JdEQ3MHs31q+doUEir838b/ozmlFWQ73BGWHj15bt/6nCgqeWq+QT8jZ14c8Nj0UdW9RX3oxGGSHU6Cy9smryt1weqxypX7NpTM3DcWfgULveWmQ+71DzxZrlQO4aI/y8ngDYJgBI32Od01WEVUNKPtX/7tUzWmEW02iYeYTp/p2+9xZsejECgYEAyz9mSRcsUc2EleeNkEBZ8uzcKmUYWFJemAJ6avLHhESnVm28fm0gWDEYwqdxmh54zJzO+l++vfx+KiMpALi3EHOYmaZyDhPRTkCw8JFaluE7ly5PD39jL4bml5RKDHczE8FowXanV3abGxgaCrqRaM70YS137pHZXcAFqhbnyukCgYEAyIaPeLB1LWJD9GXSt9jFqcMmo+YdhbsR0E5HenufMJbmYLWxYjkgULgC1WHtAJ3qSEwX1LrP5TvJx6tOzPXFHLigxi3bHyvw5BAHsVgyYnM88bQcXkaJRCvCrzuJIz8vYtsRp+1pGlmpN3WQOnFIb4ofzaRaIZHWwf2AnYlYnk8CgYEAqcHQWufh+okfXl1CXeOBvWacFUTO6qYRoAEh4kXY4t68rXGGaEoZI9AOEDbuqX0eBDhMn85scB59+g/X5WRicnk6Ucs1pBBlV2is4KFm+nIw5XqmShlp7H5OBviySGse3DdEmaHS7zh/IEgnKCLf5JxGfQwPCdIDrUv+7yumelECgYEAjDDW+S+UnGgIzkKpsPKSLn9K8mcc2LPSXml7u3vV7WhyI8ai/uKlXwlmobvWsAm3E1hviMAaPE8yYK+5Zb2lUtEZRbQlb4OO5EL4vdnFT+L1Bp4+/wIdUVWuxEfBNq0j+d7iVx65zjxE+4rrjJBKbgCI/4IZqUKGfBU45+pv1C0CgYEAndIqsLJHSutZgDRq5LBdtfyAjTQCRH0KtwF9xGXBnAkSyhlS15qoG6ukRJQNs+PIuc9Qqsv9HaSH59kqGFqf2y5fUIpOjf0Iv9gjMguh2Klya3zMze3luqaTbiG/GRl7lCvzvnm09jfr3G+o+a9cww+UeaOTZNv7biZ8A/tvxyY=\";}', 0, 0),
(3, '微信支付', 'wechat', '用户使用微信扫码支付', 'a:3:{s:12:\"wechat_appid\";a:2:{s:4:\"name\";s:14:\"开发者AppID\";s:4:\"type\";s:4:\"text\";}s:12:\"wechat_mchid\";a:2:{s:4:\"name\";s:9:\"商户号\";s:4:\"type\";s:4:\"text\";}s:10:\"wechat_key\";a:2:{s:4:\"name\";s:9:\"API密钥\";s:4:\"type\";s:4:\"text\";}}', 'a:3:{s:12:\"wechat_appid\";s:18:\"wx8d74b946b84f199a\";s:12:\"wechat_mchid\";s:10:\"1526910111\";s:10:\"wechat_key\";s:32:\"Q3948Njns92jf9Eufos7NwifjDsin82n\";}', 0, 0),
(4, '转账汇款', 'bank', '通过线下汇款方式支付，汇款帐号：建设银行 621700254000005xxxx 刘某某', 'a:1:{s:9:\"bank_text\";a:2:{s:4:\"name\";s:12:\"收款信息\";s:4:\"type\";s:8:\"textarea\";}}', 'a:1:{s:9:\"bank_text\";s:0:\"\";}', 0, 0),
(5, '货到付款', 'cod', '送货上门后再收款，支持现金、POS机刷卡、支票支付', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_pintuan`
--

CREATE TABLE `xy_pintuan` (
  `pintuan_id` bigint(15) UNSIGNED NOT NULL,
  `pintuan_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '拼团价',
  `pintuan_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pintuan_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pintuan_stime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pintuan_etime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pintuan_state` varchar(10) NOT NULL DEFAULT 'wtuan',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_name` varchar(100) NOT NULL,
  `product_logo` varchar(100) NOT NULL,
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `huodong_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_pintuanlog`
--

CREATE TABLE `xy_pintuanlog` (
  `pintuanlog_id` int(10) UNSIGNED NOT NULL,
  `pintuanlog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pintuan_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0',
  `order_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_pointlog`
--

CREATE TABLE `xy_pointlog` (
  `pointlog_id` int(10) UNSIGNED NOT NULL,
  `pointlog_type` varchar(10) NOT NULL COMMENT '积分类型',
  `pointlog_in` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分收入',
  `pointlog_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分支出',
  `pointlog_now` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '当前结余',
  `pointlog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '时间',
  `pointlog_text` varchar(255) NOT NULL COMMENT '备注',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_pointlog`
--

-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- (cleared by user request: data of `xy_pointlog`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_prodata`
--

CREATE TABLE `xy_prodata` (
  `product_guid` int(10) UNSIGNED NOT NULL COMMENT '商品规格id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品id',
  `product_ruleid` varchar(30) NOT NULL COMMENT '规格id组合',
  `product_rulename` varchar(50) NOT NULL COMMENT '规格名组合',
  `product_rule` varchar(255) NOT NULL COMMENT '规格数据集',
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '真实售价（有活动即活动价）',
  `product_smoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商城价',
  `product_mmoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '市场价',
  `product_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '剩余库存',
  `product_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_prodata`
--

INSERT INTO `xy_prodata` (`product_guid`, `product_id`, `product_ruleid`, `product_rulename`, `product_rule`, `product_money`, `product_smoney`, `product_mmoney`, `product_num`, `product_order`) VALUES
(20, 6, '2', '深邃黑深邃黑', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"深邃黑深邃黑\";}}', '77.0', '77.0', '0.0', 8888, 1),
(21, 6, '1', '汝瓷白汝瓷白', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"汝瓷白汝瓷白\";}}', '77.0', '77.0', '0.0', 8888, 2),
(22, 6, '3', '荣耀金荣耀金', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"荣耀金荣耀金\";}}', '77.0', '77.0', '0.0', 8888, 3),
(23, 6, '4', '高端蓝高端蓝', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"高端蓝高端蓝\";}}', '77.0', '77.0', '0.0', 8888, 4),
(24, 6, '5', '天空蓝天空蓝', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"天空蓝天空蓝\";}}', '77.0', '77.0', '0.0', 8888, 5),
(25, 6, '6', '长江黄长江黄', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"长江黄长江黄\";}}', '77.0', '77.0', '0.0', 8888, 6),
(26, 6, '7', '深海蓝深海蓝', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"深海蓝深海蓝\";}}', '77.0', '77.0', '0.0', 8888, 7),
(27, 6, '8', '草地绿草地绿', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"草地绿草地绿\";}}', '77.0', '77.0', '0.0', 8888, 8),
(28, 6, '9', '黑夜黑黑夜黑', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"黑夜黑黑夜黑\";}}', '77.0', '77.0', '0.0', 8888, 9),
(29, 6, '10', '银白银白', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:12:\"银白银白\";}}', '77.0', '77.0', '0.0', 8888, 10),
(30, 6, '11', '彩色彩色', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:12:\"彩色彩色\";}}', '77.0', '77.0', '0.0', 8888, 11),
(31, 8, '', '', '', '200000.0', '200000.0', '0.0', 64455, 1),
(32, 9, '9', '黑夜黑黑夜黑', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"颜色\";s:5:\"value\";s:18:\"黑夜黑黑夜黑\";}}', '3800000.0', '3800000.0', '0.0', 99977, 1),
(33, 10, '', '', '', '524000.0', '524000.0', '0.0', 9989, 1),
(34, 11, '', '', '', '2300000.0', '2300000.0', '0.0', 9992, 1),
(35, 12, '', '', '', '2900000.0', '2900000.0', '0.0', 9993, 1),
(36, 13, '', '', '', '32000000.0', '32000000.0', '0.0', 9989, 1),
(37, 14, '', '', '', '100000.0', '100000.0', '0.0', 9916, 1),
(38, 15, '', '', '', '1900000.0', '1900000.0', '0.0', 9930, 1),
(39, 16, '', '', '', '50000.0', '50000.0', '0.0', 9850, 1),
(40, 17, '', '', '', '980000.0', '980000.0', '0.0', 9968, 1),
(41, 18, '', '', '', '31000000.0', '31000000.0', '0.0', 9986, 1),
(42, 19, '', '', '', '1900000.0', '1900000.0', '0.0', 9889, 1),
(43, 20, '', '', '', '6880000.0', '6880000.0', '0.0', 10000, 1),
(44, 21, '', '', '', '36000000.0', '36000000.0', '0.0', 9992, 1),
(45, 22, '', '', '', '5800000.0', '5800000.0', '0.0', 9980, 1),
(46, 23, '', '', '', '1480000.0', '1480000.0', '0.0', 9827, 1),
(47, 24, '', '', '', '226000.0', '226000.0', '0.0', 9227, 1),
(48, 25, '', '', '', '13200000.0', '13200000.0', '0.0', 9994, 1),
(49, 26, '', '', '', '103000.0', '103000.0', '0.0', 9760, 1),
(50, 27, '', '', '', '2400000.0', '2400000.0', '0.0', 9780, 1),
(51, 28, '', '', '', '103000.0', '103000.0', '0.0', 9666, 1),
(52, 29, '', '', '', '5090000.0', '5090000.0', '0.0', 9973, 1),
(53, 30, '', '', '', '1480000.0', '1480000.0', '0.0', 8983, 1),
(54, 31, '', '', '', '100000.0', '100000.0', '0.0', 9313, 1),
(55, 32, '', '', '', '1480000.0', '1480000.0', '0.0', 9616, 1),
(56, 33, '', '', '', '2200000.0', '2200000.0', '0.0', 9889, 1),
(57, 34, '', '', '', '3580000.0', '3580000.0', '0.0', 9876, 1),
(58, 35, '', '', '', '410000.0', '410000.0', '0.0', 10000, 1),
(59, 36, '', '', '', '410000.0', '410000.0', '0.0', 9997, 1),
(60, 37, '', '', '', '510000.0', '510000.0', '0.0', 9999, 1),
(61, 38, '', '', '', '50000.0', '50000.0', '0.0', 9981, 1),
(62, 39, '', '', '', '630000.0', '630000.0', '0.0', 9999, 1),
(63, 40, '', '', '', '2200000.0', '2200000.0', '0.0', 9993, 1),
(64, 41, '', '', '', '53000.0', '53000.0', '0.0', 9988, 1),
(65, 42, '', '', '', '103000.0', '103000.0', '0.0', 9999, 1),
(66, 43, '', '', '', '104000.0', '104000.0', '0.0', 9994, 1),
(67, 44, '', '', '', '220000.0', '220000.0', '0.0', 9998, 1),
(68, 45, '', '', '', '91000000.0', '91000000.0', '0.0', 10000, 1),
(69, 46, '', '', '', '1200000.0', '1200000.0', '0.0', 8707, 1),
(70, 47, '', '', '', '104000.0', '104000.0', '0.0', 8878, 1),
(71, 48, '', '', '', '93000.0', '93000.0', '0.0', 9998, 1),
(72, 49, '', '', '', '899000.0', '899000.0', '0.0', 10000, 1),
(73, 50, '', '', '', '3600000.0', '3600000.0', '0.0', 9997, 1),
(74, 51, '', '', '', '2300000.0', '2300000.0', '0.0', 9784, 1),
(75, 52, '', '', '', '7200000.0', '7200000.0', '0.0', 9971, 1),
(76, 53, '', '', '', '53000.0', '53000.0', '0.0', 8489, 1),
(77, 54, '', '', '', '1200000.0', '1200000.0', '0.0', 9104, 1),
(78, 55, '', '', '', '103000.0', '103000.0', '0.0', 9367, 1),
(79, 56, '', '', '', '8760000.0', '8760000.0', '0.0', 9991, 1),
(80, 57, '', '', '', '6880000.0', '6880000.0', '0.0', 9991, 1),
(81, 58, '', '', '', '50000000.0', '50000000.0', '0.0', 9987, 1),
(82, 59, '', '', '', '1674000.0', '1674000.0', '0.0', 9985, 1),
(83, 60, '', '', '', '1104000.0', '1104000.0', '0.0', 9921, 1),
(84, 61, '', '', '', '50000.0', '50000.0', '0.0', 9080, 1),
(103, 75, '', '', '', '104000.0', '104000.0', '0.0', 8036, 1),
(104, 76, '', '', '', '53000.0', '53000.0', '0.0', 8653, 1),
(101, 73, '', '', '', '53000.0', '53000.0', '0.0', 272, 1),
(102, 74, '', '', '', '53000.0', '53000.0', '0.0', 9600, 1),
(99, 71, '', '', '', '50000.0', '50000.0', '0.0', 9067, 1),
(100, 72, '', '', '', '5300.0', '5300.0', '0.0', 999, 1),
(97, 69, '', '', '', '53000.0', '53000.0', '0.0', 8461, 1),
(98, 70, '', '', '', '104000.0', '104000.0', '0.0', 9019, 1),
(95, 67, '', '', '', '1680000.0', '1680000.0', '0.0', 8355, 1),
(96, 68, '', '', '', '53000.0', '53000.0', '0.0', 9700, 1),
(90, 63, '', '', '', '12596000.0', '12596000.0', '0.0', 9991, 1),
(91, 64, '', '', '', '2200000.0', '2200000.0', '0.0', 9844, 1),
(92, 65, '', '', '', '1480000.0', '1480000.0', '0.0', 9477, 1),
(93, 66, '', '', '', '2100000.0', '2100000.0', '0.0', 9851, 1),
(94, 62, '', '', '', '27800000.0', '27800000.0', '0.0', 65495, 1),
(105, 77, '', '', '', '104000.0', '104000.0', '0.0', 8727, 1),
(106, 78, '', '', '', '50000.0', '50000.0', '0.0', 484, 1),
(107, 79, '', '', '', '50000.0', '50000.0', '0.0', 9505, 1),
(108, 80, '', '', '', '100000.0', '100000.0', '0.0', 9609, 1),
(109, 81, '', '', '', '104000.0', '104000.0', '0.0', 9662, 1),
(110, 82, '', '', '', '1053000.0', '1053000.0', '0.0', 5998, 1),
(111, 83, '', '', '', '79000.0', '79000.0', '0.0', 0, 1),
(112, 84, '', '', '', '174000.0', '174000.0', '0.0', 500, 1),
(113, 85, '', '', '', '70000.0', '70000.0', '0.0', 0, 1),
(114, 86, '', '', '', '9800000.0', '9800000.0', '0.0', 88, 1),
(115, 87, '', '', '', '159990.0', '159990.0', '0.0', 99, 1),
(116, 88, '', '', '', '1880000.0', '1880000.0', '0.0', 65535, 1),
(117, 89, '', '', '', '1880000.0', '1880000.0', '0.0', 65442, 1),
(118, 90, '', '', '', '11400.0', '11400.0', '0.0', 41, 1),
(119, 91, '', '', '', '22536.0', '22536.0', '0.0', 637, 1),
(120, 92, '', '', '', '3600.0', '3600.0', '0.0', 257, 1),
(121, 93, '', '', '', '166649.0', '166649.0', '0.0', 865, 1),
(122, 94, '', '', '', '500.0', '500.0', '0.0', 1502, 1),
(123, 95, '', '', '', '17250.0', '17250.0', '0.0', 438, 1),
(124, 96, '', '', '', '93908.0', '93908.0', '0.0', 112, 1),
(125, 97, '', '', '', '47499.0', '47499.0', '0.0', 259, 1),
(126, 98, '', '', '', '22536.0', '22536.0', '0.0', 587, 1),
(127, 99, '', '', '', '221000.0', '221000.0', '0.0', 154, 1),
(128, 100, '', '', '', '25614.0', '25614.0', '0.0', 1484, 1),
(129, 101, '', '', '', '690.0', '690.0', '0.0', 1467, 1),
(130, 102, '', '', '', '33935.0', '33935.0', '0.0', 963, 1),
(131, 103, '', '', '', '9500.0', '9500.0', '0.0', 161, 1),
(132, 104, '', '', '', '52835.0', '52835.0', '0.0', 5536, 1),
(133, 105, '', '', '', '300.0', '300.0', '0.0', 39, 1),
(134, 106, '', '', '', '730.0', '730.0', '0.0', 1718, 1),
(135, 107, '', '', '', '690.0', '690.0', '0.0', 2264, 1),
(136, 108, '', '', '', '78988.0', '78988.0', '0.0', 87, 1),
(137, 109, '', '', '', '730.0', '730.0', '0.0', 68, 1),
(138, 110, '', '', '', '1580.0', '1580.0', '0.0', 773, 1),
(139, 111, '', '', '', '3600.0', '3600.0', '0.0', 180, 1),
(140, 112, '', '', '', '1580.0', '1580.0', '0.0', 3105, 1),
(141, 113, '', '', '', '300.0', '300.0', '0.0', 908, 1),
(142, 114, '', '', '', '1400.0', '1400.0', '0.0', 253, 1),
(143, 115, '', '', '', '400.0', '400.0', '0.0', 706, 1),
(144, 116, '', '', '', '38500.0', '38500.0', '0.0', 210, 1),
(145, 117, '', '', '', '12200.0', '12200.0', '0.0', 1068, 1),
(146, 118, '', '', '', '32727.0', '32727.0', '0.0', 874, 1),
(147, 119, '', '', '', '16750.0', '16750.0', '0.0', 1447, 1),
(148, 120, '', '', '', '33600.0', '33600.0', '0.0', 993, 1),
(149, 121, '', '', '', '16750.0', '16750.0', '0.0', 6585, 1),
(150, 122, '', '', '', '9500.0', '9500.0', '0.0', 6364, 1),
(151, 123, '', '', '', '33935.0', '33935.0', '0.0', 6395, 1),
(152, 124, '', '', '', '27000.0', '27000.0', '0.0', 1248, 1),
(153, 125, '', '', '', '170000.0', '170000.0', '0.0', 995, 1),
(154, 126, '', '', '', '26500.0', '26500.0', '0.0', 3929, 1),
(155, 127, '', '', '', '666034.0', '666034.0', '0.0', 8, 1),
(156, 128, '', '', '', '6500.0', '6500.0', '0.0', 36527, 1),
(157, 129, '', '', '', '6500.0', '6500.0', '0.0', 25390, 1),
(158, 130, '', '', '', '12000.0', '12000.0', '0.0', 967, 1),
(159, 131, '', '', '', '30500.0', '30500.0', '0.0', 976, 1),
(160, 132, '', '', '', '130000.0', '130000.0', '0.0', 5413, 1),
(161, 133, '', '', '', '10000.0', '10000.0', '0.0', 65364, 1),
(162, 134, '', '', '', '378000.0', '378000.0', '0.0', 997, 1),
(163, 135, '', '', '', '271674.0', '271674.0', '0.0', 5496, 1),
(164, 136, '', '', '', '127000.0', '127000.0', '0.0', 4542, 1),
(165, 137, '', '', '', '368000.0', '368000.0', '0.0', 999, 1),
(166, 138, '', '', '', '10000.0', '10000.0', '0.0', 22184, 1),
(167, 139, '', '', '', '425780.0', '425780.0', '0.0', 995, 1),
(168, 140, '', '', '', '2.0', '2.0', '0.0', 1000, 1),
(169, 141, '', '', '', '103350.0', '103350.0', '0.0', 22878, 1),
(170, 142, '', '', '', '145588.0', '145588.0', '0.0', 974, 1),
(171, 143, '', '', '', '295000.0', '295000.0', '0.0', 0, 1),
(172, 144, '', '', '', '34500.0', '34500.0', '0.0', 970, 1),
(173, 145, '', '', '', '69300.0', '69300.0', '0.0', 4530, 1),
(174, 146, '', '', '', '193800.0', '193800.0', '0.0', 5489, 1),
(175, 147, '', '', '', '244200.0', '244200.0', '0.0', 5492, 1),
(176, 148, '', '', '', '340195.0', '340195.0', '0.0', 4538, 1),
(177, 149, '', '', '', '1020.0', '1020.0', '0.0', 10000, 1),
(178, 150, '', '', '', '1020.0', '1020.0', '0.0', 9939, 1),
(179, 151, '', '', '', '1720.0', '1720.0', '0.0', 9994, 1),
(180, 152, '', '', '', '7200.0', '7200.0', '0.0', 10000, 1),
(181, 153, '', '', '', '145588.0', '145588.0', '0.0', 10000, 1),
(182, 154, '', '', '', '1020.0', '1020.0', '0.0', 9972, 1),
(183, 155, '', '', '', '22250.0', '22250.0', '0.0', 10000, 1),
(184, 156, '', '', '', '38938.0', '38938.0', '0.0', 10000, 1),
(185, 157, '', '', '', '76243.0', '76243.0', '0.0', 10000, 1),
(186, 158, '', '', '', '1820.0', '1820.0', '0.0', 9959, 1),
(187, 159, '', '', '', '1820.0', '1820.0', '0.0', 9982, 1),
(188, 160, '', '', '', '4220.0', '4220.0', '0.0', 10000, 1),
(189, 161, '', '', '', '1720.0', '1720.0', '0.0', 9996, 1),
(190, 162, '', '', '', '4220.0', '4220.0', '0.0', 9997, 1),
(191, 163, '', '', '', '12800.0', '12800.0', '0.0', 10000, 1),
(192, 164, '', '', '', '23084.0', '23084.0', '0.0', 10000, 1),
(193, 165, '', '', '', '38946.0', '38946.0', '0.0', 10000, 1),
(194, 166, '', '', '', '46890.0', '46890.0', '0.0', 10000, 1),
(195, 167, '', '', '', '82180.0', '82180.0', '0.0', 10000, 1),
(196, 168, '', '', '', '518946.0', '518946.0', '0.0', 10000, 1),
(197, 169, '', '', '', '620603.0', '620603.0', '0.0', 9997, 1),
(198, 170, '', '', '', '48600.0', '48600.0', '0.0', 10000, 1),
(199, 171, '', '', '', '48600.0', '48600.0', '0.0', 9998, 1),
(200, 172, '', '', '', '97200.0', '97200.0', '0.0', 10000, 1),
(201, 173, '', '', '', '1000.0', '1000.0', '0.0', 9983, 1),
(202, 174, '', '', '', '1000.0', '1000.0', '0.0', 9954, 1),
(203, 175, '', '', '', '30500.0', '30500.0', '0.0', 9990, 1),
(204, 176, '', '', '', '14460.0', '14460.0', '0.0', 9997, 1),
(205, 177, '', '', '', '272.0', '272.0', '0.0', 65535, 1),
(206, 178, '', '', '', '270.0', '270.0', '0.0', 9995, 1),
(207, 179, '', '', '', '270.0', '270.0', '0.0', 65532, 1),
(208, 180, '', '', '', '540.0', '540.0', '0.0', 9922, 1),
(209, 181, '', '', '', '550.0', '550.0', '0.0', 9990, 1),
(210, 182, '', '', '', '540.0', '540.0', '0.0', 9983, 1),
(211, 183, '', '', '', '550.0', '550.0', '0.0', 4536, 1),
(212, 184, '', '', '', '1148.0', '1148.0', '0.0', 9917, 1),
(213, 185, '', '', '', '820.0', '820.0', '0.0', 4529, 1),
(214, 186, '', '', '', '820.0', '820.0', '0.0', 10000, 1),
(215, 187, '', '', '', '2040.0', '2040.0', '0.0', 10000, 1),
(216, 188, '', '', '', '3680.0', '3680.0', '0.0', 10000, 1),
(217, 189, '', '', '', '2305.0', '2305.0', '0.0', 9922, 1),
(218, 190, '', '', '', '6209.0', '6209.0', '0.0', 10000, 1),
(219, 191, '', '', '', '7476.0', '7476.0', '0.0', 10000, 1),
(220, 192, '', '', '', '3548.0', '3548.0', '0.0', 9984, 1),
(221, 193, '', '', '', '13102.0', '13102.0', '0.0', 10000, 1),
(222, 194, '', '', '', '305.0', '305.0', '0.0', 10000, 1),
(223, 195, '', '', '', '6208.0', '6208.0', '0.0', 976, 1),
(224, 196, '', '', '', '305.0', '305.0', '0.0', 9995, 1),
(225, 197, '', '', '', '14687.0', '14687.0', '0.0', 976, 1),
(226, 198, '', '', '', '7120.0', '7120.0', '0.0', 10000, 1),
(227, 199, '', '', '', '7120.0', '7120.0', '0.0', 10000, 1),
(228, 200, '', '', '', '13830.0', '13830.0', '0.0', 10000, 1),
(229, 201, '', '', '', '13830.0', '13830.0', '0.0', 10000, 1),
(230, 202, '', '', '', '21120.0', '21120.0', '0.0', 9917, 1),
(231, 203, '', '', '', '38430.0', '38430.0', '0.0', 976, 1),
(232, 204, '', '', '', '29324.0', '29324.0', '0.0', 10000, 1),
(233, 205, '', '', '', '62722.0', '62722.0', '0.0', 10000, 1),
(234, 206, '', '', '', '46870.0', '46870.0', '0.0', 976, 1),
(235, 207, '', '', '', '7000.0', '7000.0', '0.0', 10000, 1),
(236, 208, '', '', '', '11000.0', '11000.0', '0.0', 10000, 1),
(237, 209, '', '', '', '7000.0', '7000.0', '0.0', 10000, 1),
(238, 210, '', '', '', '12000.0', '12000.0', '0.0', 10000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_product`
--

CREATE TABLE `xy_product` (
  `product_id` smallint(5) UNSIGNED NOT NULL COMMENT '商品id',
  `product_guid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_type` varchar(10) NOT NULL DEFAULT 'normal' COMMENT '商品类型',
  `product_name` varchar(100) NOT NULL COMMENT '商品名称',
  `product_text` text NOT NULL COMMENT '商品描述',
  `product_keys` varchar(50) NOT NULL COMMENT '页面关键词',
  `product_desc` varchar(255) NOT NULL COMMENT '页面描述',
  `product_logo` varchar(100) NOT NULL COMMENT '商品logo',
  `product_album` text NOT NULL COMMENT '商品相册',
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商品商城价（有活动即活动价）',
  `product_smoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商品商城价',
  `product_mmoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商品市场价',
  `product_wlmoney` decimal(5,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商品物流价',
  `product_point` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '赠送积分',
  `product_mark` varchar(20) NOT NULL COMMENT '商品货号',
  `product_weight` decimal(7,2) NOT NULL COMMENT '商品尺寸',
  `product_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '商品状态',
  `product_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品发布时间',
  `product_order` smallint(5) UNSIGNED NOT NULL DEFAULT '10000' COMMENT '商品排序',
  `product_num` smallint(5) UNSIGNED NOT NULL COMMENT '商品库存数',
  `product_sellnum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品销售数',
  `product_clicknum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品点击数',
  `product_collectnum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品收藏数',
  `product_asknum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品咨询数',
  `product_commentnum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品评价数',
  `product_commentrate` varchar(10) NOT NULL COMMENT '商品评价比例',
  `product_commentstar` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品评价星级',
  `product_istuijian` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_rule` text NOT NULL COMMENT '规格数据集',
  `prokey_type` varchar(10) NOT NULL COMMENT '点卡发放类型',
  `prokey_user` varchar(50) NOT NULL COMMENT '点卡帐号',
  `prokey_pw` varchar(50) NOT NULL COMMENT '点卡密码',
  `prokey_edate` date NOT NULL COMMENT '卡点有效期',
  `huodong_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动id',
  `huodong_type` varchar(10) NOT NULL COMMENT '活动类型',
  `huodong_tag` varchar(10) NOT NULL COMMENT '活动标签',
  `huodong_stime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `huodong_etime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `category_id` smallint(5) UNSIGNED NOT NULL COMMENT '商品分类id',
  `brand_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '品牌id',
  `rule_id` varchar(30) NOT NULL COMMENT '商品规格id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_product`
--

INSERT INTO `xy_product` (`product_id`, `product_guid`, `product_type`, `product_name`, `product_text`, `product_keys`, `product_desc`, `product_logo`, `product_album`, `product_money`, `product_smoney`, `product_mmoney`, `product_wlmoney`, `product_point`, `product_mark`, `product_weight`, `product_state`, `product_atime`, `product_order`, `product_num`, `product_sellnum`, `product_clicknum`, `product_collectnum`, `product_asknum`, `product_commentnum`, `product_commentrate`, `product_commentstar`, `product_istuijian`, `product_rule`, `prokey_type`, `prokey_user`, `prokey_pw`, `prokey_edate`, `huodong_id`, `huodong_type`, `huodong_tag`, `huodong_stime`, `huodong_etime`, `category_id`, `brand_id`, `rule_id`) VALUES
(178, 0, 'normal', 'Canon 071 LBP-121/122 ink cartridge chip; MF-271/272/274/275 1.2K PrintMagic (CPM-C071)', '<p>				</p><p><span style=\"text-wrap-mode: nowrap;\">Compatibility: Canon</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Origin: China</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Resource (5% paper coverage): 1200 pages</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Color: Black</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Suitable for: LBP-121, LBP-122, MF-271, MF-272, MF-274</span></p><p><span style=\"text-wrap-mode: nowrap;\">EAN: CPM-C071</span></p><p><br/></p><p>				</p>', '', '', 'attachment/2026-06/2026060208040817802u.png', 'attachment/2026-06/2026060208040817802u.png', '270.0', '270.0', '0.0', '0.0', 0, '', '0.00', 1, 1780383873, 10000, 9995, 5, 181, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(179, 0, 'normal', 'Coca-Cola carbonated beverage, 0.25 liters x 12 bottles', '<p>				</p><p><br/></p><p><br/></p><p>Coca-Cola is a legendary non-alcoholic carbonated beverage with a classic flavor that blends sweetness and caramel for a refreshing and invigorating experience. The 0.25-liter can is convenient for individuals to enjoy at home, in the office, or on the go. This refreshing and thirst-quenching beverage delivers the familiar Coca-Cola taste. A 12-can pack is also a great choice for companies or investors.</p><p><br/></p><p>				</p>', '', '', 'attachment/2026-06/2026060208022817813d.jpg', 'attachment/2026-06/2026060208022817813d.jpg', '270.0', '270.0', '0.0', '0.0', 0, '', '0.00', 1, 1780383874, 10000, 65532, 3, 72, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(180, 0, 'normal', 'Kharkiv Classic Biscuits (Volkhov brand), 3kg pack', '<p>				</p><p>Life is like a series of yellow and pink stripes, with applesauce sandwiched between them. That&#39;s the classic Kharkiv biscuit: thin, crisp wafer edges, soft sponge cake layers, and sweet and sour apple strips. Take a bite, or savor each layer as you did as a child—it&#39;s a unique experience.</p><p>				</p>', '', '', 'attachment/2026-06/2026060208114817808b.png', 'attachment/2026-06/2026060208114817808b.png,attachment/2026-06/2026060208115217816r.png', '540.0', '540.0', '0.0', '0.0', 0, '', '0.00', 1, 1780384444, 10000, 9922, 0, 36, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(181, 0, 'normal', 'ColorWay Ink Set: Canon CLI-426/451/471/526/551, PGI-425/450/470/525/550, 4 x 100 ml (CW-CW450/CW451', '<p><span style=\"text-wrap-mode: nowrap;\">Ink Type: Water-soluble</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Volume: 100 ml</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Compatibility: Canon</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Origin: China</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208141717804j.png', 'attachment/2026-06/2026060208141717804j.png', '550.0', '550.0', '0.0', '0.0', 0, '', '0.00', 1, 1780384485, 10000, 9990, 3, 82, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(182, 0, 'normal', 'Roshen Butter Cookies, Classic Butter Flavor, 140g x 12 packs', '<p>				</p><p><span style=\"text-wrap-mode: nowrap;\">Roshen Classic Butter Cookies are elegant butter cookies with a crisp texture and rich, buttery flavor.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Based on the French shortbread mold, these cookies melt in your mouth, leaving a delightful buttery finish. The perfect blend of crispness and softness brings a warm, homey feeling with every bite. Contains 10% Roshen butter.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Pure sweet cream with a high fat content of 82.5%!</span></p><p><br/></p><p>				</p>', '', '', 'attachment/2026-06/2026060208162617864e.png', 'attachment/2026-06/2026060208162617864e.png,attachment/2026-06/2026060208163017866r.png', '540.0', '540.0', '0.0', '0.0', 0, '', '0.00', 1, 1780384717, 10000, 9983, 1, 61, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(183, 0, 'normal', 'Original power adapter for HP Compaq 550 laptop (2211189)', '<p><span style=\"text-wrap-mode: nowrap;\">Output Power: 65 watts</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Current Amount: 3.5A</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Compatibility: Hewlett-Packard</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Quality: Original</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Connector: 4.8 x 1.7 mm</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Origin: China</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Warranty: 12 months</span></p>', '', '', 'attachment/2026-06/2026060208214117835e.png', 'attachment/2026-06/2026060208214117835e.png,attachment/2026-06/2026060208214617855o.png,attachment/2026-06/2026060208215217841m.png', '550.0', '550.0', '0.0', '0.0', 0, '', '0.00', 1, 1780384955, 10000, 4536, 2, 58, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(184, 0, 'normal', 'Bosch PKP 18 E Hot Melt Glue Gun', '<p>The Bosch PKP 18 E is a reliable household glue gun suitable for various applications. It ensures clean, crisp adhesion and strong, stable bonds. The electronically controlled heating element heats up quickly, allowing the glue gun to reach its working temperature rapidly. Furthermore, it maintains a constant working temperature (approximately 200°C). The mechanical feeding system ensures precise glue dispensing control and optimal glue application. An integrated anti-drip device minimizes glue leakage, while the extra-long nozzle allows for easy application to hard-to-reach corners. The foldable stand ensures stability when the glue gun is placed on a work surface.</p>', '', '', 'attachment/2026-06/2026060208212917836e.png', 'attachment/2026-06/2026060208212917836e.png,attachment/2026-06/2026060208213517897s.png', '1148.0', '1148.0', '0.0', '0.0', 0, '', '0.00', 1, 1780384989, 10000, 9917, 0, 13, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(185, 0, 'normal', 'Casecom 550W High-Power Power Supply (CM 550 ATX)', '<p><span style=\"text-wrap-mode: nowrap;\">The CaseCom CM 550 ATX power supply is a reliable and efficient device that provides stable power to your computer. With its 550W power output and multiple connection interfaces, this power supply is suitable for a variety of computer systems.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Features:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Power: 550W</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Form Factor: ATX</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Fan: An integrated 120mm fan provides efficient cooling, helping to maintain the power supply&#39;s optimal temperature during operation.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Connections:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">3 SATA ports for connecting hard drives and SSDs</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">2 Molex ports for connecting devices and accessories.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">1 FDD port for connecting devices with FDD interfaces.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Built-in overload, overheat, and short-circuit protection mechanisms ensure safe system operation.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">High energy efficiency and low noise make this power supply an ideal choice for home and office computers.</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>Product Code: CM 550 ATX</p><p>Power: 550 Watts</p><p>Processor Power Connector: 1 x 4 Pins</p><p>Type: PC</p><p>Count of SATA Interfaces: 3</p><p>Count of FDD Connectors: 1</p><p>Cooling System: Active</p><p>Count of IDE (Molex) Connectors: 2</p><p>Input Voltage Range: 220V</p><p>Count of Processor Independent Power Cables: 1</p><p>Maximum Load: +3.3V: 19A (62.7W)</p><p>+5V: 15A (75W)</p><p>+12V1: 32A (384W)</p><p>-12V: 0.3A (3.6W)</p><p>+5Vsb: 2.5 Amps (12.5 Watts)</p><p>Frontal Cortex Function: Active</p><p>Dimensions (L x W x H): 14 x 15 x 8.6 cm</p><p>Weight: 1.1 kg</p><p>Country of Brand Registration: China</p><p>Warranty: 12 Months</p><p>EAN: 5117972401621</p><p>Fan Diameter: 120 mm</p><p><br/></p>', '', '', 'attachment/2026-06/2026060208255917846n.png', 'attachment/2026-06/2026060208255917846n.png', '820.0', '820.0', '0.0', '0.0', 0, '', '0.00', 1, 1780385163, 10000, 4529, 1, 57, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(186, 0, 'normal', 'Delux DLP-40DG 550W Power Supply (Bulk)', '<p>The DELUX DLP-40DG power supply is a high-quality power supply designed specifically for powering computer components. Its function is to convert AC mains voltage to a specified value, stabilize the voltage, and prevent minor interference with the power supply voltage. The main parameter of this power supply is the maximum power it can provide to the load.</p><p><br/></p><p>Power: 550 watts</p><p>Protection Technology: Short Circuit Protection (SCP)</p><p>Type: PC</p><p>Number of Additional Power Interfaces for Graphics Card: None</p><p>Country of Origin: China</p><p>Number of SATA Interfaces: 4</p><p>Cooling System: Active</p><p>Number of IDE (Molex) Connectors: 2</p><p>Maximum Load: +5V - 36A</p><p>+3.3V - 33A</p><p>+12V1 - 28A</p><p>+5Vsb - 2.5A</p><p>12V - 0.8A</p><p>Frontal Cortex Function: None</p><p>Brand Registration Country: China</p><p>Warranty: 12 Months</p><p>EAN: 0040000020219</p><p>Fan Diameter: 120 mm</p>', '', '', 'attachment/2026-06/2026060208283217899x.png', 'attachment/2026-06/2026060208283217899x.png,attachment/2026-06/2026060208283417859b.png', '820.0', '820.0', '0.0', '0.0', 0, '', '0.00', 1, 1780385346, 10000, 10000, 0, 37, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(187, 0, 'normal', 'Gamemax 550W Power Supply (ek02005)', '<p><span style=\"text-wrap-mode: nowrap;\">The GameMax GP-550-White power supply is a universal option, ideal for users seeking a perfect balance of reliability, power, and efficiency at an affordable price. Designed to meet the needs of modern computer systems and compliant with the ATX 12V v2.3 standard, its 550W rated power is sufficient to handle various tasks and ensure stable operation of all computer components.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">The GP-550-White boasts an 80 PLUS Bronze certification, indicating its exceptional energy efficiency. This means it minimizes energy loss, reduces electricity bills and heat generation, thereby improving overall system reliability.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">This power supply utilizes an active PFC (Power Factor Correction) module, ensuring stable operation even under unstable input voltage conditions, thus improving power quality.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">The GP-550-White is equipped with all necessary component connection interfaces, including a 20+4 pin connector for the motherboard, a 4+4 pin connector for the processor, and a 6+2 pin connector for the graphics card. It features five SATA ports and three peripheral interfaces for easy connection of hard drives and other devices. It utilizes a large 140mm fan for cooling, maintaining optimal temperatures even under high loads and effectively reducing system noise. The quiet fan operation makes it ideal for users who prioritize low-noise systems. System safety is paramount. This power supply is equipped with multiple protection technologies: SIP (Surge Protection), OPP (Overload Protection), UVP (Undervoltage Protection), SCP (Short Circuit Protection), and OVP (Overvoltage Protection). These technologies ensure the safety and durability of all connected components. Measuring 158 x 150 x 85mm, it is compatible with various cases, ensuring compactness and ease of installation. Reliable and durable capacitors are used in the components, reflecting high-quality manufacturing processes, which are key to extending lifespan and stable operation. GameMax GP-550 - White</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">This power supply is ideal for users who value quality, reliability, and energy efficiency. It ensures long-term stable system operation without incurring excessive financial burdens, allowing you to focus on what matters most—improving work efficiency and enjoying a comfortable computer work experience.</span></p><p><br/></p><p><br/></p><p>Power: 550 watts</p><p>Additional Power Interfaces: 1</p><p>Country of Origin: China</p><p>SATA Interfaces: 5</p><p>Front-end Cortex Function: Active</p><p>Dimensions (L x W x H): 158 x 150 x 85 mm</p><p>Warranty: 12 months</p><p>Fan Diameter: 140 mm</p><p><br/></p>', '', '', 'attachment/2026-06/2026060208315917804g.png', 'attachment/2026-06/2026060208315917804g.png,attachment/2026-06/2026060208320117865w.png', '2040.0', '2040.0', '0.0', '0.0', 0, '', '0.00', 1, 1780385570, 10000, 10000, 0, 11, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(188, 0, 'normal', 'ASRock Challenger CL-550B 550W ATX 80 Plus Bronze Power Supply with 120mm Fan', '<p><span style=\"text-wrap-mode: nowrap;\">ASRock Challenger CL-550B Power Supply – 550W, 80+ Bronze Certification, 120mm Fan</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">The ASRock Challenger CL-550B power supply is a reliable and efficient power solution that ensures stable operation of modern computer systems. Its 550W power output is ideal for mid-range gaming PCs and workstations, providing stable power to all components with high energy efficiency and an 80+ Bronze certification.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">The 5V BOOST function maintains a stable 5V voltage for SSDs, hubs, and other connected devices, ensuring smooth operation even under high loads. A 120mm fan with optimized blades provides quiet and efficient cooling, maintaining optimal system temperatures.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Advantages</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">80+ Bronze Certification – Up to 88% Energy Efficiency</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">5V BOOST function ensures stable operation of SSDs and peripherals</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Silent 120mm fan with optimized blade design</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Comprehensive Protection System: Overcurrent Protection (OCP), Overtemperature Protection (OTP), Overpotential Protection (OPP), Overvoltage Protection (OVP), Short Circuit Protection (SCP), UV Protection (UVP)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Active Power Factor Correction (Active PFC)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Reliable operation even under high loads</span></p><p><span style=\"text-wrap-mode: nowrap;\">Applications</span></p><p><span style=\"text-wrap-mode: nowrap;\">Midrange Gaming PCs</span></p><p><span style=\"text-wrap-mode: nowrap;\">Home and Office Workstations</span></p><p><span style=\"text-wrap-mode: nowrap;\">System Modernization for Improved Stability</span></p><p><span style=\"text-wrap-mode: nowrap;\">Key Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Form Factor: ATX</span></p><p><span style=\"text-wrap-mode: nowrap;\">Power Consumption: 550W</span></p><p><span style=\"text-wrap-mode: nowrap;\">Certification: 80+ Bronze</span></p><p><span style=\"text-wrap-mode: nowrap;\">Efficiency: Up to 88%</span></p><p><span style=\"text-wrap-mode: nowrap;\">Motherboard Connector: 24-pin</span></p><p><span style=\"text-wrap-mode: nowrap;\">Processor Power Interface: 1x4+4-pin</span></p><p><span style=\"text-wrap-mode: nowrap;\">Graphics Card Power Interface: 2x6+2-pin</span></p><p><span style=\"text-wrap-mode: nowrap;\">HDD/FDD/SATA Interface Quantity: 2/0/4</span></p><p><span style=\"text-wrap-mode: nowrap;\">Fan Size: 120mm</span></p><p><span style=\"text-wrap-mode: nowrap;\">PFC Function: Activated</span></p><p><span style=\"text-wrap-mode: nowrap;\">Size: 140 Dimensions: x 150 x 86 mm</span></p><p><span style=\"text-wrap-mode: nowrap;\">Weight: 2.26 kg</span></p><p><span style=\"text-wrap-mode: nowrap;\">Warranty: 60 months</span></p><p><br/></p><p><br/></p><p>Power: 550 watts</p><p>Graphics Card Power Connector Type: 2 x (6+2 pins)</p><p>Processor Power Connector: 1 x 4+4 pin</p><p>Protection Technologies: Short Circuit Protection (SCP), Overload Protection (OPP), Overcurrent Protection (OCP), Overheat Protection (OTP), Overvoltage Protection (OVP/UVP)</p><p>Type: Computer</p><p>Country of Origin: China</p><p>Number of SATA Interfaces: 4</p><p>Cooling System: Active</p><p>Warranty: 6 months</p><p>Fan Diameter: 120 mm</p><p><br/></p>', '', '', 'attachment/2026-06/2026060208351717803d.png', 'attachment/2026-06/2026060208351717803d.png,attachment/2026-06/2026060208351917874o.png,attachment/2026-06/2026060208352217875i.png', '3680.0', '3680.0', '0.0', '0.0', 0, '', '0.00', 1, 1780385772, 10000, 10000, 0, 12, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(189, 0, 'normal', 'Worx WX242 Cordless Screwdriver with Bits and Tool Box', '<p>This compact and convenient Worx WX242 cordless screwdriver is ideal for household chores. It helps you easily repair home appliances or assemble furniture. You can choose the operating mode with 7 torque settings to suit different tightening methods and material densities. The screwdriver&#39;s optimal speed is 320 RPM, suitable for tightening and loosening fasteners. It comes with a built-in 2Ah battery, freeing you from power dependence and making work more convenient. A battery indicator light will remind you to charge it in time to avoid running out of power at crucial moments. The screwdriver can be charged via the included USB cable. The set also includes 30 attachments for different types of fasteners. The compact storage case makes carrying and storing the tools more convenient. Another significant advantage is the built-in backlight, allowing you to work easily even in dim or completely dark environments.</p>', '', '', 'attachment/2026-06/2026060208361017802k.png', 'attachment/2026-06/2026060208361017802k.png,attachment/2026-06/2026060208361517818w.png', '2305.0', '2305.0', '0.0', '0.0', 0, '', '0.00', 1, 1780385940, 10000, 9922, 0, 12, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(190, 0, 'normal', 'Nissan Note dedicated car cover, Auto Style eco-friendly leather, black and beige.', '<p>Car Brand: Nissan; Car Model: [Not specified]; Materials: Eco-friendly Leather; Warranty: 14 Days</p>', '', '', 'attachment/2026-06/2026060208423517860p.png', 'attachment/2026-06/2026060208423517860p.png', '6209.0', '6209.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386160, 10000, 10000, 0, 15, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(191, 0, 'normal', 'LEGO Ninjago Guardians Village 71747', '<p><span style=\"text-wrap-mode: nowrap;\">Description: LEGO Ninjago Guardians of the Village 71747</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Embark on a rescue mission to free the ninjas imprisoned in the Guardians&#39; Village! Help Ko, Jay, and Kai battle the terrifying Chief Mamatus and the Thunder Guardians in a dangerous jungle hideout. But watch out for traps and hidden flamethrowers and poison gas. And of course, don&#39;t wake the gargoyles! Rescue the ninjas and retrieve the Storm Amulet.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Age: 8 years</span></p><p><span style=\"text-wrap-mode: nowrap;\">Material: Plastic</span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of Parts: 632</span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Origin: Denmark</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208450417801b.png', 'attachment/2026-06/2026060208450417801b.png,attachment/2026-06/2026060208450717866g.png,attachment/2026-06/2026060208450917853n.png', '7476.0', '7476.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386364, 10000, 10000, 0, 10, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(192, 0, 'normal', 'Bosch BGS05A225 Bagless Vacuum Cleaner', '<p><span style=\"text-wrap-mode: nowrap;\">Bosch High-Power Compact Vacuum Cleaner</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">| 2 BGS05A225</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208433617809b.png', 'attachment/2026-06/2026060208433617809b.png,attachment/2026-06/2026060208434017898i.png', '3548.0', '3548.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386463, 10000, 9984, 0, 9, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(193, 0, 'normal', 'LEGO Coruscant Fighter, 1083 pieces (75354)', '<p><span style=\"text-wrap-mode: nowrap;\">Description: The LEGO &quot;Guards of Coruscant&quot; set offers a unique mission for LEGO enthusiasts and Star Wars fans. Become a loyal guard protecting the Republic and its rulers and embark on your adventure. Set Introduction: LEGO 75354 is part of the LEGO Star Wars series. It contains 1083 high-quality pieces, a color instruction manual (an electronic version is also available through the LEGO Building Instructions app), and is suitable for children aged 9 and up. The set theme is a spaceship. Series Features: The Star Wars series takes LEGO enthusiasts on an interstellar adventure, once again showcasing the fierce clash between the forces of light and darkness. Numerous characters and iconic scenes will surely delight fans of this classic series. Minifigures on the Fighter: LEGO 75354 includes a minifigure from the animated series The Clone Wars: Chancellor Palpatine (Darth Sidious) – a politician known for his intrigue and rule over the Independent Galaxy Federation. The set includes Chancellor Palpatine in a long, burgundy robe, unarmed; Padmé Amidala, Queen of Naboo, in a light brown suit with a belt and red vest, armed with a blaster pistol; Commander Fawkes, commander of the Coruscant Guard, in traditional white armor, mostly red, with a visored helmet, armed with a pair of pistols; and two Coruscant Guards, soldiers of the Guard. These minifigures also wear red and white armor, but with more white, and red helmets. Weapon: blaster rifle. The set also includes a model spaceship, a Republic warship that roamed the skies during the Clone Wars, belonging to the LAAT Gunship series. Its hull is largely assembled from burgundy parts, as this is the Coruscant Guard&#39;s signature color. The hull is also decorated with stickers of the Galactic Republic flag. The warship&#39;s full dimensions are: 15 cm high, 37 cm long, and 41 cm wide. The spaceship in this set is not only large in size but also boasts numerous additional features: sliding side panels allow entry; the interior space is large enough to accommodate all minifigures and their weapons; the glass of the two-person cockpit can be opened and closed for easy placement of minifigures; the rear and side hatches can also be opened for easy access to the spaceship; two cannons are mounted at the front, which can be adjusted and fixed as needed. There are two launchers on each side of the wings that fire light green parts; and a handle is provided on the top for easy transport. Don&#39;t let Coruscant succumb to evil! Join the LEGO set &quot;Coruscant Guard Fighters&quot; to fight against the Independent Galaxy Alliance and solve more global problems! Happy building!</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Series: Star Wars</span></p><p><span style=\"text-wrap-mode: nowrap;\">Material: Plastic</span></p><p><span style=\"text-wrap-mode: nowrap;\">Opinion: Designer</span></p><p><span style=\"text-wrap-mode: nowrap;\">Child&#39;s Gender: Girl</span></p><p><span style=\"text-wrap-mode: nowrap;\">Boy</span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of Pieces: 1083</span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Brand Registration: Denmark</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208482717809d.png', 'attachment/2026-06/2026060208482717809d.png,attachment/2026-06/2026060208482917847i.png,attachment/2026-06/2026060208483217801q.png', '13102.0', '13102.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386515, 10000, 10000, 0, 11, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(194, 0, 'normal', 'Ink for Epson Expression Home XP-305 Printalist UNI Cyan 140g PL-INK-EPSON-C', '<p>Color: Cyan (Blue)</p><p>Ink Type: Water-soluble</p><p>Compatibility: Epson</p><p>Suitable for: Epson Expression Home XP-305</p><p>Manufacturer Code: Epson Expression Home XP-305-PL-INK-EPSON-C</p><p><br/></p>', '', '', 'attachment/2026-06/2026060208515417871h.png', 'attachment/2026-06/2026060208515417871h.png,attachment/2026-06/2026060208515617838d.png,attachment/2026-06/2026060208515917813q.png', '305.0', '305.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386736, 10000, 10000, 0, 19, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(195, 0, 'normal', 'Refrigerator GRUNHELM VRH-S85M48-W', '<p>The compact refrigerator from Grunhelm with dimensions of 85 x 47.5 x 44.5 cm does not take up much space in your kitchen.</p>', '', '', 'attachment/2026-06/2026060208501617872f.png', 'attachment/2026-06/2026060208501617872f.png', '6208.0', '6208.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386760, 10000, 976, 0, 12, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(196, 0, 'normal', 'Lenovo Ideapad 305-15IBD 305-15IBY 300-17ISK 500-15ISK M50-80 Keyboard', '<p><span style=\"text-wrap-mode: nowrap;\">Description</span></p><p><span style=\"text-wrap-mode: nowrap;\">Lenovo Keyboard</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Black with gray bezel</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Russian layout</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">New</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">(Authorized)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Lenovo Service Center)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Please see photos before purchasing.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Compatible part numbers:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">25214725, 25214726, 25214727, 25214728, 25214729, 25214730, 25214731, 25214732, 25214733, 25214734, 25214735, 25214736, 25214737, 25214738, 25214739, 25214740, 25214741, 25214742, 25214743, 25214744, 25214745, 25214746, 25214747, 25214748 25214749, 25214750, 25214751, 25214752, 25214753, 25214754, 25214755, 25214756, 25214757, 25214758, 25214759, 25214760, 25214761, 25214762, 25214763, 25214764, 25214765, 25214766, 25214767, 25214768, 25214769, 25214770, 25214771, 25214772 25214773, 25214774, 25214775, 25214776, 25214777, 25214778, 25214779, 25214780, 25214781, 25214782, 25214783, 25214784, 25214785, 25214786, 25214787, 25214788, 25214789, 25214790, 25214791, 25214792, 25214793, 25214794, 25214795, 25214796 25214797, 25214798, 25214799, 25214800, 25214801, 25214802, 25214803, 25214804, 25214805, 25214806, 25214807, 25214808, 25214809, 25214810, 25214811, 25214812, 25214813, 25214814, MP-13Q13US-686</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Items will be shipped on the day of purchase, or (under certain conditions) cash on delivery. Shipping costs are payable upon delivery by the courier.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Warranty: 3 months</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Hide ↓ Features: Keyboard Color: Gray</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208540117888g.png', 'attachment/2026-06/2026060208540117888g.png', '305.0', '305.0', '0.0', '0.0', 0, '', '0.00', 1, 1780386844, 10000, 9995, 5, 119, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(197, 0, 'normal', 'Cast iron wood-burning stove-fireplace Ravan Monaco 7 kW', '<p><span style=\"text-wrap-mode: nowrap;\">The Ravan Monaco cast iron fireplace stove is ideal for heating private houses, cottages or summer cottages.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">It is made of thick-walled cast iron (8–10 mm), so it heats up the room 35% faster and retains heat much longer compared to other materials.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">The model has a power of up to 7 kW, an efficiency of 79.8% and a modern appearance that will harmoniously fit into the interior.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">The stove is equipped with a double afterburning system and a “clean glass” system and meets all EU environmental standards.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Thanks to such wide functionality, Ravan Monaco helps to significantly reduce heating costs and provides stable heat even on the coldest days.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Ravan Monaco has dimensions of 603×410×472 mm.</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208552517869y.png', 'attachment/2026-06/2026060208552517869y.png,attachment/2026-06/2026060208552817814r.png', '14687.0', '14687.0', '0.0', '0.0', 0, '', '0.00', 1, 1780387018, 10000, 976, 0, 11, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(198, 0, 'normal', 'Summer tires: Pirelli PZero (PZ4) 305/35 R20 107Y', '<p><span style=\"text-wrap-mode: nowrap;\">Description</span></p><p><span style=\"text-wrap-mode: nowrap;\">Brand - Pirelli; Season - Summer; Vehicle Type - Passenger Cars; Reinforced - XL; Certification - *; Width - 305; Aspect Ratio - 35; Diameter - 20;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Seasonal</span></p><p><span style=\"text-wrap-mode: nowrap;\">Summer</span></p><p><span style=\"text-wrap-mode: nowrap;\">Diameter</span></p><p><span style=\"text-wrap-mode: nowrap;\">R20 inches</span></p><p><span style=\"text-wrap-mode: nowrap;\">Tire Width</span></p><p><span style=\"text-wrap-mode: nowrap;\">305 mm</span></p><p><span style=\"text-wrap-mode: nowrap;\">Profile</span></p><p><span style=\"text-wrap-mode: nowrap;\">35%</span></p><p><span style=\"text-wrap-mode: nowrap;\">Vehicle Type</span></p><p><span style=\"text-wrap-mode: nowrap;\">Passenger Cars</span></p><p><span style=\"text-wrap-mode: nowrap;\">Speed Rating</span></p><p><span style=\"text-wrap-mode: nowrap;\">Y (300 km/h)</span></p><p><span style=\"text-wrap-mode: nowrap;\">Load Rating</span></p><p><span style=\"text-wrap-mode: nowrap;\">107 (975 kg)</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208574117811d.png', 'attachment/2026-06/2026060208574117811d.png', '7120.0', '7120.0', '0.0', '0.0', 0, '', '0.00', 1, 1780387078, 10000, 10000, 0, 34, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(199, 0, 'normal', 'Lanvigator Catchfors M/T 305/70 R16 124/121Q all-season tires', '<p><span style=\"text-wrap-mode: nowrap;\">Description</span></p><p><span style=\"text-wrap-mode: nowrap;\">Brand - Lanvigator; Diameter - 16; Season - All Seasons; Vehicle Type - SUV; Speed Rating - Q; Width - 305; Aspect Ratio - 70; Load Index - 124;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Seasonal</span></p><p><span style=\"text-wrap-mode: nowrap;\">Year-round</span></p><p><span style=\"text-wrap-mode: nowrap;\">Diameter</span></p><p><span style=\"text-wrap-mode: nowrap;\">R16 inches</span></p><p><span style=\"text-wrap-mode: nowrap;\">Tire Width</span></p><p><span style=\"text-wrap-mode: nowrap;\">305 mm</span></p><p><span style=\"text-wrap-mode: nowrap;\">Proportion</span></p><p><span style=\"text-wrap-mode: nowrap;\">70%</span></p><p><span style=\"text-wrap-mode: nowrap;\">Vehicle Type</span></p><p><span style=\"text-wrap-mode: nowrap;\">SUV</span></p><p><span style=\"text-wrap-mode: nowrap;\">Speed Index</span></p><p><span style=\"text-wrap-mode: nowrap;\">Q (160 km/h)</span></p><p><span style=\"text-wrap-mode: nowrap;\">Load Index</span></p><p><span style=\"text-wrap-mode: nowrap;\">124 (1600 kg)</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060208593317874g.png', 'attachment/2026-06/2026060208593317874g.png', '7120.0', '7120.0', '0.0', '0.0', 0, '', '0.00', 1, 1780387201, 10000, 10000, 0, 34, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(200, 0, 'normal', 'Men\'s genuine leather bag, Grande Pelle 11430, brown.', '<p><span style=\"text-wrap-mode: nowrap;\">Description</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Material: Genuine leather.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Color: Brown.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Dimensions (W x H x D, cm): 30 x 23 x 6 cm.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Origin: Ukraine.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Brand: GRANDE PELLE.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Product Description:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- Main compartment with magnetic snap flap closure;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- Additional compartment with magnetic snap closure;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- Interior cell phone pocket;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- 3 pen slots;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- Key ring;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- Exterior zip pocket on the back wall;</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">- Adjustable shoulder strap with leather and fabric trim.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">This men&#39;s rectangular bag is suitable for men of all ages. It is made of durable genuine leather. The color is brown with a slight chocolate tint. The texture is smooth and supple. The interior space can hold documents, tablets, A4 papers, etc. The shoulder strap, made of leather and fabric, will undoubtedly extend the bag&#39;s lifespan.</span></p><p><br/></p><p><br/></p><p>Features</p><p>Bag Material</p><p>Skin-like</p><p>Color</p><p>Brown</p><p>Size (Length x Width x Height)</p><p>Average cm</p><p>Brand Registration Country</p><p>Ukraine</p><p><br/></p>', '', '', 'attachment/2026-06/2026060209034917868h.png', 'attachment/2026-06/2026060209034917868h.png,attachment/2026-06/2026060209035217865j.png,attachment/2026-06/2026060209035517887i.png', '13830.0', '13830.0', '0.0', '0.0', 0, '', '0.00', 1, 1780387437, 10000, 10000, 0, 51, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(201, 0, 'normal', 'Sandoz 81335-90 watch', '<p>				</p><p>Description: Movement type: Quartz; Case material: Stainless steel</p><p><br/></p><p>Features</p><p>Style</p><p>Classic</p><p>Functional</p><p>Stopwatch</p><p>Time Format</p><p>12-hour</p><p>Features</p><p>Pre-owned</p><p>Dial Type</p><p>Arabic Numerals</p><p>Body Type</p><p>Round</p><p>Body Material</p><p>Stainless Steel</p><p>Main Dial Color</p><p>White</p><p>Strap/Bracelet Color</p><p>Black</p><p>Strap/Bracelet Material</p><p>Skin Tone</p><p>Body Color</p><p>Rose Gold</p><p>Assembly Plant</p><p>Switzerland</p><p>Backlight</p><p>No Backlight</p><p>Equipment</p><p>Brand Packaging, Watch</p><p>Brand Registration Country</p><p>Switzerland</p><p>Warranty</p><p>24 Months</p><p><br/></p><p>				</p>', '', '', 'attachment/2026-06/2026060209064717830i.png', 'attachment/2026-06/2026060209064717830i.png', '13830.0', '13830.0', '0.0', '0.0', 0, '', '0.00', 1, 1780387583, 10000, 10000, 0, 26, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(202, 0, 'normal', 'Refrigerator Gorenje RK4182PW4 Gorenje RK4182PW4 953110', '<p>The Gorenje RK4182PW4 refrigerator is not just a kitchen appliance, but a true guardian of your supplies and style. It successfully combines modern technology, quality and energy efficiency class A++, which indicates reduced electricity consumption and significant savings on bills. It is a great choice for families who want to care about the environment without compromising the comfort of their home. The two-chamber design with a useful volume of 264 liters allows you to organize the space in the best way. With 198 liters of refrigerator volume, you will have four shelves and four door baskets at your disposal, which will make it easier to access frequently used products. The shelves made of durable glass withstand heavy loads, and the convenient vegetable container will help keep fruits and vegetables fresh for longer. Thanks to the freshness zone, also called the zero chamber, cold products will remain as if they had just been purchased. The door re-hanging function adds flexibility in choosing the installation location, and the adjustable feet allow you to perfectly level the appliance even on uneven surfaces. The hidden condenser contributes to fast cooling and minimizes dust accumulation, reducing the frequency of maintenance. The freezer with a volume that allows you to accommodate three sections guarantees the convenience of storing large stocks. It has a freezing capacity of up to 3 kg in 24 hours, which allows you to quickly and efficiently enter the freezing process. Although the defrosting system is manual, you can easily manage this process thanks to the easy-to-use controls. Special attention should be paid to the automatic (drip) defrosting system of the refrigerator compartment, which will save you from having to clean the refrigerator frequently. Powerful interior lighting and high-quality LED lamps not only improve the visibility of all products, but also provide additional energy savings, as they consume less energy and last longer. Thanks to its compact dimensions - 180 cm high, 55 cm wide and 55.7 cm deep - the refrigerator fits perfectly into any kitchen interior, complementing it with its elegant white design. Thus, the Gorenje RK4182PW4 refrigerator embodies all modern requirements for quality and functionality, combining them with elegance and economy. Store your products with the style and reliability that this high-quality assistant offers.</p><p>Hide ↓</p><p><br/></p>', '', '', 'attachment/2026-06/2026060209054217866q.png', 'attachment/2026-06/2026060209054217866q.png,attachment/2026-06/2026060209054617881k.png', '21120.0', '21120.0', '0.0', '0.0', 0, '', '0.00', 1, 1780387635, 10000, 9917, 0, 35, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(203, 0, 'normal', 'Samsung Odyssey OLED G8 G81SF 27-inch Gaming Monitor (LS27FG812SIXUA) -- 4K QD-OLED / 0.03 ms (GtG) ', '<p>Maximum refresh rate: 240Hz</p><p>Display diagonal: 27 inches</p><p>Maximum display resolution: 3840x2160 (4K Ultra HD)</p><p>Matrix type: OLED</p><p>Display contrast ratio: 1,000,000:1</p><p>Ports: 1 TRS mini jack (3.5 mm)</p><p>1 USB Type-B port</p><p>2 HDMI ports</p><p>2 USB Type-A ports</p><p>DisplayPort</p><p><br/></p>', '', '', 'attachment/2026-06/2026060209131117873x.png', 'attachment/2026-06/2026060209131117873x.png,attachment/2026-06/2026060209131517896w.png', '38430.0', '38430.0', '0.0', '0.0', 0, '', '0.00', 1, 1780388070, 10000, 976, 0, 51, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, '');
INSERT INTO `xy_product` (`product_id`, `product_guid`, `product_type`, `product_name`, `product_text`, `product_keys`, `product_desc`, `product_logo`, `product_album`, `product_money`, `product_smoney`, `product_mmoney`, `product_wlmoney`, `product_point`, `product_mark`, `product_weight`, `product_state`, `product_atime`, `product_order`, `product_num`, `product_sellnum`, `product_clicknum`, `product_collectnum`, `product_asknum`, `product_commentnum`, `product_commentrate`, `product_commentstar`, `product_istuijian`, `product_rule`, `prokey_type`, `prokey_user`, `prokey_pw`, `prokey_edate`, `huodong_id`, `huodong_type`, `huodong_tag`, `huodong_stime`, `huodong_etime`, `category_id`, `brand_id`, `rule_id`) VALUES
(204, 0, 'normal', 'Xiaomi Mi 17T 12/512GB Black Phone (1201330)', '<p>Screen (6.59-inch, P-OLED, 2756x1268) / MediaTek Dimensity 8500 Ultra (1 x 3.25 GHz + 3 x 3.0 GHz + 4 x 2.1 GHz) / Specifications: 50MP + 50MP + 12MP dual rear cameras, 32MP front camera / 12GB RAM / 512GB internal storage / Supports 3G / LTE / 5G / GPS / Supports dual Nano-SIM cards / Android 16 / 6500 mAh battery</p><p><br/></p><p><span style=\"text-wrap-mode: nowrap;\">Specifications</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Series: 17T</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Communication Standards/Internet</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Communication Standards: 2G (GPRS/EDGE)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">3G (WCDMA/UMTS/HSPA)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">4G (LTE)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">5G</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Display: Screen Diagonal Size: 6.59 inches</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Display Resolution: 2756x1268</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Screen Type: P-OLED</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Screen Refresh Rate: 120Hz</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">SIM Card:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of SIM Cards: 2 x Nano-SIM</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Memory Specifications:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">RAM: 12GB</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Internal Storage: 512GB</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Supported Memory Card Formats: No memory card expansion</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Operating System: Android</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Front-end Camera: 32MP</span></p><p><span style=\"text-wrap-mode: nowrap;\">Front-end Camera Features: Single lens</span></p><p><span style=\"text-wrap-mode: nowrap;\">Front-end Camera Position: Punch-hole</span></p><p><span style=\"text-wrap-mode: nowrap;\">Front-end Flash Type:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Software:</span></p><p><span style=\"text-wrap-mode: nowrap;\">Processor:</span></p><p><span style=\"text-wrap-mode: nowrap;\">Processor Name: MediaTek Dimensity 8500 Ultra</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Core Type: Cortex-A725</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Video Core:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">ARM Mali-G720 MC8</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Core Count: 1+3+4</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">MediaTek Series: Dimensity Series</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Processor Frequency: 1 x 3.4 GHz + 3 x 3.2 GHz + 4 x 2.2 GHz</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Main Camera:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">50MP + 50MP + 12MP</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Main Camera Features:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Autofocus</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Flash</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Telephoto Lens</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Ultra-Wide Lens</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Wide Lens</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of Main Cameras:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">3</span></p><p><span style=\"text-wrap-mode: nowrap;\">Power:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Battery Capacity:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">6500 mAh</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Wired Charging Power:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">67W</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Ports:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Ports:</span></p><p><span style=\"text-wrap-mode: nowrap;\">USB Type-C</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Navigation:</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Navigation: A-GPS</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">BeiDou</span></p><p><span style=\"text-wrap-mode: nowrap;\">GPS</span></p><p><span style=\"text-wrap-mode: nowrap;\">Galileo</span></p><p><span style=\"text-wrap-mode: nowrap;\">QZSS</span></p><p><span style=\"text-wrap-mode: nowrap;\">GLONASS</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Digital Compass</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Dimensions:</span></p><p><span style=\"text-wrap-mode: nowrap;\">Weight: 200g</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Width: 75.2mm</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Height: 157.6mm</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Thickness: 8.17mm Millimeters</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Wireless Technology</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Wireless Technology Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Wi-Fi 6E</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Bluetooth 6.0</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Additional Features</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Security Features</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Face Unlock</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">In-Screen Fingerprint Recognition</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Dust/Moisture Resistance Rating</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">IP68</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Sensors</span></p><p><span style=\"text-wrap-mode: nowrap;\">Infrared Emitter</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Accelerometer</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Gyroscope</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Proximity Sensor</span></p><p><span style=\"text-wrap-mode: nowrap;\">Light Sensor</span></p><p><span style=\"text-wrap-mode: nowrap;\">Color Temperature Sensor</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">General Features</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Package Contents</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Documents</span></p><p><span style=\"text-wrap-mode: nowrap;\">Sync Cable</span></p><p><span style=\"text-wrap-mode: nowrap;\">SIM Card Ejector Clip</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Phone</span></p><p><span style=\"text-wrap-mode: nowrap;\">Protective Case</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Wireless Technology</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Bluetooth 6.0</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">NFC</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Wi-Fi</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Infrared Port</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Device</span></p><p><span style=\"text-wrap-mode: nowrap;\">Integrated AI</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">eSIM Support</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Stereo Speakers</span></p><p><span style=\"text-wrap-mode: nowrap;\">Fast Charging</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Dimensions</span></p><p><span style=\"text-wrap-mode: nowrap;\">All-in-One</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Case Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Borderless Display</span></p><p><span style=\"text-wrap-mode: nowrap;\">Waterproof</span></p><p><span style=\"text-wrap-mode: nowrap;\">Color</span></p><p><span style=\"text-wrap-mode: nowrap;\">Black</span></p><p><span style=\"text-wrap-mode: nowrap;\">Year of Release</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">2026</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Brand Registration: China</span></p><p><span style=\"text-wrap-mode: nowrap;\">Warranty Period</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">12 Months</span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Production: China</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">* Built-in storage capacity depends on the operating system and manufacturer-installed programs.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">* Product specifications and devices are subject to change by the manufacturer without notice.</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060209120517820p.png', 'attachment/2026-06/2026060209120517820p.png,attachment/2026-06/2026060209120717817v.png,attachment/2026-06/2026060209121017876f.png', '29324.0', '29324.0', '0.0', '0.0', 0, '', '0.00', 1, 1780388074, 10000, 10000, 0, 57, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(205, 0, 'normal', 'Dell Vostro 3530 laptop, Intel Core i5 1334U processor, 8 GB RAM, 512 GB SSD, 15.6-inch Full HD 120 ', '<p>Processor: 10-core Intel Core i5-1334U (1.3 - 4.6 GHz)</p><p>Installed Memory: 8 GB</p><p>SSD Capacity: 512 GB</p><p><br/></p><p><br/></p><p>Description</p><p>Dell Vostro 3530 Laptop, Intel Core i5 1334U Processor, 8 GB RAM, 512 GB SSD, 15.6-inch Full HD 120 Hz Display, Black, Pre-installed with Windows 11 Pro</p><p><br/></p><p><br/></p><p>Features</p><p>Operating System</p><p>Operating System</p><p>Windows 11 Professional</p><p>Processor</p><p>Processor</p><p>10-core Intel Core i5-1334U (1.3 - 4.6 GHz)</p><p>Graphics Card</p><p>Graphics Card Type</p><p>Augmented</p><p>Color</p><p>Black</p><p>Data Storage Device</p><p>SSD Capacity</p><p>512 GB</p><p>Drive Type</p><p>Solid State Drive</p><p>Memory</p><p>Installed Memory Capacity</p><p>8 GB</p><p>Memory Type</p><p>DDR5</p><p>Screen</p><p>Screen Diagonal</p><p>15.6 inches</p><p>Screen Refresh Rate</p><p>120 Hz</p><p>Resolution</p><p>1920x1080</p><p>Screen Type</p><p>IPS</p><p>Warranty</p><p>12 Months</p><p><br/></p>', '', '', 'attachment/2026-06/2026060209173817836u.png', 'attachment/2026-06/2026060209173817836u.png,attachment/2026-06/2026060209174117860u.png,attachment/2026-06/2026060209174417882s.png', '62722.0', '62722.0', '0.0', '0.0', 0, '', '0.00', 1, 1780388316, 10000, 10000, 0, 39, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(206, 0, 'normal', 'Xiaomi 17 12/512GB Ice Blue Global Mobile Phone', '<p><span style=\"text-wrap-mode: nowrap;\">Smartphone and camera in one body</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Xiaomi 17 offers you to take impressive shots using proprietary Leica optics and lenses that provide enough light in each scene for shooting. The Qualcomm Snapdragon 8 Elite Gen 5 mobile platform ensures a high level of device performance even under high loads. The compact body houses a capacious battery, the charge of which is enough to use the gadget throughout the day. 100W charging allows you to charge in a matter of minutes. Xiaomi HyperOS allows you to unlock the full potential of AI.</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060209192617871h.png', 'attachment/2026-06/2026060209192617871h.png,attachment/2026-06/2026060209192917843u.png', '46870.0', '46870.0', '0.0', '0.0', 0, '', '0.00', 1, 1780388454, 10000, 976, 0, 53, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(207, 0, 'normal', 'Gigabyte B650 Eagle AX Motherboard (sAM5, AMD B650, PCI-Ex16)', '<p><span style=\"text-wrap-mode: nowrap;\">Description</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Superior Performance</span></p><p><span style=\"text-wrap-mode: nowrap;\">Facing rapid technological advancements, GIGABYTE consistently stays ahead of the curve, providing customers with cutting-edge features and technologies. GIGABYTE motherboards feature upgraded power solutions, the latest storage standards, and excellent connectivity options to ensure optimal gaming performance.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Connectivity</span></p><p><span style=\"text-wrap-mode: nowrap;\">GIGABYTE motherboards offer unparalleled connectivity and extremely fast data transfer speeds.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Personalization</span></p><p><span style=\"text-wrap-mode: nowrap;\">GIGABYTE motherboards come pre-installed with a variety of practical and intuitive applications to help users take control of every aspect of their motherboard.</span></p><p><br/></p><p><br/></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Socket</span></p><p><span style=\"text-wrap-mode: nowrap;\">Socket AM5</span></p><p><span style=\"text-wrap-mode: nowrap;\">Chipset (Northbridge)</span></p><p><span style=\"text-wrap-mode: nowrap;\">AMD B650</span></p><p><span style=\"text-wrap-mode: nowrap;\">Form Factor</span></p><p><span style=\"text-wrap-mode: nowrap;\">ATX</span></p><p><span style=\"text-wrap-mode: nowrap;\">Memory Support</span></p><p><span style=\"text-wrap-mode: nowrap;\">4 x DDR5 DIMM slots; 2 channels</span></p><p><span style=\"text-wrap-mode: nowrap;\">M.2 (NGFF) Connector Count</span></p><p><span style=\"text-wrap-mode: nowrap;\">3 pieces</span></p><p><span style=\"text-wrap-mode: nowrap;\">Wireless Interface</span></p><p><span style=\"text-wrap-mode: nowrap;\">802.11 a/b/g/n/ac/ax</span></p><p><span style=\"text-wrap-mode: nowrap;\">Bluetooth</span></p><p><span style=\"text-wrap-mode: nowrap;\">Processor Support</span></p><p><span style=\"text-wrap-mode: nowrap;\">AMD Ryzen 7000/8000/9000 series</span></p><p><span style=\"text-wrap-mode: nowrap;\">Max Memory Frequency</span></p><p><span style=\"text-wrap-mode: nowrap;\">8000 MHz</span></p><p><span style=\"text-wrap-mode: nowrap;\">Network Interface</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 x 1 Gigabit/s</span></p><p><span style=\"text-wrap-mode: nowrap;\">Embedded Video</span></p><p><span style=\"text-wrap-mode: nowrap;\">Supports processor video cores</span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Origin</span></p><p><span style=\"text-wrap-mode: nowrap;\">China</span></p><p><span style=\"text-wrap-mode: nowrap;\">PCI Express x16</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 x PCI-E 4.0 x16 slot</span></p><p><span style=\"text-wrap-mode: nowrap;\">3 x PCI-E 3.0 x16 (x1) slots</span></p><p><span style=\"text-wrap-mode: nowrap;\">Video Output</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 x HDMI Interfaces</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">DisplayPort</span></p><p><span style=\"text-wrap-mode: nowrap;\">Maximum Memory</span></p><p><span style=\"text-wrap-mode: nowrap;\">256GB (8000 (overclocked)/7800 (overclocked)/7600 (overclocked)/7200 (overclocked)/7000 (overclocked)/6800 (overclocked)/6600 (overclocked)/6400 (overclocked)/6200 (overclocked)/6000 (overclocked)/5600 (overclocked)/5200/4800/4400MHz)</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">USB</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 USB Type-C port</span></p><p><span style=\"text-wrap-mode: nowrap;\">2 USB 3.2 ports</span></p><p><span style=\"text-wrap-mode: nowrap;\">6 USB 2.0 ports</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Power Connector</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 24-pin ATX power connector</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 8-pin ATX power connector, 12V</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Digital Audio Interface (S/PDIF)</span></p><p><span style=\"text-wrap-mode: nowrap;\">No digital audio output</span></p><p><span style=\"text-wrap-mode: nowrap;\">Built-in Audio</span></p><p><span style=\"text-wrap-mode: nowrap;\">Realtek 7.1-channel HDA codec</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">SATA II Connector Quantity</span></p><p><span style=\"text-wrap-mode: nowrap;\">None</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">SATA III Connector Quantity</span></p><p><span style=\"text-wrap-mode: nowrap;\">4 Components</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">RAID Controller</span></p><p><span style=\"text-wrap-mode: nowrap;\">0</span></p><p><span style=\"text-wrap-mode: nowrap;\">1</span></p><p><span style=\"text-wrap-mode: nowrap;\">10</span></p><p><span style=\"text-wrap-mode: nowrap;\">External Connectors</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 PS/2 Keyboard/Mouse Combo Port</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 HDMI Port</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 DisplayPort Port</span></p><p><span style=\"text-wrap-mode: nowrap;\">6 USB 2.0 Ports</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 USB 3.2 Type-C Gen1 Port</span></p><p><span style=\"text-wrap-mode: nowrap;\">2 USB 3.2 Gen2 Ports</span></p><p><span style=\"text-wrap-mode: nowrap;\">2 SMA Antenna Interfaces (2T2R)</span></p><p><span style=\"text-wrap-mode: nowrap;\">1 LAN (RJ-45) Port</span></p><p><span style=\"text-wrap-mode: nowrap;\">3 Audio Interfaces</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Video output only works if the processor has an integrated graphics core.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of Processor Sockets</span></p><p><span style=\"text-wrap-mode: nowrap;\">1</span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of Memory Slots</span></p><p><span style=\"text-wrap-mode: nowrap;\">4</span></p><p><span style=\"text-wrap-mode: nowrap;\">Physical Dimensions</span></p><p><span style=\"text-wrap-mode: nowrap;\">30.5 x 24.4 cm</span></p><p><span style=\"text-wrap-mode: nowrap;\">Number of LAN Ports</span></p><p><span style=\"text-wrap-mode: nowrap;\">1</span></p><p><span style=\"text-wrap-mode: nowrap;\">Cooling</span></p><p><span style=\"text-wrap-mode: nowrap;\">Passive</span></p><p><span style=\"text-wrap-mode: nowrap;\">Audio Jacks</span></p><p><span style=\"text-wrap-mode: nowrap;\">3 Mini Jacks</span></p><p><span style=\"text-wrap-mode: nowrap;\">Built-in Backlight</span></p><p><span style=\"text-wrap-mode: nowrap;\">No Backlight</span></p><p><span style=\"text-wrap-mode: nowrap;\">Board Color</span></p><p><span style=\"text-wrap-mode: nowrap;\">Black with Gray</span></p><p><span style=\"text-wrap-mode: nowrap;\">Country of Brand Registration</span></p><p><span style=\"text-wrap-mode: nowrap;\">China (Taiwan)</span></p><p><span style=\"text-wrap-mode: nowrap;\">Warranty</span></p><p><span style=\"text-wrap-mode: nowrap;\">36 Months</span></p><p><span style=\"text-wrap-mode: nowrap;\">EAN</span></p><p><span style=\"text-wrap-mode: nowrap;\">4719331860158</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060309072517857y.png', 'attachment/2026-06/2026060309072517857y.png,attachment/2026-06/2026060309072717852d.png,attachment/2026-06/2026060309073117859w.png', '7000.0', '7000.0', '0.0', '0.0', 0, '', '0.00', 1, 1780474102, 10000, 10000, 0, 36, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(208, 0, 'normal', 'Kingston KC3000 1TB M.2 2280 NVMe PCIe Gen 4.0 x4 3D TLC NAND SSD (SKC3000S/1024G)', '<p>Features</p><p>Size/Volume</p><p>1 TB</p><p>Read Speed</p><p>Up to 7000 MB/s</p><p>Write Speed</p><p>Up to 6000 MB/s</p><p>Power Consumption</p><p>Maximum Power Consumption for Read: 2.8 W;</p><p>Maximum Power Consumption for Write: 6.3 W;</p><p>Standby Power Consumption: 0.005 W</p><p>Form Factor</p><p>M.2</p><p>Time to Failure</p><p>1.8 Million Hours</p><p>Shock Resistance</p><p>Peak Operating Speed: 2.17G;</p><p>Peak Idle Speed: 20G</p><p>Connectivity</p><p>PCI Express 4.0 x4</p><p>Classification</p><p>Computer</p><p>Laptop</p><p>Drive Type</p><p>Internal</p><p>Memory Cell Type</p><p>3D NAND (TLC)</p><p>Country of Origin</p><p>China</p><p>Taiwan</p><p>Height</p><p>2.21 mm</p><p>Dimensions (W x D x H)</p><p>22 x 80 x 2.21 mm</p><p>Weight</p><p>7 g</p><p>Country of Brand Registration</p><p>United States</p><p>Warranty</p><p>5 Years</p><p>EAN</p><p>740617324433</p><p><br/></p>', '', '', 'attachment/2026-06/2026060309120717839d.png', 'attachment/2026-06/2026060309120717839d.png,attachment/2026-06/2026060309121017842o.png,attachment/2026-06/2026060309121317894n.png,attachment/2026-06/2026060309121617872v.png', '11000.0', '11000.0', '0.0', '0.0', 0, '', '0.00', 1, 1780474367, 10000, 10000, 0, 46, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(209, 0, 'normal', 'Philips 7000 Series HR3760/00 Blender', '<p><span style=\"text-wrap-mode: nowrap;\">Description: The Philips HR3760/00 blender features ProBlend Ultra technology to create smoothies and other dishes with diverse flavors and textures. It includes 6 quick programs, a cleaning function, and an ice-crushing function. A digital display shows the time and speed settings. ProBlend</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Ultra Technology: Combines 3 carefully designed synergistic functions to create an endless variety of flavors and textures.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Quick Select Programs give you instant control.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Quick Select Programs display time and speed settings, helping you easily master the complex steps of cooking recipes. Available programs include: smoothies, nut butters, desserts, soups, sauces, ice crushing, and cleaning.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Large-capacity pitcher for the whole family. The 2-liter glass pitcher has an actual capacity of 1.8 liters, enough to meet the water needs of the whole family.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Convenient Quick Clean function: Simply add a small amount of water and dish soap to start the cleaning function, and you&#39;ll see results in just 2 minutes. This cleaning mode can even remove sticky food residue such as cake batter and nut butter.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Expand your recipe library with the NutriU app!</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Install the NutriU app to explore over 200 creative recipes that teach you how to make your favorite drinks, meals, and snacks with your new blender. Preparing healthy meals should be easy and convenient, while also inspiring your family&#39;s craving for more healthy dishes. Therefore, the NutriU app offers a variety of healthy alternatives to your favorite dishes. From healthy chocolate desserts to nutritious main meals, our carefully crafted recipes are both healthy and delicious.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Dishwasher safe for all removable parts</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">All removable parts are dishwasher safe. The ProBlend Ultra blades are specially designed to prevent food from getting stuck underneath.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">ProBlend Ultra Blades</span></p><p><span style=\"text-wrap-mode: nowrap;\">The ProBlend Ultra blades feature a unique serrated design that grinds and chops even the toughest ingredients for a perfect blend.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">ProBlend Ultra Motor</span></p><p><span style=\"text-wrap-mode: nowrap;\">The 1500W ProBlend Ultra motor provides optimal blending speed and circulation of all ingredients.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">ProBlend Ultra Blending Cup</span></p><p><span style=\"text-wrap-mode: nowrap;\">The ProBlend Ultra Blending Cup with its unique ribbed design controls the flow of ingredients, ensuring even mixing.</span></p><p><br/></p><p><br/></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Power</span></p><p><span style=\"text-wrap-mode: nowrap;\">1500W</span></p><p><span style=\"text-wrap-mode: nowrap;\">Nozzle</span></p><p><span style=\"text-wrap-mode: nowrap;\">Mini Shredder</span></p><p><span style=\"text-wrap-mode: nowrap;\">Type</span></p><p><span style=\"text-wrap-mode: nowrap;\">Stationery</span></p><p><span style=\"text-wrap-mode: nowrap;\">Power Source</span></p><p><span style=\"text-wrap-mode: nowrap;\">From the Internet</span></p><p><span style=\"text-wrap-mode: nowrap;\">Bowl/Glass Material</span></p><p><span style=\"text-wrap-mode: nowrap;\">Glass</span></p><p><span style=\"text-wrap-mode: nowrap;\">Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">Pulse Mode</span></p><p><span style=\"text-wrap-mode: nowrap;\">Prevention of No-Bowl Opening Protection</span></p><p><span style=\"text-wrap-mode: nowrap;\">Motor Overheat Protection</span></p><p><span style=\"text-wrap-mode: nowrap;\">Dishwasher Safe</span></p><p><span style=\"text-wrap-mode: nowrap;\">Anti-Slip Feet</span></p><p><span style=\"text-wrap-mode: nowrap;\">Self-Cleaning</span></p><p><span style=\"text-wrap-mode: nowrap;\">Schedule</span></p><p><span style=\"text-wrap-mode: nowrap;\">For Ice Crushing</span></p><p><span style=\"text-wrap-mode: nowrap;\">For Smoothies</span></p><p><span style=\"text-wrap-mode: nowrap;\">Speed Quantity</span></p><p><span style=\"text-wrap-mode: nowrap;\">12</span></p><p><span style=\"text-wrap-mode: nowrap;\">Colors</span></p><p><span style=\"text-wrap-mode: nowrap;\">Silver</span></p><p><span style=\"text-wrap-mode: nowrap;\">Black</span></p><p><span style=\"text-wrap-mode: nowrap;\">Dimensions (H x W x D)</span></p><p><span style=\"text-wrap-mode: nowrap;\">44.2 x 16.7 x 21.6 cm</span></p><p><span style=\"text-wrap-mode: nowrap;\">Pack Dimensions (H x W x D)</span></p><p><span style=\"text-wrap-mode: nowrap;\">27 x 29.3 x 38.5 cm</span></p><p><span style=\"text-wrap-mode: nowrap;\">Weight</span></p><p><span style=\"text-wrap-mode: nowrap;\">4.58 kg</span></p><p><span style=\"text-wrap-mode: nowrap;\">Pack Weight (kg)</span></p><p><span style=\"text-wrap-mode: nowrap;\">5.6</span></p><p><span style=\"text-wrap-mode: nowrap;\">Additional Features</span></p><p><span style=\"text-wrap-mode: nowrap;\">ProBlend Ultra, Quick Clean, Quick Select Technology</span></p><p><span style=\"text-wrap-mode: nowrap;\">Compatible with NutriU Mobile App. The ProBlend Ultra blending cup features a unique ribbed design for even blending. ProBlend Ultra technology combines three functions.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Body Material: Metal, Plastic; Brand Registration Country: Netherlands; Warranty: 24-month official manufacturer&#39;s warranty; Product Origin: China; EAN: 8720389013539; Main Bowl Capacity: 2 liters</span></p><p><br/></p>', '', '', 'attachment/2026-06/2026060309142017885z.png', 'attachment/2026-06/2026060309142017885z.png,attachment/2026-06/2026060309142317806a.png,attachment/2026-06/2026060309142617812n.png', '7000.0', '7000.0', '0.0', '0.0', 0, '', '0.00', 1, 1780474523, 10000, 10000, 0, 52, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, ''),
(210, 0, 'normal', 'The Silvercrest 7000 BTU SMK 7000 B2 portable air conditioner (100388151) is suitable for spaces sma', '<p>				</p><p><br/></p><p><span style=\"text-wrap-mode: nowrap;\">Product Description</span></p><p><span style=\"text-wrap-mode: nowrap;\">3-in-1: Cooling, Dehumidifying, and Ventilating. Features wheels and a side handle for easy movement. Two ventilation settings. Automatic horizontal swing function. Adjustable temperature range of 16 to 31 degrees Celsius. Suitable for rooms of 30 to 45 cubic meters. 24-hour timer with digital timer. Dehumidification function, maximum dehumidification capacity of 1.5 liters/hour at 30 degrees Celsius/80% relative humidity. With thermostat. Touch control panel. With removable air filter. Includes remote control (with batteries), 1.5-meter drain hose, hinged window seals, and hose connectors. Technical Specifications: Power: 785 watts; Cooling Capacity: 2.0 kW (7000 BTU); Energy Efficiency Rating: A; Airflow: 300 cubic meters/hour; Water Tank Capacity: 0.5 liters; Noise Level: 65 dB(A). Dimensions (including wheels): 363 mm (W) x 363 mm (H) x 363 mm (D); Weight: Approx. 17.5 kg.</span></p><p><span style=\"text-wrap-mode: nowrap;\"><br/></span></p><p><span style=\"text-wrap-mode: nowrap;\">Type: Mobile device, Windows</span></p><p><span style=\"text-wrap-mode: nowrap;\">Cooling capacity (kW): Up to 2.5 kW</span></p><p><span style=\"text-wrap-mode: nowrap;\">Energy rating: I</span></p><p><span style=\"text-wrap-mode: nowrap;\">Function: Remote control</span></p><p><span style=\"text-wrap-mode: nowrap;\">Color: White</span></p><p><span style=\"text-wrap-mode: nowrap;\">Manufacturer: SILVERCREST®</span></p><p><br/></p><p><br/></p><p>Features</p><p>Room Area</p><p>20 square meters</p><p>Operating Mode</p><p>Cooling</p><p>Features</p><p>Residential</p><p>Outdoor Unit Color</p><p>White</p><p><br/></p><p><br/></p><p>				</p>', '', '', 'attachment/2026-06/2026060309165217881f.png', 'attachment/2026-06/2026060309165217881f.png,attachment/2026-06/2026060309165517856n.png,attachment/2026-06/2026060309165917872g.png,attachment/2026-06/2026060309170117871g.png', '12000.0', '12000.0', '0.0', '0.0', 0, '', '0.00', 1, 1780474649, 10000, 10000, 0, 68, 0, 0, 0, '', 0, 0, '', '', '', '', '0000-00-00', 0, '', '', 0, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_prokey`
--

CREATE TABLE `xy_prokey` (
  `prokey_id` int(10) UNSIGNED NOT NULL,
  `prokey_type` varchar(10) DEFAULT NULL COMMENT 'one=固定卡密，more=逐条发放',
  `prokey_user` varchar(50) NOT NULL,
  `prokey_pw` varchar(50) NOT NULL,
  `prokey_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `prokey_edate` date NOT NULL,
  `prokey_state` varchar(10) NOT NULL DEFAULT 'new',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_prorule`
--

CREATE TABLE `xy_prorule` (
  `prorule_id` int(10) UNSIGNED NOT NULL COMMENT '商品规格id',
  `prorule_key` varchar(30) NOT NULL COMMENT '规格id组合',
  `prorule_name` varchar(50) NOT NULL COMMENT '规格名组合',
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商品商城价（有活动即活动价）',
  `product_smoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '商城价',
  `product_mmoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '规格市场价',
  `product_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '规格数量',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_quan`
--

CREATE TABLE `xy_quan` (
  `quan_id` int(10) UNSIGNED NOT NULL COMMENT '优惠券自增id',
  `quan_name` varchar(30) NOT NULL COMMENT '优惠券名称',
  `quan_type` varchar(10) NOT NULL DEFAULT 'online' COMMENT '发放方式(online线上领取/offline线下发放)',
  `quan_money` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券面值',
  `quan_limit` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券限制条件',
  `quan_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券发行量',
  `quan_num_get` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quan_num_use` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quan_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券增加日期',
  `quan_sdate` date NOT NULL COMMENT '优惠券开始日期',
  `quan_edate` date NOT NULL COMMENT '优惠券结束日期',
  `product_id` text NOT NULL COMMENT '商品id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_quanlog`
--

CREATE TABLE `xy_quanlog` (
  `quanlog_id` int(10) UNSIGNED NOT NULL COMMENT '优惠券自增id',
  `quanlog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '领取时间',
  `quanlog_utime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '使用日期',
  `quanlog_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0未使用,1已使用,2过期',
  `quan_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quan_key` char(10) NOT NULL,
  `quan_name` varchar(30) NOT NULL COMMENT '优惠券名称',
  `quan_money` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券面值',
  `quan_limit` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '优惠券限制条件',
  `quan_sdate` date NOT NULL COMMENT '优惠券开始日期',
  `quan_edate` date NOT NULL COMMENT '优惠券结束日期',
  `product_id` text NOT NULL COMMENT '商品id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_refund`
--

CREATE TABLE `xy_refund` (
  `refund_id` bigint(15) UNSIGNED NOT NULL,
  `refund_outid` varchar(50) NOT NULL,
  `refund_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `refund_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `refund_product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `refund_wl_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `refund_text` varchar(255) NOT NULL COMMENT '订单留言',
  `refund_tname` varchar(10) NOT NULL,
  `refund_phone` varchar(30) NOT NULL,
  `refund_address` varchar(50) NOT NULL,
  `refund_wl_name` varchar(20) NOT NULL,
  `refund_wl_id` varchar(20) NOT NULL,
  `refund_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `refund_ftime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `refund_state` varchar(10) NOT NULL DEFAULT 'wcheck',
  `refund_pstate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否付款(0未付款/1已付款)',
  `refund_presult` varchar(50) NOT NULL,
  `order_id` varchar(30) NOT NULL COMMENT '订单id',
  `orderdata_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_guid` char(32) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_rule` varchar(255) NOT NULL,
  `product_logo` varchar(200) NOT NULL,
  `product_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `product_jjmoney` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '商品加减价格',
  `product_allmoney` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_refund`
--

-- (cleared by user request: data of `xy_refund`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_refundlog`
--

CREATE TABLE `xy_refundlog` (
  `refundlog_id` int(10) UNSIGNED NOT NULL,
  `refundlog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `refundlog_text` text NOT NULL,
  `refund_id` bigint(15) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_refundlog`
--

-- (cleared by user request: data of `xy_refundlog`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_refund_addr`
--

CREATE TABLE `xy_refund_addr` (
  `address_id` int(10) UNSIGNED NOT NULL,
  `address_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `refund_tname` varchar(10) NOT NULL,
  `refund_phone` varchar(30) NOT NULL,
  `refund_address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_refund_addr`
--

INSERT INTO `xy_refund_addr` (`address_id`, `address_order`, `refund_tname`, `refund_phone`, `refund_address`) VALUES
(1, 0, '张开明', '18955129593', '广东省汕头市金平区下水道88号');

-- --------------------------------------------------------

--
-- 表的结构 `xy_rule`
--

CREATE TABLE `xy_rule` (
  `rule_id` smallint(5) UNSIGNED NOT NULL COMMENT '规格id',
  `rule_name` varchar(20) NOT NULL COMMENT '规格名称',
  `rule_memo` varchar(20) NOT NULL COMMENT '规格备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_rule`
--

INSERT INTO `xy_rule` (`rule_id`, `rule_name`, `rule_memo`) VALUES
(1, '颜色', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_ruledata`
--

CREATE TABLE `xy_ruledata` (
  `ruledata_id` smallint(5) UNSIGNED NOT NULL COMMENT '规格值id',
  `ruledata_name` varchar(20) NOT NULL COMMENT '规格值名',
  `ruledata_logo` varchar(100) NOT NULL COMMENT '规格值图',
  `ruledata_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '规格值排序',
  `rule_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '规格id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_ruledata`
--

INSERT INTO `xy_ruledata` (`ruledata_id`, `ruledata_name`, `ruledata_logo`, `ruledata_order`, `rule_id`) VALUES
(1, '汝瓷白汝瓷白', '', 2, 1),
(2, '深邃黑深邃黑', '', 1, 1),
(3, '荣耀金荣耀金', '', 3, 1),
(4, '高端蓝高端蓝', '', 4, 1),
(5, '天空蓝天空蓝', '', 5, 1),
(6, '长江黄长江黄', '', 6, 1),
(7, '深海蓝深海蓝', '', 7, 1),
(8, '草地绿草地绿', '', 8, 1),
(9, '黑夜黑黑夜黑', '', 9, 1),
(10, '银白银白', '', 10, 1),
(11, '彩色彩色', '', 11, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xy_setting`
--

CREATE TABLE `xy_setting` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_setting`
--

INSERT INTO `xy_setting` (`setting_key`, `setting_value`) VALUES
('web_title', 'Jumia'),
('web_keywords', 'Jumia'),
('web_description', 'Jumia'),
('web_copyright', '2015-2019'),
('web_tpl', 'default'),
('web_logo', 'attachment/2026-03/2026030115061117788i.png'),
('web_qrcode', 'attachment/2020-01/2020011014295415749b.jpg'),
('web_phone', '0'),
('web_qq', '0'),
('web_icp', ''),
('web_guestbuy', '0'),
('web_hotword', ''),
('web_tongji', ''),
('web_wlname', ''),
('wechat_admin_openid', ''),
('wap_logo', 'attachment/2026-03/2026030115061217703g.png'),
('email_smtp', ''),
('email_port', ''),
('email_ssl', '1'),
('email_name', ''),
('email_pw', ''),
('email_nname', ''),
('email_admin', ''),
('sms_key', '23306060'),
('sms_admin', '18955129593'),
('sms_sign', 'uzmu'),
('point_state', '1'),
('point_reg', '10'),
('point_comment', '50'),
('point_login', '0'),
('point_money', '100'),
('cashout_min', '10'),
('cashout_fee', '0'),
('wechat_appid', 'wx8d74b946b84f199a'),
('wechat_appsecret', 'e28760c2989d94ce7d906e8b6f936f53'),
('wechat_token', 'xyshopBh7cBHxtqdALk'),
('wechat_rssadd', ''),
('wechat_access_token', ''),
('wechat_menu', ''),
('tg_state', '0'),
('tg_fc1', '0'),
('tg_fc2', '0'),
('tg_fc3', '0'),
('web_checkphone', '0'),
('web_checkemail', '0'),
('sms_secret', '5b0f65074988da17b3958f6452dd2821');

-- --------------------------------------------------------

--
-- 表的结构 `xy_sign`
--

CREATE TABLE `xy_sign` (
  `key` varchar(20) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_sign`
--

INSERT INTO `xy_sign` (`key`, `value`) VALUES
('sign_state', '0'),
('sign_text', ''),
('sign_point', '10'),
('sign_point_shouci', '10'),
('sign_point_lianxu', ''),
('sign_point_leiji', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_signlog`
--

CREATE TABLE `xy_signlog` (
  `signlog_id` int(10) UNSIGNED NOT NULL COMMENT '自增id',
  `signlog_point` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '奖励积分',
  `signlog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '签到时间',
  `signlog_adate` date NOT NULL COMMENT '签到日期',
  `signlog_month` char(7) NOT NULL COMMENT '签到月份',
  `signlog_lx_day` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续签到天数',
  `signlog_lj_day` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '累计签到天数',
  `signlog_ip` char(15) NOT NULL COMMENT '签到者ip',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_tguser`
--

CREATE TABLE `xy_tguser` (
  `tg_id` int(10) UNSIGNED NOT NULL COMMENT '自增id',
  `tguser_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '推广用户id',
  `tguser_name` varchar(20) NOT NULL COMMENT '推广用户名',
  `tguser_level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '推广层级关系',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_user`
--

CREATE TABLE `xy_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_nickname` varchar(30) DEFAULT NULL,
  `user_pw` char(32) NOT NULL COMMENT '登录密码',
  `user_paypw` char(32) NOT NULL COMMENT '支付密码',
  `user_logo` varchar(200) NOT NULL,
  `user_money` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '账户余额',
  `user_money_cost` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '总消费额',
  `user_money_tg` decimal(10,1) UNSIGNED NOT NULL DEFAULT '0.0' COMMENT '推广总收益',
  `user_point` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '账户积分余额',
  `user_point_all` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '累计获得积分',
  `user_tname` varchar(10) NOT NULL COMMENT '用户姓名',
  `user_phone` char(11) NOT NULL COMMENT '用户手机',
  `user_tel` varchar(20) NOT NULL COMMENT '固定电话',
  `user_qq` varchar(10) NOT NULL COMMENT '用户QQ',
  `user_email` varchar(30) NOT NULL COMMENT '用户email',
  `user_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户注册时间',
  `user_ltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户上次登录时间',
  `user_address` varchar(255) NOT NULL COMMENT '用户地址',
  `user_ordernum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` char(15) NOT NULL COMMENT '用户注册ip',
  `user_wx_openid` varchar(50) NOT NULL,
  `userlevel_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户等级id',
  `tguser_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '推广用户id',
  `tguser_name` varchar(20) NOT NULL COMMENT '推广用户名',
  `tx` int(10) NOT NULL DEFAULT '1',
  `reason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_user`
--

-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- (cleared by user request: data of `xy_user`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_useraddr`
--

CREATE TABLE `xy_useraddr` (
  `address_id` int(10) UNSIGNED NOT NULL,
  `address_province` varchar(20) NOT NULL,
  `address_city` varchar(20) NOT NULL,
  `address_area` varchar(20) NOT NULL,
  `address_text` varchar(100) NOT NULL,
  `address_atime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_tname` varchar(10) NOT NULL,
  `user_phone` char(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xy_userbank`
--

CREATE TABLE `xy_userbank` (
  `userbank_id` int(10) UNSIGNED NOT NULL,
  `userbank_name` varchar(20) NOT NULL,
  `userbank_num` varchar(50) NOT NULL,
  `userbank_type` varchar(10) NOT NULL COMMENT '银行标识',
  `userbank_tname` varchar(10) NOT NULL COMMENT '账户姓名',
  `userbank_address` varchar(50) NOT NULL,
  `userbank_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '绑定日期',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_userbank`
--

-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- (cleared by user request: data of `xy_userbank`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_userlevel`
--

CREATE TABLE `xy_userlevel` (
  `userlevel_id` smallint(5) UNSIGNED NOT NULL COMMENT '自增id',
  `userlevel_name` varchar(10) NOT NULL COMMENT '用户组名',
  `userlevel_value` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户组最大值',
  `userlevel_logo` varchar(100) NOT NULL COMMENT '用户组图标',
  `userlevel_zhe` decimal(3,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '折扣率',
  `userlevel_up` varchar(10) NOT NULL DEFAULT 'auto' COMMENT '升级方式(auto自动/hand手动)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_userlevel`
--

INSERT INTO `xy_userlevel` (`userlevel_id`, `userlevel_name`, `userlevel_value`, `userlevel_logo`, `userlevel_zhe`, `userlevel_up`) VALUES
(4, 'VIP1', 0, '', '1.00', 'hand'),
(3, 'VIP2', 0, '', '1.00', 'hand');

-- --------------------------------------------------------

--
-- 表的结构 `xy_wechat_notice`
--

CREATE TABLE `xy_wechat_notice` (
  `notice_id` int(10) UNSIGNED NOT NULL COMMENT '通知记录id',
  `notice_name` varchar(20) NOT NULL,
  `notice_type` varchar(20) NOT NULL,
  `notice_obj` varchar(5) NOT NULL,
  `notice_tpl` varchar(50) NOT NULL,
  `notice_tplid` varchar(100) NOT NULL,
  `notice_industry1` varchar(20) NOT NULL DEFAULT 'IT科技',
  `notice_industry2` varchar(20) NOT NULL DEFAULT '互联网|电子商务',
  `notice_example` text NOT NULL,
  `notice_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_wechat_notice`
--

INSERT INTO `xy_wechat_notice` (`notice_id`, `notice_name`, `notice_type`, `notice_obj`, `notice_tpl`, `notice_tplid`, `notice_industry1`, `notice_industry2`, `notice_example`, `notice_state`) VALUES
(1, '用户下单', 'order_add', 'user', 'OPENTM202297555', '', 'IT科技', '互联网|电子商务', '亲，您的订单已创建成功，请及时付款\n订单号：180621101215088\n商品名称：iPhoneX 64GB 深空灰色\n订购数量：1台\n订单总额：5980元\n付款方式：微信支付\n', 0),
(2, '订单付款', 'order_pay', 'user', 'OPENTM202183094', '', 'IT科技', '互联网|电子商务', '亲，您的订单已支付成功，正在为您备货，请耐心等待\n付款金额：5980元\n商品详情：iPhoneX 64GB 深空灰色\n支付方式：微信支付\n交易单号：180621101215088\n交易时间：2018年6月26日 18:36', 0),
(3, '订单发货', 'order_send', 'user', 'OPENTM410090504', '', 'IT科技', '互联网|电子商务', '亲，您的订单已发货，请注意查收\n商品详情：iPhoneX 64GB 深空灰色\n发货时间：2018年6月26日 18:36\n物流公司：顺丰快递\n快递单号：123456789\n收货地址：河南省灵宝市新华路逍遥商城\n', 0),
(4, '订单关闭', 'order_close', 'user', 'OPENTM408744504', '', 'IT科技', '互联网|电子商务', '亲，您的订单已被关闭\n商品名称：iPhoneX 64GB 深空灰色\n订单编号：180621101215088\n关闭原因：超时未付款', 0),
(5, '用户下单', 'order_add', 'admin', 'OPENTM202297555', '', 'IT科技', '互联网|电子商务', '您好，您收到了一个新订单\n订单号：180621101215088\n商品名称：iPhoneX 64GB 深空灰色\n订购数量：1台\n订单总额：5980元\n付款方式：微信支付\n付款状态：未支付', 0),
(6, '订单付款', 'order_pay', 'admin', 'OPENTM400255038', '', 'IT科技', '互联网|电子商务', '您好，您有一笔订单收款成功\n客户账号：逍遥商城\n订单编号：180621101215088\n付款金额：5980元\n付款时间：2018年6月26日 18:36\n商品信息：iPhoneX 64GB 深空灰色\n', 0);

-- --------------------------------------------------------

--
-- 表的结构 `xy_wechat_noticelog`
--

CREATE TABLE `xy_wechat_noticelog` (
  `noticelog_id` int(10) UNSIGNED NOT NULL COMMENT '通知记录id',
  `noticelog_tpl` varchar(50) NOT NULL,
  `noticelog_tplid` varchar(100) NOT NULL,
  `noticelog_name` varchar(100) NOT NULL COMMENT '通知名称',
  `noticelog_data` text NOT NULL COMMENT '通知内容',
  `noticelog_url` varchar(100) NOT NULL,
  `noticelog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '录入时间',
  `noticelog_stime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '通知时间',
  `noticelog_state` varchar(10) NOT NULL DEFAULT 'new' COMMENT '通知状态',
  `noticelog_error` varchar(50) NOT NULL COMMENT '失败提醒',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_wx_openid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_wechat_noticelog`
--

-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- (cleared by user request: data of `xy_wechat_noticelog`)
-- --------------------------------------------------------

--
-- 表的结构 `xy_yzmlog`
--

CREATE TABLE `xy_yzmlog` (
  `yzmlog_id` int(10) UNSIGNED NOT NULL COMMENT '自增id',
  `yzmlog_user` varchar(30) NOT NULL COMMENT '接受用户',
  `yzmlog_value` varchar(10) NOT NULL COMMENT '验证码值',
  `yzmlog_state` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证码状态(0待验证/1已验证)',
  `yzmlog_ip` char(15) NOT NULL COMMENT '验证码发送ip',
  `yzmlog_sessid` varchar(50) NOT NULL COMMENT '发送用户sessionid',
  `yzmlog_url` varchar(255) NOT NULL COMMENT '发送来源',
  `yzmlog_checknum` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证码检测失败次数',
  `yzmlog_atime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证码时间',
  `yzmlog_adate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `xy_ad`
--
ALTER TABLE `xy_ad`
  ADD PRIMARY KEY (`ad_id`);

--
-- 表的索引 `xy_admin`
--
ALTER TABLE `xy_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- 表的索引 `xy_adminlevel`
--
ALTER TABLE `xy_adminlevel`
  ADD PRIMARY KEY (`adminlevel_id`);

--
-- 表的索引 `xy_article`
--
ALTER TABLE `xy_article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `class_id` (`class_id`);

--
-- 表的索引 `xy_ask`
--
ALTER TABLE `xy_ask`
  ADD PRIMARY KEY (`ask_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_brand`
--
ALTER TABLE `xy_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- 表的索引 `xy_cart`
--
ALTER TABLE `xy_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_type` (`cart_act`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_guid` (`product_guid`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_cashout`
--
ALTER TABLE `xy_cashout`
  ADD PRIMARY KEY (`cashout_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cashout_state` (`cashout_state`);

--
-- 表的索引 `xy_category`
--
ALTER TABLE `xy_category`
  ADD PRIMARY KEY (`category_id`);

--
-- 表的索引 `xy_class`
--
ALTER TABLE `xy_class`
  ADD PRIMARY KEY (`class_id`);

--
-- 表的索引 `xy_collect`
--
ALTER TABLE `xy_collect`
  ADD PRIMARY KEY (`collect_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_comment`
--
ALTER TABLE `xy_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_express`
--
ALTER TABLE `xy_express`
  ADD PRIMARY KEY (`express_id`);

--
-- 表的索引 `xy_getpw`
--
ALTER TABLE `xy_getpw`
  ADD PRIMARY KEY (`getpw_id`),
  ADD KEY `getpw_token` (`getpw_token`);

--
-- 表的索引 `xy_huodong`
--
ALTER TABLE `xy_huodong`
  ADD PRIMARY KEY (`huodong_id`);

--
-- 表的索引 `xy_huodongdata`
--
ALTER TABLE `xy_huodongdata`
  ADD PRIMARY KEY (`huodongdata_id`),
  ADD KEY `huodong_id` (`huodong_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 表的索引 `xy_iplog`
--
ALTER TABLE `xy_iplog`
  ADD PRIMARY KEY (`iplog_id`),
  ADD KEY `iplog_ip` (`iplog_ip`),
  ADD KEY `iplog_adate` (`iplog_adate`);

--
-- 表的索引 `xy_link`
--
ALTER TABLE `xy_link`
  ADD PRIMARY KEY (`link_id`);

--
-- 表的索引 `xy_menu`
--
ALTER TABLE `xy_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- 表的索引 `xy_moneylog`
--
ALTER TABLE `xy_moneylog`
  ADD PRIMARY KEY (`moneylog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_notice`
--
ALTER TABLE `xy_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- 表的索引 `xy_noticelog`
--
ALTER TABLE `xy_noticelog`
  ADD PRIMARY KEY (`noticelog_id`),
  ADD KEY `noticelog_state` (`noticelog_state`);

--
-- 表的索引 `xy_order`
--
ALTER TABLE `xy_order`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_orderdata`
--
ALTER TABLE `xy_orderdata`
  ADD PRIMARY KEY (`orderdata_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 表的索引 `xy_order_pay`
--
ALTER TABLE `xy_order_pay`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_payment`
--
ALTER TABLE `xy_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- 表的索引 `xy_pintuan`
--
ALTER TABLE `xy_pintuan`
  ADD PRIMARY KEY (`pintuan_id`),
  ADD KEY `pintuan_state` (`pintuan_state`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `huodong_id` (`huodong_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_pintuanlog`
--
ALTER TABLE `xy_pintuanlog`
  ADD PRIMARY KEY (`pintuanlog_id`),
  ADD KEY `pintuan_id` (`pintuan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_pointlog`
--
ALTER TABLE `xy_pointlog`
  ADD PRIMARY KEY (`pointlog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_prodata`
--
ALTER TABLE `xy_prodata`
  ADD PRIMARY KEY (`product_guid`),
  ADD KEY `product_id` (`product_id`);

--
-- 表的索引 `xy_product`
--
ALTER TABLE `xy_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `huodong_type` (`huodong_type`);

--
-- 表的索引 `xy_prokey`
--
ALTER TABLE `xy_prokey`
  ADD PRIMARY KEY (`prokey_id`),
  ADD KEY `prokey_state` (`prokey_state`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 表的索引 `xy_prorule`
--
ALTER TABLE `xy_prorule`
  ADD PRIMARY KEY (`prorule_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 表的索引 `xy_quan`
--
ALTER TABLE `xy_quan`
  ADD PRIMARY KEY (`quan_id`);

--
-- 表的索引 `xy_quanlog`
--
ALTER TABLE `xy_quanlog`
  ADD PRIMARY KEY (`quanlog_id`),
  ADD KEY `quanlog_state` (`quanlog_state`),
  ADD KEY `quan_id` (`quan_id`),
  ADD KEY `quan_key` (`quan_key`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_refund`
--
ALTER TABLE `xy_refund`
  ADD KEY `refund_id` (`refund_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_refundlog`
--
ALTER TABLE `xy_refundlog`
  ADD PRIMARY KEY (`refundlog_id`);

--
-- 表的索引 `xy_refund_addr`
--
ALTER TABLE `xy_refund_addr`
  ADD PRIMARY KEY (`address_id`);

--
-- 表的索引 `xy_rule`
--
ALTER TABLE `xy_rule`
  ADD PRIMARY KEY (`rule_id`);

--
-- 表的索引 `xy_ruledata`
--
ALTER TABLE `xy_ruledata`
  ADD PRIMARY KEY (`ruledata_id`);

--
-- 表的索引 `xy_setting`
--
ALTER TABLE `xy_setting`
  ADD KEY `setting_key` (`setting_key`);

--
-- 表的索引 `xy_sign`
--
ALTER TABLE `xy_sign`
  ADD KEY `setting_key` (`key`);

--
-- 表的索引 `xy_signlog`
--
ALTER TABLE `xy_signlog`
  ADD PRIMARY KEY (`signlog_id`),
  ADD KEY `signlog_adate` (`signlog_adate`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_tguser`
--
ALTER TABLE `xy_tguser`
  ADD PRIMARY KEY (`tg_id`),
  ADD KEY `tguser_id` (`tguser_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_user`
--
ALTER TABLE `xy_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_wx_openid` (`user_wx_openid`),
  ADD KEY `tguser_id` (`tguser_id`);

--
-- 表的索引 `xy_useraddr`
--
ALTER TABLE `xy_useraddr`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_userbank`
--
ALTER TABLE `xy_userbank`
  ADD PRIMARY KEY (`userbank_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `xy_userlevel`
--
ALTER TABLE `xy_userlevel`
  ADD PRIMARY KEY (`userlevel_id`);

--
-- 表的索引 `xy_wechat_notice`
--
ALTER TABLE `xy_wechat_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- 表的索引 `xy_wechat_noticelog`
--
ALTER TABLE `xy_wechat_noticelog`
  ADD PRIMARY KEY (`noticelog_id`),
  ADD KEY `noticelog_state` (`noticelog_state`);

--
-- 表的索引 `xy_yzmlog`
--
ALTER TABLE `xy_yzmlog`
  ADD PRIMARY KEY (`yzmlog_id`),
  ADD KEY `yzmlog_user` (`yzmlog_user`),
  ADD KEY `yzmlog_adate` (`yzmlog_adate`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xy_ad`
--
ALTER TABLE `xy_ad`
  MODIFY `ad_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用表AUTO_INCREMENT `xy_admin`
--
ALTER TABLE `xy_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xy_adminlevel`
--
ALTER TABLE `xy_adminlevel`
  MODIFY `adminlevel_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理等级id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xy_article`
--
ALTER TABLE `xy_article`
  MODIFY `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `xy_ask`
--
ALTER TABLE `xy_ask`
  MODIFY `ask_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xy_brand`
--
ALTER TABLE `xy_brand`
  MODIFY `brand_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `xy_cart`
--
ALTER TABLE `xy_cart`
  MODIFY `cart_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37746;

--
-- 使用表AUTO_INCREMENT `xy_cashout`
--
ALTER TABLE `xy_cashout`
  MODIFY `cashout_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23890;

--
-- 使用表AUTO_INCREMENT `xy_category`
--
ALTER TABLE `xy_category`
  MODIFY `category_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用表AUTO_INCREMENT `xy_class`
--
ALTER TABLE `xy_class`
  MODIFY `class_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `xy_collect`
--
ALTER TABLE `xy_collect`
  MODIFY `collect_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3115;

--
-- 使用表AUTO_INCREMENT `xy_comment`
--
ALTER TABLE `xy_comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言id', AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `xy_express`
--
ALTER TABLE `xy_express`
  MODIFY `express_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '快递模板id', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `xy_getpw`
--
ALTER TABLE `xy_getpw`
  MODIFY `getpw_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xy_huodong`
--
ALTER TABLE `xy_huodong`
  MODIFY `huodong_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '活动自增id', AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `xy_huodongdata`
--
ALTER TABLE `xy_huodongdata`
  MODIFY `huodongdata_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用表AUTO_INCREMENT `xy_iplog`
--
ALTER TABLE `xy_iplog`
  MODIFY `iplog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ip记录id', AUTO_INCREMENT=157;

--
-- 使用表AUTO_INCREMENT `xy_link`
--
ALTER TABLE `xy_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '友情链接id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `xy_menu`
--
ALTER TABLE `xy_menu`
  MODIFY `menu_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '导航id', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `xy_moneylog`
--
ALTER TABLE `xy_moneylog`
  MODIFY `moneylog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109688;

--
-- 使用表AUTO_INCREMENT `xy_notice`
--
ALTER TABLE `xy_notice`
  MODIFY `notice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `xy_noticelog`
--
ALTER TABLE `xy_noticelog`
  MODIFY `noticelog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知记录id', AUTO_INCREMENT=278;

--
-- 使用表AUTO_INCREMENT `xy_orderdata`
--
ALTER TABLE `xy_orderdata`
  MODIFY `orderdata_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单数据id', AUTO_INCREMENT=31533;

--
-- 使用表AUTO_INCREMENT `xy_payment`
--
ALTER TABLE `xy_payment`
  MODIFY `payment_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `xy_pintuan`
--
ALTER TABLE `xy_pintuan`
  MODIFY `pintuan_id` bigint(15) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xy_pintuanlog`
--
ALTER TABLE `xy_pintuanlog`
  MODIFY `pintuanlog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xy_pointlog`
--
ALTER TABLE `xy_pointlog`
  MODIFY `pointlog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9765;

--
-- 使用表AUTO_INCREMENT `xy_prodata`
--
ALTER TABLE `xy_prodata`
  MODIFY `product_guid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品规格id', AUTO_INCREMENT=239;

--
-- 使用表AUTO_INCREMENT `xy_product`
--
ALTER TABLE `xy_product`
  MODIFY `product_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=211;

--
-- 使用表AUTO_INCREMENT `xy_prokey`
--
ALTER TABLE `xy_prokey`
  MODIFY `prokey_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- 使用表AUTO_INCREMENT `xy_prorule`
--
ALTER TABLE `xy_prorule`
  MODIFY `prorule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品规格id';

--
-- 使用表AUTO_INCREMENT `xy_quan`
--
ALTER TABLE `xy_quan`
  MODIFY `quan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '优惠券自增id', AUTO_INCREMENT=37;

--
-- 使用表AUTO_INCREMENT `xy_quanlog`
--
ALTER TABLE `xy_quanlog`
  MODIFY `quanlog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '优惠券自增id', AUTO_INCREMENT=81670;

--
-- 使用表AUTO_INCREMENT `xy_refundlog`
--
ALTER TABLE `xy_refundlog`
  MODIFY `refundlog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- 使用表AUTO_INCREMENT `xy_refund_addr`
--
ALTER TABLE `xy_refund_addr`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xy_rule`
--
ALTER TABLE `xy_rule`
  MODIFY `rule_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规格id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `xy_ruledata`
--
ALTER TABLE `xy_ruledata`
  MODIFY `ruledata_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规格值id', AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `xy_signlog`
--
ALTER TABLE `xy_signlog`
  MODIFY `signlog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';

--
-- 使用表AUTO_INCREMENT `xy_tguser`
--
ALTER TABLE `xy_tguser`
  MODIFY `tg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';

--
-- 使用表AUTO_INCREMENT `xy_user`
--
ALTER TABLE `xy_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=9734;

--
-- 使用表AUTO_INCREMENT `xy_useraddr`
--
ALTER TABLE `xy_useraddr`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `xy_userbank`
--
ALTER TABLE `xy_userbank`
  MODIFY `userbank_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15029;

--
-- 使用表AUTO_INCREMENT `xy_userlevel`
--
ALTER TABLE `xy_userlevel`
  MODIFY `userlevel_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `xy_wechat_notice`
--
ALTER TABLE `xy_wechat_notice`
  MODIFY `notice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知记录id', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `xy_wechat_noticelog`
--
ALTER TABLE `xy_wechat_noticelog`
  MODIFY `noticelog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知记录id', AUTO_INCREMENT=2379;

--
-- 使用表AUTO_INCREMENT `xy_yzmlog`
--
ALTER TABLE `xy_yzmlog`
  MODIFY `yzmlog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
