<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit your note</h1>
        <br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session session2 = FactoryProvider.getFactory().openSession();
		Transaction transaction = session2.beginTransaction();
		Note note = (Note) session2.get(Note.class, noteId);
		%>
		
		
		
		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId()%>" name="noteId" type="hidden"/>
		
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					name="title" required type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here" value="<%= note.getTitle()%>">
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content" required class="form-control" id="content"
					placeholder="Enter your content here" style="height: 300px"><%= note.getContent()%></textarea>
			</div>

			
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>
	</div>
</body>
</html>