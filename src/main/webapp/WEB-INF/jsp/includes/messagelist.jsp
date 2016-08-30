<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table">
	<h1>Messages</h1>
	<thead>
		<tr>
			<th class="col-md-1">From</th>
			<th class="col-md-1">To</th>
			<th class="col-md-2">Message</th>
			<th class="col-md-2">Reply</th>
		</tr>
	</thead>
	<c:forEach items="${messageList}" var="message">
		<tr>
			<td>${message.senderId}</td>
			<td>${message.recieverId}</td>
			<td>${message.messageText}</td>
			<td><button type="button"
					class="btn btn-default btn-lg text-center" data-toggle="modal"
					data-target="#exampleModal" data-whatever="${student.name}">Reply
					to ${message.senderId}</button></td>
		</tr>
	</c:forEach>
</table>

<!-- Начало кода модального окна -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title text-left" id="exampleModalLabel">New
					message @${student.name}</h4>
			</div>
			<div class="modal-body">
				<form:form action="message.do" method="POST" commandName="message"
					class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-12">
							<label for="senderId">From</label>
							<form:input path="senderId" type="text" class="form-control"
								placeholder="Sender" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<label for="recieverId">To</label>
							<form:input path="recieverId" type="text" class="form-control"
								placeholder="Reciever" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<label for="messageText">Type your message here</label>
							<form:input path="messageText" type="text" class="form-control"
								placeholder="Message body" id="message-text" />
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" name="action" value="Send"
							class="btn btn-primary">Send message</button>
					</div>
				</form:form>
			</div>

		</div>
	</div>
</div>
<!-- Конец кода модального окна -->