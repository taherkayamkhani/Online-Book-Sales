<%
session.removeAttribute("user");
session.removeAttribute("admin");
response.sendRedirect("HOME.jsp");

%>