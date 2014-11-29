<?php
session_start();
require_once 'config.php';

$metode = req_handler('m');

// A : Add SIM
// B : Add STNK

$uname = req_handler('uname');
$nama = req_handler('nama');

switch ($metode){
	case 'A' 	:	$no_sim = req_handler('no_sim');
	
					if (db_num("SELECT `username` FROM `user_sim` WHERE `username` = '$uname' AND `no_sim` = '$no_sim'") > 0 )
					{
						echo 'SE'; // SIM Already Added
					}
					else
					{
						if (db_num("SELECT `nama` FROM `sim` WHERE `nama` = '$nama'") > 0)
						{
							if (db_execute("INSERT INTO `user_sim` (`username`,`no_sim`) VALUES ('$uname','$no_sim')"))
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
							echo 'DNM'; // Data 'Nama' Not Match
						}
					}
					break;
					
	case 'B'	:	$no_stnk = req_handler('no_stnk');
					
					if (db_num("SELECT * FROM `user_stnk` WHERE `username` = '$uname' AND `no_stnk` = '$no_stnk'") > 0 )
					{
						echo 'SE'; // SIM Already Added
					}
					else
					{
						if (db_num("SELECT `nama` FROM `stnk` WHERE `nama` = '$nama'") > 0)
						{
							if (db_execute("INSERT INTO `user_stnk` (`username`,`no_stnk`) VALUES ('$uname','$no_stnk')"))
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
							echo 'DNM'; // Data 'Nama' Not Match
						}
					}
					break;
	default		:	echo '300';
}