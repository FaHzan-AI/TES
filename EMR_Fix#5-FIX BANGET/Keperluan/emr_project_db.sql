-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Nov 2025 pada 13.17
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emr_project_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `patient_confirmed_finished` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `appointment`
--

INSERT INTO `appointment` (`id`, `patient_id`, `doctor_id`, `appointment_date`, `reason`, `status`, `patient_confirmed_finished`) VALUES
(1, 5, 2, '2025-11-19', 'Aku Sakit Kepala', 'Finished', 1),
(2, 7, 2, '2025-11-03', 'mcu', 'Finished', 0),
(3, 5, 2, '2025-11-21', 'Pusing\r\n', 'Finished', 1),
(4, 5, 2, '2025-11-30', 'Sakit Hati', 'Finished', 1),
(5, 5, 2, '2025-11-22', 'AW', 'Finished', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `appointment_slot`
--

CREATE TABLE `appointment_slot` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `verification_status` varchar(50) NOT NULL,
  `schedule_request_id` varchar(50) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `appointment_slot`
--

INSERT INTO `appointment_slot` (`id`, `doctor_id`, `start_time`, `end_time`, `status`, `verification_status`, `schedule_request_id`, `appointment_id`) VALUES
(1, 2, '2025-10-31 09:10:00', '2025-10-31 10:10:00', 'Available', 'Approved', '19a0fd22-5c91-4777-8345-980823eef80a', NULL),
(2, 2, '2025-11-19 09:00:00', '2025-11-19 10:00:00', 'Booked', 'Approved', 'bbfbe491-ce44-4f3d-8f2b-79dfe746741e', 1),
(3, 2, '2025-11-03 20:00:00', '2025-11-03 22:00:00', 'Booked', 'Approved', '4d739e75-dcc1-43bd-bad8-10854fe05b8b', 2),
(4, 2, '2025-11-21 09:10:00', '2025-11-21 10:10:00', 'Booked', 'Approved', 'fee6a50f-0fad-443f-aebc-18d765dac026', 3),
(5, 2, '2025-11-20 13:00:00', '2025-11-20 14:00:00', 'Available', 'Selesai', '466c6cca-88b2-443d-8726-2eec11a0bbef', NULL),
(6, 2, '2025-11-20 16:30:00', '2025-11-20 17:30:00', 'Available', 'Selesai', '466c6cca-88b2-443d-8726-2eec11a0bbef', NULL),
(7, 2, '2025-11-20 18:00:00', '2025-11-20 19:00:00', 'Available', 'Selesai', '466c6cca-88b2-443d-8726-2eec11a0bbef', NULL),
(8, 2, '2025-11-20 19:30:00', '2025-11-20 20:30:00', 'Available', 'Selesai', '466c6cca-88b2-443d-8726-2eec11a0bbef', NULL),
(9, 2, '2025-11-20 21:00:00', '2025-11-20 22:00:00', 'Available', 'Selesai', '466c6cca-88b2-443d-8726-2eec11a0bbef', NULL),
(10, 2, '2025-11-30 13:00:00', '2025-11-30 14:00:00', 'Booked', 'Selesai', '0c680011-a25d-4b79-80a8-fb695beeab0a', 4),
(11, 2, '2025-11-30 17:00:00', '2025-11-30 18:00:00', 'Available', 'Selesai', '0c680011-a25d-4b79-80a8-fb695beeab0a', NULL),
(12, 2, '2025-11-30 19:00:00', '2025-11-30 20:00:00', 'Available', 'Selesai', '0c680011-a25d-4b79-80a8-fb695beeab0a', NULL),
(13, 2, '2025-11-30 21:00:00', '2025-11-30 22:00:00', 'Available', 'Selesai', '0c680011-a25d-4b79-80a8-fb695beeab0a', NULL),
(14, 2, '2025-11-30 23:00:00', '2025-11-30 00:00:00', 'Available', 'Selesai', '0c680011-a25d-4b79-80a8-fb695beeab0a', NULL),
(15, 2, '2025-11-22 10:40:00', '2025-11-22 11:40:00', 'Booked', 'Selesai', '4ee9a717-393f-496c-8086-f65f0f910b51', 5),
(16, 2, '2025-11-22 13:00:00', '2025-11-22 14:00:00', 'Available', 'Selesai', '4ee9a717-393f-496c-8086-f65f0f910b51', NULL),
(17, 2, '2025-11-22 14:00:00', '2025-11-22 15:00:00', 'Available', 'Selesai', '4ee9a717-393f-496c-8086-f65f0f910b51', NULL),
(18, 2, '2025-11-22 15:00:00', '2025-11-22 16:00:00', 'Available', 'Selesai', '4ee9a717-393f-496c-8086-f65f0f910b51', NULL),
(19, 2, '2025-11-22 16:00:00', '2025-11-22 17:00:00', 'Available', 'Selesai', '4ee9a717-393f-496c-8086-f65f0f910b51', NULL),
(20, 4, '2025-11-15 10:50:00', '2025-11-15 11:50:00', 'Available', 'Approved', 'e686568d-19dd-4252-87ab-07b301517dff', NULL),
(21, 4, '2025-11-15 11:50:00', '2025-11-15 12:50:00', 'Available', 'Approved', 'e686568d-19dd-4252-87ab-07b301517dff', NULL),
(22, 4, '2025-11-15 12:50:00', '2025-11-15 13:50:00', 'Available', 'Approved', 'e686568d-19dd-4252-87ab-07b301517dff', NULL),
(23, 4, '2025-11-15 13:50:00', '2025-11-15 14:50:00', 'Available', 'Approved', 'e686568d-19dd-4252-87ab-07b301517dff', NULL),
(24, 4, '2025-11-15 14:50:00', '2025-11-15 15:50:00', 'Available', 'Approved', 'e686568d-19dd-4252-87ab-07b301517dff', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_audit`
--

CREATE TABLE `log_audit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_audit`
--

INSERT INTO `log_audit` (`id`, `user_id`, `aktivitas`, `timestamp`) VALUES
(1, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 06:58:03'),
(2, 1, 'User Admin melengkapi data profil.', '2025-11-03 06:58:10'),
(3, 1, 'Admin Admin membuat user baru: Dr (dokter).', '2025-11-03 06:59:05'),
(4, 1, 'Admin Admin membuat user baru: Apt (apoteker).', '2025-11-03 06:59:21'),
(5, 1, 'Admin Admin membuat user baru: Dr2 (dokter).', '2025-11-03 06:59:56'),
(6, 1, 'User Admin logout.', '2025-11-03 06:59:59'),
(7, NULL, 'Pasien baru \"Pas\" berhasil registrasi dan menunggu verifikasi.', '2025-11-03 07:00:27'),
(8, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 07:00:33'),
(9, 5, 'User Pas melengkapi data profil.', '2025-11-03 07:00:41'),
(10, 5, 'User Pas logout.', '2025-11-03 07:00:46'),
(11, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:00:52'),
(12, 1, 'Admin Admin memverifikasi pasien baru: Pas dan membuat rekam medis.', '2025-11-03 07:00:58'),
(13, 1, 'User Admin logout.', '2025-11-03 07:01:14'),
(14, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 07:01:21'),
(15, 2, 'User Dr melengkapi data profil.', '2025-11-03 07:01:26'),
(16, 2, 'User Dr logout.', '2025-11-03 07:01:31'),
(17, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:01:36'),
(18, 1, 'Admin Admin memverifikasi data profil staf: Dr.', '2025-11-03 07:01:41'),
(19, 1, 'User Admin logout.', '2025-11-03 07:01:49'),
(20, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-03 07:01:54'),
(21, 3, 'User Apt melengkapi data profil.', '2025-11-03 07:02:04'),
(22, 3, 'User Apt logout.', '2025-11-03 07:02:07'),
(23, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:02:19'),
(24, 1, 'Admin Admin memverifikasi data profil staf: Apt.', '2025-11-03 07:02:24'),
(25, 1, 'Admin Admin mengexport laporan kunjungan ke Excel.', '2025-11-03 07:02:39'),
(26, 1, 'User Admin logout.', '2025-11-03 07:02:54'),
(27, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 07:03:00'),
(28, 2, 'Dokter Dr mengajukan 1 slot jadwal baru untuk tanggal 2025-10-31.', '2025-11-03 07:03:24'),
(29, 2, 'User Dr logout.', '2025-11-03 07:04:05'),
(30, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:04:12'),
(31, 1, 'Admin Admin mengubah status pengajuan jadwal ID 19a0fd22-5c91-4777-8345-980823eef80a menjadi Approved.', '2025-11-03 07:04:19'),
(32, 1, 'User Admin logout.', '2025-11-03 07:04:22'),
(33, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 07:04:26'),
(34, 5, 'User Pas logout.', '2025-11-03 07:04:44'),
(35, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 07:04:49'),
(36, 2, 'Dokter Dr mengajukan 1 slot jadwal baru untuk tanggal 2025-11-19.', '2025-11-03 07:05:04'),
(37, 2, 'User Dr logout.', '2025-11-03 07:05:06'),
(38, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:05:11'),
(39, 1, 'Admin Admin mengubah status pengajuan jadwal ID bbfbe491-ce44-4f3d-8f2b-79dfe746741e menjadi Approved.', '2025-11-03 07:05:15'),
(40, 1, 'User Admin logout.', '2025-11-03 07:05:21'),
(41, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 07:05:27'),
(42, 5, 'Pasien Pas membuat janji temu pada slot ID 2.', '2025-11-03 07:05:42'),
(43, 5, 'User Pas logout.', '2025-11-03 07:05:46'),
(44, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 07:05:50'),
(45, 2, 'Dokter Dr mengexport rekam medis pasien Ras ke PDF.', '2025-11-03 07:05:57'),
(46, 2, 'Dokter menyelesaikan konsultasi ID 1.', '2025-11-03 07:06:24'),
(47, 2, 'Dokter Dr menambahkan rekam medis dan biaya konsultasi untuk pasien Ras.', '2025-11-03 07:06:24'),
(48, 2, 'User Dr logout.', '2025-11-03 07:06:27'),
(49, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-03 07:06:31'),
(50, 3, 'Apoteker Apt mengonfirmasi biaya obat untuk resep ID: 1.', '2025-11-03 07:06:45'),
(51, 3, 'User Apt logout.', '2025-11-03 07:06:51'),
(52, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 07:07:00'),
(53, 5, 'User Pas logout.', '2025-11-03 07:13:26'),
(54, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:13:30'),
(55, 1, 'Admin Admin mengonfirmasi pembayaran ID: 1.', '2025-11-03 07:14:08'),
(56, 1, 'User Admin logout.', '2025-11-03 07:14:20'),
(57, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 07:14:24'),
(58, 5, 'User Pas mengexport invoice ID 1 ke PDF.', '2025-11-03 07:19:05'),
(59, 5, 'User Pas logout.', '2025-11-03 07:27:38'),
(60, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:27:45'),
(61, 1, 'User Admin logout.', '2025-11-03 07:29:32'),
(62, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 07:29:37'),
(63, 5, 'User Pas berhasil mengaktifkan 2FA.', '2025-11-03 07:30:48'),
(64, 5, 'User Pas logout.', '2025-11-03 07:30:56'),
(65, 5, 'User Pas berhasil login (dengan 2FA).', '2025-11-03 07:31:21'),
(66, 5, 'User Pas logout.', '2025-11-03 07:31:30'),
(67, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 07:31:34'),
(68, 5, 'User Pas berhasil login (dengan 2FA).', '2025-11-03 07:40:07'),
(69, 5, 'User Pas logout.', '2025-11-03 07:40:48'),
(70, 2, 'User Dr logout.', '2025-11-03 07:41:54'),
(71, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 07:45:26'),
(72, 1, 'User Admin logout.', '2025-11-03 07:47:21'),
(73, 1, 'User admin berhasil login (tanpa 2FA).', '2025-11-03 07:59:30'),
(74, NULL, 'Pasien baru \"12345\" berhasil registrasi dan menunggu verifikasi.', '2025-11-03 08:00:18'),
(75, 6, 'User 12345 berhasil login (tanpa 2FA).', '2025-11-03 08:00:32'),
(76, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 08:00:58'),
(77, 6, 'User 12345 melengkapi data profil.', '2025-11-03 08:01:13'),
(78, 1, 'User Admin logout.', '2025-11-03 08:01:24'),
(79, 6, 'User 12345 mengirim pesan support.', '2025-11-03 08:01:42'),
(80, NULL, 'Pasien baru \"asep\" berhasil registrasi dan menunggu verifikasi.', '2025-11-03 08:14:24'),
(81, 7, 'User asep berhasil login (tanpa 2FA).', '2025-11-03 08:14:31'),
(82, 7, 'User asep melengkapi data profil.', '2025-11-03 08:15:13'),
(83, 1, 'User admin berhasil login (tanpa 2FA).', '2025-11-03 08:15:48'),
(84, 1, 'Admin Admin memverifikasi pasien baru: asep dan membuat rekam medis.', '2025-11-03 08:16:08'),
(85, 2, 'User dr berhasil login (tanpa 2FA).', '2025-11-03 08:17:22'),
(86, 2, 'Dokter Dr mengajukan 1 slot jadwal baru untuk tanggal 2025-11-03.', '2025-11-03 08:18:25'),
(87, 1, 'Admin Admin mengubah status pengajuan jadwal ID 4d739e75-dcc1-43bd-bad8-10854fe05b8b menjadi Approved.', '2025-11-03 08:18:35'),
(88, 7, 'Pasien asep membuat janji temu pada slot ID 3.', '2025-11-03 08:18:56'),
(89, 2, 'Dokter menyelesaikan konsultasi ID 2.', '2025-11-03 08:20:16'),
(90, 2, 'Dokter Dr menambahkan rekam medis dan biaya konsultasi untuk pasien Asep.', '2025-11-03 08:20:16'),
(91, 7, 'User asep mengexport invoice ID 2 ke PDF.', '2025-11-03 08:20:25'),
(92, 1, 'Admin Admin mengonfirmasi pembayaran ID: 2.', '2025-11-03 08:21:25'),
(93, 1, 'User Admin logout.', '2025-11-03 08:24:49'),
(94, 1, 'User admin berhasil login (tanpa 2FA).', '2025-11-03 08:25:27'),
(95, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 09:10:20'),
(96, 1, 'Admin Admin memverifikasi pasien baru: 12345 dan membuat rekam medis.', '2025-11-03 09:10:41'),
(97, 1, 'User Admin logout.', '2025-11-03 09:10:49'),
(98, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 09:10:56'),
(99, 5, 'User Pas logout.', '2025-11-03 09:11:08'),
(100, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 09:11:12'),
(101, 2, 'Dokter Dr mengajukan 1 slot jadwal baru untuk tanggal 2025-11-21.', '2025-11-03 09:11:27'),
(102, 2, 'User Dr logout.', '2025-11-03 09:14:31'),
(103, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 09:14:37'),
(104, 1, 'Admin Admin mengubah status pengajuan jadwal ID fee6a50f-0fad-443f-aebc-18d765dac026 menjadi Approved.', '2025-11-03 09:14:48'),
(105, 1, 'User Admin logout.', '2025-11-03 09:15:01'),
(106, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 09:15:06'),
(107, 5, 'Pasien Pas membuat janji temu pada slot ID 4.', '2025-11-03 09:15:18'),
(108, 5, 'User Pas logout.', '2025-11-03 09:15:26'),
(109, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-03 09:15:30'),
(110, 2, 'Dokter menyelesaikan konsultasi ID 3.', '2025-11-03 09:16:13'),
(111, 2, 'Dokter Dr menambahkan rekam medis dan biaya konsultasi untuk pasien Ras.', '2025-11-03 09:16:13'),
(112, 2, 'User Dr logout.', '2025-11-03 09:16:36'),
(113, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-03 09:16:42'),
(114, 3, 'Apoteker Apt mengonfirmasi biaya obat untuk resep ID: 3.', '2025-11-03 09:17:29'),
(115, 3, 'User Apt logout.', '2025-11-03 09:17:36'),
(116, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-03 09:17:45'),
(117, 3, 'User Apt logout.', '2025-11-03 09:17:56'),
(118, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-03 09:18:02'),
(119, 5, 'User Pas mengexport invoice ID 3 ke PDF.', '2025-11-03 09:18:18'),
(120, 5, 'User Pas logout.', '2025-11-03 09:18:39'),
(121, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-03 09:18:49'),
(122, 1, 'Admin Admin mengexport laporan kunjungan ke Excel.', '2025-11-03 09:21:17'),
(123, 1, 'Admin Admin menandai pesan ID 1 sebagai Dibaca.', '2025-11-03 09:21:39'),
(124, 1, 'Admin Admin mengonfirmasi pembayaran ID: 3.', '2025-11-03 09:21:49'),
(125, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 06:11:26'),
(126, 1, 'User Admin logout.', '2025-11-04 06:12:00'),
(127, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 06:12:03'),
(128, 2, 'Dokter Dr mengajukan 5 slot jadwal baru untuk tanggal 2025-11-20.', '2025-11-04 06:57:18'),
(129, 2, 'User Dr logout.', '2025-11-04 06:57:39'),
(130, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 06:57:44'),
(131, 1, 'Admin Admin mengubah status pengajuan jadwal ID 466c6cca-88b2-443d-8726-2eec11a0bbef menjadi Approved.', '2025-11-04 06:57:57'),
(132, 1, 'User Admin logout.', '2025-11-04 06:57:59'),
(133, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 06:58:04'),
(134, 2, 'User Dr logout.', '2025-11-04 06:58:13'),
(135, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 06:58:18'),
(136, 5, 'User Pas logout.', '2025-11-04 06:59:00'),
(137, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 06:59:06'),
(138, 2, 'Dokter Dr mengajukan penyelesaian jadwal ID 466c6cca-88b2-443d-8726-2eec11a0bbef.', '2025-11-04 07:04:11'),
(139, 2, 'Dokter Dr mengajukan 5 slot jadwal baru untuk tanggal 2025-11-30.', '2025-11-04 07:16:04'),
(140, 2, 'User Dr logout.', '2025-11-04 07:16:12'),
(141, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:16:17'),
(142, 1, 'Admin Admin mengubah status pengajuan jadwal ID 0c680011-a25d-4b79-80a8-fb695beeab0a menjadi Approved.', '2025-11-04 07:16:45'),
(143, 1, 'Admin Admin mengonfirmasi penyelesaian jadwal ID 466c6cca-88b2-443d-8726-2eec11a0bbef.', '2025-11-04 07:16:49'),
(144, 1, 'User Admin logout.', '2025-11-04 07:16:53'),
(145, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:16:58'),
(146, 5, 'Pasien Pas membuat janji temu pada slot ID 10.', '2025-11-04 07:17:11'),
(147, 5, 'User Pas logout.', '2025-11-04 07:17:16'),
(148, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 07:17:21'),
(149, 2, 'Dokter menyelesaikan konsultasi ID 4.', '2025-11-04 07:18:53'),
(150, 2, 'Dokter Dr menambahkan rekam medis dan biaya konsultasi untuk pasien Ras.', '2025-11-04 07:18:53'),
(151, 2, 'User Dr logout.', '2025-11-04 07:18:57'),
(152, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-04 07:19:05'),
(153, 3, 'Apoteker Apt mengonfirmasi biaya obat untuk resep ID: 4.', '2025-11-04 07:19:16'),
(154, 3, 'User Apt logout.', '2025-11-04 07:19:19'),
(155, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:19:24'),
(156, 5, 'Pasien Pas konfirmasi selesai (tanpa obat) untuk appt ID 4.', '2025-11-04 07:19:43'),
(157, 5, 'User Pas mengexport invoice ID 4 ke PDF.', '2025-11-04 07:19:49'),
(158, 5, 'User Pas logout.', '2025-11-04 07:20:01'),
(159, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:20:07'),
(160, 1, 'Admin Admin mengonfirmasi pembayaran ID: 4.', '2025-11-04 07:20:23'),
(161, 1, 'Admin Admin menonaktifkan user: Pas.', '2025-11-04 07:20:49'),
(162, 1, 'User Admin logout.', '2025-11-04 07:20:51'),
(163, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:20:56'),
(164, 5, 'User Pas mengirim pesan support.', '2025-11-04 07:21:05'),
(165, 5, 'User Pas logout.', '2025-11-04 07:21:09'),
(166, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:21:13'),
(167, 1, 'Admin Admin menandai pesan ID 2 sebagai Dibaca.', '2025-11-04 07:21:19'),
(168, 1, 'Admin Admin mengaktifkan kembali user: Pas.', '2025-11-04 07:21:25'),
(169, 1, 'User Admin logout.', '2025-11-04 07:21:28'),
(170, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:21:32'),
(171, 5, 'User Pas logout.', '2025-11-04 07:21:37'),
(172, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:21:41'),
(173, 1, 'User Admin logout.', '2025-11-04 07:22:36'),
(174, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:22:39'),
(175, 5, 'User Pas logout.', '2025-11-04 07:22:52'),
(176, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 07:22:55'),
(177, 2, 'User Dr logout.', '2025-11-04 07:27:02'),
(178, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:27:06'),
(179, 1, 'User Admin logout.', '2025-11-04 07:27:21'),
(180, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:28:02'),
(181, 1, 'Admin Admin menonaktifkan user: Dr.', '2025-11-04 07:28:09'),
(182, 1, 'Admin Admin mengaktifkan kembali user: Dr.', '2025-11-04 07:28:12'),
(183, 1, 'User Admin logout.', '2025-11-04 07:28:22'),
(184, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 07:28:31'),
(185, 2, 'Dokter Dr mengajukan penyelesaian jadwal ID 0c680011-a25d-4b79-80a8-fb695beeab0a.', '2025-11-04 07:29:00'),
(186, 2, 'User Dr logout.', '2025-11-04 07:29:05'),
(187, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:29:09'),
(188, 5, 'User Pas logout.', '2025-11-04 07:29:17'),
(189, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-04 07:29:22'),
(190, 3, 'User Apt logout.', '2025-11-04 07:29:33'),
(191, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-04 07:29:38'),
(192, 3, 'User Apt logout.', '2025-11-04 07:29:42'),
(193, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 07:29:47'),
(194, 1, 'Admin Admin mengonfirmasi penyelesaian jadwal ID 0c680011-a25d-4b79-80a8-fb695beeab0a.', '2025-11-04 07:30:14'),
(195, 1, 'User Admin logout.', '2025-11-04 07:30:36'),
(196, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-04 07:31:28'),
(197, 2, 'User Dr logout.', '2025-11-04 07:31:58'),
(198, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-04 07:32:03'),
(199, 5, 'User Pas logout.', '2025-11-04 07:32:22'),
(200, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-04 08:49:55'),
(201, 1, 'User Admin mengirim pesan support.', '2025-11-04 08:50:11'),
(202, 1, 'Admin Admin mengexport laporan kunjungan ke Excel.', '2025-11-04 08:50:20'),
(203, 1, 'Admin Admin menandai pesan ID 3 sebagai Dibaca.', '2025-11-04 08:50:41'),
(204, 1, 'Admin Admin menonaktifkan user: Pas.', '2025-11-04 08:50:49'),
(205, 1, 'User Admin mengupload foto profil.', '2025-11-04 08:51:15'),
(206, 1, 'User Admin mengupload foto profil.', '2025-11-04 08:51:42'),
(207, 1, 'User Admin mengupload foto profil.', '2025-11-04 08:51:50'),
(208, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 02:50:44'),
(209, 1, 'User Admin logout.', '2025-11-05 02:50:51'),
(210, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 02:50:55'),
(211, 5, 'User Pas logout.', '2025-11-05 02:50:59'),
(212, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 02:51:03'),
(213, 1, 'Admin Admin mengaktifkan kembali user: Pas.', '2025-11-05 02:51:07'),
(214, 1, 'User Admin logout.', '2025-11-05 02:51:09'),
(215, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 02:51:13'),
(216, 5, 'User Pas mengupload Foto Profil untuk pasien Ras.', '2025-11-05 03:05:12'),
(217, 5, 'User Pas mengupload Foto KTP untuk pasien Ras.', '2025-11-05 03:06:35'),
(218, 5, 'User Pas logout.', '2025-11-05 03:06:46'),
(219, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:06:50'),
(220, 1, 'User Admin logout.', '2025-11-05 03:07:03'),
(221, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-05 03:07:07'),
(222, 2, 'User Dr logout.', '2025-11-05 03:13:56'),
(223, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 03:13:59'),
(224, 5, 'User Pas mengupload Foto Profil, Foto KTP untuk pasien Ras.', '2025-11-05 03:14:16'),
(225, 5, 'User Pas mengupload Foto Profil, Foto KTP untuk pasien Ras.', '2025-11-05 03:17:51'),
(226, 5, 'User Pas mengupload Foto Profil, Foto KTP untuk pasien Ras.', '2025-11-05 03:29:08'),
(227, 5, 'User Pas mengexport invoice ID 4 ke PDF.', '2025-11-05 03:30:45'),
(228, 5, 'User Pas mengupload Foto Profil, Foto KTP untuk pasien Ras.', '2025-11-05 03:32:28'),
(229, 5, 'User Pas mengupload Foto Profil, Foto KTP untuk pasien Ras.', '2025-11-05 03:38:43'),
(230, 5, 'User Pas mengupload Foto Profil untuk pasien Ras.', '2025-11-05 03:43:10'),
(231, 5, 'User Pas logout.', '2025-11-05 03:46:25'),
(232, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:46:30'),
(233, 1, 'Admin Admin mengexport rekam medis pasien Ras ke PDF.', '2025-11-05 03:46:47'),
(234, 1, 'Admin Admin mengupload Foto Profil.', '2025-11-05 03:47:45'),
(235, 1, 'User Admin logout.', '2025-11-05 03:47:49'),
(236, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-05 03:47:55'),
(237, 2, 'User Dr mengirim pesan support.', '2025-11-05 03:48:01'),
(238, 2, 'Dokter Dr mengajukan 5 slot jadwal baru untuk tanggal 2025-11-22.', '2025-11-05 03:48:58'),
(239, 2, 'User Dr logout.', '2025-11-05 03:49:24'),
(240, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:49:29'),
(241, 1, 'Admin Admin menghapus pasien: Ras.', '2025-11-05 03:49:40'),
(242, 1, 'Admin Admin mengubah status pengajuan jadwal ID 4ee9a717-393f-496c-8086-f65f0f910b51 menjadi Approved.', '2025-11-05 03:49:53'),
(243, 1, 'User Admin logout.', '2025-11-05 03:49:55'),
(244, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:50:05'),
(245, 1, 'Admin Admin membuat ulang rekam medis untuk pasien: Pas.', '2025-11-05 03:50:10'),
(246, 1, 'User Admin logout.', '2025-11-05 03:50:15'),
(247, 4, 'User Dr2 berhasil login (tanpa 2FA).', '2025-11-05 03:50:22'),
(248, 4, 'User Dr2 melengkapi data profil.', '2025-11-05 03:50:30'),
(249, 4, 'Dokter Dr2 mengajukan 5 slot jadwal baru untuk tanggal 2025-11-15.', '2025-11-05 03:50:52'),
(250, 4, 'User Dr2 logout.', '2025-11-05 03:51:10'),
(251, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:51:15'),
(252, 1, 'Admin Admin mengubah status pengajuan jadwal ID e686568d-19dd-4252-87ab-07b301517dff menjadi Approved.', '2025-11-05 03:52:08'),
(253, 1, 'Admin Admin memverifikasi data profil staf: Dr2.', '2025-11-05 03:52:18'),
(254, 1, 'Admin Admin menonaktifkan user: Dr2.', '2025-11-05 03:52:32'),
(255, 1, 'User Admin logout.', '2025-11-05 03:52:34'),
(256, 4, 'User Dr2 berhasil login (tanpa 2FA).', '2025-11-05 03:52:40'),
(257, 4, 'User Dr2 mengirim pesan support.', '2025-11-05 03:52:44'),
(258, 4, 'User Dr2 logout.', '2025-11-05 03:52:47'),
(259, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:52:51'),
(260, 1, 'Admin Admin mengaktifkan kembali user: Dr2.', '2025-11-05 03:52:58'),
(261, 1, 'User Admin logout.', '2025-11-05 03:53:00'),
(262, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 03:53:05'),
(263, 5, 'User Pas logout.', '2025-11-05 03:53:13'),
(264, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:53:18'),
(265, 1, 'User Admin logout.', '2025-11-05 03:53:30'),
(266, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 03:53:34'),
(267, 5, 'User Pas melengkapi data profil.', '2025-11-05 03:53:40'),
(268, 5, 'User Pas logout.', '2025-11-05 03:53:43'),
(269, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 03:53:47'),
(270, 1, 'Admin Admin memverifikasi pasien baru: Pas dan membuat rekam medis.', '2025-11-05 03:53:50'),
(271, 1, 'Admin Admin membuat user baru: Dr3 (dokter).', '2025-11-05 03:58:34'),
(272, 1, 'User Admin logout.', '2025-11-05 03:58:36'),
(273, 8, 'User Dr3 berhasil login (tanpa 2FA).', '2025-11-05 03:58:42'),
(274, 8, 'User Dr3 melengkapi data profil.', '2025-11-05 04:01:00'),
(275, 8, 'User Dr3 logout.', '2025-11-05 04:01:02'),
(276, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 04:01:06'),
(277, 1, 'Admin Admin memverifikasi data profil staf: Dr3.', '2025-11-05 04:01:09'),
(278, 1, 'User Admin logout.', '2025-11-05 04:01:13'),
(279, 8, 'User Dr3 berhasil login (tanpa 2FA).', '2025-11-05 04:01:21'),
(280, 8, 'User Dr3 logout.', '2025-11-05 04:01:30'),
(281, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 04:01:33'),
(282, 5, 'Pasien Pas membuat janji temu pada slot ID 15.', '2025-11-05 04:01:41'),
(283, 5, 'User Pas logout.', '2025-11-05 04:01:52'),
(284, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-05 04:01:57'),
(285, 2, 'Dokter menyelesaikan konsultasi ID 5.', '2025-11-05 04:02:25'),
(286, 2, 'Dokter Dr menambahkan rekam medis dan biaya konsultasi untuk pasien Ras.', '2025-11-05 04:02:25'),
(287, 2, 'Dokter Dr mengajukan penyelesaian jadwal ID 4ee9a717-393f-496c-8086-f65f0f910b51.', '2025-11-05 04:02:40'),
(288, 2, 'User Dr logout.', '2025-11-05 04:02:43'),
(289, 3, 'User Apt berhasil login (tanpa 2FA).', '2025-11-05 04:02:47'),
(290, 3, 'Apoteker Apt mengonfirmasi biaya obat untuk resep ID: 5.', '2025-11-05 04:02:51'),
(291, 3, 'User Apt logout.', '2025-11-05 04:02:56'),
(292, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 04:03:00'),
(293, 5, 'Pasien Pas konfirmasi selesai (tanpa obat) untuk appt ID 5.', '2025-11-05 04:03:13'),
(294, 5, 'User Pas mengexport invoice ID 5 ke PDF.', '2025-11-05 04:03:17'),
(295, 5, 'User Pas logout.', '2025-11-05 04:03:26'),
(296, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 04:03:31'),
(297, 1, 'Admin Admin mengonfirmasi pembayaran ID: 5.', '2025-11-05 04:03:39'),
(298, 1, 'User Admin logout.', '2025-11-05 04:03:41'),
(299, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 04:03:45'),
(300, 5, 'User Pas logout.', '2025-11-05 04:03:58'),
(301, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-05 04:04:03'),
(302, 2, 'Dokter Dr mengupload dokumen other untuk pasien Ras.', '2025-11-05 04:04:36'),
(303, 2, 'User Dr logout.', '2025-11-05 04:04:57'),
(304, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 04:05:02'),
(305, 1, 'User Admin logout.', '2025-11-05 04:05:14'),
(306, 2, 'User Dr berhasil login (tanpa 2FA).', '2025-11-05 04:05:19'),
(307, 2, 'User Dr logout.', '2025-11-05 04:05:44'),
(308, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 04:05:50'),
(309, 1, 'Admin Admin mengonfirmasi penyelesaian jadwal ID 4ee9a717-393f-496c-8086-f65f0f910b51.', '2025-11-05 04:06:22'),
(310, 1, 'User Admin logout.', '2025-11-05 04:06:25'),
(311, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 04:06:33'),
(312, 1, 'User Admin logout.', '2025-11-05 04:41:42'),
(313, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-05 04:45:27'),
(314, 1, 'Admin Admin menandai pesan ID 4 sebagai Dibaca.', '2025-11-05 04:54:38'),
(315, 1, 'Admin Admin menandai pesan ID 5 sebagai Dibaca.', '2025-11-05 04:54:40'),
(316, 1, 'User Admin logout.', '2025-11-05 04:55:27'),
(317, 5, 'User Pas berhasil login (tanpa 2FA).', '2025-11-05 05:05:02'),
(318, 5, 'User Pas logout.', '2025-11-05 05:05:06'),
(319, NULL, 'Pasien baru \"1212121212\" berhasil registrasi dan menunggu verifikasi.', '2025-11-06 07:45:00'),
(320, 9, 'User 1212121212 berhasil login (tanpa 2FA).', '2025-11-06 07:45:13'),
(321, 9, 'User 1212121212 logout.', '2025-11-06 08:14:22'),
(322, 1, 'User Admin berhasil login (tanpa 2FA).', '2025-11-06 08:30:05'),
(323, 5, 'Pasien Pas berhasil login (tanpa 2FA).', '2025-11-06 12:15:02'),
(324, 5, 'User Pas mengupload Foto Profil, Foto KTP untuk pasien Ras.', '2025-11-06 12:15:24'),
(325, 5, 'User Pas mengexport invoice ID 5 ke PDF.', '2025-11-06 12:15:34'),
(326, 5, 'User Pas (pasien) logout.', '2025-11-06 12:15:38'),
(327, NULL, 'Login pasien gagal: pasdwadaw', '2025-11-06 12:15:55'),
(328, 1, 'Staff Admin (admin) berhasil login (tanpa 2FA).', '2025-11-06 12:16:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medical_document`
--

CREATE TABLE `medical_document` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `description` text,
  `uploaded_by` int(11) NOT NULL,
  `upload_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `medical_record_number` varchar(20) NOT NULL,
  `full_name_encrypted` blob NOT NULL,
  `date_of_birth_encrypted` blob NOT NULL,
  `address_encrypted` blob NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `ktp_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `patient`
--

INSERT INTO `patient` (`id`, `medical_record_number`, `full_name_encrypted`, `date_of_birth_encrypted`, `address_encrypted`, `user_id`, `profile_photo`, `ktp_photo`) VALUES
(2, 'RM-20251103151608-7', 0x67414141414142704347544971363046416d33793734384e376265547848646d32656543784e344766733254585041764f467a384d306e4c53343576374e5134617942726f6b306d4c5a4c634c4141495f314a4c4159373549733768664d51694c513d3d, 0x67414141414142704347544946685f34336741674f56324e38795366754c766f524776434646506141483079314773317738624476704b387552625f4d58547566757248716257624b71526445776c7352475a734c655335545646626f74574b58773d3d, 0x674141414141427043475449466658546e4a6c6e614e7679615256417649456642437a794f34726c4133796c6a6975337243356f65796a394b516f684e7962384b445f7178594e444f30534c53445231336d6c4c7877614c656870414d61524431364b345132713357323551733675384838425130416b3d, 7, NULL, NULL),
(3, 'RM-20251103161041-6', 0x6741414141414270434847527872534a6e53434433764759557736373834436f4b6b4a375a714f6a6f6a476453586548436563493545673471616672364e4537322d5863574444303650675a6e56557333712d5f70704c4d4358795731696f4c6a773d3d, 0x67414141414142704348475277725a77633376484a724b323049356a317978743042336c6a4c706a6d67374651323866327a386d70327848535067373376585067447a62574756554d6c346b4372374c77575859525a69586332474a7a4b4c3258413d3d, 0x674141414141427043484752777942766b4b706942474b4e6342726662466f685a4455655a3864536f32524d7975443054345a4432465664415441514377397154746943615673596d47375449305f3758316f76634674586d6e5a6939364b587834562d33514954375f72454d324930485141366759733d, 6, NULL, NULL),
(4, 'RM-20251105105010-5', 0x674141414141427043737045347674655f77626674353031504c3932784b4b48787a486262654d5a6b6657507636445239622d4e5939535f59767838513247687149507461415f51374b6a324771546b4d4f46704579535255586c7464466e394c673d3d, 0x67414141414142704373704577437a696c52633678584977304963674e556d4775497477706b74705f4f7639344e735a364438737946584c737a676b317165677a395f51336f4737596e546a614678395f336f51633354354a693639477233536f673d3d, 0x6741414141414270437370455f7a784e336a547a7765414e62746a455253574167677248466b58687069757033514f497038386348637052626a493063694e533667745067614b7469336f596b47764735704f554344534e6f745f775a7348654c413d3d, 5, 'profiles/profile_4_20251106191524_5577715448_8597349706_1762362466275.png', 'ktp/ktp_4_20251106191524_5577715448_137456492528027_1762361111526.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `patient_document`
--

CREATE TABLE `patient_document` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `file_size` int(11) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `upload_date` datetime NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `patient_document`
--

INSERT INTO `patient_document` (`id`, `patient_id`, `document_type`, `file_name`, `file_path`, `file_size`, `uploaded_by`, `upload_date`, `description`) VALUES
(1, 4, 'other', '5577715448_130981944181791_1762278365539.png', 'documents/doc_4_20251105110436_5577715448_130981944181791_1762278365539.png', 2063823, 2, '2025-11-05 04:04:36', 'aw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal_lunas` datetime DEFAULT NULL,
  `biaya_konsultasi` float DEFAULT NULL,
  `biaya_obat` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `visit_id`, `status`, `tanggal_lunas`, `biaya_konsultasi`, `biaya_obat`) VALUES
(2, 2, 'Lunas', '2025-11-03 08:21:25', 1500000, 0),
(5, 5, 'Lunas', '2025-11-05 04:03:39', 1000000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_support`
--

CREATE TABLE `pesan_support` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subjek` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan_support`
--

INSERT INTO `pesan_support` (`id`, `user_id`, `subjek`, `pesan`, `status`, `timestamp`) VALUES
(1, 6, 'Marah', 'Min kena goreng', 'Sudah Dibaca', '2025-11-03 08:01:42'),
(2, 5, 'Aktifkan kembali akun saya', 'AKUNNN PP', 'Sudah Dibaca', '2025-11-04 07:21:05'),
(3, 1, 'Aktifkan kembali akun saya', 'dd', 'Sudah Dibaca', '2025-11-04 08:50:11'),
(4, 2, 'Tes', 'Tes', 'Sudah Dibaca', '2025-11-05 03:48:01'),
(5, 4, 'Tes', 'Tes', 'Sudah Dibaca', '2025-11-05 03:52:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep_obat`
--

CREATE TABLE `resep_obat` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `detail_resep` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resep_obat`
--

INSERT INTO `resep_obat` (`id`, `visit_id`, `detail_resep`, `status`) VALUES
(2, 2, 'etanol', 'Selesai'),
(5, 5, 'E', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soap_note`
--

CREATE TABLE `soap_note` (
  `id` int(11) NOT NULL,
  `subjective` text,
  `objective` text,
  `assessment` text,
  `plan` text,
  `visit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soap_note`
--

INSERT INTO `soap_note` (`id`, `subjective`, `objective`, `assessment`, `plan`, `visit_id`) VALUES
(2, 'digigit anjing', 'luka parah termasuk hati', 'bahaya untuk kesehatan lanjutan', 'operasi hati', 2),
(5, 'a', 'b', 'c', 'd', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `role` varchar(50) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `nik_encrypted` blob,
  `full_name_encrypted` blob,
  `contact_encrypted` blob,
  `date_of_birth_encrypted` blob,
  `address_encrypted` blob,
  `verification_status` varchar(50) DEFAULT NULL,
  `otp_secret` varchar(32) DEFAULT NULL,
  `is_active_db` tinyint(1) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `ktp_scan` varchar(255) DEFAULT NULL,
  `dark_mode` tinyint(1) DEFAULT '0',
  `failed_login_attempts` int(11) DEFAULT '0',
  `last_failed_login` datetime DEFAULT NULL,
  `account_locked_until` datetime DEFAULT NULL,
  `ktp_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password_hash`, `role`, `email`, `nik_encrypted`, `full_name_encrypted`, `contact_encrypted`, `date_of_birth_encrypted`, `address_encrypted`, `verification_status`, `otp_secret`, `is_active_db`, `profile_photo`, `ktp_scan`, `dark_mode`, `failed_login_attempts`, `last_failed_login`, `account_locked_until`, `ktp_photo`) VALUES
(1, 'Admin', 'scrypt:32768:8:1$YRxU28UymHFBtrB3$bd8d4fdfb7aa5eb2cb25749af1f57cd9212e469fcff6e7a1fb6c8c86389df05da73c7d3f9c4fc55ff132a93296ae64dc508b326156f3fc5dd39bdd1af9047269', 'admin', NULL, 0x674141414141427043464b43625344694f565876733565652d45484145596c484979627a316c4e335851733270426775716c576a4d725148736e65424f426e66736b4c4a6635724e52675a70595f7753362d3651736f374174583943416e34526b513d3d, 0x674141414141427043464b436a4c556e5979654c716c4c5a33306f5a3479436577346c7437545f6b4643594e56596b62494d485368644b4d576765724a3931657a78533867495867616f3066394c636630456d763073616e535032726c7735554f773d3d, 0x674141414141427043464b436b5f4b38464479545244504c5f58387071565548633263433770462d5773574230307847344c56665935537947784d2d592d4a796c6138567273644a6b58396d4d386f536b326434483150426570796d546d6b5a2d413d3d, 0x674141414141427043464b43334d497435706c764f7951347043684748464c7568366178596d7535646a54357579587235667552564a69416e6436795f6f4648346f76794768356b6a7742384142624f666a32436673585f737934414d315f6337413d3d, 0x674141414141427043464b4368714c2d4f587a4f496236545f665758343873514d35697479305351786854684f397375377734566e4732426d43624b4271505349486459677166483341794c77476c336a635a616d345431484a6c6c41676a4341513d3d, 'aktif', NULL, 1, 'profiles/staff_profile_1_20251105104745_5577715448_130981944181791_1762281658685.png', NULL, 1, 0, NULL, NULL, NULL),
(2, 'Dr', 'scrypt:32768:8:1$pBZsigjixzgxm5hG$eef0077e029061682d31541885be193327707da4d08e40353fd68fe3525ced866e68526586159698a9ed1561dd2b907601457daf731a5fe3868f23ad412f7a53', 'dokter', 'rrffrarfrraras4@gmail.com', 0x674141414141427043464e4756456f745975327534756841516c506875706a52717a3459396b4b4d6b4955515a63346f38386b4157357777574439444f35476c557a6c4b45307565455f5837686454704d6955386d73576473506a55326b4b3474413d3d, 0x674141414141427043464e475473572d4f6c453379386b4e51466431493159623334347972316b766168706f3772514b6e6c4d50766732646c4a4d777033744d7a666b4d314f446357396b344d446a665f547448634a75776162484c65384b6a58773d3d, 0x674141414141427043464e476c734b6e3171356432336d34466a6448354c3448354d345f72356451637839775a77382d41324a73437736774c545f73364b3374514631693666335a4a7343615241384f6a44423930776d4e6d437938655242412d513d3d, 0x674141414141427043464e475674396f2d4952784941526779597173763464414e3832796364574645684d6634676950785479535631396a4d3530417461796b71764f38686137504b7155535950777875494147463539416458697a586f617971413d3d, 0x674141414141427043464e4768745172797a49615863683144434a32626f3234625a466f3032384c735278595a79797479545a6b44703370692d337366567834643869774f575f593663487a4f506274776b74343946507359354339654c724743673d3d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(3, 'Apt', 'scrypt:32768:8:1$DtmqOYtvcQHFBFSE$75f2dc0164778a34e03929d2c23ee2ba6a999ddaaa53ed16fe5fd48d1a041fdda8957a3877f69fa683f5d648bf21e36c13716be7c1c22ef8afdced395715548b', 'apoteker', 'rrffrarfrraras3@gmail.com', 0x674141414141427043464e7379454b5345516d676f497a4b4e484c6a503133513445337347414a343239576538657865433370517839746c6c34774c4b7058385845713132463131486a79375f646a5834334b597332314d5031635a47637a4d46673d3d, 0x674141414141427043464e734c62627175676868366c4d7a4d747475707067725943696f4a344f336d54654d546f534c6c79676a326f6c482d726f32666962353633422d316d5f2d694243495a5763513770447261645361482d6f7834386e5974513d3d, 0x674141414141427043464e736f634f4e524d49476f43453541653677442d7a64386c5264666773424c636c584b545f477169743742726875514d6d306b524f74703636685f423152464844474773754c4f70496c44633878626e636a4539564171513d3d, 0x674141414141427043464e73437669364f65566e574c4c495277714143534a454838343539665466426455644a59345779664164494536497138636954654736796b3174765366344a4d41356d5671397a7a4c734c5570706c325f4558704a6b4d513d3d, 0x674141414141427043464e735434773857576456365359734b396c53724e417943534e2d6a646c654d5f47316748496445726e585566365f34384670587a69353869653972596f5831343938394843756a55315a6d4457766143725f7378502d72413d3d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(4, 'Dr2', 'scrypt:32768:8:1$7TaqQCTGj0cUv3wC$4f6746669b140148028202f580cfb1cf45fa5b9d468c46bce08ed2167a4a38fdff424c7f8e727150046a287c9b50ebc774c6e711f975ee183d1a4a650362aac9', 'dokter', 'rrffrarfrraras@gmail.com', 0x674141414141427043736d474d68696e70375f385174557657594d59725f6165426e4c526336705f3341657a727763356f747467464737386a734c3670776a7a48773358563267634c544e5a4449454272795f6d4c523775646a496858792d4766673d3d, 0x674141414141427043736d476b716570696958765043486d68396c6436435438513843524a573374746f6e713453464f4e353731336d4839496f44555a497538376f2d5a35555044674d50703743567336645f435952516270564a576c52323139413d3d, 0x674141414141427043736d4745476d3233777237502d5f4d2d4c7a4c5f63423234594868797a51786f64574958715274794566493565617a3747464355495a34704f4b65397a41414a7a656748386f507838616b724b776c4d4973504155672d6e773d3d, 0x674141414141427043736d47496154576370415f7747564c5f38372d4a5645317a5731657954784f51316a364a776247596975667033696d4e7244774a57684f43357269527a6e6a72716f5a353351676d36364b664b76735f734f79415f625273513d3d, 0x674141414141427043736d474a6d6a796b764b4b41386a6276754468324332637871716d486244326f363757745f344176756f746e4445395f32396e61433977623250466371725659473370683450695f4c6a7a31563839576764394f45334b4a773d3d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(5, 'Pas', 'scrypt:32768:8:1$C7m1SJdFB9eIFsXz$8dd836bf4e48c328b654743190cfa1f9de6fcd1def25d5d7a41a4c51092fc273325818ac01132669c48ff80bfc2a273e7cae3b5c7fd0e99a62ab5000d2cae45d', 'pasien', 'rrrffrrararf@gmail.com', 0x6741414141414270437370454e306a5f575a6e79666a6b777146696259306d4a774e33543737436f34573663764d7a56766253466c45597a317a57697565775a4e43754a355f356f754175506c386f6f6e3651797a7a615451717a4e33334b3167413d3d, 0x674141414141427043737045347674655f77626674353031504c3932784b4b48787a486262654d5a6b6657507636445239622d4e5939535f59767838513247687149507461415f51374b6a324771546b4d4f46704579535255586c7464466e394c673d3d, 0x6741414141414270437370455462686d766e5076634453656c39384b5234764f456544684670484179483773517a6a627337677155447a4f6648707578564531756c6f7548494d444d304342516e5f453868544a6a622d307054556b7a33303734413d3d, 0x67414141414142704373704577437a696c52633678584977304963674e556d4775497477706b74705f4f7639344e735a364438737946584c737a676b317165677a395f51336f4737596e546a614678395f336f51633354354a693639477233536f673d3d, 0x6741414141414270437370455f7a784e336a547a7765414e62746a455253574167677248466b58687069757033514f497038386348637052626a493063694e533667745067614b7469336f596b47764735704f554344534e6f745f775a7348654c413d3d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(6, '12345', 'scrypt:32768:8:1$MZhmbIo2a7sQZ38W$d200c6ef5e7b3ed93e632d55cb8bc6378ddfe01de76cf84ecc1b3347ad4cd8decdc621acf7d8fd3448fc0660692085d658660440c2c2016e9f68c1d9844027aa', 'pasien', 'armadaohio25@gmail.com', 0x67414141414142704347464a43415553717769594166794a4a2d6a614f4237726c4e6a6c554f76736d495f383475337559653369523148365a755776797836456c422d7869306a6756764c56584a4c72746e6f4d47734148424664464e766c636e413d3d, 0x67414141414142704347464a314f77747868414950343449413141385f79507a787844624d31675579792d585a3132354e51486c7044323833567a4b3134424f4644597753736f324e5267756678726467506a5f465865525a64707a7061305a4e773d3d, 0x67414141414142704347464a513446654174324e6c78796434726a357467504e6c347443526a744846564b415a4b465a694557322d35467946424a62315076736d4777573448706862654e4b684855616e57435358376b5a4b724f655861303767413d3d, 0x67414141414142704347464a696f48734a5134424265457861675675656436643556416d496f38533349536761725a7a583263396e3670777478593637676d763637716578502d4678565649646a76374336586b6272693075466356336343455f673d3d, 0x67414141414142704347464a59346a496832384755515773325438395a314438794f3854706e59694a4579476c6c4c4a6241332d6632347a557745436263696e594a58775648534a6c765574775776654230644b38765877396f7a434462375939513d3d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(7, 'asep', 'scrypt:32768:8:1$vx87VRKFKj4mlPzo$8e03b76fe5d9e3c74c42472082fd7bb024e35d03b1e95308ca176a168fa037fabc6822eabdd44ba78d04b46a5dc244fe26712bdedd2fcec72b5a046edb267b1a', 'pasien', 'refaltrimas@gmail.com', 0x674141414141427043475352494d4b6462647a5a744c4b495952614b4c34347430495f63615934747971415379714d696a6338782d634167615f335863636b3036676447434a6c6879494734374a43583841314859724f565536654343694670645541625a4d59474769494c4f43316c5a4241383543633d, 0x6741414141414270434753526b7064784977784d63644a4d375f6a3037372d35555a334769677368347963436d6972515656527570676c446e69696664586d7353677349376678655232324b5f4662765831346d30516d5f792d64636237624b6d673d3d, 0x674141414141427043475352643547574e44354f7361355f663742686c35715f7238534b65344e4b463242387a5865744448345561556259765f455862556a555347646e645450634a56564c355773415f56625f357a5654516c33796e75373235673d3d, 0x6741414141414270434753524161487238487054587a584b38377843517449477949496f70466e55734e3877536f546b53306439634e477831446178587855686150377971794a316145756c79666f4c55754a455246537757432d5f465f47534c773d3d, 0x674141414141427043475352543956704135696c45706532584d445055376d4236753033534557695457446759794a75597052435066466a6b426569537742735f734c5a585274734d555731393861644262596e387841436934634e506467796a4139765a53795359786b366230547a766f526b776a453d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(8, 'Dr3', 'scrypt:32768:8:1$Z4KgHeVfK2qQOq5w$24a574cdbf1e77dc69043df489dd6e14a4b11ddf4b0c290b428bff6a718e6345618cbdd92b7bdfe2dcf393e6ea58bf3fecf119bcbeabc5d6790d83adebeaa3e7', 'dokter', 'rrffrarfrraras1@gmail.com', 0x6741414141414270437376384245335a725a4a736155675f576b67477145447a747045766e4c364f78315a626472667042484746544e57506c41623374466732786854645f6255594b3562587038325f7857795636646c56364e7a7967446b6650773d3d, 0x67414141414142704373763874304b78417030465839786e2d3439336958507853446b382d6931374e6f764436576e453542305263734c36334947366d5241616c534230344a6f7366367432313844317834474c65315f793567616b6f52665764673d3d, 0x674141414141427043737638504a493542766733763742524d393331595663614e4641357179505061387943316a746470472d4e6a567839654d6e4736565a65524c74774b354c43366a417754713230662d535772544667633635763341697379413d3d, 0x6741414141414270437376384d4e6e4570616e612d365435536e72677730334a544b7a317857577578596a303967344f516f4537454238645561413143694c77655f6c30513479516e4e6661365a6445614b5033466564347430766d596a416f39773d3d, 0x67414141414142704373763834796c796a6868666f595954545863536969426e5769306c4c7573367a664e63723565622d5f497271526e34564d6333746a347879674648616643705461487a6a7778636232654457624265714251627271696e72673d3d, 'aktif', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL),
(9, '1212121212', 'scrypt:32768:8:1$wX0WU5dzYov7tkSP$c09a4d34a8def972c6bdba2ff3bae4a987b8c5c6dbf6086b3594127b836b2416e91444bd129297df2728affccf7e146c0559180c191386746126bb5f75a43a62', 'pasien', NULL, NULL, NULL, NULL, NULL, NULL, 'belum diverifikasi', NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `visit_date` datetime NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visit`
--

INSERT INTO `visit` (`id`, `visit_date`, `patient_id`, `doctor_id`, `appointment_id`) VALUES
(2, '2025-11-03 08:20:16', 2, 2, 2),
(5, '2025-11-05 04:02:25', 4, 2, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `appointment_slot`
--
ALTER TABLE `appointment_slot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `log_audit`
--
ALTER TABLE `log_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `medical_document`
--
ALTER TABLE `medical_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medical_record_number` (`medical_record_number`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `patient_document`
--
ALTER TABLE `patient_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`);

--
-- Indexes for table `pesan_support`
--
ALTER TABLE `pesan_support`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`);

--
-- Indexes for table `soap_note`
--
ALTER TABLE `soap_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointment_id` (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment_slot`
--
ALTER TABLE `appointment_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `log_audit`
--
ALTER TABLE `log_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `medical_document`
--
ALTER TABLE `medical_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_document`
--
ALTER TABLE `patient_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesan_support`
--
ALTER TABLE `pesan_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resep_obat`
--
ALTER TABLE `resep_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `soap_note`
--
ALTER TABLE `soap_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `appointment_slot`
--
ALTER TABLE `appointment_slot`
  ADD CONSTRAINT `appointment_slot_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `appointment_slot_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`);

--
-- Ketidakleluasaan untuk tabel `log_audit`
--
ALTER TABLE `log_audit`
  ADD CONSTRAINT `log_audit_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `medical_document`
--
ALTER TABLE `medical_document`
  ADD CONSTRAINT `medical_document_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `medical_document_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `patient_document`
--
ALTER TABLE `patient_document`
  ADD CONSTRAINT `patient_document_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_document_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);

--
-- Ketidakleluasaan untuk tabel `pesan_support`
--
ALTER TABLE `pesan_support`
  ADD CONSTRAINT `pesan_support_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD CONSTRAINT `resep_obat_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);

--
-- Ketidakleluasaan untuk tabel `soap_note`
--
ALTER TABLE `soap_note`
  ADD CONSTRAINT `soap_note_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);

--
-- Ketidakleluasaan untuk tabel `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `visit_ibfk_3` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
