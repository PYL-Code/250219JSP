<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String empno= request.getParameter("empno");
String url = "jdbc:mysql://localhost:3306/spring5fs";
String sql = "select * from emp where empno =" + empno;

String ename = "";
String job = "";
int mgr=0;
int sal=0;
int comm=0;
int deptno=0;
try(Connection conn = DriverManager.getConnection(url, "root", "1234");
		Statement stmt = conn.createStatement();
		ResultSet rset = stmt.executeQuery(sql);
		){
	if(rset.next()){
		empno = rset.getString("empno");
		ename = rset.getString("ename");
		job = rset.getString("job");
		mgr = rset.getInt("mgr");
		sal = rset.getInt("sal");
		comm = rset.getInt("comm");
		deptno = rset.getInt("deptno");
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
<title>Insert title here</title>
</head>
<body>
<form action="updateEmp.jsp">
	<table>
		<tr>
			<td>empno</td><td><input type="text" name="empno" value="<%=empno %>" readonly/></td>
		</tr>
		<tr>
			<td>ename</td><td><input type="text" name="ename" value="<%=ename %>" /></td>
		</tr>
		<tr>
			<td>job</td><td><input type="text" name="job" value="<%=job %>" /></td>
		</tr>
		<tr>
			<td>mgr</td><td><input type="text" name="mgr" value="<%=mgr %>" /></td>
		</tr>
		<tr>
			<td>hiredate</td><td><input type="text" name="hiredate" value="현재날짜 자동입력" readonly /></td>
		</tr>
		<tr>
			<td>sal</td><td><input type="text" name="sal" value="<%=sal %>" /></td>
		</tr>
		<tr>
			<td>comm</td><td><input type="text" name="comm" value="<%=comm %>" /></td>
		</tr>
		<tr>
			<td>deptno</td><td><input type="text" name="deptno" value="<%=deptno %>" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"/></td>
		</tr>
	</table>
</form>
</body>
</html>