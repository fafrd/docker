-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2015 at 09:56 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `turdle`
--
CREATE DATABASE IF NOT EXISTS `turdle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `turdle`;

-- --------------------------------------------------------

--
-- Table structure for table `dump`
--

CREATE TABLE IF NOT EXISTS `dump` (
  `d_dumpid` int(11) NOT NULL AUTO_INCREMENT,
  `d_userid` int(11) NOT NULL,
  `d_locationid` int(255) DEFAULT NULL,
  `d_color` varchar(255) DEFAULT NULL,
  `d_size` int(255) DEFAULT NULL,
  `d_type` varchar(255) DEFAULT NULL,
  `d_dumptime_length` int(255) DEFAULT NULL,
  `d_dumpstart` datetime NOT NULL,
  `d_dumpend` datetime NOT NULL,
  PRIMARY KEY (`d_dumpid`),
  UNIQUE KEY `d_dumpid` (`d_dumpid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `l_locationid` int(11) NOT NULL AUTO_INCREMENT,
  `l_userid` int(11) DEFAULT NULL,
  `l_latitude` double NOT NULL,
  `l_longitude` double NOT NULL,
  `l_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`l_locationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE IF NOT EXISTS `statistics` (
  `s_userid` int(11) NOT NULL,
  `s_numdumps` int(255) DEFAULT NULL,
  `s_dumptime_total` int(255) DEFAULT NULL,
  `s_dumptime_average` int(255) DEFAULT NULL,
  `s_dumptime_stddev` int(255) DEFAULT NULL,
  `s_size_average` int(255) DEFAULT NULL,
  `s_size_stddev` int(255) DEFAULT NULL,
  `s_color_most_frequent` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_username` char(25) NOT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_gender` char(1) DEFAULT NULL,
  `u_userid` int(11) NOT NULL AUTO_INCREMENT,
  `u_height` int(255) NOT NULL,
  `u_weight` int(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_age` int(255) NOT NULL,
  `u_signupdate` datetime NOT NULL,
  PRIMARY KEY (`u_userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

