<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/outstyle.css">
</head>
<body>
	<h3> JSP : Java Server Page</h3>
<pre>
	클라이언트 요청시 데이터를 받아서 처리하고 결과 값을 출력하는 페이지
	
	post요청 시 한글 처리는 꼭 해야 함
	=> request.setCharacterEncoding("utf-8")
	
	let(&lt;% %&gt;) 안쪽에 기술하는 부분은
	서버내에서 실행(back-end)되고, 결과만 클라이언트로 응답한다
</pre>

<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String gder = request.getParameter("gender");
	String hd = request.getParameter("hidden");
	String file = request.getParameter("file");
	String [] fd = request.getParameterValues("food");

	String food = "";
	for(int i=0; i < fd.length; i++){
		food += fd[i] + " ";
	}
%>

<%=name %>님 환영합니다 <br>
당신의 성별은 <%=gder %>이군요!! <br>
당신이 좋아하는 음식은<%=food %>이네요~ <br>

<%=hd %>
<%=file %>을 전송하였습니다.
</body>
</html>