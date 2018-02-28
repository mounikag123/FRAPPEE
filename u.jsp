<%@ page import="java.sql.*,databaseconnection.*"%>
 <%
		
		
		
		String iid=(String)session.getAttribute("uid");
		String pid=request.getQueryString();
		String a4=(String)session.getAttribute("sname");
	int acount=0;	
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String sendid=null,status=null,partition=null,d=null,e=null;

String id=(String)session.getAttribute("uid");





try
{
	Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
// con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select id ,acount from login where id='"+id+"'";
 rs=st.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	
	
	  
	acount=rs.getInt("acount")+1;
String status1="accept";


try{
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
	 // Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update login set acount=? where id='"+id+"'");
			ps1.setInt(1,acount);	
			ps1.executeUpdate();



}

	catch (Exception e1) 
		{
			out.println(e1.getMessage());
				
				
			
			
		}


}
else
{
System.out.println("");

}



System.out.println("");

}

catch(Exception e2)
{
out.print(e2);
}

out.println(" your  are not eligible for post your message because your activation Code is wrong.....................");
		

%>
      