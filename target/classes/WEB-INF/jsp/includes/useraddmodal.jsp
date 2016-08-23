<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form:form action="student.do" method="POST" commandName="student"
	class="form-horizontal">

	<div class="form-group">
		<div class="col-sm-6">
			<label for="userId">User ID</label>
			<form:input path="studentId" type="text" class="form-control"
				placeholder="Auto generated user ID" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-6">
			<label for="firstname">Firstname</label>
			<form:input path="firstname" type="text" class="form-control"
				placeholder="Firstname" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-6">
			<label for="lastname">Lastname</label>
			<form:input path="lastname" type="text" class="form-control"
				placeholder="Lastname" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-6">
			<label for="yearLevel">Year Level</label>
			<form:input path="yearLevel" type="text" class="form-control"
				placeholder="Year Level" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-6">
			<input type="submit" name="action" value="Add"
				class="btn btn-primary" /> <input type="submit" name="action"
				value="Edit" class="btn btn-warning" /> <input type="submit"
				name="action" value="Delete" class="btn btn-danger" /> <input
				type="submit" name="action" value="Search" class="btn btn-default" />
		</div>
	</div>
</form:form>