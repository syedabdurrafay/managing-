-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 03:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`S.id`, `S.Name`, `Course`, `Grade`, `Result`) VALUES
(1, 'Farhan Iftikhar', 'English', 'A', 'Pass'),
(2, 'Abdul Rafay ', 'Software Requirement Engineering', 'B', 'Pass'),
(3, 'Muhammad Musab', 'Islamiat', 'B', 'Pass'),
(4, 'Noman Khan', 'Pakistan Studies', 'C', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone no` int(30) NOT NULL,
  `Father name` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Name`, `Phone no`, `Father name`, `Email`) VALUES
(1, 'Syed Rafay', 312287132, 'Sohail Arshad ', 'syedrafay507@gmail.c'),
(2, 'Farhan Iftikhar', 329807654, 'Iftikhar Husain', 'farhan@gmail.com'),
(3, 'Muhammad Musab ', 356786464, 'Akbar Ali ', 'musab@gmail.com'),
(4, 'Ammar  Khan', 345362784, 'Nadeem ', 'ammar@gmail.com');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `S.id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
