<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>pass.jsp</title>
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
	
	<h3>�����մϴ�!!!!</h3><br>
	<h3><%=name %>����<%=age %>�� �Դϴ�!</h3><br>
	<h3>�׷��Ƿ� 20�� �̻��Դϴ�. �� Ȩ������ ������ �����մϴ�.!!</h3>
	
</body>
</html>