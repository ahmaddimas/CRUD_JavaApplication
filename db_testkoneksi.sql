-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Mar 2017 pada 13.37
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_testkoneksi`
--
CREATE DATABASE IF NOT EXISTS `db_testkoneksi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_testkoneksi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `NIS` int(11) NOT NULL,
  `NamaSiswa` varchar(80) NOT NULL,
  `Tgl_Lahir` date NOT NULL,
  `JenisKelamin` enum('L','P') NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Asal_SMP` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `No_Telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`NIS`, `NamaSiswa`, `Tgl_Lahir`, `JenisKelamin`, `Kelas`, `Email`, `Asal_SMP`, `Alamat`, `No_Telp`) VALUES
(111, 'Ahmad', '2017-03-03', 'L', 'XI RPL 4', 'ahmad@ahmad.ahmad', 'SMP', 'malang', '082236421452'),
(1212, 'Dimas', '2017-03-09', 'L', 'r4', 'ahmad@dimas.com', 'smpn mt', 'bojonegoro', '00808080808'),
(12124, 'Ahmad Dimas', '2017-03-05', 'L', 'xi r4', 'ahmad@dimas.com', 'smpn mt', 'bojonegoro', '00808080111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_akun`
--

CREATE TABLE `tb_akun` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_akun`
--

INSERT INTO `tb_akun` (`username`, `password`) VALUES
('root', 'root'),
('ahmad', 'ahmad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`NIS`);

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
