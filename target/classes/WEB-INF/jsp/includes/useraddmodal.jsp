<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form:form action="user.do" method="POST" commandName="user"
	class="form-horizontal">

	<!-- div class="form-group">
		<div class="col-sm-12">
			<label for="userId">User ID</label>
			<form:input path="userId" type="text" class="form-control"
				placeholder="Auto generated user ID" />
		</div>
	</div -->

	<div class="form-group">
		<div class="col-sm-12">
			<label for="name">Name</label>
			<form:input path="name" type="text" class="form-control"
				placeholder="Name" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-12">
			<label for="password">Password</label>
			<form:input path="password" type="text" class="form-control"
				placeholder="Password" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-12">
			<input type="submit" name="action" value="Add"
				class="btn btn-primary" /> <input type="submit" name="action"
				value="Edit" class="btn btn-warning" /> <input type="submit"
				name="action" value="Delete" class="btn btn-danger" /> <input
				type="submit" name="action" value="Search" class="btn btn-default" />
		</div>
	</div>
</form:form>