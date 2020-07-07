<%-- 
    Document   : login
    Created on : 1 Mar, 2019, 4:19:35 PM
    Author     : Anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="ISO-8859-1">
<title>RK Handicraft Sign In</title>
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
	   
	   
	   
      a
      {
      	text-decoration:none;
      }
	  
	  
	  #login
	  {
	     font-family: "Amazon Ember",Arial,sans-serif;
         margin-bottom:10px;
         font-weight: 400;
         font-size: 28px;
         line-height: 1.2;
	  }


     #continue
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
     #continue:hover
      {
         background-color:  #e78318;
      }
             
      #fp
      {
      	margin-left:211px;
      }       

	 #c1
       {
	
        text-decoration:none;
       	height:30px;
       	width:340px;
		 background-color:#f0c14b;
		border:1px solid #797a86; 
       	border-radius:3px;
        cursor :pointer;
       }
     #c1:hover
       {
background-color:  #e78318;
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
     padding-bottom:18px;
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
<img src="images/nameblack.png" width"103px" height="31px" align="center">
</center>


    <form action="login_check.jsp">
    <table align="center">
	
    <tr>
	<td><div id="login">Login</div></td>
    </tr>	 
        
     <tr >
     	<td><lable>Email or mobile phone number</lable></td>
     </tr>
	 
	 
     <tr>
	 <td><input id="textbox" type="text" required="" name="id"></td>
	 </tr>
	 
	 
	 <tr >
     	<td><lable>Password</lable></td>
     </tr>
	 
	 
     <tr>
	 <td><input id="textbox" type="text" required="" name="pass"></td>
	 </tr>
       
		
		
    	<tr>
     <td><center><button id="continue" name="submit">Continue</button></center></td>
     </tr>


       
        <tr> 
	   <td>  <a id="fp" href="forgotpass.jsp">Forgot Password</a>
           </td>
	</tr>
  

  </table>
  </form>

  <br/><br/>
  
  
 <center>
  <label>------New to RK Handicrafts------</label><br/><br/>
  <button id="c1" onclick="location.href = 'signup.jsp';">Create Your Account</button>
  <br/><br/>
  
  
  <img src="images/Untitled.png" align="centre"></img><br/><br/>
  
  
  
  <a id="link"href="">Condition of use  </a>&nbsp&nbsp
  <a id="link"href="">Privacy Notice    </a>&nbsp&nbsp
  <a id="link" href="">Help</a>
 </center>


</body>
</html>