<%@ page import="java.sql.*" %>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
   <head>
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
      <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
      <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>
   <body>
      <!--headder-->
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
      <!--//banner -->
      <!--/shop-->
    <%  
        String uidi="",name="",price="" ,weight="" ,description="";
        if(null==request.getParameter("id"))
        {
            uidi=(String)session.getAttribute("id");
        }
        else
        {
            uidi=request.getParameter("id");
            session.setAttribute("id",uidi);
        }
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
        PreparedStatement ps=con.prepareStatement("select * from image_data where uniq_id=? ");
        PreparedStatement ps1=con.prepareStatement("select * from product_details where uniq_id=? ");
        ps.setString(1,uidi);
        ps1.setString(1,uidi);
        ResultSet rs1=ps1.executeQuery();
        if(rs1.next())
        {
                name    = rs1.getString("name");
                price   = rs1.getString("price"); 
                weight  = rs1.getString("weight"); 
                description= rs1.getString("description");
        }
        
        
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
      do
      {
         String id=rs.getString("uniq_id");
         String path=rs.getString("full_path");
      %>

      <section class="banner-bottom py-lg-5 py-3">
         <div class="container" style="margin-top:50px;">
            <div class="inner-sec-shop pt-lg-4 pt-3">
               <div class="row">
                  <div class="col-lg-4 single-right-left " style="margin-left:-100px;">
                     <div class="grid images_3_of_2">
                        <div class="flexslider1">
                           <ul class="slides">
                              <li data-thumb="<%=path %>">
                                 <div class="thumb-image"> <img src="<%=path %>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                              </li>
                              <li data-thumb="<%=path %>">
                                 <div class="thumb-image"> <img src="<%=path %>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                              </li>
                              <li data-thumb="<%=path %>//////">
                                 <div class="thumb-image"> <img src="<%=path %>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                              </li>
                           </ul>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>
                  
                              <div class="responsive_tabs" style="width:860px">
                     <div id="horizontalTab" >
                        <ul class="resp-tabs-list">
                           <li>Details</li>  
                        </ul>
                        <div class="resp-tabs-container">
                           <!--/tab_one-->
                           <div class="tab1">
                              <div class="single_page">
                                 <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                     <h3 style="margin-top:10px"><%=name%></h3>
                     <p style="margin-top:20px"><span class="item_price">Price <%=price%>rs</span></p>
                     <div class="description">
                     </div>
                     <div class="color-quality">
                        <div class="color-quality-right">
                           <h5>Weight : <%=weight%>Kg</h5>
                        </div>
                     </div>
                        <p style="margin-top:35px">Description : <%=description%></p>
                              
                                
                              </div>
                           </div>
                     </div>
            </div>
         </div>
                     <div class="occasional">
                        
                     </div>
                     <div class="occasion-cart">
                        <div class="toys single-item singlepage">
                           <form action="checkout.jsp" method="post">
                               <input type="hidden" name="uid" value=<%=uidi%> >
                              <input type="hidden" name="add" value="1">
                              <input type="hidden" name="toys_item" value="Farenheit">
                              <input type="hidden" name="amount" value="575.00">
                              <button type="submit" class="toys-cart ptoys-cart add">Add to Cart</button>
                           </form>
                        </div>
                     </div>
                   </div>
 <%
   }
      while(rs.next());
      
   }
  %>   </div>


                   
                  <div class="clearfix"> </div>
                  <!--/tabs-->
      </section>
      <!--subscribe-address-->
     
<!-- footer -->
      <footer class="py-lg-4 py-md-3 py-sm-3 py-3 text-center">
         <div class="copy-agile-right">
            <p> 
               Contact - Ramesh Kumar Soni : 9893416454| Sumit Kumar Soni : 8516906199 
            </p>
         </div>
      </footer>
      <!-- //footer -->
            <!-- Modal 1-->
      <!-- //Modal 1-->
      <!--jQuery-->
      <script src="js/jquery-2.2.3.min.js"></script>
      <!-- newsletter modal -->
      <!-- single -->
      <script src="js/imagezoom.js"></script>
      <!-- single -->
      <!-- script for responsive tabs -->
      <script src="js/easy-responsive-tabs.js"></script>
      <script>
         $(document).ready(function () {
         	$('#horizontalTab').easyResponsiveTabs({
         		type: 'default', //Types: default, vertical, accordion           
         		width: 'auto', //auto or any width like 600px
         		fit: true, // 100% fit in a container
         		closed: 'accordion', // Start closed if in accordion view
         		activate: function (event) { // Callback function if tab is switched
         			var $tab = $(this);
         			var $info = $('#tabInfo');
         			var $name = $('span', $info);
         			$name.text($tab.text());
         			$info.show();
         		}
         	});
         	$('#verticalTab').easyResponsiveTabs({
         		type: 'vertical',
         		width: 'auto',
         		fit: true
         	});
         });
      </script>
      <!-- FlexSlider -->
      <script src="js/jquery.flexslider.js"></script>
      <script>
         // Can also be used with $(document).ready()
         $(window).load(function () {
         	$('.flexslider1').flexslider({
         		animation: "slide",
         		controlNav: "thumbnails"
         	});
         });
      </script>
      <!-- //FlexSlider-->
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
      <!-- //smooth-scrolling-of-move-up -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working--> 
   </body>
</html>