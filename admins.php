<?php 
require 'conexion.php';
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Administrador</title>
	<link rel="stylesheet" href="estilos.css">
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
							<div>
								<h1>Registro de consultas realizadas</h1>
								<br/>
									<?php 
									$queryAdmin="SELECT nombre, email,detalle_consulta FROM `datos`";
									$resultadoAdmin = $mysqli->query($queryAdmin);
									?>
							<table border="1" class="tablaResultados">
									<tr>
										<td><strong>Nombre</strong></td>
										<td><strong>Email</strong></td>
										<td><strong>Detalle de Consulta</strong></td>

									</tr>
									<?php		
										while($rowA = $resultadoAdmin->fetch_assoc()){
											echo "<tr>";
											echo "<td>".$rowA['nombre']."</td>";
											echo "<td>".$rowA['email']."</td>";
											echo "<td>".$rowA['detalle_consulta']."</td>";
											echo "</tr>";
										}
							 		?>	
							</table>
							</div>
				</div>
				<footer >
					<h3>Tecnicatura Sup. en Análisis y Programacion de Sistemas</h3>
					<h4>Diseño de Interfaces-Capital 2017</h4>
				</footer>

			</div>












	<div class="main">
		
			
	</div>
	
</body>
</html>