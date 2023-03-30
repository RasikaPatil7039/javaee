package com.aurionpro.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sessiondemo")
public class sessiondemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public sessiondemo() {
		super();
		// TODO Auto-generated constructor stub
	}

	int old = 1;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//to set object of session
		HttpSession session = request.getSession();
		session.setAttribute("count", old);
		if (session.getAttribute("count") != null) {
			out.println(("<h2>" + "Old Count : " + session.getAttribute("count") + "</h2>"));
			old++;
			session.setAttribute("count", old);
			out.println("<h2>" + "New Count : " + session.getAttribute("count") + "</h2>");
		}
		session.setMaxInactiveInterval(5);

	}

}
