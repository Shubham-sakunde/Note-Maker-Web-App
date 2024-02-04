<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Edit Page</title>
<%@include file="includes/header.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="includes/navbar.jsp"%>
		<h1 class="mt-3">Edit your note</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getSessionFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" Method="post">
		<input value="<%= note.getId() %>" name="noteId" type="hidden">
				
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					type="text" class="form-control" name="title" id="title" required
					placeholder="Enter here" value="<%=note.getTitle()%>" />
				<div id="emailHelp" class="form-text"></div>
			</div>

			<div class="mb-3">
				<label for="content">Note Content</label>
				<textarea id="content" name="content" required
					placeholder="Enter your text content" class="form-control"
					style="height: 300px"><%=note.getContent()%></textarea>
			</div>


			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your
					note</button>
			</div>

		</form>



	</div>



</body>
</html>