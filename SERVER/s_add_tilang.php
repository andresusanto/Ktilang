<?php
session_start();
require_once 'config.php';

$metode = req_handler('m');

// A : Add Tilang
// U : Update Status Bayar Tilang -> P : Paid 
//								  -> N : Not paid

switch ($metode)
{
	case 'A' :  $no_tilang = req_handler('no_tilang');
				$no_stnk = req_handler('no_stnk');
				$no_anggota = req_handler('no_anggota');
				$wkt_tilang = req_handler('wkt_tilang');
				$wil_tilang = req_handler('wil_tilang');
				$tmpt_tilang = req_handler('tmpt_tilang');
				$psl_pelanggaran = req_handler('psl_planggaran');
				
				if (db_num("SELECT `no_anggota` FROM `polisi` WHERE `no_anggota` = '$no_anggota'") == 1)
				{
					if (db_num("SELECT `no_stnk` FROM `user_stnk` WHERE `no_stnk` = '$no_stnk'") == 1)
					{
						if (db_execute("INSERT INTO `surat_tilang` (`no_tilang`,`no_stnk`,`no_anggota`,`waktu_tilang`,`wilayah_tilang`,`tempat_tilang`,`pasal_pelanggaran`,`status_denda`) 
										VALUES ('$no_tilang','$no_stnk','$no_anggota','$wkt_tilang','$wil_tilang','$tmpt_tilang','$psl_pelanggaran','N')"))
						{
							echo 'IS'; // Insert Success
						}
						else
						{
							echo 'IF'; // Insert Failed
						}
					}
					else
					{
						echo 'SNF';// STNK Not Found
					}
				}
				else
				{
					echo 'DNF'; // Police Data Not Found
				}
				
				break;
	case 'U' :  $no_tilang = req_handler('no_tilang');
				if (db_num("SELECT `no_tilang` FROM `surat_tilang` WHERE `no_tilang` = '$no_tilang'") == 1)
				{
					if (db_execute("UPDATE `surat_tilang` SET `status_denda` = 'P' WHERE `no_tilang` = '$no_tilang'"))
					{
						echo 'IS'; // Insert Success
					}
					else
					{
						echo 'IF'; // Insert Failed
					}
				}
				else
				{
					echo 'SNF'; // Surat Tilang Not Found
				}
				
				break;
}

?>