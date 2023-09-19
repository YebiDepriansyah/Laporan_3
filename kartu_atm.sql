-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2023 pada 17.55
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
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kartu_atm`
--
ALTER TABLE `kartu_atm`
  ADD CONSTRAINT `kartu_atm_ibfk_1` FOREIGN KEY (`Nomor_rekening`) REFERENCES `nasabah` (`Nomor_rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
