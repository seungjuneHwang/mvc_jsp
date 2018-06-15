<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	// 세션 제거 (로그인 상태를 지움)
	session.removeAttribute("id");
%>
<script>
	location.href="controller.jsp?mode=login";
</script>
</body>
</html>