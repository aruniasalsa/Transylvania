-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 12:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customers_check_in`
--

CREATE TABLE `customers_check_in` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `hari` int(11) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `nomor_kamar` int(11) NOT NULL,
  `harga_per_hari` int(10) NOT NULL,
  `stay_hari` varchar(200) NOT NULL,
  `total_amount` varchar(200) NOT NULL,
  `check_out` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers_check_in`
--

INSERT INTO `customers_check_in` (`id`, `nama`, `email`, `tanggal`, `hari`, `tipe_kamar`, `bed`, `nomor_kamar`, `harga_per_hari`, `stay_hari`, `total_amount`, `check_out`) VALUES
(1, 'ilam', 'ilamdoblay@gmail.com', '24/05/2023', 4, 'Standard Room', 'Single Bed', 304, 400000, '', '', ''),
(2, 'arun', 'aruniafais@gmail.com', '25/05/2023', 2, 'Standard Room', 'Single Bed', 305, 400000, '1', '400000.0', '25/05/2023'),
(3, 'test', 'test@gmail.com', '25/05/2023', 2, 'Suite Room', 'Twin Bed', 1, 1000000, '1', '1000000.0', '25/05/2023'),
(4, 'test', 'test@gmail.com', '25/05/2023', 2, 'Deluxe Room', 'Twin Bed', 209, 800000, '1', '800000.0', '25/05/2023');

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
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(10) NOT NULL,
  `room_type` varchar(200) NOT NULL,
  `bed` varchar(200) NOT NULL,
  `price` int(3) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `room_type`, `bed`, `price`, `status`) VALUES
('101', 'Suite Room', 'Single Bed', 800000, 'Booked'),
('102', 'Suite Room', 'Single Bed', 800000, 'Booked'),
('103', 'Suite Room', 'Single Bed', 800000, 'Booked'),
('104', 'Suite Room', 'Single Bed', 800000, 'Booked'),
('105', 'Suite Room', 'Single Bed', 800000, 'Booked'),
('106', 'Suite Room', 'Twin Bed', 1000000, 'Booked'),
('107', 'Suite Room', 'Twin Bed', 1000000, 'Booked'),
('108', 'Suite Room', 'Twin Bed', 1000000, 'Booked'),
('109', 'Suite Room', 'Twin Bed', 1000000, 'Booked'),
('110', 'Suite Room', 'Twin Bed', 1000000, 'Booked'),
('201', 'Deluxe Room', 'Single Bed', 600000, 'Booked'),
('202', 'Deluxe Room', 'Single Bed', 600000, 'Booked'),
('203', 'Deluxe Room', 'Single Bed', 600000, 'Booked'),
('204', 'Deluxe Room', 'Single Bed', 600000, 'Booked'),
('205', 'Deluxe Room', 'Single Bed', 600000, 'Booked'),
('206', 'Deluxe Room', 'Twin Bed', 800000, 'Booked'),
('207', 'Deluxe Room', 'Twin Bed', 800000, 'Booked'),
('208', 'Deluxe Room', 'Twin Bed', 800000, 'Booked'),
('209', 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
('210', 'Deluxe Room', 'Twin Bed', 800000, 'Not Booked'),
('301', 'Standard Room', 'Single Bed', 400000, 'Booked'),
('302', 'Standard Room', 'Single Bed', 400000, 'Booked'),
('303', 'Standard Room', 'Single Bed', 400000, 'Booked'),
('304', 'Standard Room', 'Single Bed', 400000, 'Booked'),
('305', 'Standard Room', 'Single Bed', 400000, 'Booked'),
('306', 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
('307', 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
('308', 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
('309', 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
('310', 'Standard Room', 'Twin Bed', 600000, 'Not Booked'),
('001', 'Suite Room', 'Twin Bed', 1000000, 'Booked');

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
(1, 'Arunia Salsanur Fais', 'Female', 'aruniafais@gmail.com', 'arun5545', '081393235006', 'what month were you born?', 'April'),
(9, 'ilam', 'Male', 'ilamdoblay@gmail.com', '12345678', '085776619935', 'what month were you born?', 'April'),
(10, 'ilham', 'Male', 'ilamdoblay@gmail.com', '12345678', '085776619935', 'what month were you born?', 'april');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
