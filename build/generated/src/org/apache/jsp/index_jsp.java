package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.String;
import java.util.Random;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <link rel=\"icon\" href=\"images/logowhite.png\">\n");
      out.write("      <title>RK Handicraft</title>\n");
      out.write("      <!--meta tags -->\n");
      out.write("      <meta charset=\"UTF-8\">\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("      <meta name=\"keywords\" content=\"Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("      <script>\n");
      out.write("         addEventListener(\"load\", function () {\n");
      out.write("         \tsetTimeout(hideURLbar, 0);\n");
      out.write("         }, false);\n");
      out.write("         \n");
      out.write("         function hideURLbar() {\n");
      out.write("         \twindow.scrollTo(0, 1);\n");
      out.write("         }\n");
      out.write("      </script>\n");
      out.write("      <!--//meta tags ends here-->\n");
      out.write("      <!--booststrap-->\n");
      out.write("      <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("      <!--//booststrap end-->\n");
      out.write("      <!-- font-awesome icons -->\n");
      out.write("      <link href=\"css/fontawesome-all.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("      <!-- //font-awesome icons -->\n");
      out.write("      <!-- For Clients slider -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("      <!--flexs slider-->\n");
      out.write("      <link href=\"css/JiSlider.css\" rel=\"stylesheet\">\n");
      out.write("      <!--Shoping cart-->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/shop.css\" type=\"text/css\" />\n");
      out.write("      <!--//Shoping cart-->\n");
      out.write("      <!--stylesheets-->\n");
      out.write("      <link href=\"css/style.css\" rel='stylesheet' type='text/css' media=\"all\">\n");
      out.write("      <!--//stylesheets-->\n");
      out.write("      <link href=\"//fonts.googleapis.com/css?family=Sunflower:500,700\" rel=\"stylesheet\">\n");
      out.write("      <link href=\"//fonts.googleapis.com/css?family=Open+Sans:400,600,700\" rel=\"stylesheet\">\n");
      out.write("   \n");
      out.write("    </head>\n");
      out.write("   <body>\n");
      out.write("       ");

           
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
       
      out.write("\n");
      out.write("      <div class=\"header-outs\" id=\"home\">\n");
      out.write("         <div class=\"header-bar\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("               <div class=\"hedder-up row\">\n");
      out.write("                  <div class=\"col-lg-3 col-md-3 logo-head\">\n");
      out.write("                     <h1><a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/namewhite.png\" width\"103px\" height=\"31px\" align=\"center\"></img></a></h1>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-5 col-md-6 search-right\">\n");
      out.write("                     <form class=\"form-inline my-lg-0\">\n");
      out.write("                        <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\">\n");
      out.write("                        <button class=\"btn\" type=\"submit\">Search</button>\n");
      out.write("                     </form>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-4 col-md-3 right-side-cart\">\n");
      out.write("                     <div class=\"cart-icons\">\n");
      out.write("                        <ul>\n");
      out.write("                           <li>\n");
      out.write("                              <span class=\"far fa-heart\"></span>\n");
      out.write("                           </li>\n");
      out.write("                           <li>\n");
      out.write("                               ");

                                   if(i==0)
                                   {
                                    
      out.write(" <a href=\"login.jsp\">      \n");
      out.write("                                        ");
  }
                                            else
                                            {
      out.write("\n");
      out.write("                                                <a href=\"user_info.jsp\">\n");
      out.write("                                                    ");
     }
                               
      out.write("\n");
      out.write("                               <button type=\"button\" data-toggle=\"modal\" data-target=\"#exampleModal\"> <span class=\"far fa-user\">&nbsp \n");
      out.write("                            ");
 
                                if(i==0)
                                   {
                                       out.println("Login");
                                   }
                                else
                                   {
                                        out.println(uname);
                                   }
                            
      out.write("</span></button></a>\n");
      out.write("                           </li>\n");
      out.write("                           <li class=\"toyscart toyscart2 cart cart box_1\">\n");
      out.write("                              <form action=\"#\" method=\"post\" class=\"last\">\n");
      out.write("                                 <input type=\"hidden\" name=\"cmd\" value=\"_cart\">\n");
      out.write("                                 <input type=\"hidden\" name=\"display\" value=\"1\">\n");
      out.write("                                 <button class=\"top_toys_cart\" type=\"submit\" name=\"submit\" value=\"\">\n");
      out.write("                                 <span class=\"fas fa-cart-arrow-down\"></span>\n");
      out.write("                                 </button>\n");
      out.write("                              </form>\n");
      out.write("                           </li>\n");
      out.write("                        </ul>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("               <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("               <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("               </button>\n");
      out.write("               <div class=\"collapse navbar-collapse justify-content-center\" id=\"navbarSupportedContent\">\n");
      out.write("                  <ul class=\"navbar-nav \">\n");
      out.write("                     <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"index.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                     </li>\n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"product.jsp\" class=\"nav-link\">Shop Now</a>\n");
      out.write("                     </li>\n");
      out.write("                     <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown1\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                        Category\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                           <a class=\"nav-link\" href=\"Religious.jsp\">Religious</a>\n");
      out.write("                           <a class=\"nav-link \" href=\"Animal.jsp\">Animal</a>\n");
      out.write("                           <a class=\"nav-link \" href=\"Home_decor.jsp\">Home Decor</a>\n");
      out.write("                           <a class=\"nav-link \" href=\"Other.jsp\">Other</a>\n");
      out.write("                        </div>\n");
      out.write("                     </li>\n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"about.jsp\" class=\"nav-link\">About</a>\n");
      out.write("                     </li>\n");
      out.write("                  </ul>\n");
      out.write("               </div>\n");
      out.write("            </nav>\n");
      out.write("         </div>\n");
      out.write("        </div>\n");
      out.write("       <!-- Slideshow 4 -->\n");
      out.write("        <div class=\"slider\">\n");
      out.write("                <ul class=\"rslides\" id=\"slider4\">\n");
      out.write("                    <li>\n");
      out.write("                            <img src=\"images/Brass.jpg\">\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                            <img src=\"images/banner1.jpg\">\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                            <img src=\"images/b.jpg\">     \n");
      out.write("                    </li>\n");
      out.write("                </ul> \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("         \n");
      out.write("      <!-- //banner -->\n");
      out.write("      <!-- about -->\n");
      out.write("      <section class=\"about py-lg-4 py-md-3 py-sm-3 py-3\" id=\"about\">\n");
      out.write("         <div class=\"container py-lg-5 py-md-5 py-sm-4 py-4\">\n");
      out.write("            <h3 class=\"title text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3\">Best Products</h3>\n");
      out.write("      </section>\n");
      out.write("      \n");
      out.write("      <div class=\"row\">\n");
      out.write("               ");

    //String code=(String)session.getAttribute("code");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","12345");
   PreparedStatement ps=con.prepareStatement("SELECT * FROM image_data ORDER BY RAND() LIMIT 12;");
   String name="",price="";
      
   //Random rand=new Random();
   //int ran=rand.nextInt(9);
   ResultSet rs=ps.executeQuery();
   int im=0;        
   if(rs.next())
   {
      do
      {     
          if(im>11)
          {
              break;
          }
          im=im+1;
        String id=rs.getString("uniq_id");
        String path=rs.getString("full_path");
        PreparedStatement ps1=con.prepareStatement("select * from product_details where uniq_id="+id);
        ResultSet rs1=ps1.executeQuery();
   
        if(rs1.next())
        {
            
        name=rs1.getString("name");
        price=rs1.getString("price");

     
      out.write("\n");
      out.write("\n");
      out.write("                <div class= col-lg-3>\n");
      out.write("  \n");
      out.write("                     <div class=\"col-lg-12 col-md-6 col-sm-6 product-men women_two\">\n");
      out.write("                        <div class=\"product-toys-info\">\n");
      out.write("                           <div class=\"men-pro-item\">\n");
      out.write("                              <div class=\"men-thumb-item\">\n");
      out.write("                                 <img src=\"");
      out.print(path );
      out.write("\" class=\"img-thumbnail img-fluid\" alt=\"\">\n");
      out.write("                                 <div class=\"men-cart-pro\">\n");
      out.write("                                    <div class=\"inner-men-cart-pro\">\n");
      out.write("                                      <!--   <a href=\"single.jsp\" class=\"link-product-add-cart\">Quick View</a>-->\n");
      out.write("                                      <form action=\"single.jsp\">\n");
      out.write("                                      <button type=\"submit\" class=\"link-product-add-cart\" value=\"");
      out.print( id);
      out.write("\" name=\"id\">quick view</button>\n");
      out.write("                                      </form>\n");
      out.write("                                    </div>\n");
      out.write("                                 </div> \n");
      out.write("                                 <span class=\"product-new-top\">New</span>\n");
      out.write("                              </div>\n");
      out.write("                              <div class=\"item-info-product\">\n");
      out.write("                                 <div class=\"info-product-price\">\n");
      out.write("                                    <div class=\"grid_meta\">\n");
      out.write("                                       <div class=\"product_price\">\n");
      out.write("                                          <p>\n");
      out.write("                                             ");
      out.print(name);
      out.write("\n");
      out.write("                                          </p>\n");
      out.write("                                          <div class=\"grid-price mt-2\">\n");
      out.write("                                             <p>Price : ");
      out.print(price);
      out.write("rs</p>\n");
      out.write("                                          </div>\n");
      out.write("                                       </div>\n");
      out.write("                                       \n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"toys single-item hvr-outline-out\">\n");
      out.write("                                        <button type=\"submit\" class=\"toys-cart ptoys-cart\">\n");
      out.write("                                          <i class=\"fas fa-cart-plus\"></i>\n");
      out.write("                                        </button>\n");
      out.write("                                       </div>\n");
      out.write("                                 </div>\n");
      out.write("                                  <div class=\"clearfix\"></div>\n");
      out.write("                              </div>\n");
      out.write("                           </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                     </div>\n");
      out.write("\n");
      out.write("                          ");

   }}
      while(rs.next());
      
   }
  
      out.write("   </div>\n");
      out.write("      <!-- //about -->\n");
      out.write("\n");
      out.write("      <!-- footer -->\n");
      out.write("      <footer class=\"py-lg-4 py-md-3 py-sm-3 py-3 text-center\">\n");
      out.write("         <div class=\"copy-agile-right\">\n");
      out.write("            <p> \n");
      out.write("               Contact - Ramesh Kumar Soni : 9893416454| Sumit Kumar Soni : 8516906199 \n");
      out.write("            </p>\n");
      out.write("         </div>\n");
      out.write("      </footer>\n");
      out.write("      <!-- //footer -->\n");
      out.write("      <!--js working-->\n");
      out.write("      <script src='js/jquery-2.2.3.min.js'></script>\n");
      out.write("      <!--//js working-->\n");
      out.write("      <!-- cart-js -->\n");
      out.write("      <script src=\"js/minicart.js\"></script>\n");
      out.write("      <script>\n");
      out.write("         toys.render();\n");
      out.write("         \n");
      out.write("         toys.cart.on('toys_checkout', function (evt) {\n");
      out.write("         \tvar items, len, i;\n");
      out.write("         \n");
      out.write("         \tif (this.subtotal() > 0) {\n");
      out.write("         \t\titems = this.items();\n");
      out.write("         \n");
      out.write("         \t\tfor (i = 0, len = items.length; i < len; i++) {}\n");
      out.write("         \t}\n");
      out.write("         });\n");
      out.write("      </script>\n");
      out.write("      <!-- //cart-js -->\n");
      out.write("      <!--responsiveslides banner-->\n");
      out.write("      <script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("      <script>\n");
      out.write("         // You can also use \"$(window).load(function() {\"\n");
      out.write("         $(function () {\n");
      out.write("         \t// Slideshow 4\n");
      out.write("         \t$(\"#slider4\").responsiveSlides({\n");
      out.write("         \t\tauto: true,\n");
      out.write("         \t\tpager:false,\n");
      out.write("         \t\tnav:true ,\n");
      out.write("         \t\tspeed: 900,\n");
      out.write("         \t\tnamespace: \"callbacks\",\n");
      out.write("         \t\tbefore: function () {\n");
      out.write("         \t\t\t$('.events').append(\"<li>before event fired.</li>\");\n");
      out.write("         \t\t},\n");
      out.write("         \t\tafter: function () {\n");
      out.write("         \t\t\t$('.events').append(\"<li>after event fired.</li>\");\n");
      out.write("         \t\t}\n");
      out.write("         \t});\n");
      out.write("         \n");
      out.write("         });\n");
      out.write("      </script>\n");
      out.write("      <!--// responsiveslides banner-->\t \n");
      out.write("      <!--slider flexisel -->\n");
      out.write("      <script src=\"js/jquery.flexisel.js\"></script>\n");
      out.write("      <script>\n");
      out.write("         $(window).load(function() {\n");
      out.write("         \t$(\"#flexiselDemo1\").flexisel({\n");
      out.write("         \t\tvisibleItems: 3,\n");
      out.write("         \t\tanimationSpeed: 3000,\n");
      out.write("         \t\tautoPlay:true,\n");
      out.write("         \t\tautoPlaySpeed: 2000,    \t\t\n");
      out.write("         \t\tpauseOnHover: true,\n");
      out.write("         \t\tenableResponsiveBreakpoints: true,\n");
      out.write("         \t\tresponsiveBreakpoints: { \n");
      out.write("         \t\t\tportrait: { \n");
      out.write("         \t\t\t\tchangePoint:480,\n");
      out.write("         \t\t\t\tvisibleItems: 1\n");
      out.write("         \t\t\t}, \n");
      out.write("         \t\t\tlandscape: { \n");
      out.write("         \t\t\t\tchangePoint:640,\n");
      out.write("         \t\t\t\tvisibleItems:2\n");
      out.write("         \t\t\t},\n");
      out.write("         \t\t\ttablet: { \n");
      out.write("         \t\t\t\tchangePoint:768,\n");
      out.write("         \t\t\t\tvisibleItems: 2\n");
      out.write("         \t\t\t}\n");
      out.write("         \t\t}\n");
      out.write("         \t});\n");
      out.write("         \t\n");
      out.write("         });\n");
      out.write("      </script>\n");
      out.write("      <!-- //slider flexisel -->\n");
      out.write("      <!-- start-smoth-scrolling -->\n");
      out.write("      <script src=\"js/move-top.js\"></script>\n");
      out.write("      <script src=\"js/easing.js\"></script>\n");
      out.write("      <script>\n");
      out.write("         jQuery(document).ready(function ($) {\n");
      out.write("         \t$(\".scroll\").click(function (event) {\n");
      out.write("         \t\tevent.preventDefault();\n");
      out.write("         \t\t$('html,body').animate({\n");
      out.write("         \t\t\tscrollTop: $(this.hash).offset().top\n");
      out.write("         \t\t}, 900);\n");
      out.write("         \t});\n");
      out.write("         });\n");
      out.write("      </script>\n");
      out.write("      <!-- start-smoth-scrolling -->\n");
      out.write("      <!-- here stars scrolling icon -->\n");
      out.write("      <script>\n");
      out.write("         $(document).ready(function () {\n");
      out.write("         \n");
      out.write("         \tvar defaults = {\n");
      out.write("         \t\tcontainerID: 'toTop', // fading element id\n");
      out.write("         \t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("         \t\tscrollSpeed: 1200,\n");
      out.write("         \t\teasingType: 'linear'\n");
      out.write("         \t};\n");
      out.write("         \t$().UItoTop({\n");
      out.write("         \t\teasingType: 'easeOutQuart'\n");
      out.write("         \t});\n");
      out.write("         \n");
      out.write("         });\n");
      out.write("      </script>\n");
      out.write("      <!-- //here ends scrolling icon -->\n");
      out.write("      <!--bootstrap working-->\n");
      out.write("      <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("      <!-- //bootstrap working-->\n");
      out.write("   </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
