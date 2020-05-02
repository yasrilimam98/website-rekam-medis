<?php include_once('../header.php');?>

<div class="box">
    <h1>Pasien</h1>
        <h4>
            <small>Tambah Data Pasien</smal>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <form action="proses.php" method="post">
         <div class="form-group">
            <label for="identitas">Nomor Identitas</label>
            <input type="number" name="identitas" id="identitas" class="form-control" required autofocus>
        </div>
                <div class="form-group">
                    <label for="nama">Nama Pasien</label>
                    <input type="text" name="nama" id="nama" class="form-control" required>
                </div>
         <div class="form-group">
            <label for="jk">Jenis Kelamin</label>
            <div>
                <label class="radio-inline">
                    <input type="radio" name="jk" id="jk" value="L" required>Laki-laki</label>
                     <label class="radio-inline">
                    <input type="radio" name="jk" value="P">Perempuan</label>
                
            </div>
        </div>
                <div class="form-group">
                <label for="alamat">Alamat</label> 
                <textarea name="alamat" id="alamat" class="form-control" required></textarea>
                </div>
                 <div class="form-group">
            <label for="telepon">No. Telepon</label>
            <input type="number" name="telepon" id="telepon" class="form-control" required>
        </div>
                <div class="form-group pull-right">
                    <input type="submit" name="add" value="Simpan" class="btn btn-success">
                    </div>
                        </form>
                </div>
            </dv>
        </div>

        <?php include_once('../footer.php'); ?>