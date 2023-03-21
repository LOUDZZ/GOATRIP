<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>    
<%@ page import = "BBS.BbsDAO" %>    
<%@ page import = "BBS.Bbs" %>     
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
      if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
      }
      int bbsID = 0;
      if(request.getParameter("bbsID") != null) {
    	  bbsID = Integer.parseInt(request.getParameter("bbsID"));
      }
      if (bbsID==0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
      }
      Bbs bbs = new BbsDAO().getBbs(bbsID);
      if (!userID.equals(bbs.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
      }
   %>


  <header id = "header">
    <nav id="navbar">
    <div class="navbar__logo">
      <a href="main.jsp">GOATRIP</a>
    </div>
      <ul class = "navbar__icon">
	<li id = "user__icon"><a href = "logoutAction.jsp"><i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
        <a href=""><li id = "language__icon"><i class="fa-solid fa-language"></i></li></a>
      </ul>
      <ul class = "navbar__menu">
      </ul>
</nav>
  </header>
  <div class = "container">
     <div class = "row">
        <form method = "post" action="updateAction.jsp?bbsID=<%=bbsID%>">
        <table class = "table table-striped" style = "text-align: center border: 1px solid #dddddd">
           <thead>
           <tr>
              <th colspan = "2" style = "background-color:#eeeeee; text-align:center;">게시판 글 수정 양식</th>

           </tr>
           </thead>
           <tbody>
              <tr>
               <td><input type = "text" class = "form-control" placeholder = "글 제목" name = "bbsTitle" maxlength = "50" value = "<%=bbs.getBbsTitle()%>"></td>
            </tr>
            <tr>
               <td><textarea class = "form-control" placeholder = "글 내용" name = "bbsContent" maxlength = "2048" style = "height: 350px;"><%=bbs.getBbsContent()%></textarea></td>
              </tr>
           </tbody>
        </table>
        <input type = "submit" class = "btn btn-primary pull-right" value = "글수정" style = "background-color:#000000; border:none;">
        </form>
     </div>
  </div>
    <div id = "bottom">
    </div>
</body>
</html>