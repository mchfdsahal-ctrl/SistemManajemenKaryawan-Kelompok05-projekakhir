-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2026 at 12:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siatem_manajemen_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int NOT NULL,
  `id_karyawan` int NOT NULL,
  `tanggal` date NOT NULL,
  `id_status_kehadiran` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_karyawan`, `tanggal`, `id_status_kehadiran`) VALUES
(1, 1, '2026-05-01', 1),
(2, 2, '2026-05-01', 1),
(3, 3, '2026-05-01', 2),
(4, 4, '2026-05-01', 1),
(5, 5, '2026-05-01', 3),
(6, 6, '2026-05-02', 1),
(7, 7, '2026-05-02', 1),
(8, 8, '2026-05-02', 3),
(9, 9, '2026-05-02', 1),
(10, 10, '2026-05-02', 2),
(11, 11, '2026-05-05', 1),
(12, 12, '2026-05-05', 1),
(13, 13, '2026-05-05', 2),
(14, 14, '2026-05-05', 3),
(15, 15, '2026-05-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_departemen` int NOT NULL,
  `nama_departemen` varchar(100) NOT NULL,
  `manajer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_departemen`, `nama_departemen`, `manajer`) VALUES
(1, 'Human Resources', 'Budi Santoso'),
(2, 'Finance', 'Siti Rahayu'),
(3, 'Engineering', 'Ahmad Fauzi'),
(4, 'Marketing', 'Dewi Kusuma'),
(5, 'Operations', 'Rendra Wijaya'),
(6, 'Legal', 'Surya Atmaja'),
(7, 'IT Support', 'Bagas Nugroho'),
(8, 'Research & Development', 'Laila Fitri'),
(9, 'Customer Service', 'Tono Wibowo'),
(10, 'Procurement', 'Rina Marlina');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `gaji_min` decimal(15,2) NOT NULL,
  `gaji_max` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_min`, `gaji_max`) VALUES
(1, 'Staff HR', 4000000.00, 6000000.00),
(2, 'Manager HR', 8000000.00, 12000000.00),
(3, 'Staff Keuangan', 4500000.00, 7000000.00),
(4, 'Manager Keuangan', 9000000.00, 14000000.00),
(5, 'Software Engineer', 6000000.00, 10000000.00),
(6, 'Senior Engineer', 10000000.00, 16000000.00),
(7, 'Staff Marketing', 4000000.00, 6500000.00),
(8, 'Manager Marketing', 8500000.00, 13000000.00),
(9, 'Staff Operasional', 3500000.00, 5500000.00),
(10, 'Supervisor Operasional', 6000000.00, 9000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int NOT NULL,
  `nama_karyawan` varchar(150) NOT NULL,
  `kontak` varchar(50) DEFAULT NULL,
  `id_departemen` int NOT NULL,
  `id_jabatan` int NOT NULL,
  `id_status_karyawan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `kontak`, `id_departemen`, `id_jabatan`, `id_status_karyawan`) VALUES
(1, 'Andi Prasetyo', '081234567890', 3, 5, 1),
(2, 'Budi Hartono', '081234567891', 2, 3, 1),
(3, 'Citra Dewi', '081234567892', 1, 1, 1),
(4, 'Dian Pertiwi', '081234567893', 4, 7, 1),
(5, 'Eko Saputra', '081234567894', 5, 9, 1),
(6, 'Fajar Nugroho', '081234567895', 3, 6, 1),
(7, 'Gita Maharani', '081234567896', 2, 4, 1),
(8, 'Hendra Kusuma', '081234567897', 1, 2, 1),
(9, 'Indah Lestari', '081234567898', 4, 8, 1),
(10, 'Joko Widodo', '081234567899', 5, 10, 1),
(11, 'Kartika Sari', '081234567900', 3, 5, 2),
(12, 'Lukman Hakim', '081234567901', 2, 3, 2),
(13, 'Maya Anggraini', '081234567902', 1, 1, 2),
(14, 'Nanda Pratama', '081234567903', 4, 7, 3),
(15, 'Oscar Firmansyah', '081234567904', 5, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id_penggajian` int NOT NULL,
  `id_karyawan` int NOT NULL,
  `bulan` tinyint NOT NULL,
  `tahun` year NOT NULL,
  `jumlah_hadir` int DEFAULT '0',
  `jumlah_izin` int DEFAULT '0',
  `jumlah_absen` int DEFAULT '0',
  `total_potongan` decimal(15,2) DEFAULT '0.00',
  `gaji_bersih` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id_penggajian`, `id_karyawan`, `bulan`, `tahun`, `jumlah_hadir`, `jumlah_izin`, `jumlah_absen`, `total_potongan`, `gaji_bersih`) VALUES
(1, 3, 5, '2026', 0, 1, 0, 0.00, 6000000.00),
(2, 13, 5, '2026', 0, 1, 0, 0.00, 6000000.00),
(3, 8, 5, '2026', 0, 0, 1, 50000.00, 11950000.00),
(4, 2, 5, '2026', 1, 0, 0, 0.00, 7000000.00),
(5, 12, 5, '2026', 1, 0, 0, 0.00, 7000000.00),
(6, 7, 5, '2026', 1, 0, 0, 0.00, 14000000.00),
(7, 1, 5, '2026', 1, 0, 0, 0.00, 10000000.00),
(8, 11, 5, '2026', 1, 0, 0, 0.00, 10000000.00),
(9, 6, 5, '2026', 1, 0, 0, 0.00, 16000000.00),
(10, 4, 5, '2026', 1, 0, 0, 0.00, 6500000.00),
(11, 14, 5, '2026', 0, 0, 1, 50000.00, 6450000.00),
(12, 9, 5, '2026', 1, 0, 0, 0.00, 13000000.00),
(13, 5, 5, '2026', 0, 0, 1, 50000.00, 5450000.00),
(14, 15, 5, '2026', 1, 0, 0, 0.00, 5500000.00),
(15, 10, 5, '2026', 0, 1, 0, 0.00, 9000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `status_karyawan`
--

CREATE TABLE `status_karyawan` (
  `id_status_karyawan` int NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status_karyawan`
--

INSERT INTO `status_karyawan` (`id_status_karyawan`, `nama_status`) VALUES
(1, 'Aktif'),
(2, 'Magang'),
(3, 'Tidak Aktif'),
(4, 'Kontrak'),
(5, 'Probasi'),
(6, 'Cuti'),
(7, 'Pensiun'),
(8, 'Resign'),
(9, 'Dirumahkan'),
(10, 'Freelance');

-- --------------------------------------------------------

--
-- Table structure for table `status_kehadiran`
--

CREATE TABLE `status_kehadiran` (
  `id_status_kehadiran` int NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status_kehadiran`
--

INSERT INTO `status_kehadiran` (`id_status_kehadiran`, `nama_status`) VALUES
(1, 'Hadir'),
(2, 'Izin'),
(3, 'Absen'),
(4, 'Sakit'),
(5, 'Cuti'),
(6, 'Dinas Luar'),
(7, 'Terlambat'),
(8, 'Pulang Awal'),
(9, 'Work From Home'),
(10, 'Libur');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rekap_absensi`
-- (See below for the actual view)
--
CREATE TABLE `view_rekap_absensi` (
`nama_departemen` varchar(100)
,`nama_karyawan` varchar(150)
,`total_absen` decimal(23,0)
,`total_hadir` decimal(23,0)
,`total_hari` bigint
,`total_izin` decimal(23,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rekap_penggajian`
-- (See below for the actual view)
--
CREATE TABLE `view_rekap_penggajian` (
`bulan` tinyint
,`gaji_bersih` decimal(15,2)
,`id_karyawan` int
,`jumlah_absen` int
,`jumlah_hadir` int
,`jumlah_izin` int
,`nama_departemen` varchar(100)
,`nama_jabatan` varchar(100)
,`nama_karyawan` varchar(150)
,`status_karyawan` varchar(50)
,`tahun` year
,`total_potongan` decimal(15,2)
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_status_kehadiran` (`id_status_kehadiran`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_departemen` (`id_departemen`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_status_karyawan` (`id_status_karyawan`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id_penggajian`),
  ADD UNIQUE KEY `unique_penggajian` (`id_karyawan`,`bulan`,`tahun`);

--
-- Indexes for table `status_karyawan`
--
ALTER TABLE `status_karyawan`
  ADD PRIMARY KEY (`id_status_karyawan`);

--
-- Indexes for table `status_kehadiran`
--
ALTER TABLE `status_kehadiran`
  ADD PRIMARY KEY (`id_status_kehadiran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id_departemen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id_penggajian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `status_karyawan`
--
ALTER TABLE `status_karyawan`
  MODIFY `id_status_karyawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `status_kehadiran`
--
ALTER TABLE `status_kehadiran`
  MODIFY `id_status_kehadiran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- --------------------------------------------------------

--
-- Structure for view `view_rekap_absensi`
--
DROP TABLE IF EXISTS `view_rekap_absensi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rekap_absensi`  AS SELECT `k`.`nama_karyawan` AS `nama_karyawan`, `d`.`nama_departemen` AS `nama_departemen`, count(0) AS `total_hari`, sum((`sk`.`nama_status` = 'Hadir')) AS `total_hadir`, sum((`sk`.`nama_status` = 'Izin')) AS `total_izin`, sum((`sk`.`nama_status` = 'Absen')) AS `total_absen` FROM (((`absensi` `a` join `karyawan` `k` on((`a`.`id_karyawan` = `k`.`id_karyawan`))) join `departemen` `d` on((`k`.`id_departemen` = `d`.`id_departemen`))) join `status_kehadiran` `sk` on((`a`.`id_status_kehadiran` = `sk`.`id_status_kehadiran`))) GROUP BY `k`.`id_karyawan`, `k`.`nama_karyawan`, `d`.`nama_departemen` ;

-- --------------------------------------------------------

--
-- Structure for view `view_rekap_penggajian`
--
DROP TABLE IF EXISTS `view_rekap_penggajian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rekap_penggajian`  AS SELECT `k`.`id_karyawan` AS `id_karyawan`, `k`.`nama_karyawan` AS `nama_karyawan`, `d`.`nama_departemen` AS `nama_departemen`, `j`.`nama_jabatan` AS `nama_jabatan`, `sk`.`nama_status` AS `status_karyawan`, `p`.`bulan` AS `bulan`, `p`.`tahun` AS `tahun`, `p`.`jumlah_hadir` AS `jumlah_hadir`, `p`.`jumlah_izin` AS `jumlah_izin`, `p`.`jumlah_absen` AS `jumlah_absen`, `p`.`total_potongan` AS `total_potongan`, `p`.`gaji_bersih` AS `gaji_bersih` FROM ((((`penggajian` `p` join `karyawan` `k` on((`p`.`id_karyawan` = `k`.`id_karyawan`))) join `departemen` `d` on((`k`.`id_departemen` = `d`.`id_departemen`))) join `jabatan` `j` on((`k`.`id_jabatan` = `j`.`id_jabatan`))) join `status_karyawan` `sk` on((`k`.`id_status_karyawan` = `sk`.`id_status_karyawan`))) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `absensi_ibfk_2` FOREIGN KEY (`id_status_kehadiran`) REFERENCES `status_kehadiran` (`id_status_kehadiran`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`),
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`),
  ADD CONSTRAINT `karyawan_ibfk_3` FOREIGN KEY (`id_status_karyawan`) REFERENCES `status_karyawan` (`id_status_karyawan`);

--
-- Constraints for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD CONSTRAINT `penggajian_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
