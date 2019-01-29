-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 12:40 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beta_crow`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel`
--

CREATE TABLE `adminpanel` (
  `username` varchar(100) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminpanel`
--

INSERT INTO `adminpanel` (`username`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `amount`, `orderid`, `id`, `status`, `date`) VALUES
(122, 20, 25, 1, 1, '12/12/2019'),
(123, 4, 26, 1, NULL, NULL),
(124, 108, 27, 1, NULL, NULL),
(125, 108, 28, 3, NULL, NULL),
(126, 4, 29, 3, NULL, NULL),
(127, 108, 30, 5, 1, NULL),
(128, 4, 31, 5, 0, '12/12/2019'),
(129, 4, 32, 5, NULL, NULL),
(130, 4, 33, 5, 1, '12/02/2019'),
(131, 4, 34, 6, 1, '24/01/2019');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `newpass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `username`, `firstname`, `email`, `street`, `state`, `city`, `zip`, `newpass`) VALUES
(1, 'peregrine_falcon', 'Amit Sarker', 'peregrine_falcon@gmail.com', 'Roda no 1, House no 1', 'Dhaka', 'Farmgate', '1207', '1111'),
(2, 'labib', 'Mahmudul Hasan', 'labibgb@gmail.com', '74/A Green road', 'Dhaka', 'Bogra', '1207', '1234'),
(3, 'nishat', 'Nishat Ara Tania ', 'nishat@gmail.com', 'Rayerbag', 'Dhaka', 'Jattrabari', '1217', '0000'),
(4, 'tofael', 'Tofael Parvez', 'tofael@gmail.com', 'House 1, Road 1', 'Dhaka', 'Mohammadpur', '1207', '1234'),
(5, 'tufan42', 'Towfique Ahmed', 'tufan42@gmail.com', 'House no 1 , Road no 1', 'Dhaka', 'Mohammadpur', '1207', '1478'),
(6, 'shamim', 'Shamim Rayhan', 'booleancode01@gmail.com', 'Merul Badda', 'Dhaka', 'Badda', '1247', '1245');

-- --------------------------------------------------------

--
-- Table structure for table `userorder`
--

CREATE TABLE `userorder` (
  `orderid` int(11) NOT NULL,
  `plan` varchar(40) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userorder`
--

INSERT INTO `userorder` (`orderid`, `plan`, `location`, `date`, `time`, `phone`, `id`, `status`) VALUES
(1, 'Emergency', 'dhaka', '12/12/12', '15:12', '0178965413', 2, NULL),
(5, 'Daily', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(6, 'Daily', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(8, 'Daily', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(9, 'Monthly', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(10, 'Monthly', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(11, 'Monthly', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(12, 'Daily', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(13, 'Daily', 'Roda no 1, House no 1, Kishogonj, Dhaka', '24/1/2019', '', '', 1, NULL),
(14, 'Emergency', 'Bosila, Mohammadpur', '24/1/2019', '4:00', '016789641632', 4, 1),
(15, 'Daily', 'House 1, Road 1, Mohammadpur, Dhaka', '24/1/2019', '', '', 4, NULL),
(16, 'Monthly', 'House 1, Road 1, Mohammadpur, Dhaka', '24/1/2019', '', '', 4, NULL),
(17, 'Daily', 'House no 1 , Road no 1, Mohammadpur, Dhaka', '24/1/2019', '', '', 5, NULL),
(18, 'Daily', 'Roda no 1, House no 1, Farmgate, Dhaka', '24/1/2019', '', '', 1, NULL),
(19, 'Daily', 'House no 1 , Road no 1, Mohammadpur, Dhaka', '24/1/2019', '', '', 5, NULL),
(20, 'Daily', '74/A Green road, Bogra, Dhaka', '25/1/2019', '', '', 2, NULL),
(21, 'Daily', 'Roda no 1, House no 1, Farmgate, Dhaka', '25/1/2019', '', '', 1, NULL),
(22, 'Monthly', 'Roda no 1, House no 1, Farmgate, Dhaka', '25/1/2019', '', '', 1, NULL),
(23, 'Daily', 'Roda no 1, House no 1, Farmgate, Dhaka', '25/1/2019', '', '', 1, NULL),
(24, 'Daily', 'Roda no 1, House no 1, Farmgate, Dhaka', '25/1/2019', '', '', 1, NULL),
(25, 'Emergency', 'Dhaka', '26/1/2019', '10:00', '01689989898', 1, 1),
(26, 'Daily', 'Roda no 1, House no 1, Farmgate, Dhaka', '25/1/2019', '', '', 1, NULL),
(27, 'Monthly', 'Roda no 1, House no 1, Farmgate, Dhaka', '25/1/2019', '', '', 1, NULL),
(28, 'Monthly', 'Rayerbag, Jattrabari, Dhaka', '25/1/2019', '', '', 3, NULL),
(29, 'Daily', 'Rayerbag, Jattrabari, Dhaka', '25/1/2019', '', '', 3, NULL),
(30, 'Monthly', 'House no 1 , Road no 1, Mohammadpur, Dhaka', '25/1/2019', '', '', 5, NULL),
(31, 'Daily', 'House no 1 , Road no 1, Mohammadpur, Dhaka', '25/1/2019', '', '', 5, 1),
(32, 'Daily', 'House no 1 , Road no 1, Mohammadpur, Dhaka', '25/1/2019', '', '', 5, NULL),
(33, 'Daily', 'House no 1 , Road no 1, Mohammadpur, Dhaka', '25/1/2019', '', '', 5, 1),
(34, 'Daily', 'Merul Badda, Badda, Dhaka', '25/1/2019', '', '', 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userorder`
--
ALTER TABLE `userorder`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userorder`
--
ALTER TABLE `userorder`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `userorder` (`orderid`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`id`) REFERENCES `userinfo` (`id`);

--
-- Constraints for table `userorder`
--
ALTER TABLE `userorder`
  ADD CONSTRAINT `userorder_ibfk_1` FOREIGN KEY (`id`) REFERENCES `userinfo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
