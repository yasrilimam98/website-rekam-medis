<?php
require_once "../_config/config.php";

$chk = @$_POST['checked'];
if(!isset($chk)) {
	echo "<script>alert('Tidak ada data yang dipilih');window.location='data.php';</script>";
}else {
	foreach($chk as $id){
		$sql = mysqli_query($con,"DELETE  FROM tb_dokter WHERE id_dokter = '$id'") or die (mysqli_error($con));
	}

	if ($sql) {
       echo "<script>alert('".count($chk)." Data berhasil dihapus');window.location='data.php';</script>"; 
}else{
    echo "<script>alert('Gagal hapus data, Coba lagi');</script>"; 
	}
}
?>