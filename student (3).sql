-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 03:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `S.id` int(30) NOT NULL,
  `S.Name` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`S.id`, `S.Name`, `Course`, `Grade`, `Result`) VALUES
(1, 'syed rafay', 'English/software requirement/math/pst/isl', 'A,B,A,C,A', 'Pass'),
(2, 'muhammad musab ', 'english/Software Requirement /math/pst/islamiat', 'B,A,C,A,A', 'Pass'),
(3, 'farhan iftikhar', 'english/Software Requirement /math/pst/islamiat', 'B,B,C,A,A', 'Pass'),
(4, 'ammar nadeem ', 'english/Software Requirement /math/pst/islamiat', 'C,C,A,A,A', 'Pass'),
(5, 'ali raza ', 'english/Software Requirement /math/pst/islamiat', 'B,A,C,A,A', 'pass'),
(6, 'umar', 'english/Software Requirement /math/pst/islamiat', 'A,B,A,C,C', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `studentID` int(50) NOT NULL,
  `studentName` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNO` int(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `staringYear` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`studentID`, `studentName`, `fatherName`, `email`, `phoneNO`, `department`, `semester`, `staringYear`) VALUES
(1, 'syed rafay', 'sohail arshad ', 'syedrafay@gmail.com', 312287132, 'software engineering', '4', '2022'),
(2, 'muhammad musab', 'akbar ali ', 'musab@gmail.com', 344451651, 'software engineering', '4', '2022'),
(3, 'farhan iftikhar', 'iftikhar hussain', 'farhan@gmail.com', 322175334, 'software engineering', '4', '2022'),
(4, 'ammar nadeem ', 'nadeem arshad ', 'ammar@gmail.com', 366716633, 'software engineenring', '4', '2022'),
(5, 'ali raza', 'sohail arshad ', 'ali@gmail.com', 322175335, 'business', '5', '2021'),
(6, 'umar ', 'zubair', 'umar@gmail.com', 398606343, 'science', '4', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `monday` varchar(50) NOT NULL,
  `tuesday` varchar(50) NOT NULL,
  `wednesday` varchar(50) NOT NULL,
  `thursday` varchar(50) NOT NULL,
  `friday` varchar(50) NOT NULL,
  `saturday` varchar(50) NOT NULL,
  `sunday` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
('', '', '', '', 'mathematics (8:30 to 10:00), pakistan studies( 10:', '', ''),
('software requirement (10:00 to 11:30)', '', '', '', '', '', ''),
('', 'english (8:30 to 10:00),islamiat (10:00 to 11:30)', 'mathematics (10:00 to 11:30),english(1:00 to 2:30)', '', '', '', ''),
('', '', '', 'pakistan studies (11:30 to 1:00),islamiat (1:00 to', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`S.id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `S.id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `studentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
