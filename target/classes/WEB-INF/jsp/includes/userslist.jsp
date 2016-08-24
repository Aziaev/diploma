<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Password</th>
		</tr>
	</thead>
	<c:forEach items="${userList}" var="user">
		<tr>
			<td>${user.userId}</td>
			<td>${user.name}</td>
			<td>${user.password}</td>
		</tr>
	</c:forEach>
</table>

<!-- table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>E-mail</th>
			<th>Name</th>
			<th>Password</th>
		</tr>
	</thead>
	<c:forEach items="${userList}" var="user">
		<tr>
			<td>${user.userId}</td>
			<td>${user.email}</td>
			<td>${user.name}</td>
			<td>${user.password}</td>
		</tr>
	</c:forEach>
</table -->