package com.aurionpro.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/student")
public class student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public student() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> items=new ArrayList<>();
		items.add("rasika");
		items.add("tejas");
		items.add("krutika");
		items.add("abhishek");
		request.setAttribute("itemList", items);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("test.jsp");
		dispatcher.forward(request, response);
	}

}
