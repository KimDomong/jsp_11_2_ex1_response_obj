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
	
	<h2>�˼��մϴ�.</h2><br>
	<h3>����(<%=name %>��)�� ������ <%=age %>�� �Դϴ�.</h3>
	<h3>����(<%=name %>��)�� �츮 Ȩ�������� ���� ���հ� �ϼ̽��ϴ�.</h3><br>
	<h3>�ƽ����� 20���� �ǽ� ���Ŀ� �湮���ֽø� �����մϴ�.</h3>
	<br><br><br>
	<a href="requestage.html">���� �Է��������� �̵�</a>
</body>
</html>