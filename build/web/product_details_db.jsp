<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>

<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>





<%
  String fullpath="";
  HttpSession mysession=request.getSession();
  String pname=(String) mysession.getAttribute("pname");
  String price=(String) mysession.getAttribute("price");
  String weight=(String) mysession.getAttribute("weight");
  String cat=(String) mysession.getAttribute("cat");
  String des=(String) mysession.getAttribute("des");

System.out.println(pname);

	try
	{	
            ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
            List<FileItem> multifile=sf.parseRequest(request);
            int x=0;
            
            Class.forName("com.mysql.jdbc.Driver");   
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
            PreparedStatement ps;
            Random rand = new Random();
            int n = rand.nextInt(500000) + 1;
            int a=0;
            for(FileItem item: multifile)
		{
                    int y = rand.nextInt(500000) + 1;
                    if(item.getName()!= null)
                    {
                        item.write(new File("C:/Users/Anirudh/Documents/NetBeansProjects/rkhandicraft/web/savedImages/"+y+n+item.getName()));
                        fullpath="savedImages/"+y+n+item.getName();
                        System.out.println(item.getName());
                        ps=con.prepareStatement("insert into product_details value(?,?,?,?,?,?,?)");
                        ps.setString(1,pname);
                        ps.setString(2,price);
                        ps.setString(3,weight);
                        ps.setString(4,cat);
                        ps.setString(5,des);
                        ps.setString(6,String.valueOf(n));
                        ps.setString(7,fullpath);
                        x=ps.executeUpdate();
                    }
		}
			if(x!=0)
			{
                            mysession.removeAttribute("pname");
                            mysession.removeAttribute("price");
                            mysession.removeAttribute("weight");
                            mysession.removeAttribute("cat");
                            mysession.removeAttribute("des");
                            response.sendRedirect("admin_productupload_Details.jsp");
			}
			else 
			{
                            System.out.println("not uploaded the experiment");
			}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}	
%>