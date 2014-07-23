/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : mk

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2014-07-23 15:27:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mk_mortal_kontracts_providers`
-- ----------------------------
DROP TABLE IF EXISTS `mk_mortal_kontracts_providers`;
CREATE TABLE `mk_mortal_kontracts_providers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `connector` varchar(255) NOT NULL,
  `parser` varchar(255) NOT NULL,
  `average_rating` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_mortal_kontracts_providers
-- ----------------------------
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('1', '1', '1', '0', '0000-00-00 00:00:00', '6', 'RFP DB WEB DEV', 'rss', 'raw', '0', 'http://www.rfpdb.com/view/feed/identifier/8870b1408f4d.rss');
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('2', '2', '1', '0', '0000-00-00 00:00:00', '6', 'Indeed', 'rss', 'raw', '5', 'http://www.indeed.ca/rss?q=mobile&l=montreal');
