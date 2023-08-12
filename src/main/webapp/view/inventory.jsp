<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%@include file="admin_header.jsp" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View Inventory</title>
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
		
		<h1 class="heading my-2 py-2 border-bottom">Inventory</h1>
		<h2 class="heading my-2 py-2">Grocery</h2>
		<table class="m-auto table" style="width:70%;">
			<thead>
				<tr>
					<th>Image Url</th>
					<th>Image</th>
					<th>ID</th>
					<th>Name</th>
					<th>Quantity</th>
					<th>CP</th>
					<th>SP</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${groceries}" var="grocery">
					<tr>
					<form:form method="post" action="updateGrocery" modelAttribute="Grocery">
						<td><form:input path="photo" type="text" name="photo" value="${grocery.photo}" readonly="true" /></td>
						<td><img style="height: 80px;" src ="${grocery.photo}"></td>
						<td><form:input path="id" type="text" name="id" value="${grocery.id}" readonly="true" /></td>
						<td><form:input path="name" type="text" name="quantity" value="${grocery.name}" /></td>
						<td><form:input path="quantity" type="text" name="quantity" value="${grocery.quantity}" /></td>
						<td><form:input path="costPrice" type="text" name="quantity" value="${grocery.costPrice}" /></td>
						<td><form:input path="sellPrice" type="text" name="quantity" value="${grocery.sellPrice}" /></td>
						<td><input class="btn btn-dark text-light" type="submit" value="Update" /></td>
					</form:form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br><br><br>
	</body>
</html>
<%@include file="footer.jsp" %>