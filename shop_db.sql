-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2025 at 06:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(39, 6, 16, 'Jacket', '3200', '2', 'jacket.jpg'),
(40, 6, 29, 'Midnight Blue Printed Viscose-Cotton Panjabi', '1837', '1', 'Midnight Blue Printed Viscose.webp');

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(7, 6, 'Alif', 'alif@gmail.com', '01909967161', 'product is very useful ');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `placed_on` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(9, 6, 'Alif Hossain', '01902535169', 'Alif123@gmail.com', 'bkash', 'Jamtola, Mp Goli ', ', Blue Pant (1), T-shirt (1), Midnight Blue Printed Viscose-Cotton Panjabi (1)', '3182', '25-May-2025', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `product_details`, `image`) VALUES
(10, 'T-shirt', '645', 'Cotton comfortable T-shirt with all sizes and colors available', '0.jpeg'),
(11, 'Blue Pant', '700', 'Cotton comfortable pant with all sizes and colors available', 'nil.webp'),
(12, 'Denim Stylish Pant', '800', 'Denim comfortable pant with all sizes and colors available', 'nvi_blue.webp'),
(14, 'Formal Shirt', '1400', 'Cotton comfortable formal shirt with all sizes and colors available', 'Formal-Shirt.jpg'),
(15, 'Hoodie', '3200', 'Comfortable hoodie with all sizes and colors available', 'hoodie.jpeg'),
(16, 'Jacket', '3200', 'Comfortable jacket with all sizes and colors available', 'jacket.jpg'),
(20, 'Pakistani Designer Punjabi', '1800', 'Comfortable punjabi with all sizes and colors available', 'Panjabi.jpg'),
(21, 'Tangailla Sharee for Women', '900', 'Comfortable sharee with all sizes and colors available', 'Sharee.jpg'),
(22, 'Formal Shoe for Men', '1400', 'Comfortable shoe with all sizes and colors available', 'shoe.jpeg'),
(23, 'Formal Sweater', '1600', 'Cotton comfortable sweater with all sizes and colors available', 'sweater.jpg'),
(28, 'Semi Fitted Panjabi', '3991', 'Men’s semi-fitted panjabi in blended fabric. Mandarin collar with karchupi, inseam pockets and long sleeves.\r\n\r\n', 'Semi Fitted Panjabi.webp'),
(29, 'Midnight Blue Printed Viscose-Cotton Panjabi', '1837', 'Midnight blue texture viscose-cotton panjabi with beige and grey prints. Features in-seam side pockets.\r\n', 'Midnight Blue Printed Viscose.webp'),
(32, 'Saree', '3891', '\r\nColor	\r\nGolden\r\n\r\nSize	\r\nN/A\r\n\r\nFabric	\r\nCotton\r\n\r\nWash Care	\r\nWash separately in mild detergent\r\n\r\n', 'Saree2.webp'),
(33, 'Teal Green Crepe Straight Salwar Kameez', '7791', 'Women’s printed straight salwar kameez in joom fabric. Stand collar, three-quarter sleeves and karchupi at the front. Paired with joom palazzo pant and a half-silk dupatta.\r\n\r\n', 'Kameez.webp'),
(34, 'Test', '1000', 'Details ', 'Saree2.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'siam', 'siam@gmail.com', '123', 'admin'),
(6, 'Alif', 'alif@gmail.com', '1111', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(11, 6, 11, 'Blue Pant', '700', 'nil.webp'),
(12, 6, 29, 'Midnight Blue Printed Viscose-Cotton Panjabi', '1837', 'Midnight Blue Printed Viscose.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
