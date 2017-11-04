package com.bridgelabz.Controller;

import java.io.*;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.bridgelabz.DAO.DataAccessObject;
import com.bridgelabz.model.JavaBean;



public class registerController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String name = request.getParameter("name");
			String mail = request.getParameter("mail");
			String pass = request.getParameter("pass");
			String cPass = request.getParameter("cPass");
			String mobileNum = request.getParameter("mn");
			JavaBean bean = new JavaBean(name, mail, mobileNum, pass, cPass);
			bean.setName(name);
			bean.setMail(mail);
			bean.setMobile(mobileNum);
		
			HttpSession session = request.getSession();
			validation valid = new validation();
			boolean isVlaid = valid.vaildationMethod(bean, session);
			java.sql.ResultSet rs = DataAccessObject.fetchRecord();

			while (rs.next()) {
				String mailCheck = rs.getString(2);
				String mobile = rs.getString(5);
				if (mail.equals(mailCheck)) {
					out.println("Email id Already Exsist.......");
					request.getRequestDispatcher("register.jsp").include(request, response);
					return;
				}
				if (mobile.equals(mobileNum)) {
					out.println("mobile number Already Exsist.......");
					request.getRequestDispatcher("register.jsp").include(request, response);
					return;
				}
			}
			int count = DataAccessObject.insertRecord(name, mail, pass, cPass, mobileNum);

			//if(isVlaid == true) {
			if (count > 0) {
				out.print("Login sucessfully.................");
				response.sendRedirect("signin.jsp");
			}else {
				//session.setAttribute("error", "Record Already exsists............");
				response.sendRedirect("register.jsp");
				//return;
			}
			//}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}
}
