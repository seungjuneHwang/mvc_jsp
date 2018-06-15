<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 한글 처리
	request.setCharacterEncoding("UTF-8");
	// 컨트롤러(MVC중 C)로 넘어오는 데이터(mode)를 받아서 처리 
	String mode = request.getParameter("mode");
	// mode를 통해 분기를 시킴
	// 메인이냐 로그인 페이지냐(로그인 페이지) 회원가입까지 보내기
	// 이런 일들을 컨트롤러가 받아서 뷰(MVC 중 V) 로 전달(페이지 띄우기)
	String site = "";   // 이동 시킬 페이지(*.jsp) 
	switch(mode) {
	case "main":
		// 어떻게 해라
		// 메인 페이지 보여주기
		System.out.println("메인 페이지");
		site = "main.jsp";
		break;
	case "login":
		// 어떻게 해라
		// 로그인 페이지 보여주기
		System.out.println("로그인 페이지");
		site = "login.jsp";
		break;
	case "login_proc":
		System.out.println("로그인 처리 페이지");
		site = "login_proc.jsp";
		break;
	case "logout":
		System.out.println("로그아웃 처리");
		site = "logout.jsp";
		break;
	case "start":
		System.out.println("게임 시작");
		site = "게임시작";
		break;
	}
	
	// 위와 같이 스위치문을 써도 되고 if 문을 써도 됨.
	if (mode.equals("main")) {
		// 메인 페이지 보여주기
	} else if (mode.equals("login")) {
		// 로그인 페이지 보여주기
	}
	
	// 페이지 이동
	RequestDispatcher dis = request.getRequestDispatcher(site);
	dis.forward(request, response);
	
	
	
%>