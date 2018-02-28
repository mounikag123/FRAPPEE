<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String a=request.getParameter("log");
String b=request.getParameter("email");
session.setAttribute("emailid",b);
String c=request.getParameter("pass");
PreparedStatement ps = null;
	ResultSet rs = null;
	String userid=null;	

	String w=null,id=null;
	int count;
	int count1;
	if((a.equals("Admin"))&(b.equals("admin@gmail.com"))&(c.equals("admin")))
	response.sendRedirect("adminview.jsp");
	try
	{
					Class.forName("com.mysql.jdbc.Driver");	
		Connection 	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
		
		// Connection con = databasecon.getconnection();

		ps = con.prepareStatement("select id,name,email,remail,password from login where log='"+a+"' AND email='"+b+"' AND password='"+c+"'");
		rs = ps.executeQuery();
		/*if(a.equalsIgnoreCase("admin@gmail.com")&& b.equalsIgnoreCase("admin"))
		{
		
		
		 %>
 <jsp:forward page="admin1.jsp"/>
	    	<%
		}
		*/
    if(rs.next())
		{
		id=rs.getString(1);
		session.setAttribute("uid",id);
		String name=rs.getString(2);
		session.setAttribute("name",name);
		
		String remail=rs.getString(4);
		System.out.println(remail);
		session.setAttribute("remail",remail);
		
	/*
		count=rs.getInt(5);
		session.setAttribute("count",count);
		count1=rs.getInt(6);
		session.setAttribute("cc",count1);
		System.out.println("count1");
		*/
	//	w=rs.getString(3);
		//session.setAttribute("w",w);		
		response.sendRedirect("email_send.jsp");
		}
		else
		{
		out.println("enter correct user name and password");
		}
		session.setAttribute("a",a);
		session.setAttribute("b",b);
		session.setAttribute("c",c);
		}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>