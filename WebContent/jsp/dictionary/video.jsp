<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	body { padding-bottom: 70px; }
	p.video-nickname {
		font-size: 13;
		font-weight: bold;
		font: Currier New;
	}
	div.video-reg {
		float:right;
		margin-right:20%;
		margin-top: 30px;
	}
	div.row {
		float: left;
		margin-top: 20px;
		margin-left: 80px;
	}
	div.thumbnail {
		float: left;
		width: 520px;
		height: 670px;
		margin: 30px
	}
	video {
		width: 500px;
		height: 500px;
	}
	.video-title{
		margin-top: 70px;
		margin-left: 70px;
	}
</style>
</head>
<body>

	<c:import url="/jsp/common/top.jsp" />
	
	<c:import url="/jsp/dictionary/dictionaryList.jsp" />


    <h3 class="video-title"><a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/video">동영상</a></h3>
    
    <div class="video-reg">
	<form action="${pageContext.request.contextPath}/com/omp/dictionary/controller/regVideo">
        <button class="btn btn-success">등록</button>
	</form>
	</div>

<div class="row">
  <div class="video-border">
    <c:if test="${videoList != null}">
      <c:forEach var="video" items="${videoList}">
        <div class="thumbnail">
          <div class="video-video">
            <video controls>
              <source src="${pageContext.request.contextPath}/com/omp/dictionary/util/download?path=${video.videoPath}&sname=${video.videoSystemName}&dname=${video.videoOrgName}" /> 
            </video>
          </div>  
          <div class="caption">
            <h3><c:out value="${video.no}" />.<c:out value="${video.title}" /></h3>
            <p class="video-nickname">닉네임 : <c:out value="${video.nick_name}" /></p>
            <p>
              <a href="${pageContext.request.contextPath}/com/omp/dictionary/util/download?path=<c:out value="${video.videoPath}" />&sname=<c:out value="${video.videoSystemName}" />&dname=<c:out value="${video.videoOrgName}" />" class="btn btn-primary" role="button">다운로드</a>
              <c:if test="${user.nick_name eq video.nick_name or user.nick_name eq 'admin' }">
                <a href="${pageContext.request.contextPath}/com/omp/dictionary/controller/videoDelete?no=<c:out value="${video.no}" />" class="btn btn-default" role="button">삭제</a>
              </c:if>
            </p>
          </div>
        </div>
      </c:forEach>
    </c:if>
  </div>
</div>
	
</body>
</html>