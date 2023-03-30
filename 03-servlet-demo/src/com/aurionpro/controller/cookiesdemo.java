package com.aurionpro.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cookiesdemo")
public class cookiesdemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public cookiesdemo() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Cookie[] cookies = request.getCookies();
		int count = 0;
		boolean flag = false;
		if (cookies != null) {
			for (Cookie x : cookies) {
				if (x.getName().equals("counter")) {
					flag = true;
					count = Integer.parseInt(x.getValue());
					count = count + 1;
					Cookie cookie = new Cookie("counter", Integer.toString(count));
					response.addCookie(cookie);
				}
			}
		}
		if (flag == false) {
			Cookie cookie = new Cookie("counter", Integer.toString(count));
			response.addCookie(cookie);

		}
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1>old value:" + count);
		out.println("<h1>new value:" + (count + 1));
	

	}

}
