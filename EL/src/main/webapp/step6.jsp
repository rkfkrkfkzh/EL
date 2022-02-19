<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% pageContext.setAttribute("data", "pageContext");
request.setAttribute("data", "request");
session.setAttribute("data", "session");
application.setAttribute("data", "application");%>


현재 프로그램의 기본 경로 : ${pageContext.request.contextPath}
파라메터 name : ${param.name}<br>
파라메터 age : ${param.age}<br>

scope를 지정하지 않았을때 의 data 값 : ${data }<br>
scope를 pageContext로 지정했을 때 data 값 : ${pageScope.data }<br>
scope를 request로 지정했을 때 data 값 : ${requestScope.data }<br>
scope를 session로 지정했을 때 data 값 : ${sessionScope.data }<br>
scope를 application로 지정했을 때 data 값 : ${applicationScope.data }
</body>
</html>