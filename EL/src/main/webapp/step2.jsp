<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.MemberVO, java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
1.scriptlet로 회원정보 출력하기 
<% MemberVO vo=(MemberVO)session.getAttribute("mvo"); %>
아이디 : <%=vo.getId() %> 이름 :<%=vo.getName() %> 주소 :<%=vo.getAddress()%>

2.EL출력 
아이디 : ${sessionScope.mvo.id }  이름 : ${sessionScope.mvo.name } 주소 : ${sessionScope.mvo.address }

3.배열출력
<% String[]names=(String[])session.getAttribute("names");%>
 <%=names[0]%>, <%=names[1]%> ,<%=names[2]%>
 <br>
4.배열을 EL로 출력 
${sessionScope.name[0] },${sessionScope.name[1]},${sessionScope.name[2]} 

<%
HashMap map = (HashMap)session.getAttribute("memMap"); 
MemberVO vo1=(MemberVO)map.get("mem1");
MemberVO vo2=(MemberVO)map.get("mem2");
%>

map key : mem1 정보  이름 :<%=vo1.getName() %> 주소 :<%=vo1.getAddress()%> 
map key : mem1 정보  이름 :<%=vo2.getName() %> 주소 :<%=vo2.getAddress()%> 

hashMap el출력 

map key : 이름 :  ${sessionScope.memMap.mem1.name }
          주소 :  ${sessionScope.memMap.mem1.address }
         
          이름 :  ${sessionScope.memMap.mem2.name }
          주소 :  ${sessionScope.memMap.mem2.address }

</body>
</html>