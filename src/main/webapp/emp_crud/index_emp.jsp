<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/spring5fs";
String sql = "select * from emp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp curd</title>
</head>
<body>
<a href="formEmp.jsp">emp 입력</a>
<table border="1">
<tr>
	<th>empno/수정</th>
	<th>ename</th>
	<th>job</th>
	<th>mgr</th>
	<th>hiredate</th>
	<th>sal</th>
	<th>comm</th>
	<th>deptno</th>
	<th>삭제</th>
</tr>
<%
try(
	Connection conn = DriverManager.getConnection(url, "root", "1234");
	Statement stmt = conn.createStatement();
	ResultSet rset = stmt.executeQuery(sql);
		){
	while(rset.next()){
	%>
	<tr>
		<td><a href="updFormEmp.jsp?empno=<%=rset.getString("empno") %>"><%=rset.getString("empno") %></a></td>
		<td><%=rset.getString("ename") %></td>
		<td><%=rset.getString("job") %></td>
		<td><%=rset.getString("mgr") %></td>
		<td><%=rset.getString("hiredate") %></td>
		<td><%=rset.getString("sal") %></td>
		<td><%=rset.getString("comm") %></td>
		<td><%=rset.getString("deptno") %></td>
		<td><a href="deleteEmp.jsp?empno=<%=rset.getString("empno") %>">삭제</a></td>
	</tr>
	<%
	}
}catch(Exception e) {
	e.printStackTrace();
}
%>
</table>
</body>
</html>