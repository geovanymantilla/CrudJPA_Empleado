<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> App Admin Nomina </a>
			</div>

			
		</nav>
	</header>
	<br>
	<div class="container" style="margin-top: 30px; margin-left: 500px;">
		<a href="Buscar.jsp" class="btn btn-secondary btn-lg "
			role="button" aria-pressed="true">Buscar Empleado</a>
		<a href="<%=request.getContextPath()%>/new" class="btn btn-secondary btn-lg "
			role="button" aria-pressed="true">Registrar Empleado</a>
		<a href="<%=request.getContextPath()%>/list" class="btn btn-secondary btn-lg "
			role="button" aria-pressed="true">Listar Empleados</a>
	</div>
</body>
</html>