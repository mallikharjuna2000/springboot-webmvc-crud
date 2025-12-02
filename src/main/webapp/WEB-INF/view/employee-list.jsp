<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Employees List</title>

<style>
body {
	font-family: "Segoe UI", Arial, sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 20px;
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 30px;
	font-size: 28px;
}

/* Page container */
.container {
	width: 90%;
	margin: auto;
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

/* Table styling */
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

table, th, td {
	border: 1px solid #ccc;
}

th {
	background-color: #343a40;
	color: white;
	padding: 12px;
	font-size: 16px;
}

td {
	padding: 10px;
	font-size: 15px;
}

/* Hover effect */
tr:hover {
	background-color: #f1f1f1;
}

/* Action buttons */
.btn {
	padding: 5px 10px;
	text-decoration: none;
	border-radius: 5px;
	font-size: 14px;
	color: white;
}

.btn-edit {
	background-color: #17a2b8;
}

.btn-edit:hover {
	background-color: #117a8b;
}

.btn-delete {
	background-color: #dc3545;
}

.btn-delete:hover {
	background-color: #b52a35;
}

/* Add New button */
.add-link {
	display: inline-block;
	padding: 12px 20px;
	background-color: #28a745;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-size: 16px;
	margin-top: 15px;
}

.add-link:hover {
	background-color: #218838;
}
</style>

</head>
<body>

	<div class="container">
		<h1>Employees List</h1>

		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Designation</th>
				<th>Actions</th>
			</tr>

			<c:forEach items="${employees}" var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.salary}</td>
					<td>${employee.designation}</td>
					<td><a href="/editEmployeeForm?id=${employee.id}"
						class="btn btn-edit">Edit</a> <a
						href="/deleteEmployee?id=${employee.id}" class="btn btn-delete">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>

		<a href="/addEmployeeForm" class="add-link"> Add New Employee</a>
	</div>

</body>
</html>
