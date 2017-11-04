<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Sucessfully...................</h1>
	
	<%
	if (session.getAttribute("name") == null) 
	{
		response.sendRedirect("singin.jsp");
	}
	
	%>
	 <% response.setHeader("Cache-Control","no-cache,no-store"); //HTTP 1.1 
   response.setHeader("Pragma","no-cache"); //HTTP 1.0 
   response.setDateHeader ("Expires", 0);
   %>
	<form action="LogoutServlet" method="post">
	<p>Welcome <%=session.getAttribute("name")%></p>
<button type="submit" class="btn btn-link btn-primary" id="submit"> logout</button>	</form>
</body>
</html>