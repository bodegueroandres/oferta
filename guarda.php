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
		
	</table>
	<tr>
	<?php
		$rowM = $resultadoI->fetch_assoc();//
		foreach ($rowM as $key => $value) {
			echo "<td>".$key.": <br>".$value."<br></td>" ;
		}
		
	 ?>
	
	</tr>
	
	
</body>
</html>