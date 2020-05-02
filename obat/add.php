<?php include_once('../header.php');?>

<div class="box">
    <h1>Obat</h1>
        <h4>
            <small>Tambah Data Obat</smal>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <form action="proses.php" method="post">
                <div class="form-group">
                    <label for="nama">Nama Obat</label>
                    <input type="text" name="nama" id="nama" class="form-control" required autofocus>
                </div>
                <div class="form-group">
                <label for="ket">Keterangan</label> 
                <textarea name="ket" id="ket" class="form-control" required></textarea>
                </div>
                <div class="form-group pull-right">
                    <input type="submit" name="add" value="Simpan" class="btn btn-success">
                    </div>
                        </form>
                </div>
            </dv>
        </div>

        <?php include_once('../footer.php'); ?>