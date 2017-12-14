<?php
	header("Content-Type: text/html;charset=utf-8");
	require ('conexion.php');
	$query = "SELECT id_sede, nombre FROM sede ORDER BY nombre";
	$resultado=$mysqli->query($query);
?>
<!DOCTYPE html>
<html>
	<head lang="en">
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>Oferta Educativa Belgrano</title>
		<script language="javascript" src="js/jquery-3.1.1.min.js"></script>
		<script language="javascript">
			$(document).ready(function(){
				$("#cbx_estado").change(function () {
					
					$("#cbx_estado option:selected").each(function () {
						id_estado = $(this).val();
						$.post("includes/getMunicipio.php", { id_estado: id_estado }, function(data){
							$("#cbx_municipio").html(data);
						});            
					});
				})
			});
		</script>
		<script language="javascript" src="js/oculta.js"></script>
		<link rel="stylesheet" href="estilos.css">
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
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
						<a href="admins.php" class="myButton">ADMINISTRADOR</a>
						
						<br>
						<br>
						<form id="combo" name="combo" action="guarda.php" method="POST">
							<div>Selecciona Sede : <br/>		
							 <select name="cbx_estado" id="cbx_estado">
								<option value="0">Seleccionar Sede</option>
								<?php while($row = $resultado->fetch_assoc()) { ?>
									<option value="<?php echo $row['id_sede']; ?>"><?php echo $row['nombre']; ?></option>
								<?php } ?>
							</select></div>
							
							<br />
							
							<div>Selecciona Carrera : <br/>
							 <select name="cbx_municipio" id="cbx_municipio"></select></div>
							<br />
							
							<!-- Esta parte del formulario se oculta -->
							<div class="formcontacto">
								<input type="checkbox" name="info" class="fantasma" checked>Desea Saber Más?<br>
								<br>
								<div id="dvOcultar">
									<input type="text" name="usuario" id="usuario" placeholder="Ingrese su Nombre" value=""><br>
									<br>
									<input type="email" name="email" id="email" placeholder="Ingrese su e-mail" value=""><br>
									<br>	
								</div>
							</div>
							<input type="submit" id="enviar" name="enviar" value="Consultar" class="myButton" />
						</form>
						
				</div>
				<footer>
					<h3>Tecnicatura Sup. en Análisis y Programacion de Sistemas</h3>
					<h4>Diseño de Interfaces-Capital 2017</h4>
				</footer>

			</div>

	</body>
</html>
