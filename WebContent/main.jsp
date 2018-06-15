<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("id");

	if (id == null) {
		// 로그인 페이지로 보내기
		response.sendRedirect("controller.jsp?mode=login");
		// 자바스크립트로 location.href 를 써도 됨.
	} else {
		// 현재 페이지를 보여 주기
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>main.jsp</title>
</head>
<body>
<div class="container">
<h1>메인 페이지에 오신 것을 환영합니다.</h1>
<br>
<h3><b><%=id %></b>님 안녕하세요.<br></h3>


<br><a href="controller.jsp?mode=logout">로그아웃</a><br><br>

<button class="btn btn-primary" onclick="location.href='controller.jsp?mode=start'">게임 시작</button>
</div>
</body>
</html>