<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entities.Note"%>
<%@ page import="org.hibernate.query.Query"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : Note Taker</title>
<%@include file="includes/header.jsp"%>
</head>
<body>


	<div class="container">
		<%@include file="includes/navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">ALL NOTES:</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getSessionFactory().openSession();
				Query query = s.createQuery("from Note");
				List<Note> list = query.list();
				for (Note note : list) {
				%>

				<div class="card mt-3 mb-3">
					<img src="images/noteIcon.png" style="max-width: 100px;"
						class="card-img-top m-3 mx-auto" alt="note img">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p>
							<strong class="text-primary"><%=note.getAddedDate()%></strong>
						</p>
						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-outline-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-outline-info">Update</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
	

	<%@include file="includes/footer.jsp"%>
</body>
</html>