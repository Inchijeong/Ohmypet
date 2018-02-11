<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // author : Inchijeong %>    
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
<style type="text/css">
	div.container {
		float: left;
		width: 600px;
		margin-left: 50px;
		margin-top: 100px;
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
	
	<c:import url="/jsp/dictionary/dictionaryList.jsp" />

	<h3><a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/regVideo">동영상 등록</a></h3>
	<div class="container">
		<form action="${pageContext.request.contextPath}/com/omp/dictionary/controller/insertVideo"
		      method="post" enctype="multiPart/form-data">
			<div class="form-group">
			  <label for="exampleInputEmail1">제목</label>
			  <input type="text" name="title" class="form-control" placeholder="title">
			</div>
			
			<div class="form-group">
			  <label for="exampleInputFile">파일 업로드</label>
			  <input type="file" id="exampleInputFile" name="attachFile">
			</div>	      
			<button class="btn btn-default">등록완료</button>
		</form>
	</div>
	
    
</body>
</html>