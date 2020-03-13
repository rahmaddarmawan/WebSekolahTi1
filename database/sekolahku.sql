/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.38-MariaDB : Database - sekolahku
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sekolahku` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sekolahku`;

/*Table structure for table `tbl_artikel` */

DROP TABLE IF EXISTS `tbl_artikel`;

CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text,
  `tanggal` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `tbl_artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori_artikel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_artikel` */

insert  into `tbl_artikel`(`id`,`judul`,`isi`,`tanggal`,`foto`,`id_kategori`) values 
(12,'Siswa YPAC Semarang Juarai Lomba IT di India','<p><em><strong>HEBAAATTT !!!</strong></em></p>','2020-01-10','20200204-siswa-ypac-semarang-juarai-lomba-it-di-india.jpg',10),
(13,'Siswa SLB YPAC Semarang Ikut Ujian di Tengah Keterbatasan Fisik','<p><em><strong>SEMANGAAATTTT !!</strong></em></p>','2020-01-10','20200204-siswa-slb-ypac-semarang-ikut-ujian-di-tengah-keterbatasan-fisik.jfif',3),
(14,'Bikin Haru!! Guru Ini Dengan Telaten Bacakan Soal Siswa SMPLB YPAC Semarang Ikuti UNBK','<p><strong><em>PANTANG MENYERAH !</em></strong></p>','2020-01-10','20200204-bikin-haru!!-guru-ini-dengan-telaten-bacakan-soal-siswa-smplb-ypac-semarang-ikuti-unbk.jpg',3),
(15,'Siswi YPAC Juarai Kompetisi Futsal di Malaysia','<p><em><strong>LUAR BIASA !!</strong></em></p>','2020-01-10','20200204-siswi-ypac-juarai-kompetisi-futsal-di-malaysia.jpg',10);

/*Table structure for table `tbl_bukutamu` */

DROP TABLE IF EXISTS `tbl_bukutamu`;

CREATE TABLE `tbl_bukutamu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_bukutamu` */

insert  into `tbl_bukutamu`(`id`,`nama`,`email`,`isi`) values 
(3,'Fakhrul Fanani Nugroho','fakhrulnugroho@gmail.com','Websitenya sangat bagus dan menarik!');

/*Table structure for table `tbl_galery` */

DROP TABLE IF EXISTS `tbl_galery`;

CREATE TABLE `tbl_galery` (
  `id_galeri` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `kegiatan` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_galery` */

insert  into `tbl_galery`(`id_galeri`,`foto`,`kegiatan`,`deskripsi`) values 
(1,'dfgh','fghj','fghj'),
(2,'fghgfd','122','ghjhgfds');

/*Table structure for table `tbl_guru` */

DROP TABLE IF EXISTS `tbl_guru`;

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `nip` int(10) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `mata_pelajaran` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_guru` */

insert  into `tbl_guru`(`id`,`nama`,`nip`,`jenis_kelamin`,`no_hp`,`tempat_lahir`,`tanggal_lahir`,`mata_pelajaran`,`alamat`,`foto`) values 
(17,'a',909090,'L','0987','tgl','2020-02-20','ipa','kota','a.jpg');

/*Table structure for table `tbl_jurusan` */

DROP TABLE IF EXISTS `tbl_jurusan`;

CREATE TABLE `tbl_jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(30) DEFAULT NULL,
  `ka_prodi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_jurusan_ibfk_1` (`ka_prodi`),
  CONSTRAINT `tbl_jurusan_ibfk_1` FOREIGN KEY (`ka_prodi`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_jurusan` */

insert  into `tbl_jurusan`(`id`,`nama_jurusan`,`ka_prodi`) values 
(8,'3B',NULL),
(9,'1a',17);

/*Table structure for table `tbl_kategori_artikel` */

DROP TABLE IF EXISTS `tbl_kategori_artikel`;

CREATE TABLE `tbl_kategori_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_kategori_artikel` */

insert  into `tbl_kategori_artikel`(`id`,`nama_kategori`) values 
(3,'Kegiatan Sekolah'),
(10,'Event');

/*Table structure for table `tbl_pengguna` */

DROP TABLE IF EXISTS `tbl_pengguna`;

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pengguna` */

insert  into `tbl_pengguna`(`id`,`nama`,`username`,`password`,`foto`) values 
(3,'Administrator','admin','$2y$10$9uAKnax9/7HoMVtMFWDUEe6GhtWdq5SIn75AWwHnYboKctXCfybVG','administrator.jpg'),
(4,'adi','123','$2y$10$T1Qn.Vm3Xrt0ZaXRSc7WpuW3a09Bo7XV8XRMPp/iY7WacZgyPhOvW','adi.jpg');

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `nis` int(4) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(80) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_jurusan` (`id_jurusan`),
  CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_siswa` */

insert  into `tbl_siswa`(`id`,`nama`,`nis`,`jenis_kelamin`,`tempat_lahir`,`tanggal_lahir`,`alamat`,`no_hp`,`id_jurusan`) values 
(4,'Nugroho',6317,'L','Cilacap','2002-02-18','Jalan Pahlawan no 1','089519291829',8),
(5,'goku',112345,'L','dnfb','2020-02-11','ma','1245',8),
(8,'aa',123,'L','ooo','2020-02-18','umah','986',8),
(9,'wawawaww',12,'L','aa','2020-02-06','asasasa','12',NULL);

/*Table structure for table `tbl_tentang_website` */

DROP TABLE IF EXISTS `tbl_tentang_website`;

CREATE TABLE `tbl_tentang_website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tentang_website` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_tentang_website` */

insert  into `tbl_tentang_website`(`id`,`tentang_website`) values 
(1,'<p>YPAC Semarang merupakan Yayasan yang membina anak-anak cacat baik fisik dan mental, Rehabilitation Center of Semarang Disability Children Management Foundation. Yayasan Sosial ini merupakan organisasi Nirlaba yang didirikan pada Tanggal 19 april 1954 oleh Ibu Milono ( istri Residen Semarang ) atas Prakarsa Prof. Dr.dr.Soeharso. Masyarakat telah menyikapi secara positif dengan kepeduluian sosial yang tinggi disertai keikhlasan dalam penanganan secara terpadu dengaqn membentuk suatu Yayasan Nirlaba yaitu YPAC di Semarang, yang merupakan salah satu cabang dari 16 cabang YPAC seluruh Indonesia.</p><p><strong>Layanan Sosial YPAC Semarang</strong><br />Pelayanan sosial bagi anak cacat YPAC Semarang ini menyediakan asrama maupun tempat Terapi-terapi diantaranya Fisioterapi, Terapi Okupasi, Terapi Wicara, Terapi Musik serta Bina Mandiri. Fisioterapi mengobati dengan menggunakan khasiat tenaga alam seperti air, listrik, suara, cahaya, tekanan/gaya, dan sebagainya. Terapi Okupasi merupakan perpaduan antara ilmu pengetahuan dan seni untuk mengarahkan penderita kepada aktivitas selektif, agar kesehatan dapat ditingkatkan dan dipertahankan, serta mencegah kecacatan melalui kegiatan dan kesibukan kerja untuk penderita cacat mental maupun fisik. Terapi Wicara merupakan satu ilmu dibidang kesehatan yang bertanggung jawab menangani, memeriksa, mendiagnosa, memberikan latihan individu yang mengalami gangguan komunikasi akibatnya adanya gangguan neuromuskuler, pertumbuhan dan perkembangan. Terapi Musik adalah suatu proses yang terencana, bersifat prefentif dalam usaha penyembuhan terhadap penderita yang mengalami kelainan atau hambatan dalam pertumbuhannya, baik fisik motorik, sosial emosional maupun mental intelegency. Terapi musik memberikan pelayanan bagi mereka yang dianggap perlu untuk mendapatkannya khususnya pada penderita yang ada di YPAC, yang mengalami hambatan fisik motorik mental intelegency maupun sosial emosionalnya.</p><p><strong>Yayasan Pembinaan Anak Cacat YPAC Semarang</strong><br />Alamat : Jl KH Ahmad Dahlan No 4 Semarang.<br />Nomor Telepon: 024 &ndash; 8317382<br />Web Site : www.ypac-semarang.org<br />Email Person : pran_ypacsemarang@yahoo.co.id<br />Rekening Bank: BNI CAB UNDIP a/n YPAC Semarang No: 33 665 333</p><p>Lokasi YPAC Semarang ini berdekatan dengan <a href=\"http://seputarsemarang.com/rumah-sakit-telogorejo-ahmad-dahlan-2290\">Rumah Sakit RS Telogorejo</a>, <a href=\"http://seputarsemarang.com/river-view-cafe-simpang-lima-residence-2294\">Riverview Cafe</a>, <a href=\"http://seputarsemarang.com/hotel-horison-semarang-1048\">Hotel Horison</a> ataupun <a href=\"http://seputarsemarang.com/mall-ciputra-simpang-lima-1197\">Mall Ciputra</a>.</p>');

/*Table structure for table `tbl_visi_misi` */

DROP TABLE IF EXISTS `tbl_visi_misi`;

CREATE TABLE `tbl_visi_misi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visi_misi` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_visi_misi` */

insert  into `tbl_visi_misi`(`id`,`visi_misi`) values 
(1,'<p><strong>Visi SLBD&nbsp;YPAC&nbsp;SEMARANG</strong></p><p>Terwujudnya Pelayanan Optimal bagi Anak Yang Berkebutuhan Khusus Yang Bertaqwa Mandiri Terampil Berbudi Luhur Berbudaya Serta Cinta Damai</p><p><strong>Misi SLBD&nbsp;YPAC&nbsp;SEMARANG</strong></p><ol><li>Melaksanakan dan mengamalkan ajaran agama dan keyakinan masing - masing dalam kehidupan sehari - hari.</li><li>Melaksanakan pembelajaran individual maupun klaksial.</li><li>Membekali peserta didik berbagai ketrampilan yang berguna bagi kehidupannya.</li><li>Berperilaku terpuji, berbudi luhur dan berbudaya.</li><li>Menjalin Hubungan dan kerja sama dengan masyarakat.</li></ol>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
