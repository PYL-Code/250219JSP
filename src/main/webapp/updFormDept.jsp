<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/spring5fs";
String sql = "select * from dept where deptno=" + request.getParameter("deptno");
int deptno=0;
String dname="";
String loc="";
try(Connection conn = DriverManager.getConnection(url, "root", "1234");
		Statement stmt = conn.createStatement();
		ResultSet rset = stmt.executeQuery(sql);
		){
	if(rset.next()){
		deptno = rset.getInt("deptno");
		dname = rset.getString("dname");
		loc = rset.getString("loc");
		//System.out.println(deptno + ", " + dname + ", " + loc);
	}
}catch (Exception e){
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dept 수정</title>
</head>
<body>
<form action="updateDept.jsp" >
<label><h4>dept 수정</h4></label>
<table>
	<tr>
		<td>번호</td><td><input type="text" name="deptno" value="<%=deptno %>" readonly/></td>
	</tr>
	<tr>
		<td>부서</td><td><input type="text" name="dname" value="<%=dname %>"/></td>
	</tr>
	<tr>
		<td>도시</td><td><input type="text" name="loc" value="<%=loc %>"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="수정"/></td>
	</tr>
</table>
</form>
</body>
</html>