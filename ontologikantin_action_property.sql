-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 04:02 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ontologikantin`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_karyawan` int(10) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `n_anak` int(10) unsigned NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `gender`, `divisi`, `n_anak`, `no_hp`) VALUES
(1, 'Hominah', 'P', 'Kasir', 10, '08121080121'),
(2, 'Jono Saputro', 'L', 'Pramusaji', 0, '08164652525'),
(3, 'Habib', 'L', 'Pramusaji', 2, '08454195996'),
(4, 'Clara', 'P', 'Manager', 0, '081112122112');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(11) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `gender`, `pekerjaan`) VALUES
(1, 'Varian', 'L', 'Mahasiswa'),
(2, 'Robert', 'L', 'Mahasiswa'),
(3, 'Dhika', 'L', 'Mahasiswa'),
(4, 'Bill Gates', 'L', 'CEO'),
(5, 'Yerin', 'P', 'Singer'),
(6, 'Syahrini', 'P', 'Penyanyi'),
(7, 'Lala Sulala', 'P', 'Dosen'),
(8, 'Kaka Mubakaka', 'L', 'Dosen');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` int(11) unsigned NOT NULL,
  `id_pemesanan` int(11) unsigned NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pemesanan`, `waktu`) VALUES
(1, 1, '2017-11-01 13:05:00'),
(2, 2, '2017-11-01 14:08:00'),
(3, 3, '2017-11-01 14:10:00'),
(4, 4, '2017-11-01 15:15:00'),
(5, 5, '2017-11-02 10:05:00'),
(6, 6, '2017-11-02 11:35:00'),
(7, 7, '2017-11-02 12:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `pembersihan`
--

CREATE TABLE IF NOT EXISTS `pembersihan` (
  `id_pembersihan` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `id_property` int(10) unsigned NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembersihan`
--

INSERT INTO `pembersihan` (`id_pembersihan`, `id_karyawan`, `id_property`, `waktu`) VALUES
(1, 2, 44, '2017-11-02 06:00:00'),
(2, 4, 45, '2017-11-02 06:00:00'),
(3, 1, 46, '2017-11-02 06:00:00'),
(4, 4, 47, '2017-11-02 06:30:00'),
(5, 4, 48, '2017-11-02 07:35:00'),
(6, 4, 49, '2017-11-02 07:40:00'),
(7, 2, 56, '2017-11-02 08:10:00'),
(8, 3, 86, '2017-11-02 08:23:00'),
(9, 3, 73, '2017-11-02 08:25:00'),
(10, 2, 67, '2017-11-02 10:40:00'),
(11, 3, 65, '2017-11-02 10:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id_pemesanan` int(11) unsigned NOT NULL,
  `id_pelanggan` int(11) unsigned NOT NULL,
  `waktu` datetime NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_pelanggan`, `waktu`, `status`) VALUES
(1, 1, '2017-11-01 13:00:00', 'Selesai'),
(2, 2, '2017-11-01 14:00:00', 'Selesai'),
(3, 3, '2017-11-01 14:30:00', 'Selesai'),
(4, 4, '2017-11-01 14:30:00', 'Selesai'),
(5, 5, '2017-11-02 10:00:00', 'Selesai'),
(6, 6, '2017-11-02 11:30:00', 'Selesai'),
(7, 7, '2017-11-02 12:00:00', 'Diproses'),
(8, 8, '2017-11-02 12:05:00', 'Diproses');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_product`
--

CREATE TABLE IF NOT EXISTS `pemesanan_product` (
  `id_pemesanan_product` int(10) unsigned NOT NULL,
  `id_pemesanan` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_product`
--

INSERT INTO `pemesanan_product` (`id_pemesanan_product`, `id_pemesanan`, `id_product`) VALUES
(8, 1, 2),
(9, 1, 5),
(10, 2, 7),
(11, 3, 6),
(12, 4, 4),
(13, 4, 1),
(14, 5, 7),
(15, 6, 6),
(16, 6, 4),
(17, 7, 5),
(18, 8, 8),
(19, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `penyajian`
--

CREATE TABLE IF NOT EXISTS `penyajian` (
  `id_penyajian` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `id_pemesanan_product` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyajian`
--

INSERT INTO `penyajian` (`id_penyajian`, `id_karyawan`, `id_pemesanan_product`) VALUES
(1, 4, 8),
(2, 4, 9),
(3, 4, 10),
(4, 4, 11),
(5, 3, 12),
(6, 3, 13),
(7, 4, 14),
(8, 2, 15),
(9, 2, 16),
(10, 2, 17),
(11, 1, 18),
(12, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `penyiapan`
--

CREATE TABLE IF NOT EXISTS `penyiapan` (
  `id_penyiapan` int(10) unsigned NOT NULL,
  `id_karyawan` int(10) unsigned NOT NULL,
  `id_pemesanan_product` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyiapan`
--

INSERT INTO `penyiapan` (`id_penyiapan`, `id_karyawan`, `id_pemesanan_product`) VALUES
(5, 1, 8),
(6, 1, 9),
(7, 2, 10),
(8, 2, 11),
(9, 3, 12),
(10, 2, 13),
(11, 3, 14),
(12, 3, 15),
(13, 1, 16),
(14, 2, 17),
(15, 2, 18),
(16, 4, 19);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `harga` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `nama`, `jenis`, `harga`) VALUES
(1, 'IcedCoffee', 'ColdDrink', 7000),
(2, 'IcedTea', 'ColdDrink', 5000),
(3, 'Yuanyang Tea', 'WarmDrink', 15000),
(4, 'HotCoffee', 'WarmDrink', 6000),
(5, 'HotTea', 'WarmDrink', 4000),
(6, 'Capcay', 'Food', 15000),
(7, 'NasiEmpal', 'Food', 20000),
(8, 'NasiKatsu', 'Food', 18000),
(9, 'SopIga', 'Food', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `product_ingredient`
--

CREATE TABLE IF NOT EXISTS `product_ingredient` (
  `id_product` int(11) unsigned NOT NULL,
  `id_ingredient` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_ingredient`
--

INSERT INTO `product_ingredient` (`id_product`, `id_ingredient`) VALUES
(7, 1),
(9, 1),
(8, 2),
(1, 3),
(3, 3),
(4, 3),
(1, 4),
(2, 4),
(6, 5),
(9, 5),
(7, 6),
(8, 6),
(2, 7),
(3, 7),
(5, 7),
(9, 7),
(6, 8),
(7, 8),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id_property` int(11) unsigned NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id_property`, `nama`, `jenis`, `status`) VALUES
(44, 'Dapur', 'Ruang', 'Bersih'),
(45, 'Ruang Makan', 'Ruang', 'Bersih'),
(46, 'Toilet', 'Ruang', 'Bersih'),
(47, 'Meja 1', 'Fasilitas', 'Kotor'),
(48, 'Meja 2', 'Fasilitas', 'Digunakan'),
(49, 'Meja 3', 'Fasilitas', 'Digunakan'),
(50, 'Kursi 1', 'Fasilitas', 'Rusak'),
(51, 'Kursi 2', 'Fasilitas', 'Bersih'),
(52, 'Kursi 3', 'Fasilitas', 'Digunakan'),
(53, 'Kursi 4', 'Fasilitas', 'Bersih'),
(54, 'Kursi 5', 'Fasilitas', 'Digunakan'),
(55, 'Kursi 6', 'Fasilitas', 'Digunakan'),
(56, 'Sendok 1', 'Alat Makan', 'Digunakan'),
(57, 'Sendok 2', 'Alat Makan', 'Bersih'),
(58, 'Sendok 3', 'Alat Makan', 'Digunakan'),
(59, 'Sendok 4', 'Alat Makan', 'Digunakan'),
(60, 'Sendok 5', 'Alat Makan', 'Bersih'),
(61, 'Sendok 6', 'Alat Makan', 'Kotor'),
(62, 'Sendok 8', 'Alat Makan', 'Digunakan'),
(63, 'Sendok 9', 'Alat Makan', 'Kotor'),
(64, 'Garpu 1', 'Alat Makan', 'Bersih'),
(65, 'Garpu 2', 'Alat Makan', 'Digunakan'),
(66, 'Garpu 3', 'Alat Makan', 'Digunakan'),
(67, 'Garpu 4', 'Alat Makan', 'Bersih'),
(68, 'Garpu 5', 'Alat Makan', 'Kotor'),
(69, 'Garpu 6', 'Alat Makan', 'Bersih'),
(70, 'Piring 1', 'Alat Makan', 'Bersih'),
(71, 'Piring 2', 'Alat Makan', 'Digunakan'),
(72, 'Piring 3', 'Alat Makan', 'Bersih'),
(73, 'Piring 4', 'Alat Makan', 'Digunakan'),
(74, 'Piring 5', 'Alat Makan', 'Bersih'),
(75, 'Piring 6', 'Alat Makan', 'Kotor'),
(76, 'Mangkok 1', 'Alat Makan', 'Bersih'),
(77, 'Mangkok 2', 'Alat Makan', 'Digunakan'),
(78, 'Mangkok 3', 'Alat Makan', 'Kotor'),
(79, 'Mangkok 4', 'Alat Makan', 'Kotor'),
(80, 'Mangkok 5', 'Alat Makan', 'Bersih'),
(81, 'Mangkok 6', 'Alat Makan', 'Bersih'),
(82, 'Gelas 1', 'Alat Makan', 'Kotor'),
(83, 'Gelas 2', 'Alat Makan', 'Bersih'),
(84, 'Gelas 3', 'Alat Makan', 'Digunakan'),
(85, 'Gelas 4', 'Alat Makan', 'Digunakan'),
(86, 'Gelas 5', 'Alat Makan', 'Bersih'),
(87, 'Gelas 6', 'Alat Makan', 'Bersih');

-- --------------------------------------------------------

--
-- Table structure for table `raw_ingredient`
--

CREATE TABLE IF NOT EXISTS `raw_ingredient` (
  `id_ingredient` int(11) unsigned NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `raw_ingredient`
--

INSERT INTO `raw_ingredient` (`id_ingredient`, `nama`) VALUES
(1, 'Beef'),
(2, 'Chicken'),
(3, 'CoffeeBean'),
(4, 'IceCube'),
(5, 'MSG'),
(6, 'Rice'),
(7, 'TeaLeaves'),
(8, 'Vegetable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pemesanan` (`id_pemesanan`);

--
-- Indexes for table `pembersihan`
--
ALTER TABLE `pembersihan`
  ADD PRIMARY KEY (`id_pembersihan`),
  ADD KEY `id_property` (`id_property`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `pelanggan` (`id_pelanggan`),
  ADD KEY `pelanggan_2` (`id_pelanggan`);

--
-- Indexes for table `pemesanan_product`
--
ALTER TABLE `pemesanan_product`
  ADD PRIMARY KEY (`id_pemesanan_product`),
  ADD KEY `id_pemesanan` (`id_pemesanan`),
  ADD KEY `id_pembayaran` (`id_product`);

--
-- Indexes for table `penyajian`
--
ALTER TABLE `penyajian`
  ADD PRIMARY KEY (`id_penyajian`),
  ADD KEY `id_pemesanan_product` (`id_pemesanan_product`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `penyiapan`
--
ALTER TABLE `penyiapan`
  ADD PRIMARY KEY (`id_penyiapan`),
  ADD KEY `id_pemesanan_product` (`id_pemesanan_product`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `product_ingredient`
--
ALTER TABLE `product_ingredient`
  ADD PRIMARY KEY (`id_product`,`id_ingredient`),
  ADD KEY `ingredient_foreign` (`id_ingredient`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id_property`);

--
-- Indexes for table `raw_ingredient`
--
ALTER TABLE `raw_ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pembersihan`
--
ALTER TABLE `pembersihan`
  MODIFY `id_pembersihan` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pemesanan_product`
--
ALTER TABLE `pemesanan_product`
  MODIFY `id_pemesanan_product` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `penyajian`
--
ALTER TABLE `penyajian`
  MODIFY `id_penyajian` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `penyiapan`
--
ALTER TABLE `penyiapan`
  MODIFY `id_penyiapan` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id_property` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `raw_ingredient`
--
ALTER TABLE `raw_ingredient`
  MODIFY `id_ingredient` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`);

--
-- Constraints for table `pembersihan`
--
ALTER TABLE `pembersihan`
  ADD CONSTRAINT `pembersihan_ibfk_1` FOREIGN KEY (`id_property`) REFERENCES `property` (`id_property`),
  ADD CONSTRAINT `pembersihan_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);

--
-- Constraints for table `pemesanan_product`
--
ALTER TABLE `pemesanan_product`
  ADD CONSTRAINT `pemesanan_product_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`),
  ADD CONSTRAINT `pemesanan_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `penyajian`
--
ALTER TABLE `penyajian`
  ADD CONSTRAINT `penyajian_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `penyajian_ibfk_2` FOREIGN KEY (`id_pemesanan_product`) REFERENCES `pemesanan_product` (`id_pemesanan_product`);

--
-- Constraints for table `penyiapan`
--
ALTER TABLE `penyiapan`
  ADD CONSTRAINT `penyiapan_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `penyiapan_ibfk_2` FOREIGN KEY (`id_pemesanan_product`) REFERENCES `pemesanan_product` (`id_pemesanan_product`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
