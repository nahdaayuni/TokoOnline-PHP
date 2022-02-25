<?php
 session_start();
 include "koneksi2.php";
 $cart=@$_SESSION['cart'];

 if(count($cart)>0){
    $tgl_pembelian=date('Y-m-d',mktime(0,0,0,date('m'),(date('d')),date('Y')));
        mysqli_query($conn,"INSERT INTO pembelian_produk (id_petugas, tanggal_beli) 
        VALUES('".$_SESSION['id_petugas']."','".$tgl_pembelian."')");

    $id=mysqli_insert_id($conn);
    foreach ($cart as $key_produk => $val_produk) {
        mysqli_query($conn,"insert into detail_pembelian_produk (id_pembelian_produk,id_produk,qty) 
        value('".$id."','".$val_produk['id_produk']."','".$val_produk['qty']."')");
    }
    unset($_SESSION['cart']);
    echo '<script>alert("Anda berhasil membeli produk");location.href="histori_pembelian.php"</script>';
 }
?>