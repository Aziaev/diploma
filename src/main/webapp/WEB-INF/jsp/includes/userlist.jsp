<table>
	<thead>
		<tr>
			<th></th>
		</tr>
	</thead>
	<c:forEach items="${studentList}" var="student">
		<tr>
			<!-- td>${student.studentId}</td>
			<td class="col-md-1">${student.name}</td -->
			<td>
				<!--button type="button" class="btn btn-default btn-lg margin10 col-md-12 text-center">Send message @${student.name}</button -->
				<button type="button"
					class="btn btn-default btn-lg margin10 col-md-12 text-center"
					data-toggle="modal" data-target="#exampleModal"
					data-whatever="${student.name}">Send message to
					@${student.name}</button>
			</td>
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
				<form>
					<div class="form-group">
						<textarea class="form-control" id="message-text"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Send message</button>
			</div>
		</div>
	</div>
</div>
<!-- Конец кода модального окна -->