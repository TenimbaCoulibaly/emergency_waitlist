-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 09:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_triage_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `email_address`, `password`) VALUES
(1, 'Tenimba', 'Coulibaly', 'tcoul050', 'tcoul050@uottawa.ca', 'TEN');

-- --------------------------------------------------------

--
-- Table structure for table `injury_list`
--

CREATE TABLE `injury_list` (
  `id` int(11) NOT NULL,
  `injury_type` varchar(255) NOT NULL,
  `injury_severity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `injury_list`
--

INSERT INTO `injury_list` (`id`, `injury_type`, `injury_severity`) VALUES
(1, 'Minor Sprain', 1),
(2, 'Major Sprain', 2),
(3, 'Simple Fracture', 2),
(4, 'Compound Fracture', 3),
(5, 'First-Degree Burn', 1),
(6, 'Second-Degree Burn', 2),
(7, 'Third-Degree Burn', 4),
(8, 'Fourth-Degree Burn', 5),
(9, 'Minor Laceration', 1),
(10, 'Major Laceration', 3),
(11, 'Mild Concussion', 2),
(12, 'Severe Concussion', 4),
(13, 'Total Spinal Cord Injury', 5),
(14, 'Dislocation', 2),
(15, 'Puncture Wound', 2),
(16, 'Chemical Burn', 4),
(17, 'Electrical Injury', 4),
(18, 'Hypothermia', 3),
(19, 'Heatstroke', 3),
(20, 'Dehydration', 2),
(21, 'Venomous Bite', 4),
(22, 'Non-Venomous Bite', 1),
(23, 'Cardiac Arrest', 5),
(24, 'Asthma Attack', 3),
(25, 'Diabetic Emergency', 3),
(26, 'Seizure', 4),
(27, 'Stroke', 5),
(28, 'Anaphylaxis', 5);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `injury_type` varchar(255) NOT NULL,
  `injury_severity` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `registration_time` datetime DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `injury_type`, `injury_severity`, `position`, `registration_time`, `username`, `email_address`, `password`) VALUES
(1, 'Gojo', 'Saturo', 'Dislocation', 2, 1, '2024-04-04 04:44:17', 'gojos1', 'gojosaturo@gmail.com', 'FPI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `injury_list`
--
ALTER TABLE `injury_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `injury_list`
--
ALTER TABLE `injury_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
