<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form:form action="message.do" method="POST" commandName="message" class="form-horizontal">
	<div class="form-group">
		<div class="col-sm-6">
			<label for="senderId">From</label>
			<form:input path="senderId" type="text" class="form-control"
				placeholder="Sender" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-4">
			<label for="recieverId">To</label>
			<form:input path="recieverId" type="text" class="form-control"
				placeholder="Reciever" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-4">
			<label for="messageText">Message body</label>
			<form:input path="messageText" type="text" class="form-control"
				placeholder="Message body" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-4">
			<input type="submit" name="action" value="Send" class="btn btn-primary" />
		</div>
	</div>
</form:form>