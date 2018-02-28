
<%@ page import="java.sql.*,databaseconnection.*"%>
<%
		
		int count=0;	
		int like;
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String name=null, id=null,ccity=null,ccountry=null;

String uuid=(String)session.getAttribute("uuid");
String a=(String)session.getAttribute("a");

System.out.println(uuid);
String b=(String)session.getAttribute("b");
System.out.println(b);

//String d=(String)session.getAttribute("qualification");
//System.out.println(d);


try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
		
// con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select count from friends where log='"+a+"' ";
 rs=st.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	//sendid=rs.getString("sendid");
	//status=rs.getString("status");
	
like=rs.getInt("count")+1;



try{
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
	// Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update friends set count=? where log='"+a+"' ");
			ps1.setInt(1,like);	
			ps1.executeUpdate();

response.sendRedirect("success.jsp");

}

	catch (Exception e1) 
		{
			out.println(e1.getMessage());
				}
				
				
				}
else
{
response.sendRedirect("success.jsp");

}




}

catch(Exception e2)
{
out.print(e2);
}




				
				
				
%>
      