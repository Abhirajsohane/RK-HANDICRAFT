<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>


<%

try
{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
          PreparedStatement ps=con.prepareStatement("select * from login_data");
          ResultSet rs=ps.executeQuery();
          String u=request.getParameter("id");
          String p=request.getParameter("pass");
          if(rs.next())
            {
            do
            {
                String name=rs.getString(1);
		String mobile=rs.getString(2);
		String email=rs.getString(3);
		String pass=rs.getString(4);
		if(u.equals(mobile)||u.equals(email))
		{
                    if(p.equals(pass))
			{
                    	response.sendRedirect("index.jsp");
			}
                    
                    session=request.getSession();  
                    session.setAttribute("uid",u);
                    session.setAttribute("uidname",name);
                    
		}
            }while(rs.next());
            }
            else
            {
                System.out.println("Invalid uid or password");
            }
}
catch(Exception e)
        {
            System.out.println("Error login");
        }
    

%>