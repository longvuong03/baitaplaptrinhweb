<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	String msg = (String) request.getAttribute("message");
	if(msg != null){
		out.print(msg);
	}
	%>
	<form action="../loginMVC/LoginController.jsp" method="POST">
		Username : <input type= "text" name="Username"><br>
		Password : <input type= "password" name="Password">	
		<input type="submit" value="Login">
	</form>  
</body>
</html>