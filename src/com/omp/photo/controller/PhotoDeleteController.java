package com.omp.photo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omp.photo.dao.PhotoBoardDAO;
import com.omp.photo.domain.PhotoBoardDM;

@WebServlet("/com/omp/photo/delete")
public class PhotoDeleteController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		int no = Integer.parseInt(request.getParameter("no"));		
		
		PhotoBoardDAO dao = new PhotoBoardDAO();
		dao.deletePhotoBoard(no);
		
		RequestDispatcher rd = request.getRequestDispatcher("/com/omp/photo/list");
		rd.forward(request, response);
	}
	
}
