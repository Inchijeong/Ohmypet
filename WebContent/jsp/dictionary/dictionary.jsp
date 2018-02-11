<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>
	div.edit-b {
		float:right;
		margin-right:20%; 
		margin-top: 80px;
	}
	div.history-b {
		float:right;
		margin-top: 80px;
	}
	div.detail {
		float:left;
		margin-top: 10%;
		margin-left: 100px;
		font-size: 30px;
	}
	#search-title {
		margin-top: 70px;
		margin-left: 70px;
	}
	img{
		float: right;
		width: 250px;
		height: 250px;
		margin-right: 230px;
		margin-top: 50px;
	}
</style>
</head>
<body>
	<c:import url="/jsp/common/top.jsp" />

	<c:import url="/jsp/dictionary/dictionaryList.jsp" />

    <h3 id="search-title"><a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/dictionary?dogName=<c:out value="${dogName}" />">
        '<c:out value="${dogName}" />' 상세 정보</a></h3>
    
    

    
    <div class="edit-b">    
    <form action="${pageContext.request.contextPath}/com/omp/dictionary/controller/dictionaryEdit">
    	<input type="hidden" value="${dogName}" name="dogName">
        <button class="btn btn-warning">편집</button>
    </form>
    </div>
    
    <div class="history-b">
    <form action="${pageContext.request.contextPath}/com/omp/dictionary/controller/history">
    	<input type="hidden" value="${dogName}" name="dogName">
        <button class="btn btn-primary">
                  역사보기
        </button>
    </form>
    </div>
    
    <div class="detail">
        <div class="dic-body">
			    <div><h1><c:out value="${dogName}" /></h1></div><br>
					원산지 : <c:out value="${dog.origin}" /><br>
					크기 : <c:out value="${dog.dogSize}" /><br>
					색상 : <c:out value="${dog.color}" /><br>
					버전 : v<c:out value="${dog.version/10+1}" /><br>
					설명 : ${dog.detail}<br>
				</div>
		</div>
				<img src="${pageContext.request.contextPath}/data/dictionary/푸들.jpg"></img>	
</body>
</html>