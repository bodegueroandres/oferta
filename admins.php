<?php 
require 'conexion.php';
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Administrador</title>
</head>
<body>
	<a href="index.php">INICIO</a>
	<div>
		<h1>Registro de consultas realizadas</h1>
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
</body>
</html>