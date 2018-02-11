package com.omp.common.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omp.dictionary.dao.VideoDAO;
import com.omp.dictionary.domain.VideoDM;
import com.omp.photo.dao.PhotoBoardDAO;
import com.omp.photo.domain.PhotoBoardDM;
import com.omp.store.dao.ShBoardDAO;
import com.omp.store.domain.ShBoardDM;

@WebServlet("/main")
public class main extends HttpServlet{
	@Override	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShBoardDAO sdao = new ShBoardDAO();
		PhotoBoardDAO pdao = new PhotoBoardDAO();
		VideoDAO vdao = new VideoDAO();
		
		List<ShBoardDM> slist = sdao.ShBoardList();
		List<PhotoBoardDM> plist = pdao.selectPhotoList();
		List<VideoDM> vlist = vdao.videoList();
		

		request.setAttribute("slist", slist);
		request.setAttribute("plist", plist);
		request.setAttribute("vlist", vlist);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/common/main.jsp");
		
		rd.forward(request, response);
	}
	
}
