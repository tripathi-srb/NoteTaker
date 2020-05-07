<!doctype html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.entitiy.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>All notes: Notes Taker</title>
    <!-- css -->
    <%@include file="components/common_css_js.jsp" %>
</head>
<body>
	<div class="container">
	<!-- navbar -->
	<%@include file="components/navbar.jsp" %>
	
	<!-- End navbar -->
	<br>
	<h1 class="text-uppercase">All  Notes :</h1>
	
	
	<div class="row">
	  <div class="col-12"> 
	     <%
			  Session s = FactoryProvider.getFactory().openSession();
			  
			  Query q=s.createQuery("from Note");
			  List<Note> list=q.list();
			  
			  for(Note note:list)
			  {
				  %>
				
				  <div class="card mt-3">
					  <img class="card-img-top m-4 mx-auto" style="max-width:100px" src="img/notes.png" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title px-5"><%=note.getTitle()%></h5>
					    <p class="card-text px-5"><%=note.getContent() %></p>
					    <p class="card-text px-5"><b><%=new SimpleDateFormat("MM-dd-yyyy").format(note.getaddedDate()) %></b></p>
					    <div class="container text-center mt-2">
					    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
					    <a href="edit_notes.jsp?note_id=<%=note.getId() %>" class="btn btn-primary1">Update</a>
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
    

</body>
</html>