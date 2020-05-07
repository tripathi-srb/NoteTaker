package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entitiy.Note;
import com.helper.FactoryProvider;



@MultipartConfig
@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		try {
			//fetch title,content
			 String title=request.getParameter("title");
			 String content=request.getParameter("content");
			 
			 Note note = new Note(title, content, new Date());
			 
			 //System.out.println(note.getId()+" : "+note.getTitle());
			 
			 //hibernate:save()
			 Session s = FactoryProvider.getFactory().openSession();
			 
			 Transaction tx=s.beginTransaction();
			 s.save(note);
			 tx.commit();
			 s.close();
			 out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
			 out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//out.println("hi save note servlet");
	}

}
