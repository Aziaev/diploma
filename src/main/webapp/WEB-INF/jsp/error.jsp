<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>

<title>Error page</title>

<body>
	<div class="simplediv" margin-top="40px">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<h2>404!</h2>
			<p>You've reached a secret error page!</p>
		</div>
		<div class="col-md-4"></div>

		<img src="<c:url value="/resources/img/error_meme.png" />"
			class="center-block" width="50%">
	</div>

	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>
</body>
</html>