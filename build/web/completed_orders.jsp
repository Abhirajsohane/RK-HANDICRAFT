<%@ page import="java.sql.*" %>
<%-- 
    Document   : completed_orders
    Created on : 5 Mar, 2019, 8:51:55 PM
    Author     : Anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RK Handicraft</title>
      <!--meta tags -->
         
      <style>
#order 
{
  background-color: white;
  border: 2px solid grey;
  padding: 25px;
  margin: 25px;
  height:150px;
}
#h6{
    padding-top: 19px;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  margin-left: 85%;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

      </style>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--price range-->
      <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
      <!--//price range-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>

        
   <body>
      <!--headder-->
      <div class="header-outs" id="home">
      
         </div>
         <div class="container-fluid">
            <div class="hedder-up row">
               <div class="col-lg-3 col-md-3 logo-head">
                  <h1><a class="navbar-brand" href="index.html"><img src="images/namewhite.png" width"103px" height="31px" align="center"></a></h1>
               </div>
               <div class="col-lg-5 col-md-6 search-right">
                  <form class="form-inline my-lg-0">
                     <input class="form-control mr-sm-2" type="search" placeholder="Search">
                     <button class="btn" type="submit">Search</button>
                  </form>
               </div>
               <div class="col-lg-4 col-md-3 right-side-cart">
                  <div class="cart-icons">
                    
                  </div>
               </div>
            </div>
         </div>

      
          
          
          
          
          <!-- Nav Bar -->
          
              <nav class="navbar navbar-expand-lg navbar-light">
            
               <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                  <ul class="navbar-nav ">
                     <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                        <a href="#" class="nav-link">Shop Now</a>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Category
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="#">Religious</a>
                           <a class="nav-link " href="#">Animal</a>
                           <a class="nav-link " href="#">Home Decor</a>
                           <a class="nav-link " href="#">Other</a>
                        </div>
                     </li>
                     <li class="nav-item">
                        <a href="completed_orders.jsp" class="nav-link">Completed orders</a>
                     </li>
                  </ul>
               </div>
            </nav>
       
          
          <!-- Nav Bar -->
          
          
          
          
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
            PreparedStatement ps=con.prepareStatement("select * from completed_orders");
            ResultSet rs=ps.executeQuery();
            String pweight="",uname="",email="",mobile="",pid="",pname="",price="",address="";
            if(rs.next())
            {
                do
                {
                    pname=rs.getString("product_name");
                    pweight  =   rs.getString("weight");
                    price   =   rs.getString("price");
                    mobile  =   rs.getString("mobile");
                    address =   rs.getString("address");
                    pid     =   rs.getString("product_id");
                    uname   =   rs.getString("user_name");
                    email   =   rs.getString("email");
        %> 
                    <div id="order">
                        <h6 id="h6" color="red" style="margin-top: -26px">Product Name : <%=pname%> </h6>
                        <h6 id="h6" color="red" style="margin-top: -18px;margin-left:700px;">Product id : <%=pid%></h6>
                        <h6 id="h6" color="red" style="margin-top: 5px;margin-left:0px;">User Name : <%=uname%></h6>
                        <h6 id="h6" color="black" style="margin-top: 5px;">Weight : <%=pweight%></h6>
                        <h6 id="h6" color="black" style="margin-top: 5px;">Email : <%=email%></h6>
                        <h6 id="h6" color="black"style="margin-top: -70px;margin-left: 700px;"> Price : <%=price%></h6>
                        <h6 id="h6" color="red" style="margin-top: 5px;margin-left: 700px;">Mobile : <%=mobile%></h6>
                        <h6 id="h6" color="red" style="margin-top: 30px;">Address : <%=address%></h6>
                    </div>
        <%          
              }while(rs.next());
            }
        %>              
      <!-- //Modal 1-->
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <!-- cart-js -->
       <script src="js/minicart.js"></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!-- //cart-js -->
		<!-- price range (top products) -->
		<script src="js/jquery-ui.js"></script>

      <!-- start-smoth-scrolling -->
       <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         
         
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working--> 
   

        
        
        
        
        
        
        
    </body>
</html>