<?php 

require_once 'koneksi.php';
if(!isset($_GET['id']) || $_GET['id'] == '') header('Location: index.php');

$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT tbl_siswa.*, tbl_jurusan.nama_jurusan FROM tbl_siswa LEFT JOIN tbl_jurusan ON tbl_siswa.id_jurusan = tbl_jurusan.id WHERE tbl_siswa.id = $id");

$row = mysqli_fetch_assoc($query);
$aktif = 'siswa';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Detail Siswa - SLB C1 YPAC SEMARANG</title>
	<link rel="stylesheet" href="resources/datatables/datatables.min.css">
	<link rel="stylesheet" href="resources/fonts/stylesheet.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<div class="container bg-light">
		<!-- top bar -->
		<div class="logo clearfix">
			<div class="float-left mt-3 mb-3">
				<div class="text float-right">
					<img src="resources/images/logo.png" alt="Logo Sekolah" width="100px" class="float-left mr-3">
					<span class="smk">SLB C1 YPAC SEMARANG</span><br>
					<span class="visi">TERWUJUDNYA PELAYANAN OPTIMAL BAGI ANAK YANG BEKEBUTUHAN KHUSUS YANG BERTAQWA MANDIRI TERAMPIL BERBUDI LUHUR BERBUDAYA SERTA CINTA DAMAI</span>
				</div>
			</div>
		</div>
			
		<!-- nav bar -->
		<?php require_once 'navbar.php'; ?>
		<br>
		<!-- content -->
		<div class="row p-3">
			<div class="col-md-8">
				<div class="title mb-3">
					Detail Siswa - <b><?= $row['nama'] ?></b>
				</div>
				<table class="table table-stripped">
							<tr>
								<td width="225px"><b>Nama</b></td>
								<td>:</td>
								<td><?= $row['nama'] ?></td>
							</tr>
							<tr>
								<td><b>NIS/NISN</b></td>
								<td>:</td>
								<td><?= $row['nis'] ?>/<?= $row['nisn'] ?></td>
							</tr>
							<tr>
								<td><b>Jenis Kelamin</b></td>
								<td>:</td>
								<td>
									<?= $row['jenis_kelamin'] == 'L' ? 'Laki Laki' : '' ?>
									<?= $row['jenis_kelamin'] == 'P' ? 'Perempuan' : '' ?>
								</td>
							</tr>
							<tr>
								<td><b>No Handphone</b></td>
								<td>:</td>
								<td><?= $row['no_hp'] ?></td>
							</tr>
							<tr>
								<td><b>Tempat Tanggal Lahir</b></td>
								<td>:</td>
								<td><?= $row['tempat_lahir'] ?>, <?= $row['tanggal_lahir'] ?></td>
							</tr>
							<tr>
								<td><b>Kelas</b></td>
								<td>:</td>
								<td><?= $row['nama_jurusan'] ?></td>
							</tr>
							<tr>
								<td><b>Alamat</b></td>
								<td>:</td>
								<td><?= $row['alamat'] ?></td>
							</tr>
							<tr>
								<td><b>Tahun Masuk</b></td>
								<td>:</td>
								<td><?= $row['tahun_masuk'] ?></td>
							</tr>
							<tr>
								<td><b>Tahun Keluar</b></td>
								<td>:</td>
								<td><?= $row['tahun_keluar'] ?></td>
							</tr>
							
							<tr>
								<td><b></td>
								<td></td>
								<td><a href="siswa.php" class="btn btn-secondary btn-sm">Kembali</a></td>
							</tr>
						</table>
			</div>
			<?php require 'sidebar.php'; ?>
		</div>
		<div class="text-white footer">
		2020 © Copyright by Web Developer
		</div>
	</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/datatables/datatables.min.js"></script>
	<script src="resources/datatables/datatable.js"></script>
</body>
</html>