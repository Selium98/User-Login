-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2020 at 07:16 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `democerti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-02-13 12:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `RollNo` varchar(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `RollNo`, `Address`, `Password`, `RegDate`) VALUES
(18, 'Harshal', 'Kulkarni', '17ce1122', 'Thane', '7815696ecbf1c96e6894b779456d330e', '2020-06-17 10:38:56'),
(19, 'Yash', 'Kulkarni', '17ce1982', 'Thane', '7815696ecbf1c96e6894b779456d330e', '2020-06-17 10:44:16'),
(20, 'Hitesh', 'Jaware', '18ce4567', 'Pune', '7815696ecbf1c96e6894b779456d330e', '2020-06-17 10:44:43'),
(21, 'Seema', 'Apte', '17ce1189', 'Mumbai', '7815696ecbf1c96e6894b779456d330e', '2020-06-17 12:19:51'),
(22, 'Karan', 'Kumar', '18ce5655', 'Navi Mumbai', '7815696ecbf1c96e6894b779456d330e', '2020-06-17 12:20:46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
