<body background="IMAGE/golden.jpg">
<a href="HOME.jsp"><b>BACK</b></a>
<%@page import="db.DB2DBCon"%>
<%@page import="java.sql.*"%><%
String name = request.getParameter("name");
		String email = request.getParameter("email");
		String feedback = request.getParameter("feedback");
		int id=0;
	 
			Connection con = DB2DBCon.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from lseq where sname='feedback'");
			if(rs.next()){
				id = rs.getInt(1);
			}
			
			
			st = con.createStatement();
			String sql= "insert into feedback values('"+id+"','"+name+"','"+email+"','"+feedback+"')";
			int i = st.executeUpdate(sql);
			if(i>0){
				st = con.createStatement();
				st.executeUpdate("update lseq set seqno=seqno+1 where sname='feedback'");
				out.println("<h2>Feedback Submitted Successfully </h2>");
			}
			else{
			out.println("<h2>UNABLE TO SAVE FEEDBAK. TRY AGAIN </h2>");
				
			}
			
		 
		%>