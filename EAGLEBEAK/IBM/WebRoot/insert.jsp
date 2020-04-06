<%@page contentType="text/html" pageEncoding="UTF-8"%>
//<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*,java.util.*"%>
<%
  String Username=request.getParameter("Username");
      String Email=request.getParameter("Email");
      String Password=request.getParameter("Password");
      String  PasswordConfirm=request.getParameter("PasswordConfirm");
String FirstName=request.getParameter("FirstName");
String LastName=request.getParameter("LastName");
String Phone=request.getParameter("Phone");        
try{
         
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection  con = DriverManager.getConnection("jdbc:odbc:IBM");
	  Statement stmt = con.createStatement();
           stmt.executeUpdate("insert into IBM(Username,Email,Password,PasswordConfirm,FirstName,LastName,Phone) values('"+Username+"','"+Email+"','"+Password+"','"+PasswordConfirm+"','"+FirstName+"','"+LastName+"','"+Phone+"')");
      out.println("Data is successfully inserted!");
	 // out.println("<form action='HOME.jsp' method='POST'>");
	  //out.println("<input type='submit' value='gotomain'>");
	  out.println("<form action='register.jsp' method='POST'>");
	  out.println("<input type='submit' value='gotoregister'>");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>