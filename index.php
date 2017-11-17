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
		
	</head>
	
	<body>
		<a href="index.php">INICIO</a>
		<form id="combo" name="combo" action="guarda.php" method="POST">
			<div>Selecciona Sede : <select name="cbx_estado" id="cbx_estado">
				<option value="0">Seleccionar Sede</option>
				<?php while($row = $resultado->fetch_assoc()) { ?>
					<option value="<?php echo $row['id_sede']; ?>"><?php echo $row['nombre']; ?></option>
				<?php } ?>
			</select></div>
			
			<br />
			
			<div>Selecciona Carrera : <select name="cbx_municipio" id="cbx_municipio"></select></div>
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



			<input type="submit" id="enviar" name="enviar" value="Consultar" />
		</form>
		<a href="admins.php">Administrador</a>
	</body>
</html>
