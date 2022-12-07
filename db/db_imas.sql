-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 02:15 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Ahmad Ulul Azmi', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'admin.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(5, '001', 'Ustadz Ansori, M.Pd', 'ansori@gmail.com', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', 'Ustadz.png', 'Y'),
(6, '002', 'Ustadz Daud Hawari, S.Pd', 'daudhawari@gmail.com', '6fc978af728d43c59faa400d5f6e0471ac850d4c', 'Ustadz.png', 'Y'),
(7, '003', 'Ustadzah Widiasusila', 'widiasusila@gmail.com', '221407c03ae5c73109cce71d27e24637824f3333', 'Ustadzah.png', 'Y'),
(8, '004', 'Ustadzah Isnani', 'isnani@gmail.com', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', 'Ustadzah.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_kepsek` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nip`, `nama_kepsek`, `email`, `password`, `foto`, `status`) VALUES
(1, '123456789011', 'TGH. L. Tamim Ali Aqso, M.Pd', 'tamimaliakso@gmail.com', '4ce8e48be6c978348e4a6f4754b050de5581be4b', 'kepala.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(2, 'MP-1561560129', 'Mukhtashar Jiddan'),
(3, 'MP-1561871991', 'Bulugul Marram'),
(4, 'MP-1561872004', 'Matan Jurumiyyah'),
(5, 'MP-1561872013', 'Matan Safinatun Naja'),
(6, 'MP-1561872026', 'Akhlakulil Banin'),
(7, 'MP-1561872043', 'Akhlakulil Banat'),
(8, 'MP-1615002340', 'Hidayatul Mustafid');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(1, 'MPL-1614670924', 'Senin', '09.00-10.00', '1-2', 1, 1, 1, 1, 2),
(2, 'MPL-1614674537', 'Senin', '09.00-10.00', '1-2', 5, 1, 1, 1, 2),
(4, 'MPL-1615004563', 'Senin', '08.00-09.00', '1', 6, 2, 3, 2, 2),
(5, 'MPL-1616288498', 'Rabu', '09.00-10.00', '2', 8, 7, 1, 2, 2),
(6, 'MPL-1582242668', 'Senin', '08.00-09.00', '1', 5, 1, 1, 4, 8),
(8, 'MPL-1665332179', 'Senin', '', '', 9, 2, 7, 4, 9),
(9, 'MPL-1665332212', 'Sabtu', '', '', 10, 7, 5, 4, 9),
(12, 'MPL-1670329915', 'Senin', '', '', 5, 2, 6, 4, 9),
(13, 'MPL-1670329952', 'Selasa', '', '', 6, 4, 5, 4, 9),
(14, 'MPL-1670329988', 'Rabu', '', '', 7, 7, 5, 4, 9),
(15, 'MPL-1670330005', 'Kamis', '', '', 8, 5, 5, 4, 9),
(16, 'MPL-1670330026', 'Sabtu', '', '', 0, 3, 7, 4, 9),
(17, 'MPL-1670330081', 'Sabtu', '', '', 5, 3, 7, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(5, 'KL-1616673105', 'Ula'),
(6, 'KL-1616673114', 'Wustho'),
(7, 'KL-1616673120', 'Kuliah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(4, 'Ganjil', 1),
(5, 'Genap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(1, '001', 'Imam Hambali', 'Jakarta', '2020-03-01', 'L', 'Jl. Mawar', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2020, 1),
(2, '002', 'Agis Sagita', 'bogor', '2012-06-02', 'P', 'jl. batok tenjo-bogor', '6fc978af728d43c59faa400d5f6e0471ac850d4c', '17603.png', '1', 2019, 3),
(3, '004', 'indah nuraeni', 'bogor', '2009-07-01', 'L', 'bogor', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', '17603.png', '1', 2019, 1),
(4, '12345', 'Suci', 'TANGERANG', '2002-09-21', 'P', 'Kademangan', '8cb2237d0679ca88db6464eac60da96345513964', 'IMG_20180830_164642_853.jpg', '1', 2019, 1),
(6, '121', 'Muhammad Rizal', 'Sintung', '2004-02-18', 'L', 'Sintung', '8bd7954c40c1e59a900f71ea3a266732609915b1', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 5),
(7, '122', 'Muhammad Ali Ramdan', 'Loteng', '2010-06-22', 'L', 'Loteng', '05a8ea5382b9fd885261bb3eed0527d1d3b07262', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2022, 5),
(8, '123', 'Anisa', 'Lendang Simbe', '2009-06-16', 'P', 'Kendang Simbe', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '17603.png', '1', 2022, 5),
(9, '124', 'Rina Hairani', 'Mujur', '2009-10-14', 'L', 'Mujur', 'f38cfe2e2facbcc742bad63f91ad55637300cb45', '17603.png', '1', 2022, 5),
(10, '125', 'Andi ', 'Selak Aik', '2005-07-22', 'L', 'Selak Aik', '0ca9277f91e40054767f69afeb0426711ca0fddd', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 6),
(11, '126', 'Muhammad Alwi', 'Lendang Spakek', '2007-06-22', 'L', 'Lendang Spakek', '114d4eefde1dae3983e7a79f04c72feb9a3a7efd', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2021, 6),
(12, '127', 'Nurul Aini', 'Lobar', '2008-07-22', 'P', 'Lobar', '008451a05e1e7aa32c75119df950d405265e0904', '17603.png', '1', 2021, 6),
(13, '128', 'Nila Anggraini', 'Loteng', '2008-11-17', 'P', 'Loteng', 'b4182bff4b3cf75f9e54f4990f9bd153c0c2973c', '17603.png', '1', 2021, 6),
(14, '129', 'Naufal', 'KLU', '2008-06-22', 'L', 'KLU', '8b7471f4ae0bf59f5f0a425068c05d96f4801b9e', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2020, 7),
(15, '130', 'Sanjaya', 'Kediri', '2007-03-15', 'L', 'Kediri', '2a7541babb57434e5631ffa2b5639e24f8ce84fc', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png', '1', 2020, 7),
(16, '131', 'Elsa Salasa', 'Joben', '2005-07-22', 'P', 'Joben', 'e794a80eb109162d579df51db6d52e223bb0e9be', '17603.png', '1', 2020, 7),
(17, '132', 'Ririn Anggraini', 'Lotim', '2010-06-22', 'P', 'Lotim', '91dfde1d6e005e422f64a59776234f1f4c80b5e4', '17603.png', '1', 2020, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(7, '2019/2020', 0),
(8, '2020/2021', 0),
(9, '2022/2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_santri` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_santri`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(1, 2, 1, '2021-03-02', '', '1'),
(2, 4, 2, '2021-03-06', 'I', '1'),
(3, 2, 1, '2021-03-21', 'H', '2'),
(4, 2, 3, '2021-03-21', 'H', '3'),
(5, 5, 1, '2021-03-21', 'H', '1'),
(6, 5, 3, '2021-03-21', 'H', '1'),
(7, 2, 1, '2021-03-23', 'H', '4'),
(8, 2, 3, '2021-03-23', 'I', '4'),
(9, 6, 1, '2021-03-23', 'H', '1'),
(10, 6, 3, '2021-03-23', 'H', '1'),
(11, 6, 4, '2021-03-23', 'H', '1'),
(12, 6, 1, '2021-03-25', 'I', '2'),
(13, 6, 3, '2021-03-25', 'I', '2'),
(14, 6, 4, '2021-03-25', 'I', '2'),
(15, 11, 10, '2022-10-22', 'H', '1'),
(16, 11, 11, '2022-10-22', 'H', '1'),
(17, 11, 12, '2022-10-22', 'H', '1'),
(18, 11, 13, '2022-10-22', 'H', '1'),
(19, 11, 10, '2022-10-30', 'H', '2'),
(20, 11, 11, '2022-10-30', 'H', '2'),
(21, 11, 12, '2022-10-30', 'H', '2'),
(22, 11, 13, '2022-10-30', 'H', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indexes for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indexes for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
