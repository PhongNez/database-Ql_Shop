-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 06:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status` int(11) DEFAULT 0 CHECK (`status` >= 0 and `status` <= 1),
  `password` text NOT NULL,
  `role` int(11) DEFAULT 0 CHECK (`role` >= 0 and `role` <= 1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `email`, `phone`, `name`, `created_time`, `address`, `avatar`, `status`, `password`, `role`) VALUES
(1, 'admin.foodorder@gmail.com', '0321', 'Kim Đại Phong', '2022-09-21 12:12:26', '52', '\'\'', 0, '$2a$10$LmelDCAnBh.gxTbsJrWWz.opMgj7l5RO5mmK1BIUn.lSBaliJasrS', 1),
(2, 'vinhvipvl@gmail.com', '0123456789', 'Trần Quang Vinh', '2022-09-21 12:12:26', 'Q9, TPHCM', 'resources/img/avatar/avatar.jpg', 0, '$2a$10$LmelDCAnBh.gxTbsJrWWz.opMgj7l5RO5mmK1BIUn.lSBaliJasrS', 0),
(3, 'phu@gmail.com', '0654231789', 'Hồng Phú', '2022-09-21 12:12:26', 'Q9, TPHCM', 'resources/img/avatar/avatar.jpg', 0, 'e10adc3949ba59abbe56e057f20f883e', 0),
(4, 'htp@gmail.com', '0321', 'Kim Đại Phong', '2022-09-29 16:10:30', '52', '\'\'', 0, '$2a$10$nlkL/qoZrB8Te6kG8DO9bOuOy2HQDdCHchhAumsbUH/j95rq3pFJy', 0),
(10, 'htp1@gmail.com', NULL, NULL, '2022-09-29 16:19:56', NULL, NULL, 0, '$2a$10$njwV4I2vipbBpo725EIud.WfYga9yNbRI3PDRXkRkDS/y7RP58ww2', 0),
(11, 'htp12@gmail.com', NULL, NULL, '2022-09-30 21:44:40', NULL, NULL, 0, '$2a$10$RE.CTLkAAr9h0R1RmRax7OoUOmoDZoEt4XS.Vr3ZLLYWWLzlfuAq.', 0),
(12, '', NULL, NULL, '2022-10-03 10:31:55', NULL, NULL, 0, '', 0),
(13, 'huynhthanhphong.str@gmail.com', NULL, NULL, '2022-10-03 20:15:00', NULL, NULL, 0, '$2a$10$Q/ft1AYUaasXrxJS8qmMI.8fREo7lA339LXQdEcwV5ANiArNiM35.', 0),
(14, 'huynhthanhphong1.str@gmail.com', NULL, NULL, '2022-11-04 11:10:16', NULL, NULL, 0, '$2a$10$9JfU6.7J5aBmS9MrCeENYOXu/sGUyTelatWRPiztjuUgQdtO9hVLS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_account` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1 CHECK (`quantity` >= 1),
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`, `logo`) VALUES
(1, 'Áo', NULL),
(2, 'Quần', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `order_time` datetime NOT NULL DEFAULT current_timestamp(),
  `id_account` int(11) NOT NULL,
  `status` int(11) DEFAULT 0 CHECK (`status` >= 0 and `status` <= 3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `order_time`, `id_account`, `status`) VALUES
(33, '2022-11-06 13:08:33', 14, 1),
(34, '2022-11-06 13:09:11', 14, 1),
(35, '2022-11-06 14:02:03', 14, 1),
(36, '2022-11-06 14:03:38', 14, 1),
(37, '2022-11-06 14:06:05', 14, 1),
(38, '2022-11-06 14:07:49', 14, 1),
(39, '2022-11-06 14:08:41', 14, 1),
(40, '2022-11-06 14:09:57', 14, 1),
(41, '2022-11-06 14:11:45', 14, 1),
(42, '2022-11-06 14:12:56', 14, 1),
(43, '2022-11-06 14:13:23', 14, 1),
(44, '2022-11-06 14:14:46', 14, 1),
(45, '2022-11-06 14:46:39', 14, 1),
(46, '2022-11-06 14:48:30', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT NULL CHECK (`amount` >= 1),
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id_order`, `id_product`, `name`, `amount`, `price`) VALUES
(44, 2, 'Áo đá banh', 1, 100000),
(45, 1, 'Áo sơ mi', 1, 150000),
(45, 2, 'Áo đá banh', 1, 100000),
(46, 1, 'Áo sơ mi', 2, 150000),
(46, 2, 'Áo đá banh', 9, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `images` text DEFAULT NULL,
  `type` int(11) DEFAULT 0 CHECK (`type` >= 0 and `type` <= 1),
  `status` int(11) DEFAULT 0 CHECK (`status` >= 0 and `status` <= 1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `name`, `detail`, `price`, `images`, `type`, `status`) VALUES
(1, 1, 'Áo sơ mi', 'Áo vải xịn', 150000, NULL, 0, 0),
(2, 1, 'Áo đá banh', 'Áo mát hút mồ hôi', 100000, NULL, 0, 0),
(4, 1, 'Áo Son Go Ku 1', 'Áo vip', 150000, '2', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rated`
--

CREATE TABLE `rated` (
  `id_product` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `star` int(11) DEFAULT NULL CHECK (`star` >= 1 and `star` <= 5),
  `comment` text DEFAULT NULL,
  `status` int(11) DEFAULT 0 CHECK (`status` >= 0 and `status` <= 1),
  `cmt_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rated`
--

INSERT INTO `rated` (`id_product`, `id_account`, `star`, `comment`, `status`, `cmt_time`) VALUES
(1, 2, 5, 'Đồ ăn ngon', 0, '2022-09-21 12:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `id_verification` int(10) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `code` text DEFAULT NULL,
  `date_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `fk_cart_product` (`id_product`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `fk_orders_account` (`id_account`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order`,`id_product`),
  ADD KEY `fk_orderdetail_product` (`id_product`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_product_category` (`id_category`);

--
-- Indexes for table `rated`
--
ALTER TABLE `rated`
  ADD PRIMARY KEY (`id_product`,`id_account`),
  ADD KEY `fk_rated_account` (`id_account`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id_verification`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `id_verification` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_account` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_account` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk_orderdetail_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orderdetail_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE;

--
-- Constraints for table `rated`
--
ALTER TABLE `rated`
  ADD CONSTRAINT `fk_rated_account` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rated_food` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
