-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 11:09 AM
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
(39, 'OF741', 'HD-1014193', 'Status: Notificare trimisa la data de 05.08.2024', 'BIND', 'Eduard Zamfir', 'Naomi Halip', '2024-09-16', 0),
(40, 'OF742', 'HD-1014191', 'Status: Mail Angela Ciobanu 11.09', 'BIND', 'Razvan Mirica', 'Eduard Zamfir', '2024-09-16', 0),
(41, 'OF743', 'HD-1014424', 'Status: tichet inchis 11.09', 'BIND', 'Ana-Maria Stanca', 'Naomi Halip', '2024-09-16', 1),
(38, 'OF744', 'HD-1014488', 'Status: Tichet inchis 11.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 1),
(37, 'OF746', 'HD-1014678', 'Status: Reminder Daniel Oanta & Luchiana D. 11.09', 'BIND', 'Luchiana Dumitrescu', 'Razvan Dumitrescu', '2024-09-16', 0),
(55, 'Of747', 'HD-1014745', 'Status: Tichet inchis 10.09.2024', 'BIND', 'Florin Stoica', 'Florin Stoica', '2024-09-16', 0),
(42, 'OF748', 'HD-1014747', 'Status: Tichet inchis la data de 03.09.2024', 'BIND', 'Razvan Mirica', 'Daniel Oanta', '2024-09-16', 1),
(44, 'OF750', 'HD-1015927', 'Status: Tichet inchis in data de 28.08.2024', 'BIND', 'Luchiana Dumitrescu', 'Daniel Oanta', '2024-09-16', 1),
(43, 'OF751', 'HD-1015928', 'Status: Tichet inchis la data de 03.09.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-16', 1),
(45, 'OF752', 'HD-1015926', 'Status: Tichet inchis 28.08.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Dumitraciuc', '2024-09-16', 1),
(36, 'OF758', 'HD-1016278', 'Status: Reminder transmis catre Angela Ciobanu in data de 16.09 . Se asteapta un raspuns', 'BIND', 'Luchiana Dumitrescu', 'Daniel Oanta', '2024-09-16', 0),
(35, 'OF759', 'HD-1016279', 'Status: Mail Adriana Litu 11.09; SD trimis 11.09', 'MIS', 'Naomi Halip', 'Naomi Halip / Razvan Dumitrescu', '2024-09-16', 0),
(34, 'OF761', 'HD-1016281', 'Status: Reminder transmis catre Andreea Tanasoiu 16.09 + Mail Catalin Cimpoesu 16.09', 'MIS', 'Eduard Zamfir', 'Daniel Dumitraciuc / Razvan Dumitrescu', '2024-09-16', 0),
(33, 'OF762', 'HD-1016282', 'Status: Notificare trimisa la data de 06.09.2024; L-am intrebat pe Florin de SD 16.09', 'MIS', 'Luchiana Dumitrescu', 'Florin Stoica / Razvan Dumitrescu', '2024-09-16', 0),
(46, 'OF767', 'HD-1017260', 'Status: Tichet inchis 14.08.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-16', 1),
(47, 'OF768', 'HD-1017262', 'Status: Tichet inchis 27.08.2024', 'BIND', 'Ana-Maria Stanca', 'Daniel Oanta', '2024-09-16', 1),
(32, 'OF769', 'HD-1017320', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 16.09; Mail Cata+Razvan M. SD 11.09', 'MIS', 'Razvan Mirica', 'Catalin Toploiu / Razvan Dumitrescu', '2024-09-16', 0),
(48, 'OF770', 'HD-1017695', 'Status: Tichet inchis 21.08.2024\n	    SD-ul trebuie modificat 11.09', 'MIS', 'Razvan Mirica', 'Razvan Mirica', '2024-09-16', 1),
(30, 'OF772', 'HD-1017738', 'Status: Se asteapta raspuns de la NBD 16.09', 'BIND', 'Luchiana Dumitrescu', 'Ionut Stoian', '2024-09-16', 0),
(54, 'OF776', 'HD-1017766', 'Status: Tichet inchis 28.08\n	    SD-> De vb cu Mihai 17.09', 'MIS', 'Eduard Zamfir', 'Catalin Toploiu', '2024-09-16', 1),
(27, 'OF777', 'HD-1017771', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 16.09; SD trimis 11.09', 'MIS', 'Eduard Zanfir', 'Naomi Halip/ Razvan Dumitrescu', '2024-09-16', 0),
(29, 'OF778', 'HD-1017779', 'Status: momentan este in pauza.', 'MIS', 'NIMIC', 'NIMIC', '2024-09-16', 0),
(28, 'OF779', 'HD-1017781', 'Status: Tichet inchis 10.09', 'MIS', 'Daniel Oanta', 'Ionut Stoian', '2024-09-16', 1),
(31, 'OF780', 'HD-1017784', 'Status: Tichet inchis 10.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 1),
(25, 'OF781', 'HD-1018607', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Razvan Mirica', 'Florin Stoica', '2024-09-16', 1),
(18, 'OF782', 'HD-1018606', 'Status: Tichet inchis 09.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Sebastian Melinte', '2024-09-16', 1),
(17, 'OF783', 'HD-1018604', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Luchiana Dumitrescu', 'Florin Stoica', '2024-09-16', 1),
(26, 'OF784', 'HD-1018599', 'Status: Mail Adriana Litu 11.09', 'BIND', 'Eduard Zanfir', 'Naomi Halip / Razvan Dumitrescu', '2024-09-16', 0),
(16, 'OF785', 'HD-1018603', 'Status: Tichet inchis in data de 04.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu/Razvan Dumitrescu', '2024-09-16', 1),
(23, 'OF790', 'HD-1018724', 'Status: Tichet inchis 05.09.2024', 'BIND', 'Eduard Zanfir', 'Eduard Zanfir', '2024-09-16', 1),
(24, 'OF791', 'HD-1018727', 'Status: Tichet inchis in data de 04.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 1),
(14, 'OF792', 'HD-1018719', 'Status: Mail Ana & Florin 10.09.2024', 'BIND', 'Ana-Maria Stanca', 'Florin Stoica', '2024-09-16', 0),
(13, 'OF793', 'HD-1018720', 'Status: Tichet inchis 10.09.2024', 'BIND', 'Eduard Zamfir', 'Eduard Zamfir', '2024-09-16', 1),
(15, 'OF794', 'HD-1018722', 'Status: Tichet inchis 09.09.2024', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-16', 1),
(49, 'OF797', 'HD-1019451', 'Status: TA in constructie 11.09', 'MIS', 'Ionut Stoian', 'Ionut Stoian', '2024-09-16', 0),
(9, 'OF800', 'HD-1019480', 'Status: Tichet inchis 16.09', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-16', 0),
(12, 'OF801', 'HD-1019482', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 16.09 . Se asteapta un raspuns', 'BIND', 'Eduard Zamfir', 'Ionut Stoian', '2024-09-16', 0),
(10, 'OF802', 'HD-1019484', 'Status: Se asteapta raspuns de la NBD 16.09', 'BIND', 'Luchiana Dumitrescu', 'Andrei Gavrileteanu', '2024-09-16', 0),
(11, 'OF803', 'HD-1019483', 'Status: Notificare de trimis in data de 11.09.2024', 'BIND', 'Ana-Maria Stanca', 'Sebastian Melinte', '2024-09-16', 0),
(5, 'OF804', 'HD-1019503', 'Status: Email transmis catre Andreea Tanasoiu in data de 16.09. Se asteapta raspuns', 'BIND', 'Eduard Zamfir', 'Andrei Gavrileteanu', '2024-09-16', 0),
(59, 'OF805', 'HD-1019770', 'Status: Se afla in lucru la Ana-Maria Stanca 13.09', 'MIS', '', '', '2024-09-16', NULL),
(60, 'OF806', 'HD-1019771', 'Status: Se afla in lucru la Ana-Maria Stanca 13.09', 'MIS', '', '', '2024-09-16', NULL),
(7, 'OF809', 'HD-1020003', 'Status: Reminder transmis catre Andreea Tanasoiu in data de 16.09 . Se asteapta un raspuns', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-16', 0),
(8, 'OF810', 'HD-1020004', 'Status: Notificare trimisa in data de 04.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 0),
(6, 'OF811', 'HD-1020238', 'Status: Notificare de trimis in data de 13.09.2024', 'MIS', 'Razvan Mirica', 'Ionut Stoian', '2024-09-16', 0),
(3, 'OF812', 'HD-1020756', 'Status: Email transmis catre Andreea Tanasoiu in data de 16.09. Se asteapta raspuns', 'BIND', 'Luchiana Dumitrescu', 'Sebastian Melinte', '2024-09-16', 0),
(4, 'OF813', 'HD-1020886', 'Status: Notificare de trimis in: 11.09.2024', 'BIND', 'Ana-Maria Stanca', 'Andrei Gavrileteanu', '2024-09-16', 0),
(2, 'OF814', 'HD-1020888', 'Status: Notificare trimisa 11.09', 'BIND', 'Razvan Mirica', 'George Vasilescu', '2024-09-16', 0),
(1, 'OF815', 'HD-1020889', 'Status: Specificatie incompleta, mail Angela 09.09.2024', 'BIND', 'Luchiana Dumitrescu', 'NIMENI', '2024-09-16', 0),
(50, 'OF816', 'HD-1021215', 'Status: Posibil sa il ia cei de la Alpha 11.09', 'MIS', '-', '-', '2024-09-16', 0),
(51, 'OF817', 'HD-1021461', 'Status: TA in constructie pana la data de 16.09', 'MIS', 'Daniel Oanta', 'revin', '2024-09-16', 0),
(52, 'OF818', 'HD-1021462', 'Status: TA in constructie pana la data de 17.09', 'MIS', 'Eduard Zamfir', 'revin', '2024-09-16', 0),
(53, 'OF819', 'HD-1021464', 'Status: trebuie preluat de TA 11.09', 'MIS', 'revin', 'revin', '2024-09-16', 0),
(21, 'OF820', 'HD-1021977', 'Status: Notificare trimisa in data de 05.09.2024', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 0),
(22, 'OF821', 'HD-1021978', 'Status: Notificare trimisa in data de 10.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 0),
(19, 'OF822', 'HD-1021998', 'Status: End date DEV 16.09', 'BIND', 'Razvan Mirica', 'Catalin Toploiu', '2024-09-16', 0),
(20, 'OF823', 'HD-1021999', 'Status: Specificatie incompleta 06.09.2024', 'BIND', 'revin cu update', 'revin cu update', '2024-09-16', 0),
(58, 'OF824', 'HD-1022333', 'Status: End date DEV 18.09.2024', 'BIND', 'Ionut Stoian', 'Ionut Stoian', '2024-09-16', 0),
(61, 'OF825', 'HD-1022330', 'Status: Notificare de trimis catre Andreea Tanasoiu in data de 17.09', 'BIND', '', '', '2024-09-16', NULL),
(62, 'OF826', 'HD-1022332', 'Status: Notificare de trimis catre Andreea Tanasoiu in data de 20.09', 'BIND', '', '', '2024-09-16', NULL),
(57, 'OF827', 'HD-1022384', 'Status: End date DEV 17.09', 'BIND', 'Eduard Zamfir', 'Naomi Halip', '2024-09-16', 0),
(56, 'OF828', 'HD-1022385', 'Status: Email transmis catre Andreea Tanasoiu in data de 16.09. Se asteapta raspuns', 'BIND', 'Eduard Zamfir', 'George Vasilescu', '2024-09-16', 0),
(63, 'OF829', 'HD-1022840', 'Status: Se asteapta raspuns de la NBD - TA in constructie 13.09', 'BIND', '', '', '2024-09-16', NULL),
(64, 'OF830', 'HD-1023067', 'Status: Se asteapta raspuns de la NBD - TA in constructie 13.09', 'BIND', '', '', '2024-09-16', NULL),
(65, 'OF831', 'HD-1023064', 'Status: Se asteapta raspuns din partea NBD -Start Date DEV: 16.09', 'BIND', '', '', '2024-09-16', NULL),
(66, 'OF832', 'HD-1023063', 'Status: Se asteapta raspuns din partea NBD -TA finalizat 12.09', 'BIND', '', '', '2024-09-16', NULL),
(67, 'OF833', 'HD-1023168', 'Status: Se asteapta raspuns din partea NBD -TA finalizat 12.09', 'BIND', '', '', '2024-09-16', NULL),
(68, 'OF834', 'HD-1023169', 'Status: Se asteapta raspuns de la NBD - TA finalizat 13.09', 'BIND', 'Daniel Oanta', 'Daniel Oanta', '2024-09-16', 0),
(69, 'OF836', 'HD-1023406', 'Status: Se asteapta raspuns de la NBD - DEV finalizat 16.09', 'BIND', 'Ionut Stoian', 'Ionut Stoian', '2024-09-16', 0),
(70, 'OF837', 'HD-1023408', 'Status: Se asteapta raspuns de la NBD - TA in constructie 13.09', 'BIND', '', '', '2024-09-16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tichetejira`
--
ALTER TABLE `tichetejira`
  ADD UNIQUE KEY `unique_numeOF` (`numeOF`),
  ADD UNIQUE KEY `unique_id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
