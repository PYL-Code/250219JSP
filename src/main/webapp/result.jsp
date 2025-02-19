<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8"); //로그인 처리 할 때 이 코드들 사용
String str=request.getParameter("name"); 
%>
<%=1+2+3+4+5+6+7+8+9+10 %><br> 
<h2><%=str %></h2>
<%
out.println("<h2>" + str + "</h2>");
%>
</body>
</html>