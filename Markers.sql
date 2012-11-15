-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: 10.246.16.33:3306
-- Generation Time: Nov 12, 2012 at 02:30 PM
-- Server version: 5.1.63
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schandorffdesig`
--

-- --------------------------------------------------------

--
-- Table structure for table `Markers`
--

CREATE TABLE IF NOT EXISTS `Markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(11) NOT NULL,
  `longtitude` varchar(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `category` int(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Markers`
--

INSERT INTO `Markers` (`id`, `latitude`, `longtitude`, `title`, `category`, `content`) VALUES
(2, '57.7973333', '12.0502107', 'Angered', 0, 'Representing :)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
