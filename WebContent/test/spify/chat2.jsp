<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Single+Day&family=Sunflower:wght@500&display=swap');
</style>
<style>
/* 	body{ */
/* 		text-align: center; */
/* 	} */
	img{
		border-radius: 50%;
	}
 	a{ 
 		color: white;
 		font-family: 'Single Day', cursive;
		font-family: 'Sunflower', sans-serif;
 	} 
 	a:link{
 		text-decoration: none;
 	}
 	a:hover{
 		color : orange;
 	}

</style>
</head>
<body>



<div id="1">
<a href="<%=request.getContextPath()%>/multichat/webSocketMutiChatting.jsp">
<img alt="" src="../../img/Jung2.jpg" width="80px"> 정창균 : 안뇽
</a>
</div>
<br><br>

<div id="1">
<a href="#">
<img alt="" src="../../img/Jung2.jpg" width="80px"> 정창균 : 안녕
</a>
</div>

</body>
</html>