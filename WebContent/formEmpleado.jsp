<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> App
					Admin Nomina </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Empleados</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<form class="contact_form" action="insert" id="contact_form"
					method="post">
					<div>
						<ul>
							<li style="list-style: none;">
								<h2>Registro de Empleados</h2> <span
								class="required_notification">* Datos requeridos</span>
							</li>
							<li style="list-style: none;"><label for="codigo">Codigo:</label> <input type="text"
								name="codigo" value="<c:out value='${empleado.codigo}' />"
								required /></li>
							<listyle="list-style: none;"><label for="cedula">Cedula:</label> <input type="text"
								name="cedula" value="<c:out value='${empleado.cedula}' />"
								required /></li>
							<li style="list-style: none;"><label for="name">Nombre:</label> <input type="text"
								name="nombre" value="<c:out value='${empleado.nombre}' />"
								required /></li>
							<li style="list-style: none;"><label for="fechanac">Fecha Nacimiento:</label> <input
								type="Date" name="fechaNacimiento"
								value="<c:out value='${empleado.fechanacimiento}' />" required /></li>
							<listyle="list-style: none;"><label for="fechaingreso">Fecha Ingreso:</label> <input
								type="Date" name="fechaIngreso"
								value="<c:out value='${empleado.fechaingreso}' />" required /></li>
							<li style="list-style: none;"><label for="fecharet">Fecha Retiro:</label> <input
								type="Date" name="fechaRetiro"
								value="<c:out value='${empleado.fecharetiro}' />" required /></li>
							<li style="list-style: none;">
								<button class="btn btn-secondary" type="submit">Registrar</button>
								<a type="button" class="btn btn-secondary" href="index.jsp">
									Atrás</a>
						</ul>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>