<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<div class="container">
	<div class="row">
		<div class="col-md-4">
			<h2>Users</h2>
			<p>Easy way to send message to some one</p>
			<p>
				<a class="btn btn-default" href="/CRUDWebAppMavenized/users" role="button">Find users</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Messages</h2>
			<p>Read your messages or all pinguins in Arctica will die</p>
			<p>
				<a class="btn btn-default" href="/CRUDWebAppMavenized/message" role="button">Show messages</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Profile</h2>
			<p>Your profile and settings</p>
			<p>
				<a class="btn btn-default" href="#" role="button" disabled="disabled">View details</a>
			</p>
		</div>
	</div>
</div>