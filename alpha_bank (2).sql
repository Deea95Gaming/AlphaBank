-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 01:32 PM
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
  `comments` longtext NOT NULL,
  `sursa` varchar(255) NOT NULL,
  `ta` varchar(255) NOT NULL,
  `dev` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `verificat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tichetejira`
--

INSERT INTO `tichetejira` (`id`, `numeOF`, `numarHD`, `comments`, `sursa`, `ta`, `dev`, `data`, `verificat`) VALUES
(39, 'OF741', 'HD-1014193', 'Status: Notificare trimisa la data de 05.08.2024', 'BIND', 'Eduard Zamfir', 'Naomi Halip', '2024-09-09', 0),
(40, 'OF742', 'HD-1014191', 'Status: Notificare trimisa la data de 08.08.2024', 'BIND', 'Razvan Mirica', 'Eduard Zamfir', '2024-09-09', 0),
(41, 'OF743', 'HD-1014424', 'Status: Notificare trimisa la data de 08.08.2024', 'BIND', 'Ana-Maria Stanca', 'Naomi Halip', '2024-09-09', 0),
(38, 'OF744', 'HD-1014488', 'Status: Notificare trimisa la data de 06.08.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-09', 0),
(37, 'OF746', 'HD-1014678', 'Status: Notificare trimisa la data de 06.08.2024', 'BIND', 'Luchiana Dumitrescu', 'Razvan Dumitrescu', '2024-09-09', 0),
(42, 'OF748', 'HD-1014747', 'Status: Tichet inchis la data de 03.09.2024', 'BIND', 'Razvan Mirica', 'Daniel Oanta', '2024-09-09', 0),
(44, 'OF750', 'HD-1015927', 'Status: Tichet inchis in data de 28.08.2024', 'BIND', 'Luchiana Dumitrescu', 'Daniel Oanta', '2024-09-09', 1),
(43, 'OF751', 'HD-1015928', 'Status: Tichet inchis la data de 03.09.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-09', 0),
(36, 'OF758', 'HD-1016278', 'Status: Notificare trimisa la data de 09.08.2024', 'BIND', 'Luchiana Dumitrescu', 'Daniel Oanta', '2024-09-09', 0),
(35, 'OF759', 'HD-1016279', 'Status: Notificare trimisa la data de 22.08.2024\n	    Mail Naomi 04.09.2024 + reminder Teams 06.09.2024', 'MIS', 'Naomi Halip', 'Naomi Halip / Razvan Dumitrescu', '2024-09-09', 0),
(34, 'OF761', 'HD-1016281', 'Status: Notificare trimisa la data de 04.09.2024\n	    SD trimis la data de 04.09.2024', 'MIS', 'Eduard Zamfir', 'Daniel Dumitraciuc / Razvan Dumitrescu', '2024-09-09', 0),
(33, 'OF762', 'HD-1016282', 'Status: Notificare trimisa la data de 06.09.2024\n	     Lipseste fisierul SD', 'MIS', 'Luchiana Dumitrescu', 'Florin Stoica / Razvan Dumitrescu', '2024-09-09', 0),
(32, 'OF769', 'HD-1017320', 'Status: Notificare trimisa la data de 21.08.2024\n            SD trebuie refacut dupa noile cerinte.', 'MIS', 'Razvan Mirica', 'Catalin Toploiu / Razvan Dumitrescu', '2024-09-09', 0),
(30, 'OF772', 'HD-1017738', 'Status: Notificare trimisa la data de 03.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Ionut Stoian', '2024-09-09', 0),
(27, 'OF777', 'HD-1017771', 'Status: Notificare trimisa la 23.08.2024', 'MIS', 'Eduard Zanfir', 'Naomi Halip/ Razvan Dumitrescu', '2024-09-09', 0),
(29, 'OF778', 'HD-1017779', 'Status: momentan este in pauza.', 'MIS', 'NIMIC', 'NIMIC', '2024-09-09', 0),
(28, 'OF779', 'HD-1017781', 'Status: Notificare trimisa la 29.08.2024', 'MIS', 'Daniel Oanta', 'Ionut Stoian', '2024-09-09', 0),
(31, 'OF780', 'HD-1017784', 'Status: Mail Angela 04.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-09', 0),
(25, 'OF781', 'HD-1018607', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Razvan Mirica', 'Florin Stoica', '2024-09-09', 0),
(18, 'OF782', 'HD-1018606', 'Status: Tichet inchis 09.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Sebastian Melinte', '2024-09-09', 0),
(17, 'OF783', 'HD-1018604', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Florin Stoica', '2024-09-09', 0),
(26, 'OF784', 'HD-1018599', 'Status: TA refacut in data de 29.08.2024;\n	    DEV trebuie refacut - i-am scris lui Naomi, dar inca nu a raspuns 05.09.2024', 'BIND', 'Eduard Zanfir', 'Naomi Halip / Razvan Dumitrescu', '2024-09-09', 0),
(16, 'OF785', 'HD-1018603', 'Status: Tichet inchis in data de 04.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu/Razvan Dumitrescu', '2024-09-09', 0),
(23, 'OF790', 'HD-1018724', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Eduard Zanfir', 'Eduard Zanfir', '2024-09-09', 0),
(24, 'OF791', 'HD-1018727', 'Status: Tichet inchis in data de 04.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-09', 0),
(14, 'OF792', 'HD-1018719', 'Status: Mail Ana & Florin 10.09.2024', 'BIND', 'Ana-Maria Stanca', 'Florin Stoica', '2024-09-09', 0),
(13, 'OF793', 'HD-1018720', 'Status: Tichet inchis 10.09.2024', 'BIND', 'Eduard Zamfir', 'Eduard Zamfir', '2024-09-09', 0),
(15, 'OF794', 'HD-1018722', 'Status: Tichet inchis 09.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-09', 0),
(9, 'OF800', 'HD-1019480', 'Status: Notificare trimisa 06.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-09', 0),
(12, 'OF801', 'HD-1019482', 'Status: Notificare trimisa in data de 05.09.2024', 'BIND', 'Eduard Zamfir', 'Ionut Stoian', '2024-09-09', 0),
(10, 'OF802', 'HD-1019484', 'Status: Notificare trimisa 05.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Andrei Gavrileteanu', '2024-09-09', 0),
(11, 'OF803', 'HD-1019483', 'Status: Notificare de trimis in data de 11.09.2024', 'BIND', 'Ana-Maria Stanca', 'Sebastian Melinte', '2024-09-09', 0),
(5, 'OF804', 'HD-1019503', 'TA finalizat 05.09.2024; Start DEV: 09.09.2024', 'BIND', 'Eduard Zamfir', 'Andrei Gavrileteanu', '2024-09-09', 0),
(7, 'OF809', 'HD-1020003', 'Status: Notificare trimisa in data de 03.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-09', 0),
(8, 'OF810', 'HD-1020004', 'Status: Notificare trimisa in data de 04.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-09', 0),
(6, 'OF811', 'HD-1020238', 'Status: Notificare de trimis in data de 13.09.2024', 'MIS', 'Razvan Mirica', 'Ionut Stoian', '2024-09-09', 0),
(3, 'OF812', 'HD-1020756', 'Status: Start DEV: 12.09.2024-> End dev: 16.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Sebastian Melinte', '2024-09-09', 0),
(4, 'OF813', 'HD-1020886', 'Status: Notificare de trimis in: 11.09.2024', 'BIND', 'Ana-Maria Stanca', 'Andrei Gavrileteanu', '2024-09-09', 0),
(2, 'OF814', 'HD-1020888', 'Status: DEV in desfasurare-> End Date DEV: 11.09.2024', 'BIND', 'Razvan Mirica', 'George Vasilescu', '2024-09-09', 0),
(1, 'OF815', 'HD-1020889', 'Status: Specificatie incompleta, mail Angela 09.09.2024', 'BIND', 'Luchiana Dumitrescu', 'NIMENI', '2024-09-09', 0),
(21, 'OF820', 'HD-1021977', 'Status: Notificare trimisa in data de 05.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-09', 0),
(22, 'OF821', 'HD-1021978', 'Status: Notificare trimisa in data de 10.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-09', 0),
(19, 'OF822', 'HD-1021998', 'Status: TA finalizat 09.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-09', 0),
(20, 'OF823', 'HD-1021999', 'Status: Specificatie incompleta 06.09.2024', 'BIND', 'revin cu update', 'revin cu update', '2024-09-09', 0);

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
-- Indexes for table `tichetejira`
--
ALTER TABLE `tichetejira`
  ADD UNIQUE KEY `unique_numeOF` (`numeOF`),
  ADD UNIQUE KEY `unique_id` (`id`);

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
