-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 05:11 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electriccar`
--

-- --------------------------------------------------------

--
-- Table structure for table `creataccount`
--

CREATE TABLE `creataccount` (
  `id` int(11) NOT NULL,
  `Confirm_Password` varchar(128) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `First_Name` varchar(128) DEFAULT NULL,
  `Last_Name` varchar(128) DEFAULT NULL,
  `My_Password` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creataccount`
--

INSERT INTO `creataccount` (`id`, `Confirm_Password`, `Email`, `First_Name`, `Last_Name`, `My_Password`) VALUES
(1, 'boula', 'nessimboula@gmail.com', 'Boula', 'Nessim', 'boula'),
(3, 'mmm', 'boula.nessim.soliman@gmail.com', 'Boula', 'Nessim', 'mmm'),
(4, '', 'emad@gmail.com', '', '', ''),
(9, 'nnn', 'emadnessim@gmail.com', 'emad', 'Nessim', 'nnn'),
(10, '123', 'ahmed@gmail.com', 'Ahmed', 'Ali', '123'),
(11, 'mora', 'mora@gmail.com', 'Mora', 'Kamal', 'mora'),
(15, 'mmmmm', 'nessimmm@gmail.com', 'nessim', 'soliman', 'mmmmm'),
(16, 'gemy', 'Gemian@gmail.com', 'Gemiana', 'Shawky', 'gemy');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `coustmer_id` int(11) NOT NULL DEFAULT 1,
  `contactName` varchar(128) DEFAULT NULL,
  `phoneNumber` varchar(128) DEFAULT NULL,
  `contactMessage` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `coustmer_id`, `contactName`, `phoneNumber`, `contactMessage`) VALUES
(22, 1, 'بولا نسيم ', '0112 678 5910', 'لا يوجد ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creataccount`
--
ALTER TABLE `creataccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Confirm_Password` (`Confirm_Password`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `My_Password` (`My_Password`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coustmer_id` (`coustmer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `creataccount`
--
ALTER TABLE `creataccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`coustmer_id`) REFERENCES `creataccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
