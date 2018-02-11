package com.omp.css.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omp.css.dao.QuestionDAO;
import com.omp.css.domain.QuestionDM;

@WebServlet("/com/omp/css/controller/questionanswersave")
public class QuestionAnswerSave extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("답변완료 체크 하기 실험중");
		int no = Integer.parseInt(request.getParameter("no"));
		
		QuestionDAO dao = new QuestionDAO();
		QuestionDM question = dao.selectQuestionByNo(no);
		String answer_content = request.getParameter("answer_content");
		String title = question.getTitle()+"   (답변완료)";
		question.setAnswer_content(answer_content);
		question.setTitle(title);
		System.out.println(question.getTitle());
		
		dao.questionAnswer(question);
		
		
		response.sendRedirect("/ohmypet/com/omp/css/controller/cssselect");
	}
	

}
