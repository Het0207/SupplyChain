<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>User Orders</title>
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
	<body class=" text-center">
	<%@include file="header.jsp" %>
		
		<h1 class="heading my-2 py-2">My Orders</h1>
		<table class="m-auto">
			<thead>
				<tr>
				
					<th>Order Id</th>
					<th>Photo</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Order Date</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td>${order[0]}</td>
						<td><img style="height: 80px;"src ="${order[5]}"></td>
						<td>${order[1]}</td>
						<td>${order[2]}</td>
						<td>${order[3]}</td>
						<td>${order[4]}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</body>
</html>
<%@include file="footer.jsp" %>