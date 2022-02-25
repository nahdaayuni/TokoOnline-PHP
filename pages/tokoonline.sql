-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2021 at 12:06 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian_produk`
--

CREATE TABLE `detail_pembelian_produk` (
  `id_detail_pembelian_produk` int(11) NOT NULL,
  `id_pembelian_produk` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pembelian_produk`
--

INSERT INTO `detail_pembelian_produk` (`id_detail_pembelian_produk`, `id_pembelian_produk`, `id_produk`, `qty`) VALUES
(147, 112, 14, 1),
(148, 112, 15, 1),
(149, 112, 16, 1),
(150, 113, 14, 1),
(151, 113, 16, 1),
(152, 114, 14, 1),
(153, 114, 19, 1),
(154, 115, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`) VALUES
(4, 'Nadia', 'Tulungagung', '082336917786'),
(5, 'Laila', 'Malang', '085655824486'),
(6, 'Anisa', 'Sawojajar, Malang', '081234567890'),
(7, 'Aisha', 'Jakarta', '087987654321');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_petugas`, `tanggal_beli`) VALUES
(112, 8, '2021-10-23'),
(113, 8, '2021-10-24'),
(114, 8, '2021-10-26'),
(115, 4, '2021-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(4, 'Nahda', 'admin', 'admin', 'admin'),
(5, 'Ayuni', 'ayuni', 'ayuni', 'petugas'),
(6, 'Ara', 'ara', 'ara', 'admin'),
(7, 'Putra', 'putra', 'putra', 'admin'),
(8, 'Nadya', 'nadya', 'nadya', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(14, 'Pouch', 'Pouch serbaguna dengan berbagai pilihan warna', 20000, '7d49db9ca645972f80ee1a3a4e9da463.jpg'),
(15, 'Case HP', 'Case HP dengan karakter panda', 10000, 'acc-hp_acc-hp-panda-under-star-s0165-casing-for-xiaomi-redmi-note-3_full02.jpg'),
(16, 'Botol Minum', 'Botol minum 500 mL dengan pilihan warna biru dan merah', 30000, '90b317e12e480d4c61f8b0a1227b57bf.jpg'),
(19, 'SIIP', 'Makanan ringan', 2000, 'Cara-Membuat-Kemasan-Produk-Makanan-Ringan.jpg'),
(20, 'Pencil Bag', 'Tempat pensil dari kain', 15000, 'student-pencil-bag-500x500.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pembelian_produk`
--
ALTER TABLE `detail_pembelian_produk`
  ADD PRIMARY KEY (`id_detail_pembelian_produk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pembelian_produk`
--
ALTER TABLE `detail_pembelian_produk`
  MODIFY `id_detail_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
