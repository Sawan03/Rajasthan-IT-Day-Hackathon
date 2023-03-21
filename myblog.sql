-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 02:39 AM
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
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'sawan', 'sawan@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Web Develpoment'),
(2, 'Graphic Design'),
(3, 'Video Editing'),
(4, 'Fronend'),
(5, 'Backend');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(1, 'this is awesome article', 'Monu Sharma', 21, '2021-02-20 19:08:11'),
(2, 'i like thispost', 'Sunidhi Chauhan', 21, '2021-02-20 19:08:11'),
(3, 'this is a test comment', 'Sonali Rana', 21, '2021-02-20 19:32:13'),
(4, 'this is my first comment on this post', 'Monu Giri', 4, '2021-02-20 19:33:31'),
(5, 'this is my another comment', 'Mohan Rana', 4, '2021-02-20 19:35:53'),
(6, 'this was awesome i learned a lot', 'Monu Giri', 20, '2021-02-20 19:36:37'),
(7, 'i love it ', 'Shruti Sharma', 20, '2021-02-20 19:36:52'),
(8, 'it was awesome man', 'Pankaj Udas', 20, '2021-02-20 19:37:48'),
(9, 'i like this post', 'Piyush Raj', 20, '2021-02-20 19:38:05'),
(10, 'this is super cool', 'Shivam Sharma', 20, '2021-02-20 19:38:21'),
(11, 'yeah i like this ', 'Adity Bisht', 20, '2021-02-20 19:38:38'),
(12, 'sdsd', 'sdsd', 21, '2021-02-23 16:31:47'),
(13, 'very good', 'sawan', 37, '2022-09-18 01:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 11, '1.jpg'),
(2, 11, '2.jpg'),
(3, 0, '3.jpg'),
(4, 20, '4.jpg'),
(5, 20, '5.jpg'),
(6, 20, '1.jpg'),
(7, 33, 'moon-2048727_1920.jpg'),
(8, 33, 'children-5833685_1920.jpg'),
(9, 34, 'moon-2048727_1920.jpg'),
(10, 34, 'children-5833685_1920.jpg'),
(11, 35, 'moon-2048727_1920.jpg'),
(12, 35, 'children-5833685_1920.jpg'),
(13, 36, '7-76366_avengers-infinity-war-hd.jpg'),
(14, 36, 'moon-2048727_1920.jpg'),
(15, 37, '20201218_173814.jpg'),
(16, 37, '20201218_174044.jpg'),
(17, 38, 'Screenshot_20220820-125909.png'),
(18, 39, 'g bhai.png'),
(19, 39, 'guddu.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `action`) VALUES
(1, 'Home', 'index.php'),
(3, 'Categories', '#'),
(6, 'Admin Login', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `like_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`, `like_id`) VALUES
(39, 'Final Test', '<p>Inserting Image using admin panel...</p>\r\n\r\n<p>fvhbasfhvaskfvaksf</p>\r\n', '2023-03-21 01:37:29', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `parent_menu_id`, `name`, `action`) VALUES
(1, 3, 'Web Development', '#'),
(2, 3, 'Graphic Design', '#'),
(3, 3, 'User InterFace', '#'),
(7, 3, 'Video Editing', '#'),
(8, 3, 'Backend', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
