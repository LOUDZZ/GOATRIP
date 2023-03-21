<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="join_style.css"/>
    <script src="https://kit.fontawesome.com/4e3712e9d5.js" crossorigin="anonymous"></script>
</head>
<body>
  <header id = "header">
        <nav id="navbar">
        <div class="navbar__logo">
          <a href="main.jsp">GOATRIP</a>
        </div>
          <ul class = "navbar__icon">
            <a href="login.jsp"><li id = "user__icon"><i class="fa-solid fa-user"></i></li></a>
            <a href="#"><li id = "language__icon"><i class="fa-solid fa-language"></i></li></a>
          </ul>
          <ul class = "navbar__menu">
          </ul>
        </nav>
    </header>
    <div id = "main">
      <form method = "post" action="joinAction.jsp">
        <div id = "join__box">
          <div id = "join__text">회원가입</div>
          <div id = "id__text">아이디</div>
          <input id = "join__id" type="text" name = "userID">
          <div id = "password__text">비밀번호</div>
          <input id = "join__password" type="password" name = "userPassword">
          <div id = "name__text">이름</div>
          <input id = "join__name" type="text" name = "userName">
          <div id = "email__text">이메일</div>
          <input id = "join__email" type="text" name = "userEmail">
          <input id = "join__submit" type="submit" value="회원가입">
      </div>
      </form>
    </div>
    <div id = "bottom">
    </div>
</body>
</html>
