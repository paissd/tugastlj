<?php
$koneksi = mysqli_connect("localhost","root","","penjualan_faiz");

// cek koneksi
if (mysqli_connect_errno()){
    echo "koneksi ilang :" . mysqli_connect_error();
}

?>