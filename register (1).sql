-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 07:20 PM
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
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ConfirmPassword` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Username`, `Email`, `Password`, `ConfirmPassword`, `created_at`) VALUES
(2, 'sam', 'sam@gmail.com', 'samsam', 'samsam', '2025-04-15 14:39:03'),
(4, 'omkar', 'omk@gmail.com', 'omkomk', 'omkomk', '2025-04-15 14:39:03'),
(5, 'sarang', 'sara@gmail.com', 'sara', 'sara', '2025-04-15 14:39:03'),
(7, 'anna', 'anna@gmail.com', 'annaa', 'anna', '2025-04-15 14:39:03'),
(8, 'shriya', 'sh@gmail.com', 'shree', 'shree', '2025-04-15 14:39:03'),
(9, 'jui', 'jui@gmail.com', 'juijui', 'juijui', '2025-04-15 14:39:03'),
(10, 'soham', 'soham@gmail.com', 'ssss', 'ssss', '2025-04-15 14:39:03'),
(11, 'yash1', 'yash1@gmail.com', 'yashyash', 'yashyash', '2025-04-15 14:39:03'),
(12, 'savita', 'sav@gmail.com', 'savsav', 'savsav', '2025-04-15 14:39:03'),
(13, 'bhakti', 'bha@gmail.com', 'bhakti12', 'bhakti12', '2025-04-15 14:39:03'),
(14, 'omkard', 'd@gmail.com', 'dddd', 'dddd', '2025-04-15 14:39:03'),
(15, 'samarth', 'samarth@gmail.com', '123', '123', '2025-04-15 14:39:03'),
(16, 'bhakti', 'bhakti@gmail.com', '1234', '1234', '2025-04-15 14:39:03'),
(17, 'sharu', 'sharu123@gmail.com', 'sharu123', 'sharu123', '2025-04-15 14:39:03');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
