<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

<html>
<head>
<title>ACDS</title>

</head>

<body>
<%
String as="ap";



ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
		
		
		String a=(String)session.getAttribute("file");
		//String a=request.getParameter("file");
		String dirName =context.getRealPath("\\video\\");
		String paramname=null,status="processing";
		String blood=null,datafile=null;
		int id=0;
		String date1=null;
		File file1 = null;
		int y= 1000 + (int)(Math.random()*9000);
		
		
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;		
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	103333 * 1033324 * 103333324); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				
				if(paramname.equalsIgnoreCase("blood"))
				{
					blood=multi.getParameter(paramname);
				}
			
				if(paramname.equalsIgnoreCase("date"))
				{
					date1=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("datafile"))
				{
					datafile=multi.getParameter(paramname);
				}
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			datafile = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\video\\"+datafile);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	
	        FileInputStream fs1 = null;


//String b=request.getParameter("video");
PreparedStatement ps = null;
	ResultSet rs = null;
		

	
	
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into videos(vname,video) values(?,?)");
		ps.setString(1,as);
ps.setString(2,datafile);



ps.executeUpdate();
//out.print(Successfully Registered);
response.sendRedirect("success.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
