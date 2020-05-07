<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Notes</title>
    <!-- css -->
    <%@include file="components/common_css_js.jsp" %>
</head>
<body>
	
	
	<div class="container">
	<!-- navbar -->
	<%@include file="components/navbar.jsp" %>
	<!-- End navbar -->
	<h1>Please fill your note detail</h1>
	<br>
		<!-- add form -->
		<form action="SaveNoteServlet" method="post">
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here">
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name="content" required id="content" class="form-control" placeholder="Enter here" style="height:300px"></textarea>
		   </div>
		 <div class="container text-center">
		   <button type="submit" class="btn btn-primary1">Add</button>
		 </div>
		  
		</form>
		<!-- End add form -->
	</div>
	
	
    

</body>
</html>
