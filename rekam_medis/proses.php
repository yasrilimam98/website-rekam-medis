<?php 
require_once "../_config/config.php";
require "../asset/libs/vendor/autoload.php";

use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;

if(isset($_POST['add'])) {
    $uuid = Uuid::uuid4()->toString();

    $pasien = trim(mysqli_real_escape_string($con, $_POST['pasien']));
    $keluhan = trim(mysqli_real_escape_string($con, $_POST['keluhan']));
    $dokter = trim(mysqli_real_escape_string($con, $_POST['dokter']));
    $diagnosa = trim(mysqli_real_escape_string($con, $_POST['diagnosa']));
    $poli = trim(mysqli_real_escape_string($con, $_POST['poli']));
    $tgl = trim(mysqli_real_escape_string($con, $_POST['tgl']));

    mysqli_query($con, "INSERT INTO table_rekammedis (id_pus, id_pasien, keluhan, id_dokter, diagnosa, id_poli, tgl_periksa) VALUES('$uuid','$pasien','$keluhan','$dokter','$diagnosa','$poli','$tgl')") or die (mysqli_error($con));

          $obat = $_POST['obat'];
          foreach ($obat as $ob) {
     mysqli_query($con, "INSERT INTO tb_ps_obat (id_pus, id_obat) VALUES ('$uuid','$ob')") or die (mysqli_error($con));
     
      }

    echo "<script>window.location='data.php';</script>";
}
?> 