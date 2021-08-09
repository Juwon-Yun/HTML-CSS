<%@page import="java.util.Map"%>
<%@page import="kr.or.ddit.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    td{
        width: 200px;
        height: 30px;
        text-align: center;
        padding: 5px;
    }
</style>
</head>
<body>
    <h2>JSP : Java Server Page</h2>
    요청시 클라이언트가 보내는 데이터를 받아서 처리(jsp가 controller 역할 수행)<br>
    자바 문장과 html 문장을 혼합하여 사용가능<br>
    자바 문장을 기술할 때 let 기호 사용 &lt; % %><br>
    자바 변수를 출력할 때 &lt;%= %><br>

<% 
    //데이터 값 받은 - name
    String userName = request.getParameter("name");
    
    //서비스 객체 얻기
    //controller -> service -> Dao -> sql문 실행 결과 값 받아오기
    //sql결과값을 Dao -> service전달 -> controller(jsp) 전달 -> jsp에서 결과 출력
	MemberService service = MemberService.getInstance();
    
    //서비스 메소드 호출하여 결과 값 리턴 받음
    Map<String, Object> map = service.selectMemberOne(userName);
    
    //Map 타입을 String 으로 캐스팅
    String id = (String)map.get("id");
    String name = (String)map.get("name");
    String hp = (String)map.get("hp");
    String mail = (String)map.get("mail");
	
    
%>
    <table border="1">
        <tr>
            <td>아이디</td>
            <td>이름</td>
            <td>핸드폰</td>
            <td>이메일</td>
        </tr>

        <tr>
            <td><%=id %></td>
            <td><%=name %></td>
            <td><%=hp %></td>
            <td><%=mail %></td>
        </tr>

    </table>

</body>
</html>