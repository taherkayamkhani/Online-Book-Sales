
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><body background="IMAGE/golden.jpg">
<a href="LOGIN.jsp"><b>BACK</b></a><BR><BR>
<%
String username = request.getParameter("username");
String password = request.getParameter("pword");

Connection con = DB2DBCon.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from userdetails where username='"+username+"' and password='"+password+"'");
if(rs.next()){
session.setAttribute("user",username);
response.sendRedirect("userpage.jsp");
}else{
out.println("<h2>INVALID LOGIN ACCOUNT DETAILS. TRY AGAIN</H2>");
}

%>
<a href="HOME.jsp"><b>HOME</b></a><BR><BR>
</body>
