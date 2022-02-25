<?php
 include "header_toko.php";
?>
<style>
    img{
        height:500px; 
        width:400px;
        }
</style>
</br>
<h2 align="center">Selamat Datang <?=$_SESSION['nama_petugas']?> di Website Toko 
Online</h2>
</br>
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://akcdn.detik.net.id/visual/2021/07/29/ilustrasi-sneakers-putih-1_169.jpeg?w=650" alt="Los Angeles" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Produk Rekomendasi</h3>
        <p>Selalu tampil menarik dengan brand terbaik!</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://i1.wp.com/indiekraf.com/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-16-at-22.02.08.jpeg?fit=800%2C450&ssl=1" alt="Chicago" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="https://highlight.id/wp-content/uploads/2018/09/Highlight_sejarah-awal-mula-sepatu-sneakers-shoes-history-merek-branded-model-desain-keluaran-terbaru-update-rilis_06-640x384.jpg" alt="New York" class="d-block w-100">
    </div>
  </div>

  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

<div class="container mt-5">
  <div class="row">
    <div class="col-sm-4">
      <h3 align = "center">DISKON</h3>
      </br>
      <p align = "center">Dapatkan diskon 50% untuk setiap pembelian produk sepatu Nike Air Force Putih Original</p>
      <p align = "center">Dan dapatkan potongan hingga Rp. 50.000 bagi setiap pembelian sneekers wanita</p>
    </div>
    <div class="col-sm-4">
      <h3>BELI 1 GRATIS 1</h3>
      <p>Untuk pembelian sepatu Convers All Star ukuran 35-40 mulai tanggal 17-25 Desember 2021</p>
      <p>Dan dapatkan merchendise Hari Raya Natal setiap pembelian lebih dari Rp. 200.000</p>
    </div>
    <div class="col-sm-4">
      <h3></h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>