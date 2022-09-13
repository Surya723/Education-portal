-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 03:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vilearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_code` varchar(50) NOT NULL,
  `Course_name` varchar(150) NOT NULL,
  `Lecture_hours` int(10) NOT NULL,
  `Tutorial_hours` int(10) NOT NULL,
  `practical_hours` int(10) NOT NULL,
  `J_project_hours` int(10) NOT NULL,
  `Credits` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_code`, `Course_name`, `Lecture_hours`, `Tutorial_hours`, `practical_hours`, `J_project_hours`, `Credits`) VALUES
('BCSE103E', 'Computer-programming						', 1, 0, 4, 0, 3),
('BCSE102L', 'Data structures and algorithms						', 3, 0, 2, 0, 4),
('CSE1016', 'Deep learning principals of practice					', 2, 0, 2, 0, 3),
('CSE2012', 'Design analysis and algorithms					', 3, 0, 2, 0, 4),
('BCSE205L', 'computer architecture andorganizaion						', 3, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_list`
--

CREATE TABLE `faculty_list` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `school` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_list`
--

INSERT INTO `faculty_list` (`emp_id`, `name`, `designation`, `phone_no`, `school`, `email`) VALUES
(1200, 'RAMESH						', 'ASSISTANT PROFESSOR', '9840330678', 'SCOPE', '1200@vit.ac.in'),
(1300, 'SURESH						', 'ASSOCIATE PROFESSOR', '9840330675', 'SELECT', '1200@vit.ac.in'),
(1400, 'KARTHIK					', 'PROFESSOR', '9840330676', 'SELECT', '1400@vit.ac.in'),
(1500, 'KRITIN						', 'PROFESSOR', '9840330685', 'SELECT', '1500@vit.ac.in'),
(1600, 'PARSIESH					', 'ASSOCIATE PROFESSOR', '9840330775', 'SENSE', '1600@vit.ac.in'),
(1700, 'SUMEGH', 'PROFESSOR', '8300591007', 'SCOPE', '1700@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `no_of_wishlist` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`course_code`, `course_name`, `no_of_wishlist`) VALUES
('BCSE103E', 'Computer Programming Java ', 1400),
('BCSE202L', 'Data Structures and Algorithms', 1260),
('CSE1016 ', 'Deep Learning: Principles and Practices ', 700),
('CSE2012', 'Design and analysis of algorithms', 8),
('CSE3061', 'Artificial Intelligence for Cyber Security ', 700),
('CSE3501', 'Information Security Analysis and Audit ', 700),
('CSE4056', 'Intelligent Multi Agent and Expert systems\r\n', 420),
('BCSE205L', 'Computer Architecture and Organization ', 1680);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
