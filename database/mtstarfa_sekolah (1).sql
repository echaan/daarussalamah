-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2024 at 06:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtstarfa_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'Ekskul', '2021-07-03 09:01:06', 1, 'Tata', 7, 'e776b560ad980ab3b69f96cbb5d7374e.jpg'),
(6, 'Sarana & Prasarana', '2021-07-03 09:01:45', 1, 'Tata', 8, '8f778d016c65996699cf2664335638bb.jpg'),
(7, 'Kegiatan Guru & Orang Tua', '2021-07-03 09:02:13', 1, 'Tata', 5, 'a81a0eab872b26aa39fa5e873decd575.jpeg'),
(8, 'Guru', '2021-07-03 09:02:57', 1, 'Tata', 2, '4523782c7a81faf562f65a90a7b21013.jpg'),
(9, 'OSIS', '2021-07-03 09:03:43', 1, 'Tata', 11, '8c91dce9ae7666cd1fe1d208bdf2871e.jpeg'),
(10, 'LDKS', '2021-07-03 09:03:58', 1, 'Tata', 5, '6b5be1cfb0ab1e4aec31fd6248232e1d.jpeg'),
(11, 'xzzxc', '2024-08-07 04:51:37', 1, 'Tata', 2, 'c7153dd79281839f87b65a49da52c41a.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(19, 'Volly', '2021-07-03 09:04:29', '43cf0ea0958e519ff48ac166ae15f654.jpg', 5, 1, 'Tata'),
(20, 'Bulu Tangkis', '2021-07-03 09:04:44', '8bb6c86e9211429b859d0d1e36fe6ff3.jpg', 5, 1, 'Tata'),
(21, 'English Club', '2021-07-03 09:04:57', 'fb14a4fa84dcde29e6f3ab8e7a19347c.jpg', 5, 1, 'Tata'),
(22, 'Futsal', '2021-07-03 09:05:08', '5c5349a6639f6f1430d297c4b73809da.jpg', 5, 1, 'Tata'),
(23, 'Marawis', '2021-07-03 09:05:21', 'f68fe3819e381ff45f1f53d7a7af46b9.jpg', 5, 1, 'Tata'),
(24, 'Pencak Silat', '2021-07-03 09:05:34', '78cb35580574de808985ada5b3dc8011.jpg', 5, 1, 'Tata'),
(25, 'Pramuka', '2021-07-03 09:05:46', '2ac38843ee6f9f488f21b7c85c71161d.jpg', 5, 1, 'Tata'),
(26, 'Gedung 1', '2021-07-03 09:06:08', 'da474c022a4a7e3e498051c3b12dcdb2.jpg', 6, 1, 'Tata'),
(27, 'Gedung 2', '2021-07-03 09:06:19', 'bf6b075209995dbb536f80facd0b9b1e.jpg', 6, 1, 'Tata'),
(28, 'Gedung 3', '2021-07-03 09:06:30', '7960684dbb68c66b114c8e784457a0ea.jpg', 6, 1, 'Tata'),
(29, 'Lab. Komputer', '2021-07-03 09:06:48', '0bf6fc4ad0c3b463c568c25674c537cd.jpg', 6, 1, 'Tata'),
(30, 'Perpustakaan', '2021-07-03 09:06:59', '3f368a5ba07ea3cc4b7ff4ce038b8952.jpg', 6, 1, 'Tata'),
(31, 'Ruang Guru', '2021-07-03 09:07:12', '050f5f33380203539f15fa5c47d127da.jpg', 6, 1, 'Tata'),
(32, 'Ruang Kelas 1', '2021-07-03 09:07:26', 'f55b768048bb3b04e22b5ba4864b1eb3.jpg', 6, 1, 'Tata'),
(33, 'Ruang Kelas 2', '2021-07-03 09:07:36', 'b2427481c101e33e55dd5624d04f7bb5.jpg', 6, 1, 'Tata'),
(34, 'Guru 1', '2021-07-03 09:08:01', '890e0b51d5e828287fb3f301e6e347c3.jpg', 8, 1, 'Tata'),
(35, 'Guru 2', '2021-07-03 09:08:25', '27f28396ea78f5ff224194fb9eb82703.jpg', 8, 1, 'Tata'),
(36, 'Kegiatan 1', '2021-07-03 09:08:43', '4bcbb711c035b90c309f2ce2da800b79.jpeg', 7, 1, 'Tata'),
(37, 'Kegiatan 2', '2021-07-03 09:08:58', 'd1569da8f7533c7fd23fbf600ed97875.jpeg', 7, 1, 'Tata'),
(38, 'Kegiatan 3', '2021-07-03 09:09:17', '8c1a101ef98c54e995ca3862e0c6214b.jpeg', 7, 1, 'Tata'),
(39, 'Kegiatan 4', '2021-07-03 09:09:34', '36fceaa39c39d3e6334e9b7a73b4cf8b.jpeg', 7, 1, 'Tata'),
(40, 'Kegiatan 5', '2021-07-03 09:09:48', '83dfff70187beb9e9a797d50cc49964b.jpeg', 7, 1, 'Tata'),
(41, 'Osis 1', '2021-07-03 09:10:07', '3083ba967ecb72ca923df5f8f00bea47.jpeg', 9, 1, 'Tata'),
(42, 'Osis 2', '2021-07-03 09:10:24', '2680a71699323269e44453eda972c71c.jpeg', 9, 1, 'Tata'),
(43, 'Osis 3', '2021-07-03 09:10:35', 'a1b4d922caf5c8e9263ef484301c11a0.jpeg', 9, 1, 'Tata'),
(44, 'Osis 4', '2021-07-03 09:10:45', 'd5ae017b08165bc0679d2d079a13e02b.jpeg', 9, 1, 'Tata'),
(45, 'Osis 5', '2021-07-03 09:10:55', '8f8896490a2d94526643c21d049ee7dd.jpeg', 9, 1, 'Tata'),
(46, 'Osis 6', '2021-07-03 09:11:05', 'fb90ba0d9710fff685cc424780125f59.jpeg', 9, 1, 'Tata'),
(47, 'LDKS 1', '2021-07-03 09:11:20', 'edc0bd8c9ec68d00129ba8012b0d71ef.jpeg', 10, 1, 'Tata'),
(48, 'LDKS 2', '2021-07-03 09:11:32', 'fd46cd9b7f718cb383b08f69bd9bb230.jpeg', 10, 1, 'Tata'),
(49, 'LDKS 3', '2021-07-03 09:11:43', '50331c3c727d48ec8e372e49e5887aac.jpeg', 10, 1, 'Tata'),
(50, 'LDKS 4', '2021-07-03 09:11:57', 'e4d22b82dfa7c98dc416df80f1f4a838.jpeg', 10, 1, 'Tata'),
(51, 'LDKS 5', '2021-07-03 09:12:13', '2d6058a1b8618457d4a7ca49078ad124.jpeg', 10, 1, 'Tata'),
(52, 'Osis 6', '2021-07-03 09:38:29', '16d489fb1ecbdc0651e147102a994f31.jpg', 9, 1, 'Tata'),
(53, 'Osis 7', '2021-07-03 09:38:46', '160a90b5b46689e8412cd1c6b9cd729f.jpg', 9, 1, 'Tata'),
(54, 'Osis 8', '2021-07-03 09:38:59', '0cde8a049f75f37bfce0ac0b6ce07414.jpg', 9, 1, 'Tata'),
(55, 'Osis 9', '2021-07-03 09:39:17', '9aabb8c19da3e243b818fe6314236e9f.jpg', 9, 1, 'Tata'),
(56, 'Osis 10', '2021-07-03 09:39:32', '5f382dd4920a5e9c9bd452bda393d34b.jpg', 9, 1, 'Tata'),
(57, 'klxzczcasd', '2024-08-07 04:52:36', 'ab10c8864afba5c293225fa5257cc8c2.png', 11, 1, 'Tata'),
(58, 'asdasdasd', '2024-08-23 07:54:43', '2495cc07079f55c010181eac546b4717.jpg', 11, 1, 'Tata');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `afiliasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`, `afiliasi`) VALUES
(7, '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 13:45:11', NULL),
(8, '-', 'Ririn Febriesta', 'P', 'Padang', '27 September 1994', 'Pend. Agama Islam', NULL, '2017-01-27 04:28:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(9, 'asdas', 'dqsadasd@gmail.com', 'cassca', 'csacacs', '2024-08-03 03:31:17', 0),
(10, 'fssd', 'dqsadasd@gmail.com', 'asdasd', 'asdasd', '2024-08-04 08:13:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Tata', 'Just do it', 'L', 'admintata', '57ab0f214796e3c0203b8d5d06617927', 'I am a mountainner. to me mountainerring is a life', 'tata@gmail.com', '08999109596', 'facebook.com/', 'twitter.com/', '', '', 1, '1', '2016-09-03 06:07:55', 'bca3ef304ff5197487d82a2ad9813005.jpg'),
(6, 'asdasdasd', NULL, 'L', 'aaa', 'e0e8b8cc568bb98c15021a57bcbbbf12', NULL, 'dqsadasd@gmail.com', 'qsdad', NULL, NULL, NULL, NULL, 1, '2', '2024-08-03 01:30:43', '7def4ea7bb04df34ab8e7d5c7a41e414.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2021-01-29 00:57:59', '127.0.0.1', 'Firefox'),
(932, '2021-07-03 02:35:49', '8.25.96.158', 'Firefox'),
(933, '2021-07-03 09:45:41', '140.213.7.123', 'Chrome'),
(934, '2021-07-03 10:29:14', '140.213.33.45', 'Other'),
(935, '2021-07-03 10:33:04', '101.255.140.81', 'Chrome'),
(936, '2021-07-03 13:24:49', '140.213.33.161', 'Chrome'),
(937, '2021-07-04 02:06:09', '8.25.96.158', 'Firefox'),
(938, '2021-07-04 06:03:47', '176.119.29.20', 'Firefox'),
(939, '2021-07-04 06:16:21', '74.120.14.37', 'Other'),
(940, '2021-07-04 07:08:29', '128.1.248.42', 'Chrome'),
(941, '2021-07-04 07:11:45', '176.119.29.3', 'Firefox'),
(942, '2021-07-04 07:14:42', '192.241.215.92', 'Mozilla'),
(943, '2021-07-04 11:36:40', '45.129.18.160', 'Chrome'),
(944, '2021-07-04 12:09:35', '34.79.107.251', 'Other'),
(945, '2021-07-04 13:47:27', '193.118.53.202', 'Chrome'),
(946, '2021-07-04 14:06:15', '116.203.58.207', 'Chrome'),
(947, '2021-07-04 14:32:08', '45.146.164.110', 'Chrome'),
(948, '2021-07-04 15:15:11', '128.14.134.170', 'Chrome'),
(949, '2021-07-04 16:58:00', '61.147.15.66', 'ZTE'),
(950, '2021-07-04 18:33:36', '173.245.202.201', 'Chrome'),
(951, '2021-07-04 20:51:45', '209.107.196.34', 'Chrome'),
(952, '2021-07-04 21:30:13', '80.82.77.192', 'Chrome'),
(953, '2021-07-04 22:30:46', '213.32.122.82', 'Chrome'),
(954, '2021-07-04 23:25:34', '143.110.221.30', 'Chrome'),
(955, '2021-07-04 23:26:14', '165.22.54.72', 'Chrome'),
(956, '2021-07-04 23:26:24', '107.175.31.238', 'Chrome'),
(957, '2021-07-05 00:19:45', '192.241.214.86', 'Mozilla'),
(958, '2021-07-05 00:39:41', '101.128.127.16', 'Other'),
(959, '2021-07-05 00:40:09', '112.215.235.126', 'Chrome'),
(960, '2021-07-05 01:23:42', '138.68.132.66', 'Chrome'),
(961, '2021-07-05 01:50:37', '180.252.119.251', 'Chrome'),
(962, '2021-07-05 02:20:02', '107.189.1.220', 'Internet Explorer'),
(963, '2021-07-05 02:37:22', '184.105.247.254', 'Other'),
(964, '2021-07-05 03:08:10', '162.62.123.46', 'Other'),
(965, '2021-07-05 03:16:33', '142.202.240.122', 'Chrome'),
(966, '2021-07-05 03:17:51', '77.247.110.160', 'Chrome'),
(967, '2021-07-05 03:17:58', '112.215.235.130', 'Chrome'),
(968, '2021-07-05 04:04:17', '64.233.172.140', 'Chrome'),
(969, '2021-07-05 04:19:38', '128.14.134.170', 'Chrome'),
(970, '2021-07-05 05:00:37', '185.220.101.6', 'Baiduspider'),
(971, '2021-07-05 05:01:08', '185.220.100.252', 'Baiduspider'),
(972, '2021-07-05 05:05:24', '18.218.97.64', 'Chrome'),
(973, '2021-07-05 05:11:57', '128.1.248.26', 'Chrome'),
(974, '2021-07-05 07:34:18', '45.146.164.110', 'Chrome'),
(975, '2021-07-05 07:53:53', '192.35.168.112', 'Mozilla'),
(976, '2021-07-05 12:23:09', '140.213.11.37', 'Chrome'),
(977, '2021-07-05 13:17:48', '23.251.102.90', 'Chrome'),
(978, '2021-07-05 13:18:16', '147.139.32.106', 'Other'),
(979, '2021-07-05 13:40:03', '63.141.251.234', 'Chrome'),
(980, '2021-07-05 15:22:58', '142.54.177.6', 'Chrome'),
(981, '2021-07-05 16:05:54', '162.142.125.54', 'Mozilla'),
(982, '2021-07-05 16:30:12', '92.118.160.13', 'Vario'),
(983, '2021-07-05 16:33:46', '192.241.220.237', 'Mozilla'),
(984, '2021-07-05 16:55:01', '112.215.170.210', 'Chrome'),
(985, '2021-07-05 18:03:29', '77.88.5.109', 'YandexBot'),
(986, '2021-07-05 18:03:29', '77.88.5.38', 'YandexBot'),
(987, '2021-07-05 18:19:08', '45.33.96.205', 'Chrome'),
(988, '2021-07-05 19:14:46', '198.204.234.250', 'Chrome'),
(989, '2021-07-05 22:05:12', '23.251.102.74', 'Chrome'),
(990, '2021-07-05 22:44:20', '128.14.134.170', 'Chrome'),
(991, '2021-07-06 00:42:28', '167.71.239.4', 'Other'),
(992, '2021-07-06 00:43:30', '143.198.234.226', 'Chrome'),
(993, '2021-07-06 01:06:32', '37.0.11.16', 'Chrome'),
(994, '2021-07-06 02:22:16', '64.62.197.32', 'Other'),
(995, '2021-07-06 02:52:14', '180.252.117.247', 'Chrome'),
(996, '2021-07-06 02:53:42', '162.62.123.46', 'Other'),
(997, '2021-07-06 03:30:40', '101.128.127.16', 'Firefox'),
(998, '2024-08-02 02:48:36', '::1', 'Chrome'),
(999, '2024-08-02 03:16:47', '127.0.0.1', 'Firefox'),
(1000, '2024-08-03 01:05:59', '::1', 'Chrome'),
(1001, '2024-08-03 01:14:11', '127.0.0.1', 'Firefox'),
(1002, '2024-08-04 07:55:53', '::1', 'Chrome'),
(1003, '2024-08-04 09:14:39', '127.0.0.1', 'Firefox'),
(1004, '2024-08-05 01:19:50', '::1', 'Chrome'),
(1005, '2024-08-06 21:41:54', '::1', 'Chrome'),
(1006, '2024-08-07 20:19:30', '::1', 'Chrome'),
(1007, '2024-08-24 01:59:34', '::1', 'Chrome'),
(1008, '2024-08-24 02:44:31', '127.0.0.1', 'Firefox'),
(1009, '2024-08-25 03:24:49', '::1', 'Chrome'),
(1010, '2024-08-25 20:39:17', '::1', 'Chrome'),
(1011, '2024-08-27 01:41:18', '::1', 'Chrome'),
(1012, '2024-08-28 02:35:28', '127.0.0.1', 'Chrome'),
(1013, '2024-08-28 04:56:49', '::1', 'Chrome'),
(1014, '2024-08-29 02:33:40', '::1', 'Chrome'),
(1015, '2024-08-30 01:15:39', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, 'cd78b29c36d29fabe1145fe079c7be08.jpg'),
(6, '123085', 'Nadila Ginting', 'P', 1, 'b52e315b841f3fc856b028978a95569d.jpg'),
(7, '123086', 'Anna Marina', 'P', 1, 'd6b0e4106766ca2e43e2a17a13b33d53.jpg'),
(8, '123086', 'Dhea Lubis', 'P', 1, '4e07c99a90add1ddf8ff1c12a1aad56c.jpg'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'a371de5193e5c5cdd849ff4d3b7d9bde.jpeg'),
(10, '123088', 'Mita Febrina', 'P', 1, '9ed91c9d293f9ca132c52ea6c8ab048c.jpg'),
(11, '123089', 'Elizabeth ', 'P', 1, '31417b62047a7485e71af6832581ce34.jpg'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
