<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aplicación Administrador de Empleados</title>
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
				<a href="https://www.javaguides.net" class="navbar-brand"> App Admin Nomina </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Empleados</a></li>
					<li><a href="index.jsp"
					class="nav-link">Inicio</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Lista de Empleados</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Nuevo Empleado</a>
			</div>
			<br>
			<table class="table table-bordered">
		
				<thead>
					<tr>
						<th>Codigo</th>
						<th>Cedula</th>
						<th>Nombre</th>
						<th>Fecha Nacimiento</th>
						<th>Fecha Ingreso</th>
						<th>Fecha Salida</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="empleado" items="${listEmpleado}">

						<tr>
							<td><c:out value="${empleado.codigo}" /></td>
							<td><c:out value="${empleado.cedula}" /></td>
							<td><c:out value="${empleado.nombre}" /></td>
							<td><c:out value="${empleado.fechanacimiento}" /></td>
							<td><c:out value="${empleado.fechaingreso}" /></td>
							<td><c:out value="${empleado.fecharetiro}" /></td>
							<td><a href="edit?codigo=<c:out value='${empleado.codigo}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?codigo=<c:out value='${empleado.codigo}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>