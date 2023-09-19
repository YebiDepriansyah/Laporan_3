-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2023 pada 18.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nasabah_bank`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartu_atm`
--

CREATE TABLE `kartu_atm` (
  `Nomor_kartu_ATM` int(40) NOT NULL,
  `Nomor_rekening` int(40) DEFAULT NULL,
  `Pin` int(6) DEFAULT NULL,
  `Tipe_kartu` enum('Debit','Kredit') DEFAULT NULL,
  `Tanggal_kedaluarsa` date DEFAULT NULL,
  `Tanggal_penerbitan` date DEFAULT NULL,
  `Status_kadaluarsa` enum('Berlaku','Tidak Berlaku') DEFAULT NULL,
  `Limit_harian_penarikan` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kartu_atm`
--

INSERT INTO `kartu_atm` (`Nomor_kartu_ATM`, `Nomor_rekening`, `Pin`, `Tipe_kartu`, `Tanggal_kedaluarsa`, `Tanggal_penerbitan`, `Status_kadaluarsa`, `Limit_harian_penarikan`) VALUES
(12345, 512345678, 10203, 'Debit', '2026-11-18', '2013-09-09', 'Berlaku', 2000000.00),
(23456, 523456789, 20304, 'Kredit', '2031-04-08', '2018-01-03', 'Berlaku', 3000000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nasabah`
--

CREATE TABLE `nasabah` (
  `Nomor_rekening` int(15) NOT NULL,
  `Nama_nasabah` varchar(50) DEFAULT NULL,
  `Nomor_telepon_nasabah` int(15) DEFAULT NULL,
  `Alamat_nasabah` varchar(50) DEFAULT NULL,
  `Jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `status` enum('Menikah','Belum Menikah','Cerai') DEFAULT NULL,
  `Tanggal_lahir` date DEFAULT NULL,
  `Pekerjaan` varchar(50) DEFAULT NULL,
  `Pendapatan` decimal(20,2) DEFAULT NULL,
  `Nama_bank` varchar(20) DEFAULT NULL,
  `Saldo` decimal(20,2) DEFAULT NULL,
  `Status_aktif` enum('Aktif','Tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nasabah`
--

INSERT INTO `nasabah` (`Nomor_rekening`, `Nama_nasabah`, `Nomor_telepon_nasabah`, `Alamat_nasabah`, `Jenis_kelamin`, `status`, `Tanggal_lahir`, `Pekerjaan`, `Pendapatan`, `Nama_bank`, `Saldo`, `Status_aktif`) VALUES
(512345678, 'asep', 812345678, 'kota Bengkulu', 'Laki-Laki', 'Belum Menikah', '1999-07-07', 'PNS', 4000000.00, 'BSKIK', 100000000.00, 'Aktif'),
(523456789, 'putri', 823456789, 'Manak', 'Perempuan', 'Menikah', '2004-09-09', 'Ibu Rumah Tangga', 0.00, 'BSKIK', 30500007000.00, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_transaksi` int(40) NOT NULL,
  `Nomor_rekening` int(40) DEFAULT NULL,
  `Nomor_kartu_ATM` int(40) DEFAULT NULL,
  `Tanggal_dan_waktu` datetime DEFAULT NULL,
  `Nominal_Transaksi` decimal(20,2) DEFAULT NULL,
  `Jenis_transaksi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`ID_transaksi`, `Nomor_rekening`, `Nomor_kartu_ATM`, `Tanggal_dan_waktu`, `Nominal_Transaksi`, `Jenis_transaksi`) VALUES
(1, 512345678, 12345, '2023-09-14 10:34:16', 200000.00, 'bayar shopee'),
(2, 523456789, 23456, '2023-08-06 07:50:36', 500000.00, 'cicilan HP'),
(5, 512345678, 12345, '2023-09-20 09:18:20', 7000.00, 'cicilan tv');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kartu_atm`
--
ALTER TABLE `kartu_atm`
  ADD PRIMARY KEY (`Nomor_kartu_ATM`),
  ADD KEY `Nomor_rekening` (`Nomor_rekening`);

--
-- Indeks untuk tabel `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`Nomor_rekening`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_transaksi`),
  ADD KEY `Nomor_rekening` (`Nomor_rekening`),
  ADD KEY `Nomor_kartu_ATM` (`Nomor_kartu_ATM`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_transaksi` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kartu_atm`
--
ALTER TABLE `kartu_atm`
  ADD CONSTRAINT `kartu_atm_ibfk_1` FOREIGN KEY (`Nomor_rekening`) REFERENCES `nasabah` (`Nomor_rekening`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Nomor_rekening`) REFERENCES `nasabah` (`Nomor_rekening`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`Nomor_kartu_ATM`) REFERENCES `kartu_atm` (`Nomor_kartu_ATM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
