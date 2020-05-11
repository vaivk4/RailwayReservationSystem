-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2020 at 12:10 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway_res_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_ticket`
--

CREATE TABLE `book_ticket` (
  `uname` varchar(15) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `src` varchar(25) DEFAULT NULL,
  `des` varchar(25) DEFAULT NULL,
  `tno` varchar(15) DEFAULT NULL,
  `tname` varchar(25) DEFAULT NULL,
  `no_passenger` int(1) NOT NULL,
  `date` varchar(15) NOT NULL,
  `pnr` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_ticket`
--

INSERT INTO `book_ticket` (`uname`, `name`, `src`, `des`, `tno`, `tname`, `no_passenger`, `date`, `pnr`) VALUES
('vkv9944', 'Vivek Kumar', 'howrah', 'egmore', '12348', 'commandal express', 5, '0000-00-00', 12348),
('murli123', 'murli', 'ranchi', 'chennai', '12350', 'banglore express', 2, '10/11/2019', 12356),
('vaiceg', 'vaibhav', 'patna', 'chennai', '12346', 'sangmitra express', 3, '2020-05-25', 12361),
('vaiceg', 'vaibhav', 'patna', 'chennai', '12346', 'sangmitra express', 3, '2020-04-08', 12362),
('vaiceg', 'vaibhav', 'patna', 'chennai', '12346', 'sangmitra express', 3, '2020-04-30', 12363),
('vaiceg', 'vaibhav', 'patna', 'chennai', '12346', 'sangmitra express', 4, '2020-05-30', 12364),
(NULL, NULL, 'patna', 'chennai', '12346', 'sangmitra express', 3, '2020-04-30', 12365),
('vaiceg', 'vaibhav', 'patna', 'chennai', '12346', 'sangmitra express', 4, '2020-04-30', 12366),
(NULL, NULL, 'patna', 'chennai', '12346', 'sangmitra express', 4, '2020-04-30', 12367),
('vaiceg', 'vaibhav', 'patna', 'chennai', '12346', 'sangmitra express', 5, '2020-04-30', 12368),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12369),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12370),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12371),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12372),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12373),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12374),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12375),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12376),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12377),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12378),
(NULL, NULL, 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12379),
(NULL, NULL, 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12380),
(NULL, NULL, 'ranchi', 'chennai', '12345', 'hatia express', 5, '2020-04-30', 12381),
(NULL, NULL, 'ranchi', 'chennai', '12350', 'banglore express', 5, '2020-04-30', 12382),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-01', 12383),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-01', 12384),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2019-12-12', 12385),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2019-12-12', 12386),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2019-12-12', 12387),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2019-12-12', 12388),
(NULL, NULL, 'ranchi', 'chennai', '12345', 'hatia express', 1, '2020-05-13', 12389),
(NULL, NULL, 'ranchi', 'chennai', '12350', 'banglore express', 1, '2020-05-13', 12390),
(NULL, NULL, 'ranchi', 'chennai', '12345', 'hatia express', 1, '2020-05-13', 12391),
(NULL, NULL, 'ranchi', 'chennai', '12350', 'banglore express', 1, '2020-05-13', 12392),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-04', 12393),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-04', 12394),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-04', 12395),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-04', 12396),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-04', 12397),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-04', 12398),
(NULL, NULL, 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-04', 12399),
(NULL, NULL, 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-04', 12400),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 4, '2020-05-07', 12401),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 4, '2020-05-07', 12402),
(NULL, NULL, 'ranchi', 'chennai', '12345', 'hatia express', 4, '2020-05-07', 12403),
(NULL, NULL, 'ranchi', 'chennai', '12350', 'banglore express', 4, '2020-05-07', 12404),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-14', 12405),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-14', 12406),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 3, '2020-05-13', 12407),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 3, '2020-05-13', 12408),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 4, '2020-05-12', 12409),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 4, '2020-05-12', 12410),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 4, '2020-05-12', 12411),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 4, '2020-05-12', 12412),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 4, '2020-05-12', 12413),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12350', 'banglore express', 4, '2020-05-12', 12414),
('vaiceg', 'vaibhav', 'ranchi', 'chennai', '12345', 'hatia express', 4, '2020-05-12', 12415);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(15) NOT NULL,
  `pass` varchar(15) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` char(9) DEFAULT NULL,
  `mob_no` varchar(10) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `address` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `pass`, `name`, `age`, `gender`, `mob_no`, `email`, `address`) VALUES
('ak12', 'ak123', 'ak', 25, 'male', '787878787', 'dfs@na.com', 'chennai'),
('amit12345', 'amit123', 'amit', 25, 'male', '454545454', 'jhg@fy.jh', 'chennai'),
('amit12356', 'amit123', 'ani', 2, 'female', '123456789', 'bb@cc.com', 'bnglr'),
('amit123567', 'amit123', 'ani', 2, 'female', '123456789', 'bb@cc.com', 'bnglr'),
('amit1235675', '12345', 'ani', 2, 'female', '123456789', 'bb@cc.com', 'bnglr'),
('atulceg', 'vaibhav', 'atul', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulceg1', 'vaibhav', 'aks', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulceg12', 'vaibhav', 'aks2', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulceg123', 'vaibhav', 'aks24', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulceg1237', 'vaibhav', 'aks246', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulceg12378', 'vaibhav', 'aks246', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulceg123783', 'vaibhav', 'aks24633', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulcegnew', 'vaibhav', 'aksfinal', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('atulcegnew1', 'atul123', 'atulsss', 45, 'male', '123456789', 'vnb@au.com', 'chennai'),
('murli123', 'murli123', 'murli', 21, 'male', '7856057311', 'murli123@gmail.com', 'chennai'),
('murli1234', '123456', 'murli manohar', 22, 'male', '4354236', 'murli@gmail.com', 'Koyri Tola Bargaon'),
('murli9955', '123456', 'murli manohar', 22, 'male', '234567', 'murli@gmail.com', 'dcdsd f'),
('ssuman', 'vivek123', 'saurav', 20, 'male', '9709774237', 'saurav@gmail', 'Koyri Tola Bargaon'),
('vaib', 'vk124', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh', '12345', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh1', 'qqqqq', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh12', 'aaaaa', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh124', 'dgusjf', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh124f', 'sffsfs', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh124fe', 'sdfsdfs', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibh124fev', 'sdfdf', 'vks', 21, 'male', '9983326548', 'vaibhav@abc.com', 'chennai'),
('vaibhav', 'vaibhav123', 'vaibhav', 22, 'male', '8252113033', 'vai.vk4@gmail.com', 'chennai'),
('vaibhavceg', 'vaibhav', 'vaibhav', 23, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'chennai'),
('vaiceg', 'vaibhav', 'vaibhav', 21, 'male', '822113033', 'vai.vk4@gmail.com', 'chennai'),
('vaihav', 'vaibhav123', 'vaibhav', 12, 'male', '23232323', 'vai.vk4@gmail.com', 'chennai'),
('vaihzb', 'vaibhav123', 'vaibhav singh', 22, 'male', '8252113033', 'vaibhav.iibm@gmail.com', 'hazaribagh'),
('veer9944', '12345', 'veer verma', 22, 'male', '9031477276', 'ckc@gmail.com', 'bihar'),
('vivek', '123456', 'vivek kumar', 22, 'male', '9835531252', 'nbvdhb@gmail.com', 'dvd'),
('vk12', 'vaibhav123', 'amit', 29, 'male', '8252113033', 'vai.vk4@gmail.com', 'chennai'),
('vkv9944', '123456', 'Vivek Kumar', 22, 'male', '9031772734', 'vivek199575@gmail.com', 'Koyri Tola Bargaon');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `train_no` varchar(15) NOT NULL,
  `train_name` varchar(25) NOT NULL,
  `source` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_no`, `train_name`, `source`, `destination`) VALUES
('98756', 'tamilnadu express', 'chennai', 'delhi'),
('12341', 'sangmitra express', 'chennai', 'patna'),
('12354', 'banglore express', 'chennai', 'ranchi'),
('12349', 'ltt express', 'hatia', 'mumbai'),
('12348', 'commandal express', 'howrah', 'egmore'),
('12346', 'sangmitra express', 'patna', 'chennai'),
('12347', 'morya express', 'patna', 'egmore'),
('12345', 'hatia express', 'ranchi', 'chennai'),
('12350', 'banglore express', 'ranchi', 'chennai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_ticket`
--
ALTER TABLE `book_ticket`
  ADD PRIMARY KEY (`pnr`),
  ADD KEY `uname` (`uname`,`name`),
  ADD KEY `src` (`src`,`des`,`tno`,`tname`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uname`,`name`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`source`,`destination`,`train_no`,`train_name`),
  ADD UNIQUE KEY `train_no` (`train_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_ticket`
--
ALTER TABLE `book_ticket`
  MODIFY `pnr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12417;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_ticket`
--
ALTER TABLE `book_ticket`
  ADD CONSTRAINT `book_ticket_ibfk_1` FOREIGN KEY (`uname`,`name`) REFERENCES `login` (`uname`, `name`),
  ADD CONSTRAINT `book_ticket_ibfk_2` FOREIGN KEY (`src`,`des`,`tno`,`tname`) REFERENCES `train` (`source`, `destination`, `train_no`, `train_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
