<?php
session_start();
require_once 'config.php';

$uname = req_handler('uname');

if (db_num("SELECT `username` FROM `user` WHERE `username` = '$uname'") == 1)
{
	$data_post = db_fetchs("SELECT `stnk`.`jenis`,`surat_tilang`.*,`pelanggaran`.`jenis_pelanggaran`,`pelanggaran`.`deskripsi_pelanggaran`,`pelanggaran`.`biaya_denda` FROM `user_stnk`,`stnk`,`surat_tilang`,`pelanggaran` WHERE `user_stnk`.`username` = '$uname' AND `stnk`.`no_stnk` = `user_stnk`.`no_stnk` AND `stnk`.`no_stnk` = `surat_tilang`.`no_stnk` AND `surat_tilang`.`pasal_pelanggaran` = `pelanggaran`.`pasal_pelanggaran`");
	if ($data_post  == 0)
	{
		echo 'TNF'; // Data Tilang Not Found
	}
	else
	{
		echo json_encode($data_post);
		/*
		for ($i=1;$i<=$data_post[0];$i++)
		{
			foreach($data_post[$i] as &$val)
			{
				echo $val.'<br>';
			}
		} */
	}
}
else
{
	echo 'UNF'; // User not found
}

?>