DROP DATABASE IF EXISTS `zula_blog`;
CREATE DATABASE `zula_blog`;
USE `zula_blog`;
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名/账号',
  `nickname` varchar(12) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(100) NOT NULL DEFAULT '邮箱',
  `created_at` int(10) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `updated_at` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `login_count` int(8) NOT NULL DEFAULT '1' COMMENT '登录次数',
  `header_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员用户表';
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `uid` int(10) NOT NULL DEFAULT '1' COMMENT '用户id',
  `class_id` int(5) NOT NULL DEFAULT '0' COMMENT '分类id',
  `content_id` int(5) NOT NULL DEFAULT '0' COMMENT '内容id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '文章标题',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者',
  `desc` varchar(200) NOT NULL DEFAULT '' COMMENT '描述，摘要',
  `created_at` int(10) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updated_at` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示  1：是，0：否',
  `hits` int(8) NOT NULL DEFAULT '0' COMMENT '点击量',
  `comments` int(8) NOT NULL DEFAULT '0' COMMENT '评论，回复数',
  `zan` int(8) NOT NULL DEFAULT '0' COMMENT '赞/顶，数量',
  `from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '关键词,可做专题',
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许评论，1 允许，0 不允许',
  `order` int(5) NOT NULL DEFAULT '100' COMMENT '排序值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='文章表';
DROP TABLE IF EXISTS `article_class`;
CREATE TABLE `article_class` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `class_alias` varchar(50) NOT NULL DEFAULT '' COMMENT '别名',
  `f_id` int(5) NOT NULL DEFAULT '0' COMMENT '父id',
  `order` int(5) NOT NULL DEFAULT '100' COMMENT '排序用',
  `created_at` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:显示，0:不显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='文章分类';
DROP TABLE IF EXISTS `article_content`;
CREATE TABLE `article_content` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL DEFAULT '' COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='文章分类';
