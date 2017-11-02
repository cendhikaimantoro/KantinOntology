-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 01:57 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

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

CREATE TABLE `karyawan` (
  `id_karyawan` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `n_anak` int(10) UNSIGNED NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `product_ingredient` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_ingredient` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_ingredient`
--

INSERT INTO `product_ingredient` (`id_product`, `id_ingredient`) VALUES
(1, 3),
(1, 4),
(2, 4),
(2, 7),
(3, 3),
(3, 7),
(4, 3),
(5, 7),
(6, 5),
(6, 8),
(7, 1),
(7, 6),
(7, 8),
(8, 2),
(8, 6),
(8, 8),
(9, 1),
(9, 5),
(9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `raw_ingredient`
--

CREATE TABLE `raw_ingredient` (
  `id_ingredient` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
  MODIFY `id_karyawan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `raw_ingredient`
--
ALTER TABLE `raw_ingredient`
  MODIFY `id_ingredient` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
