<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table">
	<thead>
		<tr>
			<th>From</th>
			<th>To</th>
			<th>Message</th>
		</tr>
	</thead>
	<c:forEach items="${messageList}" var="message">
		<tr>
			<td>${message.senderId}</td>
			<td>${message.recieverId}</td>
			<td>${message.messageText}</td>
		</tr>
	</c:forEach>
</table>