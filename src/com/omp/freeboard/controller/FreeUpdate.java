package com.omp.freeboard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omp.freeboard.dao.FreeBoardDAO;
import com.omp.freeboard.domain.FreeBoardDM;
import com.omp.freeboard.domain.FreeBoardFile;

@WebServlet("/com/omp/freeboard/controller/freeupdate")
public class FreeUpdate extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8"); 
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");  
		String content  = request.getParameter("content");
		String  pw = request.getParameter("pw");
		String filepath  = request.getParameter("filePath");
		
		FreeBoardDM dm = new FreeBoardDM();
	    dm.setNo(no);
	    dm.setTitle(title);
	    dm.setContent(content);
	    dm.setPw(pw);
	    dm.setFilePath(filepath);
	    
		FreeBoardDAO dao = new FreeBoardDAO();

         dao.updateBoard(dm);
		
		response.sendRedirect(request.getContextPath()+"/com/omp/freeboard/controller/freelist");
	
	}
  
	
	 
}
