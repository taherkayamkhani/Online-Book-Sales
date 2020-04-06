
<%@page import="java.sql.Connection"%>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><body background="IMAGE/golden.jpg">
<a href="adminpage.jsp"><b>BACK</b></a>
<center>
<h1>USERS REQEUESTED BOOKS</h1>
 <br> 
<br>
 
<table border="1"  id="searchTable"  width="700px">
<tr style="font-weight:bold;"><td>USER </td><td>CATEGORY</td>
<td>BOOK NAME</td><td>DESCRIPTION</td></tr>
<%
 
  Connection con = DB2DBCon.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select * from request");
  
  while(rs.next()){
   %>
 <tr>
 <td><%=rs.getString("username") %></td>
 <td><%=rs.getString("category") %></td>
 <td><%=rs.getString("bookname") %></td>
  <td><%=rs.getString("description") %></td>
 </tr>
 
 <%} %>
</table>
 
</body>
