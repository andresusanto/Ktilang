<?php
session_start();
require_once 'config.php';

$metode = req_handler('m');
$uname = req_handler('uname');

// CP : Change Password
// CH : Change no.HP
// CA : Change All

switch ($metode)
{
	case 'CP' : $pwd = md5(req_handler('pwd'));
					
				if (db_num("SELECT `username` FROM `user` WHERE `username` = '$uname'") == 0)
				{
					echo 'UNF'; // User not found
				}
				else
				{
					if (db_execute("UPDATE `user` SET `password` = '$pwd' WHERE `username` = '$uname'"))
					{
						echo 'US'; // update success
					}
					else
					{
						echo 'UF'; // update failed
					}
				}
				break;
				
	case 'CH' : $hp = req_handler('hp');
					
				if (db_num("SELECT `username` FROM `user` WHERE `username` = '$uname'") == 0)
				{
					echo 'UNF'; // User not found
				}
				else
				{
					if (db_execute("UPDATE `user` SET `no_hp` = '$hp' WHERE `username` = '$uname'"))
					{
						echo 'US'; // update success
					}
					else
					{
						echo 'UF'; // update failed
					}
				}
				break;
				
	case 'CA' : $pwd = md5(req_handler('pwd'));
				$hp = req_handler('hp');
				
				if (db_num("SELECT `username` FROM `user` WHERE `username` = '$uname'") == 0)
				{
					echo 'UNF'; // User not found
				}
				else
				{
					if (db_execute("UPDATE `user` SET `password` = '$pwd' WHERE `username` = '$uname'") && 
						db_execute("UPDATE `user` SET `no_hp` = '$hp' WHERE `username` = '$uname'"))
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