-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:35 AM
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Course_Credit _Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Course_ID`, `Course_Name`, `Course_Credit _Hours`) VALUES
('CS1420', 'OBJECT ORIENTED PROGRAMMING', 3),
('CS2230  ', 'Database Management Systems', 3),
('CS3130 ', ' Software Requirement Engineering', 3),
('MG1100', 'PRINCIPLES OF MANAGEMENT', 3),
('SS1100', 'FRESHMAN ENGLISH', 3),
('SS1400', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` varchar(50) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Credit_Hours` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses_table`
--

INSERT INTO `courses_table` (`Course_ID`, `Course_Name`, `Credit_Hours`) VALUES
('CS1410 ', 'COMPUTER PROGRAMMING', 3),
('CS2230 ', 'Database Management Systems', 3),
('CS3130', ' Software Requirement Engineering', 3),
('MG1100 ', 'PRINCIPLES OF MANAGEMENT	', 3),
('MG4340 ', 'Organizational Behavior', 3),
('SS1100', ' FRESHMAN ENGLISH', 3),
('SS1400 ', 'ISLAMIC STUDIES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `Enrollment_ID` varchar(50) NOT NULL,
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`Enrollment_ID`, `Student_ID`, `Course_ID`) VALUES
('2022', 1, 'SS1100'),
('2022', 2, 'MG1100'),
('2022', 3, 'CS2230'),
('2022', 4, 'CS2230'),
('2021', 5, 'CS1410'),
('2022', 6, 'MG4340');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `Student_ID` int(30) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Grade` varchar(30) NOT NULL,
  `Result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`Student_ID`, `Student_Name`, `Course_ID`, `Course`, `Grade`, `Result`) VALUES
(1, 'Syed Rafay', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(2, 'Muhammad Musab ', 'SS1400', 'ISLAMIC STUDIES', 'B', 'Pass'),
(3, 'Farhan Iftikhar', 'SS1100', 'FRESHMAN ENGLISH	', 'A', 'Pass'),
(4, 'Ammar Nadeem ', 'CS2230	', 'DATABASE MANAGEMENT SYSTEMS	', 'C', 'Pass'),
(5, 'Ali Raza ', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'B', 'Pass'),
(6, 'Umar  Khan', 'MG4340', 'ORGANIZATIONAL BEHAVIOR	', 'A', 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `S_id` int(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No` int(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Enrollment_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`S_id`, `S_Name`, `Father_Name`, `Email`, `Contact_No`, `Department`, `Semester`, `Address`, `Enrollment_Year`) VALUES
(1, 'Syed Rafay', 'Sohail Arshad ', 'syedrafay@gmail.com', 312287132, 'Bachelor of Science in Software Engineering.', '4', ' I. I. Chundrigar Road Steet#3 Karachi.', '2022'),
(2, 'Muhammad Musab', 'Akbar Ali ', 'musab@gmail.com', 344451651, 'Bachelor of Science in Software Engineering.', '4', 'Saddar Street #4  road Karachi', '2022'),
(3, 'Farhan Iftikhar', 'Iftikhar Hussain', 'farhan@gmail.com', 322175334, 'Bachelor of Science in Software Engineering.', '4', 'plot no 767 main pib Colony Karach', '2022'),
(4, 'Ammar Nadeem ', 'Nadeem Arshad ', 'ammar@gmail.com', 366716633, 'Bachelor of Science in Software Engineering.', '4', 'Gulistan-e-Johar BLOCK D Street #4 road Karachi.', '2022'),
(5, 'Ali Raza', 'Sohail Arshad ', 'ali@gmail.com', 322175335, 'Bachelor of Business Administratio', '5', 'Defence Housing Society Karachi', '2021'),
(6, 'Umar Khan', 'Zubair Khan', 'umar@gmail.com', 398606343, 'Bachelor of Science in Computer Science', '5', 'plot no 767 street # 5 north nizamabad Kaarchi', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem');

-- --------------------------------------------------------

--
-- Table structure for table `students_table`
--

CREATE TABLE `students_table` (
  `Student_ID` int(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_table`
--

INSERT INTO `students_table` (`Student_ID`, `Student_Name`) VALUES
(1, 'Syed Rafay'),
(2, 'Muhmmad Musab '),
(3, 'Farhan Iftikhar'),
(4, 'Ammar Nadeem'),
(5, 'Ali Raza Sohail Arshad '),
(6, 'Umar Khan Zubair Khan');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Student_ID` int(50) NOT NULL,
  `Course_ID` varchar(50) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `StartTime` varchar(50) NOT NULL,
  `EndTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Student_ID`, `Course_ID`, `DayOfWeek`, `StartTime`, `EndTime`) VALUES
(1, 'CS2230', 'Monday,Tuesday,Wednesday', '01:00 PM ', '02:30 PM'),
(2, 'SS1100	', 'Monday,Tuesday,Friday', '08:30 AM ', '10:00 AM'),
(3, 'SS1400', 'Monday,Tuesday,Thursday', '10:00 AM ', ' 11:30 AM'),
(4, 'MG1100', 'Monday,Tuesday,Friday', '11:30 AM ', '01:00 PM'),
(5, 'CS2230	', 'Monday,Tuesday,Wednesday', '10:00 AM ', '11:30 AM'),
(6, 'CS1420	', 'Monday,Tuesday,saturday', '02:30 PM ', '04:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `students_table`
--
ALTER TABLE `students_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grading`
--
ALTER TABLE `grading`
  MODIFY `Student_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_table`
--
ALTER TABLE `students_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
