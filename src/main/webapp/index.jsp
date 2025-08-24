<!-- bootstrap search Starter template in introduction -->

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Note Taker : Home Page</title>
    
    <%@include file = "all_js_css.jsp" %>
    
    <style>
	  .purple {
	    background-color: #7B1FA2; /* color from mui.com */
	  }
	  
	  .btn-purple {
		  background: linear-gradient(90deg, #6a11cb, #8e44ad);
		  color: #fff;
		  border: none;
		  transition: 0.3s;
		  width :300px;
		  
		}
		
		.btn-purple:hover {
		  background: linear-gradient(90deg, #7b1fa2, #9c27b0);
		  color: #fff;
		}
	  
	</style>
    
    
  </head>
  
  <body>
    <!-- <div class="container-fluid p-0 m-0"> or -->
    <div class="container">
    	<%@include file = "navbar.jsp" %>
    	<br>
    	<div class="card py-5">
    	<img alt="" class="img-fluid mx-auto" style="max-width:350px;" src="img/notebook.png">
    	<h1 class=" text-center mt-4" style="color:#7B1FA2;">Start taking your notes</h1>

		 <a href="add_notes.jsp" class="btn btn-lg mt-3 px-4 btn-purple d-block mx-auto">
			  Add Your Note
		 </a>

		 
    	</div>
    </div>
   
  </body>
</html>






