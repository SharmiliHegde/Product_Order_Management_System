<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Insertion</title>
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
       margin: 0 15px;
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
        border-radius: 2x;
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
	
	#first-title{
	
		color: black;
  		font-size: 29px;
 		font-family: Arial, sans-serif;
 		padding: 20px;
  		margin: 0;
  		position: absolute;
  		top: 20%;
  		left: 20%;
  		transform: translate(-50%, -50%);
  		margin: 0;
  		 text-align: center;
	
	}
	
	#second-title{
	
		color: black;
  		font-size: 29px;
 		font-family: Arial, sans-serif;
 		padding: 20px;
  		margin: 0;
  		position: absolute;
  		top: 20%;
  		left: 50%;
  		transform: translate(-50%, -50%);
  		margin: 0;
  		text-align: center;
	
	}

	
	#third-title{
	
		color: black;
  		font-size: 29px;
 		font-family: Arial, sans-serif;
 		padding: 20px;
  		margin: 0;
  		position: absolute;
  		top: 20%;
  		left: 80%;
  		transform: translate(-50%, -50%);
  		margin: 0;
  		text-align: center;
	
	}

</style>
</head>
<body>

	
	<h3 id="first-title">Enter Order Details</h3>

	<form action="Orderinsertation">

		Product Name : <input type="text" name=name> <br>
		<br> Brand Name : <input type="text" name=brandname> <br>
		<br> Category : <input type="text" name=category> <br>
		<br>

		<button type="submit">Insert</button>
	</form>
	
		<h3 id="second-title">Enter Category Details</h3>

	<form action="Categoryinsertation">

		Category Name : <input type="text" name=name> <br>
		

		<button type="submit">Insert</button>
	</form>
	
		<h3 id="third-title">Order Information</h3>
		<form action="fetch">
		<button type="submit">View recordes</button>
		</form>
		<br><br>
	
	
</body>
</html>