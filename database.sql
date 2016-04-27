--  
-- UserApplePie v3 Forum Plugin
-- @author David (DaVaR) Sargent
-- @email davar@thedavar.net
-- @website http://www.userapplepie.com
-- @version 1.0.0
-- @release_date 04/27/2016
--

-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2016
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

-- Instructions
-- Import this file to your mySQL database 
-- Update the prefix "uap3_" if needed

-- UAP 3 Forum Plugin Database Data

-- --------------------------------------------------------

--
-- Table structure for table `uap3_forum_cat`
--

CREATE TABLE IF NOT EXISTS `uap3_forum_cat` (
  `forum_id` int(20) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(255) NOT NULL,
  `forum_title` varchar(255) NOT NULL,
  `forum_cat` varchar(255) DEFAULT NULL,
  `forum_des` text NOT NULL,
  `forum_perm` int(20) NOT NULL DEFAULT '1',
  `forum_order_title` int(11) NOT NULL DEFAULT '1',
  `forum_order_cat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_forum_groups`
--

CREATE TABLE IF NOT EXISTS `uap3_forum_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_group` varchar(50) NOT NULL,
  `groupID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_forum_images`
--

CREATE TABLE IF NOT EXISTS `uap3_forum_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `imageLocation` varchar(255) NOT NULL,
  `imageSize` int(11) NOT NULL,
  `forumID` int(11) DEFAULT NULL,
  `forumTopicID` int(11) DEFAULT NULL,
  `forumTopicReplyID` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_forum_posts`
--

CREATE TABLE IF NOT EXISTS `uap3_forum_posts` (
  `forum_post_id` int(20) NOT NULL AUTO_INCREMENT,
  `forum_id` int(20) NOT NULL,
  `forum_user_id` int(20) NOT NULL,
  `forum_title` varchar(255) NOT NULL,
  `forum_content` text NOT NULL,
  `forum_edit_date` varchar(20) DEFAULT NULL,
  `forum_status` int(11) NOT NULL DEFAULT '1',
  `subscribe_email` varchar(10) NOT NULL DEFAULT 'true',
  `allow` varchar(11) NOT NULL DEFAULT 'TRUE',
  `hide_reason` varchar(255) NOT NULL,
  `hide_userID` int(11) NOT NULL,
  `hide_timestamp` datetime NOT NULL,
  `forum_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`forum_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_forum_posts_replys`
--

CREATE TABLE IF NOT EXISTS `uap3_forum_posts_replys` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fpr_post_id` int(20) NOT NULL,
  `fpr_id` int(20) NOT NULL,
  `fpr_user_id` int(20) NOT NULL,
  `fpr_title` varchar(255) NOT NULL,
  `fpr_content` text NOT NULL,
  `subscribe_email` varchar(10) NOT NULL DEFAULT 'true',
  `fpr_edit_date` varchar(20) DEFAULT NULL,
  `allow` varchar(11) NOT NULL DEFAULT 'TRUE',
  `hide_reason` varchar(255) NOT NULL,
  `hide_userID` int(11) NOT NULL,
  `hide_timestamp` datetime NOT NULL,
  `fpr_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_forum_settings`
--

CREATE TABLE IF NOT EXISTS `uap3_forum_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_title` varchar(255) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `setting_value_2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_sweets`
--

CREATE TABLE IF NOT EXISTS `uap3_sweets` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `sweet_id` int(10) DEFAULT NULL,
  `sweet_sec_id` int(10) DEFAULT NULL,
  `sweet_location` varchar(255) DEFAULT NULL,
  `sweet_user_ip` varchar(50) DEFAULT NULL,
  `sweet_server` varchar(255) DEFAULT NULL,
  `sweet_uri` varchar(255) DEFAULT NULL,
  `sweet_owner_userid` int(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uap3_views`
--

CREATE TABLE IF NOT EXISTS `uap3_views` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `view_id` int(10) NOT NULL,
  `view_sec_id` int(10) DEFAULT NULL,
  `view_location` varchar(255) NOT NULL,
  `view_user_ip` varchar(50) NOT NULL,
  `view_server` varchar(255) NOT NULL,
  `view_uri` varchar(255) NOT NULL,
  `view_owner_userid` int(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- Dumping data for table `uap3_forum_cat`
--

INSERT INTO `uap3_forum_cat` (`forum_id`, `forum_name`, `forum_title`, `forum_cat`, `forum_des`, `forum_perm`, `forum_order_title`, `forum_order_cat`) VALUES
(1, 'forum', 'Forum', 'Welcome', 'Welcome to the Forum.', 1, 1, 1);

-- --------------------------------------------------------

--
-- Dumping data for table `uap3_forum_settings`
--

INSERT INTO `uap3_forum_settings` (`id`, `setting_title`, `setting_value`, `setting_value_2`) VALUES
(1, 'forum_on_off', 'Enabled', ''),
(2, 'forum_title', 'Forum', ''),
(3, 'forum_description', 'Welcome to the Forum', ''),
(4, 'forum_topic_limit', '20', ''),
(5, 'forum_topic_reply_limit', '10', '');
