<?php
session_start();
require_once 'config.php';

$metode = req_handler('m');
$no_anggota = req_handler('no_anggota');

// CP : Change Password

switch ($metode)
{
	case 'CP' : $pwd = md5(req_handler('pwd'));
	
				if (db_num("SELECT `no_anggota` FROM `polisi` WHERE `no_anggota` = '$no_anggota'") == 0)
				{
					echo 'PNF'; // No Anggota Polisi not found
				}
				else
				{
					if (db_execute("UPDATE `polisi` SET `password` = '$pwd' WHERE `no_anggota` = '$no_anggota'"))
					{
						echo 'US'; // update success
					}
					else
					{
						echo 'UF'; // update failed
					}
				}
				break;
				
	default :	echo '300';
}