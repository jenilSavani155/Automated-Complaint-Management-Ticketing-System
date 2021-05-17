-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 05:20 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

CREATE DATABASE complaint;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00"; 


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `fullName` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `image` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `fullName`, `password`, `image`) VALUES
(1, 'Admin', 'savan makvana', '202cb962ac59075b964b07152d234b70', ''),
(2, 'admin', 'admin', '584da0a485f209242059e6de66aac904', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL,
  `creationDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `creationDate`) VALUES
(1, 'cloud Storage issue', 'cloud storage out of space', '2021-05-15 15:14:30.731202'),
(3, 'Technical Issue', 'Hardware support', '2021-05-15 15:15:50.534021'),
(4, 'Software Issue', 'issue due to software bugs', '2021-05-15 15:16:17.387059');

-- --------------------------------------------------------

--
-- Table structure for table `cloud_engineear`
--

CREATE TABLE `cloud_engineear` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `complaint_number` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cloud_engineear`
--

INSERT INTO `cloud_engineear` (`id`, `first_name`, `last_name`, `complaint_number`, `status`, `email`, `password`) VALUES
(5, 'savan', 'makvana', 14, 'on_work', 'savan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'engg 1', '', 16, 'on_work', 'engg1@aa.com', '202cb962ac59075b964b07152d234b70'),
(7, 'eng2', '', 0, '', 'e@a.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'jay p', '', 17, 'on_work', 'jay1@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNo` int(55) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `user_remark` varchar(255) DEFAULT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNo`, `status`, `remark`, `user_remark`, `remarkDate`) VALUES
(18, 12, 'in process', 'hello your precedfvvdfd \r\nvf\r\n\r\ndfvd\r\nfvd\r\nfvsddsysdudvhi sdvdfvdfv', 'effrferf', '2021-05-15 06:04:27'),
(19, 12, 'in process', 'dsvfdvdfsdvsdv\r\nsdvv\r\ndf\r\nvdf\r\nv\r\ndfvd', 'referferfefef', '2021-05-15 06:04:35'),
(20, 14, 'in process', 'frerferfhttp://localhost/complaint_mgt_sys-master/user/index.php#http://localhost/complaint_mgt_sys-master/user/index.php#http://localhost/complaint_mgt_sys-master/user/index.php#http://localhost/complaint_mgt_sys-master/user/index.php#', 'gtrrrrrrrrrrrrgtrrrrrrrrrrrrgtrrrrrrrrrrrrgtrrrrrrrrrrrr', '2021-05-15 06:15:41'),
(21, 15, 'in process', 'heihfirgjrighjiv jivfvifjvifvjfvi fijvfivjfivjviv jij vifjv', 'heihfirgjrighjiv jivfvifjvifvjfvi fijvfivjfivjviv jij vifjv', '2021-05-19 06:26:31'),
(22, 15, 'in process', '22222222\r\nfdvdfv\r\nvdf\r\nvdf\r\nv\r\ndfv\r\ndf\r\nv\r\ndv\r\ndf\r\nvd\r\nv\r\nv', 'heihfirgjrighjiv jivfvifjvifvjfvi fijvfivjfivjviv jij vifjv', '2021-05-20 06:26:31'),
(23, 13, 'in process', 'processss............', 'hrfhurfhrufrhfur hrfuhfuru rufhrfuhrf', '2021-05-15 08:40:05'),
(24, 14, '', '', 'replyyyyyyyyyyyyyyyyyyyyyy from DB', '2021-05-15 13:00:46'),
(25, 14, '', '', 'fffff', '2021-05-15 13:24:25'),
(26, 14, '', '', 'reply success fully ', '2021-05-15 13:25:04'),
(27, 14, '', '', 'rfergtrgtrtrtrtrrtttttttttttttttttt', '2021-05-15 13:25:49'),
(28, 17, 'in process', 'dbsdbsk', NULL, '2021-05-15 15:07:38'),
(29, 17, '', '', 'where will you start my work', '2021-05-15 15:08:23'),
(30, 17, 'in process', 'start soon', NULL, '2021-05-15 15:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaintNo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloud_eng_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `complaint_title` varchar(255) NOT NULL,
  `complaint_type` varchar(255) NOT NULL,
  `complaint_detail` mediumtext NOT NULL,
  `complaint_file` varchar(255) NOT NULL,
  `rgdDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(55) DEFAULT NULL,
  `lastUpdation` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaintNo`, `user_id`, `cloud_eng_id`, `category_id`, `department`, `complaint_title`, `complaint_type`, `complaint_detail`, `complaint_file`, `rgdDate`, `status`, `lastUpdation`) VALUES
(1, 1, 5, 1, 'CS', 'demo title', 'Complaint', 'demo complaint description', 'N/A', '2020-01-08 18:37:59', 'in process', '2021-05-14 17:15:30'),
(2, 1, 5, 1, 'CS', 'water issue', 'Complaint', 'we are having water issue since many days kindly solve the issue as soon as possible', 'building.jpg', '2020-01-08 18:39:28', 'closed', '2021-05-14 17:00:57'),
(3, 1, NULL, 4, 'English', 'New issue for english dprtmnt', 'Complaint', 'english deprtment isssuee', 'N/A', '2020-01-12 06:10:15', 'closed', '2020-01-14 07:26:59'),
(4, 1, NULL, 1, 'BBA', 'BBA issue', 'Complaint', 'issue in bba ', 'Microsoft-bosque-programming-language.jpg', '2020-01-12 06:13:45', 'closed', '2020-01-14 07:39:24'),
(5, 1, NULL, 1, 'Commerce', 'Exam form issue', 'General Query', 'exam form issue', 'N/A', '2020-01-13 12:38:12', 'in process', '2020-01-14 07:55:58'),
(6, 2, NULL, 4, 'BBA', 'Point Bus issue', 'Complaint', 'we are having issue with the point bus', 'Capture.PNG', '2020-01-13 17:09:00', 'in process', '2020-01-14 07:43:06'),
(7, 2, NULL, 4, 'Commerce', 'general query Title', 'General Query', 'this is the detail of the complaint', 'N/A', '2020-01-14 07:44:33', 'in process', '2020-01-14 07:45:56'),
(8, 2, 5, 4, 'Commerce', 'No teacher since 4 days', 'Complaint', 'there is no teacher here in our commerce department', 'N/A', '2020-01-14 15:34:38', 'closed', '2021-05-14 17:01:05'),
(11, 5, 5, 3, 'Computer Science', 'test complain', 'Complaint', 'testasdfa dfasdfasdfasdf', 'N/A', '2021-05-11 15:48:58', 'closed', '2021-05-14 17:33:44'),
(12, 6, NULL, 1, 'Computer Science', 'Web Development | Graphic Design | Digital Marketing', 'Complaint', 'Web Development | Graphic Design | Digital MarketingWeb Development | Graphic Design | Digital Marketing', '434458675.png', '2021-05-14 19:31:47', 'in process', '2021-05-15 06:04:27'),
(13, 6, 6, 3, 'BBA', 'e-commerce with admin panel', 'General Query', 'e-commerce with admin panele-commerce with admin panele-commerce with admin panel', 'Data-Management.png', '2021-05-14 19:31:58', 'in process', '2021-05-15 08:40:05'),
(14, 6, NULL, 4, 'English', 'Formal Shirt', 'General Query', 'Formal ShirtFormal Shirt Formal ShirtFormal ShirtFormal ShirtFormal ShirtFormal ShirtFormal Shirt', 'N/A', '2021-05-15 06:12:06', 'in process', '2021-05-15 06:15:41'),
(15, 6, 6, 1, 'Computer Science', 'Business Website', 'Complaint', 'Business WebsiteBusiness WebsiteBusiness WebsiteBusiness WebsiteBusiness WebsiteBusiness WebsiteBusiness WebsiteBusiness WebsiteBusiness WebsiteBusiness Website', 'N/A', '2021-05-15 06:24:09', NULL, '2021-05-15 06:25:30'),
(16, 6, 6, 3, 'Commerce', 'Web Development | Graphic Design | Digital Marketing', 'Complaint', 'Web Development | Graphic Design | Digital MarketingWeb Development | Graphic Design | Digital MarketingWeb Development | Graphic Design | Digital MarketingWeb Development | Graphic Design | Digital MarketingWeb Development | Graphic Design | Digital MarketingWeb Development | Graphic Design | Digital Marketing', 'N/A', '2021-05-15 06:52:40', NULL, '2021-05-15 06:53:16'),
(17, 7, 8, 3, 'Commerce', 'fdgdgdbdgg', 'General Query', 'cvcvvcvcvcvnmmbbbrrtrsasdd', 'N/A', '2021-05-15 15:03:10', 'in process', '2021-05-15 15:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `d_id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `crreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`d_id`, `department`, `crreationDate`, `updationDate`) VALUES
(1, 'Hardware Support', '2020-01-05 17:47:27', '2020-01-14 19:00:00'),
(2, 'Software Support', '2020-01-05 17:47:27', '2020-01-06 19:00:00'),
(4, 'Cloud Computing', '2020-01-05 18:45:07', '2020-01-06 19:00:00'),
(5, 'General Guidance', '2020-01-07 08:33:18', '2020-01-06 19:00:00');
(5, 'Storage Support', '2020-01-07 08:35:18', '2020-01-06 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `profilePhoto` varchar(255) NOT NULL,
  `regDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updationDate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fullName`, `email`, `password`, `department`, `profilePhoto`, `regDate`, `updationDate`) VALUES
(1, 'Ansari', 'abdulaziz@gmail.com', 'd861e207ca85f7e171d3225d4a4536cd', '', '', '2020-01-02 13:02:27.441476', '0000-00-00 00:00:00.000000'),
(2, 'Shahid Raza', 'shahid@gmail.com', 'f3224d90c778d5e456b49c75f85dd668', '', '', '2020-01-03 14:14:58.615533', '0000-00-00 00:00:00.000000'),
(3, 'Ali Raza', 'ali@gmail.com', '86318e52f5ed4801abe1d13d509443de', '', '', '2020-01-14 15:45:07.011276', '0000-00-00 00:00:00.000000'),
(5, 'savan', 'savan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2021-05-11 15:47:39.846316', '0000-00-00 00:00:00.000000'),
(6, 'user', 'user@aa.com', '202cb962ac59075b964b07152d234b70', '', '', '2021-05-11 15:47:39.846316', '0000-00-00 00:00:00.000000'),
(7, 'jenil savani', 'jenil1@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', '2021-05-15 15:01:33.619355', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cloud_engineear`
--
ALTER TABLE `cloud_engineear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaintNo`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cloud_engineear`
--
ALTER TABLE `cloud_engineear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaintNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
