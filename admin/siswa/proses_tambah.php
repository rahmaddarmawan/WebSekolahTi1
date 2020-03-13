<?php 

if(!isset($_POST['tambah'])) header('Location: tambah.php');

require_once '../../koneksi.php';
require_once 'cek_session.php';

$nama = mysqli_escape_string($koneksi, $_POST['nama']);
$nis = mysqli_escape_string($koneksi, $_POST['nis']);
$nisn = mysqli_escape_string($koneksi, $_POST['nisn']);
$jenis_kelamin = mysqli_escape_string($koneksi, $_POST['jenis_kelamin']);
$no_hp = mysqli_escape_string($koneksi, $_POST['no_hp']);
$tempat_lahir = mysqli_escape_string($koneksi, $_POST['tempat_lahir']);
$tanggal_lahir = mysqli_escape_string($koneksi, $_POST['tanggal_lahir']);
$id_jurusan = mysqli_escape_string($koneksi, $_POST['id_jurusan']);
$alamat = mysqli_escape_string($koneksi, $_POST['alamat']);
$tahun_masuk = mysqli_escape_string($koneksi, $_POST['tahun_masuk']);
$tahun_keluar = mysqli_escape_string($koneksi, $_POST['tahun_keluar']);

	$query = mysqli_query($koneksi, "INSERT INTO tbl_siswa (nama, nis, nisn, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat, no_hp, id_jurusan, tahun_masuk, tahun_keluar) VALUES('$nama', $nis, $nisn, '$jenis_kelamin', '$tempat_lahir', '$tanggal_lahir', '$alamat', '$no_hp', '$id_jurusan','$tahun_masuk','$tahun_keluar')") or die(mysqli_error($koneksi));
	if($query){
		$_SESSION['sukses'] = 'Data Berhasil Ditambahkan!';
		header('Location: index.php');
	} else {
			$_SESSION['gagal'] = 'Data Gagal Ditambahkan!';
			header('Location: index.php');
	}
	

