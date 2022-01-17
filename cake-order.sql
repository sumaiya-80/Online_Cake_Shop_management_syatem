-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 09:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(17, 'suba', 'si', '67890'),
(24, 'sumu', 'admin', 'e044fb795495fd22d8146e50b961e852'),
(26, 'sam', 'sami', '202cb962ac59075b964b07152d234b70'),
(27, 'Sumaiya Mahnoor', 'sumaiya', '827ccb0eea8a706c4c34a16891f84e7b'),
(31, 'noor', 'Mahnoor', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cake`
--

CREATE TABLE `tbl_cake` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cake`
--

INSERT INTO `tbl_cake` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(26, 'chocolate hot cake', '', '800.00', 'Cake-Name-1767.webp', 23, 'Yes', 'Yes'),
(27, 'chocolate cake', '', '800.00', 'Cake-Name-741.jpg', 23, 'Yes', 'Yes'),
(28, 'chocolate cream cake', '', '600.00', 'Cake-Name-3258.jpg', 23, 'Yes', 'No'),
(29, 'strawbery cake', '', '600.00', 'Cake-Name-7484.jpg', 24, 'Yes', 'Yes'),
(30, 'strawberry pink cake', '', '700.00', 'Cake-Name-3263.jpg', 24, 'Yes', 'No'),
(31, 'chocolate cup cake', '', '60.00', 'Cake-Name-562.jpg', 25, 'Yes', 'Yes'),
(32, 'chocolate cup cake', '', '80.00', 'Cake-Name-7143.jpeg', 25, 'Yes', 'No'),
(33, 'vanila cake', '', '80.00', 'Cake-Name-8034.jpeg', 25, 'Yes', 'Yes'),
(34, 'vanila cake', '', '600.00', 'Cake-Name-965.jpg', 27, 'Yes', 'Yes'),
(35, 'blue cake', '', '700.00', 'Cake-Name-514.jpg', 28, 'Yes', 'Yes'),
(36, 'customized cake', '', '800.00', 'Cake-Name-1979.jpg', 29, 'Yes', 'Yes'),
(37, 'customized cake', '', '1000.00', 'Cake-Name-1586.jpg', 29, 'Yes', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(23, 'Chocolate  cake', 'Cake-Category_170.jpg', 'Yes', 'Yes'),
(24, 'Strawberry  cake', 'Cake-Category_479.jpg', 'Yes', 'Yes'),
(25, ' All cup cakes', 'Cake-Category_75.jpg', 'Yes', 'Yes'),
(27, 'Vanila cake', 'Cake-Category_8.jpeg', 'Yes', 'Yes'),
(28, 'Blue  cake', 'Cake-Category_22.jpg', 'Yes', 'Yes'),
(29, 'customized cake', 'Cake-Category_566.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `cake` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cake`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Vanila Ice-cream Cake', '600.00', 2, '1200.00', '2021-11-06 07:39:22', 'Ordered', 'sumaiya ', '01928732924', 'hi@sumaiya.com', 'bohodarhut,ctg'),
(2, 'fancy cake', '600.00', 1, '600.00', '2021-11-06 09:16:10', 'Ordered', 'sumaiya ', '01928732924', 'hi@sumaiya.com', 'yuuhh,bd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cake`
--
ALTER TABLE `tbl_cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_cake`
--
ALTER TABLE `tbl_cake`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
