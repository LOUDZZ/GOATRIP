<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
 <link rel="stylesheet" type="text/css" href="bbs_style.css"/>
    <script src="https://kit.fontawesome.com/4e3712e9d5.js" crossorigin="anonymous"></script>
    <link rel = "stylesheet" href= "./bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
<%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String)session.getAttribute("userID");
      }
   %>


  <header id = "header">
    <nav id="navbar">
    <div class="navbar__logo">
      <a href="main.jsp">GOATRIP</a>
    </div>
      <ul class = "navbar__icon">
         <%
            if(userID == null) {
         %>
         <a href="login.jsp"><li id = "user__icon"><i class="fa-solid fa-user"></i></li></a>
         <%
            } else {
         %>
    	<li id = "user__icon"><a href = "logoutAction.jsp"><i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
         <%
            }
         %>
        <a href=""><li id = "language__icon"><i class="fa-solid fa-language"></i></li></a>
      </ul>
      <ul class = "navbar__menu">
      </ul>
</nav>
  </header>
  <div class = "container">
     <div class = "row">
	<form method="post" encType = "multipart" action="writeAction.jsp">
        <table class = "table table-striped" style = "text-align: center border: 1px solid #dddddd">
           <thead>
           <tr>
              <th colspan = "2" style = "background-color:#eeeeee; text-align:center;">게시판 글쓰기</th>
           </tr>
           </thead>
           <tbody>
              <tr>
               <td><input type = "text" class = "form-control" placeholder = "글 제목" name = "bbsTitle" maxlength = "50"></td>
            </tr>
            <tr>
               <td><textarea class = "form-control" placeholder = "글 내용" name = "bbsContent" maxlength = "2048" style = "height: 350px;"></textarea></td>
            </tr>
           </tbody>
        </table>
        <input type = "submit" class = "btn btn-primary pull-right" value = "글쓰기" style = "background-color:#000000; border:none;">
        </form>
     </div>
  </div>
    <div id = "bottom">
    </div>
</body>
</html>