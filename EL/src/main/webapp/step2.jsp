<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.MemberVO, java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
1.scriptlet�� ȸ������ ����ϱ� 
<% MemberVO vo=(MemberVO)session.getAttribute("mvo"); %>
���̵� : <%=vo.getId() %> �̸� :<%=vo.getName() %> �ּ� :<%=vo.getAddress()%>

2.EL��� 
���̵� : ${sessionScope.mvo.id }  �̸� : ${sessionScope.mvo.name } �ּ� : ${sessionScope.mvo.address }

3.�迭���
<% String[]names=(String[])session.getAttribute("names");%>
 <%=names[0]%>, <%=names[1]%> ,<%=names[2]%>
 <br>
4.�迭�� EL�� ��� 
${sessionScope.name[0] },${sessionScope.name[1]},${sessionScope.name[2]} 

<%
HashMap map = (HashMap)session.getAttribute("memMap"); 
MemberVO vo1=(MemberVO)map.get("mem1");
MemberVO vo2=(MemberVO)map.get("mem2");
%>

map key : mem1 ����  �̸� :<%=vo1.getName() %> �ּ� :<%=vo1.getAddress()%> 
map key : mem1 ����  �̸� :<%=vo2.getName() %> �ּ� :<%=vo2.getAddress()%> 

hashMap el��� 

map key : �̸� :  ${sessionScope.memMap.mem1.name }
          �ּ� :  ${sessionScope.memMap.mem1.address }
         
          �̸� :  ${sessionScope.memMap.mem2.name }
          �ּ� :  ${sessionScope.memMap.mem2.address }

</body>
</html>