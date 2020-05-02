<?php 
require_once "../_config/config.php";
require "../asset/libs/vendor/autoload.php";

use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;

if(isset($_POST['add'])) {
    $uuid = Uuid::uuid4()->toString();
    $nama = trim(mysqli_real_escape_string($con, $_POST['nama']));
    $spesiallis = trim(mysqli_real_escape_string($con, $_POST['spesiallis']));
    $alamat = trim(mysqli_real_escape_string($con, $_POST['alamat']));
    $telepon = trim(mysqli_real_escape_string($con, $_POST['telepon']));
    mysqli_query($con, "INSERT INTO tb_dokter (id_dokter, nama_dokter,spesiallis,alamat, no_tlp) VALUES ('$uuid', '$nama','$spesiallis','$alamat','$telepon')") or die (mysqli_error($con));
    echo "<script>window.location='data.php';</script>";
}else if(isset($_POST['edit'])){
     $id = $_POST['id'];
   $nama = trim(mysqli_real_escape_string($con, $_POST['nama']));
    $spesiallis = trim(mysqli_real_escape_string($con, $_POST['spesiallis']));
    $alamat = trim(mysqli_real_escape_string($con, $_POST['alamat']));
    $telepon = trim(mysqli_real_escape_string($con, $_POST['telepon']));
    mysqli_query($con, "UPDATE tb_dokter SET nama_dokter = '$nama',spesiallis = '$spesiallis',alamat = '$alamat',no_tlp = '$telepon' WHERE id_dokter = '$id'") or die (mysqli_error($con));
    echo "<script>window.location='data.php';</script>";
}
?> 