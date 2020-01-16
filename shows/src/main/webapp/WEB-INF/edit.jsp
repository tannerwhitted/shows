<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<style>
.wrapper {
	padding: 20px;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div class="wrapper">
<h1><c:out value="${ show.name }"/></h1>
<br>

<form:form action="/shows/${ show.id }" method="post" modelAttribute="show">
<p>
	<form:label path="name">Name</form:label>
	<form:errors path="name"/>
	<form:input path="name"/>
</p>
<p>
    <form:label path="network">Network</form:label>
    <form:errors path="network"/>
    <form:textarea path="network"/>
</p>
<p>
    <form:label path="rating">Rating</form:label>
    <form:errors path="rating"/>
    <form:textarea path="rating"/>
</p>
<input type="submit" value="Submit"/>
</form:form>

<form action="/shows/${show.id}" method="post">
    <input type="hidden" name="_method" value="delete">
    <input type="submit" value="Delete">
</form>
</div>
</body>
</html>