
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><body background="IMAGE/golden.jpg">
<center>
<h1>MERABOOK.COM</h1>

<h3><a href="HOME.jsp">Home</a>
 | <a href="usersrequest.jsp" >VIEW USERS REQUEST</a> 
 | <a href="usersfeedback.jsp" > USERS FEEDBACK</a> 
 
 | <a href="logout.jsp">LOGOUT</a>
<br> 
<br>
 
<table border="1"  id="searchTable"  width="700px">
<tr style="font-weight:bold;"><td>USERNAME</td><td>FIRSTNAME</td>
<td>LASTNAME</td><td>MOBILE</td><td>EMAIL ID</td><TD>DEL</TD></tr>
<%
 
  Connection con = DB2DBCon.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select * from userdetails");
  
  while(rs.next()){
   %>
 <tr>
 <td><%=rs.getString("username") %></td>
 <td><%=rs.getString("fname") %></td>
 <td><%=rs.getString("lastname") %></td>
  <td><%=rs.getString("mobile") %></td>
  <td><%=rs.getString("emailid") %></td>
 <td> <a href="deluser.jsp?id=<%=rs.getString("username") %>"><img src="delete.png" width="20"></a></td>
 </tr>
 
 <%} %>
</table>
 
</body>
