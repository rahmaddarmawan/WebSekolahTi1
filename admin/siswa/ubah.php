<?php 

if(!isset($_GET['id']) || $_GET['id'] == '') header('Location: index.php');

require_once '../../koneksi.php';
require_once 'cek_session.php';

$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM tbl_siswa WHERE id = $id");
$query_jurusan = mysqli_query($koneksi, "SELECT * FROM tbl_jurusan");
$siswa = mysqli_fetch_assoc($query);

$active = 'master'; 
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Ubah Siswa -  SLB C1 YPAC SEMARANG</title>
	<link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>
	<?php require_once '../navbar.php'; ?>
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<div class="card shadow">
					<div class="card-header">
						<div class="clearfix">
							<div class="float-left">
								Ubah Siswa
							</div>
							<div class="float-right">
								<a href="index.php">Kembali</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<form method="POST" action="proses_ubah.php?id=<?= $siswa['id'] ?>" enctype="multipart/form-data">
							<div class="form-group">
								<label for="nama">Nama</label>
								<input type="text" value="<?= $siswa['nama'] ?>" class="form-control" id="nama" placeholder="nama" autocomplete="off" required="required" name="nama">
							</div>
							<div class="form-group">
								<label for="nis">NIS</label>
								<input type="number" value="<?= $siswa['nis'] ?>" class="form-control" id="nis" placeholder="nis" autocomplete="off" required="required" name="nis">
							</div>
							<div class="form-group">
								<label for="nisn">NISN</label>
								<input type="number" value="<?= $siswa['nisn'] ?>" class="form-control" id="nisn" placeholder="nisn" autocomplete="off" required="required" name="nisn">
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group">
										<label for="jenis_kelamin">Jenis Kelamin</label>
										<select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
											<option value="L" <?= $siswa['jenis_kelamin'] == 'L' ? 'selected' : '' ?>>Laki Laki</option>
											<option value="P" <?= $siswa['jenis_kelamin'] == 'P' ? 'selected' : '' ?>>Perempuan</option>
										</select>
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<label for="no_hp">No HP</label>
										<input type="text" value="<?= $siswa['no_hp'] ?>" class="form-control" id="no_hp" placeholder="no hp" autocomplete="off" required="required" name="no_hp">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group">
										<label for="tempat_lahir">Tempat Lahir</label>
										<input type="text" value="<?= $siswa['tempat_lahir'] ?>" class="form-control" id="tempat_lahir" placeholder="tempat lahir" autocomplete="off" required="required" name="tempat_lahir">
									</div>
								</div>
								<div class="col">
									<div class="form-group">
										<label for="tanggal_lahir">Tanggal Lahir</label>
										<input type="date" value="<?= $siswa['tanggal_lahir'] ?>" class="form-control" id="tanggal_lahir" placeholder="tanggal_lahir" autocomplete="off" required="required" name="tanggal_lahir">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group">
										<label for="Jurusan">Kelas</label>
										<select name="id_jurusan" id="jurusan" class="form-control">
											<?php while($row = mysqli_fetch_assoc($query_jurusan)) : ?>
												<option value="<?= $row['id'] ?>"><?= $row['nama_jurusan'] ?></option>
											<?php endwhile; ?>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="alamat">Alamat</label>
								<textarea name="alamat" id="alamat" cols="30" rows="3" class="form-control"><?= $siswa['alamat'] ?></textarea>
							</div>
							<div class="row">
								<div class="col">
										<div class="form-group">
											<label for="tahun_masuk">Tahun Masuk</label>
											<input type="date" value="<?= $siswa['tahun_masuk'] ?>" class="form-control" id="tahun_masuk" placeholder="tahun_masuk" autocomplete="off" required="required" name="tahun_masuk">
										</div>
								</div>
								<div class="col">
										<div class="form-group">
											<label for="tahun_keluar">Tahun Keluar</label>
											<input type="date" value="<?= $siswa['tahun_keluar'] ?>" class="form-control" id="tahun_keluar" placeholder="tahun_keluar" autocomplete="off" required="required" name="tahun_keluar">
										</div>
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-sm btn-primary" name="ubah">Ubah</button>
								<button type="reset" class="btn btn-sm btn-danger" onclick="return confirm('apakah anda yakin?')">Batal</button>
								<a href="index.php" class="btn btn-sm btn-secondary">Kembali</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../../resources/js/jquery.js"></script>
	<script src="../../resources/js/bootstrap.min.js"></script>
	<script src="../../resources/ckeditor/ckeditor.js"></script>
</body>
</html>