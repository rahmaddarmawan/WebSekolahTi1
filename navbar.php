<nav class="navbar navbar-expand-lg nav-blue">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		<svg class="bi bi-list" width="1.6em" height="1.6em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  			<path fill-rule="evenodd" d="M4.5 13.5A.5.5 0 015 13h10a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-4A.5.5 0 015 9h10a.5.5 0 010 1H5a.5.5 0 01-.5-.5zm0-4A.5.5 0 015 5h10a.5.5 0 010 1H5a.5.5 0 01-.5-.5z" clip-rule="evenodd"/>
		</svg>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'home' ? 'active' : '' ?>" href="index.php">HOME</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'artikel' ? 'active' : '' ?>" href="artikel.php">ARTIKEL</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'siswa' ? 'active' : '' ?>" href="siswa.php">SISWA</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'guru' ? 'active' : '' ?>" href="guru.php">GURU</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'jurusan' ? 'active' : '' ?>" href="jurusan.php">KELAS</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'galery' ? 'active' : '' ?>" href="galery.php">GALERI</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'visi_misi' ? 'active' : '' ?>" href="visi_misi.php">VISI MISI</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'bukutamu' ? 'active' : '' ?>" href="bukutamu.php">BUKU TAMU</a>
			<a class="nav-item nav-link text-white navlink <?= $aktif == 'tentang_website' ? 'active' : '' ?>" href="tentang_website.php">TENTANG WEBSITE</a>
		</div>
	</div>
</nav>