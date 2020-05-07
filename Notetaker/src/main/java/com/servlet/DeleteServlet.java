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
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
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
			//fetch note id
			 int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			 
			 
			 //hibernate: fetch then delete
			 Session s = FactoryProvider.getFactory().openSession();
			 Transaction tx = s.beginTransaction();
			 Note note=(Note)s.get(Note.class, noteId);
			 
			 s.delete(note);
			 tx.commit();
			 s.close();
			 response.sendRedirect("all_notes.jsp");
			 
			 } catch (Exception e) {
			e.printStackTrace();
		}
		
		//out.println("Delete servlet");
	}

}
