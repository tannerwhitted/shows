<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
.wrapper {
	padding: 20px;
}
</style>
</head>
<body>
<div class="wrapper">
	<h1>Welcome, <c:out value="${user.name}" /></h1>
	<a href="/logout">Logout</a>
	<br>
	<br>
	<br>
	<br>
	
	<h2>Tv Shows</h2>
	
	<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Network</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${shows}" var="show">
        <tr>
            <td><a href="shows/show/${ show.id }"><c:out value="${show.name}"/> </a></td>
            <td><c:out value="${show.network}"/></td>
            <td><c:out value="${ show.rating }"/></td>      
		</tr>
        </c:forEach>
    </tbody>
</table>
<br>
<br>

	    <a href="shows/new">Add A Show</a>
</div>
</body>
</html>