-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 02:56 PM
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
  `dataTA` date NOT NULL,
  `dataDEV` date NOT NULL,
  `dataUAT` date NOT NULL,
  `verificat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tichetejira`
--

INSERT INTO `tichetejira` (`id`, `numeOF`, `numarHD`, `comments`, `sursa`, `ta`, `dev`, `data`, `dataTA`, `dataDEV`, `dataUAT`, `verificat`) VALUES
(39, 'OF741', 'HD-1014193', 'Status: Tichet inchis 13.09.2024', 'BIND', 'Eduard Zamfir', 'Naomi Halip', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(40, 'OF742', 'HD-1014191', 'Status: Tichet inchis 16.09.2024', 'BIND', 'Razvan Mirica', 'Eduard Zamfir', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(41, 'OF743', 'HD-1014424', 'Status: tichet inchis 11.09', 'BIND', 'Ana-Maria Stanca', 'Naomi Halip', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(38, 'OF744', 'HD-1014488', 'Status: Tichet inchis 11.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(37, 'OF746', 'HD-1014678', 'Status: Se asteapta raspuns de la NBD 18.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(55, 'Of747', 'HD-1014745', 'Status: Tichet inchis 10.09.2024', 'BIND', 'Florin Stoica', 'Florin Stoica', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(42, 'OF748', 'HD-1014747', 'Status: Tichet inchis la data de 03.09.2024', 'BIND', 'Razvan Mirica', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(44, 'OF750', 'HD-1015927', 'Status: Tichet inchis in data de 28.08.2024', 'BIND', 'Luchiana Dumitrescu', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(43, 'OF751', 'HD-1015928', 'Status: Tichet inchis la data de 03.09.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(45, 'OF752', 'HD-1015926', 'Status: Tichet inchis 28.08.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Dumitraciuc', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(36, 'OF758', 'HD-1016278', 'Status: Tichet inchis 18.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(35, 'OF759', 'HD-1016279', 'Status: Email transmis catre Andreea Tanasoiu in data de 16.09.2024. Se asteapta un raspuns.; SD aprobat 16.09', 'MIS', 'Naomi Halip', 'Naomi Halip / Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(34, 'OF761', 'HD-1016281', 'Status: Se asteapta raspuns de la NBD 16.09.2024; SD: Se afla la NBD din data de 16.09. Se asteapta un raspuns.', 'MIS', 'Eduard Zamfir', 'Daniel Dumitraciuc / Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(33, 'OF762', 'HD-1016282', 'Status: Se asteapta raspuns de la NBD 16.09.2024; SD: Se afla la NBD din data de 16.09. Se asteapta un raspuns.', 'MIS', 'Luchiana Dumitrescu', 'Florin Stoica / Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(46, 'OF767', 'HD-1017260', 'Status: Tichet inchis 14.08.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(47, 'OF768', 'HD-1017262', 'Status: Tichet inchis 27.08.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(32, 'OF769', 'HD-1017320', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 16.09; Mail Cata+Razvan M. SD 11.09', 'MIS', 'Razvan Mirica', 'Catalin Toploiu / Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(48, 'OF770', 'HD-1017695', 'Status: Tichet inchis 21.08.2024\n	    SD-ul trebuie modificat 11.09', 'MIS', 'Razvan Mirica', 'Razvan Mirica', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(30, 'OF772', 'HD-1017738', 'Status: Email transmis catre Andreea Tanasoiu in data de 16.09. Se asteapta raspuns', 'BIND', 'Luchiana Dumitrescu', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(54, 'OF776', 'HD-1017766', 'Status: Tichet inchis 28.08.2024; SD-> Se asteapta un raspuns de la NBD 18.09.2024', 'MIS', 'Eduard Zamfir', 'Catalin Toploiu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(27, 'OF777', 'HD-1017771', 'Status: Tichet finalizat 16.09 (partea de TESTARE); SD: inca nefinalizat. Se asteapta raspuns de la Alpha 18.09', 'MIS', 'Eduard Zanfir', 'Naomi Halip/ Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(29, 'OF778', 'HD-1017779', 'Status: momentan este in pauza - Clarificari rapoarte OF778 16.09', 'MIS', 'NIMENI', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(28, 'OF779', 'HD-1017781', 'Status: Tichet inchis 10.09', 'MIS', 'Daniel Oanta', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(31, 'OF780', 'HD-1017784', 'Status: Tichet inchis 10.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(25, 'OF781', 'HD-1018607', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Razvan Mirica', 'Florin Stoica', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(18, 'OF782', 'HD-1018606', 'Status: Tichet inchis 09.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Sebastian Melinte', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(17, 'OF783', 'HD-1018604', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Florin Stoica', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(26, 'OF784', 'HD-1018599', 'Status: Tichet inchis 12.09.2024', 'BIND', 'Eduard Zanfir', 'Naomi Halip / Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(16, 'OF785', 'HD-1018603', 'Status: Tichet inchis in data de 04.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu/Razvan Dumitrescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(23, 'OF790', 'HD-1018724', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Eduard Zanfir', 'Eduard Zanfir', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(24, 'OF791', 'HD-1018727', 'Status: Tichet inchis in data de 04.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(14, 'OF792', 'HD-1018719', 'Status: Tichet inchis 13.09.2024', 'BIND', 'Ana-Maria Stanca', 'Florin Stoica', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(13, 'OF793', 'HD-1018720', 'Status: Tichet inchis 10.09.2024', 'BIND', 'Eduard Zamfir', 'Eduard Zamfir', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(15, 'OF794', 'HD-1018722', 'Status: Tichet inchis 09.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 1),
(49, 'OF797', 'HD-1019451', 'Status: Se asteapta raspuns de la NBD 18.09', 'MIS', 'Ionut Stoian', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(9, 'OF800', 'HD-1019480', 'Status: Tichet inchis 16.09', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(12, 'OF801', 'HD-1019482', 'Status: Se asteapta raspuns de la NBD 18.09.2024', 'BIND', 'Eduard Zamfir', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(10, 'OF802', 'HD-1019484', 'Status: Se asteapta raspuns de la NBD 18.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Andrei Gavrileteanu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(11, 'OF803', 'HD-1019483', 'Status: Se asteapta raspuns de la NBD 17.09.2024', 'BIND', 'Ana-Maria Stanca', 'Sebastian Melinte', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(5, 'OF804', 'HD-1019503', 'Status: Se asteapta raspuns de la NBD 18.09.2024', 'BIND', 'Eduard Zamfir', 'Andrei Gavrileteanu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(59, 'OF805', 'HD-1019770', 'Status: Se afla in lucru la Ana-Maria Stanca 13.09', 'MIS', 'NIMENI', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(60, 'OF806', 'HD-1019771', 'Status: Se afla in lucru la Ana-Maria Stanca 13.09', 'MIS', 'NIMENI', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(7, 'OF809', 'HD-1020003', 'Status: Se asteapta raspuns de la NBD 18.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(8, 'OF810', 'HD-1020004', 'Status: Email transmis catre Maria Catana in data de 18.09.2024. Se asteapta un raspuns', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(6, 'OF811', 'HD-1020238', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 18.09. Se asteapta un raspuns; SD: SD transmis catre Alpha in data de 17.09', 'MIS', 'Razvan Mirica', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(3, 'OF812', 'HD-1020756', 'Status: Email transmis catre Andreea Tanasoiu in data de 18.09. Se asteapta un raspuns', 'BIND', 'Luchiana Dumitrescu', 'Sebastian Melinte', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(4, 'OF813', 'HD-1020886', 'Status: Se asteapta raspuns de la NBD 18.09.2024', 'BIND', 'Ana-Maria Stanca', 'Andrei Gavrileteanu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(2, 'OF814', 'HD-1020888', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 18.09. Se asteapta un raspuns.', 'BIND', 'Razvan Mirica', 'George Vasilescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1, 'OF815', 'HD-1020889', 'Status: Specificatie incompleta, reminder catre Angela + Andreea Tanasoiu 18.09. Se asteapta un raspuns', 'BIND', 'Luchiana Dumitrescu', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(21, 'OF820', 'HD-1021977', 'Status: Tichet inchis 18.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(22, 'OF821', 'HD-1021978', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 16.09. Se asteapta un raspuns.', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(19, 'OF822', 'HD-1021998', 'Status: Email transmis catre Andreea Tanasoiu in data de 17.09. Se asteapta un raspuns', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(20, 'OF823', 'HD-1021999', 'Status: Reminder transmis catre Andreea Tanasoiu & Angela Ciobanu in data de 18.09. Se asteapta un raspuns.', 'BIND', 'revin cu update', 'revin cu update', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(58, 'OF824', 'HD-1022333', 'Status: Email transmis catre Andreea Tanasoiu in data de 17.09. Se asteapta un raspuns', 'BIND', 'Ionut Stoian', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(61, 'OF825', 'HD-1022330', 'Status: Email transmis catre Andreea Tanasoiu in data de 17.09. Se asteapta un raspuns', 'BIND', 'Daniel Oanta', 'Sebastian Melinte', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(62, 'OF826', 'HD-1022332', 'Status: Email va fi transmis catre Andreea Tanasoiu in data de 20.09.2024', 'BIND', 'Ionut Stoian', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(57, 'OF827', 'HD-1022384', 'Status: Email transmis catre Andreea Tanasoiu in data de 18.09. Se asteapta un raspuns', 'BIND', 'Eduard Zamfir', 'Naomi Halip', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(56, 'OF828', 'HD-1022385', 'Status: Email transmis catre Andreea Tanasoiu in data de 16.09. Se asteapta raspuns', 'BIND', 'Eduard Zamfir', 'George Vasilescu', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(63, 'OF829', 'HD-1022840', 'Status: Se asteapta raspuns de la NBD 16.09.2024', 'BIND', 'Eduard Zamfir', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(64, 'OF830', 'HD-1023067', 'Status: Se asteapta raspuns de la NBD 16.09', 'BIND', 'Razvan Mirica', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(65, 'OF831', 'HD-1023064', 'Status: Email va fi transmis catre Andreea Tanasoiu in data de 23.09.2024', 'BIND', 'NIMENI', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(66, 'OF832', 'HD-1023063', 'Email va fi transmis catre Andreea Tanasoiu in data de 19.09.2024', 'BIND', 'Luchiana Dumitrescu', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(67, 'OF833', 'HD-1023168', 'Status: Email transmis catre Andreea Tanasoiu in data de 17.09. Se asteapta un raspuns', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', NULL),
(68, 'OF834', 'HD-1023169', 'Status: Email transmis catre Andreea Tanasoiu in data de 17.09. Se asteapta un raspuns', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(69, 'OF836', 'HD-1023406', 'Status: Email transmis catre Andreea Tanasoiu in data de 17.09. Se asteapta un raspuns', 'BIND', 'Ionut Stoian', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(70, 'OF837', 'HD-1023408', 'Status: Email va fi transmis catre Andreeea Tanasoiu in data de 26.09.2024', 'BIND', 'Ionut Stoian', 'Ionut Stoian', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(71, 'OF838', 'HD-1024034', 'Status: Se asteapta raspuns de la NBD 16.09', 'BIND', 'NIMENI', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(72, 'OF839', 'HD-1024031', 'Status: Se asteapta raspuns de la NBD 16.09', 'BIND', 'Razvan Mirica', 'NIMENI', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(73, 'OF840', 'HD-1024044', 'Email va fi transmis catre Andreea Tanasoiu in data de 20.09.2024', 'BIND', 'NIMENI', 'Sebastian Melinte', '2024-09-18', '0000-00-00', '0000-00-00', '0000-00-00', 0);

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
