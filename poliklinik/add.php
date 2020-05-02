<?php include_once('../header.php'); ?>

<div class="box">
        <h1>Poliklinik</h1>
        <h4>
            <small>Tambah Data Poliklinik</smal>
            <div class="pull-right">
                <a href="data.php" class="btn btn-info btn-xs">Data</a>
                 <a href="generate.php" class="btn btn-primary btn-xs">Tambah Data</a>
    </div>                
</h4>
	<div class="box">
		<div class="col-lg-8 col-lg-offset-2">
			<form action="proses.php" method="post">
				<input type="hidden" name="total" value="<?=@$_POST['count_add']?>">
				<table class="table">
					<tr>
						<th>#</th>
						<th>Nama Poliklinik</th>
						<th>Gedung</th>

					</tr>
					<?php
					for ($i=1; $i<=$_POST['count_add']; $i++) { ?> 
					<tr>
						<td><?=$i?></td>
						<td>
							<input type="text" name="nama-<?=$i?>" class="form-control" required>
						</td>
						<td>
							<input type="text" name="gedung-<?=$i?>" class="form-control" required>
						</td>
					</tr>
					
					<?php
					}	
					?>
				</table>
					<div class="form-group pull-right">
						<input type="submit" name="add" value="Simpan" class="btn btn-success">
			</form>
	</div>
</div>


<?php include_once('../footer.php'); ?>