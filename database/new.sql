-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2017 at 03:48 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khanstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'aagam'),
(2, 'aarika'),
(3, 'brittania'),
(4, 'nestle'),
(5, 'ace'),
(6, 'hawkins');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'fruits and vegetables'),
(2, 'foodgrains,oils,masala'),
(3, 'bakery cakes and dairy'),
(4, 'beverages'),
(5, 'snacks and branded foods'),
(6, 'eggs meat and fish'),
(7, 'other necessary products');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'nagpur orange', 5000, 'fresh orange ', 'samsung mobile.jpg', 'orange'),
(2, 1, 3, 'pomogranate', 25000, 'fresh pomogranate', 'iphone mobile.jpg', 'pomogranate'),
(3, 1, 3, 'banana', 30000, 'robuska', 'ipad.jpg', 'banana'),
(4, 1, 3, 'apple ', 32000, 'Apple washington ', 'iphone.jpg', 'Apple'),
(5, 1, 2, 'kiwi', 10000, 'kiwi green', 'ipad 2.jpg', 'kiwi'),
(6, 1, 1, 'pear', 35000, 'pear green', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'pear '),
(7, 1, 1, 'avocado', 50000, 'avocado', '12039452_525963140912391_6353341236808813360_n.png', 'avocado fresh'),
(8, 1, 4, 'dragon fruit', 40000, 'dragon fruit', 'sony mobile.jpg', 'dragon fruit'),
(9, 1, 3, 'guava', 12000, 'guava pink', 'white iphone.png', 'guava'),
(10, 2, 6, 'black quinova', 1000, 'black quinova', 'red dress.jpg', 'black quinova '),
(11, 2, 6, 'red quinova', 1200, 'red quinova', 'images.jpg', 'red quinova'),
(12, 2, 6, 'chia seeds', 1500, 'chia seeds', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'chia seeds'),
(13, 2, 6, 'tea cake nutella', 1200, 'teacake nutella ', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'tea cake'),
(14, 2, 6, 'tea cake red velvet', 1400, 'tea cake red velvet', 'download.jpg', 'tea cake red velvet'),
(15, 2, 6, 'toned milk', 1500, 'milk', 'shutterstock_203611819.jpg', 'toned milk'),
(16, 3, 6, 'greek yogurt', 600, 'greek yogurt', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'greek yogurt'),
(17, 3, 6, 'greek yogurt blueberry', 1000, 'greek yogurt', 'gents-formal-250x250.jpg', 'greek yogurt'),
(19, 3, 6, 'curd', 3000, 'curd', 'images (1).jpg', 'curd'),
(20, 3, 6, 'burger buns', 1600, 'blue berry', 'Winter-fashion-men-burst-sweater.png', 'burger buns '),
(21, 3, 6, 'juice santra', 800, 'juice orange', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'juice '),
(22, 4, 6, 'green tea ', 1300, 'green tea', '1.0x0.jpg', 'green tea'),
(23, 4, 6, 'mineral water', 1900, 'mineral water', 'GirlsClothing_Widgets.jpg', 'water'),
(24, 4, 6, 'frooti', 700, 'juice', 'images.jpg', 'mango'),
(25, 4, 6, 'atta -whole grain', 750, 'atta - whole grain', 'images (3).jpg', 'flour'),
(26, 4, 6, 'bourn vita value pack', 650, 'nbk', 'kids-wear-121.jpg', 'bournvita'),
(27, 4, 6, 'coke', 690, 'code', 'image28.jpg', 'coke'),
(32, 5, 0, 'corn flour', 2500, 'corn flour', 'furniture-book-shelf-250x250.jpg', 'corn flour'),
(33, 6, 2, 'noodles', 35000, 'maggie noodles', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'noodles'),
(34, 6, 4, 'nacho crisps', 1000, 'nacho crisps', 'emergency light.JPG', 'nachos'),
(35, 6, 0, 'chips', 6000, 'chips', 'vaccum.jpg', 'chips'),
(36, 6, 5, 'aloo bhujia', 1500, 'gj', 'iron.JPG', 'aloo bhujia'),
(37, 6, 5, 'dark fantasy', 20000, 'dark fantasy', 'led.jpg', 'cookies'),
(38, 6, 4, 'digestive biscuits', 3500, 'digestive biscuits', 'micro.jpg', 'biscuits'),
(39, 6, 5, 'eggs', 2500, 'eggs', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'eggs'),
(40, 2, 6, 'Fish fillet', 3000, 'fish fillet', 'girl-walking.jpg', 'fish fillet'),
(45, 1, 2, 'fish carp', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'fish carp'),
(46, 1, 2, 'chicken', 10000, 'meat', 'samsung_galaxy_note3_note3neo.JPG', 'chicken');
-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
