<?php include_once('../header.php');?>

<div class="box">
    <h1>Dokter</h1>
        <h4>
            <small>Edit Data Dokter</smal>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <?php
                $id = @$_GET['id'];
                $sql_dokter = mysqli_query($con, "SELECT * FROM tb_dokter WHERE id_dokter = '$id'") or die (mysqli_error($con));
                $data = mysqli_fetch_array($sql_dokter);

                ?>
                <form action="proses.php" method="post">
                <div class="form-group">
                    <label for="nama">Nama Dokter</label>
                    <input type="hidden" name="id" value="<?=$data['id_dokter']?>">
                    <input type="text" name="nama" id="nama" value="<?=$data['nama_dokter']?>" class="form-control" required autofocus>
                </div>
         <div class="form-group">
            <label for="spesialis">Spesialis</label>
            <input type="text" name="spesiallis" id="spesialis" value="<?=$data['spesiallis']?>" class="form-control" required>
        </div>
                <div class="form-group">
                <label for="alamat">Alamat</label> 
                <textarea name="alamat" id="alamat" class="form-control" required><?=$data['alamat']?></textarea>
                </div>
                 <div class="form-group">
            <label for="telepon">No. Telepon</label>
            <input type="number" name="telepon" id="telepon" value="<?=$data['no_tlp']?>" class="form-control" required>
        </div>
                <div class="form-group pull-right">
                    <input type="submit" name="edit" value="Simpan" class="btn btn-success">
                    </div>
                        </form>
                </div>
            </dv>
        </div>

        <?php include_once('../footer.php'); ?>