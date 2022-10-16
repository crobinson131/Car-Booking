-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 04:49 PM
-- Server version: 5.6.21
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
`car_id` int(200) NOT NULL,
  `car_name` varchar(250) NOT NULL,
  `car_nameplate` varchar(250) NOT NULL,
  `car_img` varchar(255) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(210) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'GA3KA6969', 'assets/img/cars/audi-a4.jpg', 10, 5 , 35, 30, 'yes'),
(2, 'Hyundai Creta', 'BA2CH2020', 'assets/img/cars/creta.jpg', 12, 7, 29, 20, 'yes'),
(3, 'BMW 6-Series', 'BA10PA5555', 'assets/img/cars/bmw6.jpg', 19, 15, 45, 40, 'yes'),
(4, 'Mercedes-Benz E-Class', 'BA10CH6009', 'assets/img/cars/mcec.jpg', 25, 30, 75, 52, 'yes'),
(6, 'Ford EcoSport', 'GA4PA2587', 'assets/img/cars/ecosport.png', 21, 13, 38, 26, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 28, 24, 'no'),
(8, 'Land Rover Range Rover Sport', 'GA5KH9669', 'assets/img/cars/rangero.jpg', 16, 10, 60, 46, 'yes'),
(9, 'MG Hector', 'GA6PA6666', 'assets/img/cars/mghector.jpg', 20, 12, 59, 44, 'yes'),
(10, 'Honda CR-V', 'TN17MS1997', 'assets/img/cars/hondacr.jpg', 22, 15, 35, 40, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 30, 26, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 32, 28, 'yes'),
(13, 'Hyundai Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 23, 15, 45, 35, 'yes'),
(14, 'Jaguar XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 39, 29, 61, 43, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE IF NOT EXISTS `clientcars` (
  `car_id` int(200) NOT NULL,
  `client_username` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'harry'),
(3, 'harry'),
(7, 'harry'),
(8, 'harry'),
(9, 'harry'),
(11, 'harry'),
(12, 'harry'),
(2, 'jenny'),
(4, 'jenny'),
(6, 'jenny'),
(10, 'jenny'),
(13, 'jenny'),
(14, 'jenny');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_username` varchar(250) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_phone` varchar(20) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `client_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('harry', 'Harry Den', '9876543210', 'harryden@gmail.com', '2477  Harley Vincent Drive', 'password'),
('jenny', 'Jeniffer Washington', '7850000069', 'washjeni@gmail.com', '4139  Mesa Drive', 'jenny'),
('tom', 'Tommy Doee', '900696969', 'tom@gmail.com', '4645  Dawson Drive', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_username` varchar(250) NOT NULL,
  `customer_name` varchar(220) NOT NULL,
  `customer_phone` varchar(125) NOT NULL,
  `customer_email` varchar(225) NOT NULL,
  `customer_address` varchar(250) NOT NULL,
  `customer_password` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('antonio', 'Antonio M', '0785556580', 'antony@gmail.com', '2677  Burton Avenue', 'password'),
('christine', 'Christine', '8544444444', 'chr@gmail.com', '3701  Fairway Drive', 'password'),
('ethan', 'Ethan Hawk', '69741111110', 'thisisethan@gmail.com', '4554  Rowes Lane', 'password'),
('james', 'James Washington', '0258786969', 'james@gmail.com', '2316  Mayo Street', 'password'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737  Fowler Avenue', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
`driver_id` int(220) NOT NULL,
  `driver_name` varchar(250) NOT NULL,
  `dl_number` varchar(150) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(250) NOT NULL,
  `driver_gender` varchar(110) NOT NULL,
  `client_username` varchar(250) NOT NULL,
  `driver_availability` varchar(110) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Bruno Den', '27840218658 ', '9547863157', '1782  Vineyard Drive', 'Male', 'harry', 'yes'),
(2, 'Will Williams', '03191563155 ', '9147523684', '4354  Hillcrest Drive', 'Male', 'harry', 'yes'),
(3, 'Steeve Rogers', '32346288078 ', '9147523682', '1506  Skinner Hollow Road', 'Male', 'harry', 'yes'),
(4, 'Ivy', '04316015965 ', '9187563240', '4680  Wayside Lane', 'Female', 'jenny', 'no'),
(5, 'Pamela C Benson', '68799466631 ', '7584960123', 'Urkey Pen Road', 'Female', 'jenny', 'yes'),
(6, 'Billy Williams', '36740186040 ', '8421025476', '2898  Oxford Court', 'Male', 'tom', 'yes'),
(7, 'Nicolas', '44919316260 ', '7541023695', 'Breezewood Court', 'Male', 'harry', 'yes'),
(8, 'Stephen Strange', '94592817723', '5215557850', 'Fairview Street12', 'Male', 'jenny', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(220) NOT NULL,
  `e_mail` varchar(230) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE IF NOT EXISTS `rentedcars` (
`id` int(100) NOT NULL,
  `customer_username` varchar(500) NOT NULL,
  `car_id` int(200) NOT NULL,
  `driver_id` int(200) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(205) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(110) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'ethan', 4, 2, '2018-07-18', '2018-07-01', '2018-07-02', '2018-07-18', 11, 'mi', 244, 1, 58, 'R'),
(574681246, 'james', 6, 6, '2018-07-18', '2018-06-01', '2018-06-28', '2018-07-18', 15, 'mi', 69, 27, 500, 'R'),
(574681247, 'antonio', 3, 1, '2018-07-18', '2018-07-19', '2018-07-22', '2018-07-20', 13, 'mi', 421, 3, 150, 'R'),
(574681248, 'ethan', 1, 2, '2018-07-20', '2018-07-28', '2018-07-29', '2018-07-20', 10, 'mi', 69, 1, 58, 'R'),
(574681249, 'james', 1, 2, '2018-07-23', '2018-07-24', '2018-07-25', '2018-07-23', 10, 'mi', 500, 1, 50, 'R'),
(574681250, 'lucas', 3, 2, '2018-07-23', '2018-07-23', '2018-07-24', '2018-07-23', 26, 'days', NULL, 1, 26, 'R'),
(574681251, 'james', 10, 1, '2018-07-23', '2018-07-25', '2018-07-30', '2018-07-23', 10, 'mi', 60, 2, 90, 'R'),
(574681252, 'christine', 11, 2, '2018-07-23', '2018-07-23', '2018-07-23', '2018-07-23', 13, 'mi', 200, 0, 26, 'R'),
(574681253, 'christine', 6, 7, '2018-07-23', '2018-07-23', '2018-08-03', '2018-07-23', 26, 'days', NULL, 11, 286, 'R'),
(574681254, 'ethan', 12, 5, '2018-07-23', '2018-07-23', '2018-07-26', '2018-07-23', 32, 'days', NULL, 3, 120, 'R'),
(574681255, 'christine', 8, 5, '2018-07-23', '2018-07-23', '2018-08-08', '2018-07-23', 24, 'days', NULL, 16, 384, 'R'),
(574681257, 'james', 7, 4, '2018-08-11', '2018-08-13', '2018-08-17', NULL, 14, 'mi', NULL, NULL, NULL, 'NR'),
(574681258, 'lucas', 3, 1, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 26, 'days', NULL, 1, 26, 'R'),
(574681259, 'lucas', 14, 8, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 61, 'days', NULL, 2, 122, 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
 ADD PRIMARY KEY (`car_id`), ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
 ADD PRIMARY KEY (`car_id`), ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
 ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
 ADD PRIMARY KEY (`driver_id`), ADD UNIQUE KEY `dl_number` (`dl_number`), ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_username` (`customer_username`), ADD KEY `car_id` (`car_id`), ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574681260;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
