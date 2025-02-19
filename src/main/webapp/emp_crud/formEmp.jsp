<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="inputEmp.jsp">
	<table>
		<tr>
			<td>empno</td><td><input type="text" name="empno"/></td>
		</tr>
		<tr>
			<td>ename</td><td><input type="text" name="ename"/></td>
		</tr>
		<tr>
			<td>job</td><td><input type="text" name="job"/></td>
		</tr>
		<tr>
			<td>mgr</td><td><input type="text" name="mgr"/></td>
		</tr>
		<tr>
			<td>hiredate</td><td><input type="text" name="hiredate" value="현재날짜 자동입력" readonly/></td>
		</tr>
		<tr>
			<td>sal</td><td><input type="text" name="sal"/></td>
		</tr>
		<tr>
			<td>comm</td><td><input type="text" name="comm"/></td>
		</tr>
		<tr>
			<td>deptno</td><td><input type="text" name="deptno"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"/></td>
		</tr>
	</table>
</form>
</body>
</html>