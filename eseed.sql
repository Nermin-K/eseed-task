-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 03:31 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eseed`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(11) NOT NULL,
  `DayDate` datetime NOT NULL,
  `WorkingHours` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `EmployeeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `DayDate`, `WorkingHours`, `Status`, `EmployeeId`) VALUES
(1, '2018-11-05 09:30:00', 8, 'Present', 2),
(2, '2018-11-05 08:30:00', 0, 'Absent', 4),
(3, '2018-11-05 10:00:00', 3, 'Sick Leave', 3),
(4, '2018-11-05 09:00:00', 0, 'Day OFF', 5),
(5, '2018-11-05 10:30:00', 8, 'Present', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `HireDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Email`, `Mobile`, `HireDate`) VALUES
(1, 'Ahmed edit', 'ahmed@gmail.com', 111854672, '2018-11-15 00:00:00'),
(2, 'Khaled', 'khaled@gmail.com', 12587653, '2017-12-05 03:30:00'),
(3, 'Nermin', 'nermin@gmail.com', 105789865, '2018-10-05 09:30:00'),
(4, 'Omar', 'omar@gmail.com', 1254893213, '2015-12-05 03:30:00'),
(5, 'Dina', 'dina@gmail.com', 11647895, '2010-12-05 03:30:00'),
(8, 'new', 'nermin.khaled20@gmail.com', 1115284693, '2018-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hremployees`
--

CREATE TABLE `hremployees` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hremployees`
--

INSERT INTO `hremployees` (`ID`, `Name`, `Email`, `Password`, `EmployeeId`) VALUES
(1, 'Omar', 'omar@gmail.com', 123, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AttendanceEmployeeId` (`EmployeeId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `hremployees`
--
ALTER TABLE `hremployees`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `employeeId` (`EmployeeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hremployees`
--
ALTER TABLE `hremployees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `AttendanceEmployeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `hremployees`
--
ALTER TABLE `hremployees`
  ADD CONSTRAINT `employeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
