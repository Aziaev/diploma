<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>

<title>Sign up | Happy messenger</title>

<body>
	<!-- %@ include file="/WEB-INF/jsp/includes/jumbotron.jsp"% -->

	<div class="container">
		<div class="registerdiv">
			<%@ include file="/WEB-INF/jsp/includes/useradd.jsp"%>
		</div>
	</div>
	<hr>
	<%@ include file="/WEB-INF/jsp/includes/bottomblock.jsp"%>
	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

</body>
</html>
