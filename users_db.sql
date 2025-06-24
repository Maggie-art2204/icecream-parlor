-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 04:29 AM
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
-- Database: `users_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Username`, `Password`) VALUES
(3, 'omkar', 'omkomk'),
(4, 'avi', 'aviavi'),
(5, 'sarang', 'sara'),
(6, 'shriya', 'shree'),
(7, 'jui', 'juijui'),
(8, 'soham', 'ssss'),
(9, 'yash1', 'yashyash'),
(10, 'bhakti', 'bhakti12'),
(11, 'omkard', 'dddd'),
(12, 'omkard', 'dddd'),
(13, 'omkard', 'dddd'),
(14, 'samarth', '123'),
(15, 'samarth', '123'),
(16, 'samarth', '123'),
(17, 'samarth', '123'),
(35, 'sam', 'samsam'),
(36, 'sam', 'samsam'),
(37, 'sam', 'samsam'),
(38, 'sam', 'samsam'),
(39, 'sam', 'samsam'),
(40, 'sam', 'samsam'),
(41, 'sam', 'samsam'),
(42, 'sam', 'samsam'),
(43, 'sam', 'samsam'),
(44, 'bhakti', 'bhakti12'),
(45, 'sam', 'samsam'),
(46, 'sam ', 'samsam');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'efs', 'omkar@gmail.com', 'qrqwetqewt', '2025-03-13 08:05:04'),
(2, 'bhakti', 'bhakti@gmail.com', ' ice cream not delivered yet', '2025-03-14 14:10:37'),
(3, 'omkar', 'omkar@gmail.com', 'its nice', '2025-03-17 07:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ConfirmPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Username`, `Email`, `Password`, `ConfirmPassword`) VALUES
(2, 'sam', 'sam@gmail.com', 'samsam', 'samsam'),
(4, 'omkar', 'omk@gmail.com', 'omkomk', 'omkomk'),
(5, 'sarang', 'sara@gmail.com', 'sara', 'sara'),
(7, 'anna', 'anna@gmail.com', 'annaa', 'anna'),
(8, 'shriya', 'sh@gmail.com', 'shree', 'shree'),
(9, 'jui', 'jui@gmail.com', 'juijui', 'juijui'),
(10, 'soham', 'soham@gmail.com', 'ssss', 'ssss'),
(11, 'yash1', 'yash1@gmail.com', 'yashyash', 'yashyash'),
(12, 'savita', 'sav@gmail.com', 'savsav', 'savsav'),
(13, 'bhakti', 'bha@gmail.com', 'bhakti12', 'bhakti12'),
(14, 'omkard', 'd@gmail.com', 'dddd', 'dddd'),
(15, 'samarth', 'samarth@gmail.com', '123', '123'),
(16, 'bhakti', 'bhakti@gmail.com', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
