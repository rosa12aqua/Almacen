<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>vista5</title>
<style>
body {
	background-image: url('e.jpeg');
	font-family: Georgia, "Times New Roman", Times, serif;
	color: black;
}
</style>
</head>
<body background-color: #F8E0E6>
	<center>
		<table width="300" height="50%">
			<tr align="center">
				<td><h1>
						<font size="9" color="black">Bienvenido!! <br>
							Registrate

						</font>
					</h1>
				<td>
			<tr>
		</table>
	</center>
	<center>
		<table border="2" bordercolor="black" width="150" heigth="100%"
			background="f.jpeg">
			<tr>
				<td><table>
						<tr>
							<td>
								<form name="escoger" method="get" action="registro">
									<table>
										<tr>
											<td><b>Ficha de Registro</b></td>
										<tr>
										<tr>
											<table>
												<tr>
													<td>Nombre</td>
													<td><input type="text" name="nom"></td>
												</tr>
												<tr>
													<td>Apellidos</td>
													<td><input type="text" name="ape"></td>
												</tr>
												<tr>
													<td>Codigo</td>
													<td><input type="number" name="codigo"></td>
												</tr>
												<tr>
													<td>Genero</td>
												</tr>
												<tr>
													<td><select>
															<option value="f">Femenino</option>
															<option value="m">Masculino</option>
													</select></td>
												</tr>
												<tr>
													<td>Almacen</td>
												</tr>
											</table>
										</tr>
										<tr>
											<td><input type="radio" name="a" value="a1">Almacen1<br>
												<input type="radio" name="a" value="a2">Almacen2<br>
												<input type="radio" name="a" value="a3">Almacen3<br>
												<input type="radio" name="a" value="a4">Almacen4<br>
												<br> <input type="submit" name="este"
												value="Resgistrarse"><br></td>
										</tr>
										</form>
										</td>
										</tr>
									</table>
							</td>
						</tr>
					</table><br>
					<form action="vista1">
						<input type="submit" value="INICIO">
					</form> <br>
					</center>
					<p>
						<a href="http://jigsaw.w3.org/css-validator/check/referer"> <img
							style="border: 0; width: 88px; height: 31px"
							src="http://jigsaw.w3.org/css-validator/images/vcss"
							alt="Valid CSS!" />
						</a>
					</p>
</body>
</html>
