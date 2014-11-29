-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 08:59 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ktilang`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE IF NOT EXISTS `pelanggaran` (
  `pasal_pelanggaran` varchar(25) NOT NULL,
  `jenis_pelanggaran` varchar(25) NOT NULL,
  `biaya_denda` int(11) NOT NULL,
  PRIMARY KEY (`pasal_pelanggaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `polisi`
--

CREATE TABLE IF NOT EXISTS `polisi` (
  `no_anggota` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `kesatuan` varchar(30) NOT NULL,
  PRIMARY KEY (`no_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sim`
--

CREATE TABLE IF NOT EXISTS `sim` (
  `no_sim` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tinggi_badan` tinyint(4) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `wilayah` varchar(30) NOT NULL,
  `golongan` varchar(5) NOT NULL,
  PRIMARY KEY (`no_sim`,`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stnk`
--

CREATE TABLE IF NOT EXISTS `stnk` (
  `no_stnk` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` tinytext NOT NULL,
  `merk` varchar(30) NOT NULL,
  `tipe` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `tahun_pembuatan` date NOT NULL,
  `tempat_pembuatan` varchar(30) NOT NULL,
  `warna_kendaraan` varchar(20) NOT NULL,
  `isi_silinder` varchar(20) NOT NULL,
  `no_rangka` varchar(30) NOT NULL,
  `no_mesin` varchar(30) NOT NULL,
  `bahan_bakar` char(1) NOT NULL,
  `warna_tnkb` char(1) NOT NULL,
  `tahun_registrasi` date NOT NULL,
  `no_bpkb` varchar(30) NOT NULL,
  `berlaku_sampai` date NOT NULL,
  PRIMARY KEY (`no_stnk`,`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_tilang`
--

CREATE TABLE IF NOT EXISTS `surat_tilang` (
  `no_tilang` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `no_anggota` varchar(50) NOT NULL,
  `waktu_tilang` datetime NOT NULL,
  `wilayah_tilang` varchar(30) NOT NULL,
  `tempat_tilang` varchar(50) NOT NULL,
  `pasal_pelanggaran` varchar(25) NOT NULL,
  `status_denda` char(1) NOT NULL,
  PRIMARY KEY (`no_tilang`,`username`,`no_anggota`,`pasal_pelanggaran`),
  KEY `username` (`username`),
  KEY `no_anggota` (`no_anggota`),
  KEY `pasal_pelanggaran` (`pasal_pelanggaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sim`
--
ALTER TABLE `sim`
  ADD CONSTRAINT `sim_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stnk`
--
ALTER TABLE `stnk`
  ADD CONSTRAINT `stnk_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surat_tilang`
--
ALTER TABLE `surat_tilang`
  ADD CONSTRAINT `surat_tilang_ibfk_3` FOREIGN KEY (`pasal_pelanggaran`) REFERENCES `pelanggaran` (`pasal_pelanggaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_tilang_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_tilang_ibfk_2` FOREIGN KEY (`no_anggota`) REFERENCES `polisi` (`no_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
