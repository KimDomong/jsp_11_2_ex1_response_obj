<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requestsend.jsp</title>
</head>
<body>

	<%! // 변수 및 메서드 선언하기
		int age, age2;
		String agestr, name;
	%> 
	
	<%
		request.setCharacterEncoding("EUC-KR");
	
		name = request.getParameter("name");
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
				String name2 = URLEncoder.encode(name,"EUC-KR");
		
		if(age>=20){
			response.sendRedirect("pass.jsp?name="+name2+"&age="+age); //가지고온 age,name2값을 전달
					}
		
		else {
			response.sendRedirect("ng.jsp?age="+age+"&name="+name2);//가지고온 age,name2값을 전달
			 }
	%>
	
</body>
</html>