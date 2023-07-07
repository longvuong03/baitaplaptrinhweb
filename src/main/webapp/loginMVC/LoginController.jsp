<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String u = (String)request.getParameter("Username");
	String p = (String)request.getParameter("Password");
	if(u.equals("admin") && p.equals("123456")){
		session.setAttribute("user", u);
		response.sendRedirect("../adminMVC/admin.jsp");
	}else{
		request.setAttribute("message", "SAI USERNAME va MAT KHAU");
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}
	%>
</body>
</html>