<?php include_once('../header.php');?>

<div class="box">
    <h1>Pasien</h1>
        <h4>
            <small>Edit Data Pasien</smal>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <?php

                $id = @$_GET['id'];
                $sql_pasien =  mysqli_query($con, "SELECT * FROM tb_pasien WHERE id_pasien = '$id'") or die (mysqli_error($con));
                $data = mysqli_fetch_array($sql_pasien);

                ?>
                <form action="proses.php" method="post">
         <div class="form-group">
            <label for="identitas">Nomor Identitas</label>
            <input type="hidden" name="id" value="<?=$data['id_pasien']?>">
            <input type="number" name="identitas" id="identitas" class="form-control" value="<?=$data['no_identitas']?>" required autofocus>
        </div>
                <div class="form-group">
                    <label for="nama">Nama Pasien</label>
                    <input type="text" name="nama" id="nama" class="form-control" value="<?=$data['nama_pasien']?>" required>
                </div>
         <div class="form-group">
            <label for="jk">Jenis Kelamin</label>
            <div>
                <label class="radio-inline">
                    <input type="radio" name="jk" id="jk" value="L" required <?=$data['jenis_kelamin'] == "L" ? "checked" : null ?>>Laki-laki</label>
                     <label class="radio-inline">
                    <input type="radio" name="jk" value="P"  <?=$data['jenis_kelamin'] == "P" ? "checked" : null ?>>Perempuan</label>
                
            </div>
        </div>
                <div class="form-group">
                <label for="alamat">Alamat</label> 
                <textarea name="alamat" id="alamat" class="form-control" required><?=$data['alamat']?></textarea>
                </div>
                 <div class="form-group">
            <label for="telepon">No. Telepon</label>
            <input type="number" name="telepon" id="telepon" class="form-control" value="<?=$data['no_tlp']?>" required>
        </div>
                <div class="form-group pull-right">
                    <input type="submit" name="edit" value="Simpan" class="btn btn-success">
                    </div>
                        </form>
                </div>
            </dv>
        </div>

        <?php include_once('../footer.php'); ?>