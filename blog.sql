-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2026 at 11:52 AM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(9, 'CRUD Blog Application', 'This project demonstrates CRUD operations and user authentication developed using PHP and MYSQL', '2026-06-17 13:45:07'),
(10, 'basic CRUD operations', 'READ, WRITE, UPDATE, DELETE', '2026-06-17 13:46:12'),
(11, 'Learning MySQL', 'MySQL is used to store and manage data.', '2026-06-17 13:55:07'),
(12, 'HTML Basics', 'HTML is used to create web page', '2026-06-17 13:56:05'),
(13, 'CSS Styling', 'CSS is used to style web pages and improve design.\r\n', '2026-06-17 13:56:55'),
(14, 'User Authentication', 'Authentication helps secure web applications.', '2026-06-17 14:05:31'),
(15, 'CRUD Applications', 'Create, Read, Update, Delete\r\n', '2026-06-17 15:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$Kfn3tQNL.viFX86UqJ7pvOKQB0SNN1U8JVF4V7QyEtWUDZpKOkJaK'),
(2, 'anam', '$2y$10$rbs2yn4fNl8ht1o/KVk2P.P0IfPWT.gHtyCxEnYZ8M3Tp07OSQAsG'),
(5, 'manu', '$2y$10$PCYyrJFwU.72giywGIJIZOQKB7xclmvx/MuYXuektGNIdIn5/bX5e'),
(6, 'annu', '$2y$10$Ayk32gQaBKN6SrPiwh2Xm.9YlkFZSb/zuMW8dimrhcVw32wTGvyU6'),
(7, 'amal', '$2y$10$xA0C3/7lS4.5IAR7iqlXwudW/NSXWWQEfab11g89bvnyIkdSc3j.y'),
(8, 'manya', '$2y$10$OTTIcIyuFwNRuCQC1LzKiOs9gCkWPUlTIDm1qH8L80RcXWMUIj16u'),
(9, 'ramya', '$2y$10$kkDK30oX9SpAAYdkFs8vNO/uUy3FQXEytoKXDPKgoZSb1GtcrPqsa'),
(13, 'mahi', '$2y$10$RYlNY4klMok.jv5X8xJ2pu45Xv2o4STPBYh5XdA0yV6Uq352GRd/6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
