package com.omp.common.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omp.common.dao.MembershipDAO;
import com.omp.common.domain.LoginDM;
import com.omp.common.domain.MembershipDM;
import com.sun.org.apache.bcel.internal.generic.ArrayType;

@WebServlet("/com/omp/common/controller/memberinfoselect")
public class MemberInfoSelect extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("개인정보 수정 서블릿 호출");
		
		HttpSession session = request.getSession();
		LoginDM user = (LoginDM)session.getAttribute("user");
		String id = user.getId();
		MembershipDAO dao = new MembershipDAO();
		MembershipDM member = dao.selectMembershipById(id);
		System.out.println(member.getPhon_number());
		String phon [] = member.getPhon_number().split(" ");
		System.out.println(Arrays.toString(phon));
		request.setAttribute("phon", phon);
		request.setAttribute("member", member);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/css/memberinfoupdate.jsp");
		rd.forward(request, response);
		
	}
	

}
