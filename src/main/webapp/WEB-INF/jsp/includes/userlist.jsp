<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>E-mail</th>
			<th>Name</th>
			<th>Password</th>
		</tr>
	</thead>
	<c:forEach items="${userList}" var="users">
		<tr>
			<td>${users.userId}</td>
			<td>${users.email}</td>
			<td>${users.name}</td>
			<td>${users.password}</td>
		</tr>
	</c:forEach>
</table>

<!-- table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>E-mail</th>
			<th>Name</th>
			<th>Password</th>
		</tr>
	</thead>
	<c:forEach items="${userList}" var="user">
		<tr>
			<td>${user.userId}</td>
			<td>${user.email}</td>
			<td>${user.name}</td>
			<td>${user.password}</td>
		</tr>
	</c:forEach>
</table -->