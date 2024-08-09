<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/GetProductsServlet" var="LstProducts" />
<c:url value="/AddProductServlet" var="AddProducts" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Products Page</title>
	</head>
	<body>
		<header>
			<nav>
				<div>
					<a href="Index.jsp">home</a>
					<br />
					<a href="${ LstProducts }">get products</a>
					<br />
					<a href="${ AddProducts }">add product</a>
					<br />
					<a href="Credits.jsp">credits</a>
				</div>
			</nav>
		</header>
		<main>
			<h1>Desenvolvido por Gabriel Chaves e Carol Ribeiro</h1>
		</main>
		<footer>IFSP CUBATÃO - 2024</footer>
	</body>
</html>