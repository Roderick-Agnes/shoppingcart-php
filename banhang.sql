-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2022 lúc 01:36 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-30 10:34:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-30 10:34:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-30 10:34:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(512) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `image`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '', '2014-06-01 01:12:26', '2014-05-31 10:12:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '', '2014-06-01 01:12:26', '2014-05-31 10:12:26'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '', '2014-06-01 01:12:26', '2014-05-31 10:12:26'),
(6, 'Bench Shirt', 'The best shirt!', 29, 1, '', '2014-06-01 01:12:26', '2014-05-30 19:12:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, 2, '', '2014-06-01 01:13:45', '2014-05-30 19:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '', '2014-06-01 01:14:13', '2014-05-30 19:14:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, 1, '', '2014-06-01 01:18:36', '2014-05-30 19:18:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '', '2014-06-06 17:10:01', '2014-06-05 11:09:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, 2, '', '2014-06-06 17:11:04', '2014-06-05 11:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, '', '2014-06-06 17:12:21', '2014-06-05 11:12:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, '', '2014-06-06 17:12:59', '2014-06-05 11:12:49'),
(25, 'Abercrombie Allen Anew Shirt', 'Awesome new shirt!', 9999, 1, '', '2014-11-22 18:42:13', '2014-11-21 12:42:13'),
(26, 'Another productssssssssssssssss', 'Awesome product!', 555, 3, '', '2014-11-22 19:07:34', '2014-11-21 13:07:34'),
(27, 'Bag', 'Awesome bag for you!', 999, 1, '', '2014-12-04 21:11:36', '2014-12-03 15:11:36'),
(30, 'Wal-mart Shirt', '', 555, 2, '', '2014-12-13 00:52:29', '2014-12-11 18:52:29'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, 1, '', '2014-12-13 00:52:54', '2014-12-11 18:52:54'),
(38, 'laptop', 'mo ta laptop ', 15000000, 2, '', '2022-06-03 15:41:52', '2022-06-03 13:41:52'),
(39, 'greenstores.site', 'sdv', 5555, 2, '816ab48286ba9192c699df644cdcdea33754de02-h.PNG', '2022-06-04 06:34:41', '2022-06-04 04:34:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
