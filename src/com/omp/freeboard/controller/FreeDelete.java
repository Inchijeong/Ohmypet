package com.omp.freeboard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omp.freeboard.dao.FreeBoardDAO;
@WebServlet("/com/omp/freeboard/controller/freedelete")
public class FreeDelete extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("어이가 없네");
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println(no);
		FreeBoardDAO dao = new FreeBoardDAO();
		
	     dao.deleteBoard(no);
   
	     response.sendRedirect(request.getContextPath()+"/com/omp/freeboard/controller/freelist");
		
		
	}
    
}
