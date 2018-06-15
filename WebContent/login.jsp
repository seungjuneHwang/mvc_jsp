<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>login.jsp</title>
</head>
<body>

<div class="container">
  <h2>로그인 페이지</h2>
  <form action="controller.jsp?mode=login_proc" method="post">
    <div class="form-group">
      <label for="id">아이디:</label>
      <input type="text" class="form-control" id="id" placeholder="korea 입력" name="id">
    </div>
    <div class="form-group">
      <label for="pwd">패스워드:</label>
      <input type="password" class="form-control" id="pwd" placeholder="1234 입력" name="pswd">
    </div>
    <button type="submit" class="btn btn-primary">로그인</button>
  </form>
</div>
</body>
</html>