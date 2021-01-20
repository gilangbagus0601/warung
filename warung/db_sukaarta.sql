-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 02:37 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sukaarta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Gilang Bagus', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6289685773549', 'gregetcrew25@gmail.com', 'Jl.Waringin No 65 Tuban, Kuta, Badung, Bali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(7, 'Laptop'),
(8, 'Handphone'),
(9, 'Headphone'),
(10, 'Camera');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(7, 8, 'Realme 5 Pro', 2000000, '<p><strong>- Chipset&nbsp;:&nbsp;Qualcomm SDM712 Snapdragon 712 (10 nm)</strong></p>\r\n\r\n<p><strong>- RAM &amp; Memori&nbsp;:&nbsp;4/64 GB, 6/64 GB, 8/128 GB</strong></p>\r\n\r\n<p><strong>- Kamera&nbsp;:&nbsp;Quad 48 MP + 8 MP + 2 MP + 2 MP</strong></p>\r\n\r\n<p><strong>- Baterai&nbsp;:&nbsp;Li-Po 4035 mAh</strong></p>\r\n', 'produk1610250553.jpeg', 1, '2021-01-09 04:40:25'),
(8, 8, 'Realme 7', 3999000, '<p><strong>- Chipset&nbsp;:&nbsp;Mediatek Helio G95</strong></p>\r\n\r\n<p><strong>- RAM &amp; Memori&nbsp;:&nbsp;8 GB + 128 GB</strong></p>\r\n\r\n<p><strong>- Kamera&nbsp;:&nbsp;64 MP + 8 MP + 2 MP + 2 MP</strong></p>\r\n\r\n<p><strong>- Baterai&nbsp;:&nbsp;Li-Po 5000 mAh</strong></p>\r\n', 'produk1610250574.jpeg', 1, '2021-01-09 05:02:07'),
(9, 8, 'Realme 7 Pro', 5000000, '<p><strong>- Chipset&nbsp;:&nbsp;Snapdragon 720G</strong></p>\r\n\r\n<p><strong>- RAM &amp; Memori&nbsp;:&nbsp;8 GB + 128 GB</strong></p>\r\n\r\n<p><strong>- Kamera&nbsp;:&nbsp;64 MP + 8 MP + 2 MP + 2 MP</strong></p>\r\n\r\n<p><strong>- Baterai&nbsp;:&nbsp;Li-Po 4500 mAh</strong></p>\r\n', 'produk1610174759.jpg', 1, '2021-01-09 05:02:51'),
(10, 8, 'Realme C17', 2000000, '<p><strong>- Chipset&nbsp;:&nbsp;Snapdragon 460</strong></p>\r\n\r\n<p><strong>- RAM &amp; Memori&nbsp;:&nbsp;6 GB + 256 GB</strong></p>\r\n\r\n<p><strong>- Kamera&nbsp;:&nbsp;13 MP + 8 MP + 2 MP + 2 MP</strong></p>\r\n\r\n<p><strong>- Baterai&nbsp;:&nbsp;Li-Po 5000 mAh</strong></p>\r\n', 'produk1610250602.jpeg', 1, '2021-01-09 05:03:31'),
(11, 8, 'Realme 6', 3000000, '<p><strong>- Chipset&nbsp;:&nbsp;Helio G90T (12 nm)</strong></p>\r\n\r\n<p><strong>- RAM &amp; Memori&nbsp;:&nbsp;4/8 GB + 128 GB</strong></p>\r\n\r\n<p><strong>- Kamera&nbsp;:&nbsp;64 MP + 8 MP + 2 MP + 2 MP</strong></p>\r\n\r\n<p><strong>- Baterai&nbsp;:&nbsp;Li-Po 4300 mAh</strong></p>\r\n', 'produk1610168648.jpg', 1, '2021-01-09 05:04:08'),
(12, 7, 'ASUS X540MA-GO001T', 3700000, '<p><strong>- Layar :&nbsp;15.6 inci, resolusi 1366 x 768 piksel</strong></p>\r\n\r\n<p><strong>- Prosesor :&nbsp;Intel Dual Core N4000 (4M Cache, up to 2.60 GHz)</strong></p>\r\n\r\n<p><strong>- Grafis :&nbsp;Intel HD Graphics</strong></p>\r\n\r\n<p><strong>- RAM :&nbsp;4GB DDR4</strong></p>\r\n\r\n<p><strong>- Penyimpanan :&nbsp;500GB</strong></p>\r\n', 'produk1610239362.jpeg', 1, '2021-01-09 05:10:35'),
(13, 7, 'ASUS X555QA-DM201T', 5200000, '<p><strong>- Layar :&nbsp;15.6 inci, resolusi 1366 x 768 piksel</strong></p>\r\n\r\n<p><strong>- Prosesor :&nbsp;AMD Quad-core A12 9720P 2.7 GHz (Turbo Boost Core 3.6 GHz)</strong></p>\r\n\r\n<p><strong>- Grafis :&nbsp;AMD Radeon R7 Graphics</strong></p>\r\n\r\n<p><strong>- RAM :&nbsp;4GB DDR4</strong></p>\r\n\r\n<p><strong>- Penyimpanan :&nbsp;1TB HDD</strong></p>\r\n', 'produk1610250657.jpeg', 1, '2021-01-09 05:15:29'),
(14, 7, 'ASUS A507UF-BR311T', 6400000, '<p><strong>- Layar :&nbsp;15.6 inci, 1366 x 768 piksel</strong></p>\r\n\r\n<p><strong>- Prosesor :&nbsp;Intel Core i3-7020U (3M Cache, 2.30 GHz)</strong></p>\r\n\r\n<p><strong>- Grafis :&nbsp;Nvidia GeForce MX130</strong></p>\r\n\r\n<p><strong>- RAM :&nbsp;4GB DDR4</strong></p>\r\n\r\n<p><strong>- Penyimpanan :&nbsp;1TB HDD</strong></p>\r\n', 'produk1610240716.jpeg', 1, '2021-01-09 05:16:18'),
(15, 7, 'ASUS A412FA', 7200000, '<p><strong>- Layar :&nbsp;14 inci, resolusi 1920 x 1080 piksel</strong></p>\r\n\r\n<p><strong>- Prosesor :&nbsp;Intel Core i3-8145U (4M Cache, up to 3.90 GHz)</strong></p>\r\n\r\n<p><strong>- Grafis :&nbsp;Intel UHD Graphics 620</strong></p>\r\n\r\n<p><strong>- RAM :&nbsp;4GB DDR4</strong></p>\r\n\r\n<p><strong>- Penyimpanan :&nbsp;512GB SSD</strong></p>\r\n', 'produk1610239603.jpeg', 1, '2021-01-09 05:17:02'),
(16, 7, 'ASUS S13 S330FA', 8100000, '<p><strong>- Layar :&nbsp;13.3 inci, resolusi 1920 x 1080 piksel</strong></p>\r\n\r\n<p><strong>- Prosesor :&nbsp;Intel Core i3-8145U (4M Cache, up to 3.90 GHz)</strong></p>\r\n\r\n<p><strong>- Grafis :&nbsp;Intel UHD Graphics 620</strong></p>\r\n\r\n<p><strong>- RAM :&nbsp;4GB LPDDR3</strong></p>\r\n\r\n<p><strong>- Penyimpanan :&nbsp;256GB SSD</strong></p>\r\n', 'produk1610239516.jpeg', 1, '2021-01-09 05:17:43'),
(17, 9, 'SE-C3T', 1195000, '<p><strong>- Tipe driver&nbsp;: Dynamic<br />\r\n- Frekuensi8&nbsp;: Hz&ndash;22 kHz</strong></p>\r\n', 'produk1610251708.jpeg', 1, '2021-01-10 04:08:28'),
(18, 9, 'Zenith Earphone', 1450000, '<p><strong>- Tipe driver&nbsp;: Dynamic</strong></p>\r\n\r\n<p><strong>- Frekuensi&nbsp;: 8 Hz&ndash;22 kHz</strong></p>\r\n', 'produk1610251897.jpeg', 1, '2021-01-10 04:11:37'),
(19, 9, 'RM-580', 2182000, '<p><strong>- Tipe driver&nbsp;: Dynamic</strong></p>\r\n\r\n<p><strong>- Frekuensi8&nbsp;: 20-20.000 Hz</strong></p>\r\n', 'produk1610252113.jpeg', 1, '2021-01-10 04:15:13'),
(20, 9, 'In-Ear Headphone', 1323000, '<p><strong>- Tipe driver&nbsp;: Dynamic</strong></p>\r\n\r\n<p><strong>- Frekuensi8&nbsp;: 20 Hz-20 kHz</strong></p>\r\n', 'produk1610252183.jpeg', 1, '2021-01-10 04:16:23'),
(21, 10, 'FUJIFILM X-T100', 10999000, '<p><strong>- 24.2MP APS-C CMOS Sensor</strong></p>\r\n\r\n<p><strong>- 2.36m-Dot 0.62x OLED EVF</strong></p>\r\n\r\n<p><strong>- 3.0&Prime; 1.04m-Dot Tilting Touchscreen LCD</strong></p>\r\n\r\n<p><strong>- UHD 4K/15p &amp; Full HD 1080/60p Video</strong></p>\r\n\r\n<p><strong>- Bluetooth Low Energy &amp; Wi-Fi</strong></p>\r\n\r\n<p><strong>- Extended ISO 100-51200, 6 fps Shooting</strong></p>\r\n\r\n<p><strong>- Lensa XC 15-45mm f/3.5-5.6 OIS PZ</strong></p>\r\n', 'produk1610253042.jpeg', 1, '2021-01-10 04:30:42'),
(22, 10, 'OM-D EM10 Mark II', 10999000, '<p><strong>- 16.1MP Four Thirds Live MOS Sensor</strong></p>\r\n\r\n<p><strong>- Dual Quad-Core TruePic VIII Processor</strong></p>\r\n\r\n<p><strong>- UHD 4K30 Recording; Clips Video Mode</strong></p>\r\n\r\n<p><strong>- 2.36m-Dot 1.23x Electronic Viewfinder</strong></p>\r\n\r\n<p><strong>- 3.0&Prime; 1.04m-Dot Tilting Touchscreen LCD</strong></p>\r\n\r\n<p><strong>- In-Body 5-Axis Image Stabilization</strong></p>\r\n\r\n<p><strong>- 121-Point Contrast-Detect AF System</strong></p>\r\n\r\n<p><strong>- Up to 8.6 fps Shooting and ISO 25600</strong></p>\r\n\r\n<p><strong>- Digital ED 14-42mm f/3.5-5.6 EZ Lens</strong></p>\r\n', 'produk1610253211.jpeg', 1, '2021-01-10 04:33:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
