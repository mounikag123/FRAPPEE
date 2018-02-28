<%@ page import="java.sql.*,databaseconnection.*"%>

<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>FlashTemplatesDesign.com free CSS template</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
		
		
		<!-- Begin JavaScript -->

		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.tools.js"></script>
    	<script type="text/javascript" src="lib/jquery.custom.js"></script>

		<style>
		
		.btn {
  background: #07ed3d;
  background-image: -webkit-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -moz-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -ms-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -o-linear-gradient(top, #07ed3d, #ff0808);
  background-image: linear-gradient(to bottom, #07ed3d, #ff0808);
  -webkit-border-radius: 13;
  -moz-border-radius: 13;
  border-radius: 13px;
  text-shadow: 0px 0px 0px #121211;
  font-family: Arial;
  color: #080808;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #fcfcfc 4px;
  text-decoration: none;
}

.btn:hover {
  text-decoration: none;
}
		
		
		</style>
    </head>
    <body>
        <div id="wrap">
            <div id="logo">
                <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font></h1>
              
            </div>

            <div id="content_top"></div>
            <div id="content">
                <div id="menu">
                    <ul>
                        <li><a href="index.html" class="active">Home</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="fb_page.jsp">Back</a></li>
                       
                    </ul>
                </div>
                <div id="header">
                    
					
                </div>

                <div id="index_content">
               
			
   <table width="906"><tr><td width="397">
  
    
     
              <%
	String email=(String)session.getAttribute("b");
	
	%><div id="main">    
          
            <p><img src="user2.jsp" width="135" height="155"> </p>
            <p>&nbsp;</p>
            <p><font size="+1" color="#CC0099"><b>Welcome:</b></font>&nbsp;<font size="2"  color="#FFCC00"><i><%=email%></i></font> </p>
 <form name="s" action="search2.jsp">
 <table><tr><td><p>&nbsp;</p>
                    <p><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>Search</b></i></font> 
                      <input type="text" name="v" size="14" placeholder="Search friends">
                    </p></td></tr></table></form>
          <h3><br>
            &nbsp;&nbsp;<a href="friends.jsp"><font  color="#CC9900"><b>Friends</b></font></a></h3>
          <h3><br>
            &nbsp;&nbsp;<a href="frd2.jsp"><font color="#00CC66"><b>Friends Request</b></font></a> 
          </h3>
            <h3><br>
              <font color="#CC3366">&nbsp;&nbsp;<b>FAVOURITES</b></font></h3>
            <h3><br>
              &nbsp;&nbsp; <a href="ga.jsp"><font color="#009933"><b>My Gallery</b></font></a></h3>
            <h3><br>
              &nbsp;&nbsp;<a href="user.jsp"><font color="#009933"><b>Add Messages</b></font></a></h3>
            <h3><br>
              &nbsp;&nbsp;<a href="add.jsp"><font color="#009933"><b>Add Photos</b></font></a></h3>
            <h3><br>
              &nbsp;&nbsp;<a href="logout.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong> 
              LOGOUT</strong></font></a> </h3></td>
	 
	 <td width="497">
	 <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p>
          <p>&nbsp;</p>
          <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p>
          <table width="345" height="255">
              <tr><font color="#CC3399"><font size="3"><strong>Friends List</strong></font><b> 
                </b></font></tr>
				<br>
<%
String b=(String)session.getAttribute("b");
String q=null;
String a=(String)session.getAttribute("a");

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt3 = con3.prepareStatement("select id from login where email='"+b+"' AND log='"+a+"'");

ResultSet rs3= stmt3.executeQuery();

while(rs3.next()) {
 q=rs3.getString(1);
 session.setAttribute("i",q);
}
}
catch(Exception e3)
{
out.println(e3.getMessage());

}



String s=null,s1=null;

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");


	PreparedStatement stmt1 = con1.prepareStatement("select recid,recid1 from friends where sendid='"+q+"' AND log='"+a+"'");

ResultSet rs1= stmt1.executeQuery();

while(rs1.next()) {
 s=rs1.getString(1);
 session.setAttribute("ii",s);
  s1=rs1.getString(2);

%>

<tr>

<td><img src="friends1.jsp?<%=s%>" height="125" width="125"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#666666" size="3"><b><%=s1%></b></font> <a href="friends2.jsp?<%=s%>"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFCC00">View 
                  Details</font> </b></a> </td>
              </tr>

<tr><td>
</td></tr>
<%
}
%>


<%
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</table>

	 
	 </td>
	 
	 
	 
	 
	 </tr></table>

                  <div style="clear: both"></div>
              </div>


                <div id="footer_box">
                    <div id="footer_box_top"></div>
                    <div id="footer_box_bg">
                    
        <p>&nbsp;</p>
        <p>&nbsp;</p>
		
			
        <p><font size="+2" color="#FFCC00"><b>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;
		<marquee scrollamount="5" width="40">&lt;&lt;&lt;&lt;&lt;</marquee>
		Detecting Malicious Facebook Applications<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;&gt;&gt;</marquee>
			
</b></font> 
        </p>
        <div style="clear: both"></div>
                    </div>
                    <div id="footer_box_bot"></div>
                </div>
            </div>
            <div id="content_bot"></div>
        </div>
        <div id="footer">
                <div class="red_hr"></div>
                 </div>
    </body>
</html>
