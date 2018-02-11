<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	div.history-b {
		float:right;
		margin-right:20%;
		margin-top: 70px;
	}
	div.detail {
		float:left;
		margin-top: 50px;
		margin-left: 100px;
	}
	textarea.detail {
		font-size: 30px;
	}
	.edit-title{
		margin-top: 70px;
		margin-left: 70px;
	}
</style>
</head>
<body>

<%
	if(session.getAttribute("user") == null){
		request.setAttribute("error", "로그인이 필요한 항목입니다");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/css/login.jsp");
		rd.forward(request, response);
	}
%>

	<c:import url="/jsp/common/top.jsp" />

	<div class="edit-title">
		<c:import url="/jsp/dictionary/dictionaryList.jsp" />

    <h3>
    	<a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/dictionaryEdit?dogName=<c:out value="${dogName}" />">
    	'<c:out value="${dogName}" />' 편집
    	</a>
    </h3>
    <h1><c:out value="${dogName}" /></h1>
	</div>    
    
    <div class="dic-body">
    <div class="history-b">
    <form action="${pageContext.request.contextPath}/com/omp/dictionary/controller/history">
    	<input type="hidden" value="${dogName}" name="dogName">
        <button class="btn btn-primary">
           	 역사보기
        </button>
    </form>
    </div>
    
    <div></div>
    
    <div class="detail">
    <form method="post" action="${pageContext.request.contextPath}/com/omp/dictionary/controller/modDictionary">
        <input type="hidden" value="${dogName}" name="dogName">
        <div>
  	    <textarea class="detail" rows="7" cols="50" name="detail"><c:out value="${dog.detail}" /></textarea>
        </div><br>
        <div>
        <button class="btn btn-default">
        	수정 완료
        </button>
        </div>
    </form>
    </div>
    </div>
</body>
</html>