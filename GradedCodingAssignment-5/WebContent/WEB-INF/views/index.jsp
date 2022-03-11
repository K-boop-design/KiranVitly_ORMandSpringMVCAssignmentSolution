<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Relationship Management</title>
</head>
<body>
<div align="center">
	<h2>CUSTOMER RELATIONSHIP MANAGEMENT</h2>
	<h3><a href="new">Add Customer</a></h3>
	<table border="1" cellpadding="5">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>E-mail</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listCustomer}" var="customer">
		<tr>
			<td>${customer.id}</td>
			<td>${customer.name}</td>
			<td>${customer.lastName}</td>
			<td>${customer.email}</td>
			<td>
				<a href="edit?id=${customer.id}">Update</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${customer.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>