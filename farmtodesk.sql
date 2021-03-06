-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 07:11 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmtodesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `product_img_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `shipping` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`, `product_img_name`, `status`, `shipping`) VALUES
(22, 'ABL', 'Badshavog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill.', 47, 3, 141, '2018-05-20 18:34:43', 'tasdid@hossain.com', 'rice2badshavog.jpg', 0, ''),
(23, 'millstone', 'millstone', 'The Sports Band collection features highly polished stainless steel and space black stainless steel cases. The display is protected by sapphire crystal. And there is a choice of three different leather bands.', 1000, 3, 3000, '2018-05-20 19:02:50', 'tasdid@hossain.com', 'fish3ilish.jpg', 0, ''),
(24, 'ABL', 'Badshavog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill.', 47, 3, 141, '2018-05-28 04:49:31', 'tasdid@hossain.com', 'rice2badshavog.jpg', 0, ''),
(25, 'OSX', 'Tomato', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 26, 6, 156, '2018-05-28 04:58:44', 'tasdid@hossain.com', 'tomato.jpg', 0, ''),
(26, 'OOP', 'Boro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 49, 5, 245, '2018-05-28 07:50:06', 'tasdid@hossain.com', 'rice6boro.jpg', 0, ''),
(27, 'aaX', 'miniket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 47, 3, 141, '2018-05-29 05:06:55', 'tasdid@hossain.com', 'rice5miniket.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`, `Category`) VALUES
(1, 'fish1', 'Bengal Carp', 'With a clean vamp, tonal stitch details throughout, and a unique formstripe finish, the all new sports shoes fits the needs of multiple running consumers by offering an athletic and a lifestyle look.', 'fish1.jpg', 29, '5000.00', 'fish'),
(2, 'Ilish', 'Ilish', 'A sleek, tonal stitched cap for runners. The plain texture and unique design will help runners to concentrate more on running and less on their hair. The combbination of casual and formal look is just brilliant.', 'fish2katla.jpg', 12, '200.00', 'fish'),
(3, 'millstone', 'millstone', 'The Sports Band collection features highly polished stainless steel and space black stainless steel cases. The display is protected by sapphire crystal. And there is a choice of three different leather bands.', 'fish3ilish.jpg', 30, '1000.00', 'fish'),
(4, 'GBL', 'Katari Vog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'rice1.jpg', 4, '48.00', 'rice'),
(5, 'BBL', 'Najirshal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'rice1najirshal.jpg', 0, '52.00', 'rice'),
(6, 'ABL', 'Badshavog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill.', 'rice2badshavog.jpg', 8, '47.00', 'rice'),
(7, 'OBL', 'Balam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill.', 'rice4balam.jpg', 20, '57.00', 'rice'),
(8, 'QBL', 'Balam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'rice4balam.jpg', 21, '42.00', 'rice'),
(9, 'aaX', 'miniket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'rice5miniket.jpg', 7, '47.00', 'rice'),
(10, 'OOP', 'Boro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'rice6boro.jpg', 35, '49.00', 'rice'),
(11, 'AAG', 'Chinigura', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'rice7chinigura.jpeg', 12, '60.00', 'rice'),
(12, 'AAA', 'Brinjal ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'bagun.jpg', 50, '48.00', 'vegetable'),
(13, 'CAG', 'Carrot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'carrot.jpg', 14, '23.00', 'vegetable'),
(14, 'OSC', 'Bottle gourd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'lau.jpg', 20, '19.00', 'vegetable'),
(15, 'OOS', 'Beans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'motorshuti.jpg', 25, '23.00', 'vegetable'),
(16, 'APS', 'Raddish', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'raddish.jpg', 21, '30.00', 'vegetable'),
(17, 'OSX', 'Tomato', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'tomato.jpg', 66, '26.00', 'vegetable'),
(18, 'SRA', 'Beef', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'beef.jpg', 36, '500.00', 'meat'),
(19, 'STU', 'Lamb', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'lamb.jpg', 70, '650.00', 'meat'),
(20, 'ISO', 'Chicken', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'chicken.jpg', 80, '150.00', 'meat'),
(21, 'ISW', 'Steak', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'steak.jpg', 40, '800.00', 'meat'),
(22, 'SAE', 'Goat ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lorem, non suscipit risus ullamcorper ut. Morbi luctus eros leo, vitae feugiat urna fringill', 'goat.jpg', 50, '640.00', 'meat');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `p_id` int(11) NOT NULL,
  `promocode` varchar(5) NOT NULL,
  `promo_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`p_id`, `promocode`, `promo_value`) VALUES
(1, 'QWERT', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Blah', 'Bleh', 'Bangladesh', 'Dhaka', 95014, 'admin@farmtodesk.com', 'farmers', 'admin'),
(3, 'aasd', 'asd', 'asd', 'asd', 1233, 'aa@aa.com', '123', 'user'),
(4, 'Tasdid', 'Hossain', '234', 'Dhaka', 12544, 'tasdid@hossain.com', '123', 'user'),
(5, 'Admin', 'Main', '000', 'Dhaka', 7, 'mainadmin@farmtodesk.com', 'farmers', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
