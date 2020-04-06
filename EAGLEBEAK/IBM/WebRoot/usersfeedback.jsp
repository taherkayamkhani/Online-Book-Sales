
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><body background="IMAGE/golden.jpg">
<a href="adminpage.jsp"><b>BACK</b></a>
<center>
<h1>USERS FEEDBACK</h1>
 <br> 
<br>
 
<table border="1"  id="searchTable"  width="700px">
<tr style="font-weight:bold;"><td>NAME </td><td>EMAIL ID</td>
<td>FEEDBACK</td></tr>
<%
 
  Connection con = DB2DBCon.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select * from feedback");
  
  while(rs.next()){
   %>
 <tr>
 <td><%=rs.getString("name") %></td>
 <td><%=rs.getString("email") %></td>
 <td><%=rs.getString("feedback") %></td>
 </tr>
 
 <%} %>
</table>
 
</body>
