-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2014 at 04:39 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
 
--
-- Database: `dvdshack`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `distributors`
--
 
CREATE TABLE IF NOT EXISTS `distributors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;
 
--
-- Dumping data for table `distributors`
--
 
INSERT INTO `distributors` (`id`, `name`, `address`) VALUES
(1, 'ABC Distributors', '123 Somewhere St\r\nNowheresville\r\nNEW ZEALAND'),
(2, 'LOL DVDS', '234 tenhs\r\naonsuth\r\nNZ'),
(3, 'Problem? DVDS', ''),
(4, 'Forever a DVD', '34eou \r\noaeu\r\noaeu aoeu\r\n');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `dvds`
--
 
CREATE TABLE IF NOT EXISTS `dvds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `rating` varchar(4) NOT NULL,
  `runtime` smallint(6) NOT NULL,
  `release_date` date NOT NULL,
  `distributor_id` bigint(20) unsigned NOT NULL,
  `member_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;
 
--
-- Dumping data for table `dvds`
--
 
INSERT INTO `dvds` (`id`, `title`, `genre`, `rating`, `runtime`, `release_date`, `distributor_id`, `member_id`) VALUES
(3, 'The Big Lebowski', 'Drama', 'M', 150, '2003-06-06', 1, 1);
 
-- --------------------------------------------------------
 
--
-- Table structure for table `members`
--
 
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `given_name` varchar(255) NOT NULL,
  `family_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;
 
--
-- Dumping data for table `members`
--
 
INSERT INTO `members` (`id`, `given_name`, `family_name`, `phone`, `email`, `address`) VALUES
(1, 'Brett', 'Taylor', '02112345678', 'brett@test.com', '123 Somewhere St\r\nasonteuh\r\nnsaothu'),
(2, 'Alice', 'Anderson', '0210987654', 'alice@test.com', 'aoeu\r\naoeu\r\naoeu'),
(3, 'Bob', 'Builder', '027 2342342', 'bob@test.com', 'astnudhoae'),
(4, 'Christ', 'Almighty', '09 1231234', 'christ@test.com', '123123\r\n123\r\n123\r\n123');
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
