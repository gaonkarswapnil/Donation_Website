-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2021 at 05:42 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `charitylife`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
`user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `username`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_cities`
--

CREATE TABLE IF NOT EXISTS `all_cities` (
  `city_name` text,
  `city_code` text,
  `state_code` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `all_states`
--

CREATE TABLE IF NOT EXISTS `all_states` (
  `state_code` text,
  `state_name` text,
  `country_code` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_states`
--

INSERT INTO `all_states` (`state_code`, `state_name`, `country_code`) VALUES
('1', 'Andaman & Nicobar [AN]', '+91');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE IF NOT EXISTS `donations` (
`donation_id` int(11) NOT NULL,
  `donar_firstname` varchar(100) NOT NULL,
  `donar_lastname` varchar(100) NOT NULL,
  `donar_email` varchar(100) NOT NULL,
  `ngo_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `food_donation_flag` tinyint(1) NOT NULL,
  `clothes_donation_flag` tinyint(1) NOT NULL,
  `medicine_donation_flag` tinyint(1) NOT NULL,
  `money_donation_flag` tinyint(1) NOT NULL,
  `food_donation_text` text,
  `clothes_donation_text` text,
  `medicine_donation_text` text,
  `money_donation_text` text NOT NULL,
  `donation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `invoice_no` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `donar_firstname`, `donar_lastname`, `donar_email`, `ngo_name`, `address`, `state`, `district`, `pincode`, `food_donation_flag`, `clothes_donation_flag`, `medicine_donation_flag`, `money_donation_flag`, `food_donation_text`, `clothes_donation_text`, `medicine_donation_text`, `money_donation_text`, `donation_date`, `invoice_no`) VALUES
(1, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Rahul', 'Kalyan', 'Maharashtra', 'Thane', 421306, 1, 1, 1, 1, '1Kg rice', '5 Shirt', '1 Covishield', '5000 RS', '2021-07-31 15:09:54', 0),
(2, 'Swapnil', 'Gaonkar', 'admin@admin.com', 'Rahul', 'Kalyan', 'Maharashtra', 'Thane', 421306, 0, 0, 1, 1, '', '', 'masks', '5000 Rs', '2021-07-31 15:09:54', 0),
(3, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Foundation', 'Kalyan', 'Maharashtra', 'Thane', 421306, 1, 0, 0, 1, 'Food', '', '', '5800', '2021-07-31 15:09:54', 0),
(4, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Foundation', 'Kalyabn', 'Maharashtra', 'Thane', 421306, 0, 0, 1, 1, '', '', 'Covishield', '5000', '2021-07-31 15:11:24', 0),
(5, 'Kunal', 'Pawar', 'kunalpawar@gmail.com', 'Rahul', 'Karjat', 'Maharashtra', 'Raigad', 410201, 0, 1, 0, 1, '', 'Shirt', '', '500', '2021-08-01 08:31:37', 0),
(6, 'Kunal', 'Pawar', 'kunalpawar@gmail.com', 'XYZ', 'Karjat', 'Maharashtra', 'Raigad', 410201, 0, 0, 0, 1, '', NULL, NULL, '500', '2021-08-01 11:51:18', 0),
(7, 'Kunal', 'Pawar', 'kunalpawar@gmail.com', 'XYZ', 'Karjat', 'Maharashtra', 'Raigad', 410201, 1, 0, 0, 0, 'XYZ', NULL, NULL, '', '2021-08-01 11:52:27', 0),
(8, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Foundation', 'Kalyan', 'Maharashtra', 'Thane', 421306, 0, 1, 0, 1, '', 'Shirt', '', '1000', '2021-08-01 13:10:41', 0),
(9, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Foundation', 'Kalyabn', 'Maharashtra', 'Thane', 421306, 0, 0, 1, 1, '', '', 'ABC', '5000', '2021-08-01 14:15:39', 0),
(10, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Rahul', 'Kalyan', 'Maharashtra', 'Thane', 421306, 0, 0, 1, 1, '', '', 'Paracetomal', '5000', '2021-08-01 14:35:12', 0.9593250488472792),
(11, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Rahul', 'Kalyan', 'Maharashtra', 'Thane', 421306, 0, 1, 1, 1, '', 'Shirt', 'Paracetomal', '8000', '2021-08-01 14:39:23', 0.044435533065110056),
(12, 'Swapnil', 'Gaonkar', 'gaonkarswapnil1@gmail.com', 'Rahul', 'Kalyan', 'Maharashtra', 'Thane', 421306, 0, 1, 1, 1, '', 'Shirt', 'ABC', '8420', '2021-08-01 14:58:41', 0.3585349390354249);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_details`
--

CREATE TABLE IF NOT EXISTS `ngo_details` (
  `ngo_name` varchar(100) NOT NULL,
  `manager_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `description` text NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `food_donation_flag` tinyint(1) NOT NULL,
  `clothes_donation_flag` tinyint(1) NOT NULL,
  `medicine_donation_flag` tinyint(1) NOT NULL,
  `money_donation_flag` tinyint(1) NOT NULL,
  `is_reviewed` tinyint(1) NOT NULL,
`ngo_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ngo_details`
--

INSERT INTO `ngo_details` (`ngo_name`, `manager_name`, `address`, `state`, `district`, `pincode`, `description`, `contact_no`, `food_donation_flag`, `clothes_donation_flag`, `medicine_donation_flag`, `money_donation_flag`, `is_reviewed`, `ngo_id`, `email`) VALUES
('XYZ', 'Rahul', 'Kalyan', 'Maharashtra', 'Thane', 421306, 'XYZABCF', 9022695479, 1, 0, 0, 1, 1, 1, ''),
('Foundation', 'Swapnil', 'Kalyan', 'Maharashtra', 'Thane', 421306, 'Very Good', 9022695479, 1, 1, 1, 1, 1, 12, 'admin@admin.com'),
('Rahul', 'Rahul', 'Thane', 'Maharashtra', 'Thane', 421306, 'Helpful', 9854763581, 1, 1, 1, 1, 1, 14, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
`user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `firstname`, `lastname`, `address`, `state`, `district`, `pincode`, `email`, `mobile_no`, `password`) VALUES
(1, 'Swapnil', 'Gaonkar', 'B/304, Kalyan', 'Maharashtra', 'Thane', 421306, 'admin@admin.com', 9022695479, 'admin'),
(2, 'Pratik', 'Gaonkar', 'B/0304., Kalyan', 'Maharashtra', 'Thane', 421306, 'admin@admin.com', 9022695479, 'admin'),
(3, 'Rahul', 'Chauhan', 'Ulhasnagar', 'Maharashtra', 'Thane', 421003, 'admin@gmail.com', 9875641230, 'rahul'),
(4, 'Swapnil', 'Gaonkar', 'Kalyabn', 'Maharashtra', 'Thane', 421306, 'gaonkarswapnil1@gmail.com', 9022695479, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
 ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `ngo_details`
--
ALTER TABLE `ngo_details`
 ADD PRIMARY KEY (`ngo_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ngo_details`
--
ALTER TABLE `ngo_details`
MODIFY `ngo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
