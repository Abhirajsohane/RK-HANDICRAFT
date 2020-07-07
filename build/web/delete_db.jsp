<%@ page import="java.sql.*" %>
<%@ page import="java.io.File"%>
<%
        String uniq_id=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");   
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
        PreparedStatement ps=con.prepareStatement("select * from image_data");
        
        String id="";
        int z=0; //check      
        ResultSet rs=ps.executeQuery();
        String full_path="";
        if(rs.next())
        {
            do
            {
                id=rs.getString(1);
                if(id.equals(uniq_id))
                {
                    System.out.println("1");
                    full_path=rs.getString(2);
                    File f = new File("C:/Users/Anirudh/Documents/NetBeansProjects/rkhandicraft/web/"+full_path);
                    if(f.delete())
                    {
                        System.out.println("1");
                        z=z+1;
                        PreparedStatement ps2=con.prepareStatement("delete from image_data where uniq_id="+uniq_id);
                        ps2.executeUpdate();
                    }
                }
            }while(rs.next());
        }
        
            
        if(z!=0)
        {
            System.out.println("1");
            PreparedStatement ps1=con.prepareStatement("delete from product_details where uniq_id="+uniq_id);
            ps1.executeUpdate();
            System.out.println("Deleted");
            response.sendRedirect("admin_delete.jsp");
        }
%>