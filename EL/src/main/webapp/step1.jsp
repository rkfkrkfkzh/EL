<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.MemberVO, java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%   
MemberVO vo = new MemberVO("java","abcd","������","�Ǳ�"); 
session.setAttribute("mvo",vo); 
String names[]={"Ȳ����", "��ڻ�","������"}; 
session.setAttribute("names",names);

HashMap map = new HashMap(); 
map.put("mem1",vo); 
MemberVO vo1=new MemberVO("JSP","1234","������","����"); 
map.put("mem2", vo1); 
session.setAttribute("memMap",map);
%>

EL ù��° ���� <br>
<a href="step2.jsp">step2���� eló�� Ȯ���ϱ�</a>

</body>
</html>