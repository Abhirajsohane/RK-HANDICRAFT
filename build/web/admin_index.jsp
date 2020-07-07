<%-- 
    Document   : admin_index
    Created on : 1 Mar, 2019, 11:10:49 PM
    Author     : Anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Admin panel</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Simple Statistics Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="css/adminstyle.css" rel="stylesheet" type="text/css" media="all">
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Voltaire" rel="stylesheet">
<!--//online-fonts -->
</head>
<body>
<!--header-->


<nav class="navbar navbar-expand-lg navbar-light">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                  <ul class="navbar-nav ">
                     <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                        <a href="product.jsp" class="nav-link">Shop Now</a>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Category
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="Religious.jsp">Religious</a>
                           <a class="nav-link " href="Animal.jsp">Animal</a>
                           <a class="nav-link " href="Home_decor.jsp">Home Decor</a>
                           <a class="nav-link " href="Other.jsp">Other</a>
                        </div>
                     </li>
                     <li class="nav-item">
                        <a href="about.jsp" class="nav-link">About</a>
                     </li>
                  </ul>
               </div>
            </nav>
         </div>
        </div>
<!--//header-->
<div class="w3layouts-head">

</div>
<!--main-->
<div class="main-w3l">
	<div class="w3layouts-main">
            <a href="admin_index.jsp"><h2>R K HANDICRAFTS</h2></a>
	</div>
	<div class="agile-sub">
		<!--count-down -->
		<div class="count" >
			<div class="agile_count_grid1">
				<div class="agile_count_grid_left">
					<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
				</div>
				<div class="agile_count_grid_right">
				
				</div>
				<div class="clear"> </div>
				
			</div>
			<div class="pro-w3l">
				<img src="images/sumit.jpg" alt="image" >
				<p>Sumit kumar soni</p>
			</div>
			<div class="agile_count_grid2">
				<div class="agile_count_grid_left">
					<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				</div>
				<div class="agile_count_grid_right">
				</div>
				<div class="clear"> </div>
			</div>
		</div>
	
		<!-- //count-down -->
	
	</div>
	<div class="progress-w3l">
            <a href="admin_productupload_Details.jsp"><button class="button" >Add product</button></a>
            <a href="admin_delete.jsp"><button class="button">Delete product</button></a>
            <a href="history.jsp"><button class="button">History</button></a>
	</div>
<!--//main-->

<!--footer-->
<footer>
	<p class="agileinfo"> All Rights Reserved </a></p>
</footer>

<!--//footer-->

</body>
</html>