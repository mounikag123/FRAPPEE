<%@ page import="java.sql.*,databaseconnection.*"%>
 <%
		
		
		
		String iid=(String)session.getAttribute("uid");
		String pid=request.getQueryString();
		String a4=(String)session.getAttribute("sname");
	int pcount=0;	
		
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
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select id ,pcount from login where id='"+id+"'";
 rs=st.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	
	
	  
	pcount=rs.getInt("pcount")+1;
String status1="accept";


try{
	Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update login set pcount=? where id='"+id+"'");
			ps1.setInt(1,pcount);	
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

out.println("your post activation Code is wrong.....................");
		
		
%>
      