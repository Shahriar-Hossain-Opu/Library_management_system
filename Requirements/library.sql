-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 02:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Tousif Mahmud Emon', 'tousif@gmail.com', 'tousif', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-05 17:03:02'),
(3, 'opu', 'shahriarhossainapu11@gmail.com', 'opu', '81dc9bdb52d04dc20036dbd8313ed055', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Michael Margolis', '2022-08-06 12:00:15', NULL),
(2, 'E Balagurusamy', '2022-08-06 12:01:11', NULL),
(3, 'Behrouz A. Forouzan', '2022-08-06 12:03:39', NULL),
(4, 'Abraham Silberschatz ', '2022-08-06 12:07:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'Arduino Cook Book', 1, 1, 23456789, 400, '2022-08-06 12:04:58', NULL),
(2, 'Operating System', 5, 4, 234567890, 500, '2022-08-06 12:08:24', NULL),
(3, 'Data Communication', 4, 3, 2147483647, 380, '2022-08-06 12:09:12', NULL),
(4, 'Ansi C', 8, 2, 2147483647, 250, '2022-08-06 12:09:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(100) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Microcontroller', 1, '2022-08-06 11:53:39', NULL),
(2, 'Web Engineering', 1, '2022-08-06 11:53:55', NULL),
(3, 'Sensor Technology', 1, '2022-08-06 11:54:12', NULL),
(4, 'Data Communication', 1, '2022-08-06 11:54:25', NULL),
(5, 'Operating System', 1, '2022-08-06 11:54:43', NULL),
(6, 'Industrial IOT', 1, '2022-08-06 11:54:54', NULL),
(7, 'Database Management', 1, '2022-08-06 11:55:07', NULL),
(8, 'C Programming', 1, '2022-08-06 11:55:23', NULL),
(9, 'Wireless Communication', 1, '2022-08-06 11:55:34', NULL),
(10, 'Embedded System ', 1, '2022-08-06 11:55:53', NULL),
(11, 'Signal Processing', 1, '2022-08-06 11:56:09', NULL),
(12, 'Object Oriented Programming', 1, '2022-08-06 11:56:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID0001', 'Tousif Mahmud Emon', 'tousif@gmail.com', '01959895748', 'e10adc3949ba59abbe56e057f20f883e', 1, '2022-08-05 17:04:22', '2022-08-05 17:07:20'),
(2, 'SID0002', 'Shahriar Hossain Opu', 'opu@gmail.com', '01715209438', 'e10adc3949ba59abbe56e057f20f883e', 1, '2022-08-05 17:05:59', NULL),
(3, 'SID0003', 'Nur-E-Ferdaus', 'ifrad@gmail.com', '01715209438', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2022-08-06 11:58:08', NULL),
(4, 'SID0004', 'Bicrom Adhikari', 'bicrom@gmail.com', '01715209438', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2022-08-06 11:58:36', NULL),
(5, 'SID0005', 'Al-amin', 'alamin@gmail.com', '01731149764', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2022-08-06 11:59:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
