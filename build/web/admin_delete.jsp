<%@ page import="java.sql.*" %>
<%-- 
    Document   : admin_delete
    Created on : 3 Mar, 2019, 11:45:06 PM
    Author     : Anirudh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>RK handicraft</title>
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
      <!--headder-->
      <div class="header-outs" id="home">
      
         </div>
         <div class="container-fluid">
            <div class="hedder-up row">
               <div class="col-lg-3 col-md-3 logo-head">
                  <h1><a class="navbar-brand" href="index.html"><img src=""></a></h1>
               </div>
               <div class="col-lg-5 col-md-6 search-right">
                  <form class="form-inline my-lg-0">
                     <input class="form-control mr-sm-2" type="search" placeholder="Search">
                     <button class="btn" type="submit">Search</button>
                  </form>
               </div>
               <div class="col-lg-4 col-md-3 right-side-cart">
                  <div class="cart-icons">
                    
                  </div>6
               </div>
            </div>
         </div>

      </div>
	  </div>

          <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">R K handicrafts</h3>
                  <!-- //reviews -->
                  <!-- deals -->
   
                  
                  
                  
                  
                  <div class="row">
               <%
    //String code=(String)session.getAttribute("code");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
   PreparedStatement ps=con.prepareStatement("select * from image_data");
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
                                      <form action="delete_db.jsp">
                                      <button type="submit" class="link-product-add-cart" value="<%=id%>" name="id">Delete</button>
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
					max: 9000,
					values: [50, 6000],
					slide: function (event, ui) {
						$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
					}
				});
				$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

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
      <!-- //bootstrap working--> 
   </body>
</html>
