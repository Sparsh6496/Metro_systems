-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2017 at 05:43 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metros`
--
CREATE DATABASE IF NOT EXISTS `metros` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `metros`;

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE IF NOT EXISTS `admintable` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bookingcard`
--

CREATE TABLE IF NOT EXISTS `bookingcard` (
  `route1` varchar(100) NOT NULL,
  `stn1` varchar(100) NOT NULL,
  `route2` varchar(100) NOT NULL,
  `stn2` varchar(100) NOT NULL,
  `fare` int(11) NOT NULL,
  `balance` int(100) NOT NULL,
  `trvl_time` int(11) NOT NULL,
  `s_id` int(110) NOT NULL,
  `dist` float NOT NULL,
  `stn_bw` int(11) NOT NULL,
  `bookingdate` date NOT NULL,
  `book_no` bigint(20) NOT NULL,
  PRIMARY KEY (`book_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingcard`
--

INSERT INTO `bookingcard` (`route1`, `stn1`, `route2`, `stn2`, `fare`, `balance`, `trvl_time`, `s_id`, `dist`, `stn_bw`, `bookingdate`, `book_no`) VALUES
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 47, 1000, 8, 16000003, 3.9, 4, '2016-07-08', 1),
('Blue', 'GTB Nagar', 'Blue', 'Football Chowk', 47, 953, 8, 16000003, 3.9, 4, '2016-07-08', 2),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 47, 1500, 8, 16000001, 3.9, 4, '2016-07-10', 3),
('Blue', 'GTB Nagar', 'Blue', 'Football Chowk', 47, 1453, 8, 16000001, 3.9, 4, '2016-07-11', 4),
('Blue', 'GTB Nagar', 'Blue', 'Football Chowk', 47, 2300, 8, 16000002, 3.9, 4, '2016-07-11', 5),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 47, 2253, 8, 16000002, 3.9, 4, '2016-07-11', 6),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 47, 1406, 8, 16000001, 3.9, 4, '2016-07-11', 7),
('Blue', 'Football Chowk', 'Red', 'Birbal Nagar', 7, 2206, 4, 16000002, 2, 1, '2016-07-15', 8),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 41, 89, 8, 16000003, 3.9, 4, '2016-07-15', 9),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 41, 49, 8, 16000003, 3.9, 4, '2016-07-15', 10),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 42, 2360, 8, 16000001, 3.9, 4, '2016-08-03', 11);

-- --------------------------------------------------------

--
-- Table structure for table `bookingtoken`
--

CREATE TABLE IF NOT EXISTS `bookingtoken` (
  `route1` varchar(100) NOT NULL,
  `stn1` varchar(100) NOT NULL,
  `route2` varchar(100) NOT NULL,
  `stn2` varchar(100) NOT NULL,
  `fare` int(11) NOT NULL,
  `no_of_tckt` int(100) NOT NULL,
  `totalfare` int(11) NOT NULL,
  `trvl_time` int(11) NOT NULL,
  `dist` float NOT NULL,
  `stn_bw` int(11) NOT NULL,
  `bookingdate` datetime NOT NULL,
  `S.no` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`S.no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bookingtoken`
--

INSERT INTO `bookingtoken` (`route1`, `stn1`, `route2`, `stn2`, `fare`, `no_of_tckt`, `totalfare`, `trvl_time`, `dist`, `stn_bw`, `bookingdate`, `S.no`) VALUES
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 52, 1, 52, 8, 3.9, 4, '2016-07-11 13:18:28', 1),
('Blue', 'GTB Nagar', 'Blue', 'Football Chowk', 52, 5, 260, 8, 3.9, 4, '2016-07-11 13:35:35', 2),
('Red', 'Birbal Nagar', 'Blue', 'Football Chowk', 90, 3, 270, 50, 43, 5, '2016-07-12 15:41:52', 3),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 52, 3, 156, 8, 3.9, 4, '2016-07-15 11:22:23', 4),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 45, 1, 45, 8, 3.9, 4, '2016-07-15 12:14:25', 5),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 45, 1, 45, 8, 3.9, 4, '2016-07-15 12:16:11', 6),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 45, 1, 45, 8, 3.9, 4, '2016-07-15 12:16:50', 7),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 47, 3, 141, 8, 3.9, 4, '2016-07-25 12:34:17', 8),
('Blue', 'BMC Chowk', 'Blue', 'Football Chowk', 20, 3, 60, 10, 5, 4, '2016-09-07 12:37:09', 9),
('Blue', 'BMC Chowk', 'Blue', 'Football Chowk', 20, 3, 60, 10, 5, 4, '2016-09-07 12:37:45', 10),
('Blue', 'BMC Chowk', 'Blue', 'Football Chowk', 20, 4, 80, 10, 5, 4, '2016-10-10 23:49:31', 11);

-- --------------------------------------------------------

--
-- Table structure for table `employeetable`
--

CREATE TABLE IF NOT EXISTS `employeetable` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeetable`
--

INSERT INTO `employeetable` (`username`, `password`) VALUES
('emp', '0123'),
('nikhil', 'bansal');

-- --------------------------------------------------------

--
-- Table structure for table `faretable`
--

CREATE TABLE IF NOT EXISTS `faretable` (
  `route1` varchar(100) NOT NULL,
  `stn1` varchar(100) NOT NULL,
  `route2` varchar(100) NOT NULL,
  `stn2` varchar(100) NOT NULL,
  `fare` int(11) NOT NULL,
  `trvl_time` int(11) NOT NULL,
  `dist` float NOT NULL,
  `stn_bw` int(11) NOT NULL,
  PRIMARY KEY (`route1`,`stn1`,`route2`,`stn2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faretable`
--

INSERT INTO `faretable` (`route1`, `stn1`, `route2`, `stn2`, `fare`, `trvl_time`, `dist`, `stn_bw`) VALUES
('Blue', 'Birbal Nagar', 'Red', 'Football Chowk', 8, 4, 2, 1),
('Blue', 'BMC Chowk', 'Blue', 'Football Chowk', 20, 10, 5, 4),
('Blue', 'Football Chowk', 'Blue', 'BMC Chowk', 20, 10, 5, 4),
('Blue', 'Football Chowk', 'Blue', 'GTB Nagar', 47, 8, 3.9, 4),
('Blue', 'Football Chowk', 'Red', 'Birbal Nagar', 8, 4, 2, 1),
('Blue', 'GTB Nagar', 'Blue', 'Football Chowk', 47, 8, 3.9, 4),
('Orange', 'BMC Chowk', 'Blue', 'Football Chowk', 12, 8, 4, 6),
('Orange', 'Football Chowk', 'Blue', 'BMC Chowk', 12, 8, 4, 6),
('Red', 'Birbal Nagar', 'Blue', 'Football Chowk', 90, 50, 43, 5),
('Red', 'Birbal Nagar', 'violet', 'Shimla Pahari', 5, 3, 1.5, 0),
('Red', 'Football Chowk', 'Blue', 'Birbal Nagar', 90, 50, 43, 5),
('Red', 'Shimla Pahari', 'violet', 'Birbal Nagar', 5, 3, 1.5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `metrotable`
--

CREATE TABLE IF NOT EXISTS `metrotable` (
  `metro_no` int(100) NOT NULL,
  `no_of_car` int(10) NOT NULL,
  `car_cap` int(100) NOT NULL,
  `Route` varchar(100) NOT NULL,
  `freq` int(10) NOT NULL,
  `date_of_run` date NOT NULL,
  PRIMARY KEY (`metro_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metrotable`
--

INSERT INTO `metrotable` (`metro_no`, `no_of_car`, `car_cap`, `Route`, `freq`, `date_of_run`) VALUES
(212, 81, 5252, '', 0, '0000-00-00'),
(2129, 81, 5252, '', 0, '0000-00-00'),
(4564, 4, 250, '', 0, '0000-00-00'),
(152142, 10, 750, '', 0, '0000-00-00'),
(152143, 8, 650, '', 0, '0000-00-00'),
(1515122, 6, 500, 'Yellow', 15, '2016-06-10'),
(1515151, 4, 300, 'Red', 303, '2016-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `routetable`
--

CREATE TABLE IF NOT EXISTS `routetable` (
  `Route` varchar(100) NOT NULL,
  PRIMARY KEY (`Route`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routetable`
--

INSERT INTO `routetable` (`Route`) VALUES
('Blue'),
('ghyu'),
('Orange'),
('pink'),
('Red'),
('violet'),
('Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `smartcard`
--

CREATE TABLE IF NOT EXISTS `smartcard` (
  `s_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phn_no` bigint(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Idproof` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cardtype` varchar(100) NOT NULL,
  `balance` double NOT NULL,
  `datecreated` date NOT NULL,
  `exp_date` date NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartcard`
--

INSERT INTO `smartcard` (`s_id`, `name`, `age`, `gender`, `phn_no`, `address`, `Idproof`, `image`, `cardtype`, `balance`, `datecreated`, `exp_date`) VALUES
(16000001, 'Sparsh Bansal', 21, 'male', 9815807660, '33,34 Nijatam Nagar', 'Aadhar Card No.', 'Images\\\\1467622060602_DSC_0199.jpg', 'standard', 2367.30009765625, '2016-07-04', '2017-07-04'),
(16000002, 'NIkhil', 19, 'Male', 7307400085, '33 nijatam nagar jalandhar', 'LIcene No.', 'Images\\1467623630995_IMG_0768.JPG', 'premium', 2719.199, '2016-07-04', '2017-07-04'),
(16000003, 'sdasd', 21, 'Female', 124234, 'vdfvdfgdfgdfvdfvfdfvd', 'dvdfvdfvdbvdbdbb', 'Images\\1467623757651_DSC01837.JPG', 'standard', 8.332999999999998, '2016-07-04', '2017-07-04'),
(16000004, 'Khushi', 11, 'Female', 9815402201, 'Lane 4,Birbal Nagar', 'license', 'Images\\1468319614166_DSC_0175.JPG', 'premium', 250.3, '2016-07-12', '2017-07-12'),
(16000005, 'aDAD', 45, 'Male', 78971565, 'ZDXVXFBCNVN', 'BCHGFFGJGHJGHJGHJ', 'Images\\1468565783784_batman-arkham-origins-video-game-hd-wallpaper-1080p.jpg', 'premium', 1666, '2016-07-15', '2017-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `stationtable`
--

CREATE TABLE IF NOT EXISTS `stationtable` (
  `Route` varchar(100) NOT NULL,
  `stn_name` varchar(100) NOT NULL,
  PRIMARY KEY (`Route`,`stn_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationtable`
--

INSERT INTO `stationtable` (`Route`, `stn_name`) VALUES
('Blue', 'BMC Chowk'),
('Blue', 'Football Chowk'),
('Blue', 'GTB Nagar'),
('Orange', 'BMC Chowk'),
('Orange', 'PAP Chowk'),
('Red', 'Birbal Nagar'),
('violet', 'Shimla Pahari');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stationtable`
--
ALTER TABLE `stationtable`
  ADD CONSTRAINT `mycons1` FOREIGN KEY (`Route`) REFERENCES `routetable` (`Route`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
