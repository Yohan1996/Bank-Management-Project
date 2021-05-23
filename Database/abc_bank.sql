-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 11:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(10) NOT NULL,
  `c_num` varchar(255) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `a_num` varchar(255) NOT NULL,
  `a_type` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL,
  `security_Q` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `c_num`, `c_name`, `branch`, `a_num`, `a_type`, `balance`, `security_Q`, `answer`) VALUES
(11, 'C002', 'sanuka', 'matara', 'A002', 'Fixed', 10500, 'Favorite color', 'black'),
(12, 'C003', 'gihan', 'Matara', 'A003', 'Fixed', 4100, 'Favorite movie', 'Spider-man'),
(10, 'C001', 'nuvan', 'Galle', 'A001', 'Saving', 15000, 'Favorite Movie', 'Batman'),
(13, 'C004', 'Kalani', 'Galle', 'A004', 'Fixed', 9900, 'Favorite tv series', 'Prison break'),
(14, 'C005', 'sumudu', 'Galle', 'A005', 'Saving', 52000, 'Favorite color', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `c_num` varchar(255) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `c_address` varchar(100) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `h_tp` int(10) NOT NULL,
  `mob_number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `c_num`, `c_name`, `NIC`, `branch`, `c_address`, `marital_status`, `nationality`, `email`, `h_tp`, `mob_number`) VALUES
(14, 'C001', 'nuvan', '984568245v', 'Galle', 'Hapugala', 'Single', 'Sinhala', 'nuwan@gmail.com', 915896584, 775689524),
(18, 'C005', 'sumudu', '859654875V', 'Galle', 'Kaluvella', 'Single', 'Sinhala', 'sumudu@gmail.com', 915248578, 715684582),
(15, 'C002', 'sanuka', '856748954v', 'matara', 'kalegana', 'Married', 'Sinhala', 'sanuka@gmail.com', 415487965, 768957854),
(16, 'C003', 'gihan', '960822798v', 'Matara', 'Beligaha', 'Single', 'Sinhala', 'gihan@gmail.com', 917895688, 715896548),
(17, 'C004', 'Kalani', '785964845v', 'Galle', 'Beligaha', 'Married', 'sinhala', 'kalani@gmail.com', 914587898, 714567891);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) NOT NULL,
  `a_num` varchar(255) NOT NULL,
  `c_num` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `a_num`, `c_num`, `date`, `balance`, `deposit`) VALUES
(22, 'A001', 'C001', '2020/09/14', 500, 8000),
(21, 'A004', 'C004', '2020/09/14', 9000, 1000),
(20, 'A003', 'C003', '2020/09/14', 4300, 700),
(19, 'A002', 'C002', '2020/09/14', 10500, 500),
(18, 'A001', 'C001', '2020/09/14', 2200, 800),
(23, 'A001', 'C001', '2020/09/14', 500, 8000),
(24, 'A005', 'C005', '2020/09/16', 50000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `registercashier`
--

CREATE TABLE `registercashier` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tp` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registercashier`
--

INSERT INTO `registercashier` (`id`, `name`, `address`, `tp`, `email`, `password`) VALUES
(7, 'saranga', 'Colombo', '0115489654', 'saranga@gmail.com', 'qwe123'),
(4, 'yohan', 'hapugala', '0776785829', 'yohan@gmail.com', '1234'),
(5, 'malith', 'ginthota', '0766884879', 'malith@gmail.com', 'kgtr4321'),
(6, 'sahan', 'Galle', '0769687655', 'sahan@gmail.com', '789456'),
(8, 'purna', 'Hapugala', '0714568524', 'purna@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `registermanager`
--

CREATE TABLE `registermanager` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tp` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registermanager`
--

INSERT INTO `registermanager` (`id`, `name`, `address`, `tp`, `email`, `password`) VALUES
(1, 'vikum', 'kalegana', '0917854865', 'vikum@gmail.com', 4321),
(2, 'amila', 'matara', '0417598658', 'amila@gmai.com', 789456),
(3, 'samapth', 'Kalegana', '0917856898', 'sampath@gmail.com', 456123);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `f_account` varchar(255) NOT NULL,
  `c_num` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `c_num`, `c_name`, `to_account`, `amount`) VALUES
(5, 'A003', 'C003', 'gihan', 'A004', 400),
(4, 'A001', 'C001', 'nuvan', 'A002', 500),
(6, 'A001', 'C001', 'nuwan', 'A005', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(10) NOT NULL,
  `a_num` varchar(255) NOT NULL,
  `c_num` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `a_num`, `c_num`, `date`, `balance`, `withdraw`) VALUES
(12, 'A003', 'C003', '2020/09/14', 5000, 500),
(11, 'A002', 'C002', '2020/09/14', 11000, 1000),
(10, 'A001', 'C001', '2020/09/14', 3000, 2000),
(13, 'A004', 'C004', '2020/09/14', 10000, 500),
(14, 'A001', 'C001', '2020/09/14', 16500, 500),
(15, 'A005', 'C005', '2020/09/16', 51000, 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registercashier`
--
ALTER TABLE `registercashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registermanager`
--
ALTER TABLE `registermanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `registercashier`
--
ALTER TABLE `registercashier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `registermanager`
--
ALTER TABLE `registermanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
