-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 06:05 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `posts` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `sid` int(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `active` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `posts`, `category`, `sid`, `username`, `active`) VALUES
(1, 'PHP is a general-purpose scripting language especially suited to web development. It was originally ', 'PHP', NULL, 'neelam', 1),
(2, 'Java is a class-based, object-oriented programming language that is designed to have as few implemen', 'Java', NULL, 'neelam', 0),
(3, 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript speci', 'JavaScript', NULL, 'neelam', 0),
(4, 'SQL is a domain-specific language used in programming and designed for managing data held in a relat', 'SQL', NULL, 'ankita', 0),
(5, 'PHP is a popular general-purpose scripting language that is especially suited to web development.', 'PHP', NULL, 'ankita', 0),
(6, 'Angular is a TypeScript-based open-source web application framework led by the Angular Team at Googl', 'Angular', NULL, 'priyanka', 0),
(7, 'React is an open-source, front end, JavaScript library for building user interfaces or UI components', 'React', NULL, 'priyanka', 0),
(8, 'React an open-source, front end, JavaScript library for building user interfaces or UI components', 'React', NULL, 'priyanka', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sid`, `username`, `email`, `password`, `create_datetime`) VALUES
(22, 'neelam', 'neelu@gmail.com', 'Neelam@123', '2021-01-19 17:36:06'),
(23, 'ankita', 'anki@gmail.com', 'Ankita@123', '2021-01-19 17:37:08'),
(24, 'Ashika', 'ashi@gmail.com', 'Ashika@123', '2021-01-19 17:38:16'),
(25, 'anurag', 'anurag21021992@gmail.com', 'Anurag@123', '2021-01-19 17:39:54'),
(26, 'priyanka', 'baraipriyanka@gmail,com', 'Priy@123', '2021-01-19 17:40:31'),
(27, 'Deepak', 'deepu@gmail.com', 'Deepu@123', '2021-01-19 17:41:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `users` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
