-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 01:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cases`
--

CREATE TABLE `tb_cases` (
  `id_covid` int(11) NOT NULL,
  `id_negara` int(11) NOT NULL,
  `total_cases` int(20) NOT NULL,
  `new_cases` int(20) NOT NULL,
  `total_deaths` int(20) NOT NULL,
  `new_deaths` int(20) NOT NULL,
  `total_recovered` int(20) NOT NULL,
  `active_cases` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cases`
--

INSERT INTO `tb_cases` (`id_covid`, `id_negara`, `total_cases`, `new_cases`, `total_deaths`, `new_deaths`, `total_recovered`, `active_cases`) VALUES
(1, 1, 33695916, 0, 599863, 0, 27098620, 5997433),
(2, 2, 24684077, 1012, 270319, 0, 20795335, 3618423),
(3, 3, 15590613, 0, 434852, 0, 14062396, 1093365),
(4, 4, 5863839, 0, 107535, 0, 5080344, 675960),
(5, 5, 5106862, 0, 44537, 0, 4932838, 129487),
(6, 6, 4931691, 0, 115480, 0, 4547500, 268711),
(7, 7, 4448851, 0, 127675, 0, 4275502, 45674),
(8, 8, 4153374, 0, 124063, 0, 3696481, 332830),
(9, 9, 3604799, 0, 79339, 0, 3297340, 228120),
(10, 10, 3595872, 0, 86669, 0, 3286, 222803);

-- --------------------------------------------------------

--
-- Table structure for table `tb_negara`
--

CREATE TABLE `tb_negara` (
  `id_negara` int(11) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_negara`
--

INSERT INTO `tb_negara` (`id_negara`, `negara`) VALUES
(1, 'USA'),
(2, 'India'),
(3, 'Brazil'),
(4, 'France'),
(5, 'Turkey'),
(6, 'Russia'),
(7, 'UK'),
(8, 'Italy'),
(9, 'Spain'),
(10, 'Germany');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cases`
--
ALTER TABLE `tb_cases`
  ADD PRIMARY KEY (`id_covid`);

--
-- Indexes for table `tb_negara`
--
ALTER TABLE `tb_negara`
  ADD PRIMARY KEY (`id_negara`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
