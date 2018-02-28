<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%
String name=null,email=null;

FileInputStream fis;
String a=request.getParameter("name");
session.setAttribute("name",name);
String b=request.getParameter("email");
session.setAttribute("email",email);

String b1=request.getParameter("remail");
session.setAttribute("remail",b1);
String c=request.getParameter("password");
String c1=request.getParameter("log");
String e=request.getParameter("mobile");
String e1=request.getParameter("log1");
String f=request.getParameter("file");

String j=request.getParameter("dob");

String f1="Program Files\\Apache Software Foundation\\Tomcat 7.0";
String f2="\\webapps";
String f3="\\facebook";
String f4="\\images\\gallery\\";
String z = "C:\\"+f1+f2+f3+f4+f;
int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;
File image=new File(z);

java.util.Date now = new java.util.Date();

Date date = new SimpleDateFormat("dd-MM-yyyy").parse(j);
String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection 	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
		
		// Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into login(id,name,email,remail,password,log,mobile,log1,photo,birthday) values('"+aaa+"',?,?,?,?,?,?,?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);

ps.setString(3,b1);
ps.setString(4,c);

ps.setString(5,c1);

ps.setString(6,e);

ps.setString(7,e1);
fis=new FileInputStream(image);
ps.setBinaryStream(8, (InputStream)fis, (int)(image.length()));


ps.setString(9,a2);

ps.executeUpdate();

response.sendRedirect("index.html?success");
}
catch(Exception r)
{
out.println(r.getMessage());
}

%>
</body>
</html>
