<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String a11=(String)session.getAttribute("name");
String a4=(String)session.getAttribute("sname");

String pid=request.getQueryString();
//out.print(a);
//out.print(q);

String a=(String)session.getAttribute("a");
String b=null,c=null;
try {
	

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt1 = con1.prepareStatement("select name from login where id='"+a11+"' AND log='"+a+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 b=rs1.getString(1);

}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt2 = con2.prepareStatement("select name from login where id='"+pid+"' AND log='"+a+"'");

ResultSet rs2 = stmt2.executeQuery();

while(rs2.next()) {
c=rs2.getString(1);

}
session.setAttribute("name",c);
}
catch(Exception e2)
{
out.println(e2.getMessage());

}

//out.print(a);
//out.print(b);
//out.print(d);
//out.print(c);




String a1="accept";
PreparedStatement ps = null;

	ResultSet rs = null;
		

String hh="facebook";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
		
		// Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into friends(sendid,sendid1,recid,recid1,status,log) values(?,?,?,?,'"+a1+"','"+a+"')");
		ps.setString(1,a11);
ps.setString(2,b);

ps.setString(3,pid);

ps.setString(4,c);
ps.executeUpdate();


}
catch(Exception e1)
{
out.println(e1.getMessage());
}

String h="Accept";
PreparedStatement ps4 = null;

	ResultSet rs4 = null;
		


	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
	 Connection con4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
		
		
		// Connection con4 = databasecon.getconnection();

		ps4 = con4.prepareStatement("update friends set status='"+h+"'  where sendid='"+pid+"'AND recid='"+a4+"' AND log='"+a+"'");
	
ps4.executeUpdate();

response.sendRedirect("update2.jsp?success");
}
catch(Exception e4)
{
out.println(e4.getMessage());
}

%>