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

	String nm = request.getParameter("name");
	String tel = request.getParameter("tel");
	String area = request.getParameter("ttarea");
	String [] cs = request.getParameterValues("cars");

	area = area.replaceAll("\r","").replaceAll("\n","<br>");
	
	String cars = "";
	for(int i=0; i < cs.length; i++){
		cars += cs[i] + " ";
	}
	
%>

<%="이름 : " + nm %> <br>
전화번호 : <%=tel %> <br>
<%=area %> <br>
<%=cars %>

</body>
</html>