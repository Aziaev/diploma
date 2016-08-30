<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="col-sm-offset-4 col-sm-4">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h4>Sign in and save the Planet</h4>
			</div>
			<div class="panel-body">
				<form:form action="login.do" method="POST" commandName="student"
					class="form-horizontal">

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
							<form:input path="password" type="password" class="form-control"
								placeholder="Password" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-12">
							<button type="submit"  name="action" value="identify" class="btn btn-default btn-lg btn-block">Sign in</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12 text-center">
							<a href="/CRUDWebAppMavenized/signup" class="navbar-link">Not registered yet? Sign up</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>