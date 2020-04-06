
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><body background="IMAGE/golden.jpg">
<center>
<h1>MERABOOK.COM</h1>

<h3><a href="HOME.jsp">Home</a> | <a href="requestbook.jsp" >REQUEST A NEW BOOK</a> 
 
 | <a href="logout.jsp">LOGOUT</a>
<br> 
<br>

<form method="post" action="requestbook1.jsp" name="signup" onSubmit="return validation_for_signup()"" >

<%
String user = (String)session.getAttribute("user");
Connection con = DB2DBCon.getCon();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from userdetails where username='"+user+"'");
if(rs.next()){

 %>
 YOUR PROFILE
<table>
<ul>

<tr>
<tr><td><b>Username:</b></td>
<td><input type="text" name="username" value="<%=rs.getString("username") %>" size="25" /></td></tr>


<tr><td><b>Email:</td>
<td><input type="text" name="email"  value="<%=rs.getString("emailid") %>" size="25" /></td></tr>

<tr><td><b>Password:</td>
<td><input type="password" name="password"  value="<%=rs.getString("password") %>" size="25" /></td></tr>
 
<tr><td><b>FirstName:</td>
<td><input type="text" name="firstname"  value="<%=rs.getString("fname") %>" size="25" /></td></tr>

<tr><td><b>LastName:</td>
<td><input type="text" name="lastname"  value="<%=rs.getString("lastname") %>" size="25" /></td></tr>

<tr><td><b>Phone:</td>
<td><input type="text" name="phone"  value="<%=rs.getString("mobile") %>" size="25" /></td></tr>
 
</ul>

<%} %>
</form>
</body>
