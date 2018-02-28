<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String key=request.getParameter("key");
	
	
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from login where pcode1='"+key+"'";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
		
	    //con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(!rs.next())
		{
		response.sendRedirect("u1.jsp");
			
		}
	    else
	     {
		 response.sendRedirect("add.jsp");
	  }
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	//finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>