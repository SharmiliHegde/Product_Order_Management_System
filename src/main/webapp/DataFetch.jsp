<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Data Fetch</title>
<style>

table {
  		border-collapse: collapse;
  		width: 100%; 
  		margin-top: 90px;
}
th, td {
  		border: 1px solid #ddd; 
  		padding: 10px;
  		text-align: left; 
}

h1{
	
		color: black;
  		font-size: 30px;
 		font-family: Arial, sans-serif;
 		padding: 20px;
  		margin: 10px;
  		position: absolute;
  		top: 5%;
  		left: 50%;
  		transform: translate(-50%, -50%);
  		 margin-bottom: 20px;
  		
	
	}

</style>

</head>
<body>
	<h1>All Data</h1>
	<table border="3" width=100%>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Brandname</th>
			<th>Category</th>
			<th>Update</th>
			<th>Delete</th>
			
		</tr>

		<d:forEach var="x" items="${data}">
			<tr>
				<td>${x.id}</td>
				<td>${x.name}</td>
				<td>${x.brandname}</td>
				<td>${x.category}</td>
				<td><a href="<d:url value='/${x.id}'/>">Update</a></td>
				<td><a href="<d:url value='/Delete/${x.id}'/>">Delete</a></td>
				
			</tr>
		</d:forEach>
	</table>
</body>
</html>
