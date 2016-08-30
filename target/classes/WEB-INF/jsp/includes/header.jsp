<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<nav class="navbar navbar-default navbar-fixed-top">
<div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="/CRUDWebAppMavenized/">Home</a>
	</div>

	<!-- If nameCookie is empty: button "sign in", Signed in as "**" + button "sign out" -->

	<div class="navbar-right">
		<p class="navbar-text">
			Signed in as <a href="#" class="navbar-link">${student}</a>
		</p>
		<a href="/CRUDWebAppMavenized/login"><button type="button"
				class="btn btn-default navbar-btn navbar-right">Sign in</button></a>
	</div>
</div>
</nav>
</head>