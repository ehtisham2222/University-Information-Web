-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2025 at 01:57 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depid` int(30) NOT NULL,
  `dname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `username` varchar(30) NOT NULL,
  `Rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `email`, `password`) VALUES
(1, 'ehtisham12@gmail.com', 'fryhusiosujs23(0(0'),
(2, 'abbaskhan444@gmail.com', 'dgydrtruwiodojsdnidsuAw2'),
(3, 'umairahmedkhan1@gmail.com', 'siosuoeffnioef072y3'),
(4, 'osamaali12@gmail.com', 'dhdiocnocjce'),
(5, 'jack23@gmail.com', 'dklndokwdjihncd'),
(6, 'tayyaba1@gmail.com', 'ndkcckch7933983');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `proid` int(30) NOT NULL,
  `pname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `review_text` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `email`, `password`, `university`, `review_text`, `submitted_at`) VALUES
(1, 'abbaskhan12@gmail.com', 'wddnoudnkdju09edfvnfio', 'Iqra University', 'great university ', '2025-07-28 08:02:28'),
(2, 'alikhan@gmail.com', 'wnkdhwkdhixcn', 'NUML University', 'gret university', '2025-07-28 08:03:04'),
(3, 'alikhan@gmail.com', 'wnkdhwkdhixcn', 'NUML University', 'gret university', '2025-07-28 08:09:01'),
(4, 'alikhan@gmail.com', 'wnkdhwkdhixcn', 'NUML University', 'gret university', '2025-07-28 08:11:54'),
(5, 'saleemkhan@gmail.com', 'xcjkhcnoducejcn', 'NUST University', 'good', '2025-07-28 08:14:55'),
(6, 'saleemkhan@gmail.com', 'xcjkhcnoducejcn', 'NUST University', 'good', '2025-07-28 08:17:32'),
(7, 'saleemkhan@gmail.com', 'xcjkhcnoducejcn', 'NUST University', 'good', '2025-07-28 08:17:55'),
(8, 'hamza@gmail.com', 'hamzka5689Q_', 'FAST University', 'i recently got admssion in this university .its good and faculty is good and cooperative', '2025-07-28 08:32:30'),
(9, 'hamza@gmail.com', 'hamzka5689Q_', 'FAST University', 'i recently got admssion in this university .its good and faculty is good and cooperative', '2025-07-28 08:35:48'),
(10, 'samadali23@gmail.com', 'cvx231A_', 'Iqra University', 'good for education need.', '2025-07-28 15:42:28'),
(11, 'khalidzameer56@gmail.com', 'didbciccicuccb', 'NUML University', 'excellent', '2025-07-28 15:49:28'),
(15, 'abdullahali@gmail.com', 'hguhihonioj', 'NUML University', 'good for different languages courses.', '2025-07-28 16:33:35'),
(16, 'fatimasaleem@gmail.com', 'ckmocnocjc', 'NUST University', 'quality eduaction', '2025-07-28 16:40:15'),
(17, 'marimum89@gmail.com', 'dnoinxdoiudnwyd---', 'NUML University', 'better than other universities.', '2025-07-28 17:27:49'),
(18, 'kiran222@gmail.com', 'nskjsnsjsnis', 'Iqra University', 'good for bs courses', '2025-07-29 04:03:19'),
(19, 'kiran222@gmail.com', 'nskjsnsjsnis', 'Iqra University', 'good for bs courses', '2025-07-29 04:09:21'),
(20, 'sofianoman@gmail.com', 'nduododxxg567', 'NUST University', 'good for phd courses', '2025-07-29 04:10:49'),
(21, 'umair.khan@gmail.com', 'ansjakyag', 'NUML University', 'excellent ', '2025-07-29 05:53:34'),
(22, 'alikhan@gmail.com', 'alikhan244bvy', 'NUML University', 'good university', '2025-08-01 11:26:15'),
(23, 'khalidkhan@gmail.com', 'cvvhvhtklikokl', 'Iqra University', 'excellent faculty', '2025-08-01 11:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `ID` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`ID`, `username`, `password`) VALUES
(1, 'qali123', '12345'),
(2, 'qali123', '12345'),
(3, 'ehtisham123', 'kiks134578'),
(4, 'ehtisham123', 'kiks134578'),
(5, 'ehtisham123', 'a sjwhiuwdlwjpiednklweoui'),
(6, 'ehtisham123', 'a sjwhiuwdlwjpiednklweoui'),
(7, 'kaleemkhan123', 'najdjdodpokdd'),
(8, 'arslan12344', 'kqlkwepqkprmdflk3jr'),
(9, 'ali123', 'sdioduowdnwfqw5u'),
(10, 'malikAwan123', 'wkwepwepjdieip'),
(11, 'ehtisham453', 'shdidymnw;w;09whm'),
(12, 'saleem_123', '2723923738748454o27204d'),
(13, 'kaleem__12', 'wjwhiudfnioefyoenflefi'),
(14, 'Ehtisham_12', 'wkuewoen023829sjk}'),
(15, 'ehtisham453', '2bkdhdsjpeo-=we0sdneui'),
(16, 'asadali11', 'king123'),
(24, 'faizan45', 'sjodojidcc'),
(25, 'zeeshan23', 'wddxcmopccm'),
(26, 'kaleemullah__45', 'nadkdx djnddklj,,'),
(27, 'ali_khan123', 'geuididydhi');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `uniid` int(60) NOT NULL,
  `uniname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depid`),
  ADD KEY `depid` (`depid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`proid`),
  ADD KEY `proid` (`proid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `id_3` (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `username` (`ID`,`username`),
  ADD KEY `ID_3` (`ID`),
  ADD KEY `ID_4` (`ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`uniid`),
  ADD UNIQUE KEY `uniid` (`uniid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `username` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`depid`) REFERENCES `university` (`uniid`) ON UPDATE NO ACTION;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `reviews` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`proid`) REFERENCES `login` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`uniid`) REFERENCES `program` (`proid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
