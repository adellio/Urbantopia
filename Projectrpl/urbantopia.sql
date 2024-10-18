-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2024 at 07:56 AM
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
-- Database: `urbantopia`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Baju pria'),
(3, 'Sepatu'),
(4, 'Celana wanita'),
(5, 'Baju wanita'),
(6, 'Celana pria'),
(7, 'Jam tangan');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `kategori_id` int NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text,
  `stok` enum('Habis','Tersedia') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Tersedia',
  `harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `foto`, `detail`, `stok`, `harga`) VALUES
(3, 1, 'T-shirt Yellow Claw', 'EC4iyJnTK6O5War4XzQY.png', '                        Kaos oblong hitam yellow claw                                                                                                                        ', 'Tersedia', 100000),
(4, 1, 'T-shirt Darkest', 'iXccbT20oj1aBim0nSUm.jpg', '                        Kaos oblong hitam darkest                                        ', 'Tersedia', 100000),
(5, 5, 'T-shirt girl little space', 'Y4juDQftvdkqDnwRXZ0W.png', '                                                                        Kaos wanita klasik                                                                                ', 'Tersedia', 120000),
(6, 3, 'Sepatu Nike Style Pink', 'ArsTfW1WkTjG2UCHlrqX.jpg', '                                                Sepatu nike pink                                        ', 'Tersedia', 500000),
(7, 3, 'Sepatu Converse All Star', 'xlZIKcFm4MTNiK0vomkP.jpg', 'Sepatu Converse All Star hitam putih', 'Tersedia', 400000),
(8, 3, 'Sepatu Nike Air Jordan Red', '6wfXfPK8QMHTgRA8TOmK.jpg', 'Nike Air Jordan Red', 'Tersedia', 1000000),
(9, 1, 'Jersey Arsenal', 's5ZswbhqZTkpyEwwFczg.jpg', 'Jersey Arsenal Home-kit', 'Tersedia', 10000),
(10, 5, 'T-Shirt Black Two Skull ', 'ujdGGaRRv3YQX3tzRYwW.jpg', 'Kaos oblong wanita black two skull', 'Tersedia', 50000),
(11, 5, 'Crewneck Orange ', 'UX8Rw3kqP3vTlWOVm0QM.jpg', 'Kaos wanita crewneck orange', 'Tersedia', 150000),
(12, 1, 'Jersey Liverpool Home-kit 2024/2025', 'VNAqbLGjhb4SbyOReVFE.jpg', 'Jersey Liverpool Home-kit 2024/2025 ft Darwin Nunez ', 'Tersedia', 500000),
(13, 4, 'Pink Soft Pants', 'XC44uIgbUT8x3XxUeLm0.jpg', 'Celana panjang wanita', 'Tersedia', 100000),
(15, 4, 'Mocca Long Pants', 'FzHwKXhxgHdb4K0lvHxz.jpg', 'Celana panjang wanita warna mocca', 'Tersedia', 100000),
(16, 4, 'Long Girl Jeans Levis ', 'r1KEcjFnhTWf9DAwKFpN.jpg', 'Celana jeans panjang wanita', 'Tersedia', 100000),
(17, 6, 'Black Long Jeans', 'PBHkZqPDihvKcAZJlkR0.jpg', 'Celana jeans hitam pria', 'Tersedia', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$Pd5ngNwxeP0bNLUdhLu15eHiD/Pczf9jeoDcVNwHSlWQKDK7yE74a', 'admin'),
(2, 'adel', 'adel123', 'user'),
(3, 'adel', '$2y$10$iq0kom1IGXGCF8gGM/3FTuCJFL4yByteCvhKP/OyrFKmkEfB1NP.G', 'user'),
(4, 'adel', 'adel123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
