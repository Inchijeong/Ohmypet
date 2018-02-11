<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<style>


div.main{
	border:2px solid skyblue;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	width: 58%;	
}

div.con{
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	width: 58%;	 
}

</style>
</head>

<body>
	<c:import url="/jsp/common/top.jsp" />
	 	
	<div class="main">
	<div class="con">
	최신영상<br>
	<c:forEach var="v" begin="0" end="2" items="${vlist}">
	<!-- <a href ="${pageContext.request.contextPath}/com/omp/photo/detail?no=${p.no}">
	<img src="${p.file_path}"  width="200px" height="200px"></a>-->
	<video controls width="200px" height="200px">
	<source src="http://192.168.0.28:8000/ohmypet/data/dictionary/upload<c:out value="${v.videoPath}" />/<c:out value="${v.videoSystemName}" />" >
	</video>
	</c:forEach>
	</div>
	
	<div class="con">
	사진<br>
	<c:forEach var="p" begin="0" end="2" items="${plist}">
	<a href ="${pageContext.request.contextPath}/com/omp/photo/detail?no=${p.no}"><img src="${p.file_path}"  width="200px" height="200px"></a>
	</c:forEach>
	</div>
	
	<div class="con">
	스토어<br>
	<c:forEach var="s" begin="0" end="2" items="${slist}">
	<a href ="${pageContext.request.contextPath}/shboard/detail?no=${s.no}"><img src = "${pageContext.request.contextPath}/store/download?path=${s.photoPath}&sname=${s.sname}&dname=${s.dname}" width="200px" height="200px"></a>
	</c:forEach>
	</div>
	</div>
</body>


</html>