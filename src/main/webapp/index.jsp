<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/spring5fs";
String sql = "select * from dept";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dept 내용</title>
</head>
<body>
<a href="formDept.jsp">dept 입력</a>
<table border="1">
<%
try(Connection conn = DriverManager.getConnection(url, "root", "1234");
		Statement stmt = conn.createStatement();
		ResultSet rset = stmt.executeQuery(sql);
		){
	while(rset.next()){
%>
<tr>
	<td><a href="updFormDept.jsp?deptno=<%=rset.getString("deptno") %>"><%=rset.getString("deptno") %></a></td>
	<td><%=rset.getString("dname") %></td>
	<td><%=rset.getString("loc") %></td>
	<td><a href="deleteDept.jsp?deptno=<%=rset.getString("deptno") %>">삭제</a></td>
</tr>
<%
	}
}catch (Exception e){
	e.printStackTrace();
}
%>
</table>
</body>
</html>