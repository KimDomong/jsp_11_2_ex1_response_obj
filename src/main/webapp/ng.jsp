<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ng.jsp</title>
</head>
<body>

	<%!
		int age;
		String agestr,name;
	%>
	
	<%  
		request.setCharacterEncoding("EUC-KR");
	
		name = request.getParameter("name");
		agestr  = request.getParameter("age");
		age = Integer.parseInt(agestr);
		String name2 = URLEncoder.encode(name,"EUC-KR");
	%>
	
	<h2>죄송합니다.</h2><br>
	<h3>귀하(<%=name %>님)의 연령은 <%=age %>세 입니다.</h3>
	<h3>귀하(<%=name %>님)은 우리 홈페이지에 최종 불합격 하셨습니다.</h3><br>
	<h3>아쉽지만 20세가 되신 이후에 방문해주시면 감사합니다.</h3>
	<br><br><br>
	<a href="requestage.html">나이 입력페이지로 이동</a>
</body>
</html>