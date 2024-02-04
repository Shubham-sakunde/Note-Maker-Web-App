<!doctype html>
<html lang="en">
<head>
<title>Note Taker</title>
<%@include file="includes/header.jsp"%>
</head>
<body>


	<div class="container">
		<%@include file="includes/navbar.jsp"%>
		<br>
		
		
		<div class="card py-4">
			<img src="images/noteIcon.png" alt="notepad img"
				class="img-fluid mx-auto" style="max-width: 400px">
			<h1 class="text-uppercase text-center py-3" style="color: #83C0C1;">Start
				taking your notes</h1>


			<div class="container text-center">
				<form action="add_notes.jsp">
					<button class="btn text-center" style="background-color: #83C0C1">
						Start here</button>
				</form>
			</div>

		</div>

	</div>



	<%@include file="includes/footer.jsp"%>
</body>
</html>