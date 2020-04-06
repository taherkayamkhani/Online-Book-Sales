<body background="IMAGE/golden.jpg">
 
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.*"%>
<a href="adminpage.jsp"><b>BACK</b></a>
<%
String user = request.getParameter("id");
	 		Connection con = DB2DBCon.getCon();
	 		Statement	st = con.createStatement();
			String sql= "delete from userdetails where username='"+user+"'";
			int i = st.executeUpdate(sql);
			if(i>0){
			 	out.println("<h2>USER DELETED SUCCESSFULLY </h2>");
			}
			else{
			out.println("<h2>UNABLE TO DELETE TRY AGAIN </h2>");
				
			}
			
		 
		%>