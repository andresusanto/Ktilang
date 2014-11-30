-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2014 at 05:19 AM
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
  `jenis_pelanggaran` varchar(50) NOT NULL,
  `deskripsi_pelanggaran` text NOT NULL,
  `biaya_denda` int(11) NOT NULL,
  PRIMARY KEY (`pasal_pelanggaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`pasal_pelanggaran`, `jenis_pelanggaran`, `deskripsi_pelanggaran`, `biaya_denda`) VALUES
('276', 'Tempat Persinggahan', 'Kendaraan bermotor umum dalam trayek tidak singgah di terminal', 250000),
('278', 'Kelengkapan Perlengkapan Berkendara', 'Setiap pengendara mobil yang tidak dilengkapi dengan perlengkapan berupa ban cadangan, segitiga pengaman, dongkrak, pembuka roda, dan peralatan pertolongan pertama pada kecelakaan dipidana dengan pidana kurungan paling lama 1 bulan atau denda paling banyak Rp 250 ribu', 250000),
('279', 'Membawa Perlengkapan Berbahaya', 'Perlengkapan yg dpt membahayakan keselamatan. Kendaraan bermotor dijalan dipasangi perlengkapan yang dapat menganggu keselamatan berlalu lintas antara lain ; Bumper tanduk dan lampu menyilaukan', 500000),
('280', 'Kelengkapan Tanda Nomor Kendaraan', 'Setiap pengendara kendaraan bermotor yang tak dipasangi Tanda Nomor Kendaraan dipidana dengan pidana kurungan paling lama 2 bulan atau denda paling banyak Rp 500 ribu', 500000),
('281', 'Kelengkapan SIM', 'Setiap pengendara kendaraan bermotor yang tidak memiliki SIM dipidana dengan pidana kurungan paling lama 4 bulan atau denda paling banyak Rp 1 juta', 1000000),
('283', 'Melakukan Kegiatan Lain Saat Berkendara', 'Mengemudi tidak Wajar - Melakukan kegiatan lain saat mengemudi, dipengaruhi oleh suatu keadaan yang mengakibatkan gangguan konsentrasi dalam mengemudi di jalan', 750000),
('284', 'Prioritas Penggunaan Jalan', 'Tidak mengutamakan pejalan kaki atau pesepeda', 500000),
('285-1', 'Kelengkapan Perlengkapan Berkendara', 'Setiap pengendara sepeda motor yang tidak memenuhi persyaratan teknis dan laik jalan seperti spion, lampu utama, lampu rem, klakson, pengukur kecepatan, dan knalpot dipidana dengan pidana kurungan paling lama 1 bulan atau denda paling banyak Rp 250 ribu', 250000),
('285-2', 'Kelengkapan Perlengkapan Berkendara', 'Setiap pengendara mobil yang tidak memenuhi persyaratan teknis seperti spion, klakson, lampu utama, lampu mundur, lampu rem, kaca depan, bumper, penghapus kaca dipidana dengan pidana kurungan paling lama 2 bulan atau denda paling banyak Rp 500 ribu', 500000),
('286', 'Kelayakan Kendaraan', 'Tidak memenuhi persyaratan laik jalan sekurang – kurangnya meliputi ; a. Emisi Gas Buang ;b. Kebisingan suara. Efisiensi sistem rem utama;d. Efisiensi system rem parkir;e. Kincup Roda Depan;f. Suara Klakson;g. Daya pancar dan arah sinar lampu utama;h. Radius putar;i. Akurasi alat penunjuk kecepatan;j. Kesesuaian kinerja roda dan kondisi Ban;Kesesuaian daya mesin pengerak terhadap berat kendaraan', 500000),
('287-1', 'Rambu Lalu Lintas', 'Setiap pengendara yang melanggar rambu lalu lintas dipidana dengan pidana kurungan paling lama 2 bulan atau denda paling banyak Rp 500 ribu', 500000),
('287-2', 'Ketertiban Berkendara', 'Melanggar Apill ( TL ). Melanggar aturan Perintah atau larangan yang dinyatakan dengan alat pemberi isyarat Lalu Lintas', 500000),
('287-3', 'Ketertiban Berkendara', 'Gerakan lalu lintas melanggar aturan, gerakan lalu litas atau tata cara berhenti dan parkir', 250000),
('287-4', 'Pemberian Prioritas Berkendara', 'Tidak memberi Prioritas jalan bagi kendaraan bermotor memiliki hak utama yang menggunakan alat peringatan dengan bunyi dan sinar dan / atau yang dikawal oleh petugas Polri', 250000),
('287-5', 'Batas Kecepatan Berkendara', 'Setiap pengendara yang melanggar aturan batas kecepatan paling tinggi atau paling rendah dipidana dengan pidana kurungan paling lama 2 bulan atau denda paling banyak Rp 500 ribu', 500000),
('287-6', 'Ketertiban Berkendara', 'Cara penggandengan dan penempelan dengan kendaraan lain. Melanggar aturan tata cara penggandengan dan penempelan dengan kendaraan lain', 250000),
('288-1', 'Kelengkapan STNK', 'Setiap pengendara yang tidak dilengkapi Surat Tanda Nomor Kendaraan Bermotor atau Surat Tanda Coba Kendaraan Bermotor dipidana dengan pidana kurungan paling lama 2 bulan atau denda paling banyak Rp 500 ribu', 500000),
('288-2', 'Kelengkapan SIM', 'Setiap pengendara kendaraan bermotor yang memiliki SIM namun tak dapat menunjukkannya saat razia dipidana dengan pidana kurungan paling lama 1 bulan atau denda paling banyak Rp 250 ribu', 250000),
('288-3', 'Kelengkapan Surat Uji', 'Buku Uji Ranmor tidak dilengkapi dengan surat keterangan Uji berkala', 500000),
('289', 'Sabuk Pengaman', 'Setiap pengemudi atau penumpang yang duduk disamping pengemudi mobil tak mengenakan sabuk keselamatan dipidana dengan pidana kurungan paling lama 1 bulan atau denda paling banyak Rp 250 ribu', 250000),
('290', 'Kelengkapan Perlengkapan Berkendara', 'Ranmor Tanpa Rumah-rumah selain Spd Motor Mengemudikan Kendaraan yang tidak dilengkapi dengan rumah –rumah, tidak mengenakan sabuk keselamatan dan tidak mengenakan Helm', 250000),
('291-1', 'Pemakaian Helm Berstandar Nasional', 'Setiap pengendara atau penumpang sepeda motor yang tak mengenakan helm standar nasional dipidana dengan pidana kurungan paling lama 1 bulan atau denda paling banyak Rp 250 ribu', 250000),
('291-2', 'Pemakaian Helm Berstandar Nasional', 'Pengendara sepeda motor membiarkan penumpangnya tidak menggunakan Helm', 250000),
('292', 'Batasan Jumlah Penumpang', 'Pengendara sepeda motor mengangkut penumpang lebih dari satu orang tanpa kereta samping', 250000),
('293-1', 'Penyalaan Lampu Utama', 'Setiap orang yang mengemudikan Kendaraan Bermotor di Jalan tanpa menyalakan lampu utama pada malam hari dan kondisi tertentu sebagaimana dimaksud dalam Pasal 107 ayat (1) dipidana dengan pidana kurungan paling lama 1 (satu) bulan atau denda paling banyak Rp250.000,00 (dua ratus lima puluh ribu rupiah)', 250000),
('293-2', 'Penyalaan Lampu Utama', 'Setiap orang yang mengemudikan Sepeda Motor di Jalan tanpa menyalakan lampu utama pada siang hari sebagaimana dimaksud dalam Pasal 107 ayat (2) dipidana dengan pidana kurungan paling lama 15 (lima belas) hari atau denda paling banyak Rp100.000,00 (seratus ribu rupiah)', 100000),
('294', 'Berbelok / Balik Arah Tanpa Isyarat', 'Setiap pengendara sepeda motor yang akan berbelok atau balik arah tanpa memberi isyarat lampu dipidana kurungan paling lama 1 bulan atau denda paling banyak Rp 250 ribu', 250000),
('295', 'Berpindah Lajur Tanpa Isyarat', 'Berpindah lajur atau bergerak ke samping Tidak memberikan isyarat saat akan berpindah lajur atau bergerak kesamping', 250000),
('296', 'Berkendara di Perlintasan Kereta Api dengan Jalan', 'Diperlintasan Kereta Api Mengemudikan Kendaran bermotor pada perlintasan antara Kereta Api dan Jalan, tidak berhenti ketika sinyal sudah berbunyi, Palang Pintu Kereta Api sudah mulai ditutup, dan / atau ada isyarat lain', 750000),
('297', 'Balapan di Jalan', 'Pengendara bermotor yang balapan di jalan akan dikenai pidana kurungan paling lama satu tahun atau denda paling banyak Rp 3.000.000', 3000000),
('298', 'Berhenti Mendadak', 'Berhenti dalam Keadaan darurat. Tidak Memasang segitiga pengaman, lampu isyarat peringatan Bahaya atau isyarat lain pada saat berhenti atau parkir dalam keadaan darurat dijalan', 500000),
('299', 'Bergandengan dengan Kendaraan Bermotor Lain', 'Dengan sengaja berpegangan pada kendaraan bermotor untuk ditarik. Menarik benda – benda yang dapat membahayakan pengguna jalan lain, dan / atau. Menggunakan jalur jalan Kendaraan Bermotor.Sedangkan telah disediakan jalur jalan khusus bagikendaraan tidak bermotor', 100000),
('300-a', 'Penyimpangan Penggunaan Lajur', 'Tidak mengunakan lajur yg telah ditentukan atau tidak menggunakan lajur paling kiri kecuali saat akan mendahului / mengubah arah', 250000),
('300-b', 'Pemberhentian Kendaraan', 'Tidak memberhentikan kendaraannya selama menaikkan dan / atau menurunkan penumpang', 250000),
('300-c', 'Penutupan Pintu Kendaraan', 'Tidak menutup Pintu kendaraan selama kendaraan berjalan', 250000),
('301', 'Penyimpangan Pengunaan Jaringan Jalan', 'Tidak menggunakan jaringan jalan sesuai dengan kelas jalan yang ditentukan', 250000),
('302', 'Berhenti Sembarangan', 'Tidak berhenti selain ditempat yang telah ditentukan, mengetem, menurunkan penumpang selain ditempat pemberhentian, atau melewati jaringan jalan selain yang ditentukan dalam ijin trayek', 250000),
('303', 'Pengangkutan Orang', 'Mobil barang untuk mengangkut orang tanpa alasan', 250000),
('304', 'Penyimpangan Pengunaan Kendaraan', 'Kendaraan angkutan orang dengan tujuan tertentu, tapi menaikkan atau menurunkan penumpang lain di sepanjang perjalanan atau menggunakan kendaraan angkutan tidak sesuai dengan angkutan, untuk keperluan lain', 250000),
('305', 'Penyimpangan Ketentuan Persyaratan Keselamatan', 'Tidak memenuhi ketentuan persyaratan keselamatan, pemberian tanda barang, parkir, bongkar dan muat, waktu operasi dan rekomendasi dan instansi ', 500000),
('306', 'Kelengkapan Surat Muatan Dokumen Perjalanan', 'Membawa Muatan, tidak dilengkapi Surat muatan dokumen perjalanan', 250000),
('307', 'Penyimpangan Tata Cara Pemuatan Barang', 'Tata Cara Pemuatan Barang Tidak mematuhi ketentuan mengenai tata cara pemuatan, daya angkut, dimensi kendaraan', 500000),
('308-a', 'Penyimpangan izin', 'Tidak memiliki ijin menyelangarakan angkutan orang dalam trayek', 500000),
('308-b', 'Penyimpangan izin', 'Tidak memiliki ijin menyelanggarakan angkutan orang tidak dalam trayek', 500000),
('308-c', 'Penyimpangan Izin', 'Menyimpang dari ijin yang ditentukan sebagaimana dimaksud dalam pasal 173', 500000);

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

--
-- Dumping data for table `polisi`
--

INSERT INTO `polisi` (`no_anggota`, `password`, `nama`, `pangkat`, `kesatuan`) VALUES
('12345', '12341234123412341234123412341234', 'Police', 'Brigadir', 'Satpol PP'),
('b13m-4019-ma32', '12341234123412341234123412341234', 'Jajat Sudrajat', 'Kapolda', 'Metro Jaya');

-- --------------------------------------------------------

--
-- Table structure for table `sim`
--

CREATE TABLE IF NOT EXISTS `sim` (
  `no_sim` varchar(15) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tinggi_badan` tinyint(4) unsigned NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `wilayah` varchar(30) NOT NULL,
  `golongan` varchar(5) NOT NULL,
  PRIMARY KEY (`no_sim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sim`
--

INSERT INTO `sim` (`no_sim`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `tinggi_badan`, `pekerjaan`, `jenis_kelamin`, `wilayah`, `golongan`) VALUES
('1111111111', 'tonyG', 'Jl. Kegantengan no. 5', 'Jakarta', '2014-11-17', 170, 'Orang Kaya', 'P', 'Metro Jaya', 'C'),
('2222222222', 'tonyG', 'Jl. Kegantengan no. 5', 'Jakarta', '2014-11-19', 127, 'Org Kaya', 'P', 'Metro Jaya', 'A'),
('3333333333', 'lingshitG', 'Jl. Asem no. 5', 'Jakarta', '2014-11-03', 127, 'Koplak', 'P', 'Metro Jaya', 'C'),
('4444444444', 'lingshitG', 'Jl. Kegantengan no 5', 'Jakarta', '2014-11-17', 127, 'Koplak', 'P', 'Metro Jaya', 'A'),
('5555555555', 'anakilang', 'Jl Kucing no. 3', 'Jkt', '2014-11-10', 127, 'Pedagang', 'W', 'Jakbar', 'C'),
('9210153400', 'Bagaskara Pramudita', 'Persada Asri A-16\r\nRT.33 RW.08 Balowerti\r\nKota Kediri', 'Surabaya', '1994-10-24', 165, 'Mahasiswa', 'P', 'Jatim', 'C'),
('9210153401', 'Tony', 'Jl. Kerajinan no. 19\r\nRT 14 RW 10\r\nJakarta Barat', 'Jakarta', '2014-11-02', 172, 'Mahasiswa', 'P', 'Metro Jaya', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `stnk`
--

CREATE TABLE IF NOT EXISTS `stnk` (
  `no_stnk` varchar(15) NOT NULL,
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
  PRIMARY KEY (`no_stnk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stnk`
--

INSERT INTO `stnk` (`no_stnk`, `nama`, `alamat`, `merk`, `tipe`, `jenis`, `model`, `tahun_pembuatan`, `tempat_pembuatan`, `warna_kendaraan`, `isi_silinder`, `no_rangka`, `no_mesin`, `bahan_bakar`, `warna_tnkb`, `tahun_registrasi`, `no_bpkb`, `berlaku_sampai`) VALUES
('AA-1111-AA', 'tonyG', 'Jl.Kegantengan no. 5', 'A', 'A', 'Motor', 'A', '2014-11-10', 'Cikampret', 'Merah', '2', '3', '1', 'B', 'H', '2014-11-10', '12131231', '2014-11-26'),
('AG-5425-BQ', 'Bagaskara Pramudita', 'Perum Persada Sari A-16\r\nKec. Kota Kediri', 'Honda', 'NC11C-1C-AT-Scoopy', 'Sepeda Motor', 'Sepeda Motor', '2011-05-04', 'Jawa Timur', 'Violet', '00108 CC', 'MH1JF6112BK187062', 'JF61E1185477', 'B', 'H', '2011-05-04', 'H11018513', '2016-05-04'),
('BB-2222-BB', 'tonyG', 'Jl. a', 'a', 'a', 'Mobil', 'a', '2014-11-21', '1', '3', '2', '4', '5', 'S', 'K', '2014-11-25', '31312321312213', '2014-11-25'),
('CC-3333-CC', 'lingshitG', 'eqewqeqwe', 'qwee', 'wqqwewq', 'Motor', 'cxzc', '2014-11-25', 'qwwewqe', 'asdasdasd', 'qwewqewqd', 'asdasdsa', 'asdsadd', 'B', 'H', '2014-11-25', '1231242116', '2014-11-18'),
('DD-4444-DD', 'lingshitG', 'qwwqqwasdasd', 'qwewqasd', 'qwewqeqwdsa', 'Mobil', 'qwewqeqwdas', '2014-11-04', 'qwewqeqdas', 'qweqdasd', 'zxxzczxc', 'qweqwdsa', 'asdasd', 'S', 'H', '2014-11-26', '124213213213', '2014-11-27'),
('EE-5555-EE', 'anakilang', 'qwewqewqewqew', 'qweqewqewqe', 'qwewqewqe', 'Mobil', 'qweewqwqe', '2014-11-25', 'qweqweqw', 'asdasdas', 'zczcxz', 'qweqwe', 'asdsad', 'B', 'H', '2014-11-25', 'qwewqwqe', '2014-11-05'),
('KT-1412-TK', 'Tony', 'Jl. Kerajinan no. 19\r\nRT 14 RW 10\r\nJakarta Barat', 'Honda', 'Honda Jazz', 'Sepeda Motor', 'Sepeda Motor', '2014-11-10', 'Jakarta', 'Putih', '109029', '013901', '192381', 'B', 'H', '2014-11-17', '1292113132', '2019-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `surat_tilang`
--

CREATE TABLE IF NOT EXISTS `surat_tilang` (
  `no_tilang` varchar(10) NOT NULL,
  `no_stnk` varchar(15) NOT NULL,
  `no_anggota` varchar(50) NOT NULL,
  `waktu_tilang` datetime NOT NULL,
  `wilayah_tilang` varchar(30) NOT NULL,
  `tempat_tilang` varchar(50) NOT NULL,
  `pasal_pelanggaran` varchar(25) NOT NULL,
  `status_denda` char(1) NOT NULL,
  PRIMARY KEY (`no_tilang`,`no_stnk`,`no_anggota`,`pasal_pelanggaran`),
  KEY `no_anggota` (`no_anggota`),
  KEY `pasal_pelanggaran` (`pasal_pelanggaran`),
  KEY `no_stnk` (`no_stnk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_tilang`
--

INSERT INTO `surat_tilang` (`no_tilang`, `no_stnk`, `no_anggota`, `waktu_tilang`, `wilayah_tilang`, `tempat_tilang`, `pasal_pelanggaran`, `status_denda`) VALUES
('1234-4321', 'AA-1111-AA', 'b13m-4019-ma32', '2014-11-20 02:12:21', 'Bandung', 'Jl. Cisitu Lama no. 33', '281', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `reg_token` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `no_hp`, `reg_token`) VALUES
('baspram', 'amkoamkoamkoamkoamkoamkoamkoamko', '0819102390190', 99),
('kaito', 'popopopopopopopopopopopopopopopo', '085717566229', 5),
('lingshit', '55555555555555555555555555555555', '123455432112345', 1),
('pret', '55555555555555555555555555555555', '123455432112345', 1231235),
('tony', '11111111111111111111111111111111', '085717566229', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_sim`
--

CREATE TABLE IF NOT EXISTS `user_sim` (
  `username` varchar(50) NOT NULL,
  `no_sim` varchar(15) NOT NULL,
  PRIMARY KEY (`username`,`no_sim`),
  KEY `no_sim` (`no_sim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sim`
--

INSERT INTO `user_sim` (`username`, `no_sim`) VALUES
('tony', '1111111111');

-- --------------------------------------------------------

--
-- Table structure for table `user_stnk`
--

CREATE TABLE IF NOT EXISTS `user_stnk` (
  `username` varchar(50) NOT NULL,
  `no_stnk` varchar(15) NOT NULL,
  PRIMARY KEY (`username`,`no_stnk`),
  KEY `no_stnk` (`no_stnk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_stnk`
--

INSERT INTO `user_stnk` (`username`, `no_stnk`) VALUES
('tony', 'AA-1111-AA');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surat_tilang`
--
ALTER TABLE `surat_tilang`
  ADD CONSTRAINT `surat_tilang_ibfk_2` FOREIGN KEY (`no_anggota`) REFERENCES `polisi` (`no_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_tilang_ibfk_3` FOREIGN KEY (`pasal_pelanggaran`) REFERENCES `pelanggaran` (`pasal_pelanggaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_tilang_ibfk_4` FOREIGN KEY (`no_stnk`) REFERENCES `stnk` (`no_stnk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_sim`
--
ALTER TABLE `user_sim`
  ADD CONSTRAINT `user_sim_ibfk_1` FOREIGN KEY (`no_sim`) REFERENCES `sim` (`no_sim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sim_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_stnk`
--
ALTER TABLE `user_stnk`
  ADD CONSTRAINT `user_stnk_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_stnk_ibfk_2` FOREIGN KEY (`no_stnk`) REFERENCES `stnk` (`no_stnk`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
