<nav class="navbar navbar-dark bg-primary text-white">
   <div class="container-fluid">
      <a class="navbar-brand"><strong><?= $identitas->judul_website; ?></strong></a>
      <span class="small"><?= $identitas->alamat . ' - ' . $identitas->email . ' - ' . $identitas->telp; ?></span>
      <form class="form-inline">
         <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
         <button class="btn btn-warning my-2 my-sm-0" type="submit">Search</button>
         <a href="<?= base_url('administrator/auth'); ?>" class="btn btn-success my-2 my-sm-0 ml-2">Login</a>
      </form>
   </div>
</nav>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
   <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav mx-auto">
            <li class="nav-item active">
               <a class="nav-link" href="#">Beranda <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
               <a class="nav-link ml-3" href="#">Tentang Kampus</a>
            </li>
            <li class="nav-item">
               <a class="nav-link ml-3" href="#">Informasi</a>
            </li>
            <li class="nav-item">
               <a class="nav-link ml-3" href="#">Fasilitas</a>
            </li>
            <li class="nav-item">
               <a class="nav-link ml-3" href="#">Gallery</a>
            </li>
            <li class="nav-item">
               <a class="nav-link ml-3" href="#">Kontak</a>
            </li>
         </ul>
      </div>
   </div>
</nav>

<!-- CAROUSEL -->
<section>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
         <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
         <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
         <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
         <div class="carousel-item active">
            <img src="<?= base_url('assets/img/slider1.jpg'); ?>" class="d-block w-100 myCarousel">
         </div>
         <div class="carousel-item">
            <img src="<?= base_url('assets/img/slider2.jpg'); ?>" class="d-block w-100 myCarousel">
         </div>
         <div class="carousel-item">
            <img src="<?= base_url('assets/img/slider3.jpg'); ?>" class="d-block w-100 myCarousel">
         </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
      </a>
   </div>
</section>
<!-- END CAROUSEL -->

<!-- Tentang Kampus -->
<section class="m-5">
   <div class="card text-center">
      <div class="card-header">
         <strong style="font-size: 20px;">Tentang Kampus</strong>
      </div>
      <div class="card-body">
         <p class="card-text text-justify"><?= word_limiter($tentang->sejarah, 100); ?></p>
         <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalSejarah">Selengkapnya...</a>
      </div>
   </div>
</section>
<!-- END Tentang Kampus -->

<!-- Scrollable modal Tentang Kampus -->
<!-- Modal -->
<div class="modal fade" id="modalSejarah" tabindex="-1" aria-labelledby="modalSejarahLabel" aria-hidden="true">
   <div class="modal-dialog modal-dialog-scrollable modal-lg">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="modalSejarahLabel">Sejarah, Visi dan Misi <?= $identitas->judul_website; ?></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body text-justify">
            <strong>
               <p class="text-center" style="font-size: 20px;">Sejarah</p>
            </strong>
            <p><?= $tentang->sejarah; ?></p>
            <strong>
               <p class="text-center" style="font-size: 20px;">Visi</p>
            </strong>
            <p><?= $tentang->visi; ?></p>
            <strong>
               <p class="text-center" style="font-size: 20px;">Misi</p>
            </strong>
            <p><?= $tentang->misi; ?></p>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
         </div>
      </div>
   </div>
</div>
<!-- End Scrollable modal Tentang Kampus -->