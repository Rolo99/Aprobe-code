<?php 
	$user=json_decode(file_get_contents('php://input'));  //get user from 
	include('dbAccess/CADusuario.php');
	$admin = new CADusuario();//Clase de acceso a datos para usuarios Administradores
	$password = $admin->consular_admin($user->cedula);//Consulta password encriptado del admin con la Cedula
	if(password_verify(10,$password)) //Si el usuario existe, crea Session
	{ 	session_start();
		$_SESSION['uid']=uniqid('ang_');
		print $_SESSION['uid'];
	}
	
	//$pass_hash =  password_hash(10, PASSWORD_BCRYPT);//Encripta el password
?>


