<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View Customers</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			crossorigin="anonymous">
		<style>
			table, tr, td, th, thead, tbody {
				border: 1px solid black;
				padding: 10px;
				margin: 8px;
			}
		</style>
	</head>
	<body class="text-center">
		<%@include file="admin_header.jsp" %>
		
		<h1 class="heading my-2 py-2">All Customers</h1>
		<table class="m-auto">
			<thead>
				<tr>
					<th>Username</th>
					<th>Email</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.username}</td>
						<td>${user.email}</td>
						<td>${user.password}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</body>
</html>
<%@include file="footer.jsp" %>