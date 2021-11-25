<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>File Upload</h1>
	<form action="<%=request.getContextPath() %>/fileUpload.do" method="post" enctype="multipart/form-data">
		ID : <input	type="text" name="memid"><br><br>
		profile1 : <input type="file" name="uploadFile1"><br><br>
		profile2 : <input type="file" name="uploadFile2"><br><br>
		<input type="submit" value="파일Upload">
	</form>
	<br><hr><br>
	<a href="<%= request.getContextPath() %>/uploadFileList.do">전체 Upload파일 보기</a>
</body>
</html>