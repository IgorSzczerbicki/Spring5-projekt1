<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Customers list</title>

	<link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet" />

</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM Customers</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
			<table>
				<tbody>
					<tr>
						<th>Last name</th>
						<th>First name</th>
						<th>E-mail</th>
					</tr>
					<c:forEach var="customer" items="${customers}">
						<tr>
							<td>${customer.firstName}</td>
							<td>${customer.lastName}</td>
							<td>${customer.email}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>