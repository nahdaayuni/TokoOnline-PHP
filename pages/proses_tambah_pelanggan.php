<?php
if($_POST){

$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$telp=$_POST['telp'];

if(empty($nama)){
    echo "<script>alert('nama pelanggan tidak boleh kosong');location.href='tambah_pelanggan.php';</script>";
}
elseif(empty($alamat)){
    echo "<script>alert('alamat tidak boleh kosong');location.href='tambah_pelanggan.php';</script>";
}
 elseif(empty($telp)){
    echo "<script>alert('No Telfon tidak boleh kosong');location.href='tambah_pelanggan.php';</script>";
 }
else {
    include "koneksi2.php";
    $insert=mysqli_query($conn,"insert into pelanggan (nama,alamat,telp) value 
    ('".$nama."','".$alamat."','".$telp."')") or 
    die(mysqli_error($conn));

if($insert){
    echo "<script>alert('Sukses menambahkan pelanggan');location.href='tampil_pelanggan.php';</script>";
} else {
    echo "<script>alert('Gagal menambahkan pelanggan');location.href='tambah_pelanggan.php';</script>";
}
}
}
?>