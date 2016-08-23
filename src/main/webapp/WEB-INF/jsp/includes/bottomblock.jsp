<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="col-md-4">
			<h2>Users</h2>
			<p>Show and search users</p>
			<p>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myBottomModalLeft1">Users list</button>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myBottomModalLeft2" data-whatever="@user">User
					menu</button>
			</p>
			<div class="modal fade" id="myBottomModalLeft1" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Users list</h4>
						</div>
						<div class="modal-body">
							<%@ include file="/WEB-INF/jsp/includes/userslist.jsp"%>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="myBottomModalLeft2" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="exampleModalLabel">User menu</h4>
						</div>
						<div class="modal-body">
							<div class="container">
								<%@ include file="/WEB-INF/jsp/includes/useraddmodal.jsp"%>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<h2>Messages</h2>
			<p>Click this button and never be sad again</p>
			<p>
				<a class="btn btn-default" href="/CRUDWebAppMavenized/message">Messages</a>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myBottomModalLeft3" data-whatever="@user">Inbox</button>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myBottomModalLeft4" data-whatever="@user">New</button>
			</p>
			<div class="modal fade" id="myBottomModalLeft3" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Users list</h4>
						</div>
						<div class="modal-body">
							<!-- %@ include file="/WEB-INF/jsp/includes/userstable.jsp"% -->
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="myBottomModalLeft4" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="exampleModalLabel">Send message</h4>
						</div>
						<div class="modal-body">
							<div class="container">
								<!--  %@ include file="/WEB-INF/jsp/includes/messageaddmodal.jsp"% -->
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<h2>Docs</h2>
			<p>Share your documents</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details</a>
			</p>
		</div>
	</div>
</div>