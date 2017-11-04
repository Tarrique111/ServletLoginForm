package com.bridgelabz.Controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.bridgelabz.DAO.DataAccessObject;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String mail = request.getParameter("mail");
		String passowrd = request.getParameter("pass");

		try {

			String names = DataAccessObject.findRecord(mail, passowrd);
			if (names != null) {
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(10);
				out.println(names);
				session.setAttribute("name", names);
				response.sendRedirect("profile");
			} else {
				out.println("userName or password not Exsist..........");
				request.getRequestDispatcher("signin.jsp").include(request, response);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
}
