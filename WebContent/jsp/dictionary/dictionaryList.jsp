<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div.list-group {
		position: fixed;
		margin-top: 100px;
		/* top: 30%; */
		right: 5%;
	}
</style>
</head>
<body>

<div class="list-group">
  <a href="#" class="list-group-item active">
       작은 메뉴창
  </a>
  <a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/search" class="list-group-item">강아지 검색</a>
  <a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/video" class="list-group-item">강아지 동영상</a>
</div>

</body>
</html>