-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 11:22 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartpass`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `busservice`
--

CREATE TABLE `busservice` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `busservicecode` varchar(1000) DEFAULT NULL,
  `busservicename` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busservice`
--

INSERT INTO `busservice` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `busservicecode`, `busservicename`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '1', 'Deluxe', 'Active', '1115', '2018-06-27 08:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `state` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Active',
  `updateby` varchar(1000) NOT NULL DEFAULT 'Master',
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`sno`, `id`, `name`, `state`, `status`, `updateby`, `updatedate`) VALUES
(1, 1, 'Mumbai', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(2, 2, 'Delhi', 'Delhi', 'Active', 'Master', '2018-05-22 01:48:02'),
(3, 3, 'Bengaluru', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(4, 4, 'Ahmedabad', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(5, 5, 'Hyderabad', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(6, 6, 'Chennai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(7, 7, 'Kolkata', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(8, 8, 'Pune', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(9, 9, 'Jaipur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(10, 10, 'Surat', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(11, 11, 'Lucknow', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(12, 12, 'Kanpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(13, 13, 'Nagpur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(14, 14, 'Patna', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(15, 15, 'Indore', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(16, 16, 'Thane', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(17, 17, 'Bhopal', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(18, 18, 'Visakhapatnam', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(19, 19, 'Vadodara', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(20, 20, 'Firozabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(21, 21, 'Ludhiana', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(22, 22, 'Rajkot', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(23, 23, 'Agra', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(24, 24, 'Siliguri', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(25, 25, 'Nashik', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(26, 26, 'Faridabad', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(27, 27, 'Patiala', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(28, 28, 'Meerut', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(29, 29, 'Kalyan-Dombivali', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(30, 30, 'Vasai-Virar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(31, 31, 'Varanasi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(32, 32, 'Srinagar', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(33, 33, 'Dhanbad', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(34, 34, 'Jodhpur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(35, 35, 'Amritsar', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(36, 36, 'Raipur', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(37, 37, 'Allahabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(38, 38, 'Coimbatore', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(39, 39, 'Jabalpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(40, 40, 'Gwalior', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(41, 41, 'Vijayawada', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(42, 42, 'Madurai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(43, 43, 'Guwahati', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(44, 44, 'Chandigarh', 'Chandigarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(45, 45, 'Hubli-Dharwad', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(46, 46, 'Amroha', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(47, 47, 'Moradabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(48, 48, 'Gurgaon', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(49, 49, 'Aligarh', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(50, 50, 'Solapur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(51, 51, 'Ranchi', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(52, 52, 'Jalandhar', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(53, 53, 'Tiruchirappalli', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(54, 54, 'Bhubaneswar', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(55, 55, 'Salem', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(56, 56, 'Warangal', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(57, 57, 'Mira-Bhayandar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(58, 58, 'Thiruvananthapuram', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(59, 59, 'Bhiwandi', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(60, 60, 'Saharanpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(61, 61, 'Guntur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(62, 62, 'Amravati', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(63, 63, 'Bikaner', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(64, 64, 'Noida', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(65, 65, 'Jamshedpur', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(66, 66, 'Bhilai Nagar', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(67, 67, 'Cuttack', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(68, 68, 'Kochi', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(69, 69, 'Udaipur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(70, 70, 'Bhavnagar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(71, 71, 'Dehradun', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(72, 72, 'Asansol', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(73, 73, 'Nanded-Waghala', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(74, 74, 'Ajmer', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(75, 75, 'Jamnagar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(76, 76, 'Ujjain', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(77, 77, 'Sangli', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(78, 78, 'Loni', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(79, 79, 'Jhansi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(80, 80, 'Pondicherry', 'Puducherry', 'Active', 'Master', '2018-05-22 01:48:02'),
(81, 81, 'Nellore', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(82, 82, 'Jammu', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(83, 83, 'Belagavi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(84, 84, 'Raurkela', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(85, 85, 'Mangaluru', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(86, 86, 'Tirunelveli', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(87, 87, 'Malegaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(88, 88, 'Gaya', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(89, 89, 'Tiruppur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(90, 90, 'Davanagere', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(91, 91, 'Kozhikode', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(92, 92, 'Akola', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(93, 93, 'Kurnool', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(94, 94, 'Bokaro Steel City', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(95, 95, 'Rajahmundry', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(96, 96, 'Ballari', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(97, 97, 'Agartala', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(98, 98, 'Bhagalpur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(99, 99, 'Latur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(100, 100, 'Dhule', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(101, 101, 'Korba', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(102, 102, 'Bhilwara', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(103, 103, 'Brahmapur', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(104, 104, 'Mysore', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(105, 105, 'Muzaffarpur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(106, 106, 'Ahmednagar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(107, 107, 'Kollam', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(108, 108, 'Raghunathganj', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(109, 109, 'Bilaspur', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(110, 110, 'Shahjahanpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(111, 111, 'Thrissur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(112, 112, 'Alwar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(113, 113, 'Kakinada', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(114, 114, 'Nizamabad', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(115, 115, 'Sagar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(116, 116, 'Tumkur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(117, 117, 'Hisar', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(118, 118, 'Rohtak', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(119, 119, 'Panipat', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(120, 120, 'Darbhanga', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(121, 121, 'Kharagpur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(122, 122, 'Aizawl', 'Mizoram', 'Active', 'Master', '2018-05-22 01:48:02'),
(123, 123, 'Ichalkaranji', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(124, 124, 'Tirupati', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(125, 125, 'Karnal', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(126, 126, 'Bathinda', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(127, 127, 'Rampur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(128, 128, 'Shivamogga', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(129, 129, 'Ratlam', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(130, 130, 'Modinagar', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(131, 131, 'Durg', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(132, 132, 'Shillong', 'Meghalaya', 'Active', 'Master', '2018-05-22 01:48:02'),
(133, 133, 'Imphal', 'Manipur', 'Active', 'Master', '2018-05-22 01:48:02'),
(134, 134, 'Hapur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(135, 135, 'Ranipet', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(136, 136, 'Anantapur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(137, 137, 'Arrah', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(138, 138, 'Karimnagar', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(139, 139, 'Parbhani', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(140, 140, 'Etawah', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(141, 141, 'Bharatpur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(142, 142, 'Begusarai', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(143, 143, 'New Delhi', 'Delhi', 'Active', 'Master', '2018-05-22 01:48:02'),
(144, 144, 'Chhapra', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(145, 145, 'Kadapa', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(146, 146, 'Ramagundam', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(147, 147, 'Pali', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(148, 148, 'Satna', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(149, 149, 'Vizianagaram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(150, 150, 'Katihar', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(151, 151, 'Hardwar', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(152, 152, 'Sonipat', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(153, 153, 'Nagercoil', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(154, 154, 'Thanjavur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(155, 155, 'Murwara (Katni)', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(156, 156, 'Naihati', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(157, 157, 'Sambhal', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(158, 158, 'Nadiad', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(159, 159, 'Yamunanagar', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(160, 160, 'English Bazar', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(161, 161, 'Eluru', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(162, 162, 'Munger', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(163, 163, 'Panchkula', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(164, 164, 'Raayachuru', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(165, 165, 'Panvel', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(166, 166, 'Deoghar', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(167, 167, 'Ongole', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(168, 168, 'Nandyal', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(169, 169, 'Morena', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(170, 170, 'Bhiwani', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(171, 171, 'Porbandar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(172, 172, 'Palakkad', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(173, 173, 'Anand', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(174, 174, 'Purnia', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(175, 175, 'Baharampur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(176, 176, 'Barmer', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(177, 177, 'Morvi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(178, 178, 'Orai', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(179, 179, 'Bahraich', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(180, 180, 'Sikar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(181, 181, 'Vellore', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(182, 182, 'Singrauli', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(183, 183, 'Khammam', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(184, 184, 'Mahesana', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(185, 185, 'Silchar', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(186, 186, 'Sambalpur', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(187, 187, 'Rewa', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(188, 188, 'Unnao', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(189, 189, 'Hugli-Chinsurah', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(190, 190, 'Raiganj', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(191, 191, 'Phusro', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(192, 192, 'Adityapur', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(193, 193, 'Alappuzha', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(194, 194, 'Bahadurgarh', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(195, 195, 'Machilipatnam', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(196, 196, 'Rae Bareli', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(197, 197, 'Jalpaiguri', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(198, 198, 'Bharuch', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(199, 199, 'Pathankot', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(200, 200, 'Hoshiarpur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(201, 201, 'Baramula', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(202, 202, 'Adoni', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(203, 203, 'Jind', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(204, 204, 'Tonk', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(205, 205, 'Tenali', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(206, 206, 'Kancheepuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(207, 207, 'Vapi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(208, 208, 'Sirsa', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(209, 209, 'Navsari', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(210, 210, 'Mahbubnagar', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(211, 211, 'Puri', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(212, 212, 'Robertson Pet', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(213, 213, 'Erode', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(214, 214, 'Batala', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(215, 215, 'Haldwani-cum-Kathgodam', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(216, 216, 'Vidisha', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(217, 217, 'Saharsa', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(218, 218, 'Thanesar', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(219, 219, 'Chittoor', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(220, 220, 'Veraval', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(221, 221, 'Lakhimpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(222, 222, 'Sitapur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(223, 223, 'Hindupur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(224, 224, 'Santipur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(225, 225, 'Balurghat', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(226, 226, 'Ganjbasoda', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(227, 227, 'Moga', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(228, 228, 'Proddatur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(229, 229, 'Srinagar', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(230, 230, 'Medinipur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(231, 231, 'Habra', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(232, 232, 'Sasaram', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(233, 233, 'Hajipur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(234, 234, 'Bhuj', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(235, 235, 'Shivpuri', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(236, 236, 'Ranaghat', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(237, 237, 'Shimla', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(238, 238, 'Tiruvannamalai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(239, 239, 'Kaithal', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(240, 240, 'Rajnandgaon', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(241, 241, 'Godhra', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(242, 242, 'Hazaribag', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(243, 243, 'Bhimavaram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(244, 244, 'Mandsaur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(245, 245, 'Dibrugarh', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(246, 246, 'Kolar', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(247, 247, 'Bankura', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(248, 248, 'Mandya', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(249, 249, 'Dehri-on-Sone', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(250, 250, 'Madanapalle', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(251, 251, 'Malerkotla', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(252, 252, 'Lalitpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(253, 253, 'Bettiah', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(254, 254, 'Pollachi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(255, 255, 'Khanna', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(256, 256, 'Neemuch', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(257, 257, 'Palwal', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(258, 258, 'Palanpur', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(259, 259, 'Guntakal', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(260, 260, 'Nabadwip', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(261, 261, 'Udupi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(262, 262, 'Jagdalpur', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(263, 263, 'Motihari', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(264, 264, 'Pilibhit', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(265, 265, 'Dimapur', 'Nagaland', 'Active', 'Master', '2018-05-22 01:48:02'),
(266, 266, 'Mohali', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(267, 267, 'Sadulpur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(268, 268, 'Rajapalayam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(269, 269, 'Dharmavaram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(270, 270, 'Kashipur', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(271, 271, 'Sivakasi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(272, 272, 'Darjiling', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(273, 273, 'Chikkamagaluru', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(274, 274, 'Gudivada', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(275, 275, 'Baleshwar Town', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(276, 276, 'Mancherial', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(277, 277, 'Srikakulam', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(278, 278, 'Adilabad', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(279, 279, 'Yavatmal', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(280, 280, 'Barnala', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(281, 281, 'Nagaon', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(282, 282, 'Narasaraopet', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(283, 283, 'Raigarh', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(284, 284, 'Roorkee', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(285, 285, 'Valsad', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(286, 286, 'Ambikapur', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(287, 287, 'Giridih', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(288, 288, 'Chandausi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(289, 289, 'Purulia', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(290, 290, 'Patan', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(291, 291, 'Bagaha', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(292, 292, 'Hardoi ', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(293, 293, 'Achalpur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(294, 294, 'Osmanabad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(295, 295, 'Deesa', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(296, 296, 'Nandurbar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(297, 297, 'Azamgarh', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(298, 298, 'Ramgarh', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(299, 299, 'Firozpur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(300, 300, 'Baripada Town', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(301, 301, 'Karwar', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(302, 302, 'Siwan', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(303, 303, 'Rajampet', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(304, 304, 'Pudukkottai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(305, 305, 'Anantnag', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(306, 306, 'Tadpatri', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(307, 307, 'Satara', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(308, 308, 'Bhadrak', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(309, 309, 'Kishanganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(310, 310, 'Suryapet', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(311, 311, 'Wardha', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(312, 312, 'Ranebennuru', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(313, 313, 'Amreli', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(314, 314, 'Neyveli (TS)', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(315, 315, 'Jamalpur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(316, 316, 'Marmagao', 'Goa', 'Active', 'Master', '2018-05-22 01:48:02'),
(317, 317, 'Udgir', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(318, 318, 'Tadepalligudem', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(319, 319, 'Nagapattinam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(320, 320, 'Buxar', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(321, 321, 'Aurangabad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(322, 322, 'Jehanabad', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(323, 323, 'Phagwara', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(324, 324, 'Khair', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(325, 325, 'Sawai Madhopur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(326, 326, 'Kapurthala', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(327, 327, 'Chilakaluripet', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(328, 328, 'Aurangabad', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(329, 329, 'Malappuram', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(330, 330, 'Rewari', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(331, 331, 'Nagaur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(332, 332, 'Sultanpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(333, 333, 'Nagda', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(334, 334, 'Port Blair', 'Andaman and Nicobar Islands', 'Active', 'Master', '2018-05-22 01:48:02'),
(335, 335, 'Lakhisarai', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(336, 336, 'Panaji', 'Goa', 'Active', 'Master', '2018-05-22 01:48:02'),
(337, 337, 'Tinsukia', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(338, 338, 'Itarsi', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(339, 339, 'Kohima', 'Nagaland', 'Active', 'Master', '2018-05-22 01:48:02'),
(340, 340, 'Balangir', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(341, 341, 'Nawada', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(342, 342, 'Jharsuguda', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(343, 343, 'Jagtial', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(344, 344, 'Viluppuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(345, 345, 'Amalner', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(346, 346, 'Zirakpur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(347, 347, 'Tanda', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(348, 348, 'Tiruchengode', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(349, 349, 'Nagina', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(350, 350, 'Yemmiganur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(351, 351, 'Vaniyambadi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(352, 352, 'Sarni', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(353, 353, 'Theni Allinagaram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(354, 354, 'Margao', 'Goa', 'Active', 'Master', '2018-05-22 01:48:02'),
(355, 355, 'Akot', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(356, 356, 'Sehore', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(357, 357, 'Mhow Cantonment', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(358, 358, 'Kot Kapura', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(359, 359, 'Makrana', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(360, 360, 'Pandharpur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(361, 361, 'Miryalaguda', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(362, 362, 'Shamli', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(363, 363, 'Seoni', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(364, 364, 'Ranibennur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(365, 365, 'Kadiri', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(366, 366, 'Shrirampur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(367, 367, 'Rudrapur', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(368, 368, 'Parli', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(369, 369, 'Najibabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(370, 370, 'Nirmal', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(371, 371, 'Udhagamandalam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(372, 372, 'Shikohabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(373, 373, 'Jhumri Tilaiya', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(374, 374, 'Aruppukkottai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(375, 375, 'Ponnani', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(376, 376, 'Jamui', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(377, 377, 'Sitamarhi', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(378, 378, 'Chirala', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(379, 379, 'Anjar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(380, 380, 'Karaikal', 'Puducherry', 'Active', 'Master', '2018-05-22 01:48:02'),
(381, 381, 'Hansi', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(382, 382, 'Anakapalle', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(383, 383, 'Mahasamund', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(384, 384, 'Faridkot', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(385, 385, 'Saunda', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(386, 386, 'Dhoraji', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(387, 387, 'Paramakudi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(388, 388, 'Balaghat', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(389, 389, 'Sujangarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(390, 390, 'Khambhat', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(391, 391, 'Muktsar', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(392, 392, 'Rajpura', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(393, 393, 'Kavali', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(394, 394, 'Dhamtari', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(395, 395, 'Ashok Nagar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(396, 396, 'Sardarshahar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(397, 397, 'Mahuva', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(398, 398, 'Bargarh', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(399, 399, 'Kamareddy', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(400, 400, 'Sahibganj', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(401, 401, 'Kothagudem', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(402, 402, 'Ramanagaram', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(403, 403, 'Gokak', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(404, 404, 'Tikamgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(405, 405, 'Araria', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(406, 406, 'Rishikesh', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(407, 407, 'Shahdol', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(408, 408, 'Medininagar (Daltonganj)', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(409, 409, 'Arakkonam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(410, 410, 'Washim', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(411, 411, 'Sangrur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(412, 412, 'Bodhan', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(413, 413, 'Fazilka', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(414, 414, 'Palacole', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(415, 415, 'Keshod', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(416, 416, 'Sullurpeta', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(417, 417, 'Wadhwan', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(418, 418, 'Gurdaspur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(419, 419, 'Vatakara', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(420, 420, 'Tura', 'Meghalaya', 'Active', 'Master', '2018-05-22 01:48:02'),
(421, 421, 'Narnaul', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(422, 422, 'Kharar', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(423, 423, 'Yadgir', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(424, 424, 'Ambejogai', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(425, 425, 'Ankleshwar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(426, 426, 'Savarkundla', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(427, 427, 'Paradip', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(428, 428, 'Virudhachalam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(429, 429, 'Kanhangad', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(430, 430, 'Kadi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(431, 431, 'Srivilliputhur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(432, 432, 'Gobindgarh', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(433, 433, 'Tindivanam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(434, 434, 'Mansa', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(435, 435, 'Taliparamba', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(436, 436, 'Manmad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(437, 437, 'Tanuku', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(438, 438, 'Rayachoti', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(439, 439, 'Virudhunagar', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(440, 440, 'Koyilandy', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(441, 441, 'Jorhat', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(442, 442, 'Karur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(443, 443, 'Valparai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(444, 444, 'Srikalahasti', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(445, 445, 'Neyyattinkara', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(446, 446, 'Bapatla', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(447, 447, 'Fatehabad', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(448, 448, 'Malout', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(449, 449, 'Sankarankovil', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(450, 450, 'Tenkasi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(451, 451, 'Ratnagiri', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(452, 452, 'Rabkavi Banhatti', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(453, 453, 'Sikandrabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(454, 454, 'Chaibasa', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(455, 455, 'Chirmiri', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(456, 456, 'Palwancha', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(457, 457, 'Bhawanipatna', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(458, 458, 'Kayamkulam', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(459, 459, 'Pithampur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(460, 460, 'Nabha', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(461, 461, 'Shahabad, Hardoi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(462, 462, 'Dhenkanal', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(463, 463, 'Uran Islampur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(464, 464, 'Gopalganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(465, 465, 'Bongaigaon City', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(466, 466, 'Palani', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(467, 467, 'Pusad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(468, 468, 'Sopore', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(469, 469, 'Pilkhuwa', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(470, 470, 'Tarn Taran', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(471, 471, 'Renukoot', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(472, 472, 'Mandamarri', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(473, 473, 'Shahabad', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(474, 474, 'Barbil', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(475, 475, 'Koratla', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(476, 476, 'Madhubani', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(477, 477, 'Arambagh', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(478, 478, 'Gohana', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(479, 479, 'Ladnu', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(480, 480, 'Pattukkottai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(481, 481, 'Sirsi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(482, 482, 'Sircilla', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(483, 483, 'Tamluk', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(484, 484, 'Jagraon', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(485, 485, 'AlipurdUrban Agglomerationr', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(486, 486, 'Alirajpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(487, 487, 'Tandur', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(488, 488, 'Naidupet', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(489, 489, 'Tirupathur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(490, 490, 'Tohana', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(491, 491, 'Ratangarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(492, 492, 'Dhubri', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(493, 493, 'Masaurhi', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(494, 494, 'Visnagar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(495, 495, 'Vrindavan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(496, 496, 'Nokha', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(497, 497, 'Nagari', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(498, 498, 'Narwana', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(499, 499, 'Ramanathapuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(500, 500, 'Ujhani', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(501, 501, 'Samastipur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(502, 502, 'Laharpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(503, 503, 'Sangamner', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(504, 504, 'Nimbahera', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(505, 505, 'Siddipet', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(506, 506, 'Suri', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(507, 507, 'Diphu', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(508, 508, 'Jhargram', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(509, 509, 'Shirpur-Warwade', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(510, 510, 'Tilhar', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(511, 511, 'Sindhnur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(512, 512, 'Udumalaipettai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(513, 513, 'Malkapur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(514, 514, 'Wanaparthy', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(515, 515, 'Gudur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(516, 516, 'Kendujhar', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(517, 517, 'Mandla', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(518, 518, 'Mandi', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(519, 519, 'Nedumangad', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(520, 520, 'North Lakhimpur', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(521, 521, 'Vinukonda', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(522, 522, 'Tiptur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(523, 523, 'Gobichettipalayam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(524, 524, 'Sunabeda', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(525, 525, 'Wani', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(526, 526, 'Upleta', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(527, 527, 'Narasapuram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(528, 528, 'Nuzvid', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(529, 529, 'Tezpur', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(530, 530, 'Una', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(531, 531, 'Markapur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(532, 532, 'Sheopur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(533, 533, 'Thiruvarur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(534, 534, 'Sidhpur', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(535, 535, 'Sahaswan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(536, 536, 'Suratgarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(537, 537, 'Shajapur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(538, 538, 'Rayagada', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(539, 539, 'Lonavla', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(540, 540, 'Ponnur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(541, 541, 'Kagaznagar', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(542, 542, 'Gadwal', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(543, 543, 'Bhatapara', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(544, 544, 'Kandukur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(545, 545, 'Sangareddy', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(546, 546, 'Unjha', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(547, 547, 'Lunglei', 'Mizoram', 'Active', 'Master', '2018-05-22 01:48:02'),
(548, 548, 'Karimganj', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(549, 549, 'Kannur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(550, 550, 'Bobbili', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(551, 551, 'Mokameh', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(552, 552, 'Talegaon Dabhade', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(553, 553, 'Anjangaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(554, 554, 'Mangrol', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(555, 555, 'Sunam', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(556, 556, 'Gangarampur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(557, 557, 'Thiruvallur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(558, 558, 'Tirur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(559, 559, 'Rath', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(560, 560, 'Jatani', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(561, 561, 'Viramgam', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(562, 562, 'Rajsamand', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(563, 563, 'Yanam', 'Puducherry', 'Active', 'Master', '2018-05-22 01:48:02'),
(564, 564, 'Kottayam', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(565, 565, 'Panruti', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(566, 566, 'Dhuri', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(567, 567, 'Namakkal', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(568, 568, 'Kasaragod', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(569, 569, 'Modasa', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(570, 570, 'Rayadurg', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(571, 571, 'Supaul', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(572, 572, 'Kunnamkulam', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(573, 573, 'Umred', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(574, 574, 'Bellampalle', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(575, 575, 'Sibsagar', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(576, 576, 'Mandi Dabwali', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(577, 577, 'Ottappalam', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(578, 578, 'Dumraon', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(579, 579, 'Samalkot', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(580, 580, 'Jaggaiahpet', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(581, 581, 'Goalpara', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(582, 582, 'Tuni', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(583, 583, 'Lachhmangarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(584, 584, 'Bhongir', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(585, 585, 'Amalapuram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(586, 586, 'Firozpur Cantt.', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(587, 587, 'Vikarabad', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(588, 588, 'Thiruvalla', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(589, 589, 'Sherkot', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(590, 590, 'Palghar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(591, 591, 'Shegaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(592, 592, 'Jangaon', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(593, 593, 'Bheemunipatnam', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(594, 594, 'Panna', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(595, 595, 'Thodupuzha', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(596, 596, 'KathUrban Agglomeration', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(597, 597, 'Palitana', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(598, 598, 'Arwal', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(599, 599, 'Venkatagiri', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(600, 600, 'Kalpi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(601, 601, 'Rajgarh (Churu)', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(602, 602, 'Sattenapalle', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(603, 603, 'Arsikere', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(604, 604, 'Ozar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(605, 605, 'Thirumangalam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(606, 606, 'Petlad', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(607, 607, 'Nasirabad', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(608, 608, 'Phaltan', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(609, 609, 'Rampurhat', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(610, 610, 'Nanjangud', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(611, 611, 'Forbesganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(612, 612, 'Tundla', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(613, 613, 'BhabUrban Agglomeration', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(614, 614, 'Sagara', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(615, 615, 'Pithapuram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(616, 616, 'Sira', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(617, 617, 'Bhadrachalam', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(618, 618, 'Charkhi Dadri', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(619, 619, 'Chatra', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(620, 620, 'Palasa Kasibugga', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(621, 621, 'Nohar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(622, 622, 'Yevla', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(623, 623, 'Sirhind Fatehgarh Sahib', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(624, 624, 'Bhainsa', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(625, 625, 'Parvathipuram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(626, 626, 'Shahade', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(627, 627, 'Chalakudy', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(628, 628, 'Narkatiaganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(629, 629, 'Kapadvanj', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(630, 630, 'Macherla', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(631, 631, 'Raghogarh-Vijaypur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(632, 632, 'Rupnagar', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(633, 633, 'Naugachhia', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(634, 634, 'Sendhwa', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02');
INSERT INTO `city` (`sno`, `id`, `name`, `state`, `status`, `updateby`, `updatedate`) VALUES
(635, 635, 'Byasanagar', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(636, 636, 'Sandila', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(637, 637, 'Gooty', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(638, 638, 'Salur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(639, 639, 'Nanpara', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(640, 640, 'Sardhana', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(641, 641, 'Vita', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(642, 642, 'Gumia', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(643, 643, 'Puttur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(644, 644, 'Jalandhar Cantt.', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(645, 645, 'Nehtaur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(646, 646, 'Changanassery', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(647, 647, 'Mandapeta', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(648, 648, 'Dumka', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(649, 649, 'Seohara', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(650, 650, 'Umarkhed', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(651, 651, 'Madhupur', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(652, 652, 'Vikramasingapuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(653, 653, 'Punalur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(654, 654, 'Kendrapara', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(655, 655, 'Sihor', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(656, 656, 'Nellikuppam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(657, 657, 'Samana', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(658, 658, 'Warora', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(659, 659, 'Nilambur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(660, 660, 'Rasipuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(661, 661, 'Ramnagar', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(662, 662, 'Jammalamadugu', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(663, 663, 'Nawanshahr', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(664, 664, 'Thoubal', 'Manipur', 'Active', 'Master', '2018-05-22 01:48:02'),
(665, 665, 'Athni', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(666, 666, 'Cherthala', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(667, 667, 'Sidhi', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(668, 668, 'Farooqnagar', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(669, 669, 'Peddapuram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(670, 670, 'Chirkunda', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(671, 671, 'Pachora', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(672, 672, 'Madhepura', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(673, 673, 'Pithoragarh', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(674, 674, 'Tumsar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(675, 675, 'Phalodi', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(676, 676, 'Tiruttani', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(677, 677, 'Rampura Phul', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(678, 678, 'Perinthalmanna', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(679, 679, 'Padrauna', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(680, 680, 'Pipariya', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(681, 681, 'Dalli-Rajhara', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(682, 682, 'Punganur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(683, 683, 'Mattannur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(684, 684, 'Mathura', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(685, 685, 'Thakurdwara', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(686, 686, 'Nandivaram-Guduvancheri', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(687, 687, 'Mulbagal', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(688, 688, 'Manjlegaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(689, 689, 'Wankaner', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(690, 690, 'Sillod', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(691, 691, 'Nidadavole', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(692, 692, 'Surapura', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(693, 693, 'Rajagangapur', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(694, 694, 'Sheikhpura', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(695, 695, 'Parlakhemundi', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(696, 696, 'Kalimpong', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(697, 697, 'Siruguppa', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(698, 698, 'Arvi', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(699, 699, 'Limbdi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(700, 700, 'Barpeta', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(701, 701, 'Manglaur', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(702, 702, 'Repalle', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(703, 703, 'Mudhol', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(704, 704, 'Shujalpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(705, 705, 'Mandvi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(706, 706, 'Thangadh', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(707, 707, 'Sironj', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(708, 708, 'Nandura', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(709, 709, 'Shoranur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(710, 710, 'Nathdwara', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(711, 711, 'Periyakulam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(712, 712, 'Sultanganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(713, 713, 'Medak', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(714, 714, 'Narayanpet', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(715, 715, 'Raxaul Bazar', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(716, 716, 'Rajauri', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(717, 717, 'Pernampattu', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(718, 718, 'Nainital', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(719, 719, 'Ramachandrapuram', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(720, 720, 'Vaijapur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(721, 721, 'Nangal', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(722, 722, 'Sidlaghatta', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(723, 723, 'Punch', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(724, 724, 'Pandhurna', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(725, 725, 'Wadgaon Road', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(726, 726, 'Talcher', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(727, 727, 'Varkala', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(728, 728, 'Pilani', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(729, 729, 'Nowgong', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(730, 730, 'Naila Janjgir', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(731, 731, 'Mapusa', 'Goa', 'Active', 'Master', '2018-05-22 01:48:02'),
(732, 732, 'Vellakoil', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(733, 733, 'Merta City', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(734, 734, 'Sivaganga', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(735, 735, 'Mandideep', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(736, 736, 'Sailu', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(737, 737, 'Vyara', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(738, 738, 'Kovvur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(739, 739, 'Vadalur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(740, 740, 'Nawabganj', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(741, 741, 'Padra', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(742, 742, 'Sainthia', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(743, 743, 'Siana', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(744, 744, 'Shahpur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(745, 745, 'Sojat', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(746, 746, 'Noorpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(747, 747, 'Paravoor', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(748, 748, 'Murtijapur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(749, 749, 'Ramnagar', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(750, 750, 'Sundargarh', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(751, 751, 'Taki', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(752, 752, 'Saundatti-Yellamma', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(753, 753, 'Pathanamthitta', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(754, 754, 'Wadi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(755, 755, 'Rameshwaram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(756, 756, 'Tasgaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(757, 757, 'Sikandra Rao', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(758, 758, 'Sihora', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(759, 759, 'Tiruvethipuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(760, 760, 'Tiruvuru', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(761, 761, 'Mehkar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(762, 762, 'Peringathur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(763, 763, 'Perambalur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(764, 764, 'Manvi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(765, 765, 'Zunheboto', 'Nagaland', 'Active', 'Master', '2018-05-22 01:48:02'),
(766, 766, 'Mahnar Bazar', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(767, 767, 'Attingal', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(768, 768, 'Shahbad', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(769, 769, 'Puranpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(770, 770, 'Nelamangala', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(771, 771, 'Nakodar', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(772, 772, 'Lunawada', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(773, 773, 'Murshidabad', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(774, 774, 'Mahe', 'Puducherry', 'Active', 'Master', '2018-05-22 01:48:02'),
(775, 775, 'Lanka', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(776, 776, 'Rudauli', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(777, 777, 'Tuensang', 'Nagaland', 'Active', 'Master', '2018-05-22 01:48:02'),
(778, 778, 'Lakshmeshwar', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(779, 779, 'Zira', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(780, 780, 'Yawal', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(781, 781, 'Thana Bhawan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(782, 782, 'Ramdurg', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(783, 783, 'Pulgaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(784, 784, 'Sadasivpet', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(785, 785, 'Nargund', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(786, 786, 'Neem-Ka-Thana', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(787, 787, 'Memari', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(788, 788, 'Nilanga', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(789, 789, 'Naharlagun', 'Arunachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(790, 790, 'Pakaur', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(791, 791, 'Wai', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(792, 792, 'Tarikere', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(793, 793, 'Malavalli', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(794, 794, 'Raisen', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(795, 795, 'Lahar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(796, 796, 'Uravakonda', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(797, 797, 'Savanur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(798, 798, 'Sirohi', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(799, 799, 'Udhampur', 'Jammu and Kashmir', 'Active', 'Master', '2018-05-22 01:48:02'),
(800, 800, 'Umarga', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(801, 801, 'Pratapgarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(802, 802, 'Lingsugur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(803, 803, 'Usilampatti', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(804, 804, 'Palia Kalan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(805, 805, 'Wokha', 'Nagaland', 'Active', 'Master', '2018-05-22 01:48:02'),
(806, 806, 'Rajpipla', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(807, 807, 'Vijayapura', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(808, 808, 'Rawatbhata', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(809, 809, 'Sangaria', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(810, 810, 'Paithan', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(811, 811, 'Rahuri', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(812, 812, 'Patti', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(813, 813, 'Zaidpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(814, 814, 'Lalsot', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(815, 815, 'Maihar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(816, 816, 'Vedaranyam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(817, 817, 'Nawapur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(818, 818, 'Solan', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(819, 819, 'Vapi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(820, 820, 'Sanawad', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(821, 821, 'Warisaliganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(822, 822, 'Revelganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(823, 823, 'Sabalgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(824, 824, 'Tuljapur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(825, 825, 'Simdega', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(826, 826, 'Musabani', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(827, 827, 'Kodungallur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(828, 828, 'Phulabani', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(829, 829, 'Umreth', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(830, 830, 'Narsipatnam', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(831, 831, 'Nautanwa', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(832, 832, 'Rajgir', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(833, 833, 'Yellandu', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(834, 834, 'Sathyamangalam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(835, 835, 'Pilibanga', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(836, 836, 'Morshi', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(837, 837, 'Pehowa', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(838, 838, 'Sonepur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(839, 839, 'Pappinisseri', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(840, 840, 'Zamania', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(841, 841, 'Mihijam', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(842, 842, 'Purna', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(843, 843, 'Puliyankudi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(844, 844, 'Shikarpur, Bulandshahr', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(845, 845, 'Umaria', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(846, 846, 'Porsa', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(847, 847, 'Naugawan Sadat', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(848, 848, 'Fatehpur Sikri', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(849, 849, 'Manuguru', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(850, 850, 'Udaipur', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(851, 851, 'Pipar City', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(852, 852, 'Pattamundai', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(853, 853, 'Nanjikottai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(854, 854, 'Taranagar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(855, 855, 'Yerraguntla', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(856, 856, 'Satana', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(857, 857, 'Sherghati', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(858, 858, 'Sankeshwara', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(859, 859, 'Madikeri', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(860, 860, 'Thuraiyur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(861, 861, 'Sanand', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(862, 862, 'Rajula', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(863, 863, 'Kyathampalle', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(864, 864, 'Shahabad, Rampur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(865, 865, 'Tilda Newra', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(866, 866, 'Narsinghgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(867, 867, 'Chittur-Thathamangalam', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(868, 868, 'Malaj Khand', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(869, 869, 'Sarangpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(870, 870, 'Robertsganj', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(871, 871, 'Sirkali', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(872, 872, 'Radhanpur', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(873, 873, 'Tiruchendur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(874, 874, 'Utraula', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(875, 875, 'Patratu', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(876, 876, 'Vijainagar, Ajmer', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(877, 877, 'Periyasemur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(878, 878, 'Pathri', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(879, 879, 'Sadabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(880, 880, 'Talikota', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(881, 881, 'Sinnar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(882, 882, 'Mungeli', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(883, 883, 'Sedam', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(884, 884, 'Shikaripur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(885, 885, 'Sumerpur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(886, 886, 'Sattur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(887, 887, 'Sugauli', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(888, 888, 'Lumding', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(889, 889, 'Vandavasi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(890, 890, 'Titlagarh', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(891, 891, 'Uchgaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(892, 892, 'Mokokchung', 'Nagaland', 'Active', 'Master', '2018-05-22 01:48:02'),
(893, 893, 'Paschim Punropara', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(894, 894, 'Sagwara', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(895, 895, 'Ramganj Mandi', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(896, 896, 'Tarakeswar', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(897, 897, 'Mahalingapura', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(898, 898, 'Dharmanagar', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(899, 899, 'Mahemdabad', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(900, 900, 'Manendragarh', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(901, 901, 'Uran', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(902, 902, 'Tharamangalam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(903, 903, 'Tirukkoyilur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(904, 904, 'Pen', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(905, 905, 'Makhdumpur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(906, 906, 'Maner', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(907, 907, 'Oddanchatram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(908, 908, 'Palladam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(909, 909, 'Mundi', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(910, 910, 'Nabarangapur', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(911, 911, 'Mudalagi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(912, 912, 'Samalkha', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(913, 913, 'Nepanagar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(914, 914, 'Karjat', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(915, 915, 'Ranavav', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(916, 916, 'Pedana', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(917, 917, 'Pinjore', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(918, 918, 'Lakheri', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(919, 919, 'Pasan', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(920, 920, 'Puttur', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(921, 921, 'Vadakkuvalliyur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(922, 922, 'Tirukalukundram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(923, 923, 'Mahidpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(924, 924, 'Mussoorie', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(925, 925, 'Muvattupuzha', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(926, 926, 'Rasra', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(927, 927, 'Udaipurwati', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(928, 928, 'Manwath', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(929, 929, 'Adoor', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(930, 930, 'Uthamapalayam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(931, 931, 'Partur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(932, 932, 'Nahan', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(933, 933, 'Ladwa', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(934, 934, 'Mankachar', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(935, 935, 'Nongstoin', 'Meghalaya', 'Active', 'Master', '2018-05-22 01:48:02'),
(936, 936, 'Losal', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(937, 937, 'Sri Madhopur', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(938, 938, 'Ramngarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(939, 939, 'Mavelikkara', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(940, 940, 'Rawatsar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(941, 941, 'Rajakhera', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(942, 942, 'Lar', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(943, 943, 'Lal Gopalganj Nindaura', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(944, 944, 'Muddebihal', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(945, 945, 'Sirsaganj', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(946, 946, 'Shahpura', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(947, 947, 'Surandai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(948, 948, 'Sangole', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(949, 949, 'Pavagada', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(950, 950, 'Tharad', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(951, 951, 'Mansa', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(952, 952, 'Umbergaon', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(953, 953, 'Mavoor', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(954, 954, 'Nalbari', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(955, 955, 'Talaja', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(956, 956, 'Malur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(957, 957, 'Mangrulpir', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(958, 958, 'Soro', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(959, 959, 'Shahpura', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(960, 960, 'Vadnagar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(961, 961, 'Raisinghnagar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(962, 962, 'Sindhagi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(963, 963, 'Sanduru', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(964, 964, 'Sohna', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(965, 965, 'Manavadar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(966, 966, 'Pihani', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(967, 967, 'Safidon', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(968, 968, 'Risod', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(969, 969, 'Rosera', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(970, 970, 'Sankari', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(971, 971, 'Malpura', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(972, 972, 'Sonamukhi', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(973, 973, 'Shamsabad, Agra', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(974, 974, 'Nokha', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(975, 975, 'PandUrban Agglomeration', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(976, 976, 'Mainaguri', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(977, 977, 'Afzalpur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(978, 978, 'Shirur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(979, 979, 'Salaya', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(980, 980, 'Shenkottai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(981, 981, 'Pratapgarh', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(982, 982, 'Vadipatti', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(983, 983, 'Nagarkurnool', 'Telangana', 'Active', 'Master', '2018-05-22 01:48:02'),
(984, 984, 'Savner', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(985, 985, 'Sasvad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(986, 986, 'Rudrapur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(987, 987, 'Soron', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(988, 988, 'Sholingur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(989, 989, 'Pandharkaoda', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(990, 990, 'Perumbavoor', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(991, 991, 'Maddur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(992, 992, 'Nadbai', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(993, 993, 'Talode', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(994, 994, 'Shrigonda', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(995, 995, 'Madhugiri', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(996, 996, 'Tekkalakote', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(997, 997, 'Seoni-Malwa', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(998, 998, 'Shirdi', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(999, 999, 'SUrban Agglomerationr', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1000, 1000, 'Terdal', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1001, 1001, 'Raver', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1002, 1002, 'Tirupathur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1003, 1003, 'Taraori', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(1004, 1004, 'Mukhed', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1005, 1005, 'Manachanallur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1006, 1006, 'Rehli', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1007, 1007, 'Sanchore', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1008, 1008, 'Rajura', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1009, 1009, 'Piro', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1010, 1010, 'Mudabidri', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1011, 1011, 'Vadgaon Kasba', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1012, 1012, 'Nagar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1013, 1013, 'Vijapur', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1014, 1014, 'Viswanatham', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1015, 1015, 'Polur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1016, 1016, 'Panagudi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1017, 1017, 'Manawar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1018, 1018, 'Tehri', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1019, 1019, 'Samdhan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1020, 1020, 'Pardi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1021, 1021, 'Rahatgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1022, 1022, 'Panagar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1023, 1023, 'Uthiramerur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1024, 1024, 'Tirora', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1025, 1025, 'Rangia', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(1026, 1026, 'Sahjanwa', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1027, 1027, 'Wara Seoni', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1028, 1028, 'Magadi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1029, 1029, 'Rajgarh (Alwar)', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1030, 1030, 'Rafiganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1031, 1031, 'Tarana', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1032, 1032, 'Rampur Maniharan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1033, 1033, 'Sheoganj', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1034, 1034, 'Raikot', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1035, 1035, 'Pauri', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1036, 1036, 'Sumerpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1037, 1037, 'Navalgund', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1038, 1038, 'Shahganj', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1039, 1039, 'Marhaura', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1040, 1040, 'Tulsipur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1041, 1041, 'Sadri', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1042, 1042, 'Thiruthuraipoondi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1043, 1043, 'Shiggaon', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1044, 1044, 'Pallapatti', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1045, 1045, 'Mahendragarh', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(1046, 1046, 'Sausar', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1047, 1047, 'Ponneri', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1048, 1048, 'Mahad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1049, 1049, 'Lohardaga', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1050, 1050, 'Tirwaganj', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1051, 1051, 'Margherita', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(1052, 1052, 'Sundarnagar', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1053, 1053, 'Rajgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1054, 1054, 'Mangaldoi', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(1055, 1055, 'Renigunta', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1056, 1056, 'Longowal', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1057, 1057, 'Ratia', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(1058, 1058, 'Lalgudi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1059, 1059, 'Shrirangapattana', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1060, 1060, 'Niwari', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1061, 1061, 'Natham', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1062, 1062, 'Unnamalaikadai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1063, 1063, 'PurqUrban Agglomerationzi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1064, 1064, 'Shamsabad, Farrukhabad', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1065, 1065, 'Mirganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1066, 1066, 'Todaraisingh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1067, 1067, 'Warhapur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1068, 1068, 'Rajam', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1069, 1069, 'Urmar Tanda', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1070, 1070, 'Lonar', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1071, 1071, 'Powayan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1072, 1072, 'P.N.Patti', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1073, 1073, 'Palampur', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1074, 1074, 'Srisailam Project (Right Flank Colony) Township', 'Andhra Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1075, 1075, 'Sindagi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1076, 1076, 'Sandi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1077, 1077, 'Vaikom', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(1078, 1078, 'Malda', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1079, 1079, 'Tharangambadi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1080, 1080, 'Sakaleshapura', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1081, 1081, 'Lalganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1082, 1082, 'Malkangiri', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(1083, 1083, 'Rapar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1084, 1084, 'Mauganj', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1085, 1085, 'Todabhim', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1086, 1086, 'Srinivaspur', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1087, 1087, 'Murliganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1088, 1088, 'Reengus', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1089, 1089, 'Sawantwadi', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1090, 1090, 'Tittakudi', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1091, 1091, 'Lilong', 'Manipur', 'Active', 'Master', '2018-05-22 01:48:02'),
(1092, 1092, 'Rajaldesar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1093, 1093, 'Pathardi', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1094, 1094, 'Achhnera', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1095, 1095, 'Pacode', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1096, 1096, 'Naraura', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1097, 1097, 'Nakur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1098, 1098, 'Palai', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(1099, 1099, 'Morinda, India', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1100, 1100, 'Manasa', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1101, 1101, 'Nainpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1102, 1102, 'Sahaspur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1103, 1103, 'Pauni', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1104, 1104, 'Prithvipur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1105, 1105, 'Ramtek', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1106, 1106, 'Silapathar', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(1107, 1107, 'Songadh', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1108, 1108, 'Safipur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1109, 1109, 'Sohagpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1110, 1110, 'Mul', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1111, 1111, 'Sadulshahar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1112, 1112, 'Phillaur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1113, 1113, 'Sambhar', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1114, 1114, 'Prantij', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1115, 1115, 'Nagla', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1116, 1116, 'Pattran', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1117, 1117, 'Mount Abu', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1118, 1118, 'Reoti', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1119, 1119, 'Tenu dam-cum-Kathhara', 'Jharkhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1120, 1120, 'Panchla', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1121, 1121, 'Sitarganj', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1122, 1122, 'Pasighat', 'Arunachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1123, 1123, 'Motipur', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1124, 1124, 'O\' Valley', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1125, 1125, 'Raghunathpur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1126, 1126, 'Suriyampalayam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1127, 1127, 'Qadian', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1128, 1128, 'Rairangpur', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(1129, 1129, 'Silvassa', 'Dadra and Nagar Haveli', 'Active', 'Master', '2018-05-22 01:48:02'),
(1130, 1130, 'Nowrozabad (Khodargama)', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1131, 1131, 'Mangrol', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1132, 1132, 'Soyagaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1133, 1133, 'Sujanpur', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1134, 1134, 'Manihari', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1135, 1135, 'Sikanderpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1136, 1136, 'Mangalvedhe', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1137, 1137, 'Phulera', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1138, 1138, 'Ron', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1139, 1139, 'Sholavandan', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1140, 1140, 'Saidpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1141, 1141, 'Shamgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1142, 1142, 'Thammampatti', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1143, 1143, 'Maharajpur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1144, 1144, 'Multai', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1145, 1145, 'Mukerian', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1146, 1146, 'Sirsi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1147, 1147, 'Purwa', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1148, 1148, 'Sheohar', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1149, 1149, 'Namagiripettai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1150, 1150, 'Parasi', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1151, 1151, 'Lathi', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1152, 1152, 'Lalganj', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1153, 1153, 'Narkhed', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1154, 1154, 'Mathabhanga', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1155, 1155, 'Shendurjana', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1156, 1156, 'Peravurani', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1157, 1157, 'Mariani', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(1158, 1158, 'Phulpur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1159, 1159, 'Rania', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(1160, 1160, 'Pali', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1161, 1161, 'Pachore', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1162, 1162, 'Parangipettai', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1163, 1163, 'Pudupattinam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1164, 1164, 'Panniyannur', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(1165, 1165, 'Maharajganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1166, 1166, 'Rau', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1167, 1167, 'Monoharpur', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1168, 1168, 'Mandawa', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1169, 1169, 'Marigaon', 'Assam', 'Active', 'Master', '2018-05-22 01:48:02'),
(1170, 1170, 'Pallikonda', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1171, 1171, 'Pindwara', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1172, 1172, 'Shishgarh', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1173, 1173, 'Patur', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1174, 1174, 'Mayang Imphal', 'Manipur', 'Active', 'Master', '2018-05-22 01:48:02'),
(1175, 1175, 'Mhowgaon', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1176, 1176, 'Guruvayoor', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(1177, 1177, 'Mhaswad', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1178, 1178, 'Sahawar', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1179, 1179, 'Sivagiri', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1180, 1180, 'Mundargi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1181, 1181, 'Punjaipugalur', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1182, 1182, 'Kailasahar', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(1183, 1183, 'Samthar', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1184, 1184, 'Sakti', 'Chhattisgarh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1185, 1185, 'Sadalagi', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1186, 1186, 'Silao', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1187, 1187, 'Mandalgarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1188, 1188, 'Loha', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1189, 1189, 'Pukhrayan', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1190, 1190, 'Padmanabhapuram', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1191, 1191, 'Belonia', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(1192, 1192, 'Saiha', 'Mizoram', 'Active', 'Master', '2018-05-22 01:48:02'),
(1193, 1193, 'Srirampore', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1194, 1194, 'Talwara', 'Punjab', 'Active', 'Master', '2018-05-22 01:48:02'),
(1195, 1195, 'Puthuppally', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(1196, 1196, 'Khowai', 'Tripura', 'Active', 'Master', '2018-05-22 01:48:02'),
(1197, 1197, 'Vijaypur', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1198, 1198, 'Takhatgarh', 'Rajasthan', 'Active', 'Master', '2018-05-22 01:48:02'),
(1199, 1199, 'Thirupuvanam', 'Tamil Nadu', 'Active', 'Master', '2018-05-22 01:48:02'),
(1200, 1200, 'Adra', 'West Bengal', 'Active', 'Master', '2018-05-22 01:48:02'),
(1201, 1201, 'Piriyapatna', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1202, 1202, 'Obra', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1203, 1203, 'Adalaj', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1204, 1204, 'Nandgaon', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1205, 1205, 'Barh', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1206, 1206, 'Chhapra', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1207, 1207, 'Panamattom', 'Kerala', 'Active', 'Master', '2018-05-22 01:48:02'),
(1208, 1208, 'Niwai', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1209, 1209, 'Bageshwar', 'Uttarakhand', 'Active', 'Master', '2018-05-22 01:48:02'),
(1210, 1210, 'Tarbha', 'Odisha', 'Active', 'Master', '2018-05-22 01:48:02'),
(1211, 1211, 'Adyar', 'Karnataka', 'Active', 'Master', '2018-05-22 01:48:02'),
(1212, 1212, 'Narsinghgarh', 'Madhya Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1213, 1213, 'Warud', 'Maharashtra', 'Active', 'Master', '2018-05-22 01:48:02'),
(1214, 1214, 'Asarganj', 'Bihar', 'Active', 'Master', '2018-05-22 01:48:02'),
(1215, 1215, 'Sarsod', 'Haryana', 'Active', 'Master', '2018-05-22 01:48:02'),
(1216, 1216, 'Gandhinagar', 'Gujarat', 'Active', 'Master', '2018-05-22 01:48:02'),
(1217, 1217, 'Kullu', 'Himachal Pradesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1218, 1218, 'Manali', 'Himachal Praddesh', 'Active', 'Master', '2018-05-22 01:48:02'),
(1219, 1219, 'Mirzapur', 'Uttar Pradesh', 'Active', 'Master', '2018-05-22 01:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`sno`, `countrycode`, `countryname`, `status`, `updateby`, `updatedate`) VALUES
(1, 'AF', 'Afghanistan', 'Active', 'Master', '2018-05-22 07:06:02'),
(2, 'AX', 'Åland Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(3, 'AL', 'Albania', 'Active', 'Master', '2018-05-22 07:06:02'),
(4, 'DZ', 'Algeria', 'Active', 'Master', '2018-05-22 07:06:02'),
(5, 'AS', 'American Samoa', 'Active', 'Master', '2018-05-22 07:06:02'),
(6, 'AD', 'AndorrA', 'Active', 'Master', '2018-05-22 07:06:02'),
(7, 'AO', 'Angola', 'Active', 'Master', '2018-05-22 07:06:02'),
(8, 'AI', 'Anguilla', 'Active', 'Master', '2018-05-22 07:06:02'),
(9, 'AQ', 'Antarctica', 'Active', 'Master', '2018-05-22 07:06:02'),
(10, 'AG', 'Antigua and Barbuda', 'Active', 'Master', '2018-05-22 07:06:02'),
(11, 'AR', 'Argentina', 'Active', 'Master', '2018-05-22 07:06:02'),
(12, 'AM', 'Armenia', 'Active', 'Master', '2018-05-22 07:06:02'),
(13, 'AW', 'Aruba', 'Active', 'Master', '2018-05-22 07:06:02'),
(14, 'AU', 'Australia', 'Active', 'Master', '2018-05-22 07:06:02'),
(15, 'AT', 'Austria', 'Active', 'Master', '2018-05-22 07:06:02'),
(16, 'AZ', 'Azerbaijan', 'Active', 'Master', '2018-05-22 07:06:02'),
(17, 'BS', 'Bahamas', 'Active', 'Master', '2018-05-22 07:06:02'),
(18, 'BH', 'Bahrain', 'Active', 'Master', '2018-05-22 07:06:02'),
(19, 'BD', 'Bangladesh', 'Active', 'Master', '2018-05-22 07:06:02'),
(20, 'BB', 'Barbados', 'Active', 'Master', '2018-05-22 07:06:02'),
(21, 'BY', 'Belarus', 'Active', 'Master', '2018-05-22 07:06:02'),
(22, 'BE', 'Belgium', 'Active', 'Master', '2018-05-22 07:06:02'),
(23, 'BZ', 'Belize', 'Active', 'Master', '2018-05-22 07:06:02'),
(24, 'BJ', 'Benin', 'Active', 'Master', '2018-05-22 07:06:02'),
(25, 'BM', 'Bermuda', 'Active', 'Master', '2018-05-22 07:06:02'),
(26, 'BT', 'Bhutan', 'Active', 'Master', '2018-05-22 07:06:02'),
(27, 'BO', 'Bolivia', 'Active', 'Master', '2018-05-22 07:06:02'),
(28, 'BA', 'Bosnia and Herzegovina', 'Active', 'Master', '2018-05-22 07:06:02'),
(29, 'BW', 'Botswana', 'Active', 'Master', '2018-05-22 07:06:02'),
(30, 'BV', 'Bouvet Island', 'Active', 'Master', '2018-05-22 07:06:02'),
(31, 'BR', 'Brazil', 'Active', 'Master', '2018-05-22 07:06:02'),
(32, 'IO', 'British Indian Ocean Territory', 'Active', 'Master', '2018-05-22 07:06:02'),
(33, 'BN', 'Brunei Darussalam', 'Active', 'Master', '2018-05-22 07:06:02'),
(34, 'BG', 'Bulgaria', 'Active', 'Master', '2018-05-22 07:06:02'),
(35, 'BF', 'Burkina Faso', 'Active', 'Master', '2018-05-22 07:06:02'),
(36, 'BI', 'Burundi', 'Active', 'Master', '2018-05-22 07:06:02'),
(37, 'KH', 'Cambodia', 'Active', 'Master', '2018-05-22 07:06:02'),
(38, 'CM', 'Cameroon', 'Active', 'Master', '2018-05-22 07:06:02'),
(39, 'CA', 'Canada', 'Active', 'Master', '2018-05-22 07:06:02'),
(40, 'CV', 'Cape Verde', 'Active', 'Master', '2018-05-22 07:06:02'),
(41, 'KY', 'Cayman Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(42, 'CF', 'Central African Republic', 'Active', 'Master', '2018-05-22 07:06:02'),
(43, 'TD', 'Chad', 'Active', 'Master', '2018-05-22 07:06:02'),
(44, 'CL', 'Chile', 'Active', 'Master', '2018-05-22 07:06:02'),
(45, 'CN', 'China', 'Active', 'Master', '2018-05-22 07:06:02'),
(46, 'CX', 'Christmas Island', 'Active', 'Master', '2018-05-22 07:06:02'),
(47, 'CC', 'Cocos (Keeling) Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(48, 'CO', 'Colombia', 'Active', 'Master', '2018-05-22 07:06:02'),
(49, 'KM', 'Comoros', 'Active', 'Master', '2018-05-22 07:06:02'),
(50, 'CG', 'Congo', 'Active', 'Master', '2018-05-22 07:06:02'),
(51, 'CD', 'Congo, The Democratic Republic of the', 'Active', 'Master', '2018-05-22 07:06:02'),
(52, 'CK', 'Cook Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(53, 'CR', 'Costa Rica', 'Active', 'Master', '2018-05-22 07:06:02'),
(54, 'CI', 'Cote D\'Ivoire', 'Active', 'Master', '2018-05-22 07:06:02'),
(55, 'HR', 'Croatia', 'Active', 'Master', '2018-05-22 07:06:02'),
(56, 'CU', 'Cuba', 'Active', 'Master', '2018-05-22 07:06:02'),
(57, 'CY', 'Cyprus', 'Active', 'Master', '2018-05-22 07:06:02'),
(58, 'CZ', 'Czech Republic', 'Active', 'Master', '2018-05-22 07:06:02'),
(59, 'DK', 'Denmark', 'Active', 'Master', '2018-05-22 07:06:02'),
(60, 'DJ', 'Djibouti', 'Active', 'Master', '2018-05-22 07:06:02'),
(61, 'DM', 'Dominica', 'Active', 'Master', '2018-05-22 07:06:02'),
(62, 'DO', 'Dominican Republic', 'Active', 'Master', '2018-05-22 07:06:02'),
(63, 'EC', 'Ecuador', 'Active', 'Master', '2018-05-22 07:06:02'),
(64, 'EG', 'Egypt', 'Active', 'Master', '2018-05-22 07:06:02'),
(65, 'SV', 'El Salvador', 'Active', 'Master', '2018-05-22 07:06:02'),
(66, 'GQ', 'Equatorial Guinea', 'Active', 'Master', '2018-05-22 07:06:02'),
(67, 'ER', 'Eritrea', 'Active', 'Master', '2018-05-22 07:06:02'),
(68, 'EE', 'Estonia', 'Active', 'Master', '2018-05-22 07:06:02'),
(69, 'ET', 'Ethiopia', 'Active', 'Master', '2018-05-22 07:06:02'),
(70, 'FK', 'Falkland Islands (Malvinas)', 'Active', 'Master', '2018-05-22 07:06:02'),
(71, 'FO', 'Faroe Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(72, 'FJ', 'Fiji', 'Active', 'Master', '2018-05-22 07:06:02'),
(73, 'FI', 'Finland', 'Active', 'Master', '2018-05-22 07:06:02'),
(74, 'FR', 'France', 'Active', 'Master', '2018-05-22 07:06:02'),
(75, 'GF', 'French Guiana', 'Active', 'Master', '2018-05-22 07:06:02'),
(76, 'PF', 'French Polynesia', 'Active', 'Master', '2018-05-22 07:06:02'),
(77, 'TF', 'French Southern Territories', 'Active', 'Master', '2018-05-22 07:06:02'),
(78, 'GA', 'Gabon', 'Active', 'Master', '2018-05-22 07:06:02'),
(79, 'GM', 'Gambia', 'Active', 'Master', '2018-05-22 07:06:02'),
(80, 'GE', 'Georgia', 'Active', 'Master', '2018-05-22 07:06:02'),
(81, 'DE', 'Germany', 'Active', 'Master', '2018-05-22 07:06:02'),
(82, 'GH', 'Ghana', 'Active', 'Master', '2018-05-22 07:06:02'),
(83, 'GI', 'Gibraltar', 'Active', 'Master', '2018-05-22 07:06:02'),
(84, 'GR', 'Greece', 'Active', 'Master', '2018-05-22 07:06:02'),
(85, 'GL', 'Greenland', 'Active', 'Master', '2018-05-22 07:06:02'),
(86, 'GD', 'Grenada', 'Active', 'Master', '2018-05-22 07:06:02'),
(87, 'GP', 'Guadeloupe', 'Active', 'Master', '2018-05-22 07:06:02'),
(88, 'GU', 'Guam', 'Active', 'Master', '2018-05-22 07:06:02'),
(89, 'GT', 'Guatemala', 'Active', 'Master', '2018-05-22 07:06:02'),
(90, 'GG', 'Guernsey', 'Active', 'Master', '2018-05-22 07:06:02'),
(91, 'GN', 'Guinea', 'Active', 'Master', '2018-05-22 07:06:02'),
(92, 'GW', 'Guinea-Bissau', 'Active', 'Master', '2018-05-22 07:06:02'),
(93, 'GY', 'Guyana', 'Active', 'Master', '2018-05-22 07:06:02'),
(94, 'HT', 'Haiti', 'Active', 'Master', '2018-05-22 07:06:02'),
(95, 'HM', 'Heard Island and Mcdonald Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(96, 'VA', 'Holy See (Vatican City State)', 'Active', 'Master', '2018-05-22 07:06:02'),
(97, 'HN', 'Honduras', 'Active', 'Master', '2018-05-22 07:06:02'),
(98, 'HK', 'Hong Kong', 'Active', 'Master', '2018-05-22 07:06:02'),
(99, 'HU', 'Hungary', 'Active', 'Master', '2018-05-22 07:06:02'),
(100, 'IS', 'Iceland', 'Active', 'Master', '2018-05-22 07:06:02'),
(101, 'IN', 'India', 'Active', 'Master', '2018-05-22 07:06:02'),
(102, 'ID', 'Indonesia', 'Active', 'Master', '2018-05-22 07:06:02'),
(103, 'IR', 'Iran, Islamic Republic Of', 'Active', 'Master', '2018-05-22 07:06:02'),
(104, 'IQ', 'Iraq', 'Active', 'Master', '2018-05-22 07:06:02'),
(105, 'IE', 'Ireland', 'Active', 'Master', '2018-05-22 07:06:02'),
(106, 'IM', 'Isle of Man', 'Active', 'Master', '2018-05-22 07:06:02'),
(107, 'IL', 'Israel', 'Active', 'Master', '2018-05-22 07:06:02'),
(108, 'IT', 'Italy', 'Active', 'Master', '2018-05-22 07:06:02'),
(109, 'JM', 'Jamaica', 'Active', 'Master', '2018-05-22 07:06:02'),
(110, 'JP', 'Japan', 'Active', 'Master', '2018-05-22 07:06:02'),
(111, 'JE', 'Jersey', 'Active', 'Master', '2018-05-22 07:06:02'),
(112, 'JO', 'Jordan', 'Active', 'Master', '2018-05-22 07:06:02'),
(113, 'KZ', 'Kazakhstan', 'Active', 'Master', '2018-05-22 07:06:02'),
(114, 'KE', 'Kenya', 'Active', 'Master', '2018-05-22 07:06:02'),
(115, 'KI', 'Kiribati', 'Active', 'Master', '2018-05-22 07:06:02'),
(116, 'KP', 'Korea, Democratic People\'S Republic of', 'Active', 'Master', '2018-05-22 07:06:02'),
(117, 'KR', 'Korea, Republic of', 'Active', 'Master', '2018-05-22 07:06:02'),
(118, 'KW', 'Kuwait', 'Active', 'Master', '2018-05-22 07:06:02'),
(119, 'KG', 'Kyrgyzstan', 'Active', 'Master', '2018-05-22 07:06:02'),
(120, 'LA', 'Lao People\'S Democratic Republic', 'Active', 'Master', '2018-05-22 07:06:02'),
(121, 'LV', 'Latvia', 'Active', 'Master', '2018-05-22 07:06:02'),
(122, 'LB', 'Lebanon', 'Active', 'Master', '2018-05-22 07:06:02'),
(123, 'LS', 'Lesotho', 'Active', 'Master', '2018-05-22 07:06:02'),
(124, 'LR', 'Liberia', 'Active', 'Master', '2018-05-22 07:06:02'),
(125, 'LY', 'Libyan Arab Jamahiriya', 'Active', 'Master', '2018-05-22 07:06:02'),
(126, 'LI', 'Liechtenstein', 'Active', 'Master', '2018-05-22 07:06:02'),
(127, 'LT', 'Lithuania', 'Active', 'Master', '2018-05-22 07:06:02'),
(128, 'LU', 'Luxembourg', 'Active', 'Master', '2018-05-22 07:06:02'),
(129, 'MO', 'Macao', 'Active', 'Master', '2018-05-22 07:06:02'),
(130, 'MK', 'Macedonia, The Former Yugoslav Republic of', 'Active', 'Master', '2018-05-22 07:06:02'),
(131, 'MG', 'Madagascar', 'Active', 'Master', '2018-05-22 07:06:02'),
(132, 'MW', 'Malawi', 'Active', 'Master', '2018-05-22 07:06:02'),
(133, 'MY', 'Malaysia', 'Active', 'Master', '2018-05-22 07:06:02'),
(134, 'MV', 'Maldives', 'Active', 'Master', '2018-05-22 07:06:02'),
(135, 'ML', 'Mali', 'Active', 'Master', '2018-05-22 07:06:02'),
(136, 'MT', 'Malta', 'Active', 'Master', '2018-05-22 07:06:02'),
(137, 'MH', 'Marshall Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(138, 'MQ', 'Martinique', 'Active', 'Master', '2018-05-22 07:06:02'),
(139, 'MR', 'Mauritania', 'Active', 'Master', '2018-05-22 07:06:02'),
(140, 'MU', 'Mauritius', 'Active', 'Master', '2018-05-22 07:06:02'),
(141, 'YT', 'Mayotte', 'Active', 'Master', '2018-05-22 07:06:02'),
(142, 'MX', 'Mexico', 'Active', 'Master', '2018-05-22 07:06:02'),
(143, 'FM', 'Micronesia, Federated States of', 'Active', 'Master', '2018-05-22 07:06:02'),
(144, 'MD', 'Moldova, Republic of', 'Active', 'Master', '2018-05-22 07:06:02'),
(145, 'MC', 'Monaco', 'Active', 'Master', '2018-05-22 07:06:02'),
(146, 'MN', 'Mongolia', 'Active', 'Master', '2018-05-22 07:06:02'),
(147, 'MS', 'Montserrat', 'Active', 'Master', '2018-05-22 07:06:02'),
(148, 'MA', 'Morocco', 'Active', 'Master', '2018-05-22 07:06:02'),
(149, 'MZ', 'Mozambique', 'Active', 'Master', '2018-05-22 07:06:02'),
(150, 'MM', 'Myanmar', 'Active', 'Master', '2018-05-22 07:06:02'),
(151, 'NA', 'Namibia', 'Active', 'Master', '2018-05-22 07:06:02'),
(152, 'NR', 'Nauru', 'Active', 'Master', '2018-05-22 07:06:02'),
(153, 'NP', 'Nepal', 'Active', 'Master', '2018-05-22 07:06:02'),
(154, 'NL', 'Netherlands', 'Active', 'Master', '2018-05-22 07:06:02'),
(155, 'AN', 'Netherlands Antilles', 'Active', 'Master', '2018-05-22 07:06:02'),
(156, 'NC', 'New Caledonia', 'Active', 'Master', '2018-05-22 07:06:02'),
(157, 'NZ', 'New Zealand', 'Active', 'Master', '2018-05-22 07:06:02'),
(158, 'NI', 'Nicaragua', 'Active', 'Master', '2018-05-22 07:06:02'),
(159, 'NE', 'Niger', 'Active', 'Master', '2018-05-22 07:06:02'),
(160, 'NG', 'Nigeria', 'Active', 'Master', '2018-05-22 07:06:02'),
(161, 'NU', 'Niue', 'Active', 'Master', '2018-05-22 07:06:02'),
(162, 'NF', 'Norfolk Island', 'Active', 'Master', '2018-05-22 07:06:02'),
(163, 'MP', 'Northern Mariana Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(164, 'NO', 'Norway', 'Active', 'Master', '2018-05-22 07:06:02'),
(165, 'OM', 'Oman', 'Active', 'Master', '2018-05-22 07:06:02'),
(166, 'PK', 'Pakistan', 'Active', 'Master', '2018-05-22 07:06:02'),
(167, 'PW', 'Palau', 'Active', 'Master', '2018-05-22 07:06:02'),
(168, 'PS', 'Palestinian Territory, Occupied', 'Active', 'Master', '2018-05-22 07:06:02'),
(169, 'PA', 'Panama', 'Active', 'Master', '2018-05-22 07:06:02'),
(170, 'PG', 'Papua New Guinea', 'Active', 'Master', '2018-05-22 07:06:02'),
(171, 'PY', 'Paraguay', 'Active', 'Master', '2018-05-22 07:06:02'),
(172, 'PE', 'Peru', 'Active', 'Master', '2018-05-22 07:06:02'),
(173, 'PH', 'Philippines', 'Active', 'Master', '2018-05-22 07:06:02'),
(174, 'PN', 'Pitcairn', 'Active', 'Master', '2018-05-22 07:06:02'),
(175, 'PL', 'Poland', 'Active', 'Master', '2018-05-22 07:06:02'),
(176, 'PT', 'Portugal', 'Active', 'Master', '2018-05-22 07:06:02'),
(177, 'PR', 'Puerto Rico', 'Active', 'Master', '2018-05-22 07:06:02'),
(178, 'QA', 'Qatar', 'Active', 'Master', '2018-05-22 07:06:02'),
(179, 'RE', 'Reunion', 'Active', 'Master', '2018-05-22 07:06:02'),
(180, 'RO', 'Romania', 'Active', 'Master', '2018-05-22 07:06:02'),
(181, 'RU', 'Russian Federation', 'Active', 'Master', '2018-05-22 07:06:02'),
(182, 'RW', 'RWANDA', 'Active', 'Master', '2018-05-22 07:06:02'),
(183, 'SH', 'Saint Helena', 'Active', 'Master', '2018-05-22 07:06:02'),
(184, 'KN', 'Saint Kitts and Nevis', 'Active', 'Master', '2018-05-22 07:06:02'),
(185, 'LC', 'Saint Lucia', 'Active', 'Master', '2018-05-22 07:06:02'),
(186, 'PM', 'Saint Pierre and Miquelon', 'Active', 'Master', '2018-05-22 07:06:02'),
(187, 'VC', 'Saint Vincent and the Grenadines', 'Active', 'Master', '2018-05-22 07:06:02'),
(188, 'WS', 'Samoa', 'Active', 'Master', '2018-05-22 07:06:02'),
(189, 'SM', 'San Marino', 'Active', 'Master', '2018-05-22 07:06:02'),
(190, 'ST', 'Sao Tome and Principe', 'Active', 'Master', '2018-05-22 07:06:02'),
(191, 'SA', 'Saudi Arabia', 'Active', 'Master', '2018-05-22 07:06:02'),
(192, 'SN', 'Senegal', 'Active', 'Master', '2018-05-22 07:06:02'),
(193, 'CS', 'Serbia and Montenegro', 'Active', 'Master', '2018-05-22 07:06:02'),
(194, 'SC', 'Seychelles', 'Active', 'Master', '2018-05-22 07:06:02'),
(195, 'SL', 'Sierra Leone', 'Active', 'Master', '2018-05-22 07:06:02'),
(196, 'SG', 'Singapore', 'Active', 'Master', '2018-05-22 07:06:02'),
(197, 'SK', 'Slovakia', 'Active', 'Master', '2018-05-22 07:06:02'),
(198, 'SI', 'Slovenia', 'Active', 'Master', '2018-05-22 07:06:02'),
(199, 'SB', 'Solomon Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(200, 'SO', 'Somalia', 'Active', 'Master', '2018-05-22 07:06:02'),
(201, 'ZA', 'South Africa', 'Active', 'Master', '2018-05-22 07:06:02'),
(202, 'GS', 'South Georgia and the South Sandwich Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(203, 'ES', 'Spain', 'Active', 'Master', '2018-05-22 07:06:02'),
(204, 'LK', 'Sri Lanka', 'Active', 'Master', '2018-05-22 07:06:02'),
(205, 'SD', 'Sudan', 'Active', 'Master', '2018-05-22 07:06:02'),
(206, 'SR', 'Suriname', 'Active', 'Master', '2018-05-22 07:06:02'),
(207, 'SJ', 'Svalbard and Jan Mayen', 'Active', 'Master', '2018-05-22 07:06:02'),
(208, 'SZ', 'Swaziland', 'Active', 'Master', '2018-05-22 07:06:02'),
(209, 'SE', 'Sweden', 'Active', 'Master', '2018-05-22 07:06:02'),
(210, 'CH', 'Switzerland', 'Active', 'Master', '2018-05-22 07:06:02'),
(211, 'SY', 'Syrian Arab Republic', 'Active', 'Master', '2018-05-22 07:06:02'),
(212, 'TW', 'Taiwan, Province of China', 'Active', 'Master', '2018-05-22 07:06:02'),
(213, 'TJ', 'Tajikistan', 'Active', 'Master', '2018-05-22 07:06:02'),
(214, 'TZ', 'Tanzania, United Republic of', 'Active', 'Master', '2018-05-22 07:06:02'),
(215, 'TH', 'Thailand', 'Active', 'Master', '2018-05-22 07:06:02'),
(216, 'TL', 'Timor-Leste', 'Active', 'Master', '2018-05-22 07:06:02'),
(217, 'TG', 'Togo', 'Active', 'Master', '2018-05-22 07:06:02'),
(218, 'TK', 'Tokelau', 'Active', 'Master', '2018-05-22 07:06:02'),
(219, 'TO', 'Tonga', 'Active', 'Master', '2018-05-22 07:06:02'),
(220, 'TT', 'Trinidad and Tobago', 'Active', 'Master', '2018-05-22 07:06:02'),
(221, 'TN', 'Tunisia', 'Active', 'Master', '2018-05-22 07:06:02'),
(222, 'TR', 'Turkey', 'Active', 'Master', '2018-05-22 07:06:02'),
(223, 'TM', 'Turkmenistan', 'Active', 'Master', '2018-05-22 07:06:02'),
(224, 'TC', 'Turks and Caicos Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(225, 'TV', 'Tuvalu', 'Active', 'Master', '2018-05-22 07:06:02'),
(226, 'UG', 'Uganda', 'Active', 'Master', '2018-05-22 07:06:02'),
(227, 'UA', 'Ukraine', 'Active', 'Master', '2018-05-22 07:06:02'),
(228, 'AE', 'United Arab Emirates', 'Active', 'Master', '2018-05-22 07:06:02'),
(229, 'GB', 'United Kingdom', 'Active', 'Master', '2018-05-22 07:06:02'),
(230, 'US', 'United States', 'Active', 'Master', '2018-05-22 07:06:02'),
(231, 'UM', 'United States Minor Outlying Islands', 'Active', 'Master', '2018-05-22 07:06:02'),
(232, 'UY', 'Uruguay', 'Active', 'Master', '2018-05-22 07:06:02'),
(233, 'UZ', 'Uzbekistan', 'Active', 'Master', '2018-05-22 07:06:02'),
(234, 'VU', 'Vanuatu', 'Active', 'Master', '2018-05-22 07:06:02'),
(235, 'VE', 'Venezuela', 'Active', 'Master', '2018-05-22 07:06:02'),
(236, 'VN', 'Viet Nam', 'Active', 'Master', '2018-05-22 07:06:02'),
(237, 'VG', 'Virgin Islands, British', 'Active', 'Master', '2018-05-22 07:06:02'),
(238, 'VI', 'Virgin Islands, U.S.', 'Active', 'Master', '2018-05-22 07:06:02'),
(239, 'WF', 'Wallis and Futuna', 'Active', 'Master', '2018-05-22 07:06:02'),
(240, 'EH', 'Western Sahara', 'Active', 'Master', '2018-05-22 07:06:02'),
(241, 'YE', 'Yemen', 'Active', 'Master', '2018-05-22 07:06:02'),
(242, 'ZM', 'Zambia', 'Active', 'Master', '2018-05-22 07:06:02'),
(243, 'ZW', 'Zimbabwe', 'Active', 'Master', '2018-05-22 07:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `epass`
--

CREATE TABLE `epass` (
  `sno` int(11) NOT NULL,
  `passid` varchar(1000) DEFAULT NULL,
  `rfid` varchar(1000) DEFAULT NULL,
  `userid` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `mobileno` varchar(1000) DEFAULT NULL,
  `prooftype` varchar(1000) DEFAULT NULL,
  `proofid` varchar(1000) DEFAULT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `areacode` varchar(1000) DEFAULT NULL,
  `areaname` varchar(1000) DEFAULT NULL,
  `countercode` varchar(1000) DEFAULT NULL,
  `countername` varchar(1000) DEFAULT NULL,
  `passschemeno` varchar(1000) DEFAULT NULL,
  `passschemename` varchar(1000) DEFAULT NULL,
  `passtypeno` varchar(1000) DEFAULT NULL,
  `passtypename` varchar(1000) DEFAULT NULL,
  `restriction` varchar(1000) DEFAULT NULL,
  `duration` varchar(1000) DEFAULT NULL,
  `allovercity` varchar(1000) DEFAULT NULL,
  `fromlocation` varchar(1000) DEFAULT NULL,
  `tolocation` varchar(1000) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `referenceid` varchar(1000) DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Counter',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epass`
--

INSERT INTO `epass` (`sno`, `passid`, `rfid`, `userid`, `name`, `email`, `mobileno`, `prooftype`, `proofid`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `areacode`, `areaname`, `countercode`, `countername`, `passschemeno`, `passschemename`, `passtypeno`, `passtypename`, `restriction`, `duration`, `allovercity`, `fromlocation`, `tolocation`, `amount`, `referenceid`, `expirydate`, `status`, `updateby`, `updatedate`) VALUES
(1, '1117 MTC DL 1', NULL, '1117', '', 'prematix_rajesh@hotmail.com', '', '', '', 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '', '', '', '', '1', 'Daily Pass', '1', 'Deluxe daily pass', '', '1', 'allovercity', '', '', '70', '1384279', '2018-06-28', 'Active', '1117', '2018-06-27 09:05:49'),
(2, '1113 77/MDS DL 1', NULL, '1113', '', 'sairam.iyer95@gmail.com', '', '', '', 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '', '', '', '', '1', 'Daily Pass', '1', 'Deluxe daily pass', '', '1', 'allovercity', '', '', '70', '', '2018-06-27', 'Active', '1113', '2018-06-27 09:05:50'),
(3, '1117 MTC ML 2', NULL, '1117', '', 'prematix_rajesh@hotmail.com', '', '', '', 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '', '', '', '', '2', 'Monthly Pass', '2', 'Deluxe monthly pass', '', '30', '', 'Adyar', 'K.K.Nagar', '750', '4879787', '2018-06-26', 'Expired', '1117', '2018-06-27 09:08:42'),
(4, '1113 77/MDS DL 2', NULL, '1113', '', 'sairam.iyer95@gmail.com', '', '', '', 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '', '', '', '', '2', 'Monthly pass', '2', 'Deluxe monthly pass', '', '30', '', '', '', '750', '', '2018-07-27', 'Active', '1113', '2018-06-27 09:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `epasscity`
--

CREATE TABLE `epasscity` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epasscity`
--

INSERT INTO `epasscity` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', 'Active', '1114', '2018-06-27 08:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `epasscorporation`
--

CREATE TABLE `epasscorporation` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epasscorporation`
--

INSERT INTO `epasscorporation` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', 'Active', '1114', '2018-06-27 08:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `epasscounter`
--

CREATE TABLE `epasscounter` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `areacode` varchar(1000) DEFAULT NULL,
  `areaname` varchar(1000) DEFAULT NULL,
  `countercode` varchar(1000) DEFAULT NULL,
  `countername` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epasscounter`
--

INSERT INTO `epasscounter` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `areacode`, `areaname`, `countercode`, `countername`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '1', 'Adyar', '1', 'Adyar', 'Active', '1115', '2018-06-27 08:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `epasscountry`
--

CREATE TABLE `epasscountry` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(10000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epasscountry`
--

INSERT INTO `epasscountry` (`sno`, `countrycode`, `countryname`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'Active', 'Master', '2018-05-22 08:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `epassplace`
--

CREATE TABLE `epassplace` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `areacode` varchar(1000) DEFAULT NULL,
  `areaname` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epassplace`
--

INSERT INTO `epassplace` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `areacode`, `areaname`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '1', 'Adyar', 'Active', '1115', '2018-06-27 08:51:00'),
(2, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '2', 'K.K.Nagar', 'Active', '1115', '2018-06-27 08:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `epassstate`
--

CREATE TABLE `epassstate` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(500) DEFAULT NULL,
  `countryname` varchar(500) DEFAULT NULL,
  `statecode` varchar(500) DEFAULT NULL,
  `statename` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT 'Active',
  `updateby` varchar(500) DEFAULT 'Master',
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epassstate`
--

INSERT INTO `epassstate` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', 'Active', '1112', '2018-06-27 08:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `fairdetails`
--

CREATE TABLE `fairdetails` (
  `sno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `passschemeno` varchar(1000) DEFAULT NULL,
  `passschemename` varchar(1000) DEFAULT NULL,
  `passtypeno` varchar(1000) DEFAULT NULL,
  `passtypename` varchar(1000) DEFAULT NULL,
  `restriction` varchar(1000) DEFAULT NULL,
  `duration` varchar(1000) DEFAULT NULL,
  `allovercity` varchar(1000) DEFAULT NULL,
  `fromlocation` varchar(1000) DEFAULT NULL,
  `tolocation` varchar(1000) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fairdetails`
--

INSERT INTO `fairdetails` (`sno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `passschemeno`, `passschemename`, `passtypeno`, `passtypename`, `restriction`, `duration`, `allovercity`, `fromlocation`, `tolocation`, `amount`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '1', 'Daily pass', '1', 'Deluxe daily pass', '', '1', 'allovercity', '', '', '70', 'Active', '1115', '2018-06-27 09:01:28'),
(2, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '2', 'Monthly pass', '2', 'Deluxe monthly pass', '', '1', 'allovercity', '', '', '2500', 'Active', '1115', '2018-06-27 09:01:35'),
(3, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '2', 'Monthly pass', '2', 'Deluxe monthly pass', '', '30', '', 'Adyar', 'K.K.Nagar', '750', 'Active', '1115', '2018-06-27 09:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `otplog`
--

CREATE TABLE `otplog` (
  `SNo` int(11) NOT NULL,
  `MobileNoorEmail` varchar(500) DEFAULT NULL,
  `OTP` int(11) DEFAULT NULL,
  `Validtill` timestamp NULL DEFAULT NULL,
  `CreatedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otplog`
--

INSERT INTO `otplog` (`SNo`, `MobileNoorEmail`, `OTP`, `Validtill`, `CreatedTime`) VALUES
(1, 'prematix_rajesh@hotmail.com', 6335, '2018-06-27 09:07:27', '2018-06-27 09:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `passscheme`
--

CREATE TABLE `passscheme` (
  `passschemeno` int(11) NOT NULL,
  `countrycode` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `passschemename` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passscheme`
--

INSERT INTO `passscheme` (`passschemeno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `passschemename`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', 'Daily pass', 'Active', '1115', '2018-06-27 08:55:35'),
(2, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', 'Monthly pass', 'Active', '1115', '2018-06-27 08:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `passtype`
--

CREATE TABLE `passtype` (
  `passtypeno` int(11) NOT NULL,
  `countrycode` varchar(1000) NOT NULL,
  `countryname` varchar(1000) NOT NULL,
  `statecode` varchar(1000) NOT NULL,
  `statename` varchar(1000) NOT NULL,
  `corporationcode` varchar(1000) NOT NULL,
  `corporationname` varchar(1000) NOT NULL,
  `citycode` varchar(1000) NOT NULL,
  `cityname` varchar(1000) NOT NULL,
  `passschemeno` varchar(1000) NOT NULL,
  `passschemename` varchar(1000) NOT NULL,
  `passtypename` varchar(1000) NOT NULL,
  `restriction` varchar(10000) DEFAULT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Active',
  `updateby` varchar(1000) NOT NULL DEFAULT 'Master',
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passtype`
--

INSERT INTO `passtype` (`passtypeno`, `countrycode`, `countryname`, `statecode`, `statename`, `corporationcode`, `corporationname`, `citycode`, `cityname`, `passschemeno`, `passschemename`, `passtypename`, `restriction`, `status`, `updateby`, `updatedate`) VALUES
(1, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '1', 'Daily pass', 'Deluxe daily pass', '', 'Active', '1115', '2018-06-27 09:00:00'),
(2, 'IN', 'India', 'TN', 'Tamil Nadu', '77/MDS', 'MTC', '6', 'Chennai', '2', 'Monthly pass', 'Deluxe monthly pass', '', 'Active', '1115', '2018-06-27 09:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `userid` int(11) NOT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `email` varchar(10000) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(1000) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(1000) DEFAULT NULL,
  `profileimg` mediumtext,
  `rights` varchar(10000) DEFAULT NULL,
  `prooftype` varchar(10000) DEFAULT NULL,
  `proofid` varchar(1000) DEFAULT NULL,
  `designation` varchar(10000) DEFAULT NULL,
  `countrycode` varchar(100) DEFAULT 'IN',
  `countryname` varchar(100) DEFAULT 'India',
  `statecode` varchar(1000) DEFAULT NULL,
  `statename` varchar(1000) DEFAULT NULL,
  `citycode` varchar(1000) DEFAULT NULL,
  `cityname` varchar(1000) DEFAULT NULL,
  `corporationcode` varchar(1000) DEFAULT NULL,
  `corporationname` varchar(1000) DEFAULT NULL,
  `areaname` varchar(1000) DEFAULT NULL,
  `areacode` varchar(1000) DEFAULT NULL,
  `countercode` varchar(1000) DEFAULT NULL,
  `countername` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(10000) DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `theme` varchar(500) NOT NULL DEFAULT 'rgb(255, 152, 0)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`userid`, `mobileno`, `password`, `role`, `email`, `name`, `gender`, `dob`, `age`, `profileimg`, `rights`, `prooftype`, `proofid`, `designation`, `countrycode`, `countryname`, `statecode`, `statename`, `citycode`, `cityname`, `corporationcode`, `corporationname`, `areaname`, `areacode`, `countercode`, `countername`, `status`, `updateby`, `updatedate`, `theme`) VALUES
(1000, '7874329930', '12345', 'Master', 'rajeshjas20296@gmail.com', 'Rajesh B', 'Male', '1996-02-20', '23', NULL, 'All', NULL, NULL, 'Creator', 'IN', 'India', '', '', '', '', '', '', '', '', NULL, NULL, 'Active', 'MD', '2018-05-25 11:08:28', 'rgb(255, 152, 0)'),
(1111, '', '12345', 'Conductor', 'ashoksennan430@gmail.com', 'Ashok Sennan', '', '0000-00-00', '', 'null', '', 'Gmail', '109004092159988075877', '', 'IN', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'ashoksennan430@gmail.com', '2018-06-27 08:26:26', 'rgb(255, 152, 0)'),
(1112, '8190859134', 'epass123', 'SAdmin', 'prematix_veeramani@hotmail.com', 'Veeramani G', NULL, NULL, NULL, NULL, 'Admin Login,Add States', NULL, NULL, NULL, 'IN', 'India', '', '', '', '', '', '', '', '', NULL, NULL, 'Active', '1000', '2018-06-27 08:33:18', 'rgb(255, 152, 0)'),
(1113, '', '12345', 'Passenger', 'sairam.iyer95@gmail.com', 'sairam iyer', 'M', '0000-00-00', 'undefined', 'null', '', 'Gmail', '103617144194722362719', '', 'IN', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'sairam.iyer95@gmail.com', '2018-06-27 08:39:47', 'rgb(255, 152, 0)'),
(1114, '9894591650', 'epass123', 'Admin', 'iniyan455@gmail.com', 'Iniyan Arul', NULL, NULL, NULL, NULL, 'Add Corporation,Add Cities,Sub-Admin Login', NULL, NULL, NULL, 'IN', 'India', 'TN', 'Tamil Nadu', '', '', '', '', '', '', NULL, NULL, 'Active', '1112', '2018-06-27 08:43:03', 'rgb(255, 152, 0)'),
(1115, '9789636854', 'epass123', 'SubAdmin', 'prematix_divya@hotmail.com', 'Divya V', NULL, NULL, NULL, NULL, 'Add Area,Add Counter,Counter Login,Bus Service,Pass Scheme,Pass Type,Fair Details City,Fair Details Location', NULL, NULL, NULL, 'IN', 'India', 'TN', 'Tamil Nadu', '6', 'Chennai', '77/MDS', 'MTC', '', '', NULL, NULL, 'Active', '1114', '2018-06-27 08:49:17', 'rgb(255, 152, 0)'),
(1116, '7358871915', 'epass123', 'Counter', 'prematix_shruthi@hotmail.com', 'Shruthi M', NULL, NULL, NULL, NULL, 'Create Pass,Renewal Pass,Conductor Login', NULL, NULL, NULL, 'IN', 'India', 'TN', 'Tamil Nadu', '6', 'Chennai', '77/MDS', 'MTC', 'Adyar', '1', NULL, NULL, 'Active', '1115', '2018-06-27 08:54:07', 'rgb(255, 152, 0)'),
(1117, '', '12345', 'Passenger', 'prematix_rajesh@hotmail.com', '', '', '0000-00-00', '', '', '', '', '', '', 'IN', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '', '2018-06-27 09:05:04', 'rgb(255, 152, 0)');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `sno` int(11) NOT NULL,
  `userid` varchar(1000) DEFAULT 'No',
  `addstate` varchar(1000) DEFAULT 'No',
  `addcorporation` varchar(1000) DEFAULT 'No',
  `addcity` varchar(1000) DEFAULT 'No',
  `addarea` varchar(1000) DEFAULT 'No',
  `addcounter` varchar(1000) DEFAULT 'No',
  `sadminlogin` varchar(1000) DEFAULT 'No',
  `adminlogin` varchar(1000) DEFAULT 'No',
  `subadminlogin` varchar(1000) DEFAULT 'No',
  `counterlogin` varchar(1000) DEFAULT 'No',
  `conductorlogin` varchar(1000) DEFAULT 'No',
  `busservice` varchar(1000) DEFAULT 'No',
  `passscheme` varchar(1000) DEFAULT 'No',
  `passtype` varchar(1000) DEFAULT 'No',
  `fairdetails` varchar(1000) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `sno` int(11) NOT NULL,
  `id` varchar(1000) DEFAULT NULL,
  `country` varchar(1000) DEFAULT NULL,
  `countryname` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `abbr` varchar(1000) DEFAULT NULL,
  `area` varchar(1000) DEFAULT NULL,
  `largestcity` varchar(1000) DEFAULT NULL,
  `capital` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT 'Active',
  `updateby` varchar(1000) DEFAULT 'Master',
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sno`, `id`, `country`, `countryname`, `name`, `abbr`, `area`, `largestcity`, `capital`, `status`, `updateby`, `updatedate`) VALUES
(1, '65', 'IN', 'India', 'Jammu and Kashmir', 'JK', '12541302SKM', 'Srinagar Jammu', 'Srinagar Jammu', 'Active', 'Master', '2018-05-22 07:15:05'),
(2, '66', 'IN', 'India', 'Jharkhand', 'JH', '32988134SKM', 'Ranchi', 'Ranchi', 'Active', 'Master', '2018-05-22 07:15:05'),
(3, '67', 'IN', 'India', 'Karnataka', 'KA', '61095297SKM', 'Bangalore', 'Bangalore', 'Active', 'Master', '2018-05-22 07:15:05'),
(4, '68', 'IN', 'India', 'Kerala', 'KL', '33406061SKM', 'Thiruvananthapuram', 'Thiruvananthapuram', 'Active', 'Master', '2018-05-22 07:15:05'),
(5, '69', 'IN', 'India', 'Madhya Pradesh', 'MP', '72626809SKM', 'Bhopal', 'Bhopal', 'Active', 'Master', '2018-05-22 07:15:05'),
(6, '70', 'IN', 'India', 'Maharashtra', 'MH', '112374333SKM', 'Mumbai', 'Mumbai', 'Active', 'Master', '2018-05-22 07:15:05'),
(7, '71', 'IN', 'India', 'Manipur', 'MN', '2855794SKM', 'Imphal', 'Imphal', 'Active', 'Master', '2018-05-22 07:15:05'),
(8, '72', 'IN', 'India', 'Meghalaya', 'ML', '2966889SKM', 'Shillong', 'Shillong', 'Active', 'Master', '2018-05-22 07:15:05'),
(9, '73', 'IN', 'India', 'Mizoram', 'MZ', '1097206SKM', 'Aizawl', 'Aizawl', 'Active', 'Master', '2018-05-22 07:15:05'),
(10, '74', 'IN', 'India', 'Nagaland', 'NL', '1978502SKM', 'Kohima', 'Kohima', 'Active', 'Master', '2018-05-22 07:15:05'),
(11, '75', 'IN', 'India', 'Odisha', 'OD', '41974218SKM', 'Bhubaneswar', 'Bhubaneswar', 'Active', 'Master', '2018-05-22 07:15:05'),
(12, '76', 'IN', 'India', 'Punjab', 'PB', '27743338SKM', 'Chandigarh', 'Chandigarh', 'Active', 'Master', '2018-05-22 07:15:05'),
(13, '77', 'IN', 'India', 'Rajasthan', 'RJ', '68548437SKM', 'Jaipur', 'Jaipur', 'Active', 'Master', '2018-05-22 07:15:05'),
(14, '78', 'IN', 'India', 'Sikkim', 'SK', '610577SKM', 'Gangtok', 'Gangtok', 'Active', 'Master', '2018-05-22 07:15:05'),
(15, '79', 'IN', 'India', 'Tamil Nadu', 'TN', '72147030SKM', 'Chennai', 'Chennai', 'Active', 'Master', '2018-05-22 07:15:05'),
(16, '80', 'IN', 'India', 'Telangana', 'TS', '3519397837SKM', 'Hyderabad', 'Hyderabad', 'Active', 'Master', '2018-05-22 07:15:05'),
(17, '81', 'IN', 'India', 'Tripura', 'TR', '3673917SKM', 'Agartala', 'Agartala', 'Active', 'Master', '2018-05-22 07:15:05'),
(18, '82', 'IN', 'India', 'Uttar Pradesh', 'UP', '199812341SKM', 'Lucknow', 'Lucknow', 'Active', 'Master', '2018-05-22 07:15:05'),
(19, '83', 'IN', 'India', 'Uttarakhand', 'UK', '10086292SKM', 'Dehradun', 'Dehradun', 'Active', 'Master', '2018-05-22 07:15:05'),
(20, '84', 'IN', 'India', 'West Bengal', 'WB', '91276115SKM', 'Kolkata', 'Kolkata', 'Active', 'Master', '2018-05-22 07:15:05'),
(21, '85', 'IN', 'India', 'Andaman and Nicobar Islands', 'AN', '8249SKM', 'Port Blair', 'Port Blair', 'Active', 'Master', '2018-05-22 07:15:05'),
(22, '86', 'IN', 'India', 'Chandigarh', 'CH', '114SKM', 'Chandigarh', 'Chandigarh', 'Active', 'Master', '2018-05-22 07:15:05'),
(23, '87', 'IN', 'India', 'Dadra and Nagar Haveli', 'DN', '491SKM', 'Silvassa', 'Silvassa', 'Active', 'Master', '2018-05-22 07:15:05'),
(24, '88', 'IN', 'India', 'Daman and Diu', 'DD', '112SKM', 'Daman', 'Daman', 'Active', 'Master', '2018-05-22 07:15:05'),
(25, '89', 'IN', 'India', 'Delhi', 'DL', '1490SKM', 'New Delhi', 'New Delhi', 'Active', 'Master', '2018-05-22 07:15:05'),
(26, '56', 'IN', 'India', 'Andhra Pradesh', 'AP', '49506799SKM', 'Hyderabad Amaravati', 'Hyderabad Amaravati', 'Active', 'Master', '2018-05-22 07:15:05'),
(27, '57', 'IN', 'India', 'Arunachal Pradesh', 'AR', '1383727SKM', 'Itanagar', 'Itanagar', 'Active', 'Master', '2018-05-22 07:15:05'),
(28, '58', 'IN', 'India', 'Assam', 'AS', '31205576SKM', 'Dispur', 'Dispur', 'Active', 'Master', '2018-05-22 07:15:05'),
(29, '59', 'IN', 'India', 'Bihar', 'BR', '104099452SKM', 'Patna', 'Patna', 'Active', 'Master', '2018-05-22 07:15:05'),
(30, '60', 'IN', 'India', 'Chhattisgarh', 'CG', '25545198SKM', 'Naya Raipur', 'Naya Raipur', 'Active', 'Master', '2018-05-22 07:15:05'),
(31, '61', 'IN', 'India', 'Goa', 'GA', '1458545SKM', 'Panaji', 'Panaji', 'Active', 'Master', '2018-05-22 07:15:05'),
(32, '62', 'IN', 'India', 'Gujarat', 'GJ', '60439692SKM', 'Gandhinagar', 'Gandhinagar', 'Active', 'Master', '2018-05-22 07:15:05'),
(33, '63', 'IN', 'India', 'Haryana', 'HR', '25351462SKM', 'Chandigarh', 'Chandigarh', 'Active', 'Master', '2018-05-22 07:15:05'),
(34, '64', 'IN', 'India', 'Himachal Pradesh', 'HP', '6864602SKM', 'Shimla Dharamshala', 'Shimla Dharamshala', 'Active', 'Master', '2018-05-22 07:15:05'),
(35, '90', 'IN', 'India', 'Lakshadweep', 'LD', '32SKM', 'Kavaratti', 'Kavaratti', 'Active', 'Master', '2018-05-22 07:15:05'),
(36, '91', 'IN', 'India', 'Puducherry', 'PY', '492SKM', 'Pondicherry', 'Pondicherry', 'Active', 'Master', '2018-05-22 07:15:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `busservice`
--
ALTER TABLE `busservice`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epass`
--
ALTER TABLE `epass`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epasscity`
--
ALTER TABLE `epasscity`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epasscorporation`
--
ALTER TABLE `epasscorporation`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epasscounter`
--
ALTER TABLE `epasscounter`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epasscountry`
--
ALTER TABLE `epasscountry`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epassplace`
--
ALTER TABLE `epassplace`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `epassstate`
--
ALTER TABLE `epassstate`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `fairdetails`
--
ALTER TABLE `fairdetails`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `otplog`
--
ALTER TABLE `otplog`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `passscheme`
--
ALTER TABLE `passscheme`
  ADD PRIMARY KEY (`passschemeno`);

--
-- Indexes for table `passtype`
--
ALTER TABLE `passtype`
  ADD PRIMARY KEY (`passtypeno`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `busservice`
--
ALTER TABLE `busservice`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1220;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `epass`
--
ALTER TABLE `epass`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `epasscity`
--
ALTER TABLE `epasscity`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epasscorporation`
--
ALTER TABLE `epasscorporation`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epasscounter`
--
ALTER TABLE `epasscounter`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epasscountry`
--
ALTER TABLE `epasscountry`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epassplace`
--
ALTER TABLE `epassplace`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `epassstate`
--
ALTER TABLE `epassstate`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fairdetails`
--
ALTER TABLE `fairdetails`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `otplog`
--
ALTER TABLE `otplog`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passscheme`
--
ALTER TABLE `passscheme`
  MODIFY `passschemeno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passtype`
--
ALTER TABLE `passtype`
  MODIFY `passtypeno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
