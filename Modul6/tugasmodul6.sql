-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 11:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasmodul6`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `Department_ID` int(11) DEFAULT NULL,
  `Faculty_ID` int(11) DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Faculty_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Faculty_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_project`
--

CREATE TABLE `research_project` (
  `Project_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Faculty_ID` int(11) DEFAULT NULL,
  `NewAttribute` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `House_Number` varchar(10) DEFAULT NULL,
  `Street_Number` varchar(10) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Town` varchar(30) DEFAULT NULL,
  `Department_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Department_ID` (`Department_ID`),
  ADD KEY `Faculty_ID` (`Faculty_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`),
  ADD KEY `Faculty_ID` (`Faculty_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty_ID`);

--
-- Indexes for table `research_project`
--
ALTER TABLE `research_project`
  ADD PRIMARY KEY (`Project_ID`),
  ADD KEY `Faculty_ID` (`Faculty_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`Faculty_ID`) REFERENCES `faculty` (`Faculty_ID`),
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Faculty_ID`) REFERENCES `faculty` (`Faculty_ID`);

--
-- Constraints for table `research_project`
--
ALTER TABLE `research_project`
  ADD CONSTRAINT `research_project_ibfk_1` FOREIGN KEY (`Faculty_ID`) REFERENCES `faculty` (`Faculty_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
