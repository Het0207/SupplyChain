<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>User Cart</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			crossorigin="anonymous">
	</head>
	<body class="text-center">
		<%@include file="header.jsp" %>
		<div>
			<table class="table" style="width:70%;margin:auto;">
			<thead><tr>
				<th scope="col">Photo</th>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Required Quantity</th>
				<th scope="col">Add to cart</th>
			</tr></thead>
			<tbody>
			<c:forEach items="${groceries}" var="grocery">
				<tr>
					<form:form method="post" action="addToCart" modelAttribute="Cart">
						<td><img style="height: 80px;" src ="${grocery.photo}"></td>
						<td><form:input path="prodID" type="text" name="prodID" value="${grocery.id}" readonly="true" /></td>
						<td>${grocery.name}</td>
						<td>${grocery.sellPrice}</td>
						<td>${grocery.quantity}</td>
						<td><form:input path="quantity" type="text" name="quantity" /></td>
						<td><input class="btn btn-dark text-light" type="submit" value="Add to cart" /></td>
					</form:form>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<div class="border-top p-1 mt-3">
			<h1 class="heading">Cart</h1>
			<!--<div>
				<span class="px-2"><b>Product-ID</b></span>
				<span class="px-2"><b>Quantity</b></span>
			</div>  -->
			<!-- Add delete from cart feature -->
			<table class="table" style="width:50%;margin:auto;">
			<thead><tr>
				<th scope="col">Cart item ID</th>
				<th scope="col">Product-ID</th>
				<th scope="col">Quantity</th>
				<th scope="col">Remove from cart</th>
			</tr></thead>
			<tbody>
			<c:forEach items="${cart}" var="item">
				<tr>
				<form:form method="post" action="removeFromCart" modelAttribute="Cart">
					<td><form:input path="id" type="text" name="id" value="${item[0]}" readonly="true" /></td>
					<td>${item[1]}</td>
					<td>${item[2]}</td>
					<td><input class="btn btn-dark text-light" type="submit" value="Remove from cart" /></td>
				</form:form>
				</tr>
			</c:forEach>
			</table>
		</div>
		<div class="p-2">
			<form method="post" action="checkout">
				<input class="btn btn-dark text-light" type="submit" value="Place order">
			</form>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
	</body>
</html>
<%@include file="footer.jsp" %>