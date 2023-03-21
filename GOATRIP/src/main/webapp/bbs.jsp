<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>    
<%@ page import = "BBS.BbsDAO" %>    
<%@ page import = "BBS.Bbs" %>    
<%@ page import = "java.util.ArrayList" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
 <link rel="stylesheet" type="text/css" href="bbs_style.css"/>
    <script src="https://kit.fontawesome.com/4e3712e9d5.js" crossorigin="anonymous"></script>
    <script defer src="outer.js"></script>
    <link rel = "stylesheet" href= "./bootstrap-3.3.7-dist/css/bootstrap.css">
	<style type = "text/css">
		a, a:hover {
			color:#000000;
			text-decoration: none;
		}
	</style>
</head>
<body>
   <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String)session.getAttribute("userID");
      }

      int pageNumber = 1;   
      if (request.getParameter("pageNumber") != null) {
         pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
        <table class = "table table-striped" style = "text-align: center border: 1px solid #dddddd">
           <thead>
           <tr>
              <th style = "background-color:#eeeeee; text-align:center;">번호</th>
              <th style = "background-color:#eeeeee; text-align:center;">제목</th>
              <th style = "background-color:#eeeeee; text-align:center;">작성자</th>
              <th style = "background-color:#eeeeee; text-align:center;">작성일</th>
           </tr>
           </thead>
           <tbody>
           <%
           	BbsDAO bbsDAO = new BbsDAO();
           	ArrayList<Bbs> list =bbsDAO.getList(pageNumber);
           	for(int i = 0; i < list.size(); i++) {
           %>
              <tr>
                 <td><%= list.get(i).getBbsID() %><td>
                 <td><a href = "view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>;") %></a><td>
                 <td><%= list.get(i).getUserID() %><td>
                 <td><%= list.get(i).getBbsDate().substring(0, 11)+list.get(i).getBbsDate().substring(11, 13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분" %><td>
              </tr>
              <%
           		}
              %>
           </tbody>
        </table>
        <%
        	if(pageNumber != 1) {
        %>
        	<a href = "bbs.jsp?pageNumber=<%=pageNumber - 1 %>" class = "btn btn-success btn-arraw-left" style = "background-color:#000000; border:none">이전</a>
        	<%
        		} if(bbsDAO.nextPage(pageNumber + 1)) {
        	%>
        	<a href = "bbs.jsp?pageNumber=<%=pageNumber + 1 %>" class = "btn btn-success btn-arraw-left" style = "background-color:#000000; border:none">다음</a>
        	<%
        		}
        	%>
        	<a href="write.jsp" class ="btn btn-primary pull-right" style = "background-color:#000000; border:none">글쓰기</a>
     </div>
  </div>
    <div id = "bottom">
    </div>
</body>
</html>