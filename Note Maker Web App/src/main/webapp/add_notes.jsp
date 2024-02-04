<!doctype html>
<html lang="en">
<head>
<title>Add Notes</title>
<%@include file="includes/header.jsp"%>
</head>
<body>


	<div class="container">
		<%@include file="includes/navbar.jsp"%>
		<br>
		<h1>Please fill your note details</h1>

		<!-- add note form started -->

		<br>
		<form action="SaveNoteServlet" Method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					type="text" class="form-control" name="title" id="title" required
					placeholder="Enter here" aria-describedby="emailHelp">
				<div id="emailHelp" class="form-text"></div>
			</div>

			<div class="mb-3">
				<label for="content">Note Content</label>
				<textarea id="content" name="content" required
					placeholder="Enter your text content" class="form-control"
					style="height: 300px"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-outline-success">Add</button>
			</div>
		</form>
	</div>





	<%@include file="includes/footer.jsp"%>
</body>
</html>