<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>MERABOOK.COM</title>
</head>
<body background="IMAGE/golden.jpg">
<center>
<h1>MERABOOK.COM</h1>



<h3><a href="./HOME.jsp">Home</a> |
<%
String user = (String)session.getAttribute("user");
if(user==null){
 %>
 <a href="./LOGIN.jsp" >Login</a>
 <%}else { %>
 <a href="userpage.jsp" >USER PAGE</a>
 <%} %>
  | <a href="https://www.youtube.com/watch?v=1GNPX8MzbTc" target="_blank">Videos</a> |<a href="./CONTACT.jsp" target="_blank"">contact Us</a> 
  | <a href="adminlogin.jsp" >ADMIN LOGIN</a>
  
  | <a href="./FEEDBACK.jsp" >Feedback</a>
<br>

<FORM method=GET action="http://www.google.com/search" target="_blank">
<A HREF="http://www.google.com" target="_blank">
<IMG SRC="http://www.google.com/logos/Logo_40wht.gif" <br></A>
<INPUT TYPE=text name=q size=31 maxlength=255 value="">
<INPUT TYPE=hidden name=hl value="en">
<INPUT type=submit name=btnG VALUE="Google Search">
</FORM>
<html>
<head>
<style>
p.pos_fixed
{
position:fixed;
top:30px;
left:50px;
}
</style>
</head>
<body>
<table border="1" align=left>
<tr>
<td> 
<a href="./A%20-%20Z.jsp" target="f3">A - Z</a> 
</td>
</tr>

<tr>
<td> 
<a href="./A%20-%20Z/Acedemics%20and%20Professionals.jsp" target="f3">Academic and Professional</a> 
</td>
</tr>

<tr>
<td><a href="./A%20-%20Z/Biographies%20&%20Autobiographies.jsp" target="f3">Biographies & Autobiographies</td>
</tr>

<tr>
<td><a href="./A%20-%20Z/Business,%20Investing%20and%20Management.jsp" target="f3">Business, Investing and Management</td>
</tr>

<tr>
<td><a href="./A%20-%20Z/comics.jsp" target="f3">Comics & Graphic Novels</td>
</tr>


<tr>
<td><a href="./A%20-%20Z/Computers%20and%20Networks.jsp" target="f3">Computers & Internet</td>
</tr>


<tr>
<td><a href="./A%20-%20Z/science%20and%20technolgy.jsp" target="f3">Science & Technology</td>
</tr>

<tr>
<td><a href="./A%20-%20Z/school%20books.jsp" target="f3">School Books</td>
</tr>
</align>
</table>
</p>
 </body>


<table cellpadding="2" cellspacing="20"><br><br><br><br>
<tr>
<td><marquee><a href="./3%20MISTAKES.jsp" target="_blank">
<img src="IMAGE/the-three-mistakes-of-my-life.jpg" width="150" height="200"></a></td></marquee>

<td><marquee><a href="./TWO%20STATES.jsp" target="_blank">
<img src="IMAGE/States.jpg" width="150" height="200"></a></td></marquee>

<td><marquee><a href="./love.jsp" target="_blank">
<img src="IMAGE/love.jpeg" width="150" height="200"></a></td></marquee>

<td><marquee><a href="./7DAYS.jsp" target="_blank">
<img src="IMAGE/7das.jpeg"width="150" height="200"</a></td></marquee>

<td><marquee><a href="./INDIA.jsp" target="_blank">
<img src="IMAGE/india.jpeg"width="150" height="200"</a></td></marquee>

</tr>
<tr>
  <td><marquee>$25</td></marquee>

<td><marquee>$56</td></marquee>
<td><marquee>$45</td></marquee>
<td><marquee>$55</td></marquee>
<td><marquee>$48</td></marquee>
</tr>
</table>

</table>



<marquee direction="right">
<img src="./IMAGE/john.jpg" height="100" width="100">
<img src="./IMAGE/wings.jpg" height="100" width="100">
<img src="./IMAGE/gandhi.jpg" height="100" width="100">
<img src="./IMAGE/can.jpg" height="100" width="100">
<img src="./IMAGE/falling.jpeg" height="100" width="100">
<img src="./IMAGE/sins.jpg" height="100" width="100">
<img src="./IMAGE/game.jpg" height="100" width="100">
<img src="./IMAGE/potter.jpg" height="100" width="100">
</marquee>




