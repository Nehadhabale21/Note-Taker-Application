<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>

<%@include file="all_js_css.jsp"%>
<style>
  .purple {
    background-color: #7B1FA2 !important;
  }

  .btn-purple {
    background: linear-gradient(90deg, #6a11cb, #8e44ad);
    color: #fff;
    border: none;
    transition: 0.3s;
    width: 150px;
  }

  .btn-purple:hover {
    background: linear-gradient(90deg, #7b1fa2, #9c27b0);
    color: #fff;
  }

  .card {
    border: none;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    border-radius: 15px;
  }

  .note-title {
    color: #7B1FA2;
    font-weight: bold;
  }

  .note-date {
    font-size: 0.9rem;
    color: #555;
  }
</style>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<div class="card py-4 px-3 shadow-sm border-0">
		  <h1 class="text-center mb-4" style="color:#7B1FA2;">All Notes</h1>

		  <div class="row">
			<div class="col-12">
				<%
				Session session2 = FactoryProvider.getFactory().openSession();
				Query query = session2.createQuery("from Note");
				List<Note> list = query.list();

				// Date formatter
				SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm");

				if(list.isEmpty()){
				%>
				  <p class="text-center text-muted">No notes available. Start adding your notes!</p>
				<%
				} else {
				  for (Note note : list) {
				    String formattedDate = sdf.format(note.getAddedDate());
				%>

				<div class="card mt-3 p-3">
					<img style="max-width: 80px" src="img/notebook.png"
						class="card-img-top mx-auto mt-3" alt="Card Image">
					<div class="card-body text-center">
						<h5 class="note-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p class="note-date"><b><%= formattedDate %></b></p>
						<div class="mt-3 d-flex justify-content-center gap-3">
							<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-purple">Update</a>
						</div>
					</div>
				</div>

				<%
				  }
				}
				session2.close();
				%>
			</div>
		  </div>
		</div>
	</div>
</body>
</html>
