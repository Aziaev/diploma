<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- This contains the most used tag libraries -->

<div class="jumbotron">
	<div class="container">
		<c:if test="${not empty name}">
			<h1>Hello ${name}</h1>
		</c:if>

		<c:if test="${empty name}">
			<h1>Welcome guest!</h1>
		</c:if>
		<p>This is simple diploma project with a lot of popular
			technologies</p>

		<!-- Button trigger modal for more info -->
		<button type="button" class="btn btn-primary btn-lg"
			data-toggle="modal" data-target="#myModal">Show more info</button>

		<!-- Modal -->			
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Used technologies and stuff</h4>
					</div>
					<div class="modal-body">
					<%@ include file="/WEB-INF/jsp/includes/about.jsp"%>
					<%@ include file="/WEB-INF/jsp/includes/plan.jsp"%>					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>