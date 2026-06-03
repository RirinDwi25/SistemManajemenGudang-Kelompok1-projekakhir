-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2026 at 11:49 AM
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
-- Database: `manajemen_gudang_elektronik`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Gaming Mouse'),
(2, 'Gaming Keyboard'),
(3, 'Monitor'),
(4, 'Headset Audio'),
(5, 'Kursi Gaming'),
(6, 'Meja Gaming'),
(7, 'Mousepad'),
(8, 'Webcam & Streaming'),
(9, 'Microphone'),
(10, 'Kabel & Konektor'),
(11, 'RAM & Memory'),
(12, 'SSD & Storage'),
(13, 'Power Supply'),
(14, 'Casing PC'),
(15, 'Cooling Fan'),
(16, 'Graphics Card'),
(17, 'Processor'),
(18, 'Motherboard'),
(19, 'Speaker Gaming'),
(20, 'Game Controller');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_gudang`
--

CREATE TABLE `lokasi_gudang` (
  `id_lokasi` int NOT NULL,
  `nama_gudang` varchar(100) NOT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lokasi_gudang`
--

INSERT INTO `lokasi_gudang` (`id_lokasi`, `nama_gudang`, `keterangan`) VALUES
(1, 'Gudang Utama Surabaya', 'Pusat distribusi area Jawa Timur'),
(2, 'Gudang Cabang Bangkalan', 'Hub transit area Madura'),
(3, 'Gudang Cabang Malang', 'Distribusi area selatan'),
(4, 'Gudang Sidoarjo', 'Penyimpanan barang berat / furniture'),
(5, 'Ruang Transit A', 'Untuk barang masuk sebelum QC'),
(6, 'Ruang Karantina', 'Penyimpanan barang retur / rusak'),
(7, 'Gudang Elektronik 1', 'Khusus periferal bernilai tinggi'),
(8, 'Gudang Elektronik 2', 'Khusus periferal ukuran besar'),
(9, 'Gudang Aksesoris', 'Penyimpanan kabel dan sparepart'),
(10, 'Gudang Arsip', 'Penyimpanan dokumen fisik logistik'),
(11, 'Gudang Komponen PC', 'Penyimpanan RAM, SSD, processor, dan motherboard'),
(12, 'Gudang Display Monitor', 'Penyimpanan monitor dan layar display'),
(13, 'Gudang Audio Gaming', 'Penyimpanan headset, speaker, dan microphone'),
(14, 'Gudang Kursi dan Meja', 'Penyimpanan furniture gaming'),
(15, 'Gudang Stok Cepat', 'Barang fast moving dan sering keluar'),
(16, 'Gudang Retur Vendor', 'Barang yang akan dikembalikan ke supplier'),
(17, 'Gudang Promo Event', 'Barang untuk event dan sponsorship'),
(18, 'Gudang Packing', 'Area penyimpanan barang siap kirim'),
(19, 'Gudang Sparepart', 'Penyimpanan komponen kecil dan cadangan'),
(20, 'Gudang High Value', 'Barang bernilai tinggi');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `jabatan`) VALUES
(1, 'Andi Pratama', 'Kepala Gudang'),
(2, 'Budi Santoso', 'Supervisor Logistik'),
(3, 'Citra Kirana', 'Admin Inventory'),
(4, 'Rudi Bayu', 'Staf Logistik'),
(5, 'Eka Saputra', 'Staf Logistik'),
(6, 'Fajar Hidayat', 'Quality Control'),
(7, 'Gilang Ramadhan', 'Operator Forklift'),
(8, 'Hani Amalia', 'Admin Inventory'),
(9, 'Intan Nuraini', 'Staf Retur'),
(10, 'Joko Anwar', 'Kurir Distribusi'),
(11, 'Lukman Hakim', 'Staff Penerimaan'),
(12, 'Maya Sari', 'Admin Gudang'),
(13, 'Naufal Rizky', 'Staf Pengiriman'),
(14, 'Olivia Putri', 'Quality Control'),
(15, 'Prasetyo Nugroho', 'Operator Gudang'),
(16, 'Qori Maulana', 'Staf Inventory'),
(17, 'Rina Febriani', 'Admin Retur'),
(18, 'Satria Wibowo', 'Supervisor Distribusi'),
(19, 'Tania Maharani', 'Staf Packing'),
(20, 'Yoga Firmansyah', 'Kurir Distribusi');

-- --------------------------------------------------------

--
-- Table structure for table `penempatan`
--

CREATE TABLE `penempatan` (
  `id_penempatan` int NOT NULL,
  `id_lokasi` int NOT NULL,
  `kode_rak` varchar(50) NOT NULL,
  `kapasitas_maksimal` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penempatan`
--

INSERT INTO `penempatan` (`id_penempatan`, `id_lokasi`, `kode_rak`, `kapasitas_maksimal`) VALUES
(1, 1, 'RAK-A1', 100),
(2, 1, 'RAK-A2', 100),
(3, 2, 'RAK-B1', 50),
(4, 3, 'RAK-C1', 75),
(5, 4, 'ZONA-F1', 20),
(6, 5, 'TRANSIT-01', 200),
(7, 6, 'RETUR-01', 30),
(8, 7, 'RAK-VIP', 40),
(9, 8, 'RAK-D1', 80),
(10, 9, 'LACI-X1', 500),
(11, 11, 'RAK-PC1', 120),
(12, 12, 'RAK-MON1', 60),
(13, 13, 'RAK-AUD1', 100),
(14, 14, 'ZONA-F2', 25),
(15, 15, 'FAST-01', 150),
(16, 16, 'RETUR-02', 40),
(17, 17, 'EVENT-01', 80),
(18, 18, 'PACK-01', 200),
(19, 19, 'SPARE-01', 300),
(20, 20, 'VIP-01', 50);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `id_kategori` int NOT NULL,
  `id_supplier` int NOT NULL,
  `stok_keseluruhan` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `id_supplier`, `stok_keseluruhan`) VALUES
(1, 'Logitech G502 Hero', 1, 1, 150),
(2, 'Razer Huntsman Mini', 2, 5, 80),
(3, 'Monitor AOC 24G2', 3, 3, 45),
(4, 'HyperX Cloud II', 4, 1, 120),
(5, 'Secretlab Titan Evo', 5, 2, 25),
(6, 'Fantech GD612 Desk', 6, 4, 30),
(7, 'SteelSeries QcK Heavy', 7, 7, 200),
(8, 'Logitech C920 Pro', 8, 1, 60),
(9, 'Fifine K669B USB Mic', 9, 8, 90),
(10, 'Kabel HDMI Ugreen 2M', 10, 6, 300),
(11, 'Kingston Fury Beast 16GB', 11, 11, 100),
(12, 'Samsung SSD 980 1TB', 12, 13, 75),
(13, 'Corsair CV650 PSU', 13, 17, 45),
(14, 'NZXT H510 Casing', 14, 16, 30),
(15, 'Cooler Master Fan RGB', 15, 12, 120),
(16, 'MSI RTX 4060 Ventus', 16, 19, 25),
(17, 'AMD Ryzen 5 5600', 17, 15, 40),
(18, 'ASUS Prime B550M', 18, 18, 35),
(19, 'JBL Quantum Duo Speaker', 19, 14, 50),
(20, 'Xbox Wireless Controller', 20, 20, 60);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `kontak_telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `kontak_telepon`) VALUES
(1, 'PT Gear Master Indonesia', '08111222333'),
(2, 'CV Kursi Juara', '08123334445'),
(3, 'PT IndoTech Distribusi', '08134445556'),
(4, 'CV Sentosa Elektronik', '08145556667'),
(5, 'Megah Peripheral Corp', '08156667778'),
(6, 'Nusantara IT Supply', '08167778889'),
(7, 'Global Gaming Abadi', '08178889990'),
(8, 'Jaya Sukses Sentosa', '08189990001'),
(9, 'Elite Gear Indo', '08190001112'),
(10, 'PT Logistik Cepat', '08201112223'),
(11, 'PT Komponen Digital Nusantara', '082122233344'),
(12, 'CV Gaming Hardware', '082233344455'),
(13, 'PT Surya Komputerindo', '082344455566'),
(14, 'CV Peripheral Mantap', '082455566677'),
(15, 'PT Cipta Teknologi Global', '082566677788'),
(16, 'CV Rakitan Jaya', '082677788899'),
(17, 'PT Hardware Prima', '082788899900'),
(18, 'CV Elektronik Mandiri', '082899900011'),
(19, 'PT Distribusi Gaming Asia', '082900011122'),
(20, 'CV Komputer Sejahtera', '083011122233');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_detail` int NOT NULL,
  `id_transaksi` int NOT NULL,
  `id_produk` int NOT NULL,
  `id_penempatan` int NOT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_detail`, `id_transaksi`, `id_produk`, `id_penempatan`, `jumlah`) VALUES
(1, 1, 1, 1, 50),
(2, 2, 5, 5, 10),
(3, 3, 10, 10, 100),
(4, 4, 3, 8, 20),
(5, 5, 8, 8, 30),
(6, 6, 1, 1, 15),
(7, 7, 4, 1, 20),
(8, 8, 2, 2, 10),
(9, 9, 3, 8, 2),
(10, 10, 5, 5, 5),
(11, 11, 11, 11, 40),
(12, 11, 12, 12, 30),
(13, 12, 13, 13, 20),
(14, 12, 14, 14, 15),
(15, 13, 16, 16, 10),
(16, 13, 17, 17, 20),
(17, 14, 18, 18, 18),
(18, 14, 19, 19, 25),
(19, 15, 20, 20, 30),
(20, 16, 11, 11, 10),
(21, 17, 12, 12, 8),
(22, 18, 20, 20, 12),
(23, 19, 19, 19, 10),
(24, 20, 14, 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_header`
--

CREATE TABLE `transaksi_header` (
  `id_transaksi` int NOT NULL,
  `no_dokumen` varchar(50) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jenis_transaksi` enum('MASUK','KELUAR') NOT NULL,
  `id_pegawai` int NOT NULL,
  `tujuan_keluar` varchar(255) DEFAULT NULL,
  `keterangan_tambahan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_header`
--

INSERT INTO `transaksi_header` (`id_transaksi`, `no_dokumen`, `tanggal_transaksi`, `jenis_transaksi`, `id_pegawai`, `tujuan_keluar`, `keterangan_tambahan`) VALUES
(1, 'TRX-IN-001', '2026-06-01 08:30:00', 'MASUK', 3, NULL, 'Restock awal bulan dari vendor utama'),
(2, 'TRX-IN-002', '2026-06-02 09:15:00', 'MASUK', 8, NULL, 'Pengiriman batch kedua kursi gaming'),
(3, 'TRX-IN-003', '2026-06-02 11:00:00', 'MASUK', 3, NULL, 'Restock kabel dan aksesoris'),
(4, 'TRX-IN-004', '2026-06-03 14:20:00', 'MASUK', 4, NULL, 'Restock monitor AOC'),
(5, 'TRX-IN-005', '2026-06-04 10:00:00', 'MASUK', 8, NULL, 'Restock microphone dan webcam'),
(6, 'TRX-OUT-001', '2026-06-05 09:00:00', 'KELUAR', 4, 'Toko E-sports Kenjeran', 'Distribusi rutin mingguan'),
(7, 'TRX-OUT-002', '2026-06-06 13:30:00', 'KELUAR', 5, 'Event UTM Bangkalan', 'Sponsorship turnamen kampus'),
(8, 'TRX-OUT-003', '2026-06-07 10:45:00', 'KELUAR', 4, 'Toko Retail Malang', 'Permintaan stok tambahan'),
(9, 'TRX-OUT-004', '2026-06-08 15:00:00', 'KELUAR', 5, 'Retur ke Vendor PT Indotech', 'Pengembalian barang cacat pabrik'),
(10, 'TRX-OUT-005', '2026-06-09 08:30:00', 'KELUAR', 10, 'Toko Pusat Sidoarjo', 'Distribusi kursi gaming'),
(11, 'TRX-IN-006', '2026-06-10 09:00:00', 'MASUK', 11, NULL, 'Penerimaan RAM dan SSD'),
(12, 'TRX-IN-007', '2026-06-11 10:30:00', 'MASUK', 12, NULL, 'Penerimaan power supply dan casing'),
(13, 'TRX-IN-008', '2026-06-12 13:00:00', 'MASUK', 14, NULL, 'Penerimaan VGA dan processor'),
(14, 'TRX-IN-009', '2026-06-13 08:45:00', 'MASUK', 16, NULL, 'Penerimaan motherboard dan speaker gaming'),
(15, 'TRX-IN-010', '2026-06-14 15:20:00', 'MASUK', 15, NULL, 'Penerimaan controller gaming'),
(16, 'TRX-OUT-006', '2026-06-15 09:15:00', 'KELUAR', 13, 'Toko Gaming Surabaya', 'Distribusi komponen PC'),
(17, 'TRX-OUT-007', '2026-06-16 11:40:00', 'KELUAR', 18, 'Toko Komputer Malang', 'Distribusi SSD dan RAM'),
(18, 'TRX-OUT-008', '2026-06-17 14:10:00', 'KELUAR', 19, 'Event Turnamen E-Sport', 'Barang untuk event gaming'),
(19, 'TRX-OUT-009', '2026-06-18 10:00:00', 'KELUAR', 20, 'Cabang Sidoarjo', 'Distribusi aksesoris gaming'),
(20, 'TRX-OUT-010', '2026-06-19 16:30:00', 'KELUAR', 17, 'Retur ke Supplier', 'Pengembalian barang tidak sesuai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `lokasi_gudang`
--
ALTER TABLE `lokasi_gudang`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `penempatan`
--
ALTER TABLE `penempatan`
  ADD PRIMARY KEY (`id_penempatan`),
  ADD KEY `fk_penempatan_lokasi` (`id_lokasi`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `fk_produk_kategori` (`id_kategori`),
  ADD KEY `fk_produk_supplier` (`id_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_detail_transaksi` (`id_transaksi`),
  ADD KEY `fk_detail_produk` (`id_produk`),
  ADD KEY `fk_detail_penempatan` (`id_penempatan`);

--
-- Indexes for table `transaksi_header`
--
ALTER TABLE `transaksi_header`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `no_dokumen` (`no_dokumen`),
  ADD KEY `fk_trans_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lokasi_gudang`
--
ALTER TABLE `lokasi_gudang`
  MODIFY `id_lokasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penempatan`
--
ALTER TABLE `penempatan`
  MODIFY `id_penempatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transaksi_header`
--
ALTER TABLE `transaksi_header`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penempatan`
--
ALTER TABLE `penempatan`
  ADD CONSTRAINT `fk_penempatan_lokasi` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi_gudang` (`id_lokasi`) ON DELETE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_produk_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE RESTRICT;

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `fk_detail_penempatan` FOREIGN KEY (`id_penempatan`) REFERENCES `penempatan` (`id_penempatan`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_detail_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_detail_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_header` (`id_transaksi`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi_header`
--
ALTER TABLE `transaksi_header`
  ADD CONSTRAINT `fk_trans_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
