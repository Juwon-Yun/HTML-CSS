<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   request.setCharacterEncoding("utf-8");
   
   //요청데이터 - id, pw
   String uId = request.getParameter("id");
   String uPw = request.getParameter("pw");
   
   //요청데이터로 db를 조회해 회원여부를 체크한 후 결과값을 받았다고 가정
   String ls = "0";
   
   if( ls.equals("0") ){
	
	%>
	   <%-- // 회원이 맞으므로 로그인에 성공 --%>
	   {
	   	   "cd" : "true",
		   "sw" : "로그인 성공",
		   "id"  : "<%=uId %>",
		   "pw" : "<%=uPw %>"
 	   }
  <%
   }else{
 %>	   
	 <%--   // 회원이 아니므로 로그인 실패 --%>
	   {
	   	   "cd" : "false",
		   "sw" : "로그인 실패"
 	   }
 <%		   
   }
   %>