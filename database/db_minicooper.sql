-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2021 at 12:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_minicooper`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_minicooper`
--

DROP TABLE IF EXISTS `tb_minicooper`;
CREATE TABLE IF NOT EXISTS `tb_minicooper` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(25) NOT NULL,
  `banner` varchar(25) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_minicooper`
--

INSERT INTO `tb_minicooper` (`ID`, `model`, `description`, `image`, `banner`, `type`) VALUES
(1, 'Mini 3 Door', 'Expressive and self assured, the new MINI 3 door is a true original – combining 60+ years of convention-defying ideas with modern touches and practical features. Iconic by design and urban by nature, it’s made to stand out as you uncover new corners of your city. And with a distinct go-kart feel and plenty of power to boot, you’re sure to find something exciting at every turn.', 'mini-3door-s.png', 'mini-3door-b.jpg', 'Interior'),
(2, 'Mini Convertible', 'Meet the MINI Convertible – the most open-minded member of the MINI family. Featuring our signature 3-in-1 soft top roof and a refined interior with comfortable seating for four, it’s always ready for your next open-air adventure. And with a lively Twin Power Turbo engine that can hit 100 km/h in a blistering 6.3 seconds (in the John Cooper Works variant), it’s sure to deliver a few hair-raising thrills along the way. Discover the MINI Convertible today, and see the road in a whole new light.', 'mini-conv-s.png', 'mini-conv-b.jpg', 'Accessories'),
(3, 'Mini Countryman', 'The new MINI Countryman ALL4 is as daring and adventure minded as you are. Whether you prefer playing in the city or escaping it at the first opportunity, you’ll have the freedom and flexibility to go wherever your wandering mind takes you. Time to discover the new MINI Countryman and start writing your next adventure.', 'mini-countryman-s.png', 'mini-countryman-b.jpg', 'Exterior');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
