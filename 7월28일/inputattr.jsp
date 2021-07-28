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
    request.setCharacterEncoding("UTF-8");

    String nm = request.getParameter("name");
    String id = request.getParameter("id");
    String tel = request.getParameter("tel");
    String mail = request.getParameter("email");
    String addr = request.getParameter("addr");
    
%>

<%=nm %>, <%=id %>, <%=nm %>, <%=tel %>, <%=mail %>, <%=addr %>

</body>
</html>