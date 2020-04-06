
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><body background="IMAGE/golden.jpg">
<a href="adminlogin.jsp"><b>BACK</b></a><BR><BR>
<%
String username = request.getParameter("username");
String password = request.getParameter("pword");
 if(username.equals("admin") && password.equals("admin")){
session.setAttribute("admin",username);

response.sendRedirect("adminpage.jsp");
}else{
out.println("<h2>INVALID LOGIN ACCOUNT DETAILS. TRY AGAIN</H2>");
}

%>
<a href="HOME.jsp"><b>HOME</b></a><BR><BR>
</body>
