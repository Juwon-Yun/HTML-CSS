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
	request.setCharacterEncoding("utf-8");

	String mail = request.getParameter("email");
	String tel = request.getParameter("tel");
	String bir = request.getParameter("date");
	String num = request.getParameter("number");
	String rg = request.getParameter("range");
	%>

이메일 : <%=mail %><br>
<%="전화번호 : " + tel %> <br>
생년월일 : <%=bir %> <br>
Number : <%=num %><br>
Range : <%=rg %>
</body>
</html>