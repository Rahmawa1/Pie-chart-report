-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jul 2019 pada 10.29
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lokaloops`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `barcode` varchar(55) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `barcode`, `name`, `description`, `foto`) VALUES
(1, '5c0ff80', 'Fanta', 'fanta 1,5 liter dengan banyak varian rasa', 'gb1.jpg'),
(2, '5c11103', 'Aqua 260ml', 'aqua dengan kesegaran alam', 'gb2.jpg'),
(3, '5c13d75', 'Biskuat', 'hhjhj', 'gb3.jpg'),
(4, '5c13e5b', 'Oreo', 'aaa', 'gb4.jpg'),
(5, '5c144b7', 'Pecel', 'asddsdsd', 'gb5.jpg'),
(6, '5c14bda', 'Temulawak', 'ssss', 'gb6.jpg'),
(7, '5c14f27', 'Kopiko', 'small', 'gb7.jpg'),
(8, '5c159de', 'Milo', 'jack', 'gb8.jpg'),
(9, '5c174be', 'Roma Kelapa', 'ASASAS', 'gb9.jpg'),
(10, '5c18a7e', 'Sanco', 'test', 'gb10.jpg'),
(11, '5c18c5d', 'Philips lamp', 'Really Testy', 'gb11.jpg'),
(12, '5c18c7d', 'Ale-ale', 'Test', 'gb12.jpg'),
(13, '5c18c7f', 'Relaxa', 'Test', 'gb13.jpg'),
(14, '5c19adb', 'Jeruk', 'Hdh', 'gb14.jpg'),
(15, '5c1ce8b', 'Baigon', 'sdvczdsvzdfv', 'gb15.jpg'),
(16, '5c255ec', 'Fix 44dt', 'pasta\r\n', 'gb16.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `id_role`, `id_owner`) VALUES
(1, 'hafidrf', 'coba123', 1, 1),
(2, 'rahma', 'coba123', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `owner`
--

INSERT INTO `owner` (`id`, `nama`) VALUES
(1, 'Hafid Cafe'),
(2, 'Tegar Shop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id_penjualan` int(11) NOT NULL,
  `outlet` varchar(50) NOT NULL,
  `pemasukan` varchar(50) NOT NULL,
  `pengeluaran` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id_penjualan`, `outlet`, `pemasukan`, `pengeluaran`, `total`, `tanggal`) VALUES
(1, 'Giyomi', 'Rp. 800.000', 'Rp. 100.000', '700.000', '2019-07-15 18:06:12'),
(2, 'AursCakery', 'Rp. 800.000', 'Rp. 400.000', '400.000', '2019-07-15 18:10:57'),
(3, 'Giyomi', 'Rp. 700.000', 'Rp. 200.000', '500.000', '2019-07-15 18:08:21'),
(4, 'Uniqlo', 'Rp. 900.000', 'Rp. 100.000', '800.000', '2019-07-15 18:06:12'),
(5, 'Stuja Caffe', 'Rp. 900.000', 'Rp. 400.000', '500.000', '2019-07-15 18:11:42'),
(6, 'Uniqlo', 'Rp. 600.000', 'Rp. 100.000', '500.000', '2019-07-15 18:06:12'),
(7, 'Hawce Caffe', 'Rp. 500.000', 'Rp. 100.000', '400.000', '2019-07-15 18:12:17'),
(8, 'AursCakery', 'Rp. 600.000', 'Rp. 100.000', '500.000', '2019-07-15 18:13:11'),
(9, 'Hawce Caffe', 'Rp. 500.000', 'Rp. 100.000', '400.000', '2019-07-15 18:06:12'),
(10, 'Uniqlo', 'Rp. 900.000', 'Rp. 100.000', '800.000', '2019-07-15 18:06:12'),
(11, 'AursCakery', 'Rp. 500.000', 'Rp. 400.000', '100.000', '2019-07-15 18:06:12'),
(12, 'Uniqlo', 'Rp. 800.000', 'Rp. 600.000', '200.000', '2019-07-15 18:13:41'),
(13, 'Hawce Caffe', 'Rp. 900.000', 'Rp. 100.000', '800.000', '2019-07-15 18:14:40'),
(14, 'Stuja Caffe', 'Rp. 800.000', 'Rp. 100.000', '700.000', '2019-07-15 18:06:13'),
(15, 'Hawce Caffe', 'Rp. 10.000.000', 'Rp. 500.000', '500.000', '2019-07-15 18:06:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'owner'),
(2, 'kasir'),
(3, 'kitchen'),
(4, 'investor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
