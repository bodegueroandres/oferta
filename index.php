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
		<title>ComboBox Ajax, PHP y MySQL</title>
		
		<script language="javascript" src="js/jquery-3.1.1.min.js"></script>
		
		<script language="javascript">
			$(document).ready(function(){
				$("#cbx_estado").change(function () {

/*					$('#cbx_localidad').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');*/
					
					$("#cbx_estado option:selected").each(function () {
						id_estado = $(this).val();
						$.post("includes/getMunicipio.php", { id_estado: id_estado }, function(data){
							$("#cbx_municipio").html(data);
						});            
					});
				})
			});
			
/*			$(document).ready(function(){
				$("#cbx_municipio").change(function () {
					$("#cbx_municipio option:selected").each(function () {
						id_municipio = $(this).val();
						$.post("includes/getLocalidad.php", { id_municipio: id_municipio }, function(data){
							$("#cbx_localidad").html(data);
						});            
					});
				})
			});*/
		</script>
		
	</head>
	
	<body>
		<form id="combo" name="combo" action="guarda.php" method="POST">
			<div>Selecciona Sede : <select name="cbx_estado" id="cbx_estado">
				<option value="0">Seleccionar Sede</option>
				<?php while($row = $resultado->fetch_assoc()) { ?>
					<option value="<?php echo $row['id_sede']; ?>"><?php echo $row['nombre']; ?></option>
				<?php } ?>
			</select></div>
			
			<br />
			
			<div>Selecciona Carrera : <select name="cbx_municipio" id="cbx_municipio"></select></div>
<!-- 			
			<br />
			
			<div>Selecciona Localidad : <select name="cbx_localidad" id="cbx_localidad"></select></div>
			 -->
			<br />
			
			<!-- Esta parte del formulario se oculta -->
			<div class="formcontacto">
				<input type="checkbox" name="info">Desea Saber Más?<br>
			</div>



			<input type="submit" id="enviar" name="enviar" value="Guardar" />
		</form>
	</body>
</html>
