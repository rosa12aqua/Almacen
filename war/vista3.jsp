<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body background="a1.jpeg">

	<center>
		<table width="300" height="50%">
			<tr align="center">
				<td><h1>
						<font size="9" color="black">Bienvenido!<br>Eliminar
							Almacen<br>

						</font>
					</h1>
				<td>
			<tr>
		</table>
	</center>
	<center>
		<table border="2" bordercolor="black" width="150" heigth="100%"
			background="b5.jpeg">
			<tr>
				<td><table>
						<tr>
							<td>
								<form name="escoger" method="get" action="registro">
									<table>
										<tr>
											<td><b>Eliminar</b></td>
										<tr>
										<tr>
											<table>
												<tr>
													<td><b>Nombre del almacen</b></td>
													<td><input type="text" name="nom"></td>
												</tr>
												<tr>
												<tr>
													<td><b>Codigo del almacen</b></td>
													<td><input type="text" name="cod"></td>
												</tr>
												<tr>
													<td><b>Ubicacion del almacen</b></td>
													<td><input type="text" name="ubi"></td>
												</tr>

												<tr>
													<td><b>Nun de Almacen</b><select>
															<option value="1">Almacen 1</option>
															<option value="2">Almacen 2</option>
															<option value="3">Almacen 3</option>
															<option value="4">Almacen 4</option>
													</select></td>
												</tr>

											</table>

											<br>
											<input type="submit" name="este" value="Eliminar">
											<br>
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
</body>
</html>
