-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2020 pada 09.04
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id`, `judul`, `isi`, `tanggal`, `foto`, `id_kategori`) VALUES
(12, 'Siswa YPAC Semarang Juarai Lomba IT di India', '<p><em><strong>HEBAAATTT dan BANGGA !!!</strong></em></p><p><a href=\"https://www.youtube.com/watch?v=p--nJ5NKWi0\">https://www.youtube.com/watch?v=p--nJ5NKWi0</a></p>', '2020-01-10', '20200219-siswa-ypac-semarang-juarai-lomba-it-di-india.jpg', 10),
(13, 'Siswa SLB YPAC Semarang Ikut Ujian di Tengah Keterbatasan Fisik', '<p><em><strong>SEMANGAAATTTT !!</strong></em></p>', '2020-01-10', '20200204-siswa-slb-ypac-semarang-ikut-ujian-di-tengah-keterbatasan-fisik.jfif', 3),
(14, 'Bikin Haru!! Guru Ini Dengan Telaten Bacakan Soal Siswa SMPLB YPAC Semarang Ikuti UNBK', '<p><strong><em>PANTANG MENYERAH !</em></strong></p>', '2020-01-10', '20200204-bikin-haru!!-guru-ini-dengan-telaten-bacakan-soal-siswa-smplb-ypac-semarang-ikuti-unbk.jpg', 3),
(17, 'Siswi YPAC Juarai Kompetisi Futsal di Malaysia', '<p><strong><em>luar biasa kalian semua !!</em></strong></p>', '2020-02-19', '20200219-siswi-ypac-juarai-kompetisi-futsal-di-malaysia.jpg', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bukutamu`
--

CREATE TABLE `tbl_bukutamu` (
  `id` int(11) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_bukutamu`
--

INSERT INTO `tbl_bukutamu` (`id`, `nama`, `email`, `isi`) VALUES
(3, 'Fakhrul Fanani Nugroho', 'fakhrulnugroho@gmail.com', 'Websitenya sangat bagus dan menarik!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galery`
--

CREATE TABLE `tbl_galery` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `kegiatan` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galery`
--

INSERT INTO `tbl_galery` (`id`, `foto`, `kegiatan`) VALUES
(9, 'tidur-asik.JPG', 'tidur asik'),
(10, '123mbahe.JPG', '123mbahe'),
(11, 'ffgd.jpg', 'ffgd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nip` int(10) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `mata_pelajaran` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(30) DEFAULT NULL,
  `ka_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id`, `nama_jurusan`, `ka_prodi`) VALUES
(8, '3B', NULL),
(9, '1a', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_artikel`
--

CREATE TABLE `tbl_kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori_artikel`
--

INSERT INTO `tbl_kategori_artikel` (`id`, `nama_kategori`) VALUES
(3, 'Kegiatan Sekolah'),
(10, 'Event');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(3, 'Administrator', 'admin', '$2y$10$9uAKnax9/7HoMVtMFWDUEe6GhtWdq5SIn75AWwHnYboKctXCfybVG', 'administrator.jpg'),
(4, 'adi', '123', '$2y$10$T1Qn.Vm3Xrt0ZaXRSc7WpuW3a09Bo7XV8XRMPp/iY7WacZgyPhOvW', 'adi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nis` int(6) DEFAULT NULL,
  `nisn` int(25) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(80) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_keluar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`, `nis`, `nisn`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `id_jurusan`, `tahun_masuk`, `tahun_keluar`) VALUES
(13, 'rez', 12345, 54321, 'L', 'Tegal', '1999-03-02', 'Jalan Merak', '0839710', 8, '2020-02-17', '2023-04-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tentang_website`
--

CREATE TABLE `tbl_tentang_website` (
  `id` int(11) NOT NULL,
  `tentang_website` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_tentang_website`
--

INSERT INTO `tbl_tentang_website` (`id`, `tentang_website`) VALUES
(1, '<p>YPAC Semarang merupakan Yayasan yang membina anak-anak cacat baik fisik dan mental, Rehabilitation Center of Semarang Disability Children Management Foundation. Yayasan Sosial ini merupakan organisasi Nirlaba yang didirikan pada Tanggal 19 april 1954 oleh Ibu Milono ( istri Residen Semarang ) atas Prakarsa Prof. Dr.dr.Soeharso. Masyarakat telah menyikapi secara positif dengan kepeduluian sosial yang tinggi disertai keikhlasan dalam penanganan secara terpadu dengaqn membentuk suatu Yayasan Nirlaba yaitu YPAC di Semarang, yang merupakan salah satu cabang dari 16 cabang YPAC seluruh Indonesia.</p><p><strong>Layanan Sosial YPAC Semarang</strong><br />Pelayanan sosial bagi anak cacat YPAC Semarang ini menyediakan asrama maupun tempat Terapi-terapi diantaranya Fisioterapi, Terapi Okupasi, Terapi Wicara, Terapi Musik serta Bina Mandiri. Fisioterapi mengobati dengan menggunakan khasiat tenaga alam seperti air, listrik, suara, cahaya, tekanan/gaya, dan sebagainya. Terapi Okupasi merupakan perpaduan antara ilmu pengetahuan dan seni untuk mengarahkan penderita kepada aktivitas selektif, agar kesehatan dapat ditingkatkan dan dipertahankan, serta mencegah kecacatan melalui kegiatan dan kesibukan kerja untuk penderita cacat mental maupun fisik. Terapi Wicara merupakan satu ilmu dibidang kesehatan yang bertanggung jawab menangani, memeriksa, mendiagnosa, memberikan latihan individu yang mengalami gangguan komunikasi akibatnya adanya gangguan neuromuskuler, pertumbuhan dan perkembangan. Terapi Musik adalah suatu proses yang terencana, bersifat prefentif dalam usaha penyembuhan terhadap penderita yang mengalami kelainan atau hambatan dalam pertumbuhannya, baik fisik motorik, sosial emosional maupun mental intelegency. Terapi musik memberikan pelayanan bagi mereka yang dianggap perlu untuk mendapatkannya khususnya pada penderita yang ada di YPAC, yang mengalami hambatan fisik motorik mental intelegency maupun sosial emosionalnya.</p><p><strong>Yayasan Pembinaan Anak Cacat YPAC Semarang</strong><br />Alamat : Jl KH Ahmad Dahlan No 4 Semarang.<br />Nomor Telepon: 024 &ndash; 8317382<br />Web Site : www.ypac-semarang.org<br />Email Person : pran_ypacsemarang@yahoo.co.id<br />Rekening Bank: BNI CAB UNDIP a/n YPAC Semarang No: 33 665 333</p><p>Lokasi YPAC Semarang ini berdekatan dengan <a href=\"http://seputarsemarang.com/rumah-sakit-telogorejo-ahmad-dahlan-2290\">Rumah Sakit RS Telogorejo</a>, <a href=\"http://seputarsemarang.com/river-view-cafe-simpang-lima-residence-2294\">Riverview Cafe</a>, <a href=\"http://seputarsemarang.com/hotel-horison-semarang-1048\">Hotel Horison</a> ataupun <a href=\"http://seputarsemarang.com/mall-ciputra-simpang-lima-1197\">Mall Ciputra</a>.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_visi_misi`
--

CREATE TABLE `tbl_visi_misi` (
  `id` int(11) NOT NULL,
  `visi_misi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_visi_misi`
--

INSERT INTO `tbl_visi_misi` (`id`, `visi_misi`) VALUES
(1, '<p><strong>Visi SLBC 1 YPAC&nbsp;SEMARANG</strong></p><p>Terwujudnya Pelayanan Optimal bagi Anak Yang Berkebutuhan Khusus Yang Bertaqwa Mandiri Terampil Berbudi Luhur Berbudaya Serta Cinta Damai</p><p><strong>Misi SLBC 1 YPAC&nbsp;SEMARANG</strong></p><ol><li>Melaksanakan dan mengamalkan ajaran agama dan keyakinan masing - masing dalam kehidupan sehari - hari.</li><li>Melaksanakan pembelajaran individual maupun klaksial.</li><li>Membekali peserta didik berbagai ketrampilan yang berguna bagi kehidupannya.</li><li>Berperilaku terpuji, berbudi luhur dan berbudaya.</li><li>Menjalin Hubungan dan kerja sama dengan masyarakat.</li></ol>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `tbl_bukutamu`
--
ALTER TABLE `tbl_bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_galery`
--
ALTER TABLE `tbl_galery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_jurusan_ibfk_1` (`ka_prodi`);

--
-- Indeks untuk tabel `tbl_kategori_artikel`
--
ALTER TABLE `tbl_kategori_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_tentang_website`
--
ALTER TABLE `tbl_tentang_website`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_bukutamu`
--
ALTER TABLE `tbl_bukutamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_galery`
--
ALTER TABLE `tbl_galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori_artikel`
--
ALTER TABLE `tbl_kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_tentang_website`
--
ALTER TABLE `tbl_tentang_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD CONSTRAINT `tbl_artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori_artikel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD CONSTRAINT `tbl_jurusan_ibfk_1` FOREIGN KEY (`ka_prodi`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
