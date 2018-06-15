<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	// 임시 ID 패스워드
	String tmpID = "korea";
	String tmpPW = "1234";
	
	String site = "controller.jsp?mode=login";
	// 아이디 패스워드가 넘어 오는데 받아 줘야 되죠?
	// 한글 처리를 위해 UTF-8
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pswd = request.getParameter("pswd");
	
	// 사용자의 입력값ID, PW를 받아서 내가 정한 ID 패스 워드와 비교
	// 맞으면 메인으로 틀리면 틀렸다고 알림 주고 로그인 페이지로
	// 실제 서비스는 DB에 있는 ID, PW를 가져 와서 비교
	if (tmpID.equals(id) && tmpPW.equals(pswd)) {
		// 메인으로
		site = "controller.jsp?mode=main";
		// 로그인 유지도 시키고 ID값을 넘기기 위해서
		// 세션에 ID를 저장
		session.setAttribute("id", id);
		response.sendRedirect(site);
	} else {
		// 로그인 페이지로
%>
	<script>
		alert("아이디 패스워드를 확인 하세요.");
		location.href="controller.jsp?mode=login";
	</script>
<%
	}
	
	// 페이지 이동
// 	RequestDispatcher dis = request.getRequestDispatcher(site);
// 	dis.forward(request, response);
	
%>
</html>	

