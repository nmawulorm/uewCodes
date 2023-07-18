-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 05:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- New change for today
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `AGENT_CODE` varchar(6) NOT NULL,
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', ''),
('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', ''),
('A003', 'Alex ', 'London', '0.13', '075-12458969', ''),
('A004', 'Ivan', 'Torento', '0.15', '008-22544166', ''),
('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', ''),
('A006', 'McDen', 'London', '0.15', '078-22255588', ''),
('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', ''),
('A008', 'Alford', 'New York', '0.12', '044-25874365', ''),
('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', ''),
('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', ''),
('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', ''),
('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` int(1) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00001', 'Micheal', 'New York', 'New York', 'USA', 2, '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', 3, '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', 2, '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', 1, '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', 1, '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', 1, '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', 1, '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', 1, '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', 3, '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', 3, '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', 3, '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', 1, '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
('C00013', 'Holmes', 'London', 'London', 'UK', 2, '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', 2, '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
('C00015', 'Stuart', 'London', 'London', 'UK', 1, '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', 2, '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', 2, '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', 2, '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', 1, '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010'),
('C00020', 'Albert', 'New York', 'New York', 'USA', 3, '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', 1, '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', 2, '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002'),
('C00023', 'Karl', 'London', 'London', 'UK', 0, '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006'),
('C00024', 'Cook', 'London', 'London', 'UK', 2, '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', 2, '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORD_NUM` decimal(6,0) NOT NULL,
  `ORD_AMOUNT` decimal(12,2) NOT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` varchar(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200100', '1000.00', '600.00', '2008-08-01', 'C00013', 'A003', 'SOD'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD'),
('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012', 'SOD'),
('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005', 'SOD'),
('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004', 'SOD'),
('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011', 'SOD'),
('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002', 'SOD'),
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004', 'SOD'),
('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010', 'SOD'),
('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010', 'SOD'),
('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008', 'SOD'),
('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007', 'SOD'),
('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002', 'SOD'),
('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008', 'SOD'),
('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009', 'SOD'),
('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001', 'SOD'),
('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006', 'SOD'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010', 'SOD'),
('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002', 'SOD'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004', 'SOD'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004', 'SOD'),
('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002', 'SOD'),
('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007', 'SOD'),
('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005', 'SOD'),
('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002', 'SOD'),
('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003', 'SOD'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD'),
('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006', 'SOD'),
('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011', 'SOD'),
('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012', 'SOD'),
('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002', 'SOD'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD'),
('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010', 'SOD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`AGENT_CODE`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_CODE`),
  ADD KEY `AGENT_CODE` (`AGENT_CODE`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORD_NUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`AGENT_CODE`) REFERENCES `agents` (`AGENT_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
