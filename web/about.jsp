<%-- 
    Document   : about
    Created on : 1 Mar, 2019, 8:52:24 PM
    Author     : Anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="icon" href="images/logowhite.png">
        <title>RK Handicraft</title>
      <!--meta tags -->
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
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!-- For Clients slider -->
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
      <!--flexs slider-->
      <link href="css/JiSlider.css" rel="stylesheet">
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
      <!--//meta tags ends here-->
      <!--booststrap-->
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      
   </head>
    <body>
      <%
           
            String uid="33NULL33",uname="";
            int i=0;
            
            if( null == session.getAttribute("uidname")) 
            {
                System.out.println("not created");
            } 
            else 
            {
                System.out.println("created");
                i=i+1;
                session = request.getSession();
                Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
		uid = (String) session.getAttribute("uid");
                uname = (String) session.getAttribute("uidname");
            }
       %>
      <div class="header-outs" id="home">
         <div class="header-bar">
            <div class="container-fluid">
               <div class="hedder-up row">
                  <div class="col-lg-3 col-md-3 logo-head">
                     <h1><a class="navbar-brand" href="index.html"><img src="images/namewhite.png" width"103px" height="31px" align="center"></img></a></h1>
                  </div>
                  <div class="col-lg-5 col-md-6 search-right">
                     <form class="form-inline my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search">
                        <button class="btn" type="submit">Search</button>
                     </form>
                  </div>
                  <div class="col-lg-4 col-md-3 right-side-cart">
                     <div class="cart-icons">
                        <ul>
                           <li>
                              <span class="far fa-heart"></span>
                           </li>
                           <li>
                               <%
                                   if(i==0)
                                   {
                                    %> <a href="login.jsp">      
                                        <%  }
                                            else
                                            {%>
                                                <a href="user_info.jsp">
                                                    <%     }
                               %>
                               <button type="button" data-toggle="modal" data-target="#exampleModal"> <span class="far fa-user">&nbsp 
                            <% 
                                if(i==0)
                                   {
                                       out.println("Login");
                                   }
                                else
                                   {
                                        out.println(uname);
                                   }
                            %></span></button></a>
                           </li>
                           <li class="toyscart toyscart2 cart cart box_1">
                              <form action="#" method="post" class="last">
                                 <input type="hidden" name="cmd" value="_cart">
                                 <input type="hidden" name="display" value="1">
                                 <button class="top_toys_cart" type="submit" name="submit" value="">
                                 <span class="fas fa-cart-arrow-down"></span>
                                 </button>
                              </form>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
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
                           <!-- Slideshow 4 -->
            <!-- This is here just to demonstrate the callbacks -->
            <!-- <ul class="events">
               <li>Example 4 callback events</li>
               </ul>-->
            <div class="clearfix"></div>
         </div><!--//headder-->
      <!-- banner -->
      
      <!--About -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3">
        <div class="inner_page-banner one-img">
            <img src="images/bannerall.jpeg" width="100%" style="padding-top:75px">
        </div>
          <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">About Us</h3>
            <div class="about-innergrid-agile text-center">
               <h4>Welcome To Our Store</h4>
               <p class="mb-3"> Discover the world of craft with Rkhandicraft.com. it is an online marketplace that helps art collectors/lovers and enthusiasts to buy and sell art with ease from any part of the world. Rkhandicraft caters to original art (art investment), sculpture, digital prints, craft, home decor and many more. Explore our online art gallery and grab your choice of painting or portraits or craft.
               </p>
               </div>
            <br/>
            <br/>
            <br/>
            <br/>
            
               </div>
</section>
      <!-- footer -->
      <footer class="py-lg-4 py-md-3 py-sm-3 py-3 text-center">
         <div class="copy-agile-right">
            <p> 
              Contact at
              Ramesh kumar soni-9893416454 |
              Sumit kumar soni-8516906199
            </p>
         </div>
      </footer>
<script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
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
     <script src="js/bootstrap.min.js"></script> 
      
</body>
</html>