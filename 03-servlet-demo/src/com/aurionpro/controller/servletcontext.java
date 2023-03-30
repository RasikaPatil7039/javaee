package com.aurionpro.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servletcontext")
public class servletcontext extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public servletcontext() {
        super();
        // TODO Auto-generated constructor stub
    }

    int old = 1;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		ServletContext application=getServletContext(); 
		application.setAttribute("count", old);
		
		if (application.getAttribute("count") != null) {
			out.println(("<h2>" + "Old Count : " + application.getAttribute("count") + "</h2>"));
			old++;
			application.setAttribute("count", old);
			out.println("<h2>" + "New Count : " + application.getAttribute("count") + "</h2>");
		}
		
	}

	

}
