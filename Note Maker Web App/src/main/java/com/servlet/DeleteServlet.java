package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {

	public DeleteServlet() {
		super();

	}
	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();

		Note note = (Note) s.get(Note.class, noteId);
		s.delete(note);
		tx.commit();
		s.close();
		response.sendRedirect("all_notes.jsp");
	}

	
}
