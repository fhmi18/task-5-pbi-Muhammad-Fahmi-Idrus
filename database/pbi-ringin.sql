-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2023 at 11:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbi-ringin`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Roy Marteen', 'roymar@gmail.com', '$2a$04$3FPIg6Fa/Tqm1g6ipBxqROVHOCKrHo0YKlJszMPp45CaWdKHbcDY2', '', '2023-10-24 08:31:12', '2023-10-24 08:31:12'),
(12, 'ojaaa', 'oja@gmail.com', '$2a$04$/aGyKTS7vb9yO86odapK1.RNQp43g7v.8eA7TzJ44AaG6UtAiQpLG', 'images/12-gambar-orang.png', '2023-10-28 06:34:26', '2023-10-28 07:10:37'),
(13, 'mada', 'mada@gmail.com', '$2a$04$z8gM49E5e2xzce1usMa8JeVLQlb7jRmkmTR9ajtUBzk2Bxg2wqBL.', '', '2023-10-28 06:35:50', '2023-10-28 06:35:50'),
(15, 'ronny', 'ronymar@gmail.com', '$2a$04$XksQTwvrYYi0aGnK3rkSueEIBUqM9AD4BRMDL.OUV60x7bWbaC4G2', '', '2023-10-28 06:44:19', '2023-10-28 06:44:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
