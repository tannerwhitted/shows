<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
.wrapper {
	padding: 20px;
}
</style>
</head>
<body>
<div class="wrapper">

<h1><c:out value="${ show.name }"/></h1>

<br>

<p>Network: <c:out value="${ show.network }"/> </p>

<br>

<p>Rating: <c:out value="${ show.rating }"/>  </p>

<br>
<br>

<a href="/shows/edit/${ show.id }"> Edit </a>


</div>
</body>
</html>