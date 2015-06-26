<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
body {
	background-image: url('s.jpg');
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
						<font size="9" color="black"> <br>

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
											<td><b> MOSTRAR ALMACEN </b></td>
										<tr>
										<tr>
											<table>
												<tr>
													<td>Codigo del Almacen<br>
													<br></td>
													<td><input type="number" name="cod"></td>
												</tr>
												<tr>
													<td>Ubicacion del Almacen<br>
													<br></td>
													<td><input type="text" name="ubi"></td>
												</tr>
												<tr>
													<td>Tipo de Productos<br>
													<br></td>
												</tr>
											</table>
										</tr>
										<tr>
											<td><input type="radio" name="a" value="a1">perecibles<br>
											<br> <input type="radio" name="a" value="a2">no-perecibles<br>
												<br> <input type="submit" name="este" value="mostrar"><br>
												<br>

											<form name="input" action="vista1.jsp" method="get">
												<input type="submit" value="Vista1">
												<form name="input" action="index.jsp" method="get">
													<input type="submit" value="Inicio">
												</form>
											</td>
										</tr>
										</form>
										</td>
										</tr>
									</table>
							</td>
						</tr>
					</table>
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
