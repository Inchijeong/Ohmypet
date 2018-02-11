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

@WebServlet("/com/omp/photo/mod")
public class PhotoModController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("모드에 들어옴");
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String category_val = request.getParameter("category_val");
		String file_path = request.getParameter("file_path");
		String file_sys_name = request.getParameter("file_sys_name");
		String file_org_name = request.getParameter("file_org_name");
		String content = request.getParameter("content");
		int password = Integer.parseInt(request.getParameter("password"));
		
		System.out.println("no: "+no);
		System.out.println("title: "+title);
		System.out.println("category_val: "+category_val);
		System.out.println("file_path"+file_path);
		System.out.println("file_org_name: "+file_org_name);
		System.out.println("content: "+content);
		System.out.println("password: "+password);
		
		
		PhotoBoardDM dm = new PhotoBoardDM();
		dm.setNo(no);
		dm.setFile_org_name(file_org_name);
//		dm.setFile_sys_name(file_sys_name);
		dm.setTitle(title);
		dm.setCategory_val(Integer.parseInt(category_val));
		dm.setFile_path(file_path);
		dm.setContent(content);
		dm.setPassword(password);
		
		//파일 경로  <img src="a.jpg" width="200px" height = "150px">
		
		PhotoBoardDAO dao = new PhotoBoardDAO();
		dao.updatePhotoBoard(dm);
		System.out.println("수정 완료 from mod서블릿");
		response.sendRedirect("/ohmypet/com/omp/photo/list");
		
		
		/*PhotoBoardDAO dao = new PhotoBoardDAO();
		PhotoBoardDM dm = dao.selectPhotoDetail(no);
		
		request.setAttribute("updatecheck", "true");
		request.setAttribute("dm", dm);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/photo/photoupdate.jsp");
		rd.forward(request, response);*/
	}
	
	
}
