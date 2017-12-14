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
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Oferta Educativa Belgrano</title>
	<link rel="stylesheet" href="guarda.css">

</head>
<body>

	<div class="contenedor">
				<header>
					<div class="logo">
						<img src="A2B4BF12B.png" alt="">
					</div>
					<div class="titulo">
						<h1>9-008 Instituto Manuel Belgrano</h1>
						<h3>Oferta Educativa</h3>

					</div>
					<div class="tituloresp">
						<h1>9-008 Instituto Manuel Belgrano</h1>
						<h3>Oferta Educativa</h3>
					</div>
				</header>

				<div class="main">

								<a href="index.php" class="myButton">INICIO</a>
								<br/>
								<br/>
								<h1>RESULTADOS DE CONSULTA</h1>
								<br/>
								<?php 

									$id_sede = $_POST['cbx_estado'];
									$queryInstitucion="
														
														SELECT `tipo`,`turno`,`nombre`,`direccion`,`telefono`,`email`,`localizacion`
														FROM `institucion`
														WHERE `fk_sede`= '$id_sede'
														";
								$resultadoI = $mysqli->query($queryInstitucion);
								?>
								<div class="tabla">
									
									<table border="1" class="tablaResultados">
										
												<?php
												$rowM = $resultadoI->fetch_assoc();//
												foreach ($rowM as $key => $value) {
													echo "<tr><td>".$key.": <br><hr/>".$value."<br></td></tr>" ;
												}
									
												 ?>	
									</table>

								</div>
								

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
				</div>
				<footer>
					<h3>Tecnicatura Sup. en Análisis y Programacion de Sistemas</h3>
					<h4>Diseño de Interfaces-Capital 2017</h4>
				</footer>

			</div>

</body>
</html>