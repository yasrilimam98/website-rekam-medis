-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 04:05 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_rekammedis`
--

CREATE TABLE `table_rekammedis` (
  `id_pus` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_rekammedis`
--

INSERT INTO `table_rekammedis` (`id_pus`, `id_pasien`, `keluhan`, `id_dokter`, `diagnosa`, `id_poli`, `tgl_periksa`) VALUES
('96096263-3cbf-4532-acff-9f945af62750', '331bd790-80a0-478c-808d-ed9565f465ab', 'Flu', '89802224-21e5-40a5-aad3-7402ddd0bf2c', 'Flu corona', '36f86571-dc08-444d-bc32-6bb75e7c2959', '2020-01-28'),
('f3ae56f2-7052-46cb-be91-7beda3e82e52', '00cb99d7-9b66-4736-a756-1d84d3609218', 'hfh', '3bbfaf30-951d-4648-a27f-75bbe5ea8822', 'fh', '7a16ec44-8ec4-4622-ac82-be5233b8904b', '2020-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesiallis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesiallis`, `alamat`, `no_tlp`) VALUES
('3bbfaf30-951d-4648-a27f-75bbe5ea8822', 'Dr. Yasril Imam', 'Ibu Hamil', 'Malang', '083314562337'),
('826a09f8-c80e-4ba5-a786-b379d783db1a', 'Dr Bili', 'Ibu Hamil Sekarang', 'Tirto', '08565464565'),
('89802224-21e5-40a5-aad3-7402ddd0bf2c', 'Dr Gilang', 'Sex', 'Margo utomo', '088576456457547'),
('901235ad-216e-4d6b-9c5e-fbeafd451238', 'Dr Maksum', 'HIV AIDS', 'Dau', '08875464645654'),
('916aa5d2-0d7f-4dc0-a5fe-86648c256156', 'Dr Faisal', 'Kucing orange', 'Dau', '086586547'),
('a16ce621-82a9-4d84-b343-fd1906a89cb7', 'Dr Sahedi', 'Kandungan', 'Dau', '08775453453'),
('f6bca875-5306-4881-a0c9-92cf706bc8b2', 'Dr Lucky', 'Dukun Beranak', 'Dau', '0845645646');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('17fcd93a-f743-4880-90d9-6f4b66c111ee', 'Imbosh', 'Daya Tahan tubuh'),
('6d1713fa-7d28-46f3-9d15-936f6210b00b', 'Oskadon', 'Sakit kepala'),
('8ca144f2-9fa6-4656-84b6-32457dfdf019', 'Democolin', 'Demam'),
('906ef832-413b-45cb-bb4e-1a5abfe922a5', 'UltraFlu', 'Flu'),
('b8bfc33e-194b-4df2-9036-a1f5cff1e97e', 'Asam Penamat', 'Nyeri');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `no_identitas` varchar(30) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `no_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_tlp`) VALUES
('00cb99d7-9b66-4736-a756-1d84d3609218', '2017103703', 'Lucky', 'P', 'Malang', '8732523523'),
('331bd790-80a0-478c-808d-ed9565f465ab', '2017103705', 'Halilintar', 'L', 'Malang', '8743242'),
('5648f2d6-b284-40c7-8056-bd9f37ae4302', '2017103706', 'Sejahtera', 'P', 'Malang', '8786442'),
('cfcb8293-7fb1-460c-abb7-df3c86388929', '2017103704', 'Laksono', 'L', 'Malang', '873525235');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('0d131c4d-e6ba-4d51-abda-33210332f287', 'Poli 3', 'Ruang 3'),
('36f86571-dc08-444d-bc32-6bb75e7c2959', 'Poli 2', 'G.lt  2'),
('74f9e8ec-229b-4762-87ed-2e10f80cc678', 'Poli 4', 'Ruang 4'),
('7a16ec44-8ec4-4622-ac82-be5233b8904b', 'Poli 1', 'G.lt 4');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ps_obat`
--

CREATE TABLE `tb_ps_obat` (
  `id` int(11) NOT NULL,
  `id_pus` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ps_obat`
--

INSERT INTO `tb_ps_obat` (`id`, `id_pus`, `id_obat`) VALUES
(1, 'f3ae56f2-7052-46cb-be91-7beda3e82e52', '6d1713fa-7d28-46f3-9d15-936f6210b00b'),
(2, '96096263-3cbf-4532-acff-9f945af62750', 'b8bfc33e-194b-4df2-9036-a1f5cff1e97e');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('264b64f6-4e6c-11ea-9843-a82066fffe6b', 'dilan1', 'dilan', '8cb2237d0679ca88db6464eac60da96345513964', '1'),
('48e4a382-4e36-11ea-ab89-a82066fffe6b', 'Yasril', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_rekammedis`
--
ALTER TABLE `table_rekammedis`
  ADD PRIMARY KEY (`id_pus`),
  ADD UNIQUE KEY `id_pasien` (`id_pasien`),
  ADD UNIQUE KEY `id_dokter` (`id_dokter`),
  ADD UNIQUE KEY `id_poli` (`id_poli`),
  ADD UNIQUE KEY `tgl_periksa` (`tgl_periksa`),
  ADD KEY `id_pasien_2` (`id_pasien`),
  ADD KEY `id_dokter_2` (`id_dokter`),
  ADD KEY `id_poli_2` (`id_poli`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_ps_obat`
--
ALTER TABLE `tb_ps_obat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_obat` (`id_obat`),
  ADD KEY `id_pus` (`id_pus`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ps_obat`
--
ALTER TABLE `tb_ps_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_rekammedis`
--
ALTER TABLE `table_rekammedis`
  ADD CONSTRAINT `table_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `table_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `table_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_ps_obat`
--
ALTER TABLE `tb_ps_obat`
  ADD CONSTRAINT `tb_ps_obat_ibfk_1` FOREIGN KEY (`id_pus`) REFERENCES `table_rekammedis` (`id_pus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_ps_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
