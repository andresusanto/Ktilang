<?php
session_start();
require_once 'config.php';

$metode = req_handler('m');

switch ($metode){
	case 'R' 	:	$uname 	= req_handler('uname');
					$pw 	= req_handler('pass');
					$hp 	= req_handler('hp');
					
					
					if (db_num("SELECT `username` FROM `user` WHERE `username`='$uname'") > 0){
						echo 'UE';
					}else{
						$pw = md5($pw);
						$token = rand(1234, 9999);
						
						if (db_execute("INSERT INTO `user` (`username`, `password`, `no_hp`, `reg_token`) VALUES ('$uname', '$pw', '$hp', '$token');")){
							echo 'S ' . $token;
						}else{
							echo 'E';
						}
					}
					
					break;
	case 'L'	:	$uname 	= req_handler('uname');
					$pw 	= req_handler('pass');
					
					if (db_num("SELECT `username` FROM `user` WHERE `username`='$uname'") > 0){
						$_SESSION['user'] = $uname;
						echo 'OK';
					}else{
						echo 'AD';
					}
					break;
	default		:	echo '300';
}