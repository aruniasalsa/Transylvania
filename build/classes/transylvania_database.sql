-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 03:05 PM
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
-- Database: `transylvania_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers_check_in`
--

CREATE TABLE `customers_check_in` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `hari` int(11) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `nomor_kamar` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `nomor_kamar` int(11) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`nomor_kamar`, `tipe_kamar`, `bed`, `harga`, `status`) VALUES
(101, 'Suite Room', 'Single Bed', 800000, 'Not Booked'),
(102, 'Suite Room', 'Single Bed', 800000, 'Not Booked'),
(103, 'Suite Room', 'Single Bed', 800000, 'Not Booked'),
(104, 'Suite Room', 'Single Bed', 800000, 'Not Booked'),
(105, 'Suite Room', 'Single Bed', 800000, 'Not Booked'),
(106, 'Suite Room', 'Twin Bed', 1000000, 'Not Booked'),
(107, 'Suite Room', 'Twin Bed', 1000000, 'Not Booked'),
(108, 'Suite Room', 'Twin Bed', 1000000, 'Not Booked'),
(109, 'Suite Room', 'Twin Bed', 1000000, 'Not Booked'),
(110, 'Suite Room', 'Twin Bed', 1000000, 'Not Booked'),
(201, 'Deluxe Room', 'Single Bed', 600000, 'Not Booked'),
(202, 'Deluxe Room', 'Single Bed', 600000, 'Not Booked'),
(203, 'Deluxe Room', 'Single Bed', 600000, 'Not Booked'),
(204, 'Deluxe Room', 'Single Bed', 600000, 'Not Booked'),
(205, 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
(206, 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
(207, 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
(208, 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
(209, 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
(210, 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
(301, 'Standard Room', 'Single Bed', 400000, 'Not Booked'),
(302, 'Standard Room', 'Single Bed', 400000, 'Not Booked'),
(303, 'Standard Room', 'Single Bed', 400000, 'Not Booked'),
(304, 'Standard Room', 'Single Bed', 400000, 'Not Booked'),
(305, 'Standard Room', 'Single Bed', 400000, 'Not Booked'),
(306, 'Standard Room', 'TWin Bed', 600000, 'Not Booked'),
(307, 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
(308, 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
(309, 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
(310, 'Standard Room', 'Twin Bed', 600000, 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `security_question` varchar(200) NOT NULL,
  `jawab` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `nama`, `jenis_kelamin`, `email`, `password`, `nomor_hp`, `security_question`, `jawab`) VALUES
(1, 'Arunia Salsanur Fais', 'Female', 'aruniafais@gmail.com', 'arun5545', '081393235006', 'what month were you born?', 'April');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers_check_in`
--
ALTER TABLE `customers_check_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`nomor_kamar`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers_check_in`
--
ALTER TABLE `customers_check_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
