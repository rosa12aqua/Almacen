



<!DOCTYPE html>
<html lang="es">
<head>
<title>Programación Web con Google App Engine</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Ejemplos de proyectos de aplicaciones Web con Google App Engine.">
<meta name="keywords"
	content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<meta name="author" content="Richart Escobedo (rescobedo)">
<link rel="icon" type="image/png"
	href="http://indice-ejemplos.appspot.com/Java-icon.png">
<link rel="stylesheet" type="text/css"
	href="estilo.css">
<script src="/js/jquery-1.11.3.min.js"></script>
<script src="/js/plugins/jquery.form.js"></script>
<script>
	// wait for the DOM to be loaded 
	$(document).ready(function() {
		// prepare Options Object 
		var options = {
			target : '#caja_ajax',
			url : '/ajax03',
			success : function() {
				alert('¡Se ha creado una nueva Persona!');
			}
		};
		// pass options to ajaxForm 
		$('#formPersona').ajaxForm(options);

		var options2 = {
			target : '#caja_ajax',
			url : '/ajax04_1',
			success : function() {
				alert('¡Se han eliminado Personas!');
			}
		};
		// pass options to ajaxForm
		$('#listaPersonas').ajaxForm(options2);
	});
</script>
</head>
<body>
	<!-- Menú de navegación del sitio -->
	<ul class="navbar">
		<li><a href="/index.html">Regresar...</a>
	</ul>
	<div style="clear: left; float: left">
		<!-- Form Persona -->


		<form name="formPersona" id="formPersona" action="/ajax03"
			method="post">
			<fieldset>
				<legend>Registro de persona</legend>
				<div id="formulario">

					<div class="fila">
						<div class="etiqueta">
							<label for="name">Nombres :</label>
						</div>
						<div class="control">
							<input type="text" name="name" id="name" maxlength="10"
								required="required" placeholder="Ingrese sus nombres"
								value="Juan" />
						</div>
					</div>

					<div class="fila">
						<div class="etiqueta">
							<label for="lastname">Apellidos :</label>
						</div>
						<div class="control">
							<input type="text" name="lastname" id="lastname" maxlength="20"
								required="required" placeholder="Ingrese sus apellidos"
								value="Perez" />
						</div>
					</div>

					<div class="fila">
						<div class="etiqueta">
							<label for="email">Correo :</label>
						</div>
						<div class="control">
							<input type="text" name="email" id="email" maxlength="20"
								required="required" placeholder="Ingrese su email"
								value="jperez@gmail.com" />
						</div>
					</div>

					<div class="fila">
						<div class="etiqueta">
							<label for="color">Color favorito:</label>
						</div>
						<div class="control">
							<select name="color" id="color" size="1">
								<option value="yellow">Amarillo</option>
								<option value="blue">Azul</option>
								<option value="white">Blanco</option>
								<option value="orange">Naranja</option>
								<option value="black">Negro</option>
								<option value="purple">Purpura</option>
								<option value="red">Rojo</option>
								<option value="pink">Rosado</option>
								<option value="green">Verde</option>
							</select>
						</div>
					</div>

					<div class="fila">
						<div id="action">
							<input type="submit" value="Crear Persona" />
						</div>
					</div>

				</div>
			</fieldset>
		</form>

		<!--  -->

		<br />
		<br />
		<div style="clear: left; float: left">
			<!-- Tag asíncrono -->
			<div id="caja_ajax">
				<!-- Aquí pronto contenido asíncrono -->
				<!-- Pero mientras se muestra una lista de personas enviada por el servlet ListaPersonas -->
				<form name="listaPersonas" id="listaPersonas" method="post"
					action="ajax04_1">
					<fieldset>
						<legend>Lista de personas (2 encontradas)</legend>
						<div class="Table">
							<!-- <div class="Title"><p>2 personas encontradas</p></div>  -->
							<div class="Heading">
								<div class="Cell">
									<p>Id</p>
								</div>
								<div class="Cell">
									<p>Persona</p>
								</div>
								<div class="Cell">
									<p>email</p>
								</div>
								<div class="Cell">
									<p>Color</p>
								</div>
							</div>

							<div class="Row">
								<div class="Cell">
									<p>
										<input type="checkbox" name="elegidos" value="7020002"><label
											for="7020002">7020002</label>
									</p>
								</div>
								<div class="Cell">
									<p>Juan Perez</p>
								</div>
								<div class="Cell">
									<p>jperez@gmail.com</p>
								</div>
								<div class="Cell" style="background-color: blue;">
									<p>blue</p>
								</div>
							</div>

							<div class="Row">
								<div class="Cell">
									<p>
										<input type="checkbox" name="elegidos" value="8010002"><label
											for="8010002">8010002</label>
									</p>
								</div>
								<div class="Cell">
									<p>Juan Perez</p>
								</div>
								<div class="Cell">
									<p>jperez@gmail.com</p>
								</div>
								<div class="Cell" style="background-color: yellow;">
									<p>yellow</p>
								</div>
							</div>

						</div>
						<div class="fila">
							<div id="action">
								<input type="submit" value="Eliminar" />
							</div>
						</div>
					</fieldset>
				</form>
				<!--  -->
			</div>
		</div>
</body>
</html>