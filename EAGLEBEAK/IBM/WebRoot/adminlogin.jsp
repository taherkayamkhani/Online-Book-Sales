<body background="IMAGE/golden.jpg">
<script type = "text/javascript">

// Note: Like all Javascript password scripts, this is hopelessly insecure as the user can see 
//the valid usernames/passwords and the redirect url simply with View Source.  
// And the user can obtain another three tries simply by refreshing the page.  
//So do not use for anything serious!

var count = 2;
function validate() {
var un = document.myform.username.value;
var pw = document.myform.pword.value;
var valid = false;

var unArray = ["saurabh", "nova", "taher", "monica"];  // as many as you like - no comma after final entry
var pwArray = ["12345", "12345", "12345", "12345"];  // the corresponding passwords;

for (var i=0; i <unArray.length; i++) {
if ((un == unArray[i]) && (pw == pwArray[i])) {
valid = true;
break;
}
}

if (valid) {
alert ("Login was successful");
window.location = "http://www.google.com";
return false;
}

var t = " tries";
if (count == 1) {t = " try"}

if (count >= 1) {
alert ("Invalid username and/or password.  You have " + count + t + " left.");
document.myform.username.value = "";
document.myform.pword.value = "";
setTimeout("document.myform.username.focus()", 25);
setTimeout("document.myform.username.select()", 25);
count --;
}

else {
alert ("Still incorrect! You have no more tries left!");
document.myform.username.value = "No more tries allowed!";
document.myform.pword.value = "";
document.myform.username.disabled = true;
document.myform.pword.disabled = true;
return false;
}

}

</script>
<a href="HOME.jsp"><b>HOME</b></a>
<center>
<H2>ADMIN LOGIN</H2>


<form name = "myform" action="adminlogin1.jsp">
<table>

<tr><td><B> USER NAME</B> </td><td><input type="text" name="username"></td></tr>
<tr><td><B> PASSWORD</B></td><td><input type="password" name="pword"></td></tr>
<tr><td></td><td><input type="submit" value=" LOGIN " name="Submit"> </td></tr> 

</table>
</form>
</center>
 