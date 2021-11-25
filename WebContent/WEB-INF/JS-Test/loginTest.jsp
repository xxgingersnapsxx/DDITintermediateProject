<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String idxStr = request.getParameter("idx");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Log in TEST</title>
  <link rel="stylesheet" href="../damanna/css/login.css">
  <script defer src="../login/login.js"></script>
  <script src="https://kit.fontawesome.com/20c5a1496b.js" crossorigin="anonymous"></script>
  <script type="text/javascript">
  	$(function () {
		$("#loginBtn").on("click", function () {
			// TODO JISU : 아직 로그인 하면 어디로 갈지 없음
			location.href="<%=request.getContextPath()%>/memberLogin.do"
			cnt = <%=request.getAttribute("loginRst")%>
		});
	});
  </script>
</head>
<body>

<div class="wrapper">
  
    <div class="container">
      <a href="#"><h1 id="title"><i class="fas fa-heartbeat"></i>Damanna</h1></a>

      <div class="login">Log In</div>
      
      <div class="login-form">
          <input type="text" placeholder="ID" class="input" name="login_id"><br />
          <input type="password" placeholder="Password" class="input"><br />
          <div class="btn" id="loginBtn">log in</div>
          <span><a href="#">I forgot my password.</a></span>
          
       </div>
       <div class="survey">
        <a href="signUp.html">sign up <i class="fas fa-arrow-right"></i></a>
      </div>
    </div>
  </div>



<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
 

</body>
</html>