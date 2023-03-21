<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="login_style.css"/>
    <script src="https://kit.fontawesome.com/4e3712e9d5.js" crossorigin="anonymous"></script>
	<script defer src = "outer.js"></script>
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
        <button class="navbar__toggle-btn">
            <i class="fas fa-bars"></i>
        </button>
        </nav>
    </header>
    <div id = "main">
      <form method = "post" action="loginAction.jsp">
        <div id = "login__box">
          <div id = "login__text">로그인</div>
          <div id = "id__text">아이디</div>
          <input id = "login__id" type="text" name = "userID" maxlength = "20">
          <div id = "password__text">비밀번호</div>
          <input id = "login__password" type="password" name = "userPassword" maxlength = "20">
          <input id = "login__submit" type="submit" value="로그인">
          <div id = "sigin__box"><a href="join.jsp">회원가입</a></div>
      </div>
      </form>
    </div>
    <div id = "bottom">
    </div>
</body>
</html>
