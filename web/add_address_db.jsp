<%@page import="java.sql.*"%>
<%
                        String name=request.getParameter("name");
			String email=request.getParameter("email");
			String mobile=request.getParameter("mobile");
			String pincode=request.getParameter("pincode");
                        String flat=request.getParameter("flat");
			String landmark=request.getParameter("landmark");
			String address=request.getParameter("address");
			String uid="1234";
                        String city=request.getParameter("city");
			String type=request.getParameter("type");
    
                        try
                        {
    
                        Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rkhandicraft","root","root");
			PreparedStatement ps=con.prepareStatement("insert into shipping_address value(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,mobile);
			ps.setString(4,pincode);
                        ps.setString(5,flat);
			ps.setString(6,landmark);
			ps.setString(7,address);
			ps.setString(8,uid);
			ps.setString(9,city);
			ps.setString(10,type);
			
                        int x=0;
			x=ps.executeUpdate();
			if(x==0)
			{
				System.out.println("Not inserted");
			}
			else
			{
				response.sendRedirect("payment.jsp");
			}
		}
		catch(Exception e)
                {
                    e.printStackTrace();
                }
%>