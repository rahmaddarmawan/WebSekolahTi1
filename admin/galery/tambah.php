<?php $active = 'master';
	require_once 'cek_session.php';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Tambah Data Galery - SLB C1 YPAC SEMARANG</title>
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
								Tambah Galery
							</div>
							<div class="float-right">
								<a href="index.php">Kembali</a>
							</div>
						</div>
					</div>
					<div class="card-body">
						<form method="POST" action="proses_tambah.php" enctype="multipart/form-data">

							<div class="row">
									<div class="col">
										<div class="form-group">
											<label for="foto">Foto</label>
											<input type="file" class="form-control-file" id="foto" autocomplete="off" required="required" name="foto">
										</div>
									</div>
									
							</div>

							<div class="form-group">
								<label for="kegiatan"></label>
								<input type="text" class="form-control" id="kegiatan" placeholder="kegiatan" autocomplete="off" required="required" name="kegiatan">
							</div>
							
							<div class="form-group">
								<button type="submit" class="btn btn-sm btn-primary" name="tambah">Tambah</button>
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
</body>
</html>