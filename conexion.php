<?php
	
	$mysqli = new mysqli("localhost","id3656091_root","belgrano","id3656091_oferta"); //servidor, usuario de base de datos, contraseña del usuario, nombre de base de datos
	$acentos = $mysqli->query("SET NAMES 'utf8'");//la verdad de la milanesa
	
	if(mysqli_connect_errno()){
		echo 'Conexion Fallida : ', mysqli_connect_error();
		exit();
	}
	
?>