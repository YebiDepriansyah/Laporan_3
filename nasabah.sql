-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2023 pada 17.58
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`Nomor_rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
