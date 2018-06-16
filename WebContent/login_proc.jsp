<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 원래는 DB정보의 user 테이블에서 id/pw 를 받아서 비교
    	// 그러나 우리는 임시로 우리가 만들어요.
    	String dbId = "aaa";    // 임시 ID
    	String dbPw = "1111";   // 임시 PW
    	// 넘어오는 userid 와 userpw를 받아서 로그인 처리
    	String userid = request.getParameter("id");
    	String userpw = request.getParameter("pswd");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
	function login_page(){
		alert("로그인 페이지로 이동 합니다.");
		location.href = "controller.jsp?mode=login";
	}
	function main_page(){
		alert("반갑습니다. 고갱님. 메인으로 갈께요.");
		location.href = "controller.jsp?mode=main";
	}
</script>
</head>
<body>
<div class="container">
로그인이 되게 해주세요.<br>
제 아이디는 <%=userid %> 이고요<br>
제 패스워드는 <%=userpw %> 이에요.<br>
아이디 패스워드가 맞는지 틀렸는지 알려주세요<br>
<%
	// 만약에 설정된 임시 ID와 PW 가 맞다면 맞아요!!
	// 틀리면 틀려요!! 똑바로 입력 하세요를 출력
	// if 문을 작성해서 만들어 봅시다!!
	if (dbId.equals(userid) && dbPw.equals(userpw)) {
		session.setAttribute("id", userid);	
	%>
	    <div class="alert alert-success">
        <strong>로그인 성공!</strong>아이디와 패스워드가 맞아요!
  		</div>
  		<script> setTimeout("main_page()", 2000); </script>
	<% } else { %>
	    <div class="alert alert-danger">
        <strong>로그인 실패!</strong>알려줘도 틀리냐!
  		</div>
  		<script> setTimeout("login_page()", 2000);	
  				//location.href="controller.jsp?mode=login";
  		</script>
  		
	<% } %>
</div>
</body>
</html>