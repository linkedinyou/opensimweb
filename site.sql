/*
Navicat MySQL Data Transfer

Source Server         : localhostWAMP
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : site

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2014-03-12 19:49:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for osw_forum_board
-- ----------------------------
DROP TABLE IF EXISTS `osw_forum_board`;
CREATE TABLE `osw_forum_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` varchar(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_forum_board
-- ----------------------------
INSERT INTO `osw_forum_board` VALUES ('1', '1', 'Test', 'test board', '0');

-- ----------------------------
-- Table structure for osw_forum_cat
-- ----------------------------
DROP TABLE IF EXISTS `osw_forum_cat`;
CREATE TABLE `osw_forum_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_forum_cat
-- ----------------------------
INSERT INTO `osw_forum_cat` VALUES ('1', 'Test cat', '0');

-- ----------------------------
-- Table structure for osw_forum_replies
-- ----------------------------
DROP TABLE IF EXISTS `osw_forum_replies`;
CREATE TABLE `osw_forum_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` varchar(11) NOT NULL,
  `topic_id` varchar(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `message` longtext,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_forum_replies
-- ----------------------------

-- ----------------------------
-- Table structure for osw_forum_topic
-- ----------------------------
DROP TABLE IF EXISTS `osw_forum_topic`;
CREATE TABLE `osw_forum_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` varchar(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` longtext,
  `time` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_forum_topic
-- ----------------------------
INSERT INTO `osw_forum_topic` VALUES ('1', '1', 'Test topic', 'Test message', '1392913592', null);

-- ----------------------------
-- Table structure for osw_mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `osw_mainmenu`;
CREATE TABLE `osw_mainmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `childof` varchar(255) NOT NULL DEFAULT '0',
  `sortby` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_mainmenu
-- ----------------------------
INSERT INTO `osw_mainmenu` VALUES ('1', 'Search', 'search.php', '0', '2');
INSERT INTO `osw_mainmenu` VALUES ('2', 'Land Rentals', '', '0', '3');
INSERT INTO `osw_mainmenu` VALUES ('3', 'Private', '', '3', '1');
INSERT INTO `osw_mainmenu` VALUES ('4', 'Mainland', '', '3', '2');
INSERT INTO `osw_mainmenu` VALUES ('5', 'Self Hosted', '', '3', '3');
INSERT INTO `osw_mainmenu` VALUES ('6', 'Grid', '', '0', '4');
INSERT INTO `osw_mainmenu` VALUES ('7', 'News', '', '7', '1');
INSERT INTO `osw_mainmenu` VALUES ('8', 'Map', 'map.php', '7', '2');
INSERT INTO `osw_mainmenu` VALUES ('9', 'How to Connect', 'how2connect.php', '7', '3');
INSERT INTO `osw_mainmenu` VALUES ('10', 'Community', '', '0', '5');
INSERT INTO `osw_mainmenu` VALUES ('11', 'Forum', 'forum/', '11', '1');

-- ----------------------------
-- Table structure for osw_news
-- ----------------------------
DROP TABLE IF EXISTS `osw_news`;
CREATE TABLE `osw_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `msg` longtext,
  `time` varchar(255) DEFAULT NULL,
  `edit_time` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_news
-- ----------------------------

-- ----------------------------
-- Table structure for osw_sessions
-- ----------------------------
DROP TABLE IF EXISTS `osw_sessions`;
CREATE TABLE `osw_sessions` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for osw_settings
-- ----------------------------
DROP TABLE IF EXISTS `osw_settings`;
CREATE TABLE `osw_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osw_settings
-- ----------------------------
INSERT INTO `osw_settings` VALUES ('1', 'robust_db', 'opensim', 'db name for grid logins');
INSERT INTO `osw_settings` VALUES ('2', 'group_db', 'opensim', 'db name for groups');
INSERT INTO `osw_settings` VALUES ('3', 'profile_db', 'opensim', 'db name for profiles');
INSERT INTO `osw_settings` VALUES ('4', 'search_db', 'opensim', 'db name for search related data');
INSERT INTO `osw_settings` VALUES ('5', 'SiteAddress', 'http://localhost', 'Site address of this site');
INSERT INTO `osw_settings` VALUES ('6', 'loginURI', 'http://localhost:9000', 'Login URL address for users to use to log into your grid');
INSERT INTO `osw_settings` VALUES ('7', 'GridNick', 'LHG', 'Grid\'s nickname');
INSERT INTO `osw_settings` VALUES ('8', 'GridName', 'Local Grid', 'Name of your grid');
INSERT INTO `osw_settings` VALUES ('9', 'PrimEmail', '@prims.localhost', 'This is used to email in world prims with data');
INSERT INTO `osw_settings` VALUES ('10', 'GridMoney', 'OS$', 'Currency icon seen at the top right of most viewers');
INSERT INTO `osw_settings` VALUES ('11', 'cookie_prefix', 'osw', null);
INSERT INTO `osw_settings` VALUES ('12', 'cookie_length', '1209600', null);
INSERT INTO `osw_settings` VALUES ('13', 'cookie_path', '/', null);
INSERT INTO `osw_settings` VALUES ('14', 'cookie_domain', 'localhost', null);
INSERT INTO `osw_settings` VALUES ('15', 'logout_redirect', 'index.php', null);
INSERT INTO `osw_settings` VALUES ('16', 'activation_type', '0', null);
INSERT INTO `osw_settings` VALUES ('17', 'security_image', 'yes', 'This will make people pass the recaptcha test');
INSERT INTO `osw_settings` VALUES ('18', 'redirect_type', '1', null);
INSERT INTO `osw_settings` VALUES ('19', 'max_password', '15', null);
INSERT INTO `osw_settings` VALUES ('20', 'min_password', '6', null);
INSERT INTO `osw_settings` VALUES ('21', 'Style', 'United', 'Bootstrap style for this site. OSW uses the default bootstrap API system. No crappy WP system.');
INSERT INTO `osw_settings` VALUES ('22', 'Banner', '', null);
INSERT INTO `osw_settings` VALUES ('23', 'Logo', '', null);
INSERT INTO `osw_settings` VALUES ('24', 'Twitter', '', 'The twitter account for this grid.');
INSERT INTO `osw_settings` VALUES ('25', 'Facebook', '', 'The facebook account for this grid.');
INSERT INTO `osw_settings` VALUES ('26', 'site_admin_level', '100', 'Min. OpenSim UserLevel to access admin stuff on this site.');
INSERT INTO `osw_settings` VALUES ('27', 'DisqusShortName', 'opensimweb', 'For Disqus chat. Best to get a account at disqus.com');
INSERT INTO `osw_settings` VALUES ('28', 'SiteEmail', 'admin@gridname.com', 'Email address to use to send email to users such as when registering if activation_type is set to User');
INSERT INTO `osw_settings` VALUES ('29', 'TimeZone', 'America/Toronto', null);
INSERT INTO `osw_settings` VALUES ('30', 'ReCaptcha_Public_Key', '6LeIfPESAAAAAFi2CxcA24se170xQbiWer2HU9SQ', 'You need your own recaptcha keys here.');
INSERT INTO `osw_settings` VALUES ('31', 'ReCaptcha_Private_Key', '6LeIfPESAAAAAAzE7TQXXXXnvvUM50DXmHa9vZIR', 'Please visit http://www.google.com/recaptcha to get your own.');
INSERT INTO `osw_settings` VALUES ('32', 'Default_Female', '', 'Default Female avatar name to copy from when people log in for the first time.');
INSERT INTO `osw_settings` VALUES ('33', 'Default_Male', '', 'Default Male and Female feilds MUST be their name, not UUID key or it wont work.');
INSERT INTO `osw_settings` VALUES ('34', 'Default_Sim', '', 'Default sim name that all new users will have their home set to and login at.');
INSERT INTO `osw_settings` VALUES ('35', 'Default_Pos', '<128,128,30>', 'Default position in world. Example: <128,128,30>');
