<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "BBS.Bbs" %>    
<%@ page import = "BBS.BbsDAO" %>    
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
   %>


  <header id = "header">
    <nav id="navbar">
    <div class="navbar__logo">
      <a href="#">GOATRIP</a>
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
        <table class = "table table-striped" >
           <thead>
           <tr>
              <th colspan = "3" style = "background-color:#eeeeee; text-align:center;">게시판 글 보기</th>
           </tr>
           </thead>
           <tbody>
             <tr>
               <td style = "width: 20%; text-align:center;">글 제목</td>
               <td colspan = "2" style = "text-align:center;"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>;")%></td>
            </tr>
            <tr>
               <td style = "text-align:center;">작성자</td>
               <td colspan = "2" style = "text-align:center;"><%= bbs.getUserID()%></td>
            </tr>
            <tr>
               <td style= "text-align:center;">작성일자</td>
               <td colspan = "2" style= "text-align:center;"><%= bbs.getBbsDate().substring(0, 11)+bbs.getBbsDate().substring(11, 13)+"시"+bbs.getBbsDate().substring(14,16)+"분"%></td>
            </tr>
            <tr>
               <td style= "text-align:center;">내용</td>
               <td colspan = "2" style= "height:200px; text-align:left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>;")%></td>
            </tr>
           </tbody>
        </table>
        <a href = "bbs.jsp" class = "btn btn-primary" style = "background-color:black; border:none;">목록</a>
      	<%
      		if(userID != null && userID.equals(bbs.getUserID())) {
      	%>
      		<a href = "update.jsp?bbsID=<%=bbsID%>" class = "btn btn-primary" style = "background-color:black; border:none;">수정</a>
      		<a onclick = "return confirm('정말로 삭제하시겠습니까?')" href = "deleteAction.jsp?bbsID=<%=bbsID%>" class = "btn btn-primary" style = "background-color:black; border:none;">삭제</a>
      	<% 		
      		}
      	%> 
     </div>
  </div>
    <div id = "bottom">
    </div>
</body>
</html>