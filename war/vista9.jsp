<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body background="f2.jpeg">

	<center>
		<table width="300" height="50%">
			<tr align="center">
				<td><h1>
						<font size="9" color="black">Bienvenido!<br>Elimina un
							producto<br>

						</font>
					</h1>
				<td>
			<tr>
		</table>
	</center>
	<center>
		<table border="2" bordercolor="black" width="150" heigth="100%"
			background="b4.jpeg">
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
													<td><b><h5>Nombre del producto</h5></b></td>
													<td><input type="text" name="nom"></td>
												</tr>
												<tr>
												<tr>
													<td><b><h5>Fecha de entrada</h5></b></td>
													<td><input type="text" name="fent"></td>
												</tr>
												<tr>
													<td><b><h5>Fecha de salida</h5></b></td>
													<td><input type="text" name="fsal"></td>
												</tr>
												<tr>
													<td><b><h5>Fecha de caducidad</h5></b></td>
													<td><input type="text" name="fcad"></td>
												</tr>

												<tr>
													<td><b><h5>Tipo</h5></b><select>
															<option value="v">Vegetales</option>
															<option value="t">Tuberculos</option>
															<option value="ca">Carnes</option>
															<option value="co">Convervantes</option>
															<option value="be">Bebidas</option>
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
