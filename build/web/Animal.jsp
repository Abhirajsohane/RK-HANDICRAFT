<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">
   <head>
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
      <!--//headder-->
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!--show Now-->  
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
             <img src="images/nameblack.png" style="margin-left: 410px">
            
            
            
            
                <div class="search-hotel">
                <!-- price range -->
                    <div class="range" style="width:260px">
			<h3 class="agileits-sear-head">Price range</h3>
                            <ul class="dropdown-menu6">
				<li>
                                    <div id="slider-range"></div>
					<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
									</li>
								</ul>
                    </div>
               </div>
                  
            <div class="row">
               <%
    //String code=(String)session.getAttribute("code");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
   PreparedStatement ps=con.prepareStatement("select * from image_data where category='Animal'");
   String name="",price="";
      
   ResultSet rs=ps.executeQuery();
           
   if(rs.last())
   {
      do
      {     
        String id=rs.getString("uniq_id");
        String path=rs.getString("full_path");
        PreparedStatement ps1=con.prepareStatement("select * from product_details where uniq_id="+id);
        ResultSet rs1=ps1.executeQuery();
   
        if(rs1.last())
        {
        name=rs1.getString("name");
        price=rs1.getString("price");

     %>

                <div class= col-lg-3>
  
                     <div class="col-lg-12 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="<%=path %>" class="img-thumbnail img-fluid" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                      <!--   <a href="single.jsp" class="link-product-add-cart">Quick View</a>-->
                                      <form action="single.jsp">
                                      <button type="submit" class="link-product-add-cart" value="<%= id%>" name="id">quick view</button>
                                      </form>
                                    </div>
                                 </div> 
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <p>
                                             <%=name%>
                                          </p>
                                          <div class="grid-price mt-2">
                                             <p>Price : <%=price%>rs</p>
                                          </div>
                                       </div>
                                       
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                        <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                        </button>
                                       </div>
                                 </div>
                                  <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     </div>

                          <%
   }}
      while(rs.previous());
      
   }
  %>   </div>
     
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
      <script>
         //<![CDATA[ 
         $(window).load(function () {
         	$("#slider-range").slider({
         		range: true,
         		min: 0,
         		max: 99999,
         		values: [50, 99999],
         		slide: function (event, ui) {
         			$("#amount").val(ui.values[0] + " - " + ui.values[1]);
         		}
         	});
         	$("#amount").val($("#slider-range").slider("values", 0) + " - " + $("#slider-range").slider("values", 1));
         
         }); //]]>
      </script>
      <!-- //price range (top products) -->
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
      <!-- //bootstrap working-->      <!-- //OnScroll-Number-Increase-JavaScript -->
   </body>
</html>
    