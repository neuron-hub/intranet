-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 13, 2012 at 07:00 PM
-- Server version: 5.5.9
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` VALUES(1, NULL, NULL, NULL, 'controllers', 1, 38);
INSERT INTO `acos` VALUES(2, 1, NULL, NULL, 'Groups', 2, 13);
INSERT INTO `acos` VALUES(3, 2, NULL, NULL, 'index', 3, 4);
INSERT INTO `acos` VALUES(4, 2, NULL, NULL, 'view', 5, 6);
INSERT INTO `acos` VALUES(5, 2, NULL, NULL, 'add', 7, 8);
INSERT INTO `acos` VALUES(6, 2, NULL, NULL, 'edit', 9, 10);
INSERT INTO `acos` VALUES(7, 2, NULL, NULL, 'delete', 11, 12);
INSERT INTO `acos` VALUES(8, 1, NULL, NULL, 'Pages', 14, 17);
INSERT INTO `acos` VALUES(9, 8, NULL, NULL, 'display', 15, 16);
INSERT INTO `acos` VALUES(10, 1, NULL, NULL, 'Users', 18, 35);
INSERT INTO `acos` VALUES(11, 10, NULL, NULL, 'index', 19, 20);
INSERT INTO `acos` VALUES(12, 10, NULL, NULL, 'login', 21, 22);
INSERT INTO `acos` VALUES(13, 10, NULL, NULL, 'logout', 23, 24);
INSERT INTO `acos` VALUES(14, 10, NULL, NULL, 'view', 25, 26);
INSERT INTO `acos` VALUES(15, 10, NULL, NULL, 'add', 27, 28);
INSERT INTO `acos` VALUES(16, 10, NULL, NULL, 'edit', 29, 30);
INSERT INTO `acos` VALUES(17, 10, NULL, NULL, 'delete', 31, 32);
INSERT INTO `acos` VALUES(18, 10, NULL, NULL, 'initDB', 33, 34);
INSERT INTO `acos` VALUES(19, 1, NULL, NULL, 'AclExtras', 36, 37);
INSERT INTO `acos` VALUES(20, NULL, NULL, NULL, 'controllers', 39, 40);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` VALUES(1, NULL, 'Group', 1, NULL, 1, 2);
INSERT INTO `aros` VALUES(2, NULL, 'User', 1, NULL, 3, 4);
INSERT INTO `aros` VALUES(3, NULL, 'User', 2, NULL, 5, 6);
INSERT INTO `aros` VALUES(4, NULL, 'Group', 2, NULL, 7, 8);
INSERT INTO `aros` VALUES(5, NULL, 'Group', 3, NULL, 9, 10);
INSERT INTO `aros` VALUES(6, NULL, 'User', 3, NULL, 11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` VALUES(1, 1, 1, '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES(2, 4, 20, '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES(3, 1, 20, '-1', '-1', '-1', '-1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` VALUES(1, 'Project Manager', '2012-09-13 17:05:17', '2012-09-13 17:05:17');
INSERT INTO `groups` VALUES(2, 'SuperAdmin', '2012-09-13 17:11:00', '2012-09-13 17:11:00');
INSERT INTO `groups` VALUES(3, 'Users', '2012-09-13 17:11:03', '2012-09-13 17:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'user', '45eb961530aed1d631bd20edcc648a4cd6d94015', 3, '2012-09-13 17:10:31', '2012-09-13 17:56:15');
INSERT INTO `users` VALUES(2, 'admin', '828985ed14d36068e1befe4112d98b2d4d71ff63', 2, '2012-09-13 17:10:45', '2012-09-13 17:56:25');
INSERT INTO `users` VALUES(3, 'manager', 'd6dfebe8667f1df1cf24180e5acaae3ce1fa1b2f', 1, '2012-09-13 18:05:17', '2012-09-13 18:05:17');
