-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2018 at 01:34 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventers`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(4, 'Venue', ''),
(5, 'Photographer', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(28, 4, 'Shahin Hall', '<p>BAF Shaheen hall is booked for the purpose of Wedding, Post-wedding Reception, Halud, Marriage Engagement, Akika, Birthday, Marriage Anniversary etc at the rent of Tk.98,000/- (Ninety four thousand) only per program.</p>\r\n\r\n<p>Date: 05/09/18</p>\r\n', 'shahin-hall', 98, 'shahin-hall.jpg', '2018-09-05', 2),
(29, 4, 'SENAMALANCHA', '<p>SENAMALANCHA &ndash; a spectacular world class Convention Hall and Conference Centre, located at the heart of Dhaka city, is on the western side of Naval Headquarters on Airport Road, Dhaka Cantonment. This is an exclusive venue where your dream for a grand celebration comes into reality. Social or corporate gathering will find the most spacious place with a secured atmosphere. Aesthetically designed this Convention Hall is ready to host 5ooo (with dining capacity of 1300 guests at a time) guests. The Conference Centre is capable to accommodate 300 delegates. Satisfaction of the guests is guaranteed by the mouth-watering dishes prepared by a group of specialized catering service provider. Exceptional hospitality offered by a highly professional team of Management will create an unforgettable memory in your mind. SENAMALANCHA is an enterprise of Army Welfare Trust.</p>\r\n\r\n<p>Date: 06/09/18</p>\r\n', 'senamalancha', 200000, 'senamalancha.jpg', '2018-09-06', 3),
(30, 4, 'Dhanmondi Party Centre', '<p>At Dhanmondi Party Centre, we care about your needs and wants. Everyone wnats their guests to be happy - we do too! We want the invited guests to be happy with our service and highly satisfied by our food. So, we provide the best quality service and food.<br />\r\nWe try to provide you the best program within your budget.&nbsp;<br />\r\nPlease come and discuss with us your requirements, and let us plan your event together.</p>\r\n\r\n<p>Date: 07/09/18</p>\r\n', 'dhanmondi-party-centre', 60000, 'dhanmondi-party-centre.jpg', '0000-00-00', 0),
(31, 4, 'chowdhury community center ', '<p>Chowdhury Community Center is one of the most popular venue in Dhanmondi, Dhaka, Bangladesh. It&#39;s verified by venue.com.bd (Venue Bangladesh). If you are looking wedding hall, seminar hall, party hall in Dhanmondi, Dhaka, Bangladesh, then you can consider this hall. Chowdhury Community Center arranges all kinds of social events such as: Engagement, Turmeric Ceremony (Gaye Holud), Wedding, Birthday Party &amp; other Anniversary Party, Iftar Party, Occassional Party and more social events. By this time, we rent our hall to make Corporate Events like as Corporate Meetings, Seminar, Annual General Meeting (AGM), Exhibition (Fair &amp; Expo) and more events.</p>\r\n\r\n<p>Date: 08/10/18</p>\r\n', 'chowdhury-community-center', 100000, 'chowdhury-community-center.png', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$8/n11curZ1YtrWvP/AIR4.tAk4el4ezxDSPxqMAA5fihmCDMfsVk6', 1, 'Syed', 'Tariq', '', '', 'L-Lawliet-Widescreen.jpg', 1, '', '', '2018-05-01'),
(9, 'syedtarik010@gmail.com', '$2y$10$FfadQU5VYGyLAyJs2i1ife2VhXTVC9bWX02WAzr5cZXHSJTawRmqG', 0, 'syed', 'tarik', 'Dhaka, Bangladesh', '01521213047', 'l-death-note-14133-1920x1200.jpg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(27, 'rafiq@islam.com', '$2y$10$BemUjzcLumypXUkzK.RthOwMrEtpgY.biPyNGtpsC.COwUIuq3p4u', 0, 'Rafiqul', 'Islam', 'Dhanmonmdi', '01684574291', '', 1, '', '', '2018-09-05'),
(28, 'Zakaria@saikat.com', '$2y$10$Y8sJ7kys5MTTClI7/qJHY.obJXd7NeUktAhxZf5AdG5ZS8ysOs.vG', 0, 'Zakaria', 'Saikat', 'Mohammadpur', '0168025791', '', 1, '', '', '2018-09-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
