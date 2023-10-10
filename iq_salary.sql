-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 10:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iq_salary`
--

-- --------------------------------------------------------

--
-- Table structure for table `april`
--

CREATE TABLE `april` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `april`
--

INSERT INTO `april` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(63, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(64, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(65, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(66, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(67, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(68, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(69, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(70, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(71, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(72, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(73, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(74, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(75, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(76, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(77, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(78, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(79, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(80, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(81, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(82, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820),
(95, 'আজিজুল হাকিম', '2018-02-02', 2541, 54, 584, 638, 6941, 522, 524, 4, 0, 4, 150, 11320, 150, 11170);

-- --------------------------------------------------------

--
-- Table structure for table `august`
--

CREATE TABLE `august` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `august`
--

INSERT INTO `august` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(2, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 500, 36250, 300, 35950),
(3, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(4, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(5, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(6, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(7, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(8, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(9, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(10, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(11, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(12, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(13, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(17, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(18, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(19, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(20, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(21, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 718, 800, 0, 0, 0, 0, 7968, 150, 7818);

-- --------------------------------------------------------

--
-- Table structure for table `december`
--

CREATE TABLE `december` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `december`
--

INSERT INTO `december` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(1, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(2, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(3, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(4, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(5, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(6, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(7, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(8, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(9, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(10, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(11, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(12, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(13, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(17, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(18, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(19, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(20, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820),
(21, 'zzzz', '2014-01-01', 22, 22, 22, 44, 22, 22, 22, 22, 2, 24, 22, 178, 22, 156);

-- --------------------------------------------------------

--
-- Table structure for table `february`
--

CREATE TABLE `february` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `february`
--

INSERT INTO `february` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(1, 'Mrs. Sajeda Begum Shilpi', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(2, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 0, 15620, 150, 15470),
(3, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(4, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(5, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(6, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(7, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(8, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(9, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(10, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(11, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(12, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(13, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(17, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 8000, 0, 0, 0, 0, 15545, 150, 15395),
(18, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(19, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(20, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 4000, 3970);

-- --------------------------------------------------------

--
-- Table structure for table `january`
--

CREATE TABLE `january` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `january`
--

INSERT INTO `january` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(241, 'Mrs. Sajeda Begum Shilpi', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(242, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 0, 15620, 150, 15470),
(243, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(244, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(245, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(246, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(247, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(248, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(249, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(250, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(251, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(252, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(253, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(254, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(255, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(256, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(257, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 8000, 0, 0, 0, 0, 15545, 150, 15395),
(258, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(259, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(260, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820);

-- --------------------------------------------------------

--
-- Table structure for table `july`
--

CREATE TABLE `july` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `july`
--

INSERT INTO `july` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(1, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 500, 36250, 300, 35950),
(2, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(3, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(4, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(5, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(6, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(7, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(8, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(9, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(10, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(11, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(12, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(13, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(17, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(18, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(19, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(20, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820),
(21, 'আজিজুল হাকিম', '2018-02-02', 2541, 54, 584, 638, 6941, 522, 524, 2, 0, 2, 150, 11318, 150, 11168),
(22, 'abc', '2014-01-01', 3000, 4000, 200, 4200, 1000, 1000, 1000, 2, 0, 2, 0, 10202, 150, 10052);

-- --------------------------------------------------------

--
-- Table structure for table `june`
--

CREATE TABLE `june` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `june`
--

INSERT INTO `june` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(1, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 500, 36250, 300, 35950),
(2, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(3, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(4, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(5, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(6, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(7, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(8, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(9, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(10, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(11, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(12, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(13, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(17, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(18, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(19, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(20, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820),
(21, 'আজিজুল হাকিম', '2018-02-02', 2541, 54, 584, 638, 6941, 522, 524, 2, 0, 2, 150, 11318, 150, 11168),
(32, 'abc', '2014-01-01', 3000, 4000, 200, 4200, 1000, 1000, 1000, 2, 0, 2, 0, 10202, 150, 10052);

-- --------------------------------------------------------

--
-- Table structure for table `march`
--

CREATE TABLE `march` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `march`
--

INSERT INTO `march` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(1, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(2, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(3, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(4, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(5, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(6, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(7, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(8, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(9, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(10, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(11, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(12, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(13, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(17, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 8000, 0, 0, 0, 0, 15545, 150, 15395),
(18, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(19, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(20, 'Ferdosi Sarmin', '2014-03-01', 30050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 34970, 150, 34820);

-- --------------------------------------------------------

--
-- Table structure for table `may`
--

CREATE TABLE `may` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `may`
--

INSERT INTO `may` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(2, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(3, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(4, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(5, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(6, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(7, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(8, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(9, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(10, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(11, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(12, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(13, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(17, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(18, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(19, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(20, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(21, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820),
(22, 'আজিজুল হাকিম', '2018-02-02', 2541, 54, 584, 638, 6941, 522, 524, 0, 0, 0, 150, 11316, 150, 11166);

-- --------------------------------------------------------

--
-- Table structure for table `november`
--

CREATE TABLE `november` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `november`
--

INSERT INTO `november` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(2, 'সাজেদা', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 500, 36250, 300, 35950),
(3, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(4, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(5, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(6, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(7, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(8, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(9, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(10, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(11, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(12, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(13, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(17, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(18, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(19, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(20, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(21, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820);

-- --------------------------------------------------------

--
-- Table structure for table `october`
--

CREATE TABLE `october` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `october`
--

INSERT INTO `october` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(3, 'শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 500, 36250, 300, 35950),
(4, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(5, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(6, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(7, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(8, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(9, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(10, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(11, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(12, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(13, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(14, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(15, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(16, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(17, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(18, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(19, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(20, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(21, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(22, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820);

-- --------------------------------------------------------

--
-- Table structure for table `september`
--

CREATE TABLE `september` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `september`
--

INSERT INTO `september` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(2, 'সাজেদা বেগম শিল্পী', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(3, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 1000, 16620, 150, 16470),
(4, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(5, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(6, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(7, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(8, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(9, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(10, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(11, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(12, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(13, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(14, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(15, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(16, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(17, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(18, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 800, 0, 0, 0, 0, 8345, 150, 8195),
(19, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(20, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(21, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 0, 7970, 150, 7820),
(53, 'zzzz', '2014-01-01', 22, 22, 22, 44, 22, 22, 22, 22, 2, 24, 22, 178, 22, 156),
(54, 'Azizul Hakim', '2018-01-02', 3000, 200, 400, 600, 1000, 800, 800, 0, 0, 0, 0, 6200, 150, 6050);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mount`
--

CREATE TABLE `tbl_mount` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `teacher_salary` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mount`
--

INSERT INTO `tbl_mount` (`id`, `link`, `name`, `teacher_salary`) VALUES
(1, 'January.php', 'January', 233880),
(2, 'February.php', 'February', 230030),
(44, 'March.php', 'March', 261880);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `teacher_id`, `name`, `Title`, `salary`) VALUES
(1, 'P21i', 'Mst. Sajeda Begum Shilpi', 'Principal', 35000),
(2, 'ASS22', 'Mst. Poly', 'Assistant Teacher', 15000),
(3, 'ASS23', 'Azizul Hakim', 'Junior Teacher', 6200),
(4, 'ASS24', 'Safayeth Ahmed', 'Senior_Teacher', 10400),
(5, 'ASS25', 'MD. Islam Uddin', 'Senior_Teacher', 12000),
(6, 'ASS26', 'Mst. Joly', 'Senior_Teacher', 9000),
(7, 'ASS27', 'Bithika Mojumdar', 'Senior_Teacher', 18000),
(8, 'ASS28', 'Ruhenaj Begum', 'Senior_Teacher', 18000),
(9, 'ASS28', 'Apukar', 'Senior_Teacher', 9000),
(10, 'ASS29', 'Jaman Ahmed Linkon', 'Senior_Teacher', 7180),
(11, 'ASS30', 'Aliul Islam Dipu', 'Accounts_Teacher', 10500);

-- --------------------------------------------------------

--
-- Table structure for table `t_tbl_salary`
--

CREATE TABLE `t_tbl_salary` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `incre_Date` date NOT NULL,
  `Orgin_Salary` int(11) NOT NULL,
  `incre_Yearly` int(11) NOT NULL,
  `Last_Y_increse` int(11) NOT NULL,
  `Total_increse` int(11) NOT NULL,
  `H_rent` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `Vehicular` int(11) NOT NULL,
  `2nd_shift_fee` int(11) NOT NULL,
  `incre_Honoraria` int(11) NOT NULL,
  `total_Honararia` int(11) NOT NULL,
  `Festival_bonus` int(11) NOT NULL,
  `Total_Salary` int(11) NOT NULL,
  `F_Found` int(11) NOT NULL,
  `Given_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_tbl_salary`
--

INSERT INTO `t_tbl_salary` (`id`, `name`, `incre_Date`, `Orgin_Salary`, `incre_Yearly`, `Last_Y_increse`, `Total_increse`, `H_rent`, `Treatment`, `Vehicular`, `2nd_shift_fee`, `incre_Honoraria`, `total_Honararia`, `Festival_bonus`, `Total_Salary`, `F_Found`, `Given_salary`) VALUES
(1, 'Mrs. Sajeda Begum Shilpi', '2014-01-01', 8875, 500, 5550, 6050, 4500, 2825, 3000, 6000, 4500, 10500, 0, 35750, 300, 35450),
(2, 'Bithika ', '2014-01-01', 3770, 300, 3750, 4050, 1500, 1000, 1200, 2500, 1600, 4100, 0, 15620, 150, 15470),
(6, 'Ruhenaj Begum', '2014-01-01', 3770, 300, 3675, 3975, 1500, 1000, 1200, 0, 0, 0, 0, 11445, 150, 11295),
(7, 'Monira Aktar', '2014-01-01', 3770, 300, 3000, 3300, 1500, 1000, 1200, 0, 0, 0, 0, 10770, 150, 10620),
(8, 'Hasna hana', '2014-01-09', 3770, 300, 3150, 3450, 1500, 1000, 1200, 0, 0, 0, 0, 10920, 150, 10770),
(9, 'Tasmina aktar ', '2014-01-02', 3770, 300, 2700, 3000, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14570, 150, 14420),
(10, 'Poly Begum', '2014-01-01', 3770, 300, 2400, 2700, 1500, 1000, 1200, 2500, 1600, 4100, 0, 14270, 150, 14120),
(11, 'Farjana Houqe', '2014-01-01', 3770, 300, 1800, 2100, 1500, 1000, 1200, 0, 0, 0, 0, 9570, 150, 9420),
(12, 'Islam Uddin', '2014-01-02', 3770, 300, 1500, 1800, 1500, 1000, 1200, 2500, 0, 2500, 0, 11770, 150, 11620),
(13, 'Mahfuja Hasnath', '2017-01-05', 3770, 300, 300, 600, 1500, 1000, 1200, 0, 0, 0, 0, 8070, 150, 7920),
(14, 'Joly Begum', '2014-01-01', 3770, 300, 1200, 1500, 1500, 1000, 1200, 0, 0, 0, 0, 8970, 150, 8820),
(15, 'Apu Kar', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(16, 'Safayeth Ahmed', '2016-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 2500, 0, 2500, 0, 11170, 150, 11020),
(17, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(18, 'Mahabob ahmed', '2019-12-01', 3770, 300, 900, 1200, 1500, 1000, 1200, 0, 0, 0, 0, 8670, 150, 8520),
(19, 'Jaman ', '2019-01-15', 3770, 300, 0, 300, 1500, 1000, 1200, 0, 0, 0, 0, 7770, 150, 7620),
(20, 'Suma Talukdar', '2014-01-01', 3050, 200, 2375, 2575, 1200, 720, 8000, 0, 0, 0, 0, 15545, 150, 15395),
(21, 'Diluara Begum', '2014-01-01', 3050, 200, 2100, 2300, 1200, 720, 800, 0, 0, 0, 0, 8070, 150, 7920),
(22, 'hakim', '2014-01-01', 3050, 200, 300, 500, 1200, 720, 800, 0, 0, 0, 0, 6270, 150, 6120),
(23, 'Ferdosi Sarmin', '2014-03-01', 3050, 200, 2000, 2200, 1200, 720, 800, 0, 0, 0, 150, 8120, 150, 7970);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `april`
--
ALTER TABLE `april`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `august`
--
ALTER TABLE `august`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `december`
--
ALTER TABLE `december`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `february`
--
ALTER TABLE `february`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `january`
--
ALTER TABLE `january`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `july`
--
ALTER TABLE `july`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `june`
--
ALTER TABLE `june`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `march`
--
ALTER TABLE `march`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `may`
--
ALTER TABLE `may`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `november`
--
ALTER TABLE `november`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `october`
--
ALTER TABLE `october`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `september`
--
ALTER TABLE `september`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mount`
--
ALTER TABLE `tbl_mount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_tbl_salary`
--
ALTER TABLE `t_tbl_salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `april`
--
ALTER TABLE `april`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `august`
--
ALTER TABLE `august`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `december`
--
ALTER TABLE `december`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `february`
--
ALTER TABLE `february`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `january`
--
ALTER TABLE `january`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `july`
--
ALTER TABLE `july`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `june`
--
ALTER TABLE `june`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `march`
--
ALTER TABLE `march`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `may`
--
ALTER TABLE `may`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `november`
--
ALTER TABLE `november`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `october`
--
ALTER TABLE `october`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `september`
--
ALTER TABLE `september`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_mount`
--
ALTER TABLE `tbl_mount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_tbl_salary`
--
ALTER TABLE `t_tbl_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
