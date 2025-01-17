<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Data Rendering in spring boot mvc</h1>
	<p>${msg1}</p>
	<p>${msg2}</p>

	<h2>Diff kinds of data from controller</h2>
	<ul>
		<c:forEach var="name" items="${names}">
			<li>${name}</li>
		</c:forEach>
	</ul>
	<h4>Person details</h4>
	<ol>
		<li>Name - ${person.name}</li>
		<li>Age - ${person.age}</li>
		<li>Gender - ${person.gender}</li>
		<li>Qualification - ${person.qualification}</li>
	</ol>
	<h4>Persons detail</h4>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Qualification</th>
		</tr>
		<c:forEach var="person" items="${persons}">
			<tr>
				<td>${person.name}</td>
				<td>${person.age}</td>
				<td>${person.gender}</td>
				<td>${person.qualification}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>