-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2018 at 11:13 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) NOT NULL,
  `nama_kategori` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Kelas'),
(2, 'Mata Kuliah'),
(3, 'Program Studi'),
(4, 'Jurusan'),
(5, 'fakultas'),
(6, 'Universitas');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mata_kuliah` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mata_kuliah`, `nama_mk`, `sks`, `created_at`, `updated_at`) VALUES
('AA1', 'PBO', 4, '2018-12-05 15:07:47', '2018-12-05 15:07:47'),
('AA2', 'Jarkom', 4, '2018-12-12 22:44:28', '2018-12-12 22:44:28'),
('AA3', 'Kecerdasan Buatan', 3, '2018-12-12 22:44:28', '2018-12-12 22:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(10) NOT NULL,
  `judul_status` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_materi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matakuliah` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `judul_status`, `isi_materi`, `nim`, `matakuliah`, `kategori`, `created_at`, `updated_at`) VALUES
(24, 'asda', 'sdfasdf', '16650072', 'AA1', 5, '2018-12-14 15:59:25', '2018-12-14 15:59:25'),
(26, 'wefadf', 'dfdfsdf', '16650072', 'AA2', 4, '2018-12-14 16:00:21', '2018-12-14 16:00:21'),
(27, 'erdsfsf', 'sdfdfsf', '16650072', 'AA2', 1, '2018-12-14 16:01:02', '2018-12-14 16:01:02'),
(28, 'sdfsdfsdfsdf', 'sdff', '16650072', 'AA3', 5, '2018-12-14 16:01:26', '2018-12-14 16:01:26'),
(30, 'PBO Mantab', 'bismillah aku bertobat', '16650072', 'AA2', 1, '2018-12-14 09:05:10', '2018-12-14 09:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nim` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nim`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('16650072', 'amrul', '$2y$10$Z0lpDkakvRB02uAimUEhfunQeg7YFZlipsH1t4KINrPfuLLPpAgYe', NULL, '2018-12-12 15:30:54', '2018-12-12 15:30:54'),
('16650080', 'johan', '$2y$10$1vj7HsubgVR9sI9UEQo.GOz6XLoYbzBE9SiQQAbIXuxfJvc3BPxAu', NULL, '2018-12-12 15:48:22', '2018-12-12 15:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_mataKuliah`
--

CREATE TABLE `user_mataKuliah` (
  `id` int(10) NOT NULL,
  `id_user` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mataKuliah` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_mataKuliah`
--

INSERT INTO `user_mataKuliah` (`id`, `id_user`, `id_mataKuliah`, `created_at`, `updated_at`) VALUES
(1, '16650072', 'AA1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '16650072', 'AA1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '16650072', 'AA3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '16650080', 'AA1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '16650080', 'AA2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '16650080', 'AA3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mata_kuliah`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`),
  ADD KEY `kategori` (`kategori`),
  ADD KEY `nimk` (`nim`),
  ADD KEY `mtkul` (`matakuliah`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `user_mataKuliah`
--
ALTER TABLE `user_mataKuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`id_user`),
  ADD KEY `mta` (`id_mataKuliah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_mataKuliah`
--
ALTER TABLE `user_mataKuliah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `kategori` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `mtkul` FOREIGN KEY (`matakuliah`) REFERENCES `mata_kuliah` (`id_mata_kuliah`),
  ADD CONSTRAINT `nimk` FOREIGN KEY (`nim`) REFERENCES `users` (`nim`);

--
-- Constraints for table `user_mataKuliah`
--
ALTER TABLE `user_mataKuliah`
  ADD CONSTRAINT `mta` FOREIGN KEY (`id_mataKuliah`) REFERENCES `mata_kuliah` (`id_mata_kuliah`),
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `users` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
