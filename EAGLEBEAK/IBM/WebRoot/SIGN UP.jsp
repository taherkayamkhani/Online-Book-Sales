<body background="IMAGE/golden.jpg">
<head>
<script type="text/javascript">
function validation_for_signup()
{

                var check_email = /^[\w\.]+@[a-zA-Z_]+?\.[a-zA-Z\.]{2,6}$/;
                var check_username = /^[a-zA-Z0-9_]{3,16}$/;
                var check_name = /^[a-zA-Z]{3,16}$/;
                var check_phone = /^[0-9]{3,16}$/;
                                if(document.signup.username.value=="")
                                {
                                                alert("please enter username");
                                                document.signup.username.focus();
                                                return false;
                                }
                                else if(check_username.test(document.signup.username.value) == false)
                                {
                                                alert('Invalid  username');
                                                document.signup.username.focus();
                                                return false;
                                }
                                if(document.signup.email.value=="")
                                {
                                                alert("please enter email");
                                                document.signup.email.focus();
                                                return false;
                                }
                                else if(check_email.test(document.signup.email.value) == false)
                                {
                                                alert('Invalid  email');
                                                document.signup.email.focus();
                                                return false;
                                }
                                if(document.signup.password.value=='')
                                {
                                                alert("Please enter Password.");
                                                document.signup.password.focus();
                                                return false;
                                }
                                else if(document.signup.password.value.length<6)
                                {
                                                alert("Password is too short.");
                                                document.signup.password.focus();
                                                return false;
                                }
                                if(document.signup.passconf.value=='')
                                {
                                                alert("Please confirm Password.");
                                                document.signup.passconf.focus();
                                                return false;
                                }
                                else if(document.signup.password.value!=document.signup.passconf.value)
                                {
                                                alert("Password does not match.");
                                                document.signup.password.focus();
                                                return false;
                                }
                               
                                if(document.signup.firstname.value=="")
                                {
                                                alert("please enter firstname");
                                                document.signup.firstname.focus();
                                                return false;
                                }
                                else if(check_name.test(document.signup.firstname.value) == false)
                                {
                                                alert('Invalid  firstname');
                                                document.signup.firstname.focus();
                                                return false;
                                }
                                if(document.signup.lastname.value=="")
                                {
                                                alert("please enter lastname");
                                                document.signup.lastname.focus();
                                                return false;
                                }
                                else if(check_name.test(document.signup.lastname.value) == false)
                                {
                                                alert('Invalid  lastname');
                                                document.signup.lastname.focus();
                                                return false;
                                }
                                if(document.signup.phone.value=="")
                                {
                                                alert("please enter phone");
                                                document.signup.phone.focus();
                                                return false;
                                }
                                else if(check_phone.test(document.signup.phone.value) == false)
                                {
                                                alert('Invalid  phone');
                                                document.signup.phone.focus();
                                                return false;
                                }
}


</script>
</head>
<a href="LOGIN.jsp"><b>BACK</b></a><BR><BR>
<body>
<center><H2>USER REGISTRATION FORM</H2>
<form method="post" action="SIGN UP1.jsp" name="signup" onSubmit="return validation_for_signup()"" >
<table>
<ul>

<tr>
<tr><td><b>Username:</b></td>
<td><input type="text" name="username" value="" size="25" /></td></tr>


<tr><td><b>Email:</td>
<td><input type="text" name="email"  value="" size="25" /></td></tr>

<tr><td><b>Password:</td>
<td><input type="password" name="password"  value="" size="25" /></td></tr>

<tr><td><b>PasswordConfirm:</td>
<td><input type="password" name="passconf"  value="" size="25" /></td></tr></li>

<tr><td><b>FirstName:</td>
<td><input type="text" name="firstname"  value="" size="25" /></td></tr>

<tr><td><b>LastName:</td>
<td><input type="text" name="lastname"  value="" size="25" /></td></tr>

<tr><td><b>Phone:</td>
<td><input type="text" name="phone"  value="" size="25" /></td></tr>

<tr><td><b><input type="submit" value="Submit" /></td></tr>
</ul>
</form>
</body>


