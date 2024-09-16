-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 02:41 PM
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
-- Database: `alpha_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `notificari`
--

CREATE TABLE `notificari` (
  `id` int(11) NOT NULL,
  `numar` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `verificat` tinyint(1) DEFAULT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `re_pass` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `uname`, `pass`, `re_pass`, `addr`) VALUES
(1, 'Iote', 'Andreea', 'Deea95', '123', '123', 'buc');

-- --------------------------------------------------------

--
-- Table structure for table `sdtrimis`
--

CREATE TABLE `sdtrimis` (
  `id` int(11) NOT NULL,
  `numeSD` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teste`
--

CREATE TABLE `teste` (
  `id` int(11) NOT NULL,
  `numar` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tichetejira`
--

CREATE TABLE `tichetejira` (
  `id` int(11) NOT NULL,
  `numeOF` varchar(255) NOT NULL,
  `numarHD` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `verificat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tichetejira`
--

INSERT INTO `tichetejira` (`id`, `numeOF`, `numarHD`, `comments`, `data`, `verificat`) VALUES
(1, 'OF815', 'HD-1020889', 'Status: Tichet in desfasurare 03.09.2024', '2024-08-28', 0),
(2, 'OF814', 'HD-1020888', 'Status: tichet in desfasurare 03.09.24', '2024-08-28', 0),
(3, 'OF812', 'HD-1020756', 'Status: tichet in desfasurare 03.09.2024', '2024-08-27', 0),
(4, 'OF813', 'HD-1020886', 'Status: tichet in desfasurare 03.09.24', '2024-08-28', 0),
(5, 'OF804', 'HD-1019503', 'Status: tichet in desfasurare 03.09.24', '2024-08-20', 0),
(6, 'OF811', 'HD-1020238', 'Status: tichet in desfasurare 03.09.24', '2024-08-20', 0),
(7, 'OF809', 'HD-1020003', 'Status: tichet in desfasurare 03.09.2024', '2024-08-22', 0),
(8, 'OF810', 'HD-1020004', 'Status: tichet in desfasurare 03.09.2024', '2024-08-22', 0),
(9, 'OF800', 'HD-1019480', 'Status: tichet in desfasurare', '2024-08-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `verificare`
--

CREATE TABLE `verificare` (
  `id` int(11) NOT NULL,
  `numar` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `numeSD` varchar(255) DEFAULT NULL,
  `data` date NOT NULL,
  `verificat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teste`
--
ALTER TABLE `teste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teste`
--
ALTER TABLE `teste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
