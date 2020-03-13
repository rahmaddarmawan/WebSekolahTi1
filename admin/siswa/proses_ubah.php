<?php 

if(!isset($_POST['ubah'])) header('Location: ubah.php');


require_once '../../koneksi.php';
require_once 'cek_session.php';

$nama = mysqli_real_escape_string($koneksi, isset($_POST['nama']) ? $_POST['nama'] : '');
$nis = mysqli_real_escape_string($koneksi, isset($_POST['nis']) ? $_POST['nis'] : '');
$nisn = mysqli_real_escape_string($koneksi, isset($_POST['nisn']) ? $_POST['nisn'] : '');
$jenis_kelamin = mysqli_real_escape_string($koneksi, isset($_POST['jenis_kelamin']) ? $_POST['jenis_kelamin'] : '');
$no_hp = mysqli_real_escape_string($koneksi, isset($_POST['no_hp']) ? $_POST['no_hp'] : '');
$tempat_lahir = mysqli_real_escape_string($koneksi, isset($_POST['tempat_lahir']) ? $_POST['tempat_lahir'] : '');
$tanggal_lahir = mysqli_real_escape_string($koneksi, isset($_POST['tanggal_lahir']) ? $_POST['tanggal_lahir'] : '');
$id_jurusan = mysqli_real_escape_string($koneksi, isset($_POST['id_jurusan']) ? $_POST['id_jurusan'] : '');
$alamat = mysqli_real_escape_string($koneksi, isset($_POST['alamat']) ? $_POST['alamat'] : '');
$tahun_masuk = mysqli_escape_string($koneksi, $_POST['tahun_masuk']);
$tahun_keluar = mysqli_escape_string($koneksi, $_POST['tahun_keluar']);
$id = $_GET['id'];

		
	$query = mysqli_query($koneksi, "UPDATE tbl_siswa SET nama = '$nama', nis = $nis, nisn =$nisn, jenis_kelamin = '$jenis_kelamin', tempat_lahir = '$tempat_lahir', tanggal_lahir = '$tanggal_lahir', alamat = '$alamat', id_jurusan = $id_jurusan, tahun_masuk = '$tahun_masuk', tahun_keluar = '$tahun_keluar' WHERE id = $id") or die(mysqli_error($koneksi));

	if($query){
		$_SESSION['sukses'] = 'Data Berhasil Diubah!';
		header('Location: index.php');
	} else {
		$_SESSION['gagal'] = 'Data Gagal Diubah!';
		header('Location: index.php');
	}
