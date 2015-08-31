-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2013 at 06:48 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clueless`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(10) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `difficulty` int(2) DEFAULT '1',
  `content` varchar(250) DEFAULT NULL,
  `background` varchar(250) DEFAULT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `placeholder` varchar(250) DEFAULT NULL,
  `cookie` varchar(250) DEFAULT NULL,
  `javascript` varchar(250) DEFAULT NULL,
  `html_comment` varchar(250) DEFAULT NULL,
  `success_image` varchar(200) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `log_answers`
--

CREATE TABLE IF NOT EXISTS `log_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_uid` bigint(50) DEFAULT NULL,
  `fb_name` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(100) DEFAULT NULL,
  `fb_uid` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `passtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile` varchar(20) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table  `hints_log`
--

CREATE TABLE IF NOT EXISTS `hints_log` (
  `id` int(11) NOT NULL,
  `level` int(10) NOT NULL,
  `fb_uid` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;

--
-- Indexes for table `hints_log`
--
ALTER TABLE `hints_log`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `hints_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;  


--
-- Table structure for table `hints`
--

CREATE TABLE IF NOT EXISTS `hints` (
  `id` int(11) NOT NULL,
  `level` int(10) NOT NULL,
  `content` varchar(250) NOT NULL,
  `activatetimer` int(10) NOT NULL COMMENT 'time in minutes from activation time'
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

ALTER TABLE `hints`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
