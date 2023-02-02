-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 07:29 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_faiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`, `id_supplier`) VALUES
(4, 'Pelembut pakaian', 2500, 300, 1),
(5, 'Lifebuoy', 2000, 200, 1),
(6, 'Sunlight', 5000, 200, 1),
(7, 'Pepsodent', 4000, 200, 1),
(9, 'Lifebuoy buaya', 2000, 200, 1),
(10, 'Sunlight', 5000, 200, 1),
(11, 'Pepsodent', 4000, 200, 1),
(13, 'GG Merah', 15000, 300, 2),
(14, 'GG Djaja', 20000, 300, 2),
(15, 'GG Patra', 14000, 300, 2),
(17, 'GG Merah', 4000, 300, 2),
(18, 'GG Djaja', 20000, 300, 2),
(19, 'GG Patra', 7000, 300, 2),
(22, 'Pop mie', 3000, 500, 3),
(23, 'Sarimi Isi Dua', 4500, 500, 3),
(24, 'Indofood sambal', 6000, 500, 3),
(25, 'indomie', 2500, 500, 3),
(26, 'Pop mie', 3000, 500, 3),
(28, 'Indofood sambal', 6000, 500, 3),
(33, 'Facewash', 30000, 200, 1),
(35, 'Malkist Abon', 5500, 350, 5),
(38, 'Zippo', 50000, 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `id_transaksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `tgl_bayar`, `total_bayar`, `id_transaksi`) VALUES
(1, '2023-02-01', 20000, 4),
(2, '2023-02-14', 30000, 2),
(3, '2023-02-01', 30000, 1),
(22, '2023-02-01', 30000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `jk` char(1) DEFAULT NULL,
  `no_telp` char(14) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `jk`, `no_telp`, `alamat`) VALUES
(2, 'Atok X JR', 'L', '0876512435', 'Grogol'),
(3, 'azza', 'P', '085156103907', 'Titik Koma'),
(4, 'azzam', 'L', '0876512435', 'Ngadiluwih'),
(5, 'Tasya', 'P', '0876512435', 'Tinalan'),
(12, 'WEKA', 'L', '0928371', 'WATES');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `no_telp` char(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(1, 'PT Unilever ', '65341', 'Jl.surya Bekasi Jakbar'),
(2, 'PT.Gudang garam tbk', '54321', 'Kota kediri JATIM'),
(3, 'PT Indofood Sukses ', '54321', 'Jakarta Indonesia'),
(4, 'PT Tiga Pilar TBK', '21414', 'Jakarta Indonesia'),
(5, 'PT ABC President Indonesia', '912843', 'Jakarta'),
(6, 'PT Mayora Indah Tbk', '67563', 'Jakarta'),
(7, 'PT Sidomuncul Tbk', '38101', 'Jakarta'),
(8, 'PT Akasha Wira International, ', '4524', 'Bekasi'),
(9, 'PT Siantar Top tbk', '872651', 'Bandung'),
(10, 'PT Sekar Laut tbk', '54321', 'Bekasi'),
(11, 'PT Campina Ice Cream tbk', '2983', 'Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_pembeli`, `tanggal`, `keterangan`) VALUES
(1, 9, 5, '2023-02-01', 'Beli 4'),
(2, 23, 4, '2023-02-27', 'Beli 3'),
(3, 24, 3, '2023-02-01', 'Beli 1'),
(4, 18, 2, '2023-01-25', 'Beli 10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `id_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `id_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `id_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
