-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 09:47 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_travel`
--
CREATE DATABASE IF NOT EXISTS `go_travel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `go_travel`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `Booking_ID` int(11) NOT NULL,
  `Picture` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Adult` int(11) NOT NULL,
  `Children` int(11) NOT NULL,
  `Room` int(11) NOT NULL,
  `Room Type` varchar(30) NOT NULL,
  `Bed` int(11) NOT NULL,
  `Stay` int(11) NOT NULL,
  `Bill Due` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Canceled` varchar(30) NOT NULL,
  `Check-in` varchar(30) NOT NULL,
  `Check-out` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Booking_ID`, `Picture`, `Name`, `City`, `Adult`, `Children`, `Room`, `Room Type`, `Bed`, `Stay`, `Bill Due`, `User_Name`, `Canceled`, `Check-in`, `Check-out`) VALUES
(1, ' images/sonargaon.jpg', 'Pan Pacific Sonargaon   ', 'Dhaka', 1, 2, 1, 'Deluxe Room', 1, 4, 7500, 'abcd', 'No', '2022-05-15', '2022-05-19'),
(2, ' images/raddison.jpg', 'Radisson Blu Dhaka Water Garden', 'Dhaka', 2, 2, 2, 'Standard Room', 1, 5, 10000, 'abcd', 'No', '2022-05-14', '2022-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Name` varchar(50) NOT NULL,
  `District` varchar(30) NOT NULL,
  `Thana` varchar(30) NOT NULL,
  `Star` int(11) NOT NULL,
  `Rating` float NOT NULL,
  `Room_Available` int(11) NOT NULL,
  `No_of_beds` int(11) NOT NULL,
  `Room_Type` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `Features` varchar(100) NOT NULL,
  `Reviews` int(11) NOT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Name`, `District`, `Thana`, `Star`, `Rating`, `Room_Available`, `No_of_beds`, `Room_Type`, `Price`, `Features`, `Reviews`, `picture`, `discount`) VALUES
('Pan Pacific Sonargaon   ', 'Dhaka', 'Eskaton', 5, 9, 4, 3, 'Deluxe Room,Standard Room', 15000, 'Swimming Pool,Free WiFi', 15, 'images/sonargaon.jpg', 25),
('Radisson Blu Dhaka Water Garden', 'Dhaka', 'Uttara', 5, 8.2, 3, 3, 'Deluxe Room,Standard Room,Premium Twin Room,Family Suite', 20000, 'Breakfast Included,Swimming pool', 30, 'images/raddison.jpg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `launch`
--

CREATE TABLE `launch` (
  `name` varchar(40) DEFAULT NULL,
  `available_st` int(11) DEFAULT NULL,
  `base` varchar(40) DEFAULT NULL,
  `dest` varchar(40) DEFAULT NULL,
  `journey_date` varchar(40) DEFAULT NULL,
  `journey_hour` varchar(30) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  `ticket_type` varchar(40) DEFAULT NULL,
  `ticket_cancellation_fee` int(11) DEFAULT NULL,
  `class` varchar(40) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `slocation` varchar(40) DEFAULT NULL,
  `elocation` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch`
--

INSERT INTO `launch` (`name`, `available_st`, `base`, `dest`, `journey_date`, `journey_hour`, `fare`, `ticket_type`, `ticket_cancellation_fee`, `class`, `floor`, `slocation`, `elocation`) VALUES
('barisalxpress', 5, 'barisal', 'dhaka', '2022-03-05', '7 hour', 3000, 'refundable', 100, 'cabin', 1, NULL, NULL),
('padma', 10, 'chittagong', 'barisal ', '2021-09-25', '3', 2000, 'refundable', 2000, 'Deck', 2, 'Chittagong Port-doc 9:00 AM', 'Barisal launch ghat'),
('ms jamuna', 10, 'barisal', 'chittagong', '2021-10-25', '3', 2000, 'refundable', 2000, 'Deck', 2, 'Barisal launch ghat 9:00 AM', 'Chittagong Port-doc'),
('ms gazi', 20, 'barisal ', 'chittagong', '2021-10-25', '5', 3000, 'refundable', 200, 'Deck', 2, 'Barisal launch ghat 9:00 AM', 'Chittagong Port-doc'),
('ms Rani', 50, 'barisal ', 'chittagong', '2021-10-25', '5', 15000, 'refundable', 300, 'Deck', 2, 'Barisal launch ghat 9:00 AM', 'Chittagong Port-doc'),
('Chor Fatullah', 50, 'barisal ', 'chittagong', '2021-10-25', '5', 15000, 'nonrefundable', 15000, 'Deck', 2, 'Barisal launch ghat 9:00 AM', 'Chittagong Port-doc'),
('jamunaa', 30, 'chittagong', 'barisal ', '2021-09-25', '3', 2000, 'refundable', 2000, 'Deck', 2, 'Chittagong Port-doc 9:00 AM', 'Barisal launch ghat');

-- --------------------------------------------------------

--
-- Table structure for table `launch_seat`
--

CREATE TABLE `launch_seat` (
  `name` varchar(40) DEFAULT NULL,
  `ticket_type` varchar(40) DEFAULT NULL,
  `class` varchar(40) DEFAULT NULL,
  `availability` varchar(10) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch_seat`
--

INSERT INTO `launch_seat` (`name`, `ticket_type`, `class`, `availability`, `floor`, `id`, `Date`) VALUES
('Padma', 'refundable', 'deck', 'y', 2, 1, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 2, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 3, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 4, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 5, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 6, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 7, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 8, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 9, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 10, '2021-09-25'),
('Padma', 'refundable', 'deck', 'y', 2, 11, '2021-09-25'),
('Padma', 'refundable', 'deck', 'n', 2, 12, '2021-09-25'),
('Padma', 'refundable', 'deck', 'n', 2, 13, '2021-09-25'),
('Padma', 'refundable', 'deck', 'n', 2, 14, '2021-09-25'),
('Padma', 'refundable', 'deck', 'n', 2, 15, '2021-09-25'),
('Padma', 'refundable', 'deck', 'n', 2, 16, '2021-09-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 17, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 18, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 19, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 20, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 21, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 22, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 23, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 24, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 25, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 26, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 27, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 28, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 29, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 30, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 31, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 32, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 33, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 34, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 35, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 36, '2021-10-25'),
('ms gazi', 'refundable', 'deck', 'y', 2, 37, '2021-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `launch_ticket`
--

CREATE TABLE `launch_ticket` (
  `fromm` varchar(40) DEFAULT NULL,
  `too` varchar(40) DEFAULT NULL,
  `journey_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `class` varchar(40) DEFAULT NULL,
  `trip_type` varchar(40) DEFAULT NULL,
  `ticket_type` varchar(40) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch_ticket`
--

INSERT INTO `launch_ticket` (`fromm`, `too`, `journey_date`, `return_date`, `passenger`, `class`, `trip_type`, `ticket_type`, `floor`) VALUES
('barisal ', 'sayeedpur', '2022-04-23', '2021-10-25', 6, 'Cabin', 'roundtrip', 'any', 4),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'refundable', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'refundable', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'any', 'roundtrip', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'any', 'oneway', 'any', 0),
('barisal ', 'barisal ', '0000-00-00', '0000-00-00', 0, 'Cabin', 'roundtrip', 'refundable', 1),
('barisal ', 'barisal ', '0000-00-00', '0000-00-00', 2, 'Cabin', 'roundtrip', 'refundable', 1),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 2, 'Deck', 'roundtrip', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 2, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 2, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'any', 'roundtrip', 'any', 0),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'any', 'oneway', 'any', 0),
('barisal ', 'coxsbazar', '2022-05-25', '2022-05-28', 1, 'Cabin', 'roundtrip', 'refundable', 1),
('coxsbazar', 'barisal ', '2022-05-28', '0000-00-00', 1, 'Cabin', 'oneway', 'refundable', 1),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Cabin', 'roundtrip', 'refundable', 1),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Cabin', 'oneway', 'refundable', 1),
('chittagong', 'barisal ', '2021-09-25', '2021-10-21', 1, 'Cabin', 'roundtrip', 'refundable', 1),
('barisal ', 'chittagong', '2021-10-21', '0000-00-00', 1, 'Cabin', 'oneway', 'refundable', 1),
('chittagong', 'barisal ', '2021-09-25', '2021-10-21', 1, 'Deck', 'roundtrip', 'refundable', 1),
('barisal ', 'chittagong', '2021-10-21', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 1),
('chittagong', 'barisal ', '2021-09-25', '2021-10-21', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-21', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'any', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'any', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 0, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 0, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-09-25', '2021-10-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-10-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2),
('barisal ', 'chittagong', '2021-10-25', '2021-09-25', 1, 'Deck', 'roundtrip', 'refundable', 2),
('chittagong', 'barisal ', '2021-09-25', '0000-00-00', 1, 'Deck', 'oneway', 'refundable', 2);

-- --------------------------------------------------------

--
-- Table structure for table `plane`
--

CREATE TABLE `plane` (
  `name` varchar(40) DEFAULT NULL,
  `available_st` int(11) DEFAULT NULL,
  `base` varchar(40) DEFAULT NULL,
  `dest` varchar(40) DEFAULT NULL,
  `fly_date` varchar(40) DEFAULT NULL,
  `flight_hour` varchar(30) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  `Baggage` int(11) DEFAULT NULL,
  `ticket_type` varchar(40) DEFAULT NULL,
  `Air_cancellation_fee` int(11) DEFAULT NULL,
  `class` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plane`
--

INSERT INTO `plane` (`name`, `available_st`, `base`, `dest`, `fly_date`, `flight_hour`, `fare`, `Baggage`, `ticket_type`, `Air_cancellation_fee`, `class`) VALUES
('NovoAir', 100, 'dhaka', 'chittagong', '2022-03-15', '3', 5000, 6, 'refundable', 1000, 'first'),
('NovoAir', 100, 'dhaka', 'chittagong', '2022-03-15', '3', 5000, 6, 'refundable', 1000, 'First'),
('EuroBangla', 100, 'chittagong', 'dhaka', '2022-03-26', '3', 5000, 6, 'refundable', 1000, 'First');

-- --------------------------------------------------------

--
-- Table structure for table `plane_ticket`
--

CREATE TABLE `plane_ticket` (
  `fromm` varchar(40) DEFAULT NULL,
  `too` varchar(40) DEFAULT NULL,
  `journey_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `passenger` int(11) DEFAULT NULL,
  `class` varchar(40) DEFAULT NULL,
  `trip_type` varchar(40) DEFAULT NULL,
  `ticket_type` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plane_ticket`
--

INSERT INTO `plane_ticket` (`fromm`, `too`, `journey_date`, `return_date`, `passenger`, `class`, `trip_type`, `ticket_type`) VALUES
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'First ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'First ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-03-30', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-03-30', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
('', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
('chittagong', 'dhaka', '2022-03-26', '2022-05-28', 8, 'First ', 'roundtrip', 'r'),
('dhaka', 'chittagong', '2022-05-28', '0000-00-00', 8, 'First ', 'roundtrip', 'r'),
('chittagong', 'dhaka', '2022-03-26', '2022-05-28', 8, 'First ', 'roundtrip', 'r'),
('dhaka', 'chittagong', '2022-05-28', '0000-00-00', 8, 'First ', 'roundtrip', 'r'),
('chittagong', 'dhaka', '2022-03-26', '2022-05-28', 8, 'First ', 'roundtrip', 'r'),
('dhaka', 'chittagong', '2022-05-28', '0000-00-00', 8, 'First ', 'roundtrip', 'r'),
('chittagong', 'dhaka', '2022-03-26', '2022-05-28', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-05-28', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-05-28', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-05-28', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable'),
('chittagong', 'dhaka', '2022-03-26', '2022-05-28', 8, 'first ', 'roundtrip', 'refundable'),
('dhaka', 'chittagong', '2022-05-28', '0000-00-00', 8, 'first ', 'roundtrip', 'refundable');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `picture` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Link` varchar(50) NOT NULL,
  `Road No.` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Thana` varchar(50) NOT NULL,
  `Phone No.` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`picture`, `Name`, `Link`, `Road No.`, `District`, `Thana`, `Phone No.`) VALUES
('images/NorthEnd.jpg', 'North End Coffee Roasters', 'http://www.northendcoffee.com/', '6', 'Dhaka', 'Dhanmondi', 171543435),
('images/Tabaq.jpg', 'Tabaq Coffee House', 'https://tabaqcoffee.com/locations/', '5', 'Dhaka', 'Dhanmondi', 1715434343);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`Booking_ID`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `launch_seat`
--
ALTER TABLE `launch_seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `launch_seat`
--
ALTER TABLE `launch_seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
