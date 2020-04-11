-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2017 at 03:13 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(11) NOT NULL,
  `id_pegawai` varchar(11) NOT NULL,
  `password` text NOT NULL,
  `akses` enum('admin','kasir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `id_pegawai`, `password`, `akses`) VALUES
('defuj17', 'PEG0001', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('fujhi17', 'PEG0002', 'c7911af3adbd12a035b289556d96470a', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(11) NOT NULL,
  `judul` text NOT NULL,
  `no_isbn` varchar(20) NOT NULL,
  `penulis` text NOT NULL,
  `penerbit` text NOT NULL,
  `tahun` year(4) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_pokok` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `diskon` int(3) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` varchar(11) NOT NULL,
  `updated_at` date NOT NULL,
  `updated_by` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `no_isbn`, `penulis`, `penerbit`, `tahun`, `stok`, `harga_pokok`, `harga_jual`, `ppn`, `diskon`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
('BUK0010', 'Fisika', '978-602-282-076-4', 'Abdurakhman', 'KEMENDIKBUD', 2015, 265, 40000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK0011', 'Pemrograman Berorientasi Objek', '978-602-282-873-10', 'Fuji', 'KEMENDIKBUD', 2015, 95, 45000, 50000, 1500, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK004', 'Prakarya dan Kewirausahaan', '978-602-282-449-7', 'Yudia', 'KEMENDIKBUD', 2015, 197, 40000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK005', 'Seni Budaya', '978-602-282-457-2', 'Bintang Hanggoro Putra', 'KEMENDIKBUD', 2015, 97, 40000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK006', 'Matematika', '978-602-282-103-8', 'Agung Lukito', 'KEMENDIKBUD', 2015, 96, 40000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK007', 'Pendidikan Agama Islam dan Budi Pekerti', '978-602-282-401-5', 'Dr. Marzuky,M.Ag', 'KEMENDIKBUD', 2015, 99, 4000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK008', 'Pendidikan Jasmani, Olahraga, dan Kesehatan', '978-602-282-464-0', 'Suroto', 'KEMENDIKBUD', 2015, 98, 40000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK009', 'Pendidikan Pancasila dan Kewarganegaraan', '978-602-282-471-8', 'Dadang Sundawa', 'KEMENDIKBUD', 2015, 99, 40000, 45000, 1000, 0, '2017-02-21', 'PEG0001', '2017-02-21', 'PEG0001'),
('BUK303', 'Bahasa Inggris', '687-9', 'rostika', 'gramedia', 1998, 189, 35000, 50000, 2500, 10, '2017-02-18', 'PEG001', '2017-02-18', 'PEG001'),
('BUK465', 'Sejarah Indonesia', '978-602-282-073-4', 'Abdurakhman', 'KEMENDIKBUD', 2015, 99, 40000, 50000, 15000, 0, '0000-00-00', 'PEG001', '2017-02-18', 'PEG001'),
('BUK944', 'Bahasa Sunda', '123-453-345-234f', 'jakatingkir', 'KEMENDIKBUD', 2015, 98, 35000, 40000, 1500, 0, '2017-02-18', 'PEG001', '2017-02-18', 'PEG001');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id_distributor` varchar(11) NOT NULL,
  `nama_distributor` text NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` varchar(11) NOT NULL,
  `updated_at` date NOT NULL,
  `updated_by` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id_distributor`, `nama_distributor`, `alamat`, `telp`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
('DIS282', 'KEMENDIKBUD', 'Bandung', '0987654345678', '2017-02-24', 'PEG0001', '2017-02-24', 'PEG0001'),
('DIS910', 'PT.ONTA ARAB', 'saudi', '098765456789', '2017-02-18', 'PEG001', '2017-02-20', 'PEG0001');

-- --------------------------------------------------------

--
-- Table structure for table `pasok`
--

CREATE TABLE `pasok` (
  `id_pasok` varchar(11) NOT NULL,
  `id_distributor` varchar(11) NOT NULL,
  `id_pegawai` varchar(11) NOT NULL,
  `id_buku` varchar(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasok`
--

INSERT INTO `pasok` (`id_pasok`, `id_distributor`, `id_pegawai`, `id_buku`, `jumlah`, `waktu`) VALUES
('PASOK358', 'DIS910', 'PEG0001', 'BUK0010', 92, '2017-02-24'),
('PASOK413', 'DIS910', 'PEG0001', 'BUK004', 100, '2017-02-22'),
('PASOK638', 'DIS910', 'PEG0001', 'BUK005', 1, '2017-02-24'),
('PASOK874', 'DIS910', 'PEG0001', 'BUK0010', 100, '2017-02-23'),
('PASOK917', 'DIS282', 'PEG0001', 'BUK303', 90, '2017-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `status` enum('Menikah','Belum Menikah') NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `alamat`, `telp`, `status`, `created_at`) VALUES
('PEG0001', 'dede fuji abdul', 'conggeang', '082240643661', 'Menikah', '0000-00-00'),
('PEG0002', 'Saroji Al-Baihaqi', 'Conggeang', '082240643662', 'Belum Menikah', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(11) NOT NULL,
  `id_pegawai` varchar(11) NOT NULL,
  `items_buku` text NOT NULL,
  `items_jml_buku` text NOT NULL,
  `waktu` date NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pegawai`, `items_buku`, `items_jml_buku`, `waktu`, `total_bayar`) VALUES
('TRN000009', 'PEG0001', 'BUK0010', '1', '2017-02-25', 45000),
('TRN000011', 'PEG0001', 'BUK0011', '1', '2017-02-26', 50000),
('TRN000012', 'PEG0001', 'BUK004', '1', '2017-02-26', 45000),
('TRN000013', 'PEG0001', 'BUK303', '1', '2017-02-26', 45000),
('TRN000014', 'PEG0001', 'BUK944', '1', '2017-02-26', 40000),
('TRN000015', 'PEG0001', 'BUK005', '1', '2017-02-26', 45000),
('TRN000016', 'PEG0001', 'BUK009', '1', '2017-02-26', 45000),
('TRN000017', 'PEG0001', 'BUK008', '1', '2017-02-26', 45000),
('TRN000018', 'PEG0001', 'BUK006', '1', '2017-02-26', 45000),
('TRN000019', 'PEG0001', 'BUK008', '1', '2017-02-26', 45000),
('TRN000020', 'PEG0001', 'BUK465', '1', '2017-02-26', 50000),
('TRN000021', 'PEG0001', 'BUK944', '1', '2017-02-26', 40000),
('TRN000022', 'PEG0001', 'BUK0011', '1', '2017-02-28', 50000),
('TRN000023', 'PEG0001', 'BUK006,BUK005', '1,1', '2017-03-01', 90000),
('TRN000024', 'PEG0001', 'BUK0011,BUK004,BUK005', '1,1,1', '2017-03-01', 140000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_by_2` (`created_by`),
  ADD KEY `updated_by_2` (`updated_by`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id_distributor`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_by_2` (`created_by`),
  ADD KEY `updated_by_2` (`updated_by`),
  ADD KEY `created_by_3` (`created_by`),
  ADD KEY `updated_by_3` (`updated_by`);

--
-- Indexes for table `pasok`
--
ALTER TABLE `pasok`
  ADD PRIMARY KEY (`id_pasok`),
  ADD KEY `id_distributor` (`id_distributor`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasok`
--
ALTER TABLE `pasok`
  ADD CONSTRAINT `pasok_ibfk_1` FOREIGN KEY (`id_distributor`) REFERENCES `distributor` (`id_distributor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasok_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasok_ibfk_3` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
