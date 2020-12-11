<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 우승자</h1>
	1등 : ${winner[0] }<p>
	2등 : ${winner[1] }<p>
	3등 : ${winner[2] }<p>
	
	<h1>전통표기 우승자</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String[] winner =(String[])request.getAttribute("winner");
		for(int i = 0; i<winner.length; i++){
			out.println((i+1)+"등 : "+winner[i]+"<p>");
		}
	%>
	
</body>
</html>