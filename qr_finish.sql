-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 02:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_finish`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_mahasiswa`
--

CREATE TABLE `absensi_mahasiswa` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `hadir` tinyint(1) NOT NULL DEFAULT 0,
  `qr_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nid` varchar(10) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `id_user`, `nid`, `nama_dosen`, `email`) VALUES
(1, 3, '43434', 'Diana Talakua', 'dosen@gmail.com'),
(1512, 1512, '1512', 'ENDAH KRISTIANI', 'endah.kristiani@ukrida.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `history_absensi_mahasiswa`
--

CREATE TABLE `history_absensi_mahasiswa` (
  `history_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `id_matkul` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `hadir` tinyint(1) DEFAULT NULL,
  `qr_code_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_absensi_mahasiswa`
--

INSERT INTO `history_absensi_mahasiswa` (`history_id`, `id`, `id_mahasiswa`, `id_matkul`, `id_dosen`, `tanggal`, `hadir`, `qr_code_id`, `timestamp`) VALUES
(62, NULL, 7, 1, 1, '2024-01-11', 1, NULL, '2024-01-11 06:03:48'),
(63, NULL, 7, 2, 1, '2024-01-11', 1, NULL, '2024-01-11 06:04:39'),
(66, NULL, 2, 1, 1, '2024-01-13', 1, NULL, '2024-01-13 09:29:05'),
(67, NULL, 412020001, 3, 1512, '2024-01-13', 1, NULL, '2024-01-13 12:07:50'),
(70, NULL, 412020002, 3, 1512, '2024-01-13', 1, NULL, '2024-01-13 13:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id`, `id_mahasiswa`, `id_matkul`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(7, 7, 1),
(8, 7, 2),
(9, 412020001, 3),
(10, 412020002, 3),
(11, 412020004, 3),
(12, 412020005, 3),
(13, 412020006, 3),
(14, 412020007, 3),
(15, 412020009, 3),
(16, 412020012, 3),
(17, 412020008, 3),
(18, 412019022, 3),
(19, 412020031, 3),
(20, 412020025, 3),
(21, 412020033, 3),
(22, 412018026, 3),
(23, 412020037, 3),
(24, 412019038, 3),
(25, 412019033, 3),
(26, 412020010, 3),
(27, 412020014, 3),
(28, 412020015, 3),
(29, 412020016, 3),
(30, 412020019, 3),
(31, 412020022, 3),
(32, 412020023, 3),
(33, 412020027, 3),
(34, 412020003, 3),
(35, 412020011, 3),
(36, 412020018, 3),
(37, 412020032, 3),
(38, 412020035, 3),
(39, 412020030, 3),
(40, 412018019, 3),
(41, 412018001, 3),
(42, 412018014, 3),
(43, 412020017, 3),
(44, 412019005, 3),
(45, 412019041, 3),
(46, 412019017, 3),
(47, 412019030, 3),
(48, 412019049, 3),
(49, 412019021, 3),
(50, 412018015, 3),
(51, 412020001, 4),
(52, 412020002, 4),
(53, 412020004, 4),
(54, 412020005, 4),
(55, 412020006, 4),
(56, 412020007, 4),
(57, 412020009, 4),
(58, 412020012, 4),
(59, 412020008, 4),
(60, 412019022, 4),
(61, 412020031, 4),
(62, 412020025, 4),
(63, 412020033, 4),
(64, 412018026, 4),
(65, 412020037, 4),
(66, 412019038, 4),
(67, 412019033, 4),
(68, 412020010, 4),
(69, 412020014, 4),
(70, 412020015, 4),
(71, 412020016, 4),
(72, 412020019, 4),
(73, 412020022, 4),
(74, 412020023, 4),
(75, 412020027, 4),
(76, 412020003, 4),
(77, 412020011, 4),
(78, 412020018, 4),
(79, 412020032, 4),
(80, 412020035, 4),
(81, 412020030, 4),
(82, 412018019, 4),
(83, 412018001, 4),
(84, 412018014, 4),
(85, 412020017, 4),
(86, 412019005, 4),
(87, 412019041, 4),
(88, 412019017, 4),
(89, 412019030, 4),
(90, 412019049, 4),
(91, 412019021, 4),
(92, 412018015, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `milis` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `id_user`, `nama_mahasiswa`, `nim`, `milis`, `email`) VALUES
(1, 1, 'Filipus Christian Zalukhu', '412017015', '2023', 'filipuscz@gmail.com'),
(2, 2, 'mahasiswa', '412017015', '2023', 'filipuscz@gmail.com'),
(3, 5, 'csscsc', '456646', '2022', 'filipuscz@gmail.com'),
(4, 6, 'Reynaldo', '4545454', '2021', 'rey@gmail.com'),
(7, 7, 'nnn', '41201788', 'dsdasd', 'saasd'),
(412018001, 412018001, 'JOSHUA SEPTIAN NATHANAEL BANU', '412018001', 'milis_joshua', 'joshua@gmail.com'),
(412018014, 412018014, 'JERHANS JORDAN MABILAKA', '412018014', 'milis_jerhans', 'jerhans@gmail.com'),
(412018015, 412018015, 'REYNALDO FRANSISCUS ANAKOTTA', '412018015', 'milis_reynaldo', 'reynaldo@gmail.com'),
(412018019, 412018019, 'ADITYA YOGA PRATAMA', '412018019', 'milis_aditya', 'aditya@gmail.com'),
(412018026, 412018026, 'AHULDA EVELYN DUTU', '412018026', 'milis_ahulda', 'ahulda@gmail.com'),
(412019005, 412019005, 'VIRIYA DHIKA', '412019005', 'milis_viriya', 'viriya@gmail.com'),
(412019017, 412019017, 'UMBU GAMMALIEL HUNGA NGGULI', '412019017', 'milis_umbu', 'umbu@gmail.com'),
(412019021, 412019021, 'BILLY ANANDA', '412019021', 'milis_billy', 'billy@gmail.com'),
(412019022, 412019022, 'JONATHAN EKA ANGGIAT HAPOSAN', '412019022', 'milis_jonathan', 'jonathan@gmail.com'),
(412019030, 412019030, 'YOSIA RIVAN PRATAMA', '412019030', 'milis_yosia', 'yosia@gmail.com'),
(412019033, 412019033, 'YEHEZKIEL PUTRA ALEXANDRA', '412019033', 'milis_yehezkiel', 'yehezkiel@gmail.com'),
(412019038, 412019038, 'ANJELINA AGUSTANAYAE', '412019038', 'milis_anjelina', 'anjelina@gmail.com'),
(412019041, 412019041, 'MICHAEL VALIANT TIMOTHY', '412019041', 'milis_michael', 'michael@gmail.com'),
(412019049, 412019049, 'MCGIRT UNIPLAITA', '412019049', 'milis_mcgirt', 'mcgirt@gmail.com'),
(412020001, 412020001, 'NICO SANJAYA', '412020001', 'milis_nico', 'nico@gmail.com'),
(412020002, 412020002, 'ELVIN JUSTIN', '412020002', 'milis_elvin', 'elvin@gmail.com'),
(412020003, 412020003, 'LISA CRISTIANA', '412020003', 'milis_lisa', 'lisa@gmail.com'),
(412020004, 412020004, 'SANTIAGO', '412020004', 'milis_santiago', 'santiago@gmail.com'),
(412020005, 412020005, 'ANDU DARMAWAN', '412020005', 'milis_andu', 'andu@gmail.com'),
(412020006, 412020006, 'NATHAN SEPTIAN', '412020006', 'milis_nathan', 'nathan@gmail.com'),
(412020007, 412020007, 'RYAN IMMANUEL', '412020007', 'milis_ryan', 'ryan@gmail.com'),
(412020008, 412020008, 'CRISTHA PATRISYA PENTURY', '412020008', 'milis_cristha', 'cristha@gmail.com'),
(412020009, 412020009, 'YOHANES STEFANUS', '412020009', 'milis_yohanes', 'yohanes@gmail.com'),
(412020010, 412020010, 'DIANA NOVITA TALAKUA', '412020010', 'milis_diana', 'diana@gmail.com'),
(412020011, 412020011, 'VANEZA ANGELICA CITRA', '412020011', 'milis_vaneza', 'vaneza@gmail.com'),
(412020012, 412020012, 'ALBERT SAPUTRA ZEBUA', '412020012', 'milis_albert', 'albert@gmail.com'),
(412020014, 412020014, 'Abhy Gunawan', '412020014', 'milis_abhy', 'abhy@gmail.com'),
(412020015, 412020015, 'FELIX SAVERO', '412020015', 'milis_felix', 'felix@gmail.com'),
(412020016, 412020016, 'MAHESA RAFIAN SYAH', '412020016', 'milis_mahesa', 'mahesa@gmail.com'),
(412020017, 412020017, 'RAFLI DWI PUTRA', '412020017', 'milis_rafli', 'rafli@gmail.com'),
(412020018, 412020018, 'NATASHA CHRIS PRASETYOWATI', '412020018', 'milis_natasha', 'natasha@gmail.com'),
(412020019, 412020019, 'LEONARDO LANGUJU', '412020019', 'milis_leonardo', 'leonardo@gmail.com'),
(412020022, 412020022, 'JORDAN YUSSAC HARYANTO', '412020022', 'milis_jordan', 'jordan@gmail.com'),
(412020023, 412020023, 'FARRELL LIKO TANLIMHUIJAYA', '412020023', 'milis_farrell', 'farrell@gmail.com'),
(412020025, 412020025, 'ESTER FEBIOLA', '412020025', 'milis_ester', 'ester@gmail.com'),
(412020027, 412020027, 'JONATAN SIANTURI', '412020027', 'milis_jonatan', 'jonatan@gmail.com'),
(412020030, 412020030, 'Calvin Nugraha', '412020030', 'milis_calvin', 'calvin@gmail.com'),
(412020031, 412020031, 'ALBERT ARDIANSYAH', '412020031', 'milis_albert_ardiansyah', 'albert.ardiansyah@gmail.com'),
(412020032, 412020032, 'AUDREY JESSICA ANGELA TAMBUNAN', '412020032', 'milis_audrey', 'audrey@gmail.com'),
(412020033, 412020033, 'KENNY VINCENTIUS TANUWIJAYA', '412020033', 'milis_kenny', 'kenny@gmail.com'),
(412020035, 412020035, 'CHELSY KWAN', '412020035', 'milis_chelsy', 'chelsy@gmail.com'),
(412020037, 412020037, 'ELISABETH MANURUNG', '412020037', 'milis_elisabeth', 'elisabeth@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `id_dosen`, `kode_matkul`, `nama_matkul`, `kelas`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 1, 'F5454g', 'Webs 1', 'A5adadb', 'Kamis', '20:21:00', '05:20:00'),
(2, 1, 'G9849', 'web 3 pertemuan 2', 'A5adadb', 'Kamis', '20:21:00', '05:20:00'),
(3, 1512, 'MLPert1', 'MACHINE LEARNING', 'IF0PP012', 'Jumat', '10:45:00', '13:15:00'),
(4, 1512, 'MLPert2', 'MACHINE LEARNING', 'IF0PP012', 'Jumat', '10:45:00', '13:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `qr_code_absensi`
--

CREATE TABLE `qr_code_absensi` (
  `id` int(11) NOT NULL,
  `qr_code_value` varchar(255) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanda_tangan_dosen`
--

CREATE TABLE `tanda_tangan_dosen` (
  `id` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `tgl_tanda_tangan` date NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanda_tangan_dosen`
--

INSERT INTO `tanda_tangan_dosen` (`id`, `id_dosen`, `id_matkul`, `tgl_tanda_tangan`, `tanda_tangan`) VALUES
(65, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_.png'),
(66, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_.png'),
(67, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_.png'),
(68, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_.png'),
(69, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_.png'),
(70, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_.png'),
(71, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen/dosen/ttd/1_1.png'),
(72, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\dosen\\ttd/1_1.png'),
(73, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1.png'),
(74, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1.png'),
(75, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1_2024-01-13 14:27:26pm.png'),
(76, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1_2024-01-13 14:28:01.png'),
(77, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/a/1_1_2024-01-13 14:29:13.png'),
(78, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1_2024-01-13 14:30:22.png'),
(79, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1_2024-01-13 14:31:10pm.png'),
(80, 1, 1, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/1_1.png'),
(81, 1512, 3, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/3_1512.png'),
(82, 1512, 3, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/3_1512_2024-01-13_14:32:56.png'),
(83, 1512, 3, '2024-01-13', 'C:\\xampp\\htdocs\\finising_qr_absen\\dosen\\ttd/3_1512_2024-01-13_14.33.46.png');

-- --------------------------------------------------------

--
-- Table structure for table `tanda_tangan_mahasiswa`
--

CREATE TABLE `tanda_tangan_mahasiswa` (
  `id` int(11) NOT NULL,
  `id_kls` varchar(50) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `tgl_tanda_tangan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanda_tangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanda_tangan_mahasiswa`
--

INSERT INTO `tanda_tangan_mahasiswa` (`id`, `id_kls`, `id_mahasiswa`, `id_dosen`, `id_matkul`, `tgl_tanda_tangan`, `tanda_tangan`) VALUES
(80, 'MLPert1', 412020002, 1, 3, '2024-01-13 12:47:17', 'C:\\xampp\\htdocs\\finising_qr_absen\\mahasiswa/mahasiswa/ttd/3_412020002.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','dosen','mahasiswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, '412017015', '412017015', 'mahasiswa'),
(2, 'mahasiswa', 'mahasiswa', 'mahasiswa'),
(3, '1', 'dosen', 'dosen'),
(5, 'csscsc', 'csscsc', 'mahasiswa'),
(6, 'rey', 'rey', 'mahasiswa'),
(7, '1111', '1111', 'mahasiswa'),
(1512, '1512', '1512', 'dosen'),
(412018001, '412018001', '412018001', 'mahasiswa'),
(412018014, '412018014', '412018014', 'mahasiswa'),
(412018015, '412018015', '412018015', 'mahasiswa'),
(412018019, '412018019', '412018019', 'mahasiswa'),
(412018026, '412018026', '412018026', 'mahasiswa'),
(412019005, '412019005', '412019005', 'mahasiswa'),
(412019017, '412019017', '412019017', 'mahasiswa'),
(412019021, '412019021', '412019021', 'mahasiswa'),
(412019022, '412019022', '412019022', 'mahasiswa'),
(412019030, '412019030', '412019030', 'mahasiswa'),
(412019033, '412019033', '412019033', 'mahasiswa'),
(412019038, '412019038', '412019038', 'mahasiswa'),
(412019041, '412019041', '412019041', 'mahasiswa'),
(412019049, '412019049', '412019049', 'mahasiswa'),
(412020001, '412020001', '412020001', 'mahasiswa'),
(412020002, '412020002', '412020002', 'mahasiswa'),
(412020003, '412020003', '412020003', 'mahasiswa'),
(412020004, '412020004', '412020004', 'mahasiswa'),
(412020005, '412020005', '412020005', 'mahasiswa'),
(412020006, '412020006', '412020006', 'mahasiswa'),
(412020007, '412020007', '412020007', 'mahasiswa'),
(412020008, '412020008', '412020008', 'mahasiswa'),
(412020009, '412020009', '412020009', 'mahasiswa'),
(412020010, '412020010', '412020010', 'mahasiswa'),
(412020011, '412020011', '412020011', 'mahasiswa'),
(412020012, '412020012', '412020012', 'mahasiswa'),
(412020014, '412020014', '412020014', 'mahasiswa'),
(412020015, '412020015', '412020015', 'mahasiswa'),
(412020016, '412020016', '412020016', 'mahasiswa'),
(412020017, '412020017', '412020017', 'mahasiswa'),
(412020018, '412020018', '412020018', 'mahasiswa'),
(412020019, '412020019', '412020019', 'mahasiswa'),
(412020022, '412020022', '412020022', 'mahasiswa'),
(412020023, '412020023', '412020023', 'mahasiswa'),
(412020025, '412020025', '412020025', 'mahasiswa'),
(412020027, '412020027', '412020027', 'mahasiswa'),
(412020030, '412020030', '412020030', 'mahasiswa'),
(412020031, '412020031', '412020031', 'mahasiswa'),
(412020032, '412020032', '412020032', 'mahasiswa'),
(412020033, '412020033', '412020033', 'mahasiswa'),
(412020035, '412020035', '412020035', 'mahasiswa'),
(412020037, '412020037', '412020037', 'mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_mahasiswa`
--
ALTER TABLE `absensi_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `qr_code_id` (`qr_code_id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `history_absensi_mahasiswa`
--
ALTER TABLE `history_absensi_mahasiswa`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `qr_code_id` (`qr_code_id`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `qr_code_absensi`
--
ALTER TABLE `qr_code_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `tanda_tangan_dosen`
--
ALTER TABLE `tanda_tangan_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `tanda_tangan_mahasiswa`
--
ALTER TABLE `tanda_tangan_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_mahasiswa`
--
ALTER TABLE `absensi_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1513;

--
-- AUTO_INCREMENT for table `history_absensi_mahasiswa`
--
ALTER TABLE `history_absensi_mahasiswa`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412020038;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qr_code_absensi`
--
ALTER TABLE `qr_code_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2904;

--
-- AUTO_INCREMENT for table `tanda_tangan_dosen`
--
ALTER TABLE `tanda_tangan_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tanda_tangan_mahasiswa`
--
ALTER TABLE `tanda_tangan_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412020038;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi_mahasiswa`
--
ALTER TABLE `absensi_mahasiswa`
  ADD CONSTRAINT `absensi_mahasiswa_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `absensi_mahasiswa_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`),
  ADD CONSTRAINT `absensi_mahasiswa_ibfk_3` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `absensi_mahasiswa_ibfk_4` FOREIGN KEY (`qr_code_id`) REFERENCES `qr_code_absensi` (`id`);

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `history_absensi_mahasiswa`
--
ALTER TABLE `history_absensi_mahasiswa`
  ADD CONSTRAINT `history_absensi_mahasiswa_ibfk_1` FOREIGN KEY (`id`) REFERENCES `absensi_mahasiswa` (`id`),
  ADD CONSTRAINT `history_absensi_mahasiswa_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `history_absensi_mahasiswa_ibfk_3` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`),
  ADD CONSTRAINT `history_absensi_mahasiswa_ibfk_4` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `history_absensi_mahasiswa_ibfk_5` FOREIGN KEY (`qr_code_id`) REFERENCES `qr_code_absensi` (`id`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`);

--
-- Constraints for table `qr_code_absensi`
--
ALTER TABLE `qr_code_absensi`
  ADD CONSTRAINT `qr_code_absensi_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `qr_code_absensi_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`);

--
-- Constraints for table `tanda_tangan_dosen`
--
ALTER TABLE `tanda_tangan_dosen`
  ADD CONSTRAINT `tanda_tangan_dosen_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `tanda_tangan_dosen_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`);

--
-- Constraints for table `tanda_tangan_mahasiswa`
--
ALTER TABLE `tanda_tangan_mahasiswa`
  ADD CONSTRAINT `tanda_tangan_mahasiswa_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `tanda_tangan_mahasiswa_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `tanda_tangan_mahasiswa_ibfk_3` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
