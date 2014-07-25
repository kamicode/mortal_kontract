/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : mk

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2014-07-25 03:20:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mk_assets`
-- ----------------------------
DROP TABLE IF EXISTS `mk_assets`;
CREATE TABLE `mk_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_assets
-- ----------------------------
INSERT INTO `mk_assets` VALUES ('1', '0', '0', '107', '0', 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `mk_assets` VALUES ('2', '1', '1', '2', '1', 'com_admin', 'com_admin', '{}');
INSERT INTO `mk_assets` VALUES ('3', '1', '3', '6', '1', 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('4', '1', '7', '8', '1', 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mk_assets` VALUES ('5', '1', '9', '10', '1', 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mk_assets` VALUES ('6', '1', '11', '12', '1', 'com_config', 'com_config', '{}');
INSERT INTO `mk_assets` VALUES ('7', '1', '13', '16', '1', 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('8', '1', '17', '20', '1', 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('9', '1', '21', '22', '1', 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `mk_assets` VALUES ('10', '1', '23', '24', '1', 'com_installer', 'com_installer', '{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `mk_assets` VALUES ('11', '1', '25', '26', '1', 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('12', '1', '27', '28', '1', 'com_login', 'com_login', '{}');
INSERT INTO `mk_assets` VALUES ('13', '1', '29', '30', '1', 'com_mailto', 'com_mailto', '{}');
INSERT INTO `mk_assets` VALUES ('14', '1', '31', '32', '1', 'com_massmail', 'com_massmail', '{}');
INSERT INTO `mk_assets` VALUES ('15', '1', '33', '34', '1', 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `mk_assets` VALUES ('16', '1', '35', '36', '1', 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('17', '1', '37', '38', '1', 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mk_assets` VALUES ('18', '1', '39', '70', '1', 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('19', '1', '71', '74', '1', 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('20', '1', '75', '76', '1', 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('21', '1', '77', '78', '1', 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `mk_assets` VALUES ('22', '1', '79', '80', '1', 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `mk_assets` VALUES ('23', '1', '81', '82', '1', 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('24', '1', '83', '86', '1', 'com_users', 'com_users', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('25', '1', '87', '90', '1', 'com_weblinks', 'com_weblinks', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('26', '1', '91', '92', '1', 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `mk_assets` VALUES ('27', '8', '18', '19', '2', 'com_content.category.2', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('28', '3', '4', '5', '2', 'com_banners.category.3', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('29', '7', '14', '15', '2', 'com_contact.category.4', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('30', '19', '72', '73', '2', 'com_newsfeeds.category.5', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('31', '25', '88', '89', '2', 'com_weblinks.category.6', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mk_assets` VALUES ('32', '24', '84', '85', '1', 'com_users.category.7', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('33', '1', '93', '94', '1', 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `mk_assets` VALUES ('34', '1', '95', '96', '1', 'com_joomlaupdate', 'com_joomlaupdate', '{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('35', '1', '97', '98', '1', 'com_tags', 'com_tags', '{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('36', '1', '99', '100', '1', 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `mk_assets` VALUES ('37', '1', '101', '102', '1', 'com_ajax', 'com_ajax', '{}');
INSERT INTO `mk_assets` VALUES ('38', '1', '103', '104', '1', 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `mk_assets` VALUES ('39', '18', '40', '41', '2', 'com_modules.module.1', 'Main Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('40', '18', '42', '43', '2', 'com_modules.module.2', 'Login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('41', '18', '44', '45', '2', 'com_modules.module.3', 'Popular Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('42', '18', '46', '47', '2', 'com_modules.module.4', 'Recently Added Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('43', '18', '48', '49', '2', 'com_modules.module.8', 'Toolbar', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('44', '18', '50', '51', '2', 'com_modules.module.9', 'Quick Icons', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('45', '18', '52', '53', '2', 'com_modules.module.10', 'Logged-in Users', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('46', '18', '54', '55', '2', 'com_modules.module.12', 'Admin Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('47', '18', '56', '57', '2', 'com_modules.module.13', 'Admin Submenu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('48', '18', '58', '59', '2', 'com_modules.module.14', 'User Status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('49', '18', '60', '61', '2', 'com_modules.module.15', 'Title', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('50', '18', '62', '63', '2', 'com_modules.module.16', 'Login Form', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('51', '18', '64', '65', '2', 'com_modules.module.17', 'Breadcrumbs', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('52', '18', '66', '67', '2', 'com_modules.module.79', 'Multilanguage status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('53', '18', '68', '69', '2', 'com_modules.module.86', 'Joomla Version', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mk_assets` VALUES ('54', '1', '105', '106', '1', 'com_mortal_kontracts', 'com_mortal_kontracts', '{}');

-- ----------------------------
-- Table structure for `mk_associations`
-- ----------------------------
DROP TABLE IF EXISTS `mk_associations`;
CREATE TABLE `mk_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_associations
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_banners`
-- ----------------------------
DROP TABLE IF EXISTS `mk_banners`;
CREATE TABLE `mk_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_banners
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_banner_clients`
-- ----------------------------
DROP TABLE IF EXISTS `mk_banner_clients`;
CREATE TABLE `mk_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_banner_clients
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_banner_tracks`
-- ----------------------------
DROP TABLE IF EXISTS `mk_banner_tracks`;
CREATE TABLE `mk_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_banner_tracks
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_categories`
-- ----------------------------
DROP TABLE IF EXISTS `mk_categories`;
CREATE TABLE `mk_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_categories
-- ----------------------------
INSERT INTO `mk_categories` VALUES ('1', '0', '0', '0', '13', '0', '', 'system', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{}', '', '', '{}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `mk_categories` VALUES ('2', '27', '1', '1', '2', '1', 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `mk_categories` VALUES ('3', '28', '1', '3', '4', '1', 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `mk_categories` VALUES ('4', '29', '1', '5', '6', '1', 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `mk_categories` VALUES ('5', '30', '1', '7', '8', '1', 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `mk_categories` VALUES ('6', '31', '1', '9', '10', '1', 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `mk_categories` VALUES ('7', '32', '1', '11', '12', '1', 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');

-- ----------------------------
-- Table structure for `mk_contact_details`
-- ----------------------------
DROP TABLE IF EXISTS `mk_contact_details`;
CREATE TABLE `mk_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_contact_details
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_content`
-- ----------------------------
DROP TABLE IF EXISTS `mk_content`;
CREATE TABLE `mk_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_content
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_contentitem_tag_map`
-- ----------------------------
DROP TABLE IF EXISTS `mk_contentitem_tag_map`;
CREATE TABLE `mk_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- ----------------------------
-- Records of mk_contentitem_tag_map
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_content_frontpage`
-- ----------------------------
DROP TABLE IF EXISTS `mk_content_frontpage`;
CREATE TABLE `mk_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_content_frontpage
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_content_rating`
-- ----------------------------
DROP TABLE IF EXISTS `mk_content_rating`;
CREATE TABLE `mk_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_content_rating
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_content_types`
-- ----------------------------
DROP TABLE IF EXISTS `mk_content_types`;
CREATE TABLE `mk_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_content_types
-- ----------------------------
INSERT INTO `mk_content_types` VALUES ('1', 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mk_content_types` VALUES ('2', 'Weblink', 'com_weblinks.weblink', '{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mk_content_types` VALUES ('3', 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `mk_content_types` VALUES ('4', 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mk_content_types` VALUES ('5', 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `mk_content_types` VALUES ('6', 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mk_content_types` VALUES ('7', 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mk_content_types` VALUES ('8', 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mk_content_types` VALUES ('9', 'Weblinks Category', 'com_weblinks.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'WeblinksHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mk_content_types` VALUES ('10', 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `mk_content_types` VALUES ('11', 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mk_content_types` VALUES ('12', 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mk_content_types` VALUES ('13', 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `mk_content_types` VALUES ('14', 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `mk_content_types` VALUES ('15', 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- ----------------------------
-- Table structure for `mk_core_log_searches`
-- ----------------------------
DROP TABLE IF EXISTS `mk_core_log_searches`;
CREATE TABLE `mk_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_core_log_searches
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `mk_extensions`;
CREATE TABLE `mk_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_extensions
-- ----------------------------
INSERT INTO `mk_extensions` VALUES ('1', 'com_mailto', 'component', 'com_mailto', '', '0', '1', '1', '1', '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('2', 'com_wrapper', 'component', 'com_wrapper', '', '0', '1', '1', '1', '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('3', 'com_admin', 'component', 'com_admin', '', '1', '1', '1', '1', '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('4', 'com_banners', 'component', 'com_banners', '', '1', '1', '1', '0', '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('5', 'com_cache', 'component', 'com_cache', '', '1', '1', '1', '1', '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('6', 'com_categories', 'component', 'com_categories', '', '1', '1', '1', '1', '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('7', 'com_checkin', 'component', 'com_checkin', '', '1', '1', '1', '1', '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('8', 'com_contact', 'component', 'com_contact', '', '1', '1', '1', '0', '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('9', 'com_cpanel', 'component', 'com_cpanel', '', '1', '1', '1', '1', '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('10', 'com_installer', 'component', 'com_installer', '', '1', '1', '1', '1', '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('11', 'com_languages', 'component', 'com_languages', '', '1', '1', '1', '1', '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('12', 'com_login', 'component', 'com_login', '', '1', '1', '1', '1', '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('13', 'com_media', 'component', 'com_media', '', '1', '1', '0', '1', '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('14', 'com_menus', 'component', 'com_menus', '', '1', '1', '1', '1', '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('15', 'com_messages', 'component', 'com_messages', '', '1', '1', '1', '1', '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('16', 'com_modules', 'component', 'com_modules', '', '1', '1', '1', '1', '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('17', 'com_newsfeeds', 'component', 'com_newsfeeds', '', '1', '1', '1', '0', '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('18', 'com_plugins', 'component', 'com_plugins', '', '1', '1', '1', '1', '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('19', 'com_search', 'component', 'com_search', '', '1', '1', '1', '0', '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}', '{\"enabled\":\"0\",\"show_date\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('20', 'com_templates', 'component', 'com_templates', '', '1', '1', '1', '1', '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('21', 'com_weblinks', 'component', 'com_weblinks', '', '1', '1', '1', '0', '{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('22', 'com_content', 'component', 'com_content', '', '1', '1', '0', '1', '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('23', 'com_config', 'component', 'com_config', '', '1', '1', '0', '1', '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('24', 'com_redirect', 'component', 'com_redirect', '', '1', '1', '0', '1', '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('25', 'com_users', 'component', 'com_users', '', '1', '1', '0', '1', '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('27', 'com_finder', 'component', 'com_finder', '', '1', '1', '0', '0', '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('28', 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '1', '1', '0', '1', '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('29', 'com_tags', 'component', 'com_tags', '', '1', '1', '1', '1', '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('30', 'com_contenthistory', 'component', 'com_contenthistory', '', '1', '1', '1', '0', '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('31', 'com_ajax', 'component', 'com_ajax', '', '1', '1', '1', '0', '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('32', 'com_postinstall', 'component', 'com_postinstall', '', '1', '1', '1', '1', '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('100', 'PHPMailer', 'library', 'phpmailer', '', '0', '1', '1', '1', '{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('101', 'SimplePie', 'library', 'simplepie', '', '0', '1', '1', '1', '{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('102', 'phputf8', 'library', 'phputf8', '', '0', '1', '1', '1', '{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('103', 'Joomla! Platform', 'library', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"mediaversion\":\"8fe3238d1c5180108e5c97eeaa617d9f\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('104', 'IDNA Convert', 'library', 'idna_convert', '', '0', '1', '1', '1', '{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('105', 'FOF', 'library', 'fof', '', '0', '1', '1', '1', '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('106', 'PHPass', 'library', 'phpass', '', '0', '1', '1', '1', '{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('200', 'mod_articles_archive', 'module', 'mod_articles_archive', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('201', 'mod_articles_latest', 'module', 'mod_articles_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('202', 'mod_articles_popular', 'module', 'mod_articles_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('203', 'mod_banners', 'module', 'mod_banners', '', '0', '1', '1', '0', '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('204', 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '0', '1', '1', '1', '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('205', 'mod_custom', 'module', 'mod_custom', '', '0', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('206', 'mod_feed', 'module', 'mod_feed', '', '0', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('207', 'mod_footer', 'module', 'mod_footer', '', '0', '1', '1', '0', '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('208', 'mod_login', 'module', 'mod_login', '', '0', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('209', 'mod_menu', 'module', 'mod_menu', '', '0', '1', '1', '1', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('210', 'mod_articles_news', 'module', 'mod_articles_news', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('211', 'mod_random_image', 'module', 'mod_random_image', '', '0', '1', '1', '0', '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('212', 'mod_related_items', 'module', 'mod_related_items', '', '0', '1', '1', '0', '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('213', 'mod_search', 'module', 'mod_search', '', '0', '1', '1', '0', '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('214', 'mod_stats', 'module', 'mod_stats', '', '0', '1', '1', '0', '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('215', 'mod_syndicate', 'module', 'mod_syndicate', '', '0', '1', '1', '1', '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('216', 'mod_users_latest', 'module', 'mod_users_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('217', 'mod_weblinks', 'module', 'mod_weblinks', '', '0', '1', '1', '0', '{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('218', 'mod_whosonline', 'module', 'mod_whosonline', '', '0', '1', '1', '0', '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('219', 'mod_wrapper', 'module', 'mod_wrapper', '', '0', '1', '1', '0', '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('220', 'mod_articles_category', 'module', 'mod_articles_category', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('221', 'mod_articles_categories', 'module', 'mod_articles_categories', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('222', 'mod_languages', 'module', 'mod_languages', '', '0', '1', '1', '1', '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('223', 'mod_finder', 'module', 'mod_finder', '', '0', '1', '0', '0', '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('300', 'mod_custom', 'module', 'mod_custom', '', '1', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('301', 'mod_feed', 'module', 'mod_feed', '', '1', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('302', 'mod_latest', 'module', 'mod_latest', '', '1', '1', '1', '0', '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('303', 'mod_logged', 'module', 'mod_logged', '', '1', '1', '1', '0', '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('304', 'mod_login', 'module', 'mod_login', '', '1', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('305', 'mod_menu', 'module', 'mod_menu', '', '1', '1', '1', '0', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('307', 'mod_popular', 'module', 'mod_popular', '', '1', '1', '1', '0', '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('308', 'mod_quickicon', 'module', 'mod_quickicon', '', '1', '1', '1', '1', '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('309', 'mod_status', 'module', 'mod_status', '', '1', '1', '1', '0', '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('310', 'mod_submenu', 'module', 'mod_submenu', '', '1', '1', '1', '0', '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('311', 'mod_title', 'module', 'mod_title', '', '1', '1', '1', '0', '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('312', 'mod_toolbar', 'module', 'mod_toolbar', '', '1', '1', '1', '1', '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('313', 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '1', '1', '1', '0', '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('314', 'mod_version', 'module', 'mod_version', '', '1', '1', '1', '0', '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('315', 'mod_stats_admin', 'module', 'mod_stats_admin', '', '1', '1', '1', '0', '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('316', 'mod_tags_popular', 'module', 'mod_tags_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('317', 'mod_tags_similar', 'module', 'mod_tags_similar', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('400', 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('401', 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', '0', '1', '1', '1', '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('402', 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `mk_extensions` VALUES ('403', 'plg_content_contact', 'plugin', 'contact', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('404', 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}', '{\"mode\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('406', 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"style\":\"xhtml\"}', '', '', '0', '2011-09-18 15:22:50', '0', '0');
INSERT INTO `mk_extensions` VALUES ('407', 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `mk_extensions` VALUES ('408', 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}', '{\"position\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `mk_extensions` VALUES ('409', 'plg_content_vote', 'plugin', 'vote', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `mk_extensions` VALUES ('410', 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('411', 'plg_editors_none', 'plugin', 'none', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `mk_extensions` VALUES ('412', 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', '0', '1', '1', '0', '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.0.22\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}', '{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `mk_extensions` VALUES ('413', 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', '0', '1', '1', '1', '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('414', 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `mk_extensions` VALUES ('415', 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `mk_extensions` VALUES ('416', 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `mk_extensions` VALUES ('417', 'plg_search_categories', 'plugin', 'categories', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('418', 'plg_search_contacts', 'plugin', 'contacts', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('419', 'plg_search_content', 'plugin', 'content', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('420', 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('421', 'plg_search_weblinks', 'plugin', 'weblinks', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('422', 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('423', 'plg_system_p3p', 'plugin', 'p3p', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `mk_extensions` VALUES ('424', 'plg_system_cache', 'plugin', 'cache', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', '0', '0000-00-00 00:00:00', '9', '0');
INSERT INTO `mk_extensions` VALUES ('425', 'plg_system_debug', 'plugin', 'debug', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `mk_extensions` VALUES ('426', 'plg_system_log', 'plugin', 'log', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `mk_extensions` VALUES ('427', 'plg_system_redirect', 'plugin', 'redirect', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `mk_extensions` VALUES ('428', 'plg_system_remember', 'plugin', 'remember', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `mk_extensions` VALUES ('429', 'plg_system_sef', 'plugin', 'sef', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '8', '0');
INSERT INTO `mk_extensions` VALUES ('430', 'plg_system_logout', 'plugin', 'logout', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `mk_extensions` VALUES ('431', 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('432', 'plg_user_joomla', 'plugin', 'joomla', 'user', '0', '1', '1', '0', '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `mk_extensions` VALUES ('433', 'plg_user_profile', 'plugin', 'profile', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('434', 'plg_extension_joomla', 'plugin', 'joomla', 'extension', '0', '1', '1', '1', '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('435', 'plg_content_joomla', 'plugin', 'joomla', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('436', 'plg_system_languagecode', 'plugin', 'languagecode', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '10', '0');
INSERT INTO `mk_extensions` VALUES ('437', 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('438', 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('439', 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', '0', '0', '1', '0', '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('440', 'plg_system_highlight', 'plugin', 'highlight', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `mk_extensions` VALUES ('441', 'plg_content_finder', 'plugin', 'finder', 'content', '0', '0', '1', '0', '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('442', 'plg_finder_categories', 'plugin', 'categories', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `mk_extensions` VALUES ('443', 'plg_finder_contacts', 'plugin', 'contacts', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `mk_extensions` VALUES ('444', 'plg_finder_content', 'plugin', 'content', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `mk_extensions` VALUES ('445', 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `mk_extensions` VALUES ('446', 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `mk_extensions` VALUES ('447', 'plg_finder_tags', 'plugin', 'tags', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('448', 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('449', 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', '0', '1', '1', '0', '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('450', 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('451', 'plg_search_tags', 'plugin', 'tags', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('503', 'beez3', 'template', 'beez3', '', '0', '1', '1', '0', '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('504', 'hathor', 'template', 'hathor', '', '1', '1', '1', '0', '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('506', 'protostar', 'template', 'protostar', '', '0', '1', '1', '0', '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('507', 'isis', 'template', 'isis', '', '1', '1', '1', '0', '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('600', 'English (United Kingdom)', 'language', 'en-GB', '', '0', '1', '1', '1', '{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('601', 'English (United Kingdom)', 'language', 'en-GB', '', '1', '1', '1', '1', '{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('700', 'files_joomla', 'file', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('10000', 'plg_search_mortal_kontracts', 'plugin', 'mortal_kontracts', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_mortal_kontracts\",\"type\":\"plugin\",\"creationDate\":\"2014-07-24\",\"author\":\"Jacques Langlois\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"j@kamicode.com\",\"authorUrl\":\"kamicode.com\",\"version\":\"1.0.2\",\"description\":\"PLG_SEARCH_COM_MORTAL_KONTRACTS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"search_limit\":\"50\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `mk_extensions` VALUES ('10001', 'com_mortal_kontracts', 'component', 'com_mortal_kontracts', '', '1', '1', '0', '0', '{\"name\":\"com_mortal_kontracts\",\"type\":\"component\",\"creationDate\":\"2014-07-24\",\"author\":\"Jacques Langlois\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"j@kamicode.com\",\"authorUrl\":\"kamicode.com\",\"version\":\"1.0.2\",\"description\":\"\",\"group\":\"\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for `mk_finder_filters`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_filters`;
CREATE TABLE `mk_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_filters
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links`;
CREATE TABLE `mk_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms0`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms0`;
CREATE TABLE `mk_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms0
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms1`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms1`;
CREATE TABLE `mk_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms1
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms2`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms2`;
CREATE TABLE `mk_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms2
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms3`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms3`;
CREATE TABLE `mk_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms3
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms4`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms4`;
CREATE TABLE `mk_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms4
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms5`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms5`;
CREATE TABLE `mk_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms5
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms6`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms6`;
CREATE TABLE `mk_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms6
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms7`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms7`;
CREATE TABLE `mk_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms7
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms8`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms8`;
CREATE TABLE `mk_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms8
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_terms9`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_terms9`;
CREATE TABLE `mk_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_terms9
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_termsa`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_termsa`;
CREATE TABLE `mk_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_termsa
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_termsb`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_termsb`;
CREATE TABLE `mk_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_termsb
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_termsc`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_termsc`;
CREATE TABLE `mk_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_termsc
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_termsd`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_termsd`;
CREATE TABLE `mk_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_termsd
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_termse`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_termse`;
CREATE TABLE `mk_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_termse
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_links_termsf`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_links_termsf`;
CREATE TABLE `mk_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_links_termsf
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_taxonomy`;
CREATE TABLE `mk_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_taxonomy
-- ----------------------------
INSERT INTO `mk_finder_taxonomy` VALUES ('1', '0', 'ROOT', '0', '0', '0');

-- ----------------------------
-- Table structure for `mk_finder_taxonomy_map`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_taxonomy_map`;
CREATE TABLE `mk_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_taxonomy_map
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_terms`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_terms`;
CREATE TABLE `mk_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_terms_common`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_terms_common`;
CREATE TABLE `mk_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_terms_common
-- ----------------------------
INSERT INTO `mk_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('ani', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('noth', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('onli', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('veri', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('whi', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `mk_finder_terms_common` VALUES ('yours', 'en');

-- ----------------------------
-- Table structure for `mk_finder_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_tokens`;
CREATE TABLE `mk_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_tokens_aggregate`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_tokens_aggregate`;
CREATE TABLE `mk_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_tokens_aggregate
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_finder_types`
-- ----------------------------
DROP TABLE IF EXISTS `mk_finder_types`;
CREATE TABLE `mk_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_finder_types
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_languages`
-- ----------------------------
DROP TABLE IF EXISTS `mk_languages`;
CREATE TABLE `mk_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_languages
-- ----------------------------
INSERT INTO `mk_languages` VALUES ('1', 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', '1', '1', '1');

-- ----------------------------
-- Table structure for `mk_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mk_menu`;
CREATE TABLE `mk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_menu
-- ----------------------------
INSERT INTO `mk_menu` VALUES ('1', '', 'Menu_Item_Root', 'root', '', '', '', '', '1', '0', '0', '0', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '', '0', '55', '0', '*', '0');
INSERT INTO `mk_menu` VALUES ('2', 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', '0', '1', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '1', '10', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('3', 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', '0', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '2', '3', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('4', 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', '0', '2', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-cat', '0', '', '4', '5', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('5', 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', '0', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-clients', '0', '', '6', '7', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('6', 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', '0', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-tracks', '0', '', '8', '9', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('7', 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', '0', '1', '1', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '11', '16', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('8', 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', '0', '7', '2', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '12', '13', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('9', 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', '0', '7', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact-cat', '0', '', '14', '15', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('10', 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', '0', '1', '1', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages', '0', '', '17', '22', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('11', 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', '0', '10', '2', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-add', '0', '', '18', '19', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('12', 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', '0', '10', '2', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-read', '0', '', '20', '21', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('13', 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '1', '1', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '23', '28', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('14', 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '13', '2', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '24', '25', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('15', 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', '0', '13', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds-cat', '0', '', '26', '27', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('16', 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', '0', '1', '1', '24', '0', '0000-00-00 00:00:00', '0', '0', 'class:redirect', '0', '', '29', '30', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('17', 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', '0', '1', '1', '19', '0', '0000-00-00 00:00:00', '0', '0', 'class:search', '0', '', '31', '32', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('18', 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', '0', '1', '1', '21', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks', '0', '', '33', '38', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('19', 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', '0', '18', '2', '21', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks', '0', '', '34', '35', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('20', 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', '0', '18', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks-cat', '0', '', '36', '37', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('21', 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', '0', '1', '1', '27', '0', '0000-00-00 00:00:00', '0', '0', 'class:finder', '0', '', '39', '40', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('22', 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', '1', '1', '1', '28', '0', '0000-00-00 00:00:00', '0', '0', 'class:joomlaupdate', '0', '', '41', '42', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('23', 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', '0', '1', '1', '29', '0', '0000-00-00 00:00:00', '0', '1', 'class:tags', '0', '', '43', '44', '0', '', '1');
INSERT INTO `mk_menu` VALUES ('24', 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', '0', '1', '1', '32', '0', '0000-00-00 00:00:00', '0', '1', 'class:postinstall', '0', '', '45', '46', '0', '*', '1');
INSERT INTO `mk_menu` VALUES ('101', 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', '1', '1', '1', '22', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '47', '48', '1', '*', '0');
INSERT INTO `mk_menu` VALUES ('120', 'main', 'COM_MORTAL_KONTRACTS', 'com-mortal-kontracts', '', 'com-mortal-kontracts', 'index.php?option=com_mortal_kontracts', 'component', '0', '1', '1', '10001', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_mortal_kontracts/assets/images/s_com_mortal_kontracts.png', '0', '', '49', '54', '0', '', '1');
INSERT INTO `mk_menu` VALUES ('121', 'main', 'COM_MORTAL_KONTRACTS_TITLE_LEADS', 'com-mortal-kontracts-title-leads', '', 'com-mortal-kontracts/com-mortal-kontracts-title-leads', 'index.php?option=com_mortal_kontracts&view=leads', 'component', '0', '120', '2', '10001', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_mortal_kontracts/assets/images/s_leads.png', '0', '', '50', '51', '0', '', '1');
INSERT INTO `mk_menu` VALUES ('122', 'main', 'COM_MORTAL_KONTRACTS_TITLE_PROVIDERS', 'com-mortal-kontracts-title-providers', '', 'com-mortal-kontracts/com-mortal-kontracts-title-providers', 'index.php?option=com_mortal_kontracts&view=providers', 'component', '0', '120', '2', '10001', '0', '0000-00-00 00:00:00', '0', '1', 'components/com_mortal_kontracts/assets/images/s_providers.png', '0', '', '52', '53', '0', '', '1');

-- ----------------------------
-- Table structure for `mk_menu_types`
-- ----------------------------
DROP TABLE IF EXISTS `mk_menu_types`;
CREATE TABLE `mk_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_menu_types
-- ----------------------------
INSERT INTO `mk_menu_types` VALUES ('1', 'mainmenu', 'Main Menu', 'The main menu for the site');

-- ----------------------------
-- Table structure for `mk_messages`
-- ----------------------------
DROP TABLE IF EXISTS `mk_messages`;
CREATE TABLE `mk_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_messages_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `mk_messages_cfg`;
CREATE TABLE `mk_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_messages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_modules`
-- ----------------------------
DROP TABLE IF EXISTS `mk_modules`;
CREATE TABLE `mk_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_modules
-- ----------------------------
INSERT INTO `mk_modules` VALUES ('1', '55', 'Main Menu', '', '', '1', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '1', '1', '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `mk_modules` VALUES ('2', '56', 'Login', '', '', '1', 'login', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '', '1', '*');
INSERT INTO `mk_modules` VALUES ('3', '57', 'Popular Articles', '', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_popular', '3', '1', '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', '1', '*');
INSERT INTO `mk_modules` VALUES ('4', '58', 'Recently Added Articles', '', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_latest', '3', '1', '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', '1', '*');
INSERT INTO `mk_modules` VALUES ('8', '59', 'Toolbar', '', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_toolbar', '3', '1', '', '1', '*');
INSERT INTO `mk_modules` VALUES ('9', '60', 'Quick Icons', '', '', '1', 'icon', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_quickicon', '3', '1', '', '1', '*');
INSERT INTO `mk_modules` VALUES ('10', '61', 'Logged-in Users', '', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_logged', '3', '1', '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}', '1', '*');
INSERT INTO `mk_modules` VALUES ('12', '62', 'Admin Menu', '', '', '1', 'menu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '3', '1', '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `mk_modules` VALUES ('13', '63', 'Admin Submenu', '', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_submenu', '3', '1', '', '1', '*');
INSERT INTO `mk_modules` VALUES ('14', '64', 'User Status', '', '', '2', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_status', '3', '1', '', '1', '*');
INSERT INTO `mk_modules` VALUES ('15', '65', 'Title', '', '', '1', 'title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_title', '3', '1', '', '1', '*');
INSERT INTO `mk_modules` VALUES ('16', '66', 'Login Form', '', '', '7', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '{\"greeting\":\"1\",\"name\":\"0\"}', '0', '*');
INSERT INTO `mk_modules` VALUES ('17', '67', 'Breadcrumbs', '', '', '1', 'position-2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_breadcrumbs', '1', '1', '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `mk_modules` VALUES ('79', '68', 'Multilanguage status', '', '', '1', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_multilangstatus', '3', '1', '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `mk_modules` VALUES ('86', '69', 'Joomla Version', '', '', '1', 'footer', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_version', '3', '1', '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');

-- ----------------------------
-- Table structure for `mk_modules_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mk_modules_menu`;
CREATE TABLE `mk_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_modules_menu
-- ----------------------------
INSERT INTO `mk_modules_menu` VALUES ('1', '0');
INSERT INTO `mk_modules_menu` VALUES ('2', '0');
INSERT INTO `mk_modules_menu` VALUES ('3', '0');
INSERT INTO `mk_modules_menu` VALUES ('4', '0');
INSERT INTO `mk_modules_menu` VALUES ('6', '0');
INSERT INTO `mk_modules_menu` VALUES ('7', '0');
INSERT INTO `mk_modules_menu` VALUES ('8', '0');
INSERT INTO `mk_modules_menu` VALUES ('9', '0');
INSERT INTO `mk_modules_menu` VALUES ('10', '0');
INSERT INTO `mk_modules_menu` VALUES ('12', '0');
INSERT INTO `mk_modules_menu` VALUES ('13', '0');
INSERT INTO `mk_modules_menu` VALUES ('14', '0');
INSERT INTO `mk_modules_menu` VALUES ('15', '0');
INSERT INTO `mk_modules_menu` VALUES ('16', '0');
INSERT INTO `mk_modules_menu` VALUES ('17', '0');
INSERT INTO `mk_modules_menu` VALUES ('79', '0');
INSERT INTO `mk_modules_menu` VALUES ('86', '0');

-- ----------------------------
-- Table structure for `mk_mortal_kontracts_leads`
-- ----------------------------
DROP TABLE IF EXISTS `mk_mortal_kontracts_leads`;
CREATE TABLE `mk_mortal_kontracts_leads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `hits` varchar(255) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `accepted_for_quote` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `posted` date NOT NULL,
  `guid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_mortal_kontracts_leads
-- ----------------------------
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('311', '1', '0', '0000-00-00 00:00:00', '0', 'RFPs for Website Redesign', 'We seek the assistance of a   or firm to update and ******** our existing ******** ----.\r\n\r\nThe website is run on Drupal 6, hosts a large amount of content year round (200 web pages and 170 PDF reports), and needs to be updated   by staff. Our ******...\n        (California, United States)', 'http://www.rfpdb.com/view/document/name/RFPs-for-Website-Redesign', 'a807b4d7174e13c80448a4f4d5b35916', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-22', 'http://www.rfpdb.com/view/document/name/RFPs-for-Website-Redesign');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('312', '1', '0', '0000-00-00 00:00:00', '0', 'Web Design, Hosting &amp; Maintenance', 'This solicitation is to provide   for web design, ************ and hosting   for the **** ********** of   Travel Information   current ******** ****.com and future digital *********   The   shall include   a unified ******** and branding of the websi...\n        (Texas, United States)', 'http://www.rfpdb.com/view/document/name/Web-Design,-Hosting-&amp;-Maintenance', 'a989145204e1471517005c7ac49860ee', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-22', 'http://www.rfpdb.com/view/document/name/Web-Design%2C-Hosting-%26-Maintenance');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('313', '1', '0', '0000-00-00 00:00:00', '0', 'E-Commerce Website Development RFP', 'An RFP for an e-commerce   provide a ******** with all the required details as ********* in the  \n        (India)', 'http://www.rfpdb.com/view/document/name/E_Commerce-Website-Development-RFP', '5b5dd66730fbefbe11c48193b5a99958', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-20', 'http://www.rfpdb.com/view/document/name/E_Commerce-Website-Development-RFP');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('314', '1', '0', '0000-00-00 00:00:00', '0', 'Website Overhaul', 'Site Requirements \r\n \r\n1. Site built on Drupal 7 or Drupal 8   on Drupal 8 ********* If 7, upgradable to 8. \r\n2. A site that loads ******** even in   contexts in the   world and that is *********** 99.99% of the time. A standard page should load in u...\n        (Connecticut, United States)', 'http://www.rfpdb.com/view/document/name/Website-Overhaul(1)', '2d98d08f5ccffd88dacbb37f816bca03', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-18', 'http://www.rfpdb.com/view/document/name/Website-Overhaul%281%29');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('315', '1', '0', '0000-00-00 00:00:00', '0', 'RFP for Website Development', 'Currently, the   is looking to take the website in a new ********** The College is in need of a consultant to ********   customize, and deploy a   Site, which will take the place of the current Shared ********** Website (College ************ create a...\n        (California, United States)', 'http://www.rfpdb.com/view/document/name/RFP-for-Website-Development(4)', '9bf6eb8f840a93c2da5bd660f226dacc', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-17', 'http://www.rfpdb.com/view/document/name/RFP-for-Website-Development%284%29');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('316', '1', '0', '0000-00-00 00:00:00', '0', 'Modification to Request for Proposal for Website Design Dated 7/10/2014', 'See Attached  \n        (Massachusetts, United States)', 'http://www.rfpdb.com/view/document/name/Modification-to-Request-for-Proposal-for-Website-Design-Dated-7%5E10%5E2014', '712a4b7cac8f0bdf462a640fcdfbf2e5', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-17', 'http://www.rfpdb.com/view/document/name/Modification-to-Request-for-Proposal-for-Website-Design-Dated-7%5E10%5E2014');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('317', '1', '0', '0000-00-00 00:00:00', '0', 'Website Content Project Manager', 'Girl Scouts of Western Ohio is preparing to   a new ********* management system that ******** the use of CRM   (Salesforce),   our current website and ************* platforms from ********** to Adobe Content   The new site is hosted by our national o...\n        (Ohio, United States)', 'http://www.rfpdb.com/view/document/name/Website-Content-Project-Manager', 'eb7f5f792ae3129302800bac26ff3a69', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-16', 'http://www.rfpdb.com/view/document/name/Website-Content-Project-Manager');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('318', '1', '0', '0000-00-00 00:00:00', '0', 'Enterprise Content Management Solution', 'The State of Maine Department of   & ********* Services, Office of ***********   has a requirement for an   Content **********  . The State is ********* an\n  Content **********   where all State ******** can leverage and *********   The State of Main...\n        (Maine, United States)', 'http://www.rfpdb.com/view/document/name/Enterprise-Content-Management-Solution(1)', '302bd498e07f5a40797a9d018208d621', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-15', 'http://www.rfpdb.com/view/document/name/Enterprise-Content-Management-Solution%281%29');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('319', '1', '0', '0000-00-00 00:00:00', '0', 'Pro Bono Database Bridge', 'Request for Proposal: Pro Bono   Bridge to ULS Case ****************** is a Request for Proposal (\"RFP\") for the *********** of a data bridge between a case   system written in VB.NET and running on a Microsoft Sequel Server and Euclid Clear   ******...\n        (Utah, United States)', 'http://www.rfpdb.com/view/document/name/Pro-Bono-Database-Bridge', '99f394de572df21a757e3d30d5c19ab9', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-11', 'http://www.rfpdb.com/view/document/name/Pro-Bono-Database-Bridge');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('320', '1', '0', '0000-00-00 00:00:00', '0', 'Website Design, Crowdsource Application, Database and Data Management', 'The ************ intends to   their ******** website, **********   and\r\nassociated tools. In   the ************ will be expanding their program to ************   protocols,   and ********** technologies. The ************is   partner(s) to design,   a...\n        (Washington, United States)', 'http://www.rfpdb.com/view/document/name/Website-Design,-Crowdsource-Application,-Database-and-Data-Management', '8a696dcb451201456dd74b02ba5941fa', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-10', 'http://www.rfpdb.com/view/document/name/Website-Design%2C-Crowdsource-Application%2C-Database-and-Data-Management');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('321', '1', '0', '0000-00-00 00:00:00', '0', 'Procurement of Website Design', 'See RFP for full details.\n\nEDC is an   ********* organization that *********   and evaluates   ******** to address some of the world\'s most urgent challenges. Our work ********   training,   ********* and strategy, with ********** ranging from seed  ...\n        (Massachusetts, United States)', 'http://www.rfpdb.com/view/document/name/Procurement-of-Website-Design', '91d6793ee6a32a6021f7ea62f9750b83', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-10', 'http://www.rfpdb.com/view/document/name/Procurement-of-Website-Design');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('322', '1', '0', '0000-00-00 00:00:00', '0', 'Pittsburgh Vaccination Research Group PittVax', 'The Pittsburgh   ******** Group (PittVax) is **********   for the creation of a new   ********** modules, and Drupal ************* The project scope   creating a   ******** framework ********* to the   Board of Family Medicine   medical ********* acc...\n        (Pennsylvania, United States)', 'http://www.rfpdb.com/view/document/name/Pittsburgh-Vaccination-Research-Group-PittVax', '68f606e7a984d2ae24197ba02bba511a', '0', '1', 'canada', '', '3', '2014-07-24 20:14:49', '2014-07-08', 'http://www.rfpdb.com/view/document/name/Pittsburgh-Vaccination-Research-Group-PittVax');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('323', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile/App Developer - sweetiQ -  Montréal, QC', '<pre>sweetiQ is seeking a Mobile/Application Developer (Android and/or iOS) to join its growing dev team. SweetIQ runs a massively distributed crawling, data aggregation, and business intelligence engine, complemented by various applications with front-end interfacing, REST APIs, and mobile applications. Reporting to the CTO, this highly motivated individual will take ownership of the company\'s mobile application (iOS / Android), providing real-time local marketing analytics & insights to business owners. This individual will becoming the internal subject-matter-expert, and leading the way in developing the company\'s mobile applications, along with the creation of new ones. The company\'s stack is built on top of multiple languages and technologies, so you should be ready, willing, and able to adapt to the latest and greatest technologies: Python, Node.js, Ruby, Backbone, Bootstrap / Angular, Websockets, REST APIs, GoLang, HTML5, CSS3, Advanced JS, AMQP, Mongo, Git, Jenkins.Primary Responsibilities and DutiesProvide subject matter expertise in one of the following areas: Mobile application design and development, Mobile UX/UI, Code design, Middleware / REST API architecture, Back End architecture, Data Flow analysis & design, DB architecture, Code Optimization, TestingScale, manage, maintain, upgrade, and scale the specific components you will be responsible forResponsible for ensuring the efficiency, consistency, and accuracy of your components, including managing a continuous integration schedule with a testing suiteResponsible for maintaining uptime of the system, structuring support hours, contingency plans, backup plans, disaster recoveryParticipate in product roadmap planning, recommending technologies and solutionsIdentify and drive opportunities to optimize the performance, availability, reliability, and security of our systemsInteracts with stakeholders and has the presence to influence direction, sell ideas, roadmaps, and approachesDesired Skills and ExperienceUniversity degree in computer science, computer engineering, or equivalent5+ years of practical experience in mobile application developmentExpert iOS or Android or bothAble to very quickly adapt to new technologies and protocolsNoSQL DB experience a mustAutonomous, very dynamic, capable of decision makingHigh capacity to learn, work under pressure to meet tight deadlinesExperience with asynchronous and/or distributed programming, and the nuances that go along with itStartup Mentality: you like to be part of something new and you are able to get things done quicklyCan communicate clearly and accurately in English to people from various cultural and technical backgrounds. Command of French preferred but not necessaryAbout sweetiQ\r\nsweetiQ is the leading local search marketing automation platform helping the world’s biggest retailers drive in-store foot traffic via online local search. Since 2011, sweetiQ has been powering local search campaigns for retailers, including FedEx, McDonald’s, Bell Canada, Domino’s Pizza, SportChek, and 1-800-Got-Junk. The company’s flagship marketing automation software allows retailers to gain insight about the online performance of their physical stores, as well as identifying opportunities for performance optimization.The company’s technical infrastructure is a massively distributed crawling, data aggregation, and business intelligence engine, that indexes and analyses billions of data points every month. Running on over 1,500 machines, our codebase is built on a stack of Python, Node.js, GoLang, RabbitMQ, and Mongo, amongst others.As a sweetiQ employee, you will work hand-in-hand with the team that has built one of Canada’s fastest growing VC-backed startups, becoming part of a vibrant culture, and playing an important role in the company’s growth stage. Visit sweetiq.com for more detail.To apply\r\nSend your resume, github profile, and links to any interesting projects you have participated in. We like people who can code, so we may send you a short technical quessweetiQ is seeking a Senior Mobile Application Developer to join its growing dev team. SweetIQ runs a massively distributed crawling, data aggregation, and business intelligence engine, complemented by various applications with front-end interfacing, REST APIs, and mobile applications. Reporting to the CTO, this highly motivated individual will take ownership of the company\'s mobile application (iOS / Android), providing real-time local marketing analytics & insights to business owners. This individual will becoming the internal subject-matter-expert, and leading the way in developing the company\'s mobile applications, along with the creation of new ones. The company\'s stack is built on top of multiple languages and technologies, so you should be ready, willing, and able to adapt to the latest and greatest technologies: Python, Node.js, Ruby, Backbone, Bootstrap / Angular, Websockets, REST APIs, GoLang, HTML5, CSS3, Advanced JS, AMQP, Mongo, Git, Jenkins.Primary Responsibilities and DutiesProvide subject matter expertise in one of the following areas: Mobile application design and development, Mobile UX/UI, Code design, Middleware / REST API architecture, Back End architecture, Data Flow analysis & design, DB architecture, Code Optimization, TestingScale, manage, maintain, upgrade, and scale the specific components you will be responsible forResponsible for ensuring the efficiency, consistency, and accuracy of your components, including managing a continuous integration schedule with a testing suiteResponsible for maintaining uptime of the system, structuring support hours, contingency plans, backup plans, disaster recoveryParticipate in product roadmap planning, recommending technologies and solutionsIdentify and drive opportunities to optimize the performance, availability, reliability, and security of our systemsInteracts with stakeholders and has the presence to influence direction, sell ideas, roadmaps, and approachesDesired Skills and ExperienceUniversity degree in computer science, computer engineering, or equivalent5+ years of practical experience in mobile application developmentExpert iOS or Android or bothAble to very quickly adapt to new technologies and protocolsNoSQL DB experience a mustAutonomous, very dynamic, capable of decision makingHigh capacity to learn, work under pressure to meet tight deadlinesExperience with asynchronous and/or distributed programming, and the nuances that go along with itStartup Mentality: you like to be part of something new and you are able to get things done quicklyCan communicate clearly and accurately in English to people from various cultural and technical backgrounds. Command of French preferred but not necessaryAbout sweetiQ\r\nsweetiQ is the leading local search marketing automation platform helping the world’s biggest retailers drive in-store foot traffic via online local search. Since 2011, sweetiQ has been powering local search campaigns for retailers, including FedEx, McDonald’s, Bell Canada, Domino’s Pizza, SportChek, and 1-800-Got-Junk. The company’s flagship marketing automation software allows retailers to gain insight about the online performance of their physical stores, as well as identifying opportunities for performance optimization.The company’s technical infrastructure is a massively distributed crawling, data aggregation, and business intelligence engine, that indexes and analyses billions of data points every month. Running on over 1,500 machines, our codebase is built on a stack of Python, Node.js, GoLang, RabbitMQ, and Mongo, amongst others.As a sweetiQ employee, you will work hand-in-hand with the team that has built one of Canada’s fastest growing VC-backed startups, becoming part of a vibrant culture, and playing an important role in the company’s growth stage. Visit sweetiq.com for more detail.To apply\r\nSend your resume, github profile, and links to any interesting projects you have participated in. We like people who can code, so we may send you a short technical question to solve as part of the hiring process. If your code is sweet, we will call you for an interview. tion to solve as part of the hiring process. If your code is sweet, we will call you for an interview.      </pre>', 'http://www.indeed.ca/job/Mobile-Application-Developer-at-sweetiQ-in-Montr%C3%A9al,-QC-73823c48ca08fb50', '2a430792fb5dd86530fcbe1aa4386bb3', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-24', 'dfca9808c862ae9dc779a9a7ac00c62d');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('324', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Developer (iOS/Android) - Alteo Inc. IT Recruiting Services -  Montréal, QC', '<pre>Alteo is looking for a Mobile Developer (iOS/Android ) for a permanent job based in Montreal. \r\n \r\n Our client is a well established small company developing cutting-edge SaaS solutions. The company offers good working conditions in a start-up environment. You will work in Agile mode within a dynamic team dedicated to quality software development. \r\n \r\n Responsibilities: \r\n • Development of native mobile applications (Android and iOS) \r\n Job Requirements \r\n • DEC / BAC in IT, software engineering or equivalent \r\n • 2+ years experience in mobile applications development \r\n • Master one of the 2 platforms: iOS or Android and basic knowledge in the other \r\n • Good capacity for the development of user interfaces \r\n • Good knowledge of relational databases \r\n • Good knowledge of Web Services \r\n • Ideally bilingual (Proficiency in French or English, functional in the other language)      </pre>', 'http://www.indeed.ca/job/Mobile-Developer-at-Alteo-in-Montr%C3%A9al,-QC-532c867d96458b8e', 'a2af6acba0511765822352cbd486df60', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-24', 'd1b239653727cf8c1764de2c7be8739a');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('325', '1', '0', '0000-00-00 00:00:00', '0', 'Sales Representative, Rogers authorized dealer - Rogers - Destination Mobile -  Saint-Eustache, QC', 'At Destination Mobile, we are always looking for people who love the retail industry, true competitors who are motivated by challenge and performance. Team... <br/>\n            From Jobillico - 24 Jul 2014 14:07:55 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs?l=Saint-Eustache,+QC\">Saint-Eustache jobs</a>', 'http://www.indeed.ca/viewjob?t=Sales+Representative&amp;c=Rogers&amp;l=Saint-Eustache,+QC&amp;jk=d33607761e08272e', '26c37e5d1b241ffdba11d76e6dfed8ab', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-24', 'ef148551c16be14a9e3c32c39db23353');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('326', '1', '0', '0000-00-00 00:00:00', '0', 'Associes de Ventes de boutique mobile - Match Marketing Group -  Laval, QC', '<pre>Vous voulez faire partie de quelque chose de GRAND? Le moment ne pourrait être mieux choisi pour vous joindre à notre grande famille. \r\n\r\n WOW! boutique mobile ™ est présentement à la recherche de meneurs qui veulent faire les choses différemment en inspirant et en faisant évoluer une équipe de représentants aux ventes, par le biais d’accompagnement et de mentorat. Vous mènerez par l’exemple pour créer une culture d’équipe qui favorise l’inclusion, la collaboration et le développement. \r\n\r\n Nous oeuvrons dans le domaine de l’expérience client ! En tant qu’ambassadeurs pour une expérience de sans-fil incomparable, tous les membres de notre équipe sont passionnés par la vente au détail. Notre démarche s’oriente autour des besoins du client, pour les amener à prendre une décision éclairée selon leurs habitudes de vie. De plus, nous sommes appuyés par les plus grands fournisseurs de services de sans-fil au Canada TELUS, Rogers, Koodo, Fido et Chatr, en plus d’offrir une sélection des accessoires les plus populaires. \r\n\r\n Vous n’avez pas d’expérience dans le domaine du sans-fil ? Pas de problème ! Nous fournissons une formation et tout l’appui nécessaire pour vous assurer du succès. \r\n\r\n Créer une culture d’équipe dynamique, amusante, et orientée vers les résultats \r\n\r\n Apporter énergie, enthousiasme et engagement à l’expérience client \r\n\r\n Assumer le rôle d’ambassadeur de marque dans l’environnement du centre commercial pour générer une reconnaissance de marque et un engouement \r\n\r\n Apporter énergie et enthousiasme à l’expérience client \r\n\r\n Créer une culture d’équipe dynamique, amusante, et orientée vers les résultats \r\n\r\n Accompagner la croissance des représentants aux ventes afin d’atteindre une excellence opérationnelle \r\n\r\n Faire grandir la boutique en identifiant correctement les besoins des clients et en apportant des solutions personnalisées \r\n\r\n Respecter les piliers clés de l’entreprise en ce qui a trait à l’expérience client, aux opérations et aux ventes \r\n\r\n Participer à toutes les formations : nous sommes à la recherche de personnes qui s’intéressent à la croissance professionnelle \r\n\r\n Faire preuve de leadership pour déterminer des plans d’action stratégiques à être mis en place pour atteindre les objectifs d’affaire de l’entreprise – et savoir s’amuser ! \r\n\r\n Exigences du poste :\r\n Capacité à agir en tant que meneur pour démontrer par l’exemple \r\n\r\n Attitude fonceuse lorsque vient le moment d’avoir une conversation pertinente et constructive \r\n\r\n Capacité à comprendre et apprécier l’impact de l’expérience client sur les résultats de ventes \r\n\r\n Aisance à travailler dans un environnement orienté vers les résultats, vers la satisfaction du client et vers la productivité \r\n\r\n Capacité démontrée à mener une équipe de personnes surdouées… et à accompagner celles qui ne l’étaient pas \r\n\r\n 1 à 2 ans d’expérience en ventes, un atout considérable \r\n\r\n Connaissances liées aux ventes, à la gestion des relations client, ou toutes autres connaissances pertinentes à l’industrie, un atout considérable \r\n\r\n Habileté à écouter et socialiser, un atout pertinent \r\n\r\n Passion pour les technologies branchées et pour les dernières innovations \r\n\r\n Capacité à engendrer des ventes en développant des relations avec le client et en mettant à profit des connaissances de l’industrie, un atout \r\n\r\n Disponible pour travailler durant les heures d’ouverture du centre commercial \r\n\r\n Disponible pour travailler à plusieurs endroits, un atout \r\n\r\n Exigences physiques du poste :\r\n Capacité à soulever 30 à 50 lb (12 kg – 22 kg) \r\n\r\n Capacité à rester debout durant de longues périodes \r\n\r\n Avis de non-responsabilité :\r\n La description de poste ci-haut a été créée afin d’indiquer la nature générale de l’emploi et le niveau de compétence démontré par les employés occupant ce poste. Elle n’a pas été conçue et ne doit pas être interprétée en tant que liste exhaustive des tâches, responsabilités et qualifications requises des employés affectés à ce poste. \r\n\r\n carriere@wowmobile.ca \r\n\r\n Required Skills \r\n\r\n Required Experience      </pre>', 'http://www.indeed.ca/job/Assocy-De-Vente-De-Boutique-Mobile-at-Match-Marketing-in-Laval,-QC-cc118601387d619d', 'fece3b399f22a3d6ceb99ec42c4336c7', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-24', '0d5e8f1fdcba8a656df8c7bae7287661');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('327', '1', '0', '0000-00-00 00:00:00', '0', 'Associes de Ventes de boutique mobile - Match Marketing Group -  Rosemère, QC', '<pre>Vous voulez faire partie de quelque chose de GRAND? Le moment ne pourrait être mieux choisi pour vous joindre à notre grande famille. \r\n\r\n WOW! boutique mobile ™ est présentement à la recherche de meneurs qui veulent faire les choses différemment en inspirant et en faisant évoluer une équipe de représentants aux ventes, par le biais d’accompagnement et de mentorat. Vous mènerez par l’exemple pour créer une culture d’équipe qui favorise l’inclusion, la collaboration et le développement. \r\n\r\n Nous oeuvrons dans le domaine de l’expérience client ! En tant qu’ambassadeurs pour une expérience de sans-fil incomparable, tous les membres de notre équipe sont passionnés par la vente au détail. Notre démarche s’oriente autour des besoins du client, pour les amener à prendre une décision éclairée selon leurs habitudes de vie. De plus, nous sommes appuyés par les plus grands fournisseurs de services de sans-fil au Canada TELUS, Rogers, Koodo, Fido et Chatr, en plus d’offrir une sélection des accessoires les plus populaires. \r\n\r\n Vous n’avez pas d’expérience dans le domaine du sans-fil ? Pas de problème ! Nous fournissons une formation et tout l’appui nécessaire pour vous assurer du succès. \r\n\r\n Créer une culture d’équipe dynamique, amusante, et orientée vers les résultats \r\n\r\n Apporter énergie, enthousiasme et engagement à l’expérience client \r\n\r\n Assumer le rôle d’ambassadeur de marque dans l’environnement du centre commercial pour générer une reconnaissance de marque et un engouement \r\n\r\n Apporter énergie et enthousiasme à l’expérience client \r\n\r\n Créer une culture d’équipe dynamique, amusante, et orientée vers les résultats \r\n\r\n Accompagner la croissance des représentants aux ventes afin d’atteindre une excellence opérationnelle \r\n\r\n Faire grandir la boutique en identifiant correctement les besoins des clients et en apportant des solutions personnalisées \r\n\r\n Respecter les piliers clés de l’entreprise en ce qui a trait à l’expérience client, aux opérations et aux ventes \r\n\r\n Participer à toutes les formations : nous sommes à la recherche de personnes qui s’intéressent à la croissance professionnelle \r\n\r\n Faire preuve de leadership pour déterminer des plans d’action stratégiques à être mis en place pour atteindre les objectifs d’affaire de l’entreprise – et savoir s’amuser ! \r\n\r\n Exigences du poste :\r\n Capacité à agir en tant que meneur pour démontrer par l’exemple \r\n\r\n Attitude fonceuse lorsque vient le moment d’avoir une conversation pertinente et constructive \r\n\r\n Capacité à comprendre et apprécier l’impact de l’expérience client sur les résultats de ventes \r\n\r\n Aisance à travailler dans un environnement orienté vers les résultats, vers la satisfaction du client et vers la productivité \r\n\r\n Capacité démontrée à mener une équipe de personnes surdouées… et à accompagner celles qui ne l’étaient pas \r\n\r\n 1 à 2 ans d’expérience en ventes, un atout considérable \r\n\r\n Connaissances liées aux ventes, à la gestion des relations client, ou toutes autres connaissances pertinentes à l’industrie, un atout considérable \r\n\r\n Habileté à écouter et socialiser, un atout pertinent \r\n\r\n Passion pour les technologies branchées et pour les dernières innovations \r\n\r\n Capacité à engendrer des ventes en développant des relations avec le client et en mettant à profit des connaissances de l’industrie, un atout \r\n\r\n Disponible pour travailler durant les heures d’ouverture du centre commercial \r\n\r\n Disponible pour travailler à plusieurs endroits, un atout \r\n\r\n Exigences physiques du poste :\r\n Capacité à soulever 30 à 50 lb (12 kg – 22 kg) \r\n\r\n Capacité à rester debout durant de longues périodes \r\n\r\n Avis de non-responsabilité :\r\n La description de poste ci-haut a été créée afin d’indiquer la nature générale de l’emploi et le niveau de compétence démontré par les employés occupant ce poste. Elle n’a pas été conçue et ne doit pas être interprétée en tant que liste exhaustive des tâches, responsabilités et qualifications requises des employés affectés à ce poste. \r\n\r\n carriere@wowmobile.ca \r\n\r\n Required Skills \r\n\r\n Required Experience      </pre>', 'http://www.indeed.ca/job/Assocy-De-Vente-De-Boutique-Mobile-at-Match-Marketing-in-Rosem%C3%A8re,-QC-5a1deb27273af091', '118a0dc6f6ad66b07afd23a1dcb93745', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-24', '0d5e8f1fdcba8a656df8c7bae7287661');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('328', '1', '0', '0000-00-00 00:00:00', '0', 'Associes de Ventes de boutique mobile - Match Marketing Group -  Pointe-Claire, QC', 'de Ventes de boutique mobile Vous voulez faire... joindre à notre grande famille. WOW! boutique mobile ™ est présentement à la recherche de meneurs qui... <br/>\n            From Match Marketing Group - 24 Jul 2014 07:06:29 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs?l=Pointe-Claire,+QC\">Pointe-Claire jobs</a>', 'http://www.indeed.ca/viewjob?t=Assocy+De+Vente+De+Boutique+Mobile&amp;c=Match+Marketing&amp;l=Pointe-Claire,+QC&amp;jk=46d81f64f00ec49c', '0eb5442ec4fd6f5e5eaea8ca46a5281c', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-24', '0d5e8f1fdcba8a656df8c7bae7287661');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('329', '1', '0', '0000-00-00 00:00:00', '0', 'Sales Representative - (Mobile Devices &amp; Software) - Randstad -  Montréal, QC', '<pre>Our client, a leading global software organization, is hiring a Bilingual (English/French) Software salesperson for a long term contract. Experience selling through channels and mobile device sales is an asset. This role will be selling Mobile Devices to Mobile Retail Outlets (Telus, Rogers, Bell) \r\n\r\n Responsibilities:\r\n  Own the development and execution of B2B Partner Business Plan with the managed partner. Evangelizing, training and partner advocacy with Mobile Operators B2B sales and marketing teams. Providing support on building sales funnels and joint sales calls. Creating offers that help drive sales of Windows devices at Mobile Operators.  Qualifications:\r\n  Direct and indirect software sales experience. Entrepreneurial approach and demonstrable examples of this in career history. Confident selling to senior management. Able to work successfully within a virtual team environment. Great interpersonal and communication skills. A passion for technology and innovation. Previous IT channel sales experience desirable.  For immediate consideration, don’t delay, apply online today!      </pre>', 'http://www.indeed.ca/job/Sales-Representative-at-Randstad-in-Montr%C3%A9al,-QC-cd11e09838b76254', '4d8a679038bda84824f190198692f0a2', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', 'c465b3bbb9a788e4200fc57ed93c98f0');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('330', '1', '0', '0000-00-00 00:00:00', '0', 'Technicien(ne) en administration et téléphonie mobile - L\'Équipe Spectra -  Montréal, QC', 'des appareils téléphonique mobile Assurer le support... vérification et gestion des coûts de la téléphonie mobile. Assurer la gestion et la formation des usagers... <br/>\n            From Jobillico - 23 Jul 2014 20:04:30 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs-in-Montr%C3%A9al,-QC\">Montréal jobs</a>', 'http://www.indeed.ca/viewjob?t=Technicien+En+Administration+Et+T%C3%A9l%C3%A9phonie+Mobile&amp;c=L\'%C3%89quipe+Spectra&amp;l=Montr%C3%A9al,+QC&amp;jk=4e1f14b3dcbc85b1', 'd472edd8f4b88909408521185631dc53', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', '7968ac9ffe2921335668627fdaf78d7d');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('331', '1', '0', '0000-00-00 00:00:00', '0', 'Bilingual - Wireless Sales Associates / Mobile Advisors - The Mobile Shop -  Montréal, QC', '<pre>Must be Bilingual - English and FrenchLocations: Longueuil and Jean- TalonJoin our winning Sales Team today!Are you?If you are someone who has 1 – 2 years of progressive retail sales and customer service experience and is driven by success and challenge, we have an opportunity for a strong candidate who exemplifies a passion for Sales, Wireless technology and an outstanding customer experience. The Mobile Shop is looking for Tech Savvy individuals with exceptional communication and interpersonal skills, who have the zeal to be product experts in Wireless industry. Experience in the wireless industry is a definite asset, but a positive attitude and the will to learn is all we need.What about us?We are located in over 170 stores across Canada and 100% Loblaw owned, providing a fresh and better way to buy wireless. As a multi-carrier retailer, we are proud to offer a choice from 7 leading wireless providers including PC Mobile and have a complete selection of the latest mobile phones and accessories. We are the Mobile Shop!So next time you are grocery shopping, stop by and see us. We look forward to meeting you!How we work?Our employees work towards achieving all the key business objectives including sales, service and customer experience. It’s simple; here’s how:Follow operational guidelines to ensure all compliance standards are being met and complete all required trainingsWork in partnership with Lead Advisors and other Mobile Advisors to maximize salesProvide customers with superior knowledge of all the product lines and services availableEstablish trusting relationships with customers by helping them find the best products for their needsProvide follow up service and guidance to customersHave a professional and friendly attitudeWait! There’s more… Apart from being a fun, dynamic and respectful work environment, we also offer:Competitive Total rewards and Compensation Package (Hourly base + Commissions)Ongoing training and support programs, coupled with Unparalleled carrier supportEmployee referral bonus and Sales Expert ProgramAttractive EPP choices from all carriersCareer advancement opportunitiesMust be Bilingual - English and FrenchApply today or visit us @ www.themobileshop.ca/careers      </pre>', 'http://www.indeed.ca/job/Bilingual-at-The-Mobile-Shop-in-Montr%C3%A9al,-QC-313f2dd48d7a108a', '8e9331965a12d4fe3d09cf42615d1817', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', 'b410dd1bfaeee56fc27555aa414cfe76');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('332', '1', '0', '0000-00-00 00:00:00', '0', 'Bilingual - Wireless Sales Manager / Lead Advisor - The Mobile Shop -  Montréal, QC', '<pre>Locations: Longueuil & Jean-TalonJoin our winning team today !The Mobile Shop is recruiting for full time Lead Advisors (Store Managers). You will be responsible for sales goals, customer service excellence and working with the latest technology across multiple carriers. A competitive hourly wage and commission structure are available for strong candidates who exemplify a passion for sales, wireless technology and outstanding customer service. The Mobile Shop offers a fresh, convenient way to shop for wireless.The Mobile Shop is a full service, multi carrier retailers operating within hundreds of Loblaw and Loblaw affiliated stores across the country. The Mobile Shop will offer the millions of shoppers that visit these locations on a weekly basis, simple, trusted advice on a full range of wireless products and services. By offering customers more choice from Canada’s biggest and best mobile providers in a comfortable and convenient shopping environment, The Mobile Shop has quickly become a recognized leader in this exciting and dynamic category.How we work?Our leaders work towards achieving all the key business objectives including sales, service, employee engagement and customer experience. It’s simple; here’s how:Follow operational guidelines to ensure all compliance standards are being met and complete all required trainings * Lead and develop Mobile Advisors to meet store sales and performance objectivesEstablish trusting relationships with customers by helping them find the best products for their needsSuccessfully recruit and Onboard new Mobile AdvisorsEffectively administer performance management programs and deliver on all key metrics through coaching and feedbackDemonstrate superior organization and time management skillsKeep the store updated with the latest trends to provide a better customer experienceWait! There’s more… Apart from being a fun, dynamic and respectful work environment, we also offer:Competitive Total rewards and Compensation PackageOngoing training and support programs, coupled with Unparalleled carrier supportEmployee referral bonus and Sales Expert ProgramAttractive EPP choices from all carriersCareer advancement opportunitiesMust be BilingualApply today @ www.themobileshop.ca/careersl      </pre>', 'http://www.indeed.ca/job/Bilingual-at-The-Mobile-Shop-in-Montr%C3%A9al,-QC-74f5b981abe3afdb', '09c6b02dfc5ff13506047e336d5adcbc', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', '7ef6ae3df6aba2a70944b83802b13a45');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('333', '1', '0', '0000-00-00 00:00:00', '0', 'Spécialiste BBY Mobile NEW - Best Buy -  Brossard, QC', '<pre>Spécialiste BBY Mobile </b>\r\n \r\n Choisissez une carrière offrant un salaire concurrentiel, d’excellentes possibilités d’avancement et des avantages imbattables : tout cela au sein d’une entreprise qui connaît une croissance rapide partout au Canada. Si vous avez passé déjà du temps dans nos magasins, vous adorerez travailler à Best Buy. \r\n Vous êtes une personne responsable, organisée et débrouillarde et vous avez le sens du détail? Vous êtes curieux et l’électronique vous passionne? Vous aimez créer des liens à long terme avec des clients technophiles? Si vous avez répondu « Oui » aux questions ci-dessus, nous devons nous parler. Vous pourriez être la personne idéale pour notre entreprise. \r\n \r\n À propos du poste \r\n Atteindre les objectifs liés aux ventes personnelles et à la solution complète en utilisant l’approche RÉSOUDRE-AIDE, en s’assurant d’avoir toujours une excellente connaissance des produits et en recommandant aux clients les produits qui répondent à leurs besoins. Obtenir d’excellents résultats dans un environnement de vente au détail dynamique et au sein d’une équipe. Assurer le maintien de l’excellent niveau de service à la clientèle qui est maintenant synonyme de la marque Best Buy. Ce que vous devez offrir \r\n Expérience de 6 mois dans un environnement de vente au détail Expérience de 6 mois liée au service à la clientèle Qualifications souhaitées : Expérience liée à la vente de produits sans fil Ce que Best Buy vous offre \r\n Salaires concurrentiels Excellents rabais pour les employés Régime de retraite avantageux par rapport au marché Excellente assurance pour les soins médicaux et dentaires Possibilités d’avancement \r\n Commencez votre carrière du bon pied, postulez maintenant!      </pre>', 'http://www.indeed.ca/job/Sp%C3%A9cialiste-Bby-Mobile-New-at-Best-Buy-in-Brossard,-QC-91f13280655fd5c4', '96900398b75e8c1a8d08b512edc106a8', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', 'fa882a63a4383ee3ab703b7ba7ec1b32');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('334', '1', '0', '0000-00-00 00:00:00', '0', 'Analyste de test Mobile - Groupe Conseil OSI inc. -  Montréal, QC', '<pre>OSI, acteur majeur au Québec dans le domaine des services conseils en technologies de l’information recherche un analyste de test mobile pour se joindre à son équipe de professionnels. \r\n\r\n Description des tâches :\r\n  Élaborer des procédures d’essai, des conditions d’essai, des données d’entrée et d’essai et établir des prévisions sur les résultats attendus. Élaborer, mettre à jour et maintenir les normes et les procédures d’essai. Participer à/réaliser un examen sur les programmes et les procédures d’essai.  Exécuter des procédures d’essai. \r\n Enregistrer les défectuosités et les enjeux conformément à la conception fonctionnelle ciblée et attendue. Valider la correction d’une défectuosité du produit et exécuter le test de régression, suivant les besoins.  Informer l’intégrateur de tests des enjeux qui peuvent toucher l’échéancier ou la qualité du produit ou le processus de contrôle. \r\n Collaborer au protocole de test.  Expertise, qualités :\r\n  testeur avec connaissances et expériences pratiques dans le test mobile expérience en exécution de tests expérience dans les tests mobiles requis bilingue  3 à 5 ans d\'expérience      </pre>', 'http://www.indeed.ca/job/Analyste-De-Test-Mobile-at-Groupe-Conseil-OSI-in-Montr%C3%A9al,-QC-06e6a0cf8dc5ac02', '91248d1d3ca56a867cff119911e2b7f2', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', '409a2a5c3888f50b58596ccc39c7d185');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('335', '1', '0', '0000-00-00 00:00:00', '0', 'POSTE DE DÉVELOPPEUR D\'APPLICATIONS MOBILE SÉNIOR / SENIOR... - Adecco -  Montréal, QC', 'entre divers plateformes mobiles (iPhone, Androide... Role of the Mobile App Developer: - Deliver solutions for conversions across different mobile platforms... <br/>\n            From Adecco - 22 Jul 2014 22:29:29 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs-in-Montr%C3%A9al,-QC\">Montréal jobs</a>', 'http://www.indeed.ca/viewjob?t=Poste+De+D%C3%A9veloppeur+D\'application+Mobile+S%C3%A9nior&amp;c=Adecco&amp;l=Montr%C3%A9al,+QC&amp;jk=12daf4346ad0dac9', 'ae1fd4b23a579d84b025f5912bdd5ace', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-23', 'd5c3daa2fe2849f2eb1162f4640bf57c');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('336', '1', '0', '0000-00-00 00:00:00', '0', 'Junior Mobile App Developer (2 positions available) - Thought Technology Ltd. -  Montréal, QC', '<pre>Overview\r\nWe are creating the next generation of our product line and you can be a critical part of this creative, fast-paced and exciting team. We are seeking Android Developers with strong Android/Tablet portfolios, and iOS Developers with strong iPhone/iPad portfolios, to develop high-impact data visualization and signal processing applications to impact our clinical and peak performance markets.The ideal candidates will be creative, bring a fresh perspective on building a new and improved user experience, and be passionate about designing unique and innovative applications for both Android and iOS platforms to improve health and performance.Starting date: immediatelySalary: Entry-level engineering salaryYour role:Understand customer requirements and implement code to specifications;Test and debug, perform internal usability studies and contribute to first draft user manual to ensure software meets specifications and usability criteria;Employ source control and code archiving procedures;Follow and maintain ISO and regulatory requirements for medical device software.Our OfferA permanent position in an international medical device company with clients in the medical field, as well as in physical therapy and in professional and Olympic sports;Be part of a young, dynamic mobile app development group;Enjoy a stimulating work environment, and contribute to exciting applications;Enjoy a friendly environment and flexible hours.Essential Experience\r\nAt least 1 year of experience developing commercially distributed mobile apps.Knowledge and skillSolid knowledge of Android, Java, J2EE and/or iOSSolid knowledge of OOP programming demonstrated in previous project experienceExperience using version control repositories such as Git, Eclipse, Subversion.Understanding of data structure and network protocolsUnderstanding of backend components that drive mobile applicationsUX/UI design skillsNot required but beneficial: digital signal processing.Results-oriented and problem solverAccustomed to fast paced teamwork and tight deadlinesStrong oral and written communication skillsEducation\r\nBachelor\'s degree in Computer Science, Electrical/Computer/Software Engineering or equivalent      </pre>', 'http://www.indeed.ca/job/Junior-Mobile-Application-Developer-at-Thought-Technology-in-Montr%C3%A9al,-QC-fa0a29cc85af5f80', '2913c665eb30c48083bf4e26e4f75a4b', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-22', '175804324428c335e6059969a0e8b541');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('337', '1', '0', '0000-00-00 00:00:00', '0', 'Senior Mobile App Developer - Thought Technology Ltd. -  Montréal, QC', '<pre>Overview\r\nWe are creating the next generation of our product line and you can be a critical part of this creative, fast-paced and exciting team. We are seeking Android Developers with strong Android/Tablet portfolios, and iOS Developers with strong iPhone/iPad portfolios, to develop high-impact data visualization and signal processing applications to impact our clinical and peak performance markets.The ideal candidates will be creative, bring a fresh perspective on building a new and improved user experience, and be passionate about designing unique and innovative applications for both Android and iOS platforms to improve health and performance.Starting date: immediatelySalary: commensurate with experienceYour role:Act as lead developer on multiple teams through all aspects of design and implementation of mobile apps;Understand customer requirements to contribute to the creation of a detailed specification document before implementation begins. Implement code to specifications;Test and debug, perform internal usability studies and contribute to first draft user manual to ensure software meets specifications and usability criteria;Maintain a modular code base, such that the same general elements can be reused in different app projects;Maintain source control and code archiving procedures for mobile development team;Follow and maintain ISO and regulatory requirements for medical device software.Our OfferA permanent position in an international medical device company with clients in the medical field, as well as in physical therapy and in professional and Olympic sports;Be part of a young, dynamic mobile app development group;Enjoy a stimulating work environment, and contribute to exciting applications;Enjoy a friendly environment and flexible hours.Essential Experience\r\nAt least 10 years of experience in industry computer programming and at least 2 years of experience developing commercially distributed mobile apps.Knowledge and skillStrong knowledge of Android, Java, J2EE and/or iOSDeep knowledge of OOP programming demonstrated in previous project experienceExperience using version control repositories such as Git, Eclipse, Subversion.Solid understanding of data structure and network protocolsUnderstanding of backend components that drive mobile applicationsUX/UI design skillsExperience posting apps to Google Play and App StoreNot required but beneficial: digital signal processingStrong problem solving skills and results-oriented mentalityAccustomed to fast paced teamwork and tight deadlinesStrong oral and written communication skillsEducation\r\nBachelor\'s degree in Computer Science, Electrical/Computer/Software Engineering or equivalent      </pre>', 'http://www.indeed.ca/job/Senior-Mobile-Application-Developer-at-Thought-Technology-in-Montr%C3%A9al,-QC-f1090ae1b126fd87', '0e6f1b51b3620f0a75c95329421a9b9c', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-22', 'ebfb1459ed660d228bacdf92a21a28c4');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('338', '1', '0', '0000-00-00 00:00:00', '0', 'UX Designer-Mobile - Sourcevolution -  Montréal, QC', '<pre>WHAT THE JOB IS…Working closely with the Product Manager and Product Architect, you will collaborate with Developers to propose new solutions to complex user-centered design problems and create compelling user interfaces and also contribute to the development process to ensure a consistent and intuitive user experience across the entire platform. You will be executing wireframes and prototyping the user experience vision and architecture.WHAT WE ARE OFFERING…This is a full-time position. Aside from the obvious stuff like competitive pay, social benefits, and internal enhancement, we also offer a dynamic, startup work environment, and the opportunity to get in on the ground floor for the next big thing in live entertainment.WHAT WE ARE LOOKING FOR…UX/UI Designer with strong interests and capabilities in design of user interface and/or user experience.The ideal candidate will thrive in a fast-paced and innovative work environment that requires independent self-direction and passion for excellence, coupled with an aptitude for team collaboration.This individual excels at providing both highly analytical as well as highly creative ideas to a design engagement.REQUIRED EXPERIENCE AND SKILLSAt least 3 -5 years of experience working in the UX/UI space for mobile platforms\r\nWork experience related to iOS /Android designs and prototyping is a must\r\nMust be proficient in Adobe Creative Suite as well as other prototyping technologies\r\nStrong written and verbal communication skills\r\nPREFERRED ADDITIONAL SKILLSDegree in IT or Graphic Design\r\nUnderstanding of common software project management practices\r\nUnderstanding of common software development practices      </pre>', 'http://www.indeed.ca/job/Ux-Designer-Mobile-at-Sourcevolution-in-Montr%C3%A9al,-QC-961756912bdf6606', 'cab2758c983e57f6b4ae8ffcae41ff08', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-21', '5bc85bca2643062641c1770b344ab799');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('339', '1', '0', '0000-00-00 00:00:00', '0', 'Superviseur de production (quart de soir) - Hydro Mobile -  L\'Assomption, QC', 'le numéro de concours B-14-04-08. Hydro Mobile inc. 125, rue de l’Industrie L’Assomption (Québec) J5W 2T9 Télécopieur : (450) 589-0370 www.hydro-mobile.com<br/>\n            From Indeed - 21 Jul 2014 14:34:37 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs?l=L\'Assomption,+QC\">L\'Assomption jobs</a>', 'http://www.indeed.ca/viewjob?t=Superviseur+De+Production&amp;c=Hydro+Mobile&amp;l=L\'Assomption,+QC&amp;jk=07796321b74b2ae0', 'c6dbd05c25154b6469130ccf84c4145c', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-21', '24c419d5598474c8e242d5ee864e41cc');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('340', '1', '0', '0000-00-00 00:00:00', '0', 'Mécanicien/Mécanicienne sur Unité Mobile ( véhicule lourd ) remorques - Transport Dynapro inc. -  Montreal-nord, QC', 'Recherche Mécanicien/Mécanicienne sur Unité Mobile ( véhicule lourd ) Effectuer l’entretien périodique des véhicules et remorques (vidange d’huile... <br/>\n            From Jobillico - 20 Jul 2014 05:42:52 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs?l=Montreal-nord,+QC\">Montreal-nord jobs</a>', 'http://www.indeed.ca/viewjob?t=M%C3%A9canicien+M%C3%A9canicienne+Sur+Unit%C3%A9+Mobile+Remorque&amp;c=Transport+Dynapro&amp;l=Montreal-nord,+QC&amp;jk=039ff36c2822351e', 'f2a8f272be2b24670f88001f7f1c913b', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-20', '3f3b3db863129f686eca6eb66f498462');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('341', '1', '0', '0000-00-00 00:00:00', '0', 'Analyste de test Mobile - Randstad -  Montréal, QC', '<pre>Randstad Technologies est à la recherche d\'un analyste en test mobile avec de l\'expérience en exécution de tests et qui est bilingue. \r\n\r\n Si cela correspond à votre profil, n\'hésitez pas à appliquer immédiatement!      </pre>', 'http://www.indeed.ca/job/Analyste-De-Test-Mobile-at-Randstad-in-Montr%C3%A9al,-QC-9efaf42184c2186f', '2c079314b580a7769cf203ae88388182', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-19', '97eaa668547c20f6339ab82896c7fe6b');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('342', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Software Developer (iOS) - iBwave -  Montréal, QC', '<pre>Reporting to Software Team Lead, the incumbent will participate in the analysis and design of features for the company’s product line. \r\n \r\n POSITION DUTIES AND RESPONSIBILITIES: \r\n Participate in the analysis and object-oriented design of new multiplatform functionalities based on development specifications; Unit test development Participate in bug resolution; Participate in various phases of test development cycle (unit, functional, integrated, acceptance). \r\n QUALIFICATIONS: \r\n Minimum of two (2) years of experience in application development; Strong knowledge of OOP, (Objective-C and Java) Knowledge of source code management software (Subversion / Microsoft TFS); Knowledge of Web Services consumption (JSON, SOAP, RESTful) Knowledge of HTML5, JavaScript, JQuery, XML; The following qualifications will be considered as strong assets \r\n Experience with iOS (iPhone, iPad) with Xcode Multi-touch API’s and best practices Experience with wireless networks \r\n SKILLS: \r\n Strong communication; Creativity; Autonomy; Detail-oriented and precision; Team player; Organizing skills;      </pre>', 'http://www.indeed.ca/job/Mobile-Software-Developer-at-iBwave-in-Montr%C3%A9al,-QC-8e501e1e6d253994', '353e316284383398f4cc9a04682679f6', '0', '2', 'canada', '', '3', '2014-07-24 20:14:50', '2014-07-19', 'fdba5973dc39657cae53fb5421aae7cf');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('343', '1', '0', '0000-00-00 00:00:00', '0', 'Android and iOS App Developers', '<pre>                 Alias Apps is a small team of recent University Graduates specializing in iOS and Android mobile development. Alias Apps is a company which strives to provide its clients with the highest quality mobile apps at affordable prices. Head quartered in Toronto Canada, all of our apps are programmed and tested in-house to assure our products meet and surpass industry standards. Our proficient and dynamic developers are well-equipped with latest development tools and platforms to deliver client-centric mobile solutions.  \r\n \r\nWe are highly skilled Computer Science University graduates and have the necessary tools to finish any project regardless of size and complexity. We can work for established businesses, other start up businesses or entrepreneurs looking to get their new app idea out.  \r\n \r\nPlease do not hesitate to email us or give us a call with any questions you may have or about pricing. 416 809 4255  \r\n \r\nwww.AliasApps.com </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/oakville-halton-region/android-and-ios-app-developers/1006558799', '7d19515a2d837e1c1368ff31ba52d574', '3', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-24', 'http://www.kijiji.ca/v-programmer-computer-jobs/oakville-halton-region/android-and-ios-app-developers/1006558799');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('344', '1', '0', '0000-00-00 00:00:00', '0', 'Sr. Mobile Lead Developer /Team Lead', '<pre>                 (Toronto) \r\ncompensation: DOE \r\n. \r\n \r\nYou would be reporting to the Manager Technology Delivery. \r\n \r\nThe Lead Developer is responsible for developing the systems and tools that the company operations needs in order to successfully execute their business strategy/plans. This individual will work closely with the development and project team to complete deliverables in support of technology solutions.  \r\n \r\nUsing their project and work experience, the individual will assist the Manager Technology Delivery and the Application Architect to design flexible and scaleable technology solutions. The individual will also act as a mentor to the rest of the development team. \r\n \r\nKEY RESPONSIBILITIES: \r\nParticipation and completion of deliverables in any of the following System Development Lifecycle Phases: Analysis, Design, Development or Integration Testing; \r\nWorking with the Application Architect and the Manager Technology Delivery, participate in the high-level technical design and architecture of technology solutions; \r\nDesign and document code and perform the testing and debugging of well-defined tasks in complex applications, functions and reports; \r\nCoach, motivate and inspire team members to build high performance, stable and maintainable code bases \r\nIdentify, analyze and resolve software defects on time, within scope and within established development guidelines; \r\nAnalyze data and prepares reports as required; \r\nProvide timely, accurate and quality application support to enterprise applications; \r\nFollow established development guidelines and standards; \r\nAssist in developing complete operational instructions and program documentation according to established standards; \r\nAssist in establishing project estimates, ensure assigned projects follow schedules, and inform management of any unplanned slippages; \r\nParticipate in technical design and application code reviews; \r\nProactively suggest improvements to technical designs and development standards; \r\nAssist and mentor developers in building technical and software development skills; \r\nProvide status updates to supervisor(s)/manager(s) on a regular basis; \r\nEnsure compliance with all relevant project, development, design and architecture standards as well as standard operational processes and service metrics; \r\nEnsure all appropriate Service Levels and Quality objectives are met; \r\nProvide status updates to supervisor(s)/manager(s) on a regular basis; \r\nBe responsive to clients, stakeholders, peers and co-workers; \r\nBackup delivery manager in their absence \r\nDeliver what is committed and expected - i.e. deliver on all promised timelines, budgets and scope; \r\nEDUCATION : \r\n] 6 years experience in information technology development and/or IT consulting; or any combination of education and experience. \r\n \r\nREQUIRED SKILLS: \r\nSome Technical Lead experience  \r\nKnowledge of programming techniques and languages; \r\nStrong technical background with breadth across mobile application platforms (ie. IOS, Android, Windows Phone, Blackberry) and different mobile application technologies (eg. HTML5, Hybrid, MEAPs) \r\nExperience in multiple programming languages/technologies such as: CSS3, JQuery, Objective-C, Xcode, Backload, C#, Java, VB, Transact-SQL, TFS; \r\nExperience in development with Web Services, Smart Client and Service Oriented Architectures; \r\nExperience with mobile middleware and integration with different web services and message exchanges (eg. SOAP, REST, JSON, XML) \r\nExcellent scoping and estimation skills \r\nDemonstrated ability to work in a product development environment as part of a team; \r\nAssets \r\nExperience with OAuth 2, SAML 2, JWT, SWT token formats \r\nExperience in SharePoint development is an asset \r\nKnowledge of ITIL Service Management principles is an asset; \r\nAbility to work in a fast-paced environment; </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/sr-mobile-lead-developer-team-lead/1006435491', '001b464526143213b387699e815048d0', '6', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-24', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/sr-mobile-lead-developer-team-lead/1006435491');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('345', '1', '0', '0000-00-00 00:00:00', '0', 'MOBILE APPLICATIONS DEVELOPMENT COLLEGE GRADUATED', '<pre>                 Hi I am looking to valonteer. \r\n My name is Alexander I recently graduated from John Abbott College( Mobile applications develoment ).The studies at college are not enough and I am looking to valonteer and to gain some experience.If you are interested I will send you my CV. </pre>', 'http://www.kijiji.ca/v-web-programmeur/ville-de-montreal/mobile-applications-development-college-graduated/1006522406', '978c50a2921bda88470cf2c836984c89', '7', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-24', 'http://www.kijiji.ca/v-web-programmeur/ville-de-montreal/mobile-applications-development-college-graduated/1006522406');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('346', '1', '0', '0000-00-00 00:00:00', '0', 'Idea + Developer = App', '<pre>                 If you have an idea about a entertainment, social, educational or business application than I am probably the guy you\'re looking for. With my knowledge and skills in developing mobile application I can create exactly what your looking for. I developed several apps both on iOS and Android platform for clients across Canada. So please contact me at (647) 895-3832 so we can complete the equation an give birth to a new app. </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/mississauga-peel-region/idea-developer-app/1006476677', '14f90a31558d8c23bfd2a68e0b07df51', '21', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-24', 'http://www.kijiji.ca/v-programmer-computer-jobs/mississauga-peel-region/idea-developer-app/1006476677');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('347', '1', '0', '0000-00-00 00:00:00', '0', 'Free - Professional Software Testing/QA Services for your apps', '<pre>                 I am offering free of cost professional services for testing and QAing your software and mobile applications. \r\n \r\nIf you want to get your applications tested in a professional manner, please contact. \r\n \r\nNo cost. It\'s all free. \r\n \r\ncell # : 647-909-5387 \r\n \r\nBrief profile: \r\n \r\nSenior Quality/Testing Professional with 11 years of practical hands-on experience in Software Industry. Working with Firtune 500 companies.Good knowledge of manual and automated testing. Practical working knowledge of mobile applications inclusive of MDM, mobile games testing on iOS and Android. Automated testing experience for web and mobile applications in Selenium/Appium/Capybara/Ruby/Perl/Java </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/mississauga-peel-region/free-professional-software-testing-qa-services-for-your-apps/1006421076', '2531bc729fdc6d36904206244fb0426a', '11', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-24', 'http://www.kijiji.ca/v-programmer-computer-jobs/mississauga-peel-region/free-professional-software-testing-qa-services-for-your-apps/1006421076');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('348', '1', '0', '0000-00-00 00:00:00', '0', 'Programmeur', '<pre>                 Programmeur d\'applications mobiles. </pre>', 'http://www.kijiji.ca/v-web-programmeur/ville-de-quebec/programmeur/1006283664', '630564d5ac1a744833c578063b31643c', '16', '3', 'canada', '', '4', '2014-07-24 20:15:00', '2014-07-23', 'http://www.kijiji.ca/v-web-programmeur/ville-de-quebec/programmeur/1006283664');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('349', '1', '0', '0000-00-00 00:00:00', '0', 'iOS and Android Application Developer', '<pre>                 What’s all about? \r\n \r\nWe are searching for a Senior Mobile Application Developer with experience on both iOS and Android platforms for our mobile project. Our application is quite simple and can be done is one full month of work. See below for more info. \r\n \r\nWhat you should do? \r\n \r\nYou’ll have to develop our application starting from a mockup. Meaning you have to have design and coding skills. In the end, we’ll need 2 fully functional iPhone and Andoird application. You will have to prepare the apps to be submitted to app stores. You will be the only one involved on mobile development but you’ll have to work with our web developers to get the data from and send data back to our web application by JSON. \r\n \r\nHow the application will look like? \r\n \r\nWe are looking to develop a simple mobile application matching our web-based application. We want a native app so will not accept any PhoneGap developpers. The mockup of the application will be shown to selected candidats at the interview. \r\n \r\nApplication flow: \r\n \r\n1. login form (check username and password against our database) \r\n \r\n2. display a list of orders \r\n \r\n- orders are pulled out from our database \r\n \r\n- make request to a https://domain/id and receive a json \r\n \r\n- display json as a list of orders \r\n \r\n3. order details \r\n \r\n- display all order details data when user tap on one order on the order list \r\n \r\n- check for user location (lat/long) \r\n \r\n- calculate ETA (Estimated Time of Arrival) on Google Maps based on user location \r\n \r\n- display Google maps: driving directions / route from current location to point A to point B \r\n \r\n- capture client signature (signed with finger or stylus) \r\n \r\n- submit base30 string/svg file of signature image back to our server \r\n \r\n- mark order as delivered – when tap on big orange button \r\n \r\n- refresh every 5 min, 10min and 30 min \r\n \r\n- user / client can add comments to the order (2 text areas) \r\n \r\nThe app should have 4 buttons: \r\n \r\n1. Orders \r\n \r\n2. Settings (4) \r\n \r\n3. About (just text and back button) \r\n \r\n4. Help (just text and back button) + Logout (kill session and display login page) \r\n \r\nand 9 screens: \r\n \r\n1. login screen \r\n \r\n2. home screen with buttons \r\n \r\n3. main screen (which is the screen where the order list should appear) \r\n \r\n4. order details screen \r\n \r\n5. capture signature and comments screen \r\n \r\n6. google maps screen \r\n \r\n7. about screen \r\n \r\n8. help screen \r\n \r\n9. settings screen \r\n \r\nDesign should be: \r\n \r\n- very simple and intuitive \r\n \r\n- big large buttons \r\n \r\n- include 2 main colors (orange and dark gray) and other tons of light gray. \r\n \r\nWho are we and how you will get paid? \r\n \r\nWe are a startup so we can’t offer you a full time job (not yet!) but we’re willing to pay for a freelancer to complete our mobile project. We’ll discuss all the details after the interview with selected candidate. \r\n \r\nWhat you need to know for this position? \r\n \r\n- For iOS: Objective C, Cocoa, xCode \r\n \r\n- For Android: Java, Android SDK, Eclipse \r\n \r\n- Experience with mobile development issues related to JSON, background app refresh, app settings, maps and ETA calculation, capture client signature base30/SVG format and comments and send JSON back to web server \r\n \r\n- Design skills Photoshop \r\n \r\n- Deploying mobile applications to app stores (Apple Store and Google Play) \r\n \r\nIf this sounds like something you may be interested in, please apply today!  \r\n \r\nSend CV and sample apps links on Apple Store and Google Play </pre>', 'http://www.kijiji.ca/v-web-programmeur/laval-rive-nord/ios-and-android-application-developer/1006259647', '856e13747190c13fabbb96c185fb0c39', '11', '3', 'canada', '', '4', '2014-07-24 20:15:00', '2014-07-23', 'http://www.kijiji.ca/v-web-programmeur/laval-rive-nord/ios-and-android-application-developer/1006259647');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('350', '1', '0', '0000-00-00 00:00:00', '0', 'Looking for experienced app developer for start up', '<pre>                 Seeking an experienced developer for iOS to create a mobile app. Terms negotiable. Send qualifications and previous work to given e-mail. </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/looking-for-experienced-app-developer-for-start-up/1006042330', '55e08b76e8bc7a2b7392fc5614fe738b', '26', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-23', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/looking-for-experienced-app-developer-for-start-up/1006042330');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('351', '1', '0', '0000-00-00 00:00:00', '0', 'Hiring - iOS App Developer', '<pre>                 We are developing a mobile app for android but are looking to outsource the iOS development innorder to release both on the anticipated launch date. Android development is almost done including the design. So the hired developer would already have a base to work off. \r\n \r\nBasic functionality of the app includes: \r\n- User login \r\n- Posting and searching on a database. \r\n- ISBN scanner \r\n- In app purchases \r\n  \r\nMessage me your portfolio or for more details. </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/lethbridge/hiring-ios-app-developer/1006196584', '117475ea619f632d51006c3daa2e6e47', '45', '3', 'canada', '', '4', '2014-07-24 20:15:00', '2014-07-23', 'http://www.kijiji.ca/v-programmer-computer-jobs/lethbridge/hiring-ios-app-developer/1006196584');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('352', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile APP Development - IOS (Iphone/Ipad), Android, Blackberry', '<pre>                 Im a senior programmer, web developer, systems analyst, software engineer- I have 10+ years experience in IT with deep knowledge and understanding in all emerging web and mobile technology. \r\n \r\nHighly proficient in objective C/ xcode &amp; Java/ Eclipse and all mobile development frameworks, I can provide you with any type mobile application programming and development you need on IOS iPhone iPad, Android, Blackberry, and more.  \r\n \r\nI have worked on over 30 apps in different industries with highly advanced features and functionalities, as well as enterprise level applications for such clients as IBM and CGI with integrated cloud computing technology. \r\n \r\nSolid work and programming, guaranteed the best you will find around here. \r\n \r\nFeel free to contact me for more details and a quote. </pre>', 'http://www.kijiji.ca/v-web-programmeur/ville-de-montreal/mobile-app-development-ios-iphone-ipad-android-blackberry/592851393', '89d845e17d935317c4c1ae8b2a557aa0', '75', '3', 'canada', '', '4', '2014-07-24 20:15:00', '2014-07-23', 'http://www.kijiji.ca/v-web-programmeur/ville-de-montreal/mobile-app-development-ios-iphone-ipad-android-blackberry/592851393');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('353', '1', '0', '0000-00-00 00:00:00', '0', 'Programmeur application mobile', '<pre>                 Nous cherchons un programmeur pour applicaiton mobile pur un projet dans l\'imm&eacute;diat. Notre priorit&eacute; va vers quelqu\'un qui cherche le d&eacute;fi et tr&egrave;s cr&eacute;atif, avec une bonne exp&eacute;rience en programmation bien entendu, m&ecirc;me si elle n\'est pas professionnelle.  \r\n \r\nPour plus de d&eacute;tail, n\'h&eacute;sitez pas &agrave; me contacter </pre>', 'http://www.kijiji.ca/v-web-programmeur/ville-de-montreal/programmeur-application-mobile/1006066711', 'c4d1b40f7b6ba0c535dda5254cfbe25b', '30', '3', 'canada', '', '4', '2014-07-24 20:15:00', '2014-07-22', 'http://www.kijiji.ca/v-web-programmeur/ville-de-montreal/programmeur-application-mobile/1006066711');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('354', '1', '0', '0000-00-00 00:00:00', '0', 'Video Game Tester Wanted!', '<pre>                 Do you live to play video games? Are you driven to create incredibly fun and socially connected mobile games? Do you eat, sleep and dream of testing games? \r\n \r\nBeeline Interactive Inc. (previously known as Capcom Interactive, Inc.) is looking for a Contract Quality Assurance Technician to join our Toronto studio (R427/Burnamthorpe). We are known for publishing highly successful titles such as Smurf\'s Village, Zombie Cafe and Ghostbusters on Apple\'s iOS and Android platforms. You will work in an incredible team that has a passion for creative and leading edge titles, a strong team culture and a deep commitment to timely delivery and quality. \r\n \r\nThis Contract QA Technician is responsible for ensuring our games meet high quality standards before they are launched. They will execute on test plans across multiple titles, analyzing results, and relaying the project status. They will also play a role in assisting customer support. \r\n \r\nIn this role, you will: \r\n \r\nTest games according to test plans for correct functionality and assess their usability \r\nDive deep in game play testing and champion the voice of our community. \r\nProduce test results, file bugs and relay issues to your QA project lead/QA Manager. \r\n \r\n \r\n \r\nThe ideal candidate will have: \r\n \r\nA passion for creating great games and getting results through the QA/development process. \r\nPrevious experience shipping mobile, PC or console game titles -- at least one full-life cycle release in your experience. \r\nProven ability to find defects across a spectrum of technologies and user experiences. \r\nA keen eye for identifying issues, extreme attention to detail for finding and reproducing software bugs. \r\n \r\n \r\n \r\nSpecial consideration for candidates with: \r\n \r\nVideo Game QA experience \r\nMobile industry experience \r\n \r\nPlease Note: \r\nThis is a full time, contract, entry level position \r\nOnly applications with a full cover letter and resume will be considered \r\nPhone calls about this position will not be accepted </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/video-game-tester-wanted/1006057166', '81d3f5f56e648d80d1406de339da1224', '81', '3', 'canada', '', '4', '2014-07-24 20:15:00', '2014-07-22', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/video-game-tester-wanted/1006057166');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('355', '1', '0', '0000-00-00 00:00:00', '0', 'Network Adminstrator', '<pre>                 Responsibilities:  \r\n•	Manage IT infrastructure including servers, desktops, software, printers, network, mobile devices, etc. \r\n•	Support all users across all location including account creation, email management, network security, internet access restrictions, etc. \r\n•	Develop and document all IT processes and systems \r\n•	Maintain an inventory of all hardware and software, including licenses \r\n•	Recommend enhancements to the infrastructure and handle all vendor service agreements \r\n•	Programming small web/mobile apps \r\n \r\nThis is a permanant full-time position.  Please apply today in confidence with copy of resume \r\n \r\nCompensation: $48-$60k </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/network-adminstrator/1006049824', '95dd61a1338e317fe650fcecc2c7a516', '61', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-22', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/network-adminstrator/1006049824');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('356', '1', '0', '0000-00-00 00:00:00', '0', 'Network Admin / Assistant Developer', '<pre>                 Responsibilities:  \r\n•	Manage IT infrastructure including servers, desktops, software, printers, network, mobile devices, etc. \r\n•	Support all users across all location including account creation, email management, network security, internet access restrictions, etc. \r\n•	Develop and document all IT processes and systems \r\n•	Maintain an inventory of all hardware and software, including licenses \r\n•	Recommend enhancements to the infrastructure and handle all vendor service agreements \r\n•	Programming small web/mobile apps \r\n \r\nExperience with: \r\n•	Windows Server environments (2003 – 2012) including AD and group policy. \r\n•	Windows XP - 8 \r\n•	Exchange Server, IIS, VMWare, MSSQL Servers \r\n•	Server backup/recovery solutions \r\n•	Server migration, P2P &amp; P2V \r\n•	Blackberry, Android, &amp; iOS devices \r\n•	HTML5, Javascript, SQL, .NET, PHP/ASP, etc. </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/network-admin-assistant-developer/1006049469', '86e3eba7aa980516fc66460408b6c519', '54', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-22', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/network-admin-assistant-developer/1006049469');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('357', '1', '0', '0000-00-00 00:00:00', '0', 'App Developer Available', '<pre>                 If you have an idea about a entertainment, social, educational or business application than I am probably the guy you\'re looking for. With my knowledge and skills in developing mobile application I can create exactly what your require. I developed several apps both on iOS and Android platform for clients across Canada. So please contact me at (647) 895-3832 or reply to this ad to discuss about your app. \r\n \r\nPlease view examples of mobile application I created at devdec.ca/work. The last app I created is a game called &quot;The Goal Line.&quot; </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/mississauga-peel-region/app-developer-available/1005829568', '94f743f39ee1dbafe74da6fbe042c53b', '26', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-21', 'http://www.kijiji.ca/v-programmer-computer-jobs/mississauga-peel-region/app-developer-available/1005829568');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('358', '1', '0', '0000-00-00 00:00:00', '0', 'INTERMEDIATE JAVA DEVELOPER -Mobile Knowledge', '<pre>                 INTERMEDIATE JAVA DEVELOPER  \r\nMobile Knowledge Systems Inc. is looking for a talented software developer to join our team in Ottawa for the development and support of our cloud-based passenger transportation dispatch and back-office systems. You will be working alongside an experienced team of developers as we continue to lead the way in the transportation market. As a developer at Mobile Knowledge, you will have the opportunity to contribute to the entire software development life cycle of our products.  \r\nDuties:  \r\nWork with the development team and other corporate team members to obtain software requirements, define quality design specifications based on these requirements, implement and test the proposed design. Investigate and resolve technical issues reported from our customers. The candidate will be responsible for participating in these cross-functional investigations to bring field issues to resolution. Adhere to corporate technical standards and processes.  \r\nRequirements:  \r\n• 3-5 years experience developing Java applications in a Linux environment  \r\n• Experience delivering services in a cloud-based solutions (use of JMS and other tools)  \r\n• Relational Database (MySQL) application development  \r\n• Delivering web-based solutions using web protocols and web scripting languages (including web sockets, SOAP, JSON, XML)  \r\n• Experience with C/C++, Python  \r\n• Must have the ability to multi-task and work in a team environment  \r\n• Must be able to manage workload independently  \r\n• Demonstrate excellent communication skills (both verbal and written)  \r\n• Knowledge of networking (TCP/IP, UDP, HTTP)  \r\n• Experience with software management and deployment tools (Git, Jenkins)  \r\n \r\nEducation  \r\n• Bachelor’s in a Computer </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/ottawa/intermediate-java-developer-mobile-knowledge/1005768898', 'fff440cbf59c3026e80d4c2e3dae218f', '30', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-21', 'http://www.kijiji.ca/v-programmer-computer-jobs/ottawa/intermediate-java-developer-mobile-knowledge/1005768898');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('359', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Support Specialist', '<pre>                 CrowdCare is a well-funded technology startup based in Richmond Hill. We have built the next generation of tech support tools to serve billions of customers and provide quick, convenient answers to their technical questions and you can check our Android application on Google Play Store: https://play.google.com/store/apps/details?id=com.crowdcare.agent.wysdom \r\n \r\nWe are looking for a Mobile Support Specialist to join our exciting start up company. We need individuals who have strong troubleshooting skills and consider themselves an advanced user when it comes to Android and iOS. The candidate should have an in-depth knowledge in Android OS and be a regular member of XDA community and also has a good knowledge of iOS. \r\n \r\nIf the above description is you, please submit your resume with a quick statement outlining your relevant experiences with the above requirements. \r\n \r\nEssential Qualifications: \r\n \r\n    Up-to-Date and In-depth knowledge of Android and iOS. \r\n    Experience with rooting, flashing, and recovering devices and finding solutions to Android problems. \r\n    Excellent written and oral communication skills. Strong fluency in English is key. \r\n    Experience with other mobile operating systems such as Windows Phone and Blackberry is an asset. \r\n    Well developed problem solving and priority management skills \r\n    Demonstrated positive interpersonal skills \r\n    Exceptional attention to detail \r\n    Passionate about mobile devices and technology \r\n    A team player with the ability to work under tight deadlines in a fast-paced environment \r\n \r\nUnique Perks: \r\n \r\n    An opportunity to work on a world-changing product with a passionate and experienced founding team \r\n    Exciting and fun start-up company environment with opportunity to learn from everyone \r\n    Access to nearly all newly released Android devices \r\n    Company sponsored lunch every Friday for all employees \r\n    Comprehensive Medical and Dental Plans </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/markham-york-region/mobile-support-specialist/1005691807', 'd273199650aa7d6600751f7718fa848d', '0', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-21', 'http://www.kijiji.ca/v-programmer-computer-jobs/markham-york-region/mobile-support-specialist/1005691807');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('360', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Data Solutions - Senior Support Technician', '<pre>                 Interact with customers to provide and process information in response to orders, inquiries, concerns and requests  \r\n \r\nMain Job Tasks and Responsibilities \r\n \r\n-Assist clients and end users over the telephone using predefined procedures. \r\n-Initial Device configuration and setup \r\n-Answer basic how to questions: ie. Device orientation \r\n-Troubleshoot Basic issues with functionality of devices in the field. \r\n-Follow a set schedule for appointments and maintain timelines for productivity \r\n-Log all work and activity in MDS ticketing system.  Keeping a record of calls, resolutions and actions taken. \r\n-Continual learning as devices and technology changes \r\n-Deliver rush orders to clients and setup devices onsite. \r\n-Assist in daily order configuration and shipping. \r\n-Gather information and escalate tickets to senior technicians when required. \r\n-Contact Client’s Telco’s to make required changes to accounts as needed. \r\n-Follow up on tickets previously worked on for resolution confirmation. \r\n \r\nSenior Responsibilities \r\n \r\n-Deep familiarity with all junior tasks \r\n-Solid understanding of underlying principles that operate mobile devices and their communications. \r\n-Ability to research issues that fall outside the realm of common issues and arrive at a workable solution. \r\n-Ability and willingness to assist junior technicians in training and with troubleshooting issues. \r\n-Ability to research and report on new devices or technologies and their impact to the Client, end users \r\n \r\nEducation and Experience \r\n \r\n-High school diploma, general education degree or equivalent \r\n-Knowledge of customer service principles and practices \r\n-Knowledge of relevant computer applications \r\n-Ability to type \r\n-Knowledge of administrative procedures \r\n-Numeric, oral and written language applications \r\n \r\nKey Competencies \r\n \r\n-Interpersonal skills \r\n-Communication skills - verbal and written \r\n-Listening skills \r\n-Problem analysis and problem-solving \r\n-Attention to detail and accuracy \r\n-Data collection and ordering \r\n-Customer service orientation \r\n-Adaptability \r\n-Initiative \r\n-Stress tolerance \r\n-Punctual and committed to work schedules </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/edmonton/mobile-data-solutions-senior-support-technician/1005290116', '42e768092e4e25dedf14cba5856b174f', '79', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-20', 'http://www.kijiji.ca/v-programmer-computer-jobs/edmonton/mobile-data-solutions-senior-support-technician/1005290116');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('361', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Data Solutions - Junior Support Technician', '<pre>                 Interact with customers to provide and process information in response to orders, inquiries, concerns and requests  \r\n \r\nMain Job Tasks and Responsibilities \r\n \r\n-Assist clients and end users over the telephone using predefined procedures. \r\n-Initial Device configuration and setup \r\n-Answer basic how to questions: ie. Device orientation \r\n-Troubleshoot Basic issues with functionality of devices in the field. \r\n-Follow a set schedule for appointments and maintain timelines for productivity \r\n-Log all work and activity in MDS ticketing system.  Keeping a record of calls, resolutions and actions taken. \r\n-Continual learning as devices and technology changes \r\n-Deliver rush orders to clients and setup devices onsite. \r\n-Assist in daily order configuration and shipping. \r\n-Gather information and escalate tickets to senior technicians when required. \r\n-Contact Client’s Telco’s to make required changes to accounts as needed. \r\n-Follow up on tickets previously worked on for resolution confirmation. \r\n \r\nEducation and Experience \r\n \r\n-High school diploma, general education degree or equivalent \r\n-Knowledge of customer service principles and practices \r\n-Knowledge of relevant computer applications \r\n-Ability to type \r\n-Knowledge of administrative procedures \r\n-Numeric, oral and written language applications \r\n \r\nKey Competencies \r\n \r\n-Interpersonal skills \r\n-Communication skills - verbal and written \r\n-Listening skills \r\n-Problem analysis and problem-solving \r\n-Attention to detail and accuracy \r\n-Data collection and ordering \r\n-Customer service orientation \r\n-Adaptability \r\n-Initiative \r\n-Stress tolerance \r\n-Punctual and committed to work schedules </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/edmonton/mobile-data-solutions-junior-support-technician/1005289095', '4a20fd61d8115717aa1a3a2bfa8d44fa', '103', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-20', 'http://www.kijiji.ca/v-programmer-computer-jobs/edmonton/mobile-data-solutions-junior-support-technician/1005289095');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('362', '1', '0', '0000-00-00 00:00:00', '0', 'GPS/Proximity Mobile App Developer', '<pre>                 Looking for an experienced App Designer to build the next big thing and think not in terms of Angry Birds or Farmville, but Facebook and Twitter, might turn out even bigger  \r\n \r\nSomebody who is familiar with GPS/location based apps and know how to build filters and utilize information from multiple sources, think in terabytes  \r\n \r\nImagine Meetups, Kijiji and eharmony and much more combined in a GPS based up that help users to find activity partners and best product/service deals based on user personal information plus product/service/price/address related information of 3rd party providers and proximity  \r\n \r\nTo give an example; Let\'s say you are into rock bands, like to go out on Fridays and Saturdays to listen live music, but don\'t want to pay any surcharge and want a show that start before 8pm and also looking for a place you can dine at the same time for $40 or less  \r\n \r\nAfter you enter your preferences for music &amp; establishment type, show time and price range. This app should alert you to both potential venues and other close by users with a similar interest (who wants to do the same thing, the same time) based on just your proximity. (you should be able to set allowed distance)  \r\n \r\nFor the first part the app will use business info available online and for 2nd part info input by other app users  \r\n \r\nAnd here is final advantage of this app; you are not only helping singles to find love based on proximity (Tinder already offers that), but based on their personal info and address input, you are also able to identify the neighborhoods in city with most singles or with most people who want to listen rock music or eat sushi and use that info as a marketing tool for 3rd party advertisers  \r\n \r\nI already have most of the product design mapped out; including menus and filters, but need a programmer who can turn it into reality, preferably somebody who is willing to do it for a share of the potential profit, but if necessary I am prepared to pay a small compensation, just be prepared this is a rather ambitious project and work might take at least few months  \r\n \r\nThis is the opportunity and challenge, I think it might be one of a lifetime, let me know if you are up to </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/vancouver/gps-proximity-mobile-app-developer/1005460585', '5145a31217f19e85955d090793a7782d', '9', '3', 'canada', '', '3', '2014-07-24 20:15:00', '2014-07-19', 'http://www.kijiji.ca/v-programmer-computer-jobs/vancouver/gps-proximity-mobile-app-developer/1005460585');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('363', '1', '0', '0000-00-00 00:00:00', '0', 'Développeur Mobile (iOS/Android) - Alteo Recrutement Informatique -  Montréal, QC', '<pre>Alteo est à la recherche d\'un Développeur Mobile (iOS/Android) pour un emploi permanent basé à Montréal. \r\n\r\n Notre client, une petite entreprise bien établie développant des solutions technologiques d\'avant garde en mode SaaS, est en forte croissance. La compagnie offre de belles conditions d\'emploi dans un environnement de type start up. Vous travaillerez en mode Agile au sein d\'une équipe dynamique dédiée à faire du développement logiciel de qualité. \r\n\r\n Responsabilités:\r\n  Développement d\'applications mobile natives (Android et iOS)  Exigences du poste \r\n DEC / BAC en TI, génie logiciel ou l\'équivalent 2+ années d\'expérience en développement d\'applications mobile Maitrise l\'une des 2 plateformes iOS ou Android et connaissances de base dans l\'autre Bonnes capacités pour le développement d\'interfaces usager Bonnes connaissances des bases de données relationnelles Bonnes connaissances des Web Services Idéalement bilingue (maîtrise du Français ou Anglais, fonctionnel dans l\'autre langue)  Type de poste \r\nEmploi Permanent - Temps plein \r\n\r\n Lieu de travail \r\nMontréal \r\n\r\n Date \r\n7/21/2014 \r\n\r\n Salaire \r\nSelon l\'expérience \r\n\r\n Numéro du poste \r\n1065      </pre>', 'http://www.indeed.ca/job/D%C3%A9veloppeur-Mobile-at-Alteo-Recrutement-Informatique-in-Montr%C3%A9al,-QC-ab86121772af8b6d', '2ab7a25093cf18d77d459741bcb26fb9', '0', '2', 'canada', '', '3', '2014-07-24 21:07:34', '2014-07-24', 'aecc03ca66bc412004c2cbe20566993b');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('364', '1', '0', '0000-00-00 00:00:00', '0', 'Représentant, Rogers concessionnaire autorisé - Rogers - Destination Mobile -  Saint-Eustache, QC', 'Chez Destination Mobile, nous sommes toujours à la recherche de personnes qui aiment l’industrie des ventes au détail, la compétition et la performance. Des... <br/>\n            From Jobillico - 24 Jul 2014 17:57:40 GMT\n            -  View all <a href=\"http://www.indeed.ca/jobs?l=Saint-Eustache,+QC\">Saint-Eustache jobs</a>', 'http://www.indeed.ca/viewjob?t=Repr%C3%A9sentant&amp;c=Rogers&amp;l=Saint-Eustache,+QC&amp;jk=733dc5c05cb983a3', '5edf1de3aeb674a9173dfed04fb03948', '0', '2', 'canada', '', '3', '2014-07-24 21:07:34', '2014-07-24', '1a6cf400ef9509b9e72a968ba70d2843');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('365', '1', '0', '0000-00-00 00:00:00', '0', 'GPS/Proximity Mobile App Developer', '<pre>                 Looking for an experienced App Designer to build the next big thing and think not in terms of Angry Birds or Farmville, but Facebook and Twitter, might turn out even bigger  \r\n \r\nSomebody who is familiar with GPS/location based apps and know how to build filters and utilize information from multiple sources, think in terabytes  \r\n \r\nImagine Meetups, Kijiji and eharmony and much more combined in a GPS based up that help users to find activity partners and best product/service deals based on user personal information plus product/service/price/address related information of 3rd party providers and proximity  \r\n \r\nTo give an example; Let\'s say you are into rock bands, like to go out on Fridays and Saturdays to listen live music, but don\'t want to pay any surcharge and want a show that start before 8pm and also looking for a place you can dine at the same time for $40 or less  \r\n \r\nAfter you enter your preferences for music &amp; establishment type, show time and price range. This app should alert you to both potential venues and other close by users with a similar interest (who wants to do the same thing, the same time) based on just your proximity. (you should be able to set allowed distance)  \r\n \r\nFor the first part the app will use business info available online and for 2nd part info input by other app users  \r\n \r\nAnd here is final advantage of this app; you are not only helping singles to find love based on proximity (Tinder already offers that), but based on their personal info and address input, you are also able to identify the neighborhoods in city with most singles or with most people who want to listen rock music or eat sushi and use that info as a marketing tool for 3rd party advertisers  \r\n \r\nI already have most of the product design mapped out; including menus and filters, but need a programmer who can turn it into reality, preferably somebody who is willing to do it for a share of the potential profit, but if necessary I am prepared to pay a small compensation, just be prepared this is a rather ambitious project and work might take at least few months  \r\n \r\nThis is the opportunity and challenge, I think it might be one of a lifetime, let me know if you are up to </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/gps-proximity-mobile-app-developer/1005457602', '95232026678b07b988e1a9840b527770', '28', '3', 'canada', '', '3', '2014-07-24 21:08:38', '2014-07-19', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/gps-proximity-mobile-app-developer/1005457602');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('366', '1', '0', '0000-00-00 00:00:00', '0', 'Innovations for Poverty Action: Website Overhaul FAQs', 'This is a list of  FAQs we have been receiving from   We will not be taking any calls at this point so please refer to these FAQs to answer any ********* you may have. \n\nThank you\n\nInnovations for Poverty Action\n        (Connecticut, United States)', 'http://www.rfpdb.com/view/document/name/Innovations-for-Poverty-Action%3A-Website-Overhaul-FAQs', 'bbb87ebbcb3108d1238b315e5b46c320', '0', '1', 'canada', '', '3', '2014-07-25 07:28:49', '2014-07-24', 'http://www.rfpdb.com/view/document/name/Innovations-for-Poverty-Action%3A-Website-Overhaul-FAQs');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('367', '1', '0', '0000-00-00 00:00:00', '0', 'Editor, Project Blue', 'Request for Proposals\n\nEditor, Project   is the largest ************* advocacy group working solely to protect the world\'s oceans. Oceana wins policy ********* for the oceans using   campaigns. Since 2001, we have   over 1.2 million square miles of o...\n        (United States)', 'http://www.rfpdb.com/view/document/name/Editor,-Project-Blue(1)', 'c93ae5ce2677e36d238189747630f947', '0', '1', 'canada', '', '3', '2014-07-25 07:28:49', '2014-07-24', 'http://www.rfpdb.com/view/document/name/Editor%2C-Project-Blue%281%29');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('368', '1', '0', '0000-00-00 00:00:00', '0', 'développeur Mobile IOS/Android - Randstad -  Montréal, QC', '<pre>Le développeur Mobile IOS/Android sélectionné devra avoir un profil répondant le plus possible aux exigences suivantes : \r\n Dans le cadre de ce projet, le développeur devra :  o Effectuer la programmation d’applications; \r\no Veiller à l’uniformité visuelle des différentes interfaces et à l’ergonomie pour les différents types d’appareils mobiles; \r\no Tester le bon fonctionnement sur les différents types d’appareils mobiles; \r\no Effectuer les tests unitaires; \r\no Veiller au maintien de l’intégrité des données, modifier et/ou créer les bases de données; \r\no Bonnes connaissances des outils de graphisme (tel que Adobe Photoshop); o Cerner et communiquer les problèmes techniques, procédures et solutions; \r\no Prêter assistance dans le développement des interfaces et effectuer un transfert de connaissance à l’équipe interne. \r\n Le développeur devra également :  o Faire preuve de dynamisme et d’autonomie; \r\no Démontrer des capacités d’organisation; \r\no Être minutieux et attentif dans l’exécution de son travail; \r\no Avoir une habileté pour le travail d’équipe et être en mesure de répondre aux situations urgentes. \r\n Finalement, avoir le profil académique, l’expérience et les connaissances suivantes :  o Cinq (5) années d’expérience pertinentes; \r\no Avoir les connaissances techniques suivantes : IOS, Objective C, XCODE; \r\nJava, API Android; \r\nJavaScript, Node.js; \r\nNative JavaScript \r\nMicrosoft SQL Serveur, MongoDB; \r\nServeur Linux et Windows; \r\nBonnes connaissances dans les principes de développement d’applications mobiles et web; \r\nConnaissance du format et de la structure de donnée GTFS.      </pre>', 'http://www.indeed.ca/job/D%C3%A9veloppeur-Mobile-Ios-Android-at-Randstad-in-Montr%C3%A9al,-QC-0738ea9a4f6915b7', 'c61e275539b501a3d75535be559529d7', '0', '2', 'canada', '', '3', '2014-07-25 07:28:50', '2014-07-24', '322b5a4fa8f78a0e65d13ec2e6d7745b');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('369', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Developer (full-time)', '<pre>                 Title: Mobile Developer (full-time) \r\nLocation: Toronto downtown (Queen &amp; Spadina area) \r\nHow to apply: Include resume as MS Word attachment \r\nDuration: Permanent \r\nCompensation: $70,000 - $85,000/year + benefits \r\n \r\nMOBILE DEVELOPER \r\n \r\nInterested in changing the world?  \r\n \r\nThen you\'ve come to the right place. Our client’s team of software engineers, Environmental scientists, business developers, project managers, marketing experts, and creative thinkers is dedicated to positively impacting the planet.  \r\n \r\nOur client is seeking a full-time talented and passionate mobile developer to join their team. You will be working on the next generation of social rewards and big data warehousing technology. This particular client\'s head office is in Toronto\'s hippest neighbourhood - not only is the office a great working space and environment, but we are located next to some of the trendiest restaurants, boutiques, and indie coffee shops. Public transit is right at your door, or you can walk, or ride your bike.  \r\n \r\nIf you like smart and trendy design, then you\'ll feel right at home with their modern, sunlit, open-space workplace. \r\n \r\nREQUIREMENTS &amp; QUALIFICATIONS: \r\n•	ABSOLUTELY MUST HAVE: 2 or more years of continuous experience either/or both Android and iOS development skills \r\n•	Apps available in the apple or Google play store  \r\n•	Extensive experience with RESTful API\'s \r\n•	Solid understanding of Android SDK, IDEs, and best practices \r\n•	Solid understanding of Objective-C, Swift, or other iOS apple development best practices \r\n•	Competent interpersonal skills \r\n•	Must be a self-starter, good problem solver, know when to seek help, creative &amp; an outside of the box thinker  \r\n \r\nNICE TO HAVE SKILLS: \r\n•	Github OR Stackoverflow presence  \r\n•	BS OR MS in Computer Science  \r\n•	Aptitudes in working with highly skilled individuals in a team environment \r\n•	Strong Communicator (Both verbal and written) </pre>', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/mobile-developer-full-time/1006625277', '6fd8922349c795dffb075016bbdfca04', '11', '3', 'canada', '', '3', '2014-07-25 07:28:51', '2014-07-24', 'http://www.kijiji.ca/v-programmer-computer-jobs/city-of-toronto/mobile-developer-full-time/1006625277');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('378', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Application Development - IOS, ANDROID, BLACKBERRY APPS  (Montreal)', '<pre>         I have 10+ years experience in IT, senior programmer, web developer, systems analyst, software engineer- deep knowledge and understanding in all emerging web and mobile technology.\r\n \r\n I have worked on over 30 apps in different industries with highly advanced features and functionalities, as well as enterprise level apps for such clients as IBM and CGI with integrated cloud computing technology.\r\n \r\n Highly proficient in objective C/ xcode & Java/ Eclipse and all mobile development frameworks, I can provide you with any type mobile APP programming and development you need on IOS iPhone iPad, Android, Blackberry, and more. Solid work and programming, guaranteed the best you will find around here.\r\n \r\n Feel free to contact me for more details and a quote.      </pre>', 'http://montreal.fr.craigslist.ca/sof/4582612676.html', '7f25589e764015e5df0ff489d03dd112', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-23', 'http://montreal.fr.craigslist.ca/sof/4582612676.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('379', '1', '0', '0000-00-00 00:00:00', '0', 'Senior Front End Developer -Bilingual (Montreal)', '<pre>         Front end developer (Bilingual)\r\n Long term Contract:\r\n Need to send a link to personal portfolio web project\r\n  \r\n What will you do?\r\n ·         Create and optimize user interfaces code (Object-Oriented Javascript, JQuery, HTML/CSS Integration, etc.).\r\n ·         Integrate functional features in existing codebase by working closely with developers and designers.\r\n ·         Optimize page load time and overall performance analysis.\r\n ·         Ensure cross browser compatibility.\r\n What we\'re looking for?\r\n ·         Minimum of 5 years of related work experience.\r\n ·         Attention to details.\r\n ·         Autonomous and creative.\r\n ·         Ability to work effectively under tight deadlines.\r\n ·         Ability to manage multiple projects simultaneously.\r\n ·         Always on the lookout for emerging technologies and deep interest for the Web.\r\n ·         Very good knowledge of Web accessibility standards and W3C recommendations.\r\n ·         Knowledge of responsive designs and mobile friendly Websites.\r\n ·         Experience with high volume consumer facing web or mobile properties an asset.\r\n ·         Excellent verbal and written communications skills.\r\n ·         Written and oral proficiency in French and English.\r\n Technical competencies:\r\n ·         Extensive experience with JavaScript (jQuery, AJAX), Object-Oriented Programming, XML, HTML/5 and CSS/3.\r\n ·         Advanced knowledge of cross-browser compatibility.\r\n ·         Good knowledge of responsive layouts.\r\n ·         Knowledge of Apache, Tomcat.\r\n \r\n Note: WE are looking for the best of the best--with lots of experience. \r\n Please send your detailed CV plus rate range along with a link to your work for immediate consideration.     </pre>', 'http://montreal.fr.craigslist.ca/sof/4572564814.html', '356457b99a0a3507ad719f47150c42b1', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-22', 'http://montreal.fr.craigslist.ca/sof/4572564814.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('380', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile APP Development - IOS (Iphone/Ipad), Android, Blackberry  (Montreal)', '<pre>         Im a senior programmer, web developer, systems analyst, software engineer- I have 10+ years experience in IT with deep knowledge and understanding in all emerging web and mobile technology.\r\n \r\n I have worked on over 30 apps in different industries with highly advanced features and functionalities, as well as enterprise level applications for such clients as IBM and CGI with integrated cloud computing technology.\r\n \r\n Highly proficient in objective C/ xcode & Java/ Eclipse and all mobile development frameworks, I can provide you with any type mobile application programming and development you need on IOS iPhone iPad, Android, Blackberry, and more. Solid work and programming, guaranteed the best you will find around here.\r\n \r\n Feel free to contact me for more details and a quote.      </pre>', 'http://montreal.fr.craigslist.ca/sof/4524106613.html', 'e1c9096bb2079782b20ff2f2487e8a21', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-17', 'http://montreal.fr.craigslist.ca/sof/4524106613.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('381', '1', '0', '0000-00-00 00:00:00', '0', 'I\'m a System/Web Developer (HTML5, JS, CSS, PHP, C#) - Contract (Montreal)', '<pre>         Hello! I\'m offering my services as a Developer (front and back-end). I\'ve more than 15 years of experience using different languages/tools. I have a Bachelor\'s Degree in the field and many different certifications. I work as a full time developer. So I\'m offering my service in a contract/project basis. Do you need a specific work to be done? Maybe a hand to finish a project? Need a site? I can help you!\r\n \r\n **JE PARLE FRANCAIS!!**\r\n \r\n Some of my main skills:\r\n \r\n * HTML 5/XHTML, CSS, JavaScript, JQuery, SEO, TypeScript\r\n * Canvas, Web Workers, SignalR, Web Sockets, Node\r\n * Sql Server, MySQL, Oracle\r\n * .NET, C#, VB.NET, WCF, WPF, MVC, ASP.NET\r\n * Wordpress and plugin developement\r\n * + 15 years of experience\r\n * Microsoft Certified Professional\r\n * Web, Windows (desktop) and mobile (win phone)\r\n \r\n I can help you:\r\n \r\n * Create a website or a blog (Wordpress or HTML5/JS)\r\n * Install, customize and/or create plugins for Wordpress\r\n * Optimize your site\r\n * Code anything in C#/.NET. \r\n * Code any back-end, mainly a real-time one with Web Sockets support.\r\n * Need desktop app (WPF)?\r\n \r\n To be clear, I\'m *NOT*:\r\n \r\n * A web designer. I know the basics, I can use image software like Photoshop and I can create logos and graphics in general if needed. But don\'t expect GREAT results! I\'m simply not a graphics guy! :)\r\n * A PHP pro. Sure I can code in PHP and I\'ve already worked with PHP. But it\'s not my strongest focus.\r\n \r\n I\'M REALLY LOOKING FOR CONTRACT JOBS AND/OR PROJECTS WITH *FLEXIBLE* HOURS. HOPE TO HELP YOU WITH YOUR PROJECT!!\r\n \r\n Thank you for your time! MERCI!     </pre>', 'http://montreal.fr.craigslist.ca/sof/4561608669.html', '15fea0e4cd11ce189370df30e9c0dd6a', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-10', 'http://montreal.fr.craigslist.ca/sof/4561608669.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('382', '1', '0', '0000-00-00 00:00:00', '0', 'QA Analyst / Analyste, Assurance Qualité (Montreal, QC)', '<pre>         QA Analyst (SharePoint and WEB) \r\n \r\n We are currently looking for a QA Analyst for our client\'s SharePoint and Web platforms. \r\n \r\n We are looking for someone for the following: \r\n • Develops and maintains scenarios, test plans and scripts for manual and automated testing for \r\n operational systems (Web, SharePoint); \r\n • Perform regression testing, functional testing, integration testing, performance testing; \r\n • Document best practices and quality assurance procedures; \r\n • Maintains a discrepancy log in monitors, determines priorities and severities, in addition to producing regular articles; \r\n • Accompanies business resources in the development, execution, reporting of acceptance tests; \r\n • May be required to participate in the revised code. \r\n \r\n The requirements include: \r\n \r\n • Knowledge of SharePoint 2010 and SharePoint 2013 \r\n • Knowledge of web and mobile environments \r\n • Knowledge of Test Manager \r\n • Knowledge of TFS \r\n • Knowledge of FootPrints an asset \r\n • Knowledge of Microsoft (SQL Server, SSIS, SSAS, SSRS, etc ...) environment an asset \r\n • The \"best practices\" in quality assurance \r\n • Be recognized as a good communicator; \r\n • Autonomous, team player, collaborative spirit demonstrated good analytical and synthetic, attention to detail; \r\n • Excellent French and English spoken and written. \r\n \r\n Start date and duration of the contract: \r\n • We seek to integrate the resource as soon as possible; \r\n • It is a mandate for a period of six months with a strong possibility of renewal.\r\n  \r\n We are only considering qualified bilingual (French/English) local greater Montreal area candidates\r\n  \r\n Analyste, Assurance Qualité (SharePoint et WEB) \r\n \r\n Nous sommes présentement à la recherche d\'une ressource pour un mandat en assurance qualité pour les plateformes SharePoint et Web de notre client.\r\n  \r\n Nous recherchons quelqu\'un qui aura les tâches suivantes : \r\n • Développe and maintient les scénarios, les plans de test et les scripts de test manuels ou automatisés pour les systèmes opérationnels (Web, SharePoint);\r\n • Exécute les tests de régression, les tests fonctionnels, les tests d\'intégration, les tests de performance;\r\n • Documente les pratiques et les procédures d\'assurance qualité;\r\n • Maintient un registre des anomalies, en fait le suivi, en détermine les priorités et les sévérités, en plus d\'en produire des statuts réguliers;\r\n • Accompagne les ressources affaires dans le développement, l\'exécution, le reporting des tests d\'acceptation;\r\n • Pourrait être appelé à participer dans les revus de code.\r\n  \r\n Les exigences incluent :\r\n  \r\n • Connaissance de SharePoint 2010 et SharePoint 2013\r\n • Connaissance des environnements web et mobile\r\n • Connaissances de Test Manager \r\n • Connaissances de TFS\r\n • Connaissance de FootPrints un atout\r\n • Connaissance de l\'environnement Microsoft (SQL Server, SSIS, SSAS, SSRS, etc. . .) un atout\r\n • Les « best practices » en assurance qualité\r\n • Être reconnu comme bon communicateur;\r\n • Autonome, joueur d\'équipe, esprit collaboratif démontré, bon esprit analytique et de synthèse, souci du détail et rigueur;\r\n • Excellent français et anglais parlé et écrit.\r\n  \r\n Date de début et durée du contrat :\r\n • Nous cherchons à intégrer la ressources dès que possible;\r\n • Il s\'agit d\'un mandat d\'une durée de 6 mois avec une forte possibilité de renouvellement.\r\n      </pre>', 'http://montreal.fr.craigslist.ca/sof/4557252448.html', '87e67fb25eb450164518cb1fc6765f9b', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-07', 'http://montreal.fr.craigslist.ca/sof/4557252448.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('383', '1', '0', '0000-00-00 00:00:00', '0', 'Senior UI Software Engineer(Contract or Permanent full-time) (Montreal)', '<pre>         User Interface Engineer\r\n Client  is looking for a Front-End Web Developer with design sense and basic Photoshop skills. We\r\n are looking for someone to help with building web applications for mobile and desktop devices.\r\n Job Description\r\n Status: Full-time or Contractor\r\n Location: Montreal, QC, Canada\r\n Requirements\r\n • 5+ years of XHTML, CSS and JavaScript or equivalent\r\n • Extensive knowledge of WebKit-specific CSS\r\n • Understanding of HTML5 and CCS3 specifications\r\n • Experience with jQuery, Prototype, or other framework (jQuery preferred)\r\n • Intimate knowledge of current web standards\r\n • Insight on creating quality user experiences\r\n • Familiar with creating production graphics from Adobe Photoshop files\r\n • Outstanding communication skills\r\n • Understanding of modern web technologies\r\n • Understanding of object-oriented code design patterns\r\n Ideal candidates will have\r\n • Experience with cross-browser JavaScripting techniques\r\n • Experience creating mobile websites\r\n • Experience writing stand-alone JavaScript - Without existing libraries\r\n • Familiarity with Eclipse IDE and JSP\r\n • Visual design skills\r\n • Interaction design skills\r\n • Experience with SVN or Git\r\n • Technical writing skills\r\n Experience with major clients\r\n must be Canadian citizen or permanent resident of Canada\r\n send detailed CV plus rate or base salary requirements for immediate consideration.\r\n      </pre>', 'http://montreal.fr.craigslist.ca/sof/4513710705.html', '0684d03875133cc42199ee9f2bfab930', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-03', 'http://montreal.fr.craigslist.ca/sof/4513710705.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('384', '1', '0', '0000-00-00 00:00:00', '0', 'Web app developer (montreal)', '<pre>         Hi there,\r\n \r\n We are developing a web app and we need someone to code it.\r\n \r\n About you:\r\n \r\n * Experience in mobile html.\r\n * SQL, PHP, Java, Facebook integration.\r\n * iOS development (preferable)\r\n \r\n The design will be provided, we just need the code to be done.\r\n \r\n It is the MVP of a future iOS app, so the work is supposed to be simple. If the work is done properly and you have iOS knowledge we will consider you for the Beta of our app.\r\n \r\n If you are interested please drop me a line and I will give you more details about the project.\r\n \r\n Santiago.     </pre>', 'http://montreal.fr.craigslist.ca/sof/4549720668.html', '2b29d69e37b1d20af53f6e73ce72eb4b', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-07-02', 'http://montreal.fr.craigslist.ca/sof/4549720668.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('385', '1', '0', '0000-00-00 00:00:00', '0', 'Senior salesforce developer (Montreal)', '<pre>         Salesforce Developers\r\n Montreal, QC\r\n Start: ASAP\r\n Length: up to 1 year!\r\n Expenses Paid; Yes\r\n Rate: 80-100 hr or will take full-time permanent (with benefits\r\n Expenses Paid: Yes\r\n Note: may reside outside of Montreal but will work  only 4/days per week onsite \r\n \r\n Development of functionality or plugin within Salesforce CRM;\r\n â€¢Development of interface between IT Systems and salesforce;\r\n â€¢Take charge of workshop with users;\r\n â€¢Documentation.\r\n \r\n \r\n Requis:\r\n â€¢ (5) Five years as IT developer with a minimum of three(3) years as a Salesforce developer in big project /enterprise\r\n â€¢certified developer, certified advanced developer;\r\n â€¢Advanced expertise in salesforce.com, visualforce (ajax, javascript), web service, interfaces, salesforce.com mobile, sales cloud, service cloud;\r\n â€¢Knowledge of IT interfaces\r\n \r\n Send detailed CV plus rate range for immediate consideration      </pre>', 'http://montreal.fr.craigslist.ca/sof/4483546050.html', '6f3fb097abba6c5a81708f09c7287148', '0', '4', 'canada', '', '3', '2014-07-25 07:35:05', '2014-06-21', 'http://montreal.fr.craigslist.ca/sof/4483546050.html');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('510', '1', '0', '0000-00-00 00:00:00', '0', 'Android Educational App | Elance Job', '<pre> Hi \r\n \r\n We are planing to develop Educational Android apps for Kids. \r\n \r\n So we are looking for a company who have Illustration team and Android developer team. \r\n \r\n Please send me your company profile and lets have a online meeting to start work together. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 29d, 23h (Ends Sun, 24 Aug 2014 01:55:14 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 0 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (16 jobs posted, 38% awarded, $$500 - $5K total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Dhaka, Tejgaon, Bangladesh <br />\n    <b>Preferred Job Location:</b> India <br />    <b>Desired Skills:</b> Android  iPhone  iPad <br />\n    <b>Job ID:</b> 59997938 <br/> <br/>\n    <a href=\"https://www.elance.com/j/android-educational-app/59997938/\">View job &raquo;</a>', 'https://www.elance.com/j/android-educational-app/59997938/', '512dc20cd74807d94c3592acaf3e10f1', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/android-educational-app/59997938/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('511', '1', '0', '0000-00-00 00:00:00', '0', 'Weather location program | Elance Job', '<pre> Have a project for an &quot;app&quot; that is not for the App Store. Weather/location app for subscribers that will grab location and strore in the database. A semilar software program idea for parent phone tracking software.\r\n \r\n Had a version of this installed and running but no longer have the computer in which the program was loaded. An advanced version is running on a site now.\r\n \r\n Basically a text would be sent to a phone with opt out and if opt out or in is used the phone gives away phone location. Mostly used with weather pretext.\r\n \r\n I expect a functioning and running program for this set price. Please don\'t make an offer to do this job if you\'re not 100% sure that you can accomplish the task. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $500 - $1,000)<br />\n    <b>Time Left:</b> Ends: 29d, 23h (Ends Sun, 24 Aug 2014 01:46:14 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 0 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , United States <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad <br />\n    <b>Job ID:</b> 59997605 <br/> <br/>\n    <a href=\"https://www.elance.com/j/weather-location-program/59997605/\">View job &raquo;</a>', 'https://www.elance.com/j/weather-location-program/59997605/', 'ef1352f322f8f980471947f8e6237d60', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/weather-location-program/59997605/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('512', '1', '0', '0000-00-00 00:00:00', '0', 'Engineer | Elance Job', '<pre> C,C++,C#.net\r\n RyanPereira.\r\n Phone:+91-22-23876133\r\n Mobile-9969985748\r\n 4,NirmalaMahal,\r\n 12-A,Bomanji Petit Road,\r\n Mumbai-400 026.\r\n Grant Road.\r\n Maharashtra-Asia.\r\n &nbsp;&nbsp;[obscured]&nbsp;&nbsp; \r\n OBJECTIVE Enhance existing skillset.\r\n PROFESSIONAL SKILLS\r\n DDR( Detailed Design Review)\r\n (Systems/Network/Software)\r\n Red Hat linux AS 3.0(text)\r\n BASIC programming-gwbasic,Qbasic\r\n C Herbert Schildt\r\n C++ Balagurusamy,Venugopal,Rajkumar,TRavishankar\r\n TECHNOLOGY\r\n Web site Design:Front Page 2003.\r\n EDUCATION\r\n B.E.,D.D.R.,M.S.,P.H.D.(Computers)-[Victoria Jubilee Technical Institute]australia-(1995-1999)-Term Work 4 year-03-52679[Max New York Life Insurance]\r\n Semester 2-Ramrao Adik Institute of Technology\r\n BharatiVidyapeethCollege of Engineering,mechanical\r\n Mahatma Gandhi Mission\'s College of Engineering,all branches\r\n VJTI Admission-SabooSiddik automobile\r\n Shah &amp; Anchor construction\r\n Fr.AgnelVashi electrical\r\n Test of English Foreign Language (260)\r\n Graduate Record Examination(1760/1840)\r\n Trained at CMS as &quot;TRAINEE CUSTOMER ENGINEER&quot;\r\n Trained at K... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Hourly (Less than $10 / hr)<br />\n    <b>Time Left:</b> Ends: 14d, 23h (Ends Sat, 09 Aug 2014 01:42:11 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 0 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , India <br />\n    <b>Preferred Job Location:</b> India <br />    <b>Desired Skills:</b> Android  iPhone  .NET Framework <br />\n    <b>Job ID:</b> 59995669 <br/> <br/>\n    <a href=\"https://www.elance.com/j/engineer/59995669/\">View job &raquo;</a>', 'https://www.elance.com/j/engineer/59995669/', '81834bc478116ee0e841035dfd362cec', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/engineer/59995669/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('513', '1', '0', '0000-00-00 00:00:00', '0', 'iPhone app upgrade of popular fitness app | Elance Job', '<pre> We require a iOS developer to update an existing exercise application. (&nbsp;&nbsp;[obscured]&nbsp;&nbsp; /nz/app/6-pack-promise-plus/id633815621?mt=8)\r\n \r\n Please sign the NDA attached for more information so you can make an accurate estimate.\r\n \r\n You will be giving a popular ab exercise app a facelift and some new features using an existing codebase. A detailed and precise functional specification has been created for this update.\r\n \r\n The app requires no server component and is designed to work on the device and in airplane mode.\r\n \r\n The app is to be created using all recommend Apple guidelines for app design such as clean code commented and using storyboards / xibs.\r\n \r\n The developer will need to work with our head of product on a daily basis and provide updates via skype.\r\n \r\n The developer / company will be required to sign a NDA and confidentiality agreement before progressing.\r\n \r\n The project is to be fixed price and milestone driven. \r\n \r\n All art assets are complete &amp; a clickable prototype has already been created to m... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 22h (Ends Sat, 09 Aug 2014 00:38:05 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 16 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (2 jobs posted, 50% awarded, $1400 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Wellington, , New Zealand <br />\n        <b>Desired Skills:</b> iPhone  Objective-C  Storyboarding <br />\n    <b>Job ID:</b> 59994681 <br/> <br/>\n    <a href=\"https://www.elance.com/j/iphone-app-upgrade-of-popular-fitness-app/59994681/\">View job &raquo;</a>', 'https://www.elance.com/j/iphone-app-upgrade-of-popular-fitness-app/59994681/', '09ec0c2f68a7c6c70a6a54c490b8578d', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/iphone-app-upgrade-of-popular-fitness-app/59994681/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('514', '1', '0', '0000-00-00 00:00:00', '0', 'fashion based mobile app | Elance Job', '<pre> i am wanting to get a quote for this app.\r\n the core feature is:\r\n if you are unsure if you want to buy an item of clothing, you can scan the barcode, this will send details and a picture of the item instantly to the friends you have on the app requesting them to select \'buy\' \'dont buy\'. they have 3 minutes to vote and the vote gets sent back to the user. The user can then select to buy or leave. If they choose to buy, the app will find the item at its cheapest and you can order it there and then o email the details to yourself for later purchase. We also want to offer \'shop for similar items\' which will link to our partner websites for purchase.\r\n \r\n The core of it s simply a barcode scanner with the additional feature of the Vote.\r\n \r\n thanks for your time \r\n \r\n p.s. I am currently gathering quotes so the price listed here is not accurate and shall be based on the average quote i receive \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $1,000 - $5,000)<br />\n    <b>Time Left:</b> Ends: 14d, 22h (Ends Sat, 09 Aug 2014 00:14:18 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 16 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , Thailand <br />\n        <b>Desired Skills:</b>  <br />\n    <b>Job ID:</b> 59994807 <br/> <br/>\n    <a href=\"https://www.elance.com/j/fashion-based-mobile-app/59994807/\">View job &raquo;</a>', 'https://www.elance.com/j/fashion-based-mobile-app/59994807/', '48263da0a3c361b8bef7d580df48d1c7', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/fashion-based-mobile-app/59994807/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('515', '1', '0', '0000-00-00 00:00:00', '0', 'Phone Call Tracking App | Elance Job', '<pre> I need to create a mobile app to track calls. \r\n \r\n The App will track the duration (minutes) of incoming calls and save it on the app. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ($100 - $400)<br />\n    <b>Time Left:</b> Ends: 14d, 21h (Ends Sat, 09 Aug 2014 00:09:02 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 6 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (9 jobs posted, 56% awarded, $429 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Dayton , Ohio, United States <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad <br />\n    <b>Job ID:</b> 59994677 <br/> <br/>\n    <a href=\"https://www.elance.com/j/phone-call-tracking-app/59994677/\">View job &raquo;</a>', 'https://www.elance.com/j/phone-call-tracking-app/59994677/', '04de4e8f219be9e22beb6054419faac5', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/phone-call-tracking-app/59994677/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('516', '1', '0', '0000-00-00 00:00:00', '0', 'Cross-Platform Mobile App (iOS/Android) with PhoneGap and Ionic | Elance Job', '<pre> I\'m looking for a Silicon Valley-based programmer who\'s experienced and skilled at PhoneGap, CSS and ionic (Angular.js/JavaScript) to develop a cross-platform mobile app. The project requires 20 hours (between 1 to 2 weeks depending on the freelancer\'s availability). I need a local freelancer, who is within 30 miles radius of 94304 (Palo Alto, CA), for easier communication and preferably some face-time when it\'s needed. Prior mobile app development experience is a must.\r\n \r\n This app will use PhoneGap as the wrapper to generate build for iOS and Android, and ionic as the UI framework. The 20 hours in this phase of the project will be spent on generating codes for the frond-end of the mobile app. Gitlab will be used for version control and internal collaboration. If the collaboration with the freelancer goes well in the first phase, I\'d prefer to continue to work with the same person for the second phase, to build the back-end of the app, which will use Python. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Hourly ($40 - $50 / hr)<br />\n    <b>Time Left:</b> Ends: 25d, 16h (Ends Tue, 19 Aug 2014 18:26:16 EDT) <br />\n    <b>Start Date:</b> 25 Jul 2014 <br />\n    <b>Proposals:</b> 5 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 0% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> , , United States <br />\n    <b>Preferred Job Location:</b> United States <br />    <b>Desired Skills:</b> CSS  iOS  PhoneGap  Mobile Development Framework  AngularJS <br />\n    <b>Job ID:</b> 59827339 <br/> <br/>\n    <a href=\"https://www.elance.com/j/cross-platform-mobile-app-ios-android-phonegap-ionic/59827339/\">View job &raquo;</a>', 'https://www.elance.com/j/cross-platform-mobile-app-ios-android-phonegap-ionic/59827339/', '1ea34ec68b4a040499dc1f2d7bdc7a5c', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/cross-platform-mobile-app-ios-android-phonegap-ionic/59827339/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('517', '1', '0', '0000-00-00 00:00:00', '0', 'Develop 3 screen iPad sales App | Elance Job', '<pre> Produce an iPad App with 3 screens. \r\n \r\n Screen 1 – General Dingo introduction Prezi (to be developed for now just use this one &nbsp;&nbsp;[obscured]&nbsp;&nbsp; /-zakrejr2wac/?utm_campaign=share&amp;utm_medium=copy&amp;rc=ex0share) with linked videos (these should be configurable, ie: the Prezi and videos will change from time to time Current videos are on our website &nbsp;&nbsp;[obscured]&nbsp;&nbsp; /solutions/trakkaandreg-demo-videos These would need to be available offline and should be organized by industry like the rest of the app\r\n Also a folder for pdf documents to be supplied Having some sales tool documents available (pre travel checklist, sample proposals, product pdf\'s etc)\r\n \r\n \r\n Screen 2 – Savings estimator as per ideas in wireframe – updatable data will be supplied in a spreadsheet\r\n \r\n Screen 3 – Sales diagnostic questions as per ideas in wireframe– updatable text data \r\n \r\n Development in HTML5\r\n Simple and clean in accordance with Dingo Style Guide. Dingo Font is Helvetica LT std Condensed\r\n Should have a mining/heavy industry lo... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 21h (Ends Fri, 08 Aug 2014 23:55:26 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 3 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (19 jobs posted, 79% awarded, $10509 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Centennial, CO, United States <br />\n    <b>Preferred Job Location:</b> Philippines <br />    <b>Desired Skills:</b> iPhone  iPad  ipad html5 <br />\n    <b>Job ID:</b> 59994293 <br/> <br/>\n    <a href=\"https://www.elance.com/j/develop-screen-ipad-sales-app/59994293/\">View job &raquo;</a>', 'https://www.elance.com/j/develop-screen-ipad-sales-app/59994293/', '1d4074962c3843c5d3221171b4928558', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/develop-screen-ipad-sales-app/59994293/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('518', '1', '0', '0000-00-00 00:00:00', '0', 'HTML 5 App | Elance Job', '<pre> Need to develop an App that identifies handwritten signatures. In otherwords, with templates of signatures in its database it is able to identify. This means that the app scan or snaps a signature and compare with what it has in its database and brings the template that its nearest to it. You would also be required to explain the logic behind your solution. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Hourly ($15 - $20 / hr)<br />\n    <b>Time Left:</b> Ends: 14d, 21h (Ends Fri, 08 Aug 2014 23:36:14 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 5 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , United Kingdom <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad  iOS <br />\n    <b>Job ID:</b> 59849305 <br/> <br/>\n    <a href=\"https://www.elance.com/j/html-app/59849305/\">View job &raquo;</a>', 'https://www.elance.com/j/html-app/59849305/', '58b6970a12214451cb41e98020ee4de8', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/html-app/59849305/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('519', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile App Development | Elance Job', '<pre> I am seeking development of a mobile app to distribute daily inspirational quotes. The app should be compatible with Apple &amp; Android devices. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $500 - $1,000)<br />\n    <b>Time Left:</b> Ends: 14d, 20h (Ends Fri, 08 Aug 2014 22:23:10 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 17 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , United States <br />\n        <b>Desired Skills:</b> Application Programming <br />\n    <b>Job ID:</b> 59992050 <br/> <br/>\n    <a href=\"https://www.elance.com/j/mobile-app-development/59992050/\">View job &raquo;</a>', 'https://www.elance.com/j/mobile-app-development/59992050/', 'ac3f93b5d29244b481497e7ffdff3d87', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/mobile-app-development/59992050/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('520', '1', '0', '0000-00-00 00:00:00', '0', 'Porting HTML5 &amp; JS Codebase to Mobile platforms. | Elance Job', '<pre> We have a platform for creating for childrens book in HTML5 and JS. Our platform is propritery and maintains interactive books as json object which are then played by our proprietary HTML5 / JS player.\r\n \r\n Our first sample application has been launched on windows 8 and can be seen here.\r\n &nbsp;&nbsp;[obscured]&nbsp;&nbsp; /windows/app/shoetree/755e982b-4353-4322-80b3-7ba75c784673\r\n \r\n We need the this application ported to individual platforms for tablets and mobile devices. The platforms we want to support include\r\n - Android (Google) Tablets\r\n - Android (Google) Phones\r\n - Android (Amazon) Tablets\r\n - IPad\r\n - IPhone\r\n - Windows Phone\r\n \r\n The workitem requires\r\n - Porting code for individual platforms\r\n - Working with our designers to fix design elements based on device platform and form factor.\r\n - Performance testing and evaluation.\r\n \r\n - Specialized porting workitems.\r\n - - Our application supports multiple languages and this support needs to be consitently maintained accross all platforms.\r\n - - We have a instory drawing activity ... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 20h (Ends Fri, 08 Aug 2014 22:16:25 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 0 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , India <br />\n        <b>Desired Skills:</b> Windows Phone  Windows 8  Google Play  App Store  Kindle Fire Apps <br />\n    <b>Job ID:</b> 59824540 <br/> <br/>\n    <a href=\"https://www.elance.com/j/porting-html5-js-codebase-mobile-platforms/59824540/\">View job &raquo;</a>', 'https://www.elance.com/j/porting-html5-js-codebase-mobile-platforms/59824540/', '68f069afd405db4eaa115e6c0852efc3', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/porting-html5-js-codebase-mobile-platforms/59824540/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('521', '1', '0', '0000-00-00 00:00:00', '0', 'Care Activities Autism App | Elance Job', '<pre> This App is for people with PMLD. See careactivities.com\r\n \r\n It has a menu and 40 choice cards/screens with buttons which when pressed say the choice. I can do the graphics, photography and voice/sounds. I need someone to code it/program for ios ipad use. \r\n \r\n I have screen shot examples available on request.\r\n \r\n I hope this is my first App of many. Thanks! \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $500 - $1,000)<br />\n    <b>Time Left:</b> Ends: 14d, 19h (Ends Fri, 08 Aug 2014 21:38:04 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 9 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , United Kingdom <br />\n        <b>Desired Skills:</b> iPad  Application Programming  App Store <br />\n    <b>Job ID:</b> 59991037 <br/> <br/>\n    <a href=\"https://www.elance.com/j/care-activities-autism-app/59991037/\">View job &raquo;</a>', 'https://www.elance.com/j/care-activities-autism-app/59991037/', 'a2fd8d9674fe392a545a2c697abfb7d3', '0', '5', 'canada', '', '3', '2014-07-25 09:09:12', '2014-07-25', 'https://www.elance.com/j/care-activities-autism-app/59991037/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('522', '1', '0', '0000-00-00 00:00:00', '0', 'iOS App iCloud backup &amp; sync | Elance Job', '<pre> I have the following open source project:\r\n &nbsp;&nbsp;[obscured]&nbsp;&nbsp; /Czarto/LifeBalancer\r\n \r\n I would like to add the following features:\r\n - Backup data to iCloud: If the user\'s phone crashes he should be able to reinstall the app the retrieve all his data.\r\n - Sync across multiple devices: User should be able to install the app on multiple devices and have his data stay in sync. Changes made on one device should appear on the second device and vise-versa. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 18h (Ends Fri, 08 Aug 2014 21:08:44 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 11 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 0% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> , , Canada <br />\n        <b>Desired Skills:</b> iPhone  iOS <br />\n    <b>Job ID:</b> 59990355 <br/> <br/>\n    <a href=\"https://www.elance.com/j/ios-app-icloud-backup-sync/59990355/\">View job &raquo;</a>', 'https://www.elance.com/j/ios-app-icloud-backup-sync/59990355/', 'ce05f7327d15fc652f921f42de7e18c4', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/ios-app-icloud-backup-sync/59990355/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('523', '1', '0', '0000-00-00 00:00:00', '0', 'iOS Mobile App Developer | Elance Job', '<pre> If this technology seems overwhelming I understand. Remember, you can make the app however you want. It just has to work. I suggest reading about OpenCV technology.\r\n \r\n Lead iOS and/or Android Application Architect/Developer/ LEAD MOBILE APPLICATION DEVELOPER\r\n We are developing a cutting-edge mobile application which involve the sharing, editing, and manipulating of audio and video. We need a smart, motivated, creative, mobile developer who likes rapidly creating solutions using the latest (or the best) technologies. \r\n \r\n Candidate must:\r\n \r\n · Be able to analyze requirements and propose appropriate solutions for a new multifaceted application in an agile development environment of Candidate\'s choosing.\r\n \r\n · Be proficient at creating compelling user interfaces and experiences on web and/or mobile devices.\r\n \r\n · Have the ability to deliver across the entire app life cycle –concept, design, build, deploy, test, release to app stores and support.\r\n \r\n · Be proficient wi... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (More than $10,000)<br />\n    <b>Time Left:</b> Ends: 29d, 18h (Ends Sat, 23 Aug 2014 20:36:12 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 25 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 0% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> , , United States <br />\n    <b>Preferred Job Location:</b> United States <br />    <b>Desired Skills:</b> Android  iPhone  iOS  OpenCV  Multimedia <br />\n    <b>Job ID:</b> 59989676 <br/> <br/>\n    <a href=\"https://www.elance.com/j/ios-mobile-app-developer/59989676/\">View job &raquo;</a>', 'https://www.elance.com/j/ios-mobile-app-developer/59989676/', 'a804f5ab9f685f2d3fe8628e8709fb3e', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/ios-mobile-app-developer/59989676/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('524', '1', '0', '0000-00-00 00:00:00', '0', 'New Game Development: Don\'t Touch the Gates (iOS Game) | Elance Job', '<pre> Your qualifications: \r\n \r\n - A work style that is extremely detail oriented \r\n - A complete Elance profile\r\n - References or an established Elance reputation preferred\r\n - Strong communication skills in English\r\n - Very flexible schedule\r\n \r\n Job Description: \r\n We are looking for a talented iOS Mobile Application Developer who will be responsible for designing, developing and deployment of our iOS game. Our plan is a very simple and addictive:\r\n \r\n The game:\r\n \r\n A very simple and addictive game that everyone will want to download!\r\n - A skier starts at the top of the screen and begins to ski downhill.\r\n - The skier moves down the screen and must tap the left or right side of the screen to move the direction of the skier.\r\n - The skier must pass around the ski gates (in the direction of the arrow points at the top of the gates).\r\n - The skier can only pick speed by going around the gates.\r\n - The speed gradually increases and the skier will go faster and faster but the game also gets harder and harder.\r\n - As soon as t... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 18h (Ends Fri, 08 Aug 2014 20:34:34 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 23 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (4 jobs posted, 25% awarded, $400 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Laval, QC, Canada <br />\n        <b>Desired Skills:</b> iPhone  Mobile Programming  iPad  iOS <br />\n    <b>Job ID:</b> 59989377 <br/> <br/>\n    <a href=\"https://www.elance.com/j/new-game-development-dont-touch-gates-ios-game/59989377/\">View job &raquo;</a>', 'https://www.elance.com/j/new-game-development-dont-touch-gates-ios-game/59989377/', '367cfc66903e1839b7f3926710a8be74', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/new-game-development-dont-touch-gates-ios-game/59989377/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('525', '1', '0', '0000-00-00 00:00:00', '0', 'Looking to buy projects in progress - Mobile | Elance Job', '<pre> I am looking to buy projects in progress pertaining to Mobile development.\r\n Looking for these artifacts. Any printed work which outlines the details of the products and services..\r\n \r\n Such as...\r\n \r\n Requirement documents,\r\n Project plan\r\n Functional spec/ wireframes\r\n Brochures/ Pamphlets\r\n \r\n Critical review of the software or product or any publications..\r\n Costs and rankings..\r\n Marketing analysis\r\n Cost analysis.. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $500 - $1,000)<br />\n    <b>Time Left:</b> Ends: 14d, 18h (Ends Fri, 08 Aug 2014 20:18:25 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 3 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (4 jobs posted, 0% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> New York, NY, United States <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad  Technical Documentation <br />\n    <b>Job ID:</b> 59989263 <br/> <br/>\n    <a href=\"https://www.elance.com/j/looking-buy-projects-progress-mobile/59989263/\">View job &raquo;</a>', 'https://www.elance.com/j/looking-buy-projects-progress-mobile/59989263/', 'a600ee457f26945ef805303b6c1987e8', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/looking-buy-projects-progress-mobile/59989263/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('526', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile iOS, Andro App Project Plan - Produce UX flow, screens, wireframes | Elance Job', '<pre> We need to build an mobile app that helps users memorize Bible verses.\r\n The user experience will follow closely how the one currently available memorization app works.\r\n \r\n There are three practice modes for memorization:\r\n 1) Letter Mode - you see all the words of the verse in light gray and type the first letter of each word. As you type the first letter of the word, it turns the entire word to black letters. If you mistype, it turns it red / counts it wrong and waits for the next letter.\r\n \r\n 2) Missing Word Mode - Every other word is missing. Same input mode - you type the first letter of each word. If you are correct, it turns the word black (or makes the word appear in black). If you are wrong, it turns the word red (or makes the word appear in red).\r\n \r\n 3) Memorization Mode - Total blank verse. No words appear. Same input mode - you type the first letter of each word. If you are correct, it makes the word appear in black). If you are wrong, it makes the word appear in red.\r\n \r\n There will be ... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Less than $500)<br />\n    <b>Time Left:</b> Ends: 2d, 17h (Ends Sun, 27 Jul 2014 19:47:57 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 4 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Mountainside, NJ, United States <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad  iOS  Android App Development <br />\n    <b>Job ID:</b> 59988668 <br/> <br/>\n    <a href=\"https://www.elance.com/j/mobile-ios-andro-app-project-plan-produce-ux-flow-screens-wireframes/59988668/\">View job &raquo;</a>', 'https://www.elance.com/j/mobile-ios-andro-app-project-plan-produce-ux-flow-screens-wireframes/59988668/', 'c840d872a3ee95e1ae92e124877d9523', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/mobile-ios-andro-app-project-plan-produce-ux-flow-screens-wireframes/59988668/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('527', '1', '0', '0000-00-00 00:00:00', '0', 'Utility/Travel iOS App | Elance Job', '<pre> - Proficient/Specializing in iOS Development\r\n - Matching Algorithm to match two or more users with each other required\r\n - Knowledge of how to use Parse server as back-end (very basic and simple)\r\n - Push Notifications\r\n - Maps Integration &amp; Location Services Integration\r\n - In-App Chat/Messaging Function\r\n - Phone Number Verification System Upon Registration\r\n - In-App Purchases &amp; Payments\r\n - Editing Account Information &amp; Uploading/Editing Profile Picture\r\n \r\n Job Description: \r\n Our Progress So Far:\r\n \r\n - Layout &amp; Design of App in Xcode Complete\r\n - Back-end Parse Server Established\r\n - User Sign-in/Registration (including Facebook) Established with Parse\r\n \r\n \r\n Your responsibilities:\r\n \r\n - Review business requirements working with other team members\r\n - Perform a technical analysis of requirements \r\n - Continue the development of our app as it stands\r\n - Write clean, modular, robust code to implement the desired requirements with little or no supervision\r\n - Ensure app is as aesthetically pleasing and as f... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Less than $500)<br />\n    <b>Time Left:</b> Ends: 6d, 17h (Ends Thu, 31 Jul 2014 19:28:10 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 6 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , Canada <br />\n        <b>Desired Skills:</b> Android  iPhone  English  Mobile Programming  iOS <br />\n    <b>Job ID:</b> 59988222 <br/> <br/>\n    <a href=\"https://www.elance.com/j/utility-travel-ios-app/59988222/\">View job &raquo;</a>', 'https://www.elance.com/j/utility-travel-ios-app/59988222/', '19cf0db22d26a0bf36688341d56cfce5', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/utility-travel-ios-app/59988222/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('528', '1', '0', '0000-00-00 00:00:00', '0', 'unity reskin developer | Elance Job', '<pre> looking to hire Unity expert who can work on improving and reskin some of my Unity mobile games projects. must be able to demonstrate Unity skills..\r\n \r\n please apply with your previous project or portfolios if you have. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Hourly (Not Sure)<br />\n    <b>Time Left:</b> Ends: 29d, 17h (Ends Sat, 23 Aug 2014 19:22:43 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 9 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , , Australia <br />\n        <b>Desired Skills:</b> 3D  Android  iPhone  iOS  Unity <br />\n    <b>Job ID:</b> 59988083 <br/> <br/>\n    <a href=\"https://www.elance.com/j/unity-reskin-developer/59988083/\">View job &raquo;</a>', 'https://www.elance.com/j/unity-reskin-developer/59988083/', '506b00ff87ab509057a526c1df959dd6', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/unity-reskin-developer/59988083/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('529', '1', '0', '0000-00-00 00:00:00', '0', 'Youtube channel player | Elance Job', '<pre> I have already a YouTube channel player application, now my problem is that since I\'m a newbie and i have limited time i can\'t add more functionality such as push notification, Chromeast support, also the potability of loading more than 50 videos since what i\'m currently using on my codes is the YouTube channel RSS feed and if you know about it is only limited to 50 results.\r\n \r\n One more thing i need the push notification option on php web server and mysql database and i needed to be able to push to all devices and get me the mobile demographic location for statistic reason. \r\n \r\n I need this done ASAP.\r\n \r\n Please read the Job description before you claim you can do it don\'t waste each other time.\r\n \r\n I\'ll have more work if i find the right person. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Less than $500)<br />\n    <b>Time Left:</b> Ends: 14d, 16h (Ends Fri, 08 Aug 2014 19:09:45 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 4 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (1 jobs posted, 100% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Bronx, NY, United States <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad <br />\n    <b>Job ID:</b> 59987801 <br/> <br/>\n    <a href=\"https://www.elance.com/j/youtube-channel-player/59987801/\">View job &raquo;</a>', 'https://www.elance.com/j/youtube-channel-player/59987801/', '3b0ba89e6da3c763ae623199c7a2fa50', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/youtube-channel-player/59987801/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('530', '1', '0', '0000-00-00 00:00:00', '0', 'Android game like castle clash | Elance Job', '<pre> Based on castle clash, with in app purchases for gems, and it will have a simple cartoony theme with the main theme being animals or something. \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $500 - $1,000)<br />\n    <b>Time Left:</b> Ends: 14d, 16h (Ends Fri, 08 Aug 2014 19:06:30 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 0 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (0 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> , ,  <br />\n        <b>Desired Skills:</b> Android  iPhone  BlackBerry  iOS  Android App Development <br />\n    <b>Job ID:</b> 59987705 <br/> <br/>\n    <a href=\"https://www.elance.com/j/android-game-like-castle-clash/59987705/\">View job &raquo;</a>', 'https://www.elance.com/j/android-game-like-castle-clash/59987705/', '419506fc6d0292af4b5a908059315290', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/android-game-like-castle-clash/59987705/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('531', '1', '0', '0000-00-00 00:00:00', '0', 'Develop a video messaging app with a drawing function and earn up to $7,800 | Elance Job', '<pre> We\'re Miraishonen, Inc. (&nbsp;&nbsp;[obscured]&nbsp;&nbsp; /company_en), a Japanese company with a diverse set of innovative web-centered services, now in the process of developing a new video messaging application with an innovative drawing function to create a richer communication experience for the users.\r\n \r\n The app will be for both iOS and Android mobile devices and will need to have the following functions:\r\n 1) general video recording\r\n 2) drawing onto the video while recording (+ the ability to change pen colors, cf. SNAPCHAT)\r\n 3) sharing after recording\r\n 4) access to phone address book (in order to select the contacts to send the video to)\r\n *for reference, please check the following app with similar content\r\n Samba: &nbsp;&nbsp;[obscured]&nbsp;&nbsp; /us/app/samba-video-messaging-reactions/id808692828?mt=8\r\n \r\n The chosen candidate will be tasked with creating the aforementioned application, possibly by 8/31 (the actual deadline is negotiable).\r\n \r\n There is an opportunity to earn between 980 and 7,850 USD for completing the app, ... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $1,000 - $5,000)<br />\n    <b>Time Left:</b> Ends: 89d, 16h (Ends Wed, 22 Oct 2014 18:42:34 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 2 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (2 jobs posted, 0% awarded, $0 total purchased, Payment Method Not Verified) <br />\n    <b>Client Location:</b> Tokyo, Tokyo, Japan <br />\n        <b>Desired Skills:</b> Android  iPhone  Video Conversion <br />\n    <b>Job ID:</b> 59987084 <br/> <br/>\n    <a href=\"https://www.elance.com/j/develop-video-messaging-app-drawing-function-earn-up/59987084/\">View job &raquo;</a>', 'https://www.elance.com/j/develop-video-messaging-app-drawing-function-earn-up/59987084/', '6ad611f4bebdb1109d0e2fd4024b1f08', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/develop-video-messaging-app-drawing-function-earn-up/59987084/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('532', '1', '0', '0000-00-00 00:00:00', '0', 'Mobile Device Programmer(s) | Elance Job', '<pre> At least 3 years of experience in IOS cocoa and Andriod SDK programming experience.\r\n Knowledge of JSON is a must.\r\n Basic knowledge of .c#.\r\n Excellent English communcation skills.\r\n Be available to us from 9AM to 1PM E.S.T. Monday to Friday.\r\n \r\n Please do not send us your automated/canned response. It will be ignored.\r\n \r\n Please send detail personal resume detailing your qualification, experience, referneces and rate desired.\r\n \r\n Potential applicants will be required to write a small program to demostrate your programming knowledge. If you are not willing to do it, DO NOT apply.\r\n \r\n Job Description: \r\n We are looking for a talented Mobile Application Developer who will be responsible for the design, development and deployment of our mobile apps.\r\n \r\n Your responsibilities:\r\n \r\n - Review and perform a technical analysis of requirements \r\n - Produce a solid, detailed technical design\r\n - Write clean, modular, robust code to implement the desired requirements\r\n - Contribute ideas for making the application(s) bet... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Hourly (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 16h (Ends Fri, 08 Aug 2014 18:36:54 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 27 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (49 jobs posted, 73% awarded, $32081 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> , , Canada <br />\n        <b>Desired Skills:</b> Android  iPhone  Mobile Programming  iPad  iOS <br />\n    <b>Job ID:</b> 59987073 <br/> <br/>\n    <a href=\"https://www.elance.com/j/mobile-device-programmers/59987073/\">View job &raquo;</a>', 'https://www.elance.com/j/mobile-device-programmers/59987073/', '7c78224e7c3de908dd2b9eefb3726b65', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/mobile-device-programmers/59987073/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('533', '1', '0', '0000-00-00 00:00:00', '0', 'Chat App for IOS | Elance Job', '<pre> Hello there ,\r\n \r\n We are looking for a developer or development team to build a native IOS app that will have the following features:\r\n \r\n - Login/Signup using Facebook or email + a password\r\n - Option to add friends from other social medial outlets ( optional )\r\n - Geolocation - ability to connect to users based on their location\r\n -- Live chat between the users, and multi-chat session. The chat should be able to support exchanging text and multimedia ( images and emoji as of now )\r\n - The conversation between the users will have a time stamp and viewed and read indicators.\r\n - Push notification as well as in app notification when you receive message from another user\r\n - User profiles which will include : name, gender,birth date , image, short status and option to edit the profile. User on-line indicator\r\n - Function that will allow the user to add another user to the favorite list and be able to chat with them again.\r\n - Function for selection of another user based on certain criteria. This will requi... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price (Not Sure)<br />\n    <b>Time Left:</b> Ends: 14d, 16h (Ends Fri, 08 Aug 2014 18:11:49 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 16 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (5 jobs posted, 20% awarded, $200 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> Dallas, TX, United States <br />\n        <b>Desired Skills:</b> Mobile Programming  iOS  iOS 6  iOS 7  Mobile App Development <br />\n    <b>Job ID:</b> 59986478 <br/> <br/>\n    <a href=\"https://www.elance.com/j/chat-app-ios/59986478/\">View job &raquo;</a>', 'https://www.elance.com/j/chat-app-ios/59986478/', 'c8f70a0d6e1fb63f8e5d91a540ee7fc0', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-25', 'https://www.elance.com/j/chat-app-ios/59986478/');
INSERT INTO `mk_mortal_kontracts_leads` VALUES ('534', '1', '0', '0000-00-00 00:00:00', '0', 'Simple Iphone Video App -  android/ipad after this project | Elance Job', '<pre> The job is to produce an application that allows some basic video editing/effects. The application would be provided so that it could be skinned by my design team before it is shipped. \r\n \r\n The key pieces of functionality are\r\n \r\n 1) view a video recorded on the device and scroll through the video in the app. \r\n 2) The ability to add a watermark/graphic to the video at a selected point using the functionality in (1). The watermark could be added the video for 3,10 or15 seconds \r\n 3) The ability to add some music/sound to the video at a selected point using the functionality in (1). The music sound could be added the video for 3,10 or 15 . The music could be from Itunes or a library on the app. The sounds would be from a library in the app\r\n \r\n The watermark would be a graphic plus user text.\r\n For example on the following video at 1:04s. &nbsp;&nbsp;[obscured]&nbsp;&nbsp; /watch?v=ZTO3Q0HgTfo \r\n \r\n A support screen is required to specify the text . The user would be able to select a graphic from a library of images on t... \r\n\r\nSign in or Register to see more </pre><b>Category:</b> IT &amp; Programming > Mobile Applications <br />\n    <b>Type and Budget:</b> Fixed Price ( $500 - $1,000)<br />\n    <b>Time Left:</b> Ends: 14d, 15h (Ends Fri, 08 Aug 2014 17:50:40 EDT) <br />\n    <b>Start Date:</b> 24 Jul 2014 <br />\n    <b>Proposals:</b> 9 (<a href=\"https://www.elance.com/php/landing/main/login.php?assumePreviousLogin=1&amp;redirect=https://www.elance.com/r/jobs/cat-it-programming/sct-mobile-applications-11033?showUpgradeModelIfFreeMember=1\">login</a>) <br />\n    <b>Client:</b> Client (4 jobs posted, 0% awarded, $0 total purchased, Payment Method Verified) <br />\n    <b>Client Location:</b> , , United Kingdom <br />\n        <b>Desired Skills:</b> Android  iPhone  iPad <br />\n    <b>Job ID:</b> 59985913 <br/> <br/>\n    <a href=\"https://www.elance.com/j/simple-iphone-video-app-android-ipad-after-this-project/59985913/\">View job &raquo;</a>', 'https://www.elance.com/j/simple-iphone-video-app-android-ipad-after-this-project/59985913/', '593234ffa0d1cf9397b542a1bd1f661b', '0', '5', 'canada', '', '3', '2014-07-25 09:09:13', '2014-07-24', 'https://www.elance.com/j/simple-iphone-video-app-android-ipad-after-this-project/59985913/');

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
  `title` varchar(255) DEFAULT NULL,
  `list_parser` varchar(255) DEFAULT NULL,
  `item_parser` varchar(255) DEFAULT NULL,
  `average_rating` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_mortal_kontracts_providers
-- ----------------------------
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('1', '1', '1', '0', '0000-00-00 00:00:00', '6', 'RFP DB WEB DEV', 'rss', 'raw', '0', 'http://www.rfpdb.com/view/feed/identifier/8870b1408f4d.rss', '2,3');
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('2', '2', '1', '0', '0000-00-00 00:00:00', '6', 'Indeed', 'rss', 'indeed', '3', 'http://www.indeed.ca/rss?q=mobile&l=montreal', '4');
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('3', '3', '1', '0', '0000-00-00 00:00:00', '6', 'kijiji', 'rss', 'kijiji', '3', 'http://www.kijiji.ca/rss-srp-programmer-computer-jobs/canada/mobile/k0c54l0?siteLocale=en_CA', '4');
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('4', '4', '1', '0', '0000-00-00 00:00:00', '6', 'Craigslist', 'rss', 'craigslist', '2', 'http://montreal.craigslist.org/search/sof?query=mobile&format=rss&is_contract=1', '4');
INSERT INTO `mk_mortal_kontracts_providers` VALUES ('5', '5', '1', '0', '0000-00-00 00:00:00', '6', 'Elance', 'rss', 'elance', '4', 'https://www.elance.com/r/rss/jobs/cat-it-programming/sct-mobile-applications-11033', '4');

-- ----------------------------
-- Table structure for `mk_newsfeeds`
-- ----------------------------
DROP TABLE IF EXISTS `mk_newsfeeds`;
CREATE TABLE `mk_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_newsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_overrider`
-- ----------------------------
DROP TABLE IF EXISTS `mk_overrider`;
CREATE TABLE `mk_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_overrider
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_postinstall_messages`
-- ----------------------------
DROP TABLE IF EXISTS `mk_postinstall_messages`;
CREATE TABLE `mk_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_postinstall_messages
-- ----------------------------
INSERT INTO `mk_postinstall_messages` VALUES ('1', '700', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', '1', 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', '1');
INSERT INTO `mk_postinstall_messages` VALUES ('2', '700', 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', '1', 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', '1');
INSERT INTO `mk_postinstall_messages` VALUES ('3', '700', 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', '1', 'message', '', '', '', '', '3.2.0', '1');
INSERT INTO `mk_postinstall_messages` VALUES ('4', '700', 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', '1', 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', '1');

-- ----------------------------
-- Table structure for `mk_redirect_links`
-- ----------------------------
DROP TABLE IF EXISTS `mk_redirect_links`;
CREATE TABLE `mk_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_redirect_links
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_schemas`
-- ----------------------------
DROP TABLE IF EXISTS `mk_schemas`;
CREATE TABLE `mk_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_schemas
-- ----------------------------
INSERT INTO `mk_schemas` VALUES ('700', '3.3.0-2014-04-02');

-- ----------------------------
-- Table structure for `mk_session`
-- ----------------------------
DROP TABLE IF EXISTS `mk_session`;
CREATE TABLE `mk_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_session
-- ----------------------------
INSERT INTO `mk_session` VALUES ('b3r7416s5cvbt95jh1pejs2465', '1', '0', '1406272212', '__default|a:8:{s:15:\"session.counter\";i:77;s:19:\"session.timer.start\";i:1406265753;s:18:\"session.timer.last\";i:1406272151;s:17:\"session.timer.now\";i:1406272211;s:22:\"session.client.browser\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":3:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"en-GB\";}s:20:\"com_mortal_kontracts\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":1:{s:8:\"provider\";O:8:\"stdClass\":2:{s:4:\"data\";N;s:2:\"id\";a:0:{}}}s:5:\"leads\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"search\";s:0:\"\";s:5:\"state\";s:0:\"\";s:11:\"provider_id\";s:1:\"5\";s:6:\"region\";s:0:\"\";}s:8:\"ordercol\";s:7:\"a.title\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";s:1:\"0\";}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}}}s:4:\"user\";O:5:\"JUser\":27:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:1:\"6\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:8:\"kamicode\";s:5:\"email\";s:14:\"j@kamicode.com\";s:8:\"password\";s:60:\"$2y$10$7.OZmgH/7vXQay3gIBUnCOCcvznrPHAGYPjSXxL/KRGeBuRPwXV7u\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2014-07-22 19:52:21\";s:13:\"lastvisitDate\";s:19:\"2014-07-24 19:46:14\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"6453d0ce00b86c15a3416455005bbca4\";}', '6', 'kamicode');

-- ----------------------------
-- Table structure for `mk_tags`
-- ----------------------------
DROP TABLE IF EXISTS `mk_tags`;
CREATE TABLE `mk_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_tags
-- ----------------------------
INSERT INTO `mk_tags` VALUES ('1', '0', '0', '1', '0', '', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '', '0', '2011-01-01 00:00:01', '', '0', '0000-00-00 00:00:00', '', '', '0', '*', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mk_tags` VALUES ('2', '0', '2', '3', '0', 'php', 'php', 'php', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '{\"author\":\"\",\"robots\":\"\",\"tags\":null}', '6', '2014-07-24 05:50:18', '', '0', '0000-00-00 00:00:00', '', '', '0', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mk_tags` VALUES ('3', '0', '4', '5', '0', 'joomla', 'joomla', 'joomla', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '{\"author\":\"\",\"robots\":\"\",\"tags\":null}', '6', '2014-07-24 05:50:18', '', '0', '0000-00-00 00:00:00', '', '', '0', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mk_tags` VALUES ('4', '0', '6', '7', '0', 'mobile', 'mobile', 'mobile', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '{\"author\":\"\",\"robots\":\"\",\"tags\":null}', '6', '2014-07-24 06:53:54', '', '0', '0000-00-00 00:00:00', '', '', '0', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `mk_template_styles`
-- ----------------------------
DROP TABLE IF EXISTS `mk_template_styles`;
CREATE TABLE `mk_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_template_styles
-- ----------------------------
INSERT INTO `mk_template_styles` VALUES ('4', 'beez3', '0', '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `mk_template_styles` VALUES ('5', 'hathor', '1', '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `mk_template_styles` VALUES ('7', 'protostar', '0', '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `mk_template_styles` VALUES ('8', 'isis', '1', '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- ----------------------------
-- Table structure for `mk_ucm_base`
-- ----------------------------
DROP TABLE IF EXISTS `mk_ucm_base`;
CREATE TABLE `mk_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_ucm_base
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_ucm_content`
-- ----------------------------
DROP TABLE IF EXISTS `mk_ucm_content`;
CREATE TABLE `mk_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- ----------------------------
-- Records of mk_ucm_content
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_ucm_history`
-- ----------------------------
DROP TABLE IF EXISTS `mk_ucm_history`;
CREATE TABLE `mk_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_ucm_history
-- ----------------------------
INSERT INTO `mk_ucm_history` VALUES ('1', '2', '10', '', '2014-07-24 05:50:18', '6', '964', '2734a286ed7082e8a4c502fb73c9f3c54231ee27', '{\"id\":2,\"parent_id\":\"0\",\"lft\":2,\"rgt\":3,\"level\":\"0\",\"path\":\"php\",\"title\":\"php\",\"alias\":\"php\",\"note\":null,\"description\":null,\"published\":1,\"checked_out\":0,\"checked_out_time\":null,\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\",\\\"tags\\\":null}\",\"created_user_id\":\"6\",\"created_time\":\"2014-07-24 05:50:18\",\"created_by_alias\":{\"id\":\"6\",\"name\":\"Super User\",\"username\":\"kamicode\",\"email\":\"j@kamicode.com\",\"password\":\"$2y$10$7.OZmgH\\/7vXQay3gIBUnCOCcvznrPHAGYPjSXxL\\/KRGeBuRPwXV7u\",\"password_clear\":\"\",\"block\":\"0\",\"sendEmail\":\"1\",\"registerDate\":\"2014-07-22 19:52:21\",\"lastvisitDate\":\"2014-07-23 17:43:46\",\"activation\":\"0\",\"params\":\"\",\"groups\":{\"8\":\"8\"},\"guest\":0,\"lastResetTime\":\"0000-00-00 00:00:00\",\"resetCount\":\"0\",\"requireReset\":\"0\",\"aid\":0,\"otpKey\":\"\",\"otep\":\"\"},\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":null,\"language\":null,\"version\":null,\"publish_up\":null,\"publish_down\":null}', '0');
INSERT INTO `mk_ucm_history` VALUES ('2', '3', '10', '', '2014-07-24 05:50:18', '6', '973', 'aec18b26b1e7f65097cd56ea2c10861bd692c35c', '{\"id\":3,\"parent_id\":\"0\",\"lft\":4,\"rgt\":5,\"level\":\"0\",\"path\":\"joomla\",\"title\":\"joomla\",\"alias\":\"joomla\",\"note\":null,\"description\":null,\"published\":1,\"checked_out\":0,\"checked_out_time\":null,\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\",\\\"tags\\\":null}\",\"created_user_id\":\"6\",\"created_time\":\"2014-07-24 05:50:18\",\"created_by_alias\":{\"id\":\"6\",\"name\":\"Super User\",\"username\":\"kamicode\",\"email\":\"j@kamicode.com\",\"password\":\"$2y$10$7.OZmgH\\/7vXQay3gIBUnCOCcvznrPHAGYPjSXxL\\/KRGeBuRPwXV7u\",\"password_clear\":\"\",\"block\":\"0\",\"sendEmail\":\"1\",\"registerDate\":\"2014-07-22 19:52:21\",\"lastvisitDate\":\"2014-07-23 17:43:46\",\"activation\":\"0\",\"params\":\"\",\"groups\":{\"8\":\"8\"},\"guest\":0,\"lastResetTime\":\"0000-00-00 00:00:00\",\"resetCount\":\"0\",\"requireReset\":\"0\",\"aid\":0,\"otpKey\":\"\",\"otep\":\"\"},\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":null,\"language\":null,\"version\":null,\"publish_up\":null,\"publish_down\":null}', '0');
INSERT INTO `mk_ucm_history` VALUES ('3', '4', '10', '', '2014-07-24 06:53:54', '6', '973', 'e8d56dc5a0c2a976a7e25bea30d18a26afa393f1', '{\"id\":4,\"parent_id\":\"0\",\"lft\":6,\"rgt\":7,\"level\":\"0\",\"path\":\"mobile\",\"title\":\"mobile\",\"alias\":\"mobile\",\"note\":null,\"description\":null,\"published\":1,\"checked_out\":0,\"checked_out_time\":null,\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\",\\\"tags\\\":null}\",\"created_user_id\":\"6\",\"created_time\":\"2014-07-24 06:53:54\",\"created_by_alias\":{\"id\":\"6\",\"name\":\"Super User\",\"username\":\"kamicode\",\"email\":\"j@kamicode.com\",\"password\":\"$2y$10$7.OZmgH\\/7vXQay3gIBUnCOCcvznrPHAGYPjSXxL\\/KRGeBuRPwXV7u\",\"password_clear\":\"\",\"block\":\"0\",\"sendEmail\":\"1\",\"registerDate\":\"2014-07-22 19:52:21\",\"lastvisitDate\":\"2014-07-24 05:35:18\",\"activation\":\"0\",\"params\":\"\",\"groups\":{\"8\":\"8\"},\"guest\":0,\"lastResetTime\":\"0000-00-00 00:00:00\",\"resetCount\":\"0\",\"requireReset\":\"0\",\"aid\":0,\"otpKey\":\"\",\"otep\":\"\"},\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":null,\"language\":null,\"version\":null,\"publish_up\":null,\"publish_down\":null}', '0');

-- ----------------------------
-- Table structure for `mk_updates`
-- ----------------------------
DROP TABLE IF EXISTS `mk_updates`;
CREATE TABLE `mk_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- ----------------------------
-- Records of mk_updates
-- ----------------------------
INSERT INTO `mk_updates` VALUES ('1', '3', '0', 'Russian', '', 'pkg_ru-RU', 'package', '', '0', '3.3.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('2', '3', '0', 'Slovak', '', 'pkg_sk-SK', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('3', '3', '0', 'Swedish', '', 'pkg_sv-SE', 'package', '', '0', '3.3.0.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('4', '3', '0', 'Syriac', '', 'pkg_sy-IQ', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('5', '3', '0', 'Tamil', '', 'pkg_ta-IN', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('6', '3', '0', 'Thai', '', 'pkg_th-TH', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('7', '3', '0', 'Turkish', '', 'pkg_tr-TR', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('8', '3', '0', 'Ukrainian', '', 'pkg_uk-UA', 'package', '', '0', '3.3.1.11', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('9', '3', '0', 'Malay', '', 'pkg_ms-MY', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('10', '3', '0', 'Uyghur', '', 'pkg_ug-CN', 'package', '', '0', '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('11', '3', '0', 'Romanian', '', 'pkg_ro-RO', 'package', '', '0', '3.3.0.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('12', '3', '0', 'Albanian', '', 'pkg_sq-AL', 'package', '', '0', '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('13', '3', '0', 'Flemish', '', 'pkg_nl-BE', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('14', '3', '0', 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', '0', '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('15', '3', '0', 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('16', '3', '0', 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('17', '3', '0', 'French', '', 'pkg_fr-FR', 'package', '', '0', '3.3.1.3', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('18', '3', '0', 'Spanish', '', 'pkg_es-ES', 'package', '', '0', '3.3.1.3', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('19', '3', '0', 'Galician', '', 'pkg_gl-ES', 'package', '', '0', '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('20', '3', '0', 'Bosnian', '', 'pkg_bs-BA', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('21', '3', '0', 'German', '', 'pkg_de-DE', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('22', '3', '0', 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('23', '3', '0', 'Greek', '', 'pkg_el-GR', 'package', '', '0', '3.2.0.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('24', '3', '0', 'Vietnamese', '', 'pkg_vi-VN', 'package', '', '0', '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('25', '3', '0', 'Japanese', '', 'pkg_ja-JP', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('26', '3', '0', 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', '0', '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('27', '3', '0', 'Hebrew', '', 'pkg_he-IL', 'package', '', '0', '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('28', '3', '0', 'Finnish', '', 'pkg_fi-FI', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('29', '3', '0', 'EnglishAU', '', 'pkg_en-AU', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('30', '3', '0', 'Swahili', '', 'pkg_sw-KE', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('31', '3', '0', 'EnglishUS', '', 'pkg_en-US', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('32', '3', '0', 'Montenegrin', '', 'pkg_srp-ME', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('33', '3', '0', 'Hungarian', '', 'pkg_hu-HU', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('34', '3', '0', 'EnglishCA', '', 'pkg_en-CA', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('35', '3', '0', 'Afrikaans', '', 'pkg_af-ZA', 'package', '', '0', '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('36', '3', '0', 'FrenchCA', '', 'pkg_fr-CA', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('37', '3', '0', 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('38', '3', '0', 'Welsh', '', 'pkg_cy-GB', 'package', '', '0', '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('39', '3', '0', 'Belarusian', '', 'pkg_be-BY', 'package', '', '0', '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('40', '3', '0', 'Bulgarian', '', 'pkg_bg-BG', 'package', '', '0', '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('41', '3', '0', 'Catalan', '', 'pkg_ca-ES', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('42', '3', '0', 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('43', '3', '0', 'Croatian', '', 'pkg_hr-HR', 'package', '', '0', '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('44', '3', '0', 'Czech', '', 'pkg_cs-CZ', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('45', '3', '0', 'Danish', '', 'pkg_da-DK', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('46', '3', '0', 'Dutch', '', 'pkg_nl-NL', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('47', '3', '0', 'Estonian', '', 'pkg_et-EE', 'package', '', '0', '3.3.1.2', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('48', '3', '0', 'Italian', '', 'pkg_it-IT', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('49', '3', '0', 'Korean', '', 'pkg_ko-KR', 'package', '', '0', '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('50', '3', '0', 'Latvian', '', 'pkg_lv-LV', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('51', '3', '0', 'Macedonian', '', 'pkg_mk-MK', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('52', '3', '0', 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', '0', '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('53', '3', '0', 'Persian', '', 'pkg_fa-IR', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', '');
INSERT INTO `mk_updates` VALUES ('54', '3', '0', 'Polish', '', 'pkg_pl-PL', 'package', '', '0', '3.3.1.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', '');

-- ----------------------------
-- Table structure for `mk_update_sites`
-- ----------------------------
DROP TABLE IF EXISTS `mk_update_sites`;
CREATE TABLE `mk_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

-- ----------------------------
-- Records of mk_update_sites
-- ----------------------------
INSERT INTO `mk_update_sites` VALUES ('1', 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', '1', '1406066616', '');
INSERT INTO `mk_update_sites` VALUES ('2', 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', '1', '1406066616', '');
INSERT INTO `mk_update_sites` VALUES ('3', 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', '1', '1406066616', '');

-- ----------------------------
-- Table structure for `mk_update_sites_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `mk_update_sites_extensions`;
CREATE TABLE `mk_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of mk_update_sites_extensions
-- ----------------------------
INSERT INTO `mk_update_sites_extensions` VALUES ('1', '700');
INSERT INTO `mk_update_sites_extensions` VALUES ('2', '700');
INSERT INTO `mk_update_sites_extensions` VALUES ('3', '600');

-- ----------------------------
-- Table structure for `mk_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `mk_usergroups`;
CREATE TABLE `mk_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_usergroups
-- ----------------------------
INSERT INTO `mk_usergroups` VALUES ('1', '0', '1', '18', 'Public');
INSERT INTO `mk_usergroups` VALUES ('2', '1', '8', '15', 'Registered');
INSERT INTO `mk_usergroups` VALUES ('3', '2', '9', '14', 'Author');
INSERT INTO `mk_usergroups` VALUES ('4', '3', '10', '13', 'Editor');
INSERT INTO `mk_usergroups` VALUES ('5', '4', '11', '12', 'Publisher');
INSERT INTO `mk_usergroups` VALUES ('6', '1', '4', '7', 'Manager');
INSERT INTO `mk_usergroups` VALUES ('7', '6', '5', '6', 'Administrator');
INSERT INTO `mk_usergroups` VALUES ('8', '1', '16', '17', 'Super Users');
INSERT INTO `mk_usergroups` VALUES ('9', '1', '2', '3', 'Guest');

-- ----------------------------
-- Table structure for `mk_users`
-- ----------------------------
DROP TABLE IF EXISTS `mk_users`;
CREATE TABLE `mk_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_users
-- ----------------------------
INSERT INTO `mk_users` VALUES ('6', 'Super User', 'kamicode', 'j@kamicode.com', '$2y$10$7.OZmgH/7vXQay3gIBUnCOCcvznrPHAGYPjSXxL/KRGeBuRPwXV7u', '0', '1', '2014-07-22 19:52:21', '2014-07-25 05:22:38', '0', '', '0000-00-00 00:00:00', '0', '', '', '0');

-- ----------------------------
-- Table structure for `mk_user_keys`
-- ----------------------------
DROP TABLE IF EXISTS `mk_user_keys`;
CREATE TABLE `mk_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_user_keys
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_user_notes`
-- ----------------------------
DROP TABLE IF EXISTS `mk_user_notes`;
CREATE TABLE `mk_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_user_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `mk_user_profiles`;
CREATE TABLE `mk_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- ----------------------------
-- Records of mk_user_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `mk_user_usergroup_map`
-- ----------------------------
DROP TABLE IF EXISTS `mk_user_usergroup_map`;
CREATE TABLE `mk_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_user_usergroup_map
-- ----------------------------
INSERT INTO `mk_user_usergroup_map` VALUES ('6', '8');

-- ----------------------------
-- Table structure for `mk_viewlevels`
-- ----------------------------
DROP TABLE IF EXISTS `mk_viewlevels`;
CREATE TABLE `mk_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_viewlevels
-- ----------------------------
INSERT INTO `mk_viewlevels` VALUES ('1', 'Public', '0', '[1]');
INSERT INTO `mk_viewlevels` VALUES ('2', 'Registered', '1', '[6,2,8]');
INSERT INTO `mk_viewlevels` VALUES ('3', 'Special', '2', '[6,3,8]');
INSERT INTO `mk_viewlevels` VALUES ('5', 'Guest', '0', '[9]');
INSERT INTO `mk_viewlevels` VALUES ('6', 'Super Users', '0', '[8]');

-- ----------------------------
-- Table structure for `mk_weblinks`
-- ----------------------------
DROP TABLE IF EXISTS `mk_weblinks`;
CREATE TABLE `mk_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mk_weblinks
-- ----------------------------
