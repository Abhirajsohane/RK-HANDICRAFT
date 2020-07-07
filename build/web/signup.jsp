<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RK Handicraft Registration</title>
<a href="index.jsp"><link rel="icon" href="images/logowhite.png"></a>


<style>

table
{
    border: 1px solid #d0d0e1; 
    padding:15px;
    border-radius:4px;
}


lable
{
    display: block;
    padding-left: 2px;
    padding-bottom: 2px;
    font-weight: 700;
    font-family: Arial,sans-serif;
    font-size:13px;
}
button
{
  font-family: "Amazon Ember",Arial,sans-serif;
  background-color:#f0c14b;
  border:1px solid #797a86;
  color:black;
  padding:5px 130px;
  text-align:center;
  font-size:13px;
  cursor:pointer;
  border-radius: 3px;
  margin-top:15px;
  margin-bottom:20px;
}
#ho:hover
{
    background-color:  #e78318;
}
#createaccount
{
   font-family: "Amazon Ember",Arial,sans-serif;
   margin-bottom:10px;
   font-weight: 400;
   font-size: 28px;
   line-height: 1.2;
}


input
{
   padding: 7px ;
   border: 1px solid #ccc; 
   border: 1px solid #a6a6a6;
   height:18px;
   width:312px;
   border-radius:3px;
   border-shadow:0px 1px 0px;
   outline:0px;
}

#rklogoin
{
   padding-top:10px;
}

#img
{
   height:10px;
   width:300px;
}

#link
{
     text-decoration:none;
}
#link:hover
{
  color:#E38E12;
}
</style>



</head>
<body>

<center id="rklogoin">
<img src="images/nameblack.png" width"103px" height="31px" align="center"></img>
</center>



<form action="signup_check.jsp">
<table align="center">
<tr>
<td>
<div id="createaccount">Create Account</div>
</td>
</tr>
<br/>


<tr>
<td><b><lable>Your name</lable></b></td>
</tr>

<tr>
<td><input type="text" required="true" id="textbox" name="name"></td>
</tr>




<tr>
<td><b><lable style="margin-top:15px;">Mobile number</lable></b></td>
</tr>

<tr>
<td><input type="text" maxlength="10" required="true" id="textbox" name="mob"></td>
</tr>



<tr>
<td><b><lable style="margin-top:15px;">Email (optional)</lable></b></td>
</tr>

<tr>
<td><input type="email" id="textbox" name="email"></td>
</tr>






<tr>
<td><b><lable style="margin-top:15px;">Password</lable></b></td>
</tr>

<tr>
<td><input type="password" required="true" id="textbox" name="pass"></td>
</tr>

<tr>
<td><span>Passwords must be at least 6 characters.</span></td>






<tr>
<td><center><button id="ho" name="submit">Continue</button></center></td>
</tr>

<tr>
<td><img id="img" src="images/untitled.png"align="centre"></img></td>
</tr>

<tr>
<td><div> Already have an account? <a href="login.jsp" id="link">Sign in</a></div></td>
</tr>


</table>
</form>

 
 
 <center>
  <img src="images/Untitled.png"align="centre"></img><br/><br/>
   
  <a id="link" href="">Condition of use  </a>&nbsp&nbsp&nbsp
  <a id="link" href="">Privacy Notice    </a>&nbsp&nbsp&nbsp
  <a id="link" href="">Help</a>
 </center><br/><br/><br/>


</body>
</html>