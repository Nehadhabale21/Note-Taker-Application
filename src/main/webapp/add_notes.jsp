<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>

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
    width: 300px;
  }
  
  .btn-purple:hover {
    background: linear-gradient(90deg, #7b1fa2, #9c27b0);
    color: #fff;
  }

  .card {
    border: none;
    border-radius: 15px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  }
</style>

</head>
  
<body>
  <div class="container">
    <%@include file="navbar.jsp"%>
    <br>

    <!-- Consistent card width like homepage -->
    <div class="card py-5 px-4 shadow-sm border-0">
      <img alt="" class="img-fluid mx-auto" style="max-width:120px;" src="img/notepad.png">
      <h1 class="text-center mt-4" style="color:#7B1FA2;">Add a New Note</h1>

      <!-- Add Notes Form -->
      <form action="SaveNoteServlet" method="post" class="mt-4">
        <div class="mb-3">
          <label for="title" class="form-label">Note Title</label>
          <input name="title" required type="text" class="form-control" id="title"
            placeholder="Enter your title here">
        </div>

        <div class="mb-3">
          <label for="content" class="form-label">Note Content</label>
          <textarea name="content" required class="form-control" id="content"
            placeholder="Enter your content here" style="height: 150px"></textarea>
        </div>

        <div class="text-center">
          <button type="submit" class="btn btn-lg btn-purple d-block mx-auto mt-3">Save Note</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
