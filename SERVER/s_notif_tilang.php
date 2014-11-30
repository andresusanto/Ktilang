<?php
session_start();
require_once 'config.php';

$metode = req_handler('m');
$uname = req_handler('uname');

//LT : Show List Tilang
//DT : Show Detil Tilang
switch($metode)
{
	case 'DT' : if (db_num("SELECT `username` FROM `user` WHERE `username` = '$uname'") == 1)
				{
					$data_post = db_fetchs("SELECT `stnk`.`jenis`,`surat_tilang`.*,`pelanggaran`.`jenis_pelanggaran`,`pelanggaran`.`deskripsi_pelanggaran`,`pelanggaran`.`biaya_denda`,`polisi`.`nama` FROM `user_stnk`,`stnk`,`surat_tilang`,`pelanggaran`,`polisi` WHERE `user_stnk`.`username` = '$uname' AND `stnk`.`no_stnk` = `user_stnk`.`no_stnk` AND `stnk`.`no_stnk` = `surat_tilang`.`no_stnk` AND `surat_tilang`.`pasal_pelanggaran` = `pelanggaran`.`pasal_pelanggaran` AND `polisi`.`no_anggota` = `surat_tilang`.`no_tilang`");
					if ($data_post  == 0)
					{
						echo json_encode(null); // Data Tilang Not Found
					}
					else
					{
						for ($i=1;$i<=$data_post[0];$i++)
						{
							$dt[$i-1] = $data_post[$i];
						}
						echo json_encode($dt);
					}
				}
				else
				{
					echo json_enconde(null); // User not found
				}
				break;
				
	case 'LT' : $no_tilang = req_handler('no_tilang');
				if (db_num("SELECT `username` FROM `user` WHERE `username` = '$uname'") == 1)
				{
					if (db_num("SELECT `no_tilang` FROM `surat_tilang` WHERE `no_tilang` = '$no_tilang'") == 1)
					{
						$data_post = db_fetchs("SELECT `stnk`.`jenis`,`surat_tilang`.*,`pelanggaran`.`jenis_pelanggaran`,`pelanggaran`.`deskripsi_pelanggaran`,`pelanggaran`.`biaya_denda`,`polisi`.`nama` FROM `user_stnk`,`stnk`,`surat_tilang`,`pelanggaran`,`polisi` WHERE `user_stnk`.`username` = '$uname' AND `stnk`.`no_stnk` = `user_stnk`.`no_stnk` AND `stnk`.`no_stnk` = `surat_tilang`.`no_stnk` AND `surat_tilang`.`pasal_pelanggaran` = `pelanggaran`.`pasal_pelanggaran` AND `polisi`.`no_anggota` = `surat_tilang`.`no_tilang` AND `surat_tilang`.`no_tilang` = '$no_tilang'");
						if ($data_post  == 0)
						{
							echo json_encode(null); // Data Tilang Not Found
						}
						else
						{
							for ($i=1;$i<=$data_post[0];$i++)
							{
								$dt[$i-1] = $data_post[$i];
							}
							echo json_encode($dt);
						}
					}
					else
					{
						echo json_enconde(null);
					}
					
				}
				else
				{
					echo json_enconde(null);
				}
				break;
	default :	echo json_enconde(null);
}
?>