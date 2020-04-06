<body background="IMAGE/golden.jpg">
<a href="userpage.jsp"><b>BACK</b></a>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.*"%><%
String category = request.getParameter("category");
		String bname = request.getParameter("bname");
		String description = request.getParameter("description");
		String user = (String)session.getAttribute("user");
		int id=0;
	 
			Connection con = DB2DBCon.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from lseq where sname='request'");
			if(rs.next()){
				id = rs.getInt(1);
			}
			
			
			st = con.createStatement();
			String sql= "insert into request values('"+id+"','"+user+"','"+category+"','"+bname+"','"+description+"')";
			int i = st.executeUpdate(sql);
			if(i>0){
				st = con.createStatement();
				st.executeUpdate("update lseq set seqno=seqno+1 where sname='request'");
				out.println("<h2>Request Submitted Successfully </h2>");
			}
			else{
			out.println("<h2>Request Submitted Successfully </h2>");
				
			}
			
		 
		%>