<?php
session_start();
 if($_SESSION['status_login']!=true){
 header('location: login_petugas.php');
 }
?>
<!DOCTYPE html>
<html>
<head>
 <link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
crossorigin="anonymous">
 <title></title>
</head>
<body>
 <nav class="navbar navbar-light bg-light">
 <div class="container-fluid">
    <a class="navbar-brand" href="#"> TOKO ONLINE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Toko Online</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
    <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
            <li class="nav-item">
            <a class="nav-link active" aria-current="page"
            href="home_toko.php">Home</a>
            </li>
        
            <li class="nav-item">
            <a class="nav-link" aria-current="page"
            href="produk.php">Produk</a>
            </li>

            <li class="nav-item">
            <a class="nav-link" aria-current="page"
            href="tambah_produk.php">Tambah Produk</a>
            </li>

            <li class="nav-item">
            <a class="nav-link" aria-current="page"
            href="histori_pembelian.php">Transaksi</a>
            </li>

            <li class="nav-item">
            <a class="nav-link" aria-current="page"
            href="logout_toko.php">Logout</a>
            </li>
        </ul>
    </div>
 </div>
 </nav>
 <div class="container bg-light rounded" style="margin-top:10px">
 </div>
 <script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
crossorigin="anonymous"></script>
</body>
</html>