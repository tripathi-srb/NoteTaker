<!doctype html>
<%@page import="com.entitiy.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NoteTaker - Edit Notes</title>
    <!-- css -->
    <%@include file="components/common_css_js.jsp" %>
</head>
<body>
	<div class="container">
	<!-- navbar -->
	<%@include file="components/navbar.jsp" %>
	
	<!-- End navbar -->
	<h1>Edit your note</h1>
	<br>
	<%
	  int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	  Session s = FactoryProvider.getFactory().openSession();
	  
	  Note note=(Note)s.get(Note.class, noteId);
	%>
		<!-- add form -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" name="noteId" type="hidden">
		
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input value="<%=note.getTitle() %>" name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here">
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name="content" required id="content" class="form-control" placeholder="Enter here" style="height:300px">
		    <%=note.getContent()%>
		    </textarea>
		   </div>
		 <div class="container text-center">
		   <button type="submit" class="btn btn-primary1">Update</button>
		 </div>
		  
		</form>
	<!-- End add form -->
	</div>
    

</body>
</html>