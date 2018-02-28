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
	String sql="select * from login where scode='"+key+"'";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
		 	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
		
	    
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(!rs.next())
		{
		%>
		<font size="4" color="#FF0000"><b>
		<%
		response.sendRedirect("u.jsp");
		out.println(" your  are not eligible for post your message because your activation Code is wrong.....................");
		
			%>
			</b></font>
			<%
		}
	    else
	     {
		 response.sendRedirect("status_sendemail.jsp");
	  }
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }
//
	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>