<?php
 $host = "localhost"; 
 $username = "root"; 
 $password = ""; 
 $database = "qr_finish1"; 
 
 $conn = new mysqli($host, $username, $password, $database);
 
 
 if ($conn->connect_error) {
     die("Koneksi database gagal: " . $conn->connect_error);
 } 
?>


<!-- 
 $host = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "qr-absensi1"; 

$conn = new mysqli($host, $username, $password, $database);


if ($conn->connect_error) {
    die("Koneksi database gagal: " . $conn->connect_error);
}  -->