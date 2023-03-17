-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 03:22 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karpel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blangko`
--

CREATE TABLE `blangko` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `ttd` varchar(225) NOT NULL,
  `kepsek` varchar(225) NOT NULL,
  `nip` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blangko`
--

INSERT INTO `blangko` (`id`, `gambar`, `ttd`, `kepsek`, `nip`) VALUES
(1, 'Cetak Kop.png', 'fhfhfg.png', 'Drs. IMAM SAKRONI', '196512041995031001');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `sekolah` varchar(225) NOT NULL,
  `email1` varchar(225) NOT NULL,
  `email2` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `web` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `id_prov` varchar(225) NOT NULL,
  `id_kab` varchar(225) NOT NULL,
  `id_kec` varchar(225) NOT NULL,
  `id_kel` varchar(225) NOT NULL,
  `hp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `gambar`, `nama`, `sekolah`, `email1`, `email2`, `pass`, `web`, `alamat`, `id_prov`, `id_kab`, `id_kec`, `id_kel`, `hp`) VALUES
(1, 'man1-lamtim.png', 'KARTU PELAJAR', 'MADRASAH ALIYAH NEGERI 1 ', 'man1lampungtimur@gmail.com', 'hadisaputra.bambang@gmail.com', 'ojolali.123', 'www.man1lampungtimur.sch.id', 'Jl. Lembayung 38 B', '18', '1807', '180706', '1807062009', '0725244756');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kab` char(4) NOT NULL DEFAULT '',
  `id_prov` char(2) NOT NULL,
  `nama_kabupaten` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kab`, `id_prov`, `nama_kabupaten`) VALUES
('1801', '18', 'Lampung Selatan'),
('1802', '18', 'Lampung Tengah'),
('1803', '18', 'Lampung Utara'),
('1804', '18', 'Lampung Barat'),
('1805', '18', 'Tulang Bawang'),
('1806', '18', 'Tanggamus'),
('1807', '18', 'Lampung Timur'),
('1808', '18', 'Way Kanan'),
('181', '18', 'Pesawaran'),
('1810', '18', 'Pringsewu'),
('1811', '18', 'Mesuji'),
('1812', '18', 'Tulang Bawang Barat'),
('1813', '18', 'Pesisir Barat'),
('1871', '18', 'Kota Bandar Lampung'),
('1872', '18', 'Kota Metro');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` char(6) NOT NULL,
  `id_kab` char(4) NOT NULL,
  `nama_kecamatan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `id_kab`, `nama_kecamatan`) VALUES
('180104', '1801', 'Natar'),
('180201', '1802', 'Kalirejo'),
('180202', '1802', 'Bangun Rejo'),
('180203', '1802', 'Padang Ratu'),
('180204', '1802', 'Gunung Sugih'),
('180205', '1802', 'Trimurjo'),
('180206', '1802', 'Punggur'),
('180207', '1802', 'Terbanggi Besar'),
('180208', '1802', 'Seputih Raman'),
('180209', '1802', 'Rumbia'),
('180210', '1802', 'Seputih Banyak'),
('180211', '1802', 'Seputih Matarm'),
('180212', '1802', 'Seputih Surabaya'),
('180213', '1802', 'Terusan Nunyai'),
('180214', '1802', 'Bumi Ratu Nuban'),
('180215', '1802', 'Bekri'),
('180216', '1802', 'Seputih Agung'),
('180217', '1802', 'Way Pangubuan'),
('180218', '1802', 'Bandar Mataram'),
('180219', '1802', 'Pubian'),
('180220', '1802', 'Selagai Lingga'),
('180221', '1802', 'Anak Tuha'),
('180222', '1802', 'Sendang Agung'),
('180223', '1802', 'Kotagajah'),
('180224', '1802', 'Bumi Nabung'),
('180225', '1802', 'Way Seputih'),
('180226', '1802', 'Bandar Surabayar'),
('180227', '1802', 'Anak Ratu Aji'),
('180228', '1802', 'Putra Rumbia'),
('180301', '1803', 'Bukit Kemuning'),
('180302', '1803', 'Kotabumi'),
('180303', '1803', 'Sungkai Selatan'),
('180304', '1803', 'Tanjung Raja'),
('180305', '1803', 'Abung Timur'),
('180306', '1803', 'Abung Barat'),
('180307', '1803', 'Abung Selatan'),
('180308', '1803', 'Sungkai Utara'),
('180309', '1803', 'Kotabumi Utara'),
('180310', '1803', 'Kotabumi Selatan'),
('180311', '1803', 'Abung Tengah'),
('180312', '1803', 'Abung Tinggi'),
('180313', '1803', 'Abung Semuli'),
('180314', '1803', 'Abung Surakarta'),
('180315', '1803', 'Muara Sungkai'),
('180316', '1803', 'Bunga Mayang'),
('180317', '1803', 'Hulu Sungkai'),
('180318', '1803', 'Sungkai Tengah'),
('180319', '1803', 'Abung Pekurun'),
('180320', '1803', 'Sungkai Jaya'),
('180321', '1803', 'Sungkai Barat'),
('180322', '1803', 'Abung Kunang'),
('180323', '1803', 'Blambangan Pagar'),
('180404', '1804', 'Balik Bukit'),
('180405', '1804', 'Sumber Jaya'),
('180406', '1804', 'Belalau'),
('180407', '1804', 'Way Tenong'),
('180408', '1804', 'Sekincau'),
('180409', '1804', 'Suoh'),
('180410', '1804', 'Batu Brak'),
('180411', '1804', 'Sukau'),
('180415', '1804', 'Gedung Surian'),
('180418', '1804', 'Kebun Tebu'),
('180419', '1804', 'Air Hitam'),
('180420', '1804', 'Pagar Dewa'),
('180421', '1804', 'Batu Ketulis'),
('180422', '1804', 'Lumbok Seminung'),
('180423', '1804', 'Bandar Negeri Suoh'),
('180502', '1805', 'Menggala'),
('180506', '1805', 'Gedung Aji'),
('180508', '1805', 'Banjar Agung'),
('180511', '1805', 'Gedung Meneng'),
('180512', '1805', 'Rawa Jitu Selatan'),
('180513', '1805', 'Penawar Tama'),
('180518', '1805', 'Rawa Jitu Timur'),
('180520', '1805', 'Banjar Margo'),
('180522', '1805', 'Rawa Pitu'),
('180523', '1805', 'Penawar Aji'),
('180525', '1805', 'Dente Teladas'),
('180526', '1805', 'Meraksa Aji'),
('180527', '1805', 'Gedung Aji Baru'),
('180529', '1805', 'Banjar Baru'),
('180530', '1805', 'Menggala Timur'),
('180603', '1806', 'Wonosobo'),
('180701', '1807', 'Sukadana'),
('180702', '1807', 'Labuhan Maringgai'),
('180703', '1807', 'Jabung'),
('180704', '1807', 'Pekalongan'),
('180705', '1807', 'Sekampung'),
('180706', '1807', 'Batanghari'),
('180707', '1807', 'Way Jepara'),
('180708', '1807', 'Purbolinggo'),
('180709', '1807', 'Raman Utara'),
('180710', '1807', 'Metro Kibang'),
('180711', '1807', 'Marga Tiga'),
('180712', '1807', 'Sekampung Udik'),
('180713', '1807', 'Batanghari Nuban'),
('180714', '1807', 'Bumi Agung'),
('180715', '1807', 'Bandar Sribhawono'),
('180716', '1807', 'Mataram Baru'),
('180717', '1807', 'Melinting'),
('180718', '1807', 'Gunung Pelindung'),
('180719', '1807', 'Pasir Sakti'),
('180720', '1807', 'Waway Karya'),
('180721', '1807', 'Labuhan Ratu'),
('180722', '1807', 'Braja Selebah'),
('180723', '1807', 'Way Bungur'),
('180724', '1807', 'Marga Sekampung'),
('180801', '1808', 'Blambangan Umpu'),
('180802', '1808', 'Kasui'),
('180803', '1808', 'Banjit'),
('180804', '1808', 'Baradatu'),
('180805', '1808', 'Bahuga'),
('180806', '1808', 'Pakuan Ratu'),
('180807', '1808', 'Negeri Agung'),
('180808', '1808', 'Way Tuba'),
('180809', '1808', 'Rebang Tangkas'),
('180810', '1808', 'Gunung Labuhan'),
('180811', '1808', 'Negara Batin'),
('180812', '1808', 'Negeri Besar'),
('180813', '1808', 'Buay Bahuga'),
('180814', '1808', 'Bumi Agung'),
('180906', '181', 'Punduh Pidada'),
('181004', '1810', 'Pardasuka'),
('181101', '1811', 'Mesuji'),
('181102', '1811', 'Mesuji Timur'),
('181103', '1811', 'Rawa Jitu Utara'),
('181104', '1811', 'Way Serdang'),
('181105', '1811', 'Simpang Pematang'),
('181106', '1811', 'Panca Jaya'),
('181107', '1811', 'Tanjung Raya'),
('181201', '1812', 'Tulang Bawang Tengah'),
('181202', '1812', 'Tumijajar'),
('181203', '1812', 'Tulang Bawang Udik'),
('181204', '1812', 'Gunung Terang'),
('181205', '1812', 'Gunung Agung'),
('181206', '1812', 'Way Kenanga'),
('181207', '1812', 'Lambu Kibang'),
('181208', '1812', 'Pagar Dewa'),
('181209', '1812', 'Batu Putih'),
('181303', '1813', 'Lemong'),
('187108', '1871', 'Telukbetung Barat'),
('187201', '1872', 'Metro Pusat'),
('187202', '1872', 'Metro Utara'),
('187203', '1872', 'Metro Barat'),
('187204', '1872', 'Metro Timur'),
('187205', '1872', 'Metro Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kel` char(10) NOT NULL,
  `id_kec` char(6) DEFAULT NULL,
  `nama_kelurahan` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kel`, `id_kec`, `nama_kelurahan`) VALUES
('1802062004', '180206', 'Toto Katon'),
('1804092010', '180713', 'Kedaton Induk'),
('1804120003', '180708', 'Taman Bogo'),
('1807012001', '180701', 'Sukadana'),
('1807012002', '180701', 'Pakuan Aji'),
('1807012003', '180701', 'Bumi Nabung Udik'),
('1807012004', '180701', 'Rajabasa Batanghari'),
('1807012005', '180701', 'Negara Nabung'),
('1807012006', '180701', 'Terbangi Marga'),
('1807012007', '180701', 'Mataram Marga'),
('1807012008', '180701', 'Pasar Sukadana'),
('1807012009', '180701', 'Surabaya Udik'),
('1807012010', '180701', 'Rantau Jaya Udik'),
('1807012011', '180701', 'Muara Jaya'),
('1807012012', '180701', 'Sukadana Ilir'),
('1807012013', '180701', 'Bumi Ayu'),
('1807012014', '180701', 'Sukadana Timur'),
('1807012015', '180701', 'Rantau Jaya Udik II'),
('1807012016', '180701', 'Putra Aji II'),
('1807012017', '180701', 'Putra Aji I'),
('1807012018', '180701', 'Sukadana Selatan'),
('1807012019', '180701', 'Sukadana Jaya'),
('1807012020', '180701', 'Sukadana Tengah'),
('1807022001', '180702', 'Labuhan Maringgai'),
('1807022002', '180702', 'Muara Gading Mas'),
('1807022003', '180702', 'Sriminosari'),
('1807022004', '180702', 'Bandar Negeri'),
('1807022005', '180702', 'Karya Makmur'),
('1807022006', '180702', 'Karya Tani'),
('1807022007', '180702', 'Margasari'),
('1807022008', '180702', 'Sukorahayu'),
('1807022009', '180702', 'Srigading'),
('1807022010', '180702', 'Karang Anyar'),
('1807022011', '180702', 'Maringgai'),
('1807032001', '180703', 'Negara Batin'),
('1807032002', '180703', 'Asahan'),
('1807032003', '180703', 'Adirejo'),
('1807032004', '180703', 'Gunung Mekar'),
('1807032005', '180703', 'Gunung Sugih Kecil'),
('1807032006', '180703', 'Pematang Tahalo'),
('1807032007', '180703', 'Jabung'),
('1807032008', '180703', 'Negara Saka'),
('1807032014', '180703', 'Betengsari'),
('1807032015', '180703', 'Belimbing Sari'),
('1807032016', '180703', 'Mekar Jaya'),
('1807032018', '180703', 'Mumbang Jaya'),
('1807032019', '180703', 'Tanjung Sari'),
('1807032020', '180703', 'Adi Luhur'),
('1807032021', '180703', 'Sambirejo'),
('1807042001', '180704', 'Pekalongan'),
('1807042002', '180704', 'Adirejo'),
('1807042003', '180704', 'Sidodadi'),
('1807042004', '180704', 'Gondangrejo'),
('1807042005', '180704', 'Siraman'),
('1807042006', '180704', 'Tulusrejo'),
('1807042007', '180704', 'Jojog'),
('1807042008', '180704', 'Ganti Warno'),
('1807042009', '180704', 'Kalibening'),
('1807042010', '180704', 'Wonosari'),
('1807042011', '180704', 'Gantimulyo'),
('1807042012', '180704', 'Adijaya'),
('1807052001', '180705', 'Sumber Gede'),
('1807052002', '180705', 'Sidomukti'),
('1807052003', '180705', 'Sidomulyo'),
('1807052004', '180705', 'Trimulyo'),
('1807052005', '180705', 'Girikarto'),
('1807052006', '180705', 'Hargomulyo'),
('1807052007', '180705', 'Wonokarto'),
('1807052008', '180705', 'Sukoharjo'),
('1807052009', '180705', 'Giriklopomulyo'),
('1807052010', '180705', 'Sidodadi'),
('1807052011', '180705', 'Sambikarto'),
('1807052012', '180705', 'Sumber Sari'),
('1807052013', '180705', 'Karya Mukti'),
('1807052014', '180705', 'Mekar Mulya'),
('1807052015', '180705', 'Jadi Mulyo'),
('1807052017', '180705', 'Mekar Sari'),
('1807062001', '180706', 'Banarjoyo'),
('1807062002', '180706', 'Buana Sakti'),
('1807062003', '180706', 'Balekencono'),
('1807062004', '180706', 'Rejo Agung'),
('1807062005', '180706', 'Adiwarno'),
('1807062006', '180706', 'Telogorejo'),
('1807062007', '180706', 'Nampirejo'),
('1807062008', '180706', 'Sumberejo'),
('1807062009', '180706', 'Banjarejo'),
('1807062010', '180706', 'Balerejo'),
('1807062011', '180706', 'Batangharjo'),
('1807062012', '180706', 'Bumi Harjo'),
('1807062013', '180706', 'Bumi Mas'),
('1807062014', '180706', 'Selorejo'),
('1807062015', '180706', 'Sri Basuki'),
('1807062016', '180706', 'Sumber Agung'),
('1807062017', '180706', 'Purwodadi Mekar'),
('1807072001', '180707', 'Braja Sakti'),
('1807072002', '180707', 'Braja Fajar'),
('1807072003', '180707', 'Braja Emas'),
('1807072004', '180707', 'Braja Dewa'),
('1807072005', '180707', 'Braja Caka'),
('1807072006', '180707', 'Sri Wangi'),
('1807072007', '180707', 'Jepara'),
('1807072008', '180707', 'Sri Rejosari'),
('1807072009', '180707', 'Sumberejo'),
('1807072010', '180707', 'Labuhan Ratu'),
('1807072011', '180707', 'Braja Asri'),
('1807072013', '180707', 'Sumur Bandung'),
('1807072014', '180707', 'Sumber Marga'),
('1807072015', '180707', 'Labuhan Ratu Danau'),
('1807072016', '180707', 'Labuhan Ratu Baru'),
('1807082001', '180708', 'Taman Fajar'),
('1807082002', '180708', 'Taman Asri'),
('1807082003', '180708', 'Taman Bogo'),
('1807082004', '180708', 'Tambah Dadi'),
('1807082005', '180708', 'Taman Cari'),
('1807082006', '180708', 'Taman Endah'),
('1807082007', '180708', 'Tegal Gondo'),
('1807082008', '180708', 'Toto Harjo'),
('1807082009', '180708', 'Tanjung Inten'),
('1807082010', '180708', 'Tegal Yoso'),
('1807082011', '180708', 'Tambah Luhur'),
('1807082012', '180708', 'Tanjung Kesuma'),
('1807092001', '180709', 'Kota Raman'),
('1807092002', '180709', 'Raman Aji'),
('1807092003', '180709', 'Rukti Sedyo'),
('1807092004', '180709', 'Ratna Daya'),
('1807092005', '180709', 'Rejo Binangun'),
('1807092006', '180709', 'Rantau Fajar'),
('1807092007', '180709', 'Raman Endra'),
('1807092008', '180709', 'Raman Fajar'),
('1807092009', '180709', 'Restu Rahayu'),
('1807092010', '180709', 'Rejo Katon'),
('1807092011', '180709', 'Rama Puja'),
('1807102002', '180710', 'Marga Jaya'),
('1807102003', '180710', 'Margototo'),
('1807102004', '180710', 'Purbosembodo'),
('1807102005', '180710', 'Sumber Agung'),
('1807102006', '180710', 'Margasari'),
('1807102007', '180710', 'Jaya Asri'),
('1807112001', '180711', 'Tanjung Harapan'),
('1807112002', '180711', 'Negeri Tua'),
('1807112003', '180711', 'Negeri Katon'),
('1807112004', '180711', 'Negeri Agung'),
('1807112005', '180711', 'Negeri Jemanten'),
('1807112006', '180711', 'Sukaraja Tiga'),
('1807112007', '180711', 'Gedung Wani'),
('1807112008', '180711', 'Jaya Guna'),
('1807112009', '180711', 'Sukadana Baru'),
('1807112010', '180711', 'Nabang Baru'),
('1807112011', '180711', 'Surya Mataram'),
('1807112012', '180711', 'Gedungwani Timur'),
('1807112013', '180711', 'Trisinar'),
('1807122001', '180712', 'Pugung Raharjo'),
('1807122002', '180712', 'Mengandung Sari'),
('1807122003', '180712', 'Toba'),
('1807122004', '180712', 'Banjar Agung'),
('1807122005', '180712', 'Bojong'),
('1807122006', '180712', 'Gunung Agung'),
('1807122007', '180712', 'Sindang Anom'),
('1807122009', '180712', 'Gunung Pasir Jaya'),
('1807122010', '180712', 'Gunung Sugih Besar'),
('1807122011', '180712', 'Sidorejo'),
('1807122012', '180712', 'Brawijaya'),
('1807122013', '180712', 'Gunung Mulyo'),
('1807122014', '180712', 'Bumi Mulyo'),
('1807122015', '180712', 'Purwokencono'),
('1807132001', '180713', 'Sukaraja Nuban'),
('1807132002', '180713', 'Purwosari'),
('1807132003', '180713', 'Tulung Balak'),
('1807132006', '180713', 'Kedaton II'),
('1807132007', '180713', 'Trisnomulyo'),
('1807132008', '180713', 'Cempaka Nuban'),
('1807132009', '180713', 'Gedung Dalem'),
('1807132010', '180713', 'Bumi Jawa'),
('1807132011', '180713', 'Gunung Tiga'),
('1807132012', '180713', 'Negara Ratu'),
('1807132013', '180713', 'Sukacari'),
('1807142001', '180714', 'Donomulyo'),
('1807142002', '180714', 'Nyampir'),
('1807142003', '180714', 'Bumi Tinggi'),
('1807142004', '180714', 'Lehan'),
('1807142005', '180714', 'Marga Mulya'),
('1807142006', '180714', 'Catur Swako'),
('1807142007', '180714', 'Mulyo Asri'),
('1807152001', '180715', 'Sribhawono'),
('1807152002', '180715', 'Sadar Sriwijaya'),
('1807152003', '180715', 'Srimenanti'),
('1807152004', '180715', 'Sripendowo'),
('1807152005', '180715', 'Waringin Jaya'),
('1807152006', '180715', 'Bandar Agung'),
('1807152007', '180715', 'Mekar Jaya'),
('1807162001', '180716', 'Mataram Baru'),
('1807162002', '180716', 'Rajabasa Baru'),
('1807162003', '180716', 'Teluk Dalem'),
('1807162004', '180716', 'Way Areng'),
('1807162005', '180716', 'Tulung Pasik'),
('1807162006', '180716', 'Mandala Sari'),
('1807162007', '180716', 'Kebon Damar'),
('1807172001', '180717', 'Wana'),
('1807172002', '180717', 'Tanjung Aji'),
('1807172003', '180717', 'Tebing'),
('1807172004', '180717', 'Sido Makmur'),
('1807172005', '180717', 'Itik Renday'),
('1807172006', '180717', 'Sumber Hadi'),
('1807182001', '180718', 'Negeri Agung'),
('1807182002', '180718', 'Pempen'),
('1807182003', '180718', 'Way Mili'),
('1807182004', '180718', 'Pelindung Jaya'),
('1807182005', '180718', 'Nibung'),
('1807192001', '180719', 'Pasir Sakti'),
('1807192002', '180719', 'Mulyo Sari'),
('1807192003', '180719', 'Purworejo'),
('1807192005', '180719', 'Kedung Ringin'),
('1807192006', '180719', 'Labuhan Ratu'),
('1807192007', '180719', 'Sumur Kucing'),
('1807192008', '180719', 'Mekar Sari'),
('1807202001', '180720', 'Sumberejo'),
('1807202002', '180720', 'Ngesti Karya'),
('1807202003', '180720', 'Tri Tunggal'),
('1807202004', '180720', 'Sidorahayu'),
('1807202005', '180720', 'Jembrana'),
('1807202006', '180720', 'Tanjung Wangi'),
('1807202007', '180720', 'Marga Batin'),
('1807202008', '180720', 'Mekar Karya'),
('1807202009', '180720', 'Sumber Jaya'),
('1807202010', '180720', 'Karang Anom'),
('1807202011', '180720', 'Karya Basuki'),
('1807212001', '180721', 'Labuhan Ratu'),
('1807212009', '180721', 'Labuhan Ratu VII'),
('1807222001', '180722', 'Braja Harjosari'),
('1807222002', '180722', 'Braja Gemilang'),
('1807222003', '180722', 'Braja Indah'),
('1807222004', '180722', 'Braja Yekti'),
('1807222005', '180722', 'Braja Kencana'),
('1807222006', '180722', 'Braja Luhur'),
('1807222007', '180722', 'Braja Mulya'),
('1807232001', '180723', 'Tambah Subur'),
('1807232002', '180723', 'Tanjung Qencono'),
('1807232003', '180723', 'Tanjung Tirto'),
('1807232004', '180723', 'Toto Mulyo'),
('1807232005', '180723', 'Toto Projo'),
('1807232006', '180723', 'Taman Negeri'),
('1807232007', '180723', 'Tegal Ombo'),
('1807232008', '180723', 'Kali Pasir'),
('1807242001', '180724', 'Bungkuk'),
('1807242002', '180724', 'Batu Badak'),
('1807242003', '180724', 'Peniangan'),
('1807242004', '180724', 'Gunung Raya'),
('1807242005', '180724', 'Giri Mulyo'),
('1807242006', '180724', 'Gunung Mas'),
('1807242007', '180724', 'Purwosari'),
('1807242008', '180724', 'Bukit Raya'),
('1872031001', '187203', 'Mulyojati'),
('1872031002', '187203', 'Ganjar Agung'),
('1872031003', '187203', 'Mulyosari'),
('1872031004', '187203', 'Ganjar Asri'),
('1872041001', '187204', 'Yosodadi'),
('1872041002', '187204', 'Tejosari'),
('1872041003', '187204', 'Iring Mulyo'),
('1872041004', '187204', 'Yosorejo'),
('1872041005', '187204', 'Tejo Agung'),
('1872051001', '187205', 'Rejomulyo'),
('1872051002', '187205', 'Margorejo'),
('1872051003', '187205', 'Sumbersari Bantul'),
('1872051004', '187205', 'Margodadi');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` varchar(2) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
('1', 'Administrator'),
('2', 'IT Staf'),
('3', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` char(2) NOT NULL,
  `nama_provinsi` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama_provinsi`) VALUES
('11', 'Aceh'),
('12', 'Sumatera Utara'),
('13', 'Sumatera Barat'),
('14', 'Riau'),
('15', 'Jambi'),
('16', 'Sumatera Selatan'),
('17', 'Bengkulu'),
('18', 'Lampung'),
('19', 'Kepulauan Bangka Belitung'),
('21', 'Kepulauan Riau'),
('31', 'DKI Jakarta'),
('32', 'Jawa Barat'),
('33', 'Jawa Tengah'),
('34', 'DI Yogyakarta'),
('35', 'Jawa Timur'),
('36', 'Banten'),
('51', 'Bali'),
('52', 'Nusa Tenggara Barat'),
('53', 'Nusa Tenggara Timur'),
('6', 'dfbsdmhfgbsh'),
('61', 'Kalimantan Barat'),
('62', 'Kalimantan Tengah'),
('63', 'Kalimantan Selatan'),
('64', 'Kalimantan Timur'),
('65', 'Kalimantan Utara'),
('71', 'Sulawesi Utara'),
('72', 'Sulawesi Tengah'),
('73', 'Sulawesi Selatan'),
('74', 'Sulawesi Tenggara'),
('75', 'Gorontalo'),
('76', 'Sulawesi Barat'),
('81', 'Maluku'),
('82', 'Maluku Utara'),
('91', 'Papua Barat'),
('92', 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nis` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `tmp_lhr` varchar(225) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `jk` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `id_prov` varchar(225) NOT NULL,
  `id_kab` varchar(225) NOT NULL,
  `id_kec` varchar(225) NOT NULL,
  `id_kel` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `id_level` varchar(225) NOT NULL,
  `hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `qrcode` varchar(225) NOT NULL,
  `waktu` time NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `gambar`, `nis`, `nama`, `tmp_lhr`, `tgl_lhr`, `jk`, `alamat`, `id_prov`, `id_kab`, `id_kec`, `id_kel`, `username`, `password`, `id_level`, `hp`, `email`, `qrcode`, `waktu`, `tgl_input`) VALUES
(1, '5fcf9ab61861b.png', '', 'NOPIANA', 'Jayapura', '1992-03-06', 'Laki-laki', 'Jl. Soputan', '18', '1807', '180706', '1807062009', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '081273602178', 'man1lampungtimur@gmail.com', 'NOPIANA.png', '22:24:38', '2020-12-08'),
(70, 'MUHAMMAD IQBAL FAZATTAMAM.jpeg', '9995/0055451218', 'MUHAMMAD IQBAL FAZATTAMAM', 'Toto Katon', '2005-06-15', 'Laki-laki', 'Dusun Digul', '18', '1802', '180206', '1802062004', '9995', '0602940f23884f782058efac46f64b0f', '3', '', '', 'MUHAMMAD IQBAL FAZATTAMAM.png', '22:04:48', '2020-12-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blangko`
--
ALTER TABLE `blangko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kel`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blangko`
--
ALTER TABLE `blangko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
