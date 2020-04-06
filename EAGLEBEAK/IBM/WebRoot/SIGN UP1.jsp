
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.mvayoo"%><body background="IMAGE/golden.jpg">
<a href="SIGN UP.jsp">sBACK</a><BR><BR>
<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String phone = request.getParameter("phone");
String username = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");

Connection con = DB2DBCon.getCon();
Statement st = con.createStatement();
int i = st.executeUpdate("insert into userdetails values('"+username+"','"+email+"','"+password+"','"+firstname+"','"+lastname+"','"+phone+"')");
if(i>0){
mvayoo.sendSms(phone,"YOUR PASSWORD FOR MERABOOK.COM : "+password);
out.println("<h2>REGISTRATION COMPLETED SUCCESSFULLY. <BR><A HREF='HOME.jsp'>HOME</A>");
}else{
out.println("<h2>UNABLE TO REGISTER TRY AGAIN");
}

%>

</body>
