-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 04:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(2, 'Dzulfikri Alkautsari', 'L', '081222333444', 'Bandung', '2020-08-14 08:59:57', '2020-08-15 04:53:37'),
(3, 'Ica Cahyani', 'P', '082333445554', 'Jakarta', '2020-08-14 09:00:25', '2020-08-15 04:53:47'),
(4, 'Rizky Febriana', 'L', '082333444111', 'Majalengka', '2020-08-14 21:34:16', '2020-08-15 04:53:56'),
(5, 'Rindi Rismayanti', 'P', '084999888000', 'Kadipaten, Majalengka', '2020-08-14 21:34:36', '2020-08-15 04:54:05'),
(6, 'Dian Rahmat', 'L', '081222999000', 'Singkawang, Kalimantan', '2020-08-14 21:34:57', '2020-08-15 04:54:15'),
(7, 'Akbar Triagy', 'L', '080522399012', 'Bekasi', '2020-08-14 21:35:25', '2020-08-15 04:54:23'),
(8, 'Asep Permana', 'L', '089002544333', 'Mojokerto', '2020-08-14 21:35:53', '2020-08-15 04:54:35'),
(9, 'Yova Wijaya', 'P', '081223212345', 'Surabaya', '2020-08-14 21:36:24', '2020-08-15 04:54:45'),
(10, 'Ade Novi Ardiansyah', 'P', '086098909888', 'Medan', '2020-08-14 21:36:42', '2020-08-15 04:54:59'),
(11, 'Deni Rangga', 'L', '083990987666', 'Madiun', '2020-08-14 21:37:07', '2020-08-15 04:55:15'),
(12, 'Teguh Fadillah', 'L', '089888222122', 'Jombang, Jawa Timur', '2020-08-14 21:37:24', '2020-08-15 04:55:25'),
(13, 'Nisa Cahya', 'P', '087123654444', 'Magetan', '2020-08-14 21:37:48', '2020-08-15 04:55:37'),
(14, 'Intan Sholihat', 'P', '089000999875', 'Madura', '2020-08-14 21:38:05', '2020-08-15 04:55:48'),
(15, 'Ikbal Firdaus Mahendra', 'L', '081222321123', 'Aceh', '2020-08-14 21:38:49', '2020-08-15 04:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`) VALUES
(6, 'Makanan', '2020-08-14 14:11:16', '2020-08-15 03:26:20'),
(7, 'Minuman', '2020-08-14 21:41:00', '2020-08-15 03:26:25'),
(8, 'Alat Elektronik', '2020-08-14 21:41:05', '2020-08-15 05:44:31'),
(9, 'Pakaian Luar', '2020-08-14 21:41:10', '2020-08-15 03:26:43'),
(10, 'Pakaian Dalam', '2020-08-14 21:41:15', '2020-08-15 03:26:50'),
(11, 'Alat / Bahan Bangunan', '2020-08-14 21:41:19', '2020-08-15 12:31:49'),
(12, 'Alat Tulis', '2020-08-14 21:41:23', '2020-08-15 03:27:16'),
(15, 'Komputer', '2020-08-15 09:48:23', NULL),
(16, 'Handphone/Tablet/Gadget', '2020-08-15 09:48:26', '2020-08-15 04:49:14'),
(17, 'Alat Mandi', '2020-08-15 09:48:36', NULL),
(18, 'Aksesoris Handphone', '2020-08-15 09:49:42', NULL),
(19, 'Aksesoris Komputer', '2020-08-15 09:49:48', NULL),
(20, 'Sembako', '2020-08-15 09:50:55', NULL),
(21, 'Mainan', '2020-08-15 09:58:34', NULL),
(22, 'Alat Makan', '2020-08-15 17:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_item`
--

CREATE TABLE `p_item` (
  `item_id` int(11) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_item`
--

INSERT INTO `p_item` (`item_id`, `barcode`, `name`, `category_id`, `unit_id`, `price`, `stock`, `image`, `created`, `updated`) VALUES
(5, 'A0001', 'Laptop', 8, 3, 10000000, NULL, NULL, '2020-08-15 09:20:16', '2020-08-15 09:42:40'),
(9, 'A0002', 'Teh Botol Sosro', 7, 3, 5000, NULL, NULL, '2020-08-15 09:43:32', NULL),
(10, 'A0003', 'Mouse', 8, 3, 200000, NULL, NULL, '2020-08-15 09:48:01', NULL),
(11, 'A0004', 'Shampo', 17, 3, 20000, NULL, NULL, '2020-08-15 09:50:44', NULL),
(12, 'A0005', 'Beras', 20, 4, 25000, NULL, NULL, '2020-08-15 09:51:20', NULL),
(13, 'A0006', 'Kain Katun', 9, 5, 150000, NULL, NULL, '2020-08-15 10:13:42', NULL),
(15, 'A0007', 'Laptop', 15, 3, 15000000, NULL, NULL, '2020-08-15 17:27:10', NULL),
(17, 'A0009', 'Keyboard', 19, 3, 250000, NULL, NULL, '2020-08-15 17:29:29', NULL),
(18, 'A0010', 'Mousepad', 19, 3, 45000, NULL, 'item-200816-32a98a63b0.png', '2020-08-15 17:32:21', '2020-08-16 12:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `created`, `updated`) VALUES
(3, 'Buah', '2020-08-14 16:53:00', '2020-08-14 12:10:40'),
(4, 'Kilogram', '2020-08-14 16:53:59', '2020-08-14 12:10:46'),
(5, 'Meter', '2020-08-14 21:41:35', NULL),
(6, 'Ons', '2020-08-14 21:41:50', NULL),
(7, 'Centimeter', '2020-08-14 21:42:12', NULL),
(8, 'Liter', '2020-08-15 09:53:18', NULL),
(9, 'Pack', '2020-08-15 17:33:11', NULL),
(10, 'Pcs', '2020-08-15 17:33:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `description` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(1, 'Toko A', '089111222333', 'Bandung', 'Toko Makanan Ringan', '2020-08-13 18:20:44', '2020-08-13 16:55:28'),
(2, 'Toko B', '081222333444', 'Jakarta', 'Toko Kelontongan', '2020-08-13 18:20:44', '2020-08-13 16:49:03'),
(9, 'Toko C', '089888990123', 'Jombang, Jawa Timur', 'Toko Bangunan', '2020-08-14 21:39:29', NULL),
(10, 'Toko D', '081222333412', 'Bekasi Timur', 'Toko Alat Tulis', '2020-08-14 21:39:48', NULL),
(11, 'Toko E', '089321333215', 'Jakarta', 'Toko Mainan', '2020-08-14 21:40:07', NULL),
(12, 'Toko F', '085998123451', 'Ngawi', 'Toko Alat Kecantikan', '2020-08-14 21:40:42', NULL),
(13, 'Toko G', '085666732112', 'Madura', 'Toko Elektronik', '2020-08-15 09:56:55', NULL),
(14, 'Toko H', '089888777843', 'Cikijing, Majalengka', 'Toko Sembako dan Kelontongan', '2020-08-15 09:57:17', NULL),
(15, 'Toko I', '088777123590', 'Mangga Dua, Jakarta', 'Toko Aksesoris Handphone', '2020-08-15 09:58:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:Admin, 2:Kasir'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Dzulfikri', 'Cikijing', 1),
(2, 'kasir1', '874c0ac75f323057fe3b7fb3f5a8a41df2b94b1d', 'Rizky Pebriana', 'Maja', 2),
(6, 'caca1129', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 'Ica Cahyanii', 'Bandung', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_item`
--
ALTER TABLE `p_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `p_item`
--
ALTER TABLE `p_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_item`
--
ALTER TABLE `p_item`
  ADD CONSTRAINT `p_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`),
  ADD CONSTRAINT `p_item_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `p_unit` (`unit_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
