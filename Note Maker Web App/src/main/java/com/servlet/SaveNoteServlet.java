package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.entities.Note;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {

	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// title , content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());

			// hibernate:save();
			Session s = FactoryProvider.getSessionFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			out.println("<h1 style='text-align:center'>Note is Added Successfully</h1>");
			out.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View All Notes</h1>");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
