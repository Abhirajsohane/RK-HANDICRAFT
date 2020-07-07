<%@page import="java.sql.*"%>
<% 
    try
		{
			String name=request.getParameter("name");
			String mobile=request.getParameter("mob");
			String email=request.getParameter("email");
			String password=request.getParameter("pass");
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
			PreparedStatement ps=con.prepareStatement("insert into login_data value(?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,mobile);
			ps.setString(3,email);
			ps.setString(4,password);
			int x=0;
			x=ps.executeUpdate();
			if(x==0)
			{
				System.out.println("Not inserted");
			}
			else
			{
				response.sendRedirect("login.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}



%>
