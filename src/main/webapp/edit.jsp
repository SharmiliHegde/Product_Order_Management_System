<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<style>

 body {
        font-family: Arial, sans-serif;
        background-color: rgb(143, 195, 221);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    form {
        background-color: white;
        padding: 35px;
         margin: 20px 0;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 350px;
         margin-top: 60px;
    }

    form input{
        width: 100%;
        padding: 9px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    form button {
        width: 100%;
        padding: 10px;
        background-color: gray;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    form button:hover {
        background-color: blue;
    }

    label {
        font-weight: bold;
    }

	h1{
	
		color: black;
  		font-size: 36px;
 		font-family: Arial, sans-serif;
 		padding: 20px;
  		margin: 20px;
  		position: absolute;
  		top: 10%;
  		left: 50%;
  		transform: translate(-50%, -50%);
  		margin: 0;
	
	}

</style>

</head>
<body>
	<h1>Edit page</h1>

	<form action="/edit/${data.id }" method="post">

		<input type="hidden" name=id value=${data.id }> <br>
		<br> Product Name :<input type="text" name=name value=${data.name }><br>
		<br> Brand Name : <input type="text" name=brandname value=${data.brandname }> <br>
		<br> Category : <input type="text" name=category value=${data.category }> <br>
		<br>
		
		<button type="submit">Update</button>

	</form>
</body>
</html>