-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 07:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

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
  `full_name` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `image` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `full_name`, `password`, `image`) VALUES
(1, 'Admin', 'Admin', '202cb962ac59075b964b07152d234b70', '');

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
(1, 'Cloud storage Issue', 'Cloud Storage Out of Space', '2021-05-27 16:10:55.775908'),
(2, 'Technical Issue', 'Hardware Support Needed', '2021-05-27 16:11:47.925641'),
(3, 'Software Issue', 'Issue due to Software Bugs', '2021-05-27 16:12:50.447109');

-- --------------------------------------------------------

--
-- Table structure for table `cloud_engineear`
--

CREATE TABLE `cloud_engineear` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `complaint_number` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'idle',
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cloud_engineear`
--

INSERT INTO `cloud_engineear` (`id`, `full_name`, `complaint_number`, `status`, `email`, `password`) VALUES
(1, 's@gmail.com', 1, 'on_work', 's@gmail.com', '202cb962ac59075b964b07152d234b70');

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
(1, 1, 'closed', 'done', NULL, '2021-05-28 16:13:49');

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
(1, 1, 1, 1, 'Hardware', 'mmkm', 'Complaint', 'kkmkm', 'N/A', '2021-05-28 16:12:47', 'closed', '2021-05-28 16:13:49');

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
(1, 'Hardware', '2020-01-05 17:47:27', '2021-05-15 15:45:31'),
(2, 'Software', '2020-01-05 17:47:27', '2021-05-15 15:45:36'),
(4, 'Virus', '2020-01-05 18:45:07', '2021-05-15 15:45:48'),
(5, 'Cloud Computing', '2020-01-07 08:33:18', '2021-05-15 15:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `profilePhoto` varchar(255) DEFAULT NULL,
  `regDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updationDate` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `full_name`, `email`, `password`, `department`, `profilePhoto`, `regDate`, `updationDate`) VALUES
(1, 'j', 'j@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, '2021-05-28 16:12:10.909103', NULL),
(2, 'k', 'k@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, '2021-05-28 16:16:44.647809', NULL),
(3, 'q', 'q@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, '2021-05-30 05:58:00.496505', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cloud_engineear`
--
ALTER TABLE `cloud_engineear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaintNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
