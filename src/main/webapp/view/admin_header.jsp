
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid bg-dark">
	<header class="d-flex flex-wrap justify-content-center py-3 mb-4">
				<a href="/adminHome" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-light text-decoration-none navbar-brand">
					SupplyChain
				</a>
				<ul class="nav nav-pills">
					<li class="nav-item"><a href="/adminHome" class="nav-link text-light" aria-current="page">Home</a></li>
					<c:if test="${username eq null}">
						<li class="nav-item"><a href="/login" class="nav-link">Login</a></li>
						<li class="nav-item"><a href="/register" class="nav-link">Register</a></li>
					</c:if>
					<c:if test="${username ne null}">
						<li class="nav-item"><a class="nav-link text-light" href="viewOrders">View Orders</a></li>
						<li class="nav-item"><a class="nav-link text-light " href="viewInventory">View/Update Inventory</a></li>
						<li class="nav-item"><a class="nav-link text-light" href="viewCustomers">View Customers</a></li>
						<li class="nav-item"><a class="nav-link text-light " href="addGroceries">Add Groceries</a></li>
						<li class="nav-item"><a class="nav-link text-light "href="/logout" class="nav-link">Logout</a></li>
					</c:if>
					
				</ul>
			</header>
			</div>
</body>
</html>