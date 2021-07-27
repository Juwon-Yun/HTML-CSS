<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- lit : 안에서 자바문장을 작성할 수 있다. --!>
<!-- String varName = request.getParameter(name);
	 (변수이름)에 name값을 저장할 수 있다. -->
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
아이디는 <%=id%> <br>
비밀번호는 <%=pw %> 입니다
</body>
</html>