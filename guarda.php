<?php
	require ('conexion.php');
	
/*	$sql = "INSERT INTO datos (id_localidad) VALUES('$id_localidad')";
	$resultado = $mysqli->query($sql);
	
	if($resultado){
		echo "Registro Guardado";
		} else {
		echo "Error al Registrar";
	}*/
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<a href="index.php">INICIO</a>
	<?php 

		$id_sede = $_POST['cbx_estado'];
		$queryInstitucion="
							
							SELECT `tipo`,`turno`,`nombre`,`direccion`,`telefono`,`email`,`localizacion`
							FROM `institucion`
							WHERE `fk_sede`= '$id_sede'
							";
	$resultadoI = $mysqli->query($queryInstitucion);
	?>
	<table border="1" class="tablaResultados">
			
					<?php
					$rowM = $resultadoI->fetch_assoc();//
					foreach ($rowM as $key => $value) {
						echo "<tr><td>".$key.": <br>".$value."<br></td></tr>" ;
					}
		
	 ?>	
	</table>

<?php 
//Ahora registraremos en la base de datos la Consulta para que pueda ser visualizada por los admins
if ($_POST['usuario']=="" || $_POST['email']=="" ) {
	$nombreU='anonimo';
	$emailU='anonimo';
}else{
	
	$nombreU=$_POST['usuario'];
	$emailU=$_POST['email'];
	echo "Usuario :".$nombreU." email: ".$emailU;
}

//ahora enviamos los datos a la base de datos para que la visualice

$sql = "INSERT INTO datos (id_datos,nombre,email) VALUES(NULL,'$nombreU','$emailU')";
	$resultado = $mysqli->query($sql);
 ?>

	
</body>
</html>