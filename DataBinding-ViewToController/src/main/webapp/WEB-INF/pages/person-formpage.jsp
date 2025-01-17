<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Binding App</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid">
		<h1 class="text-center">Person Details</h1>
		<div class="d-flex justify-content-center align-items-center"
			style="height: 400px;">
			<div class="card w-50">
				<div class="card-header">
					<h3 class="text-center">User Form</h3>
				</div>
				<div class="card-body">
					<f:form method="post" action="form2" modelAttribute="per" class="form">
						<table class="table">
							<tr>
								<th>Name</th>
								<td><f:input type="text" path="name" class="form-control" /></td>
							</tr>
							<tr>
								<th>Age</th>
								<td><f:input type="text" path="age" class="form-control" /></td>
							</tr>
							<tr>
								<th>Gender</th>
								<td><f:input type="text" path="gender" class="form-control" /></td>
							</tr>
							<tr>
								<th>Qualification</th>
								<td><f:input type="text" path="qualification"
									class="form-control" /></td>
							</tr>
							<tr>
								<td>
									<button class="btn btn-success">create</button>
								</td>
								<td>
									<button class="btn btn-success" type="reset">reset</button>
								</td>
							</tr>
						</table>
					</f:form>
				</div>
				<div class="card-footer">
					<h4>Person details</h4>
					<ul>
						<li>Name - ${person.name}</li>
						<li>Age - ${person.age}</li>
						<li>Gender - ${person.gender}</li>
						<li>Qualification - ${person.qualification}</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>